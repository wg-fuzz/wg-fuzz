pub mod states;
pub mod compute_pass;
pub mod render_pass;
pub mod bundle;

use crate::*;
use states::*;
use compute_pass::*;
use render_pass::*;
use available_calls::fuzzy;

pub fn add_manipulate_command_encoders(available_api_calls: &mut Vec<APICall>, rng: &mut ThreadRng, fuzzy_prob: f64, device: &GPUDevice) -> bool {
    let mut queue_command_encoders: Vec<GPUCommandEncoder> = Vec::new();

    let mut all_command_encoders_submitted = true;

    for command_encoder in &device.command_encoders {
        let mut all_passes_finished = true;

        all_passes_finished = add_manipulate_current_compute_pass(available_api_calls, rng, fuzzy_prob, device, command_encoder, all_passes_finished);

        all_passes_finished = add_manipulate_current_render_pass(available_api_calls, rng, fuzzy_prob, device, command_encoder, all_passes_finished);

        add_command_encoder_not_yet_buffer(available_api_calls, rng, fuzzy_prob, device, command_encoder, all_passes_finished);

        add_command_encoder_is_buffer(command_encoder, rng, fuzzy_prob, &mut queue_command_encoders);
        
        all_command_encoders_submitted = add_command_encoder_is_submitted(command_encoder, rng, fuzzy_prob, all_command_encoders_submitted);
    }

    if queue_command_encoders.len() > 0 || fuzzy(rng, fuzzy_prob) {
        available_api_calls.extend([SubmitQueueRandom(device.clone(), queue_command_encoders)]);
    }

    all_command_encoders_submitted
}