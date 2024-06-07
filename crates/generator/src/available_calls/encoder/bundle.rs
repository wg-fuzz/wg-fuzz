use crate::*;

pub fn add_manipulate_bundles(available_api_calls: &mut Vec<APICall>, device: &GPUDevice) {
    for bundle in &device.render_bundle_encoders {
        // This restricts a bundle encoder to be set up in the following order in the final javascript program for simplicity
        if let None = &bundle.pipeline {
            for render_pipeline in &device.render_pipelines {
                available_api_calls.extend([SetPipelineBundle(bundle.clone(), render_pipeline.clone())])
            }
        } else if let None = &bundle.vertex_buffer {
            for buffer in &device.buffers {
                if buffer.use_case.contains("GPUBufferUsage.VERTEX") {
                    available_api_calls.extend([SetVertexBufferBundle(bundle.clone(), buffer.clone())])
                }
            }
        } else if !bundle.drew {
            available_api_calls.extend([DrawBundle(bundle.clone())]);
            if let Some(_) = &bundle.index_buffer {
                available_api_calls.extend([DrawIndexedBundle(bundle.clone())]);
                for buffer in &device.buffers {
                    if buffer.use_case.contains("GPUBufferUsage.INDIRECT") {
                        available_api_calls.extend([DrawIndexedIndirectBundle(bundle.clone(), buffer.clone())])
                    }
                }
            }
            for buffer in &device.buffers {
                if buffer.use_case.contains("GPUBufferUsage.INDIRECT") {
                    available_api_calls.extend([DrawIndirectBundle(bundle.clone(), buffer.clone())])
                }
                if buffer.use_case.contains("GPUBufferUsage.INDEX") {
                    available_api_calls.extend([SetIndexBufferBundle(bundle.clone(), buffer.clone())])
                }
            }
        } else if !bundle.finished && !bundle.debug_group_active {
            available_api_calls.extend([EndBundle(bundle.clone())])
        }
        // } else if !bundle.bindgroup_set {
        //     if let Some(render_pipeline) = &bundle.pipeline {
        //         available_api_calls.extend([SetComputePassBindGroupTemplate(device.clone(), bundle.clone(), render_pipeline.clone())]);
        //     }
        // }

        if !bundle.finished {
            available_api_calls.extend([InsertDebugMarkerBundle(bundle.clone())]);
            if !bundle.debug_group_active {
                available_api_calls.extend([PushDebugGroupBundle(bundle.clone())]);
            }
        }

        if bundle.debug_group_active {
            available_api_calls.extend([PopDebugGroupBundle(bundle.clone())])
        }
    }
}