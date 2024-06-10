use crate::*;

pub fn update_command_encoder(resources: &mut ProgramResources, call: &APICall) -> Resource {
    let mut new_resource = Resource::None;

    match call {
        CreateCommandEncoder(device) => {
            new_resource = Resource::GPUCommandEncoder(GPUCommandEncoder::new(device));
            resources.adapters[device.num_adapter].devices[device.num].command_encoders.push(GPUCommandEncoder::new(device))
        }
        ClearBuffer(_, _) => {}
        CopyBufferToBuffer(_, _, _) => {}
        CopyBufferToTexture(_, _, _) => {}
        CopyTextureToBuffer(_, _, _) => {}
        CopyTextureToTexture(_, _, _) => {}
        InsertCommandEncoderDebugMarker(_) => {}
        PushCommandEncoderDebugGroup(command_encoder) => {
            resources.adapters[command_encoder.num_adapter].devices[command_encoder.num_device].command_encoders[command_encoder.num].debug_group_active = true;
        }
        PopCommandEncoderDebugGroup(command_encoder) => {
            resources.adapters[command_encoder.num_adapter].devices[command_encoder.num_device].command_encoders[command_encoder.num].debug_group_active = false;
        }
        ResolveQuerySet(_, _, _) => {}
        _ => panic!("There is a bug in the update_resource match calls")
    }
    new_resource
}