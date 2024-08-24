use crate::*;

pub fn shader_module_to_js(api_call: &APICall, created_resource: &Resource) -> String {
    match api_call {
        CreateShaderModuleCompute(device) => {
            if let Resource::GPUShaderModule(shader_module) = created_resource {
                let file_name = format!("out/{}.wgsl", shader_module.var_name);
                let file = File::create(&file_name).unwrap();
                let stdio = Stdio::from(file);

                let _ = Command::new("target/debug/wgsl_generator")
                    .arg("--max-block-depth=1")
                    .arg("--max-fns=2")
                    .stdout(stdio)
                    .output();

                let mut recondition = std::panic::catch_unwind(|| 
                    cli::run(Options {
                        input: file_name.clone(),
                        output: file_name.clone(),
                        enable: Vec::new()
                    })
                );

                while let Err(_) = recondition {
                    let file_name = format!("out/{}.wgsl", shader_module.var_name);
                    let file = File::create(&file_name).unwrap();
                    let stdio = Stdio::from(file);

                    let _ = Command::new("target/debug/wgsl_generator")
                    .arg("--max-block-depth=1")
                    .arg("--max-fns=2")
                    .stdout(stdio)
                    .output();

                    recondition = std::panic::catch_unwind(|| 
                        cli::run(Options {
                            input: file_name.clone(),
                            output: file_name.clone(),
                            enable: Vec::new()
                        })
                    );
                }

                let var_name = &shader_module.var_name;
                format!("\
    var {}_code = \"\";
    try {{
        {}_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/{}.wgsl', 'utf8');
    }} catch (err) {{
        console.log(err);
    }}
    const {} = await {}.createShaderModule({{ label: \"{}\", code: {}_code }})", 
                    var_name, var_name, var_name, var_name, device.var_name, var_name, var_name)

            } else {
                panic!("created_resource for CreateShaderModuleCompute() call is not a shader module!")
            }
        }
        CreateShaderModuleRender(device) => {
            if let Resource::GPUShaderModule(shader_module) = created_resource {
                let var_name = &shader_module.var_name;
                format!("\
    var {}_code = \"\";
    try {{
        {}_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    }} catch (err) {{
        console.log(err);
    }}
    const {} = await {}.createShaderModule({{ label: \"{}\", code: {}_code }})", 
                    var_name, var_name, var_name, device.var_name, var_name, var_name)

            } else {
                panic!("created_resource for CreateShaderModuleRender() call is not a shader module!")
            }
        }
        PrintShaderModuleInfo(_) => {
            format!("")
        }
        _ => panic!("There is a bug in the to_javascript match calls")
    }
}