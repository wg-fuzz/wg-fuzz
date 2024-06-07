use crate::*;
use available_calls::fuzzy;

pub fn add_manipulate_current_render_pass(available_api_calls: &mut Vec<APICall>, rng: &mut ThreadRng, device: &GPUDevice, command_encoder: &GPUCommandEncoder, all_passes_finished: bool) -> bool {
    let mut all_passes_finished = all_passes_finished;
    for render_pass in &command_encoder.render_pass_encoders {
        // This restricts a render pass encoder to be set up in the following order in the final javascript program for simplicity
        if let None = &render_pass.pipeline {
            for render_pipeline in &device.render_pipelines {
                available_api_calls.extend([SetRenderPassPipeline(render_pass.clone(), render_pipeline.clone())])
            }
            let mut bundles = Vec::new();
            for bundle in &device.render_bundle_encoders {
                if bundle.finished && rng.gen_bool(0.8) || fuzzy(rng) {
                    bundles.extend([bundle.clone()])
                }
            }
            available_api_calls.extend([ExecuteBundles(render_pass.clone(), bundles)])
        } else if let None = &render_pass.vertex_buffer {
            for buffer in &device.buffers {
                if buffer.use_case.contains("GPUBufferUsage.VERTEX") || fuzzy(rng) {
                    available_api_calls.extend([SetVertexBuffer(render_pass.clone(), buffer.clone())])
                }
            }
        } else if !render_pass.drew || fuzzy(rng) {
            available_api_calls.extend([Draw(render_pass.clone())]);
            if let Some(_) = &render_pass.index_buffer {
                available_api_calls.extend([DrawIndexed(render_pass.clone())]);
                for buffer in &device.buffers {
                    if buffer.use_case.contains("GPUBufferUsage.INDIRECT") || fuzzy(rng) {
                        available_api_calls.extend([DrawIndexedIndirect(render_pass.clone(), buffer.clone())])
                    }
                }
            }
            for buffer in &device.buffers {
                if buffer.use_case.contains("GPUBufferUsage.INDIRECT") || fuzzy(rng) {
                    available_api_calls.extend([DrawIndirect(render_pass.clone(), buffer.clone())])
                }
                if buffer.use_case.contains("GPUBufferUsage.INDEX") || fuzzy(rng) {
                    available_api_calls.extend([SetIndexBuffer(render_pass.clone(), buffer.clone())])
                }
            }
        } else if !render_pass.finished && !render_pass.debug_group_active || fuzzy(rng) {
            available_api_calls.extend([EndRenderPass(render_pass.clone())])
        }
        // } else if !render_pass.bindgroup_set {
        //     if let Some(render_pipeline) = &render_pass.pipeline {
        //         available_api_calls.extend([SetComputePassBindGroupTemplate(device.clone(), render_pass.clone(), render_pipeline.clone())]);
        //     }
        // }

        if !render_pass.finished || fuzzy(rng) {
            all_passes_finished = false;
            available_api_calls.extend([InsertRenderPassDebugMarker(render_pass.clone()),
                SetBlendConstant(render_pass.clone()), SetScissorRect(render_pass.clone(), render_pass.target_texture.clone()),
                SetStencilReference(render_pass.clone()), SetViewport(render_pass.clone(), render_pass.target_texture.clone())]);
            if !render_pass.debug_group_active || fuzzy(rng) {
                available_api_calls.extend([PushRenderPassDebugGroup(render_pass.clone())]);
            }
            if let Some(query_set_num) = render_pass.occlusion_query_set_num {
                if !render_pass.query_active && !device.query_sets[query_set_num].destroyed || fuzzy(rng) {
                    available_api_calls.extend([BeginOcclusionQuery(render_pass.clone(), device.query_sets[query_set_num].clone())])
                } else if render_pass.query_active || fuzzy(rng) {
                    available_api_calls.extend([EndOcclusionQuery(render_pass.clone())])
                }
            }
        }

        if render_pass.debug_group_active || fuzzy(rng) {
            available_api_calls.extend([PopRenderPassDebugGroup(render_pass.clone())])
        }
    }
    all_passes_finished
}