use crate::*;

pub fn render_pass_to_js(api_call: &APICall, created_resource: &Resource) -> String {
    match api_call {
        CreateRenderPass(command_encoder, texture_view, optional_query_set) => {
            if let Resource::GPURenderPassEncoder(render_pass_encoder) = created_resource {
                let occlusion_query_set_str = match optional_query_set {
                    Some(query_set) => String::from(&query_set.var_name),
                    None => String::from("null"),
                };
                format!("const {} = {}.beginRenderPass({{
        colorAttachments: [
            {{
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: \"clear\",
                storeOp: \"store\",
                view: {},
            }},
        ],
        occlusionQuerySet: {}
    }});", 
                    render_pass_encoder.var_name, command_encoder.var_name, texture_view.var_name, occlusion_query_set_str)
            } else {
                panic!("created_resource for CreateRenderPass() call is not a render pass encoder!")
            }
        }
        SetRenderPassPipeline(render_pass, render_pipeline) => {
            format!("{}.setPipeline({});", render_pass.var_name, render_pipeline.var_name)
        }
        SetVertexBuffer(render_pass, buffer) => {
            format!("{}.setVertexBuffer(0, {});", render_pass.var_name, buffer.var_name)
        }
        SetIndexBuffer(render_pass, buffer) => {
            format!("{}.setIndexBuffer({}, \"uint16\");", render_pass.var_name, buffer.var_name)
        }
        SetRenderPassBindGroupTemplate(device, render_pass) => {
            if let Resource::BindGroupTemplate(uniform_buffer, storage_buffer, bind_group) = created_resource {
                format!("\
    const {} = {}.createBuffer({{
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    }});

    const {} = {}.createBuffer({{
        size: 400,
        usage: GPUBufferUsage.STORAGE
    }});
    
    const {} = {}.createBindGroup({{
        layout: {}.getBindGroupLayout(0),
        entries: [
            {{
                binding: 0,
                resource: {{
                    buffer: {},
                }},
            }},
            {{
                binding: 1,
                resource: {{
                    buffer: {},
                }},
            }},
        ],
    }});

    {}.setBindGroup(0, {});", 
                uniform_buffer.var_name, device.var_name, storage_buffer.var_name, device.var_name,
                bind_group.var_name, device.var_name, render_pass.pipeline.as_ref().unwrap().var_name,
                uniform_buffer.var_name, storage_buffer.var_name,
                render_pass.var_name, bind_group.var_name)
            } else {
                panic!("created_resource for CreateComputePassBindGroupTemplate() call is not a valid template!")
            }
        }
        Draw(render_pass) => {
            format!("{}.draw(3);", render_pass.var_name)
        }
        DrawIndexed(render_pass) => {
            format!("{}.drawIndexed(3);", render_pass.var_name)
        }
        DrawIndirect(render_pass, buffer) => {
            format!("{}.drawIndirect({}, 0);", render_pass.var_name, buffer.var_name)
        }
        DrawIndexedIndirect(render_pass, buffer) => {
            format!("{}.drawIndexedIndirect({}, 0);", render_pass.var_name, buffer.var_name)
        }
        EndRenderPass(render_pass) => {
            format!("{}.end();", render_pass.var_name)
        }
        _ => panic!("There is a bug in the to_javascript match calls")
    }
}