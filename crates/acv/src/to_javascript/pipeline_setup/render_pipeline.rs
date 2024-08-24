use crate::*;

pub fn render_pipeline_to_js(api_call: &APICall, created_resource: &Resource) -> String {
    match api_call {
        CreateRenderPipeline(device, shader_module) => {
            if let Resource::GPURenderPipeline(render_pipeline) = created_resource {
                format!("\
    const {} = {}.createRenderPipeline({{
        label: \"{}\",
        vertex: {{
            module: {},
            entryPoint: \"vertex_main\",
            buffers: [
                {{
                    attributes: [
                        {{
                            shaderLocation: 0, // position
                            offset: 0,
                            format: \"float32x4\",
                        }},
                        {{
                            shaderLocation: 1, // color
                            offset: 16,
                            format: \"float32x4\",
                        }},
                    ],
                    arrayStride: 32,
                    stepMode: \"vertex\",
                }},
            ],
        }},
        fragment: {{
            module: {},
            entryPoint: \"fragment_main\",
            targets: [
                {{
                    format: gpu.getPreferredCanvasFormat(),
                }},
            ],
        }},
        primitive: {{
            topology: \"triangle-list\",
        }},
        layout: \"auto\"
    }});", 
                    render_pipeline.var_name, device.var_name, render_pipeline.var_name, shader_module.var_name, shader_module.var_name)
            } else {
                panic!("created_resource for CreateRenderPipeline() call is not a render pipeline!")
            }
        }
        CreateRenderPipelineAsync(device, shader_module) => {
            if let Resource::GPURenderPipeline(render_pipeline) = created_resource {
                format!("\
    const {} = await {}.createRenderPipelineAsync({{
        label: \"{}\",
        vertex: {{
            module: {},
            entryPoint: \"vertex_main\",
            buffers: [
                {{
                    attributes: [
                        {{
                            shaderLocation: 0, // position
                            offset: 0,
                            format: \"float32x4\",
                        }},
                        {{
                            shaderLocation: 1, // color
                            offset: 16,
                            format: \"float32x4\",
                        }},
                    ],
                    arrayStride: 32,
                    stepMode: \"vertex\",
                }},
            ],
        }},
        fragment: {{
            module: {},
            entryPoint: \"fragment_main\",
            targets: [
                {{
                    format: gpu.getPreferredCanvasFormat(),
                }},
            ],
        }},
        primitive: {{
            topology: \"triangle-list\",
        }},
        layout: \"auto\",
    }});", 
                    render_pipeline.var_name, device.var_name, render_pipeline.var_name, shader_module.var_name, shader_module.var_name)
            } else {
                panic!("created_resource for CreateRenderPipelineASync() call is not a render pipeline!")
            }
        }
        _ => panic!("There is a bug in the to_javascript match calls")
    }
}