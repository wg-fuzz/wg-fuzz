use crate::*;

pub fn add_manipulate_current_compute_pass(available_api_calls: &mut Vec<APICall>, device: &GPUDevice, command_encoder: &GPUCommandEncoder, all_passes_finished: bool) -> bool {
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
        } else if !compute_pass.finished && !compute_pass.debug_group_active {
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
            available_api_calls.extend([PopComputePassDebugGroup(compute_pass.clone())])
        }
    }
    all_passes_finished
}