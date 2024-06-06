use crate::*;

pub fn render_pass_to_js(api_call: &APICall, created_resource: &Resource) -> String {
    match api_call {
        CreateRenderPass(command_encoder, texture_view) => {
            if let Resource::GPURenderPassEncoder(render_pass_encoder) = created_resource {
                return format!("const {} = {}.beginRenderPass({{
    colorAttachments: [
        {{
            clearValue: [0.0, 0.5, 1.0, 1.0],
            loadOp: \"clear\",
            storeOp: \"store\",
            view: {},
        }},
    ],
    }});", 
                    render_pass_encoder.var_name, command_encoder.var_name, texture_view.var_name);
            } else {
                panic!("created_resource for CreateRenderPass() call is not a render pass encoder!")
            }
        }
        SetRenderPassPipeline(render_pass, render_pipeline) => {
            return format!("{}.setPipeline({});", render_pass.var_name, render_pipeline.var_name);
        }
        SetVertexBuffer(render_pass, buffer) => {
            return format!("{}.setVertexBuffer(0, {});", render_pass.var_name, buffer.var_name);
        }
        SetIndexBuffer(render_pass, buffer) => {
            return format!("{}.setIndexBuffer({}, \"uint16\");", render_pass.var_name, buffer.var_name);
        }
    //     SetRenderPassBindGroup(render_pass, bind_group) => {
    //         return format!("\
    // const {} = {}.createBindGroup({{
    //     layout: {}.getBindGroupLayout(0)
    // }})
    
    // {}.setBindGroup(0, {});", render_pass.var_name, render_pipeline.var_name);
        // }
        Draw(render_pass) => {
            return format!("{}.draw(3);", render_pass.var_name);
        }
        DrawIndexed(render_pass) => {
            return format!("{}.drawIndexed(3);", render_pass.var_name);
        }
        DrawIndirect(render_pass, buffer) => {
            return format!("{}.drawIndirect({}, 0);", render_pass.var_name, buffer.var_name);
        }
        DrawIndexedIndirect(render_pass, buffer) => {
            return format!("{}.drawIndexedIndirect({}, 0);", render_pass.var_name, buffer.var_name);
        }
        EndRenderPass(render_pass) => {
            return format!("{}.end();", render_pass.var_name);
        }
        _ => { panic!("There is a bug in the to_javascript match calls") }
    }
}