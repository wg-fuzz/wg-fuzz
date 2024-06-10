use crate::*;

pub fn buffer_to_js(api_call: &APICall, created_resource: &Resource) -> String {
    match api_call {
        CreateRandomBuffer(device) => {
            if let Resource::GPUBuffer(buffer) = created_resource {
                format!("\
    const {} = {}.createBuffer({{ 
        size: 400,
        usage: {}
    }});", 
                    buffer.var_name, device.var_name, buffer.use_case)
            } else {
                panic!("created_resource for CreateRandomBuffer() call is not a buffer!")
            }
        }
        PrintBufferInfo(buffer) => {
            format!("\
    {{
        const buffer = {}
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }}", 
                buffer.var_name)
        }
        ReadMappedBuffer(buffer) => {
            format!("\
    {{
        await {}.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = {}.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        {}.unmap();
        console.log(new Float32Array(data));
    }}", 
                buffer.var_name, buffer.var_name, buffer.var_name)
        }
        WriteBuffer(device, buffer, array) => {
            format!("{}.queue.writeBuffer({}, 0, {}, 0, {}.length);", 
                device.var_name, buffer.var_name, array.var_name, array.var_name)
        }
        DestroyBuffer(buffer) => {
            format!("{}.destroy()", buffer.var_name)
        }
        _ => panic!("There is a bug in the to_javascript match calls")
    }
}