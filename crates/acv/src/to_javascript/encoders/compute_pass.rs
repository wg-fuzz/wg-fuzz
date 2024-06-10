use crate::*;

pub fn compute_pass_to_js(api_call: &APICall, created_resource: &Resource) -> String {
    match api_call {
        CreateComputePass(encoder) => {
            if let Resource::GPUComputePassEncoder(compute_pass_encoder) = created_resource {
                format!("const {} = {}.beginComputePass({{ label: \"{}\" }});", 
                    compute_pass_encoder.var_name, encoder.var_name, compute_pass_encoder.var_name)
            } else {
                panic!("created_resource for CreateComputePass() call is not a command pass encoder!")
            }
        }
        SetComputePassPipeline(encoder, compute_pipeline) => {
            format!("{}.setPipeline({});", encoder.var_name, compute_pipeline.var_name)
        }
        SetComputePassBindGroupTemplate(device, encoder, compute_pipeline) => {
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
                    bind_group.var_name, device.var_name,
                    compute_pipeline.var_name, uniform_buffer.var_name, storage_buffer.var_name,
                    encoder.var_name, bind_group.var_name)
            } else {
                panic!("created_resource for CreateComputePassBindGroupTemplate() call is not a valid template!")
            }
        }
        SetComputePassWorkgroups(encoder) => {
            format!("{}.dispatchWorkgroups(100);", encoder.var_name)
        }
        SetComputePassWorkgroupsIndirect(device, encoder) => {
            if let Resource::GPUBuffer(buffer) = created_resource {
                let array_var = format!("uint32_{}{}{}{}", encoder.num_adapter, encoder.num_device, encoder.num_encoder, encoder.num);
                format!("\
    const {} = new Uint32Array(3);

    {}[0] = 100;
    {}[1] = 1;
    {}[2] = 1;

    const {} = {}.createBuffer({{
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    }});
    {}.queue.writeBuffer({}, 0, {}, 0, {}.length);

    {}.dispatchWorkgroupsIndirect({}, 0);", 
                    array_var, 
                    array_var, array_var, array_var, 
                    buffer.var_name, device.var_name, 
                    device.var_name, buffer.var_name, array_var, array_var, 
                    encoder.var_name, buffer.var_name)
            } else {
                panic!("created_resource for SetComputePassWorkgroupsIndirect call is not a buffer!")
            }
        }
        InsertComputePassDebugMarker(encoder) => {
            format!("{}.insertDebugMarker(\"marker\")", encoder.var_name)
        }
        PushComputePassDebugGroup(encoder) => {
            format!("{}.pushDebugGroup(\"group_marker\")", encoder.var_name)
        }
        PopComputePassDebugGroup(encoder) => {
            format!("{}.popDebugGroup()", encoder.var_name)
        }
        EndComputePass(compute_pass_encoder) => {
            format!("{}.end();", compute_pass_encoder.var_name)
        }
        _ => panic!("There is a bug in the to_javascript match calls")
    }
}