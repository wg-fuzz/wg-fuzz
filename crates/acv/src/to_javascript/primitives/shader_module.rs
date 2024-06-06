use crate::*;

pub fn shader_module_to_js(api_call: &APICall, created_resource: &Resource) -> String {
    match api_call {
        CreateShaderModuleCompute(device) => {
            if let Resource::GPUShaderModule(shader_module) = created_resource {
                let file_name = format!("out/{}.wgsl", shader_module.var_name);

                let file = File::create(&file_name).unwrap();

                let stdio = Stdio::from(file);

                Command::new("target/debug/wgsl_generator")
                    .arg("--max-block-depth=1")
                    .arg("--max-fns=2")
                    .stdout(stdio)
                    .output().unwrap();

                //TODO: add args to generator?

                let _ = cli::run(Options {
                    input: file_name.clone(),
                    output: file_name.clone(),
                    enable: Vec::new()
                });

                let var_name = &shader_module.var_name;
                return format!("\
    var {}_code = \"\";
    try {{
        {}_code = await fs.readFile('out/{}.wgsl', 'utf8');
    }} catch (err) {{
        console.log(err);
    }}
    const {} = await {}.createShaderModule({{ code: {}_code }})", 
                    var_name, var_name, var_name, var_name, device.var_name, var_name)

            } else {
                panic!("created_resource for CreateShaderModule() call is not a shader module!")
            }
        }
        CreateShaderModuleRender(device) => {
            if let Resource::GPUShaderModule(shader_module) = created_resource {
                let var_name = &shader_module.var_name;
                return format!("\
    var {}_code = \"\";
    try {{
        {}_code = await fs.readFile('crates/wg-fuzz/code_samples/render_shader.wgsl', 'utf8');
    }} catch (err) {{
        console.log(err);
    }}
    const {} = await {}.createShaderModule({{ code: {}_code }})", 
                    var_name, var_name, var_name, device.var_name, var_name)

            } else {
                panic!("created_resource for CreateShaderModule() call is not a shader module!")
            }
        }
        PrintShaderModuleInfo(shader_module) => {
            return format!("\
    {{
        const shaderInfo = await {}.getCompilationInfo();

        for (const message in shaderInfo.messages) {{
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }}
    }}", 
            shader_module.var_name);
        }
        _ => { panic!("There is a bug in the to_javascript match calls") }
    }
}