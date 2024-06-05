pub mod program_setup;
pub mod primitives;
pub mod encoders;
pub mod pipeline_setup;

pub use program_setup::*;
pub use primitives::*;
pub use encoders::*;
pub use pipeline_setup::*;

use crate::*;

impl APICall {
    pub fn to_javascript(&self, created_resource: &Resource) -> String {
        match self {
            PrintWGSLLanguageFeatures() => print_wgsl_language_features(),
            PrintPreferredCanvasFormat() => print_preferred_canvas_format(),
            CreateArray() => create_array(created_resource),

            CreateAdapter() => create_adapter(created_resource),
            PrintAdapterInfo(adapter) => print_adapter_info(adapter),

            CreateDevice(adapter) => create_device(created_resource, adapter),
            PrintDeviceInfo(device) => print_device_info(device),
            DestroyDevice(device) => destroy_device(device),

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
            PrintBufferInfo(buffer) => {
                return format!("\
    {{
        const buffer = {}
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }}", buffer.var_name);
            }
            ReadMappedBuffer(buffer) => {
                return format!("\
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
    }}
    ", buffer.var_name, buffer.var_name, buffer.var_name);
            }
            WriteBuffer(device, buffer, array) => {
                return format!("{}.queue.writeBuffer({}, 0, {}, 0, {}.length);", device.var_name, buffer.var_name, array.var_name, array.var_name);
            }
            DestroyBuffer(buffer) => {
                return format!("{}.destroy()", buffer.var_name);
            }

