use crate::*;
mod kill_non_terminating;
use kill_non_terminating::kill_non_terminating;

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

                let mut queue_command_encoders: Vec<GPUCommandEncoder> = Vec::new();

                let mut all_command_encoders_submitted = true;

                for command_encoder in &device.command_encoders {
                    let mut all_passes_finished = true;
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

                        available_api_calls.extend([InsertCommandEncoderDebugMarker(command_encoder.clone())]);
                        if !command_encoder.debug_group_active {
                            available_api_calls.extend([PushCommandEncoderDebugGroup(command_encoder.clone())])
                        } else {
                            available_api_calls.extend([PopCommandEncoderDebugGroup(command_encoder.clone())])
                        }
                    }

                    if let Some(_) = command_encoder.command_buffer {
                        if command_encoder.submitted == false && rand::random() {
                            queue_command_encoders.push(command_encoder.clone());
                        }
                    }
                    
                    if !command_encoder.submitted {
                        all_command_encoders_submitted = false;
                    }
                }

                if queue_command_encoders.len() > 0 {
                    available_api_calls.extend([SubmitQueueRandom(device.clone(), queue_command_encoders)]);
                }

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

fn add_manipulate_buffers(available_api_calls: &mut Vec<APICall>, resources: &ProgramResources, device: &GPUDevice) {
    // Crashes
    for buffer in &device.buffers {
        if !buffer.destroyed {
            if buffer.use_case.contains("GPUBufferUsage.COPY_DST") {
                for array in &resources.random_arrays {
                    available_api_calls.extend([WriteBuffer(device.clone(), buffer.clone(), array.clone())])
                }
            }
            if buffer.use_case.contains("GPUBufferUsage.MAP_READ") {
                available_api_calls.extend([ReadMappedBuffer(buffer.clone())])
            }
            available_api_calls.extend([PrintBufferInfo(buffer.clone()), DestroyBuffer(buffer.clone())])
        }
    }
}

fn add_manipulate_textures(available_api_calls: &mut Vec<APICall>, resources: &ProgramResources, device: &GPUDevice) {
    for texture in &device.textures {
        if !texture.destroyed {
            if texture.usage.contains("GPUTextureUsage.COPY_DST") && texture.format.contains("\"r32float\""){
                for array in &resources.random_arrays {
                    available_api_calls.extend([WriteTexture(device.clone(), texture.clone(), array.clone())])
                }
            }
            available_api_calls.extend([DestroyTexture(texture.clone()), PrintTextureInfo(texture.clone()), CreateTextureView(texture.clone())])
        }
    }
}