use crate::*;

pub fn update_render_pass(resources: &mut ProgramResources, call: &APICall) -> Resource {
    let mut new_resource = Resource::None;

    match call {
        CreateRenderPass(encoder, texture_view) => {
            let device = &resources.adapters[encoder.num_adapter].devices[encoder.num_device].clone();
            new_resource = Resource::GPURenderPassEncoder(GPURenderPassEncoder::new(device, encoder, texture_view));
            resources.adapters[encoder.num_adapter].devices[encoder.num_device].command_encoders[encoder.num].render_pass_encoders.push(GPURenderPassEncoder::new(device, encoder, texture_view));
        }
        SetRenderPassPipeline(render_pass, render_pipeline) => {
            resources.adapters[render_pass.num_adapter].devices[render_pass.num_device].command_encoders[render_pass.num_encoder].render_pass_encoders[render_pass.num].pipeline = Some(render_pipeline.clone());
        }
        SetVertexBuffer(render_pass, buffer) => {
            resources.adapters[render_pass.num_adapter].devices[render_pass.num_device].command_encoders[render_pass.num_encoder].render_pass_encoders[render_pass.num].vertex_buffer = Some(buffer.clone());
        }
        SetIndexBuffer(render_pass, buffer) => {
            resources.adapters[render_pass.num_adapter].devices[render_pass.num_device].command_encoders[render_pass.num_encoder].render_pass_encoders[render_pass.num].index_buffer = Some(buffer.clone());
        }
        Draw(render_pass) => {
            resources.adapters[render_pass.num_adapter].devices[render_pass.num_device].command_encoders[render_pass.num_encoder].render_pass_encoders[render_pass.num].drew = true;
        }
        DrawIndexed(render_pass) => {
            resources.adapters[render_pass.num_adapter].devices[render_pass.num_device].command_encoders[render_pass.num_encoder].render_pass_encoders[render_pass.num].drew = true;
        }
        DrawIndirect(render_pass, _) => {
            resources.adapters[render_pass.num_adapter].devices[render_pass.num_device].command_encoders[render_pass.num_encoder].render_pass_encoders[render_pass.num].drew = true;
        }
        DrawIndexedIndirect(render_pass, _) => {
            resources.adapters[render_pass.num_adapter].devices[render_pass.num_device].command_encoders[render_pass.num_encoder].render_pass_encoders[render_pass.num].drew = true;
        }
        EndRenderPass(render_pass) => {
            resources.adapters[render_pass.num_adapter].devices[render_pass.num_device].command_encoders[render_pass.num_encoder].render_pass_encoders[render_pass.num].finished = true;
        }
        _ => { panic!("There is a bug in the update_resource match calls") }
    }
    new_resource
}