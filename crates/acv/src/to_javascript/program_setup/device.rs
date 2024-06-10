use crate::*;

pub fn device_to_js(api_call: &APICall, created_resource: &Resource) -> String {
    match api_call {
        CreateDevice(adapter) => {
            if let Resource::GPUDevice(device) = created_resource {
                format!("const {} = await {}.requestDevice({{ label: \"{}\" }});", 
                    device.var_name, adapter.var_name, device.var_name)
            } else {
                panic!("created_resource for CreateDevice() call is not a device!")
            }
        }
        PrintDeviceInfo(device) => {
            format!("\
    console.log({}.features.size);

    for (const value of {}.features.keys()) {{
        console.log(value);
    }}

    console.log({}.limits.size);

    for (const [key, value] of Object.entries({}.limits)) {{
        console.log(key);
        console.log(value);
    }}

    {}.lost.then((info) => {{
        console.error(`WebGPU device was lost: ${{info.message}}`);
        console.log(info.reason);
    }});", 
                device.var_name, device.var_name, device.var_name, device.var_name, device.var_name)
        }
        DestroyDevice(device) => {
            format!("{}.destroy();", device.var_name)
        }
        _ => panic!("There is a bug in the to_javascript match calls")
    }
}