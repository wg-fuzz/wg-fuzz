use crate::*;

pub fn update_submit(resources: &mut ProgramResources, call: &APICall) -> Resource {
    let mut new_resource = Resource::None;

    match call {
        CreateCommandBuffer(encoder) => {
            new_resource = Resource::GPUCommandBuffer(GPUCommandBuffer::new(encoder));
            resources.adapters[encoder.num_adapter].devices[encoder.num_device].command_encoders[encoder.num].command_buffer = Some(GPUCommandBuffer::new(encoder));
        }
        SubmitQueueRandom(_, command_encoders) => {
            for command_encoder in command_encoders {
                resources.adapters[command_encoder.num_adapter].devices[command_encoder.num_device].command_encoders[command_encoder.num].submitted = true;
            }
        }
        WaitSubmittedWork(_) => {}
        _ => panic!("There is a bug in the update_resource match calls")
    }
    new_resource
}