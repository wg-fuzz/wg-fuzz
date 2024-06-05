use crate::*;
mod kill_non_terminating;
use kill_non_terminating::kill_non_terminating;
mod add_primitives;
use add_primitives::*;
mod encoder;
use encoder::*;
mod add_pipelines;
use add_pipelines::*;

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