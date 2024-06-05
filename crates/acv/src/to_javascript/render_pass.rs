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
        _ => { panic!("There is a bug in the to_javascript match calls") }
    }
}