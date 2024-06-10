use crate::*;

pub fn render_pipeline_to_js(api_call: &APICall, created_resource: &Resource) -> String {
    match api_call {
        CreateRenderPipeline(device, shader_module) => {
            if let Resource::GPURenderPipeline(render_pipeline) = created_resource {
                return format!("\
    const {} = {}.createRenderPipeline({{
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
                    format: navigator.gpu.getPreferredCanvasFormat(),
                }},
            ],
        }},
        primitive: {{
            topology: \"triangle-list\",
        }},
        layout: {}.createPipelineLayout({{
            bindGroupLayouts: [
                {}.createBindGroupLayout({{
                    entries: [
                        {{
                            binding: 0,
                            visibility: GPUShaderStage.FRAGMENT,
                            buffer: {{
                                type: \"uniform\"
                            }}
                        }},
                        {{
                            binding: 1,
                            visibility: GPUShaderStage.FRAGMENT,
                            buffer: {{
                                type: \"storage\"
                            }}
                        }}
                    ]
                }})
            ]
        }}),
    }});", 
                    render_pipeline.var_name, device.var_name, shader_module.var_name, shader_module.var_name,
                    device.var_name, device.var_name);
            } else {
                panic!("created_resource for CreateComputePipeline() call is not a compute pipeline!")
            }
        }
        CreateRenderPipelineAsync(device, shader_module) => {
            if let Resource::GPURenderPipeline(render_pipeline) = created_resource {
                return format!("\
    const {} = await {}.createRenderPipelineAsync({{
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
                    format: navigator.gpu.getPreferredCanvasFormat(),
                }},
            ],
        }},
        primitive: {{
            topology: \"triangle-list\",
        }},
        layout: \"auto\",
    }});", 
                    render_pipeline.var_name, device.var_name, shader_module.var_name, shader_module.var_name);
            } else {
                panic!("created_resource for CreateComputePipeline() call is not a compute pipeline!")
            }
        }
        _ => { panic!("There is a bug in the to_javascript match calls") }
    }
}