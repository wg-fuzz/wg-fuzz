use crate::*;

pub fn update_render_pass(resources: &mut ProgramResources, call: &APICall) -> Resource {
    let mut new_resource = Resource::None;

    match call {
        CreateRenderPass(encoder, texture_view, optional_query_set) => {
            let device = &resources.adapters[encoder.num_adapter].devices[encoder.num_device].clone();
            let query_set_num = match optional_query_set {
                Some(query_set) => Some(query_set.num),
                None => None
            };
            new_resource = Resource::GPURenderPassEncoder(GPURenderPassEncoder::new(device, encoder, texture_view, query_set_num));
            resources.adapters[encoder.num_adapter].devices[encoder.num_device].command_encoders[encoder.num].render_pass_encoders.push(GPURenderPassEncoder::new(device, encoder, texture_view, query_set_num));
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
        SetRenderPassBindGroupTemplate(device, render_pass) => {
            let uniform_buffer = GPUBuffer::new(device, String::from("GPUBufferUsage.UNIFORM"), 0);
            let storage_buffer = GPUBuffer::new(device, String::from("GPUBufferUsage.STORAGE"), 1);
            let bind_group = GPUBindGroup::new(device);
            new_resource = Resource::BindGroupTemplate(uniform_buffer.clone(), storage_buffer.clone(), bind_group.clone());
            resources.adapters[render_pass.num_adapter]
                     .devices[render_pass.num_device]
                     .buffers.extend([uniform_buffer, storage_buffer]);
            resources.adapters[render_pass.num_adapter]
                     .devices[render_pass.num_device]
                     .bind_groups.extend([bind_group]);
            resources.adapters[render_pass.num_adapter]
                     .devices[render_pass.num_device]
                     .command_encoders[render_pass.num_encoder]
                     .render_pass_encoders[render_pass.num]
                     .bindgroup_set = true;
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
        BeginOcclusionQuery(render_pass, query_set) => {
            resources.adapters[query_set.num_adapter].devices[query_set.num_device].query_sets[query_set.num].query_active = true;
            resources.adapters[render_pass.num_adapter].devices[render_pass.num_device].command_encoders[render_pass.num_encoder].render_pass_encoders[render_pass.num].query_active = true;
            resources.adapters[render_pass.num_adapter].devices[render_pass.num_device].query_sets[render_pass.num].i += 1;
        }
        EndOcclusionQuery(render_pass) => {
            resources.adapters[render_pass.num_adapter].devices[render_pass.num_device].query_sets[render_pass.occlusion_query_set_num.unwrap()].query_active = false;
            resources.adapters[render_pass.num_adapter].devices[render_pass.num_device].command_encoders[render_pass.num_encoder].render_pass_encoders[render_pass.num].query_active = false;
        }
        _ => { panic!("There is a bug in the update_resource match calls") }
    }
    new_resource
}