use rand::prelude::*;

pub fn get_random_adapter() -> String {
    let mut rng = rand::thread_rng();
    let n1: u8 = rng.gen_range(0..3);
    let random_power_preference = match n1 {
        0 => "undefined",
        1 => "\"low-power\"",
        2 => "\"high-performance\"",
        _ => "undefined",
    };
    let random_adapter = "const adapter = await navigator.gpu.requestAdapter({powerPreference: "
        .to_owned()
        + &random_power_preference
        + "});
    if (!adapter) {
        throw Error(\"Couldn't request WebGPU adapter.\");
    }

    ";

    return random_adapter.to_string();
}


pub fn create_adapter(var_name: &String) -> String {
    format!("const {} = await navigator.gpu.requestAdapter();", var_name)
}

pub fn create_device(var_name: &String, adapter: &String) -> String {
    format!("const {} = await {}.requestDevice();", var_name, adapter)
}

pub fn create_shader_module(var_name: &String, device: &String) -> String {
    format!("const {} = await {}.createShaderModule({{code: ...}})", var_name, device)
}

pub fn create_compute_pipeline(var_name: &String, device: &String, shader_module: &String) -> String {
    format!("const {} = await {}.createComputePipeline({{compute: {{module: {}, entryPoint: \"main\"}}}})", var_name, device, shader_module)
}

pub fn create_command_buffer(var_number: &String, device: &String, compute_pipeline: &String) -> String {
    format!("const commandEncoder{} = await {}.createCommandEncoder();
    const passEncoder{} = commandEncoder{}.beginComputePass();
    
    passEncoder{}.setPipeline({});
    passEncoder{}.dispatchWorkgroups(1);

    passEncoder{}.end();

    {}.queue.submit([commandEncoder{}.finish()]);
    ", var_number, device, var_number, var_number, var_number, 
       compute_pipeline, var_number, var_number, device, var_number)
}