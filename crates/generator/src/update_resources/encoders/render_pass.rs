use crate::*;

pub fn update_render_pass(resources: &mut ProgramResources, call: &APICall) -> Resource {
    let new_resource;

    match call {
        CreateRenderPass(encoder, _) => {
            new_resource = Resource::GPURenderPassEncoder(GPURenderPassEncoder::new(encoder));
            resources.adapters[encoder.num_adapter].devices[encoder.num_device].command_encoders[encoder.num].render_pass_encoders.push(GPURenderPassEncoder::new(encoder));
        }
        _ => { panic!("There is a bug in the update_resource match calls") }
    }
    new_resource
}