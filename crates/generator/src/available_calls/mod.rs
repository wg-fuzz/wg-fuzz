use crate::*;
mod kill_non_terminating;
use kill_non_terminating::kill_non_terminating;
mod add_primitives;
use add_primitives::*;

pub fn available_api_calls(resources: &ProgramResources, terminate: bool) -> Vec<APICall> {
    let mut available_api_calls: Vec<APICall> = Vec::new();
    available_api_calls.extend([CreateAdapter(), CreateArray(), PrintWGSLLanguageFeatures(), PrintPreferredCanvasFormat()]);

    for adapter in &resources.adapters {
        available_api_calls.extend([CreateDevice(adapter.clone()), PrintAdapterInfo(adapter.clone())]);

        for device in &adapter.devices {
            if !device.destroyed {
                available_api_calls.extend([CreateRandomBuffer(device.clone()), CreateRandomTexture(device.clone()), PrintDeviceInfo(device.clone()), WaitSubmittedWork(device.clone()), 
                            /*AddUncapturedErrorListener(device.clone()),*/ CreateShaderModuleCompute(device.clone()), CreateShaderModuleRender(device.clone()),
                            CreateCommandEncoder(device.clone()), CreateSampler(device.clone()), CreateComputeBindGroupLayout(device.clone())]);
                    
                if !device.error_scope_active {
                    available_api_calls.extend([PushRandomErrorScope(device.clone())])
                } else {
                    available_api_calls.extend([PopErrorScope(device.clone())])
                }

                for bind_group_layout in &device.bind_group_layouts {
                    available_api_calls.extend([CreateComputePipelineLayout(device.clone(), bind_group_layout.clone())])
                }

                add_manipulate_buffers(&mut available_api_calls, resources, device);

                add_manipulate_textures(&mut available_api_calls, resources, device);

                add_create_pipelines(&mut available_api_calls, device);

                let all_command_encoders_submitted = add_manipulate_command_encoders(&mut available_api_calls, device);

                if !device.error_scope_active && all_command_encoders_submitted {
                    available_api_calls.extend([DestroyDevice(device.clone())]);
                }
            }
        }
    }

    if terminate {
        kill_non_terminating(&mut available_api_calls)
    }

    available_api_calls
}

fn add_create_pipelines(available_api_calls: &mut Vec<APICall>, device: &GPUDevice) {
    for shader_module in &device.shader_modules {
        if shader_module.compute_or_render.contains("compute") {
            for pipeline_layout in &device.pipeline_layouts {
                available_api_calls.extend([CreateComputePipeline(device.clone(), shader_module.clone(), pipeline_layout.clone()), 
                    CreateComputePipelineAsync(device.clone(), shader_module.clone(), pipeline_layout.clone())])
            }
        } else if shader_module.compute_or_render.contains("render") {
            available_api_calls.extend([CreateRenderPipeline(device.clone(), shader_module.clone()), CreateRenderPipelineAsync(device.clone(), shader_module.clone())])
        }
        available_api_calls.extend([PrintShaderModuleInfo(shader_module.clone())])
    }
}

fn add_manipulate_command_encoders(available_api_calls: &mut Vec<APICall>, device: &GPUDevice) -> bool {
    let mut queue_command_encoders: Vec<GPUCommandEncoder> = Vec::new();

    let mut all_command_encoders_submitted = true;

    for command_encoder in &device.command_encoders {
        let mut all_passes_finished = true;

        all_passes_finished = add_manipulate_current_compute_pass(available_api_calls, device, command_encoder, all_passes_finished);

        add_command_encoder_not_yet_buffer(available_api_calls, device, command_encoder, all_passes_finished);

        add_command_encoder_is_buffer(command_encoder, &mut queue_command_encoders);
        
        all_command_encoders_submitted = add_command_encoder_is_submitted(command_encoder, all_command_encoders_submitted);
    }

    if queue_command_encoders.len() > 0 {
        available_api_calls.extend([SubmitQueueRandom(device.clone(), queue_command_encoders)]);
    }

    all_command_encoders_submitted
}

fn add_copy_buffer(available_api_calls: &mut Vec<APICall>, device: &GPUDevice, command_encoder: &GPUCommandEncoder) {
    for buffer in &device.buffers {
        if buffer.use_case.contains("GPUBufferUsage.COPY_SRC") && !buffer.destroyed {
            for buffer_dst in &device.buffers {
                if buffer_dst.use_case.contains("GPUBufferUsage.COPY_DST") && !buffer_dst.destroyed {
                    available_api_calls.extend([CopyBufferToBuffer(command_encoder.clone(), buffer.clone(), buffer_dst.clone())])
                }
            }

            for texture in &device.textures {
                if texture.usage.contains("GPUTextureUsage.COPY_DST") && texture.format.contains("\"r32float\"") && !texture.destroyed {
                    available_api_calls.extend([CopyBufferToTexture(command_encoder.clone(), buffer.clone(), texture.clone())])
                }
            }
        }

        if buffer.use_case.contains("GPUBufferUsage.COPY_DST") && !buffer.destroyed {
            available_api_calls.extend([ClearBuffer(command_encoder.clone(), buffer.clone())]);
        }
    }
}

