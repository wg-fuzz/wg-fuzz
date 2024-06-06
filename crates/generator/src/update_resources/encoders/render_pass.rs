use crate::*;

pub fn update_render_pass(resources: &mut ProgramResources, call: &APICall) -> Resource {
    let mut new_resource = Resource::None;

    match call {
        CreateRenderPass(encoder, _) => {
            new_resource = Resource::GPURenderPassEncoder(GPURenderPassEncoder::new(encoder));
            resources.adapters[encoder.num_adapter].devices[encoder.num_device].command_encoders[encoder.num].render_pass_encoders.push(GPURenderPassEncoder::new(encoder));
        }
        SetRenderPassPipeline(render_pass, render_pipeline) => {
            resources.adapters[render_pass.num_adapter].devices[render_pass.num_device].command_encoders[render_pass.num_encoder].render_pass_encoders[render_pass.num].pipeline = Some(render_pipeline.clone());
        }
        _ => { panic!("There is a bug in the update_resource match calls") }
    }
    new_resource
}