use crate::*;

pub fn pipeline_layout_to_js(api_call: &APICall, created_resource: &Resource) -> String {
    match api_call {
        CreateComputeBindGroupLayout(device) => {
            if let Resource::GPUBindGroupLayout(bind_group_layout) = created_resource {
                format!("\
    const {} = {}.createBindGroupLayout({{ 
        label: \"{}\",
        entries: [
            {{
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {{
                    type: \"uniform\",
                }},
            }},
            {{
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {{
                    type: \"storage\",
                }}
            }}
        ]
    }});", 
                    bind_group_layout.var_name, device.var_name, bind_group_layout.var_name)
            } else {
                panic!("created_resource for CreateComputeBindGroupLayout() call is not a bind group layout!")
            }
        }
        CreateComputePipelineLayout(device, render_bind_group_layout) => {
            if let Resource::GPUPipelineLayout(pipeline_layout) = created_resource {
                format!("\
    const {} = {}.createPipelineLayout({{ 
        label: \"{}\",
        bindGroupLayouts: [{}]
    }});", 
                    pipeline_layout.var_name, device.var_name, pipeline_layout.var_name, render_bind_group_layout.var_name)
            } else {
                panic!("created_resource for CreateComputePipelineLayout() call is not a pipeline layout!")
            }
        }
        _ => panic!("There is a bug in the to_javascript match calls")
    }
}