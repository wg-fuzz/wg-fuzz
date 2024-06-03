// act = abstract call tree

// for now just resource creation. use all fields eventually.

use std::{fs::{self, File}, process::{Command, Stdio}};
use art::*;

use reconditioner::cli;
use reconditioner::cli::Options;

use APICall::*;

use rand::prelude::*;

#[derive(Debug, Clone)]
pub struct Program {
    pub calls: Vec<(APICall, Resource)>
}

impl Program {
    pub fn new() -> Program {
        Program {
            calls: Vec::new()
        }
    }

    pub fn to_javascript(&self) -> String {
        let mut js = String::new();
        js.push_str(&fs::read_to_string("crates/wg-fuzz/code_samples/prelude.txt").unwrap());
        for (call, created_resource) in &self.calls {
            js.push_str("\n\n    ");
            js.push_str(&call.to_javascript(created_resource));
        }
        js.push_str(&fs::read_to_string("crates/wg-fuzz/code_samples/postlude.txt").unwrap());
        js
    }
}

#[derive(Debug, Clone)]
pub enum APICall {
    PrintWGSLLanguageFeatures(),
    PrintPreferredCanvasFormat(),
    CreateArray(),
    CreateAdapter(),
    PrintAdapterInfo(GPUAdapter),
    CreateDevice(GPUAdapter),
    PrintDeviceInfo(GPUDevice),
    CreateRandomBuffer(GPUDevice),
    WriteBuffer(GPUDevice, GPUBuffer, RandomArray),
    // CreateTexture(GPUDevice),
    CreateShaderModule(GPUDevice),
    CreateComputePipeline(GPUDevice, GPUShaderModule),
    CreateCommandEncoder(GPUDevice),
    CreateComputePass(GPUCommandEncoder),
    SetComputePassPipeline(GPUComputePassEncoder, GPUComputePipeline),
    SetComputePassBindGroupTemplate(GPUDevice, GPUComputePassEncoder, GPUComputePipeline),
    SetComputePassWorkgroups(GPUComputePassEncoder),
    EndComputePass(GPUComputePassEncoder),
    CreateCommandBuffer(GPUCommandEncoder),
    SubmitQueueRandom(GPUDevice, Vec<GPUCommandEncoder>),
}

