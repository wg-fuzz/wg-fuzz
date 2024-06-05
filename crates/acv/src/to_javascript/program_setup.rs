use crate::*;

pub fn print_wgsl_language_features() -> String {
    return String::from("console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }");
}

pub fn print_preferred_canvas_format() -> String {
    return String::from("console.log(navigator.gpu.getPreferredCanvasFormat());");
}

pub fn create_array(created_resource: &Resource) -> String {
    if let Resource::RandomArray(array) = created_resource {
        let mut random_floats = String::new();
        let float_choices = ["-1.0", "-0.75", "-0.5", "-0.25", "0.0", "0.25", "0.5", "0.75", "1.0"];
        let mut rand = rand::thread_rng();
        for _ in 0..100 {
            let i = rand.gen_range(0..float_choices.len());
            random_floats.push_str(float_choices[i]);
            random_floats.push_str(", ");
        }
        return format!("const {} = new Float32Array([{}]);", array.var_name, random_floats);
    } else {
        panic!("created_resource for CreateDevice() call is not a device!")
    }
}

pub fn create_adapter(created_resource: &Resource) -> String {
    if let Resource::GPUAdapter(adapter) = created_resource {
        let mut rng = rand::thread_rng();
        let i = rng.gen_range(0..3);
        let random_power_preference = match i {
            0 => "undefined",
            1 => "\"low-power\"",
            2 => "\"high-performance\"",
            _ => "undefined",
        };
        return format!("const {} = await navigator.gpu.requestAdapter({{
        powerPreference: {},
        label: \"{}\"
    }});", adapter.var_name, random_power_preference, adapter.var_name);
    } else {
        panic!("created_resource for CreateAdapter() call is not an adapter!")
    }
}

pub fn print_adapter_info(adapter: &GPUAdapter) -> String {
    return format!("console.log({}.features.size);
    
    for (const value of {}.features.keys()) {{
        console.log(value);
    }}
    
    console.log({}.isFallbackAdapter);
    
    console.log({}.limits.size);
    
    for (const [key, value] of Object.entries({}.limits)) {{
        console.log(key);
        console.log(value);
    }}

    {{
        const adapterInfo = await {}.requestAdapterInfo();
        console.log(adapterInfo.vendor);
        console.log(adapterInfo.architecture);
        console.log(adapterInfo.device);
        console.log(adapterInfo.description);
    }}", adapter.var_name, adapter.var_name, adapter.var_name, adapter.var_name, adapter.var_name, adapter.var_name);
}

pub fn create_device(created_resource: &Resource, adapter: &GPUAdapter) -> String {
    if let Resource::GPUDevice(device) = created_resource {
        return format!("const {} = await {}.requestDevice({{ label: \"{}\" }});", device.var_name, adapter.var_name, device.var_name);
    } else {
        panic!("created_resource for CreateDevice() call is not a device!")
    }
}

pub fn print_device_info(device: &GPUDevice) -> String {
    return format!("console.log({}.features.size);
    
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
    }});", device.var_name, device.var_name, device.var_name, device.var_name, device.var_name);
}

pub fn destroy_device(device: &GPUDevice) -> String {
    return format!("{}.destroy();", device.var_name);
}

pub fn submit_queue_random(device: &GPUDevice, command_encoders: &Vec<GPUCommandEncoder>) -> String {
    let mut command_buffers_str = String::from("[");
    for command_encoder in command_encoders {
        command_buffers_str.push_str(&command_encoder.command_buffer.as_ref().unwrap().var_name);
        command_buffers_str.push_str(", ");
    }
    command_buffers_str.push_str("]");
    return format!("{}.queue.submit({});", device.var_name, command_buffers_str);
}

pub fn add_uncaptured_error_listener(device: &GPUDevice) -> String {
    return format!("console.log(typeof {}.onuncapturederror);", device.var_name);
}

pub fn push_random_error_scope(device: &GPUDevice) -> String {
    let mut rng = rand::thread_rng();
    let i = rng.gen_range(0..3);
    let random_error_type = match i {
        0 => "\"internal\"",
        1 => "\"out-of-memory\"",
        2 => "\"validation\"",
        _ => "\"internal\"",
    };
    return format!("{}.pushErrorScope({});", device.var_name, random_error_type);
}

pub fn pop_error_scope(device: &GPUDevice) -> String {
    return format!("{}.popErrorScope().then((error) => {{
        if (error) {{
            console.error(`An error occurred: ${{error.message}}`);
        }}
    }});", device.var_name);
}

pub fn wait_submitted_work(device: &GPUDevice) -> String {
    return format!("{}.queue.onSubmittedWorkDone();", device.var_name);
}