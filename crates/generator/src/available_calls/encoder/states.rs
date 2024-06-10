use crate::*;
use crate::available_calls::add_primitives::*;
use available_calls::fuzzy;

pub fn add_command_encoder_not_yet_buffer(available_api_calls: &mut Vec<APICall>, rng: &mut ThreadRng, device: &GPUDevice, command_encoder: &GPUCommandEncoder, all_passes_finished: bool) {
    if let None = command_encoder.command_buffer {
        if all_passes_finished || fuzzy(rng) {
            if !command_encoder.debug_group_active || fuzzy(rng) {
                available_api_calls.extend([CreateCommandBuffer(command_encoder.clone())]);
            }
            if command_encoder.compute_pass_encoders.len() < 2 || fuzzy(rng) {
                available_api_calls.extend([CreateComputePass(command_encoder.clone())])
            }
            if command_encoder.render_pass_encoders.len() < 2 || fuzzy(rng) {
                for texture in &device.textures {
                    for view in &texture.texture_views {
                        available_api_calls.extend([CreateRenderPass(command_encoder.clone(), view.clone(), None)]);
                        for query_set in &device.query_sets {
                            available_api_calls.extend([CreateRenderPass(command_encoder.clone(), view.clone(), Some(query_set.clone()))])
                        }
                    }
                }
            }

            add_copy_buffer(available_api_calls, rng, device, command_encoder);

            add_copy_texture(available_api_calls, rng, device, command_encoder);
    
            for query_set in &device.query_sets {
                for buffer in &device.buffers {
                    if buffer.use_case.contains("GPUBufferUsage.QUERY_RESOLVE") || fuzzy(rng) {
                        available_api_calls.extend([ResolveQuerySet(command_encoder.clone(), query_set.clone(), buffer.clone())])
                    }
                }
            }
    
            available_api_calls.extend([InsertCommandEncoderDebugMarker(command_encoder.clone())]);
            if !command_encoder.debug_group_active || fuzzy(rng) {
                available_api_calls.extend([PushCommandEncoderDebugGroup(command_encoder.clone())])
            } else if command_encoder.debug_group_active || fuzzy(rng) {
                available_api_calls.extend([PopCommandEncoderDebugGroup(command_encoder.clone())])
            }
        }
    }
}

pub fn add_command_encoder_is_buffer(command_encoder: &GPUCommandEncoder, rng: &mut ThreadRng, queue_command_encoders: &mut Vec<GPUCommandEncoder>) {
    if let Some(_) = command_encoder.command_buffer {
        if command_encoder.submitted == false && rand::random() || fuzzy(rng) {
            queue_command_encoders.push(command_encoder.clone());
        }
    }
}

pub fn add_command_encoder_is_submitted(command_encoder: &GPUCommandEncoder, rng: &mut ThreadRng, all_command_encoders_submitted: bool) -> bool {
    let mut all_command_encoders_submitted = all_command_encoders_submitted;
    if !command_encoder.submitted || fuzzy(rng) {
        all_command_encoders_submitted = false;
    }
    all_command_encoders_submitted
}