fn add_copy_texture(available_api_calls: &mut Vec<APICall>, device: &GPUDevice, command_encoder: &GPUCommandEncoder) {
    for texture in &device.textures {
        if texture.usage.contains("GPUTextureUsage.COPY_SRC") && texture.format.contains("\"r32float\"") && !texture.destroyed {
            for buffer in &device.buffers {
                if buffer.use_case.contains("GPUBufferUsage.COPY_DST") && !buffer.destroyed {
                    available_api_calls.extend([CopyTextureToBuffer(command_encoder.clone(), texture.clone(), buffer.clone())])
                }
            }

            for texture_dst in &device.textures {
                if texture.usage.contains("GPUTextureUsage.COPY_DST") && texture.format.contains("\"r32float\"") && !texture.destroyed {
                    available_api_calls.extend([CopyTextureToTexture(command_encoder.clone(), texture.clone(), texture_dst.clone())])
                }
            }
        }
    }
}

fn add_manipulate_current_compute_pass(available_api_calls: &mut Vec<APICall>, device: &GPUDevice, command_encoder: &GPUCommandEncoder, all_passes_finished: bool) -> bool {
    let mut all_passes_finished = all_passes_finished;
    for compute_pass in &command_encoder.compute_pass_encoders {
        // This restricts a compute pass encoder to be set up in the following order in the final javascript program for simplicity
        if let None = &compute_pass.pipeline {
            for compute_pipeline in &device.compute_pipelines {
                available_api_calls.extend([SetComputePassPipeline(compute_pass.clone(), compute_pipeline.clone())])
            }
        } else if !compute_pass.bindgroup_set {
            if let Some(compute_pipeline) = &compute_pass.pipeline {
                available_api_calls.extend([SetComputePassBindGroupTemplate(device.clone(), compute_pass.clone(), compute_pipeline.clone())]);
            }
        } else if !compute_pass.dispatched {
            available_api_calls.extend([SetComputePassWorkgroups(compute_pass.clone()), SetComputePassWorkgroupsIndirect(device.clone(), compute_pass.clone())])
        } else if !compute_pass.finished {
            available_api_calls.extend([EndComputePass(compute_pass.clone())])
        }

        if !compute_pass.finished {
            all_passes_finished = false;
            available_api_calls.extend([InsertComputePassDebugMarker(compute_pass.clone())]);
            if !compute_pass.debug_group_active {
                available_api_calls.extend([PushComputePassDebugGroup(compute_pass.clone())]);
            }
        }

        if compute_pass.debug_group_active {
            all_passes_finished = false;
            available_api_calls.extend([PopComputePassDebugGroup(compute_pass.clone())])
        }
    }
    all_passes_finished
}

fn add_command_encoder_not_yet_buffer(available_api_calls: &mut Vec<APICall>, device: &GPUDevice, command_encoder: &GPUCommandEncoder, all_passes_finished: bool) {
    if let None = command_encoder.command_buffer {
        if all_passes_finished {
            if !command_encoder.debug_group_active {
                available_api_calls.extend([CreateCommandBuffer(command_encoder.clone())]);
            }
            if command_encoder.compute_pass_encoders.len() < 2 {
                available_api_calls.extend([CreateComputePass(command_encoder.clone())])
            }
            if command_encoder.render_pass_encoders.len() < 2 {
                for texture in &device.textures {
                    for view in &texture.texture_views {
                        available_api_calls.extend([CreateRenderPass(command_encoder.clone(), view.clone())])
                    }
                }
            }
        }

        add_copy_buffer(available_api_calls, device, command_encoder);

        add_copy_texture(available_api_calls, device, command_encoder);

        available_api_calls.extend([InsertCommandEncoderDebugMarker(command_encoder.clone())]);
        if !command_encoder.debug_group_active {
            available_api_calls.extend([PushCommandEncoderDebugGroup(command_encoder.clone())])
        } else {
            available_api_calls.extend([PopCommandEncoderDebugGroup(command_encoder.clone())])
        }
    }
}

fn add_command_encoder_is_buffer(command_encoder: &GPUCommandEncoder, queue_command_encoders: &mut Vec<GPUCommandEncoder>) {
    if let Some(_) = command_encoder.command_buffer {
        if command_encoder.submitted == false && rand::random() {
            queue_command_encoders.push(command_encoder.clone());
        }
    }
}

fn add_command_encoder_is_submitted(command_encoder: &GPUCommandEncoder, all_command_encoders_submitted: bool) -> bool {
    let mut all_command_encoders_submitted = all_command_encoders_submitted;
    if !command_encoder.submitted {
        all_command_encoders_submitted = false;
    }
    all_command_encoders_submitted
}