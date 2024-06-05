use crate::*;

pub fn update_render_pass(resources: &mut ProgramResources, call: &APICall) -> Resource {
    let mut new_resource = Resource::None;

    match call {
        CreateRenderPass(encoder, _) => {
            new_resource = Resource::GPURenderPassEncoder(GPURenderPassEncoder::new(encoder));
            resources.adapters[encoder.num_adapter].devices[encoder.num_device].command_encoders[encoder.num].render_pass_encoders.push(GPURenderPassEncoder::new(encoder));
        }
        _ => {}
    }
    new_resource
}