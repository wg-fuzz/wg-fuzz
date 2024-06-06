use crate::*;

pub fn add_manipulate_current_render_pass(available_api_calls: &mut Vec<APICall>, device: &GPUDevice, command_encoder: &GPUCommandEncoder, all_passes_finished: bool) -> bool {
    let mut all_passes_finished = all_passes_finished;
    for render_pass in &command_encoder.render_pass_encoders {
        // This restricts a render pass encoder to be set up in the following order in the final javascript program for simplicity
        if let None = &render_pass.pipeline {
            for render_pipeline in &device.render_pipelines {
                available_api_calls.extend([SetRenderPassPipeline(render_pass.clone(), render_pipeline.clone())])
            }
        }
        // } else if !render_pass.bindgroup_set {
        //     if let Some(render_pipeline) = &render_pass.pipeline {
        //         available_api_calls.extend([SetComputePassBindGroupTemplate(device.clone(), render_pass.clone(), render_pipeline.clone())]);
        //     }
        // } else if !render_pass.dispatched {
        //     available_api_calls.extend([SetComputePassWorkgroups(render_pass.clone()), SetComputePassWorkgroupsIndirect(device.clone(), render_pass.clone())])
        // } else if !render_pass.finished {
        //     available_api_calls.extend([EndComputePass(render_pass.clone())])
        // }

        if !render_pass.finished {
            all_passes_finished = false;
            // available_api_calls.extend([InsertComputePassDebugMarker(render_pass.clone())]);
            // if !render_pass.debug_group_active {
            //     available_api_calls.extend([PushComputePassDebugGroup(render_pass.clone())]);
            // }
        }

        // if render_pass.debug_group_active {
        //     all_passes_finished = false;
        //     available_api_calls.extend([PopComputePassDebugGroup(render_pass.clone())])
        // }
    }
    all_passes_finished
}