            CreateRandomTexture(device) => {
                if let Resource::GPUTexture(texture) = created_resource {
                    return format!("const {} = {}.createTexture({{
        size: [10, 10],
        usage: {},
        format: {},
        dimension: \"2d\"
    }});", texture.var_name, device.var_name, texture.usage, texture.format);
                } else {
                    panic!("created_resource for CreateTexture() call is not a texture!")
                }
            },
            PrintTextureInfo(texture) => {
                return format!("\
    {{
        const texture = {}
        console.log(texture.depthOrArrayLayers);

        console.log(texture.dimension);

        console.log(texture.format);

        console.log(texture.height);

        console.log(texture.width);

        console.log(texture.label);

        console.log(texture.mipLevelCount);

        console.log(texture.sampleCount);

        console.log(texture.usage);
    }}", texture.var_name);
            }
            WriteTexture(device, texture, array) => {
                return format!("{}.queue.writeTexture({{ texture: {} }}, {}, {{ bytesPerRow: 40, rowsPerImage: 10 }}, {{ width: 10, height: 10 }});", 
                    device.var_name, texture.var_name, array.var_name);
            }
            
            CreateTextureView(texture) => {
                if let Resource::GPUTextureView(texture_view) = created_resource {
                    return format!("const {} = {}.createView();", texture_view.var_name, texture.var_name);
                } else {
                    panic!("created_resource for CreateTextureView() call is not a texture view!")
                }
            }
            DestroyTexture(texture) => {
                return format!("{}.destroy();", texture.var_name);
            }

            CreateSampler(device) => {
                if let Resource::GPUSampler(sampler) = created_resource {
                    return format!("const {} = {}.createSampler();", sampler.var_name, device.var_name);
                } else {
                    panic!("created_resource for CreateSampler() call is not a sampler!")
                }
            }

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
            },
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
    }}", shader_module.var_name);
            }

            CreateComputeBindGroupLayout(device) => {
                if let Resource::GPUBindGroupLayout(bind_group_layout) = created_resource {
                    return format!("const {} = {}.createBindGroupLayout({{ 
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
                        bind_group_layout.var_name, device.var_name);
                } else {
                    panic!("created_resource for CreateBindGroupLayout() call is not a bind group layout!")
                }
            }
            CreateComputePipelineLayout(device, render_bind_group_layout) => {
                if let Resource::GPUPipelineLayout(pipeline_layout) = created_resource {
                    return format!("const {} = {}.createPipelineLayout({{ 
        bindGroupLayouts: [{}]
    }});", 
                        pipeline_layout.var_name, device.var_name, render_bind_group_layout.var_name);
                } else {
                    panic!("created_resource for CreateComputePipelineLayout() call is not a pipeline layout!")
                }
            }

            CreateComputePipeline(device, shader_module, pipeline_layout) => {
                if let Resource::GPUComputePipeline(compute_pipeline) = created_resource {
                    return format!("const {} = {}.createComputePipeline({{ layout: {}, compute: {{ module: {}, entryPoint: \"main\" }} }});", 
                        compute_pipeline.var_name, device.var_name, pipeline_layout.var_name, shader_module.var_name);
                } else {
                    panic!("created_resource for CreateComputePipeline() call is not a compute pipeline!")
                }
            },
            CreateComputePipelineAsync(device, shader_module, pipeline_layout) => {
                if let Resource::GPUComputePipeline(compute_pipeline) = created_resource {
                    return format!("const {} = await {}.createComputePipelineAsync({{ layout: {}, compute: {{ module: {}, entryPoint: \"main\" }} }});", 
                        compute_pipeline.var_name, device.var_name, pipeline_layout.var_name, shader_module.var_name);
                } else {
                    panic!("created_resource for CreateComputePipelineAsync() call is not a compute pipeline!")
                }
            },

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
        layout: \"auto\",
    }});", 
                        render_pipeline.var_name, device.var_name, shader_module.var_name, shader_module.var_name);
                } else {
                    panic!("created_resource for CreateComputePipeline() call is not a compute pipeline!")
                }
            },
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
            },

            CreateCommandEncoder(device) => {
                if let Resource::GPUCommandEncoder(command_encoder) = created_resource {
                    return format!("const {} = {}.createCommandEncoder({{ label: \"{}\" }});", command_encoder.var_name, device.var_name, command_encoder.var_name);
                } else {
                    panic!("created_resource for CreateCommandEncoder() call is not a command encoder!")
                }
            },
            ClearBuffer(command_encoder, buffer) => {
                return format!("{}.clearBuffer({});", command_encoder.var_name, buffer.var_name);
            }
            CopyBufferToBuffer(command_encoder, src_buffer, dst_buffer) => {
                return format!("{}.copyBufferToBuffer(
        {},
        0,
        {},
        0,
        400
    );", 
                    command_encoder.var_name, src_buffer.var_name, dst_buffer.var_name);
            }
            CopyBufferToTexture(command_encoder, src_buffer, dst_texture) => {
                return format!("{}.copyBufferToTexture(
        {{
            buffer: {}
        }},
        {{
            texture: {}
        }},
        {{
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }}
    );", 
                                command_encoder.var_name, src_buffer.var_name, dst_texture.var_name);
            }
            CopyTextureToBuffer(command_encoder, texture, buffer) => {
                return format!("{}.copyTextureToBuffer(
        {{
            texture: {}
        }},
        {{
            buffer: {}
        }},
        {{
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }}
    );", 
                                command_encoder.var_name, texture.var_name, buffer.var_name);
            }
            CopyTextureToTexture(command_encoder, texture_src, texture_dst) => {
                return format!("{}.copyTextureToBuffer(
        {{
            texture: {}
        }},
        {{
            texture: {}
        }},
        {{
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }}
    );", 
                                command_encoder.var_name, texture_src.var_name, texture_dst.var_name);
            }
            InsertCommandEncoderDebugMarker(encoder) => {
                return format!("{}.insertDebugMarker(\"mymarker\");", encoder.var_name);
            }
            PushCommandEncoderDebugGroup(encoder) => {
                return format!("{}.pushDebugGroup(\"mygroupmarker\")", encoder.var_name);
            }
            PopCommandEncoderDebugGroup(encoder) => {
                return format!("{}.popDebugGroup()", encoder.var_name);
            }

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
                if let Resource::BindGroupTemplate(uniform_buffer, storage_buffer, bind_group) = created_resource {
                    return format!("\
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
                    encoder.var_name, bind_group.var_name);
                } else {
                    panic!("created_resource for CreateComputePassBindGroupTemplate() call is not a valid template!")
                }
            },
            SetComputePassWorkgroups(encoder) => {
                return format!("{}.dispatchWorkgroups(100);", encoder.var_name);
            }
            SetComputePassWorkgroupsIndirect(device, encoder) => {
                if let Resource::GPUBuffer(buffer) = created_resource {
                    let array_var = format!("uint32_{}{}{}{}", encoder.num_adapter, encoder.num_device, encoder.num_encoder, encoder.num);
                    return format!("\
    const {} = new Uint32Array(3);

    {}[0] = 100;
    {}[1] = 1;
    {}[2] = 1;

    const {} = {}.createBuffer({{
        size: 12,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    }});
    {}.queue.writeBuffer({}, 0, {}, 0, {}.length);

    {}.dispatchWorkgroupsIndirect({}, 0);", 
                    array_var, array_var, array_var, array_var, buffer.var_name, device.var_name, device.var_name, buffer.var_name, array_var, array_var, encoder.var_name, buffer.var_name);
                } else {
                    panic!("created_resource for SetComputePassWorkgroupsIndirect call is not a buffer!")
                }
            }
            InsertComputePassDebugMarker(encoder) => {
                return format!("{}.insertDebugMarker(\"marker\")", encoder.var_name);
            }
            PushComputePassDebugGroup(encoder) => {
                return format!("{}.pushDebugGroup(\"group_marker\")", encoder.var_name);
            }
            PopComputePassDebugGroup(encoder) => {
                return format!("{}.popDebugGroup()", encoder.var_name);
            }
            EndComputePass(compute_pass_encoder) => {
                return format!("{}.end();", compute_pass_encoder.var_name);
            },

            CreateRenderPass(command_encoder, texture_view) => {
                if let Resource::GPURenderPassEncoder(render_pass_encoder) = created_resource {
                    return format!("const {} = {}.beginRenderPass({{
    colorAttachments: [
        {{
            clearValue: [0.0, 0.5, 1.0, 1.0],
            loadOp: \"clear\",
            storeOp: \"store\",
            view: {},
        }},
    ],
    }});", 
                        render_pass_encoder.var_name, command_encoder.var_name, texture_view.var_name);
                } else {
                    panic!("created_resource for CreateRenderPass() call is not a render pass encoder!")
                }
            }

            CreateCommandBuffer(encoder) => {
                if let Resource::GPUCommandBuffer(command_buffer) = created_resource {
                    return format!("const {} = {}.finish();", command_buffer.var_name, encoder.var_name);
                } else {
                    panic!("created_resource for CreateCommandBuffer() call is not a command buffer!")
                }
            }
            SubmitQueueRandom(device, command_encoders) => submit_queue_random(device, command_encoders),
            WaitSubmittedWork(device) => wait_submitted_work(device),

            PushRandomErrorScope(device) => push_random_error_scope(device),
            PopErrorScope(device) => pop_error_scope(device),
            // AddUncapturedErrorListener(device) => add_uncaptured_error_listener(device),
        }
    }
}