impl APICall {
    pub fn to_javascript(&self, created_resource: &Resource) -> String {
        match self {
            PrintWGSLLanguageFeatures() => {
                return String::from("console.log(navigator.gpu.wgslLanguageFeatures.size);
    
    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }");
            }
            PrintPreferredCanvasFormat() => {
                return String::from("console.log(navigator.gpu.getPreferredCanvasFormat());");
            }
            CreateArray() => {
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
            CreateAdapter() => {
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
            },
            PrintAdapterInfo(adapter) => {
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
            CreateDevice(adapter) => {
                if let Resource::GPUDevice(device) = created_resource {
                    return format!("const {} = await {}.requestDevice({{ label: \"{}\" }});", device.var_name, adapter.var_name, device.var_name);
                } else {
                    panic!("created_resource for CreateDevice() call is not a device!")
                }
            },
            PrintDeviceInfo(device) => {
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
            },
            CreateRandomBuffer(device) => {
                if let Resource::GPUBuffer(buffer) = created_resource {
                    return format!("const {} = {}.createBuffer({{ 
        size: 400,
        usage: {}
    }});", buffer.var_name, device.var_name, buffer.use_case);
                } else {
                    panic!("created_resource for CreateBuffer() call is not a buffer!")
                }
            },
            WriteBuffer(device, buffer, array) => {
                return format!("{}.queue.writeBuffer({}, 0, {}, 0, {}.length);", device.var_name, buffer.var_name, array.var_name, array.var_name);
            },
            // CreateTexture(device) => {
            //     if let Resource::GPUTexture(texture) = created_resource {
            //         return format!("const {} = {}.createTexture({{ size: [400], usage: GPUTextureUsage.STORAGE_BINDING, format: \"r8unorm\" }});", texture.var_name, device.var_name);
            //     } else {
            //         panic!("created_resource for CreateTexture() call is not a texture!")
            //     }
            // },
            CreateShaderModule(device) => {
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
            },
            CreateComputePipeline(device, shader_module) => {
                if let Resource::GPUComputePipeline(compute_pipeline) = created_resource {
                    return format!("const {} = {}.createComputePipeline({{ layout: \"auto\", compute: {{ module: {}, entryPoint: \"main\" }} }});", compute_pipeline.var_name, device.var_name, shader_module.var_name);
                } else {
                    panic!("created_resource for CreateComputePipeline() call is not a compute pipeline!")
                }
            },
            CreateCommandEncoder(device) => {
                if let Resource::GPUCommandEncoder(command_encoder) = created_resource {
                    return format!("const {} = {}.createCommandEncoder({{ label: \"{}\" }});", command_encoder.var_name, device.var_name, command_encoder.var_name);
                } else {
                    panic!("created_resource for CreateCommandEncoder() call is not a command encoder!")
                }
            },
            CreateComputePass(encoder) => {
                if let Resource::GPUComputePassEncoder(compute_pass_encoder) = created_resource {
                    return format!("const {} = {}.beginComputePass({{ label: \"{}\" }});", compute_pass_encoder.var_name, encoder.var_name, compute_pass_encoder.var_name);
                } else {
                    panic!("created_resource for CreateComputePass() call is not a command pass encoder!")
                }
            },
            SetComputePassPipeline(encoder, compute_pipeline) => {
                return format!("{}.setPipeline({});", encoder.var_name, compute_pipeline.var_name);
            },
            SetComputePassBindGroupTemplate(device, encoder, compute_pipeline) => {
                if let Resource::BindGroupTemplate(uniform_buffer, storage_buffer, bind_group_layout, bind_group) = created_resource {
                    return format!("\
    const {} = {}.createBuffer({{
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    }});

    const {} = {}.createBuffer({{
        size: 400,
        usage: GPUBufferUsage.STORAGE
    }});

    // const {} = {}.createBindGroupLayout({{
    //     entries: [
    //         {{
    //             binding: 0,
    //             visibility: GPUShaderStage.COMPUTE,
    //             buffer: {{
    //                 type: \"uniform\",
    //             }},
    //         }},
    //         {{
    //             binding: 1,
    //             visibility: GPUShaderStage.COMPUTE,
    //             buffer: {{
    //                 type: \"storage\",
    //             }}
    //         }}
    //     ],
    // }});
        
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
                    bind_group_layout.var_name, device.var_name, bind_group.var_name, device.var_name,
                    compute_pipeline.var_name, uniform_buffer.var_name, storage_buffer.var_name,
                    encoder.var_name, bind_group.var_name);
                } else {
                    panic!("created_resource for CreateComputePassBindGroupTemplate() call is not a valid template!")
                }
            },
            SetComputePassWorkgroups(encoder) => {
                return format!("{}.dispatchWorkgroups(100);", encoder.var_name);
            }
            EndComputePass(compute_pass_encoder) => {
                return format!("{}.end();", compute_pass_encoder.var_name);
            },
            CreateCommandBuffer(encoder) => {
                if let Resource::GPUCommandBuffer(command_buffer) = created_resource {
                    return format!("const {} = {}.finish();", command_buffer.var_name, encoder.var_name);
                } else {
                    panic!("created_resource for CreateCommandBuffer() call is not a command buffer!")
                }
            },
            SubmitQueueRandom(device, command_encoders) => {
                let mut command_buffers_str = String::from("[");
                for command_encoder in command_encoders {
                    command_buffers_str.push_str(&command_encoder.command_buffer.as_ref().unwrap().var_name);
                    command_buffers_str.push_str(", ");
                }
                command_buffers_str.push_str("]");
                return format!("{}.queue.submit({});", device.var_name, command_buffers_str);
            }
        }
    }
}