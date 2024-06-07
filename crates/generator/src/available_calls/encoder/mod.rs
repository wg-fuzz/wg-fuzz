pub mod states;
pub mod compute_pass;
pub mod render_pass;
pub mod bundle;

use crate::*;
use states::*;
use compute_pass::*;
use render_pass::*;

pub fn add_manipulate_command_encoders(available_api_calls: &mut Vec<APICall>, device: &GPUDevice) -> bool {
    let mut queue_command_encoders: Vec<GPUCommandEncoder> = Vec::new();

    let mut all_command_encoders_submitted = true;

    for command_encoder in &device.command_encoders {
        let mut all_passes_finished = true;

        all_passes_finished = add_manipulate_current_compute_pass(available_api_calls, device, command_encoder, all_passes_finished);

        all_passes_finished = add_manipulate_current_render_pass(available_api_calls, device, command_encoder, all_passes_finished);

        add_command_encoder_not_yet_buffer(available_api_calls, device, command_encoder, all_passes_finished);

        add_command_encoder_is_buffer(command_encoder, &mut queue_command_encoders);
        
        all_command_encoders_submitted = add_command_encoder_is_submitted(command_encoder, all_command_encoders_submitted);
    }

    if queue_command_encoders.len() > 0 {
        available_api_calls.extend([SubmitQueueRandom(device.clone(), queue_command_encoders)]);
    }

    all_command_encoders_submitted
}