const fs = require('node:fs/promises');

async function main(gpu: GPU) {
    
    
    
    const array0 = new Float32Array([-0.25, -0.25, 0.25, 0.0, 0.75, -0.75, 0.75, -0.5, 0.0, 1.0, -1.0, 0.25, -1.0, 0.0, -0.5, -0.75, -1.0, -0.75, 0.5, -0.5, 0.0, -1.0, 0.25, 0.25, 0.5, 1.0, 0.75, -0.5, -0.5, 0.5, 0.0, 0.25, -1.0, -1.0, 1.0, 0.0, 0.25, 0.75, 0.75, -0.5, 0.75, -0.5, -0.5, 0.25, 0.75, 1.0, 0.5, 1.0, 0.25, 0.5, -1.0, -0.5, -0.25, 0.5, -0.75, -0.5, 0.5, 0.0, -1.0, 0.0, 0.25, 0.75, 1.0, -1.0, -0.5, -0.25, -0.75, 1.0, 1.0, 0.0, 0.25, -1.0, 0.25, 1.0, 0.5, 0.0, -0.5, -1.0, -0.5, -0.25, 0.25, 0.0, 0.0, -0.5, -1.0, 0.25, 0.5, 0.75, -0.5, 0.5, 1.0, -0.75, 1.0, 0.5, 0.75, -0.5, 0.25, 0.5, -1.0, 0.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const array1 = new Float32Array([0.25, -0.5, -0.75, 0.5, -0.75, 1.0, 0.5, -0.25, 0.0, 0.5, 0.75, 0.25, -0.75, -0.25, 0.25, 0.25, -1.0, -0.5, -1.0, 0.5, 0.0, 0.75, -0.25, 0.25, -0.25, -0.5, 0.25, 0.0, -0.25, -1.0, 0.75, -0.75, -0.5, -0.75, -0.25, 1.0, 1.0, 0.0, -0.5, -1.0, 0.0, -1.0, 0.0, 0.0, -0.75, 0.75, 0.5, 0.5, 1.0, 0.75, -0.5, -0.75, -0.25, -1.0, 0.75, 0.75, 0.75, -0.75, 0.75, -0.75, 0.5, -1.0, -0.25, -0.5, 0.75, -1.0, 0.5, -0.75, -1.0, 1.0, -0.25, 0.75, -0.5, -0.75, 1.0, -0.75, 0.25, 0.0, 0.25, 0.0, 0.25, -0.5, -0.75, 0.0, 1.0, 0.5, 0.75, 0.75, -0.25, 0.75, -0.5, -1.0, 0.75, -0.5, -0.25, 0.5, -1.0, -0.75, 0.25, 0.25, ]);
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const array2 = new Float32Array([1.0, -0.25, -1.0, 1.0, 0.25, -1.0, 0.5, -1.0, -0.25, -0.5, 0.5, 1.0, -0.75, -0.75, 1.0, 0.5, -0.25, 0.75, -0.75, 0.0, -0.75, 0.5, -0.75, 0.0, 0.5, -1.0, 0.25, 0.75, 1.0, 1.0, -0.75, 0.25, -1.0, 0.5, 0.5, -1.0, -0.5, -1.0, -1.0, 0.25, 0.5, -0.75, 1.0, 0.25, 0.25, -0.75, -0.75, -0.25, 0.0, -1.0, 0.5, 0.75, 1.0, 1.0, 1.0, -0.75, 1.0, 1.0, -1.0, 1.0, -0.75, -0.75, 0.25, -1.0, 0.5, 0.25, 1.0, 0.75, -1.0, 0.5, -1.0, 0.25, 0.75, -0.75, -0.75, -0.5, -0.5, 0.25, 0.75, -0.75, 0.25, 1.0, 1.0, 0.5, -0.75, 0.25, 0.0, 0.75, -0.25, 1.0, 0.0, -0.25, 0.5, 0.75, -0.5, -0.75, -0.5, -0.25, -0.5, -1.0, ]);
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    render_bundle_encoder100.pushDebugGroup("group_marker");
    texture100.destroy();
    render_bundle_encoder101.insertDebugMarker("marker");
    device10.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    device00.pushErrorScope("validation");
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    // await device00.queue.onSubmittedWorkDone();
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    // await device00.queue.onSubmittedWorkDone();
    buffer000.destroy()
    // await device00.queue.onSubmittedWorkDone();
    command_encoder000.pushDebugGroup("mygroupmarker")
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder000.popDebugGroup()
    const bind_group_layout000 = device00.createBindGroupLayout({ 
        label: "bind_group_layout000",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    command_encoder400.insertDebugMarker("mymarker");
    // await device00.queue.onSubmittedWorkDone();
    
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    command_encoder400.pushDebugGroup("mygroupmarker")
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder000.pushDebugGroup("mygroupmarker")
    const command_buffer002 = command_encoder002.finish();
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    command_encoder000.popDebugGroup()
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    command_encoder400.popDebugGroup()
    const bind_group_layout400 = device40.createBindGroupLayout({ 
        label: "bind_group_layout400",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const render_pipeline400 = await device40.createRenderPipelineAsync({
        label: "render_pipeline400",
        vertex: {
            module: shader_module400,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module400,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto",
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const command_buffer401 = command_encoder401.finish();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module402,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module402,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    command_encoder005.insertDebugMarker("mymarker");
    
    // await device40.queue.onSubmittedWorkDone();
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    command_encoder003.insertDebugMarker("mymarker");
    const array3 = new Float32Array([1.0, 0.5, 0.75, -0.5, -1.0, 1.0, 0.75, 0.25, 1.0, -0.75, -1.0, 0.25, 1.0, 0.5, 1.0, 0.75, -1.0, 0.0, -0.5, 0.25, 1.0, -0.25, -1.0, 0.75, 0.0, -0.5, 0.5, 0.75, 0.25, -0.25, -0.5, 0.25, 0.5, 0.75, -0.5, 0.0, 0.5, 1.0, 1.0, 0.25, -0.25, 0.25, 0.0, -1.0, 0.0, 0.0, 0.5, -1.0, -0.5, 0.75, 0.25, -0.75, 1.0, -0.75, -0.75, 1.0, 0.0, 0.75, 0.75, -1.0, -0.25, -0.25, -0.5, -1.0, 1.0, -0.25, -0.75, -0.25, -1.0, -1.0, -1.0, 0.25, 0.25, 1.0, -0.75, 0.5, -0.5, -1.0, 0.25, 0.25, -0.25, -0.75, 0.0, 1.0, 0.75, 1.0, -1.0, 0.75, 0.75, -0.5, -0.75, -0.75, 0.25, 1.0, 0.25, -0.25, -0.75, -0.5, 1.0, -0.25, ]);
    command_encoder000.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline400 = await device40.createComputePipelineAsync({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    const command_buffer004 = command_encoder004.finish();
    render_bundle_encoder002.insertDebugMarker("marker");
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    device30.pushErrorScope("validation");
    command_encoder003.pushDebugGroup("mygroupmarker")
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const command_buffer400 = command_encoder400.finish();
    command_encoder003.popDebugGroup()
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const array4 = new Float32Array([-1.0, -0.5, -1.0, -0.75, 0.0, -1.0, 0.75, 0.0, -0.25, 1.0, -1.0, 0.75, 0.25, -0.75, -0.75, -1.0, 0.75, -0.5, 1.0, -0.5, -0.75, -1.0, 0.75, -0.75, -0.5, -1.0, -0.75, 0.0, -1.0, -0.5, 0.25, 0.0, -0.25, -0.25, 0.75, 0.25, -0.5, -0.75, -1.0, -0.5, -0.75, 0.75, 0.5, 1.0, 0.0, 0.0, -1.0, 0.0, 0.75, -0.75, 0.5, 0.5, 0.5, 0.75, -0.5, 0.5, -0.25, -1.0, -0.25, 0.5, 0.25, 0.25, -0.75, -0.25, 1.0, -0.75, 0.75, 0.0, -1.0, -0.75, 0.25, 0.75, 0.5, 0.25, -1.0, -0.5, -0.5, 0.25, 0.0, -0.25, 1.0, -1.0, 1.0, 0.75, 0.25, -0.75, -0.5, -0.25, 0.5, -0.75, -1.0, 0.5, -0.25, -0.5, 0.75, 0.75, 1.0, 0.25, -0.5, -0.25, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    // await device00.queue.onSubmittedWorkDone();
    // await device30.queue.onSubmittedWorkDone();
    
    
    
    const bind_group_layout001 = device00.createBindGroupLayout({ 
        label: "bind_group_layout001",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    texture002.destroy();
    
    device00.pushErrorScope("validation");
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer002.destroy()
    
    render_bundle_encoder002.insertDebugMarker("marker");
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    
    
    
    query401.destroy()
    const bind_group_layout300 = device30.createBindGroupLayout({ 
        label: "bind_group_layout300",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    device40.queue.submit([command_buffer401, ]);
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    texture001.destroy();
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module002,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module002,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    command_encoder402.pushDebugGroup("mygroupmarker")
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    query401.destroy()
    command_encoder405.insertDebugMarker("mymarker");
    device40.queue.writeBuffer(buffer401, 0, array0, 0, array0.length);
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    query401.destroy()
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const bind_group_layout002 = device00.createBindGroupLayout({ 
        label: "bind_group_layout002",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    const command_encoder406 = device40.createCommandEncoder({ label: "command_encoder406" });
    
    
    query200.destroy()
    command_encoder405.pushDebugGroup("mygroupmarker")
    command_encoder402.copyBufferToTexture(
        {
            buffer: buffer400
        },
        {
            texture: texture400
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    
    
    command_encoder404.copyBufferToTexture(
        {
            buffer: buffer400
        },
        {
            texture: texture400
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const compute_pipeline000 = await device00.createComputePipelineAsync({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder4040 = command_encoder404.beginComputePass({ label: "compute_pass_encoder4040" });
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    compute_pass_encoder0050.insertDebugMarker("marker")
    // await device00.queue.onSubmittedWorkDone();
    
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: null
    });
    const compute_pass_encoder4050 = command_encoder405.beginComputePass({ label: "compute_pass_encoder4050" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    
    render_bundle_encoder002.insertDebugMarker("marker");
    
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    command_encoder403.clearBuffer(buffer402);
    buffer001.destroy()
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const compute_pass_encoder4030 = command_encoder403.beginComputePass({ label: "compute_pass_encoder4030" });
    device40.queue.writeBuffer(buffer402, 0, array1, 0, array1.length);
    
    const array5 = new Float32Array([0.5, 1.0, 0.5, 0.0, 1.0, 0.75, 1.0, 1.0, -1.0, -0.25, -1.0, 0.75, 0.75, 0.75, -0.75, -0.75, -1.0, -0.5, 0.5, 1.0, -0.5, -0.75, -1.0, 0.25, -0.25, 0.5, 0.5, 0.0, 0.0, -1.0, -0.75, -0.25, 0.5, 0.25, 0.0, -0.5, -0.75, -1.0, -0.5, -0.25, -0.25, -0.5, 0.75, 0.0, 0.75, 0.75, -0.5, 0.0, 0.5, 0.25, -1.0, -0.75, -1.0, -0.25, -0.5, -0.75, 0.5, 0.5, -0.75, -0.25, -0.75, -0.25, 0.25, 0.5, 0.5, -0.75, 0.25, 0.5, -0.5, 1.0, -0.5, 1.0, -0.5, 0.75, -0.75, 0.25, 0.0, -0.25, 0.75, -0.5, -0.25, -0.75, -1.0, -1.0, 0.0, 1.0, -0.75, 1.0, 0.75, 0.5, -0.5, -0.75, -0.75, -0.25, -1.0, 0.0, -1.0, 0.0, -1.0, 1.0, ]);
    device40.queue.writeBuffer(buffer402, 0, array3, 0, array3.length);
    command_encoder406.clearBuffer(buffer401);
    texture200.destroy();
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder402.popDebugGroup()
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    // await device30.queue.onSubmittedWorkDone();
    command_encoder402.copyBufferToBuffer(
        buffer400,
        0,
        buffer402,
        0,
        400
    );
    texture000.destroy();
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder4050.insertDebugMarker("marker")
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeBuffer(buffer401, 0, array3, 0, array3.length);
    const bind_group_layout003 = device00.createBindGroupLayout({ 
        label: "bind_group_layout003",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    
    const bind_group_layout200 = device20.createBindGroupLayout({ 
        label: "bind_group_layout200",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    compute_pass_encoder4030.setPipeline(compute_pipeline400);
    device40.queue.writeBuffer(buffer402, 0, array1, 0, array1.length);
    compute_pass_encoder4040.pushDebugGroup("group_marker")
    const command_buffer201 = command_encoder201.finish();
    compute_pass_encoder2000.insertDebugMarker("marker")
    command_encoder406.copyBufferToBuffer(
        buffer400,
        0,
        buffer401,
        0,
        400
    );
    device40.queue.writeTexture({ texture: texture400 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    command_encoder402.pushDebugGroup("mygroupmarker")
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder402.copyBufferToBuffer(
        buffer400,
        0,
        buffer401,
        0,
        400
    );
    
    device00.pushErrorScope("validation");
    
    const command_buffer406 = command_encoder406.finish();
    compute_pass_encoder4040.popDebugGroup()
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder002.popDebugGroup();
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query200.destroy()
    device00.queue.submit([command_buffer004, ]);
    compute_pass_encoder4040.pushDebugGroup("group_marker")
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
        vertex: {
            module: shader_module400,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module400,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const bind_group_layout301 = device30.createBindGroupLayout({ 
        label: "bind_group_layout301",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    render_bundle_encoder002.insertDebugMarker("marker");
    render_pass_encoder0060.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_pass_encoder0060.setStencilReference(1);
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    
    
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
        vertex: {
            module: shader_module402,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module402,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout003]
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder402.copyBufferToTexture(
        {
            buffer: buffer400
        },
        {
            texture: texture400
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    const compute_pipeline403 = await device40.createComputePipelineAsync({
        label: "compute_pipeline403",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder002.setPipeline(render_pipeline000);
    compute_pass_encoder0000.setPipeline(compute_pipeline000);
    query200.destroy()
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4050.pushDebugGroup("group_marker")
    const compute_pipeline301 = await device30.createComputePipelineAsync({
        label: "compute_pipeline301",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout003]
    });
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    const render_pipeline404 = await device40.createRenderPipelineAsync({
        label: "render_pipeline404",
        vertex: {
            module: shader_module402,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module402,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto",
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    device00.queue.submit([command_buffer002, ]);
    query200.destroy()
    
    const bind_group_layout302 = device30.createBindGroupLayout({ 
        label: "bind_group_layout302",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout302]
    });
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    compute_pass_encoder4020.setPipeline(compute_pipeline404);
    const render_pipeline405 = await device40.createRenderPipelineAsync({
        label: "render_pipeline405",
        vertex: {
            module: shader_module402,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module402,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto",
    });
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module001,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module001,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    const bind_group_layout500 = device50.createBindGroupLayout({ 
        label: "bind_group_layout500",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    compute_pass_encoder4040.setPipeline(compute_pipeline401);
    const compute_pipeline302 = await device30.createComputePipelineAsync({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0050.pushDebugGroup("group_marker")
    compute_pass_encoder0000.popDebugGroup()
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    texture400.destroy();
    const array6 = new Float32Array([-1.0, -0.25, 1.0, 0.5, -0.25, 0.75, -0.75, 0.75, 0.0, 0.5, -0.25, 0.25, 1.0, -0.25, 1.0, -1.0, -0.5, 0.25, -1.0, -1.0, -1.0, 0.0, -0.5, 0.5, -0.75, 0.5, -0.5, 1.0, -0.75, 0.25, 0.75, 0.75, -1.0, -0.75, 0.75, 0.0, 0.5, 0.25, 0.0, -1.0, -1.0, -0.5, -0.5, -0.75, -0.25, 0.5, 0.25, 0.25, -1.0, -0.75, 0.75, 0.75, -1.0, -0.75, -1.0, -0.5, 1.0, -0.75, -0.25, -0.5, -1.0, -0.75, 0.5, 0.0, -0.75, -1.0, 0.0, -1.0, -1.0, -1.0, 1.0, 0.25, 0.5, 0.25, -1.0, 0.0, 0.75, -0.75, -0.75, -0.75, 0.5, -0.25, 1.0, 0.25, 0.75, 0.75, 0.25, 0.25, 0.75, -0.5, 0.0, 0.5, -0.25, -0.5, 0.75, 1.0, -0.5, 0.25, 1.0, 0.75, ]);
    device40.queue.writeBuffer(buffer401, 0, array6, 0, array6.length);
    render_pass_encoder0060.setStencilReference(1);
    device40.queue.submit([command_buffer400, command_buffer406, ]);
    compute_pass_encoder4050.setPipeline(compute_pipeline404);
    
    buffer300.destroy()
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    const compute_pipeline001 = await device00.createComputePipelineAsync({
        label: "compute_pipeline001",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    // await device30.queue.onSubmittedWorkDone();
    device40.queue.writeBuffer(buffer401, 0, array3, 0, array3.length);
    const compute_pipeline002 = await device00.createComputePipelineAsync({
        label: "compute_pipeline002",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline303 = await device30.createComputePipelineAsync({
        label: "compute_pipeline303",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    device40.pushErrorScope("out-of-memory");
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device40.queue.writeBuffer(buffer401, 0, array5, 0, array5.length);
    device40.queue.writeBuffer(buffer402, 0, array5, 0, array5.length);
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout302]
    });
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout305,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4050.insertDebugMarker("marker")
    
    render_pass_encoder0060.executeBundles([])
    
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.popDebugGroup();
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    buffer301.destroy()
    // await device30.queue.onSubmittedWorkDone();
    render_bundle_encoder001.popDebugGroup();
    // await device50.queue.onSubmittedWorkDone();
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    render_bundle_encoder002.insertDebugMarker("marker");
    
    device40.queue.writeBuffer(buffer401, 0, array1, 0, array1.length);
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    device70.destroy();
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    device00.pushErrorScope("internal");
    render_pass_encoder0060.setPipeline(render_pipeline000);
    
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const compute_pipeline307 = await device30.createComputePipelineAsync({
        label: "compute_pipeline307",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0010.popDebugGroup()
    
    compute_pass_encoder4050.insertDebugMarker("marker")
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout304,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline309 = await device30.createComputePipelineAsync({
        label: "compute_pipeline309",
        layout: pipeline_layout305,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    render_bundle_encoder001.setPipeline(render_pipeline001);
    render_pass_encoder0060.setStencilReference(1);
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    device40.queue.writeBuffer(buffer402, 0, array3, 0, array3.length);
    compute_pass_encoder0030.insertDebugMarker("marker")
    
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    const sampler405 = device40.createSampler( { label: "sampler405" } );
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    buffer402.destroy()
    const compute_pipeline3010 = await device30.createComputePipelineAsync({
        label: "compute_pipeline3010",
        layout: pipeline_layout304,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const bind_group_layout600 = device60.createBindGroupLayout({ 
        label: "bind_group_layout600",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const bind_group_layout601 = device60.createBindGroupLayout({ 
        label: "bind_group_layout601",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    compute_pass_encoder2000.popDebugGroup()
    const render_pipeline406 = await device40.createRenderPipelineAsync({
        label: "render_pipeline406",
        vertex: {
            module: shader_module402,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module402,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto",
    });
    buffer401.destroy()
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: null
    });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    // await device50.queue.onSubmittedWorkDone();
    
    texture201.destroy();
    const compute_pipeline200 = await device20.createComputePipelineAsync({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    const render_pipeline002 = await device00.createRenderPipelineAsync({
        label: "render_pipeline002",
        vertex: {
            module: shader_module001,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module001,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto",
    });
    buffer200.destroy()
    const bind_group_layout401 = device40.createBindGroupLayout({ 
        label: "bind_group_layout401",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    device50.destroy();
    compute_pass_encoder0030.setPipeline(compute_pipeline002);
    // await device20.queue.onSubmittedWorkDone();
    const compute_pipeline3012 = await device30.createComputePipelineAsync({
        label: "compute_pipeline3012",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline405 = await device40.createComputePipelineAsync({
        label: "compute_pipeline405",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline3013 = await device30.createComputePipelineAsync({
        label: "compute_pipeline3013",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout003]
    });
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "bgra8unorm",
        dimension: "2d"
    });
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer404,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer405,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group400);
    const render_pass_encoder0070 = command_encoder007.beginRenderPass({
        label: "render_pass_encoder0070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0002,
            },
        ],
        occlusionQuerySet: null
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout304,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout304,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const compute_pipeline3017 = await device30.createComputePipelineAsync({
        label: "compute_pipeline3017",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3018 = await device30.createComputePipelineAsync({
        label: "compute_pipeline3018",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    render_pass_encoder0060.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    const render_pipeline407 = device40.createRenderPipeline({
        label: "render_pipeline407",
        vertex: {
            module: shader_module400,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module400,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    render_pass_encoder3000.insertDebugMarker("marker");
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    
    
    compute_pass_encoder4020.insertDebugMarker("marker")
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    
    render_bundle_encoder000.setPipeline(render_pipeline002);
    const compute_pipeline406 = await device40.createComputePipelineAsync({
        label: "compute_pipeline406",
        layout: pipeline_layout400,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout400,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    // await device20.queue.onSubmittedWorkDone();
    const uint32_4030 = new Uint32Array(3);

    uint32_4030[0] = 100;
    uint32_4030[1] = 1;
    uint32_4030[2] = 1;

    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer406, 0, uint32_4030, 0, uint32_4030.length);

    compute_pass_encoder4030.dispatchWorkgroupsIndirect(buffer406, 0);
    compute_pass_encoder0050.setPipeline(compute_pipeline002);
    buffer400.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
        vertex: {
            module: shader_module001,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module001,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const compute_pipeline201 = await device20.createComputePipelineAsync({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    texture202.destroy();
    command_encoder202.pushDebugGroup("mygroupmarker")
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_pass_encoder0070.executeBundles([])
    render_pass_encoder0070.executeBundles([])
    
    render_pass_encoder3000.pushDebugGroup("group_marker");
    const compute_pipeline3019 = device30.createComputePipeline({
        label: "compute_pipeline3019",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0000.popDebugGroup()
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout601]
    });
    compute_pass_encoder0010.setPipeline(compute_pipeline003);
    command_encoder202.insertDebugMarker("mymarker");
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const compute_pipeline3020 = await device30.createComputePipelineAsync({
        label: "compute_pipeline3020",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_pass_encoder3000.popDebugGroup();
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pipeline3021 = await device30.createComputePipelineAsync({
        label: "compute_pipeline3021",
        layout: pipeline_layout304,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline3022 = device30.createComputePipeline({
        label: "compute_pipeline3022",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3023 = await device30.createComputePipelineAsync({
        label: "compute_pipeline3023",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const compute_pipeline3024 = device30.createComputePipeline({
        label: "compute_pipeline3024",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    query000.destroy()
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    const bind_group_layout402 = device40.createBindGroupLayout({ 
        label: "bind_group_layout402",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    render_pass_encoder0060.setStencilReference(1);
    device20.pushErrorScope("validation");
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query401.destroy()
    
    
    const render_pass_encoder0080 = command_encoder008.beginRenderPass({
        label: "render_pass_encoder0080",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query000
    });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer003,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer004,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group000);
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const compute_pipeline3025 = device30.createComputePipeline({
        label: "compute_pipeline3025",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer406, 0, array4, 0, array4.length);
    const bind_group_layout303 = device30.createBindGroupLayout({ 
        label: "bind_group_layout303",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module202,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module202,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    render_pass_encoder0070.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0070.pushDebugGroup("group_marker");
    device40.queue.writeBuffer(buffer406, 0, array6, 0, array6.length);
    
    const compute_pipeline3026 = device30.createComputePipeline({
        label: "compute_pipeline3026",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout004,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline005 = await device00.createComputePipelineAsync({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline408 = await device40.createComputePipelineAsync({
        label: "compute_pipeline408",
        layout: pipeline_layout401,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    command_encoder202.popDebugGroup()
    query401.destroy()
    compute_pass_encoder2000.setPipeline(compute_pipeline201);
    
    const compute_pipeline3027 = device30.createComputePipeline({
        label: "compute_pipeline3027",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0080.setStencilReference(1);
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer407,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer408,
                },
            },
        ],
    });

    compute_pass_encoder4040.setBindGroup(0, bind_group401);
    
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module600,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module600,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const render_pipeline408 = device40.createRenderPipeline({
        label: "render_pipeline408",
        vertex: {
            module: shader_module402,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module402,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const compute_pipeline006 = await device00.createComputePipelineAsync({
        label: "compute_pipeline006",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline007 = await device00.createComputePipelineAsync({
        label: "compute_pipeline007",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline3028 = await device30.createComputePipelineAsync({
        label: "compute_pipeline3028",
        layout: pipeline_layout306,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3029 = device30.createComputePipeline({
        label: "compute_pipeline3029",
        layout: pipeline_layout304,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const command_buffer202 = command_encoder202.finish();
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
        vertex: {
            module: shader_module002,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module002,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    query000.destroy()
    buffer405.destroy()
    const compute_pipeline3030 = device30.createComputePipeline({
        label: "compute_pipeline3030",
        layout: pipeline_layout305,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const command_encoder009 = device00.createCommandEncoder({ label: "command_encoder009" });
    texture600.destroy();
    
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline409 = await device40.createComputePipelineAsync({
        label: "compute_pipeline409",
        layout: pipeline_layout401,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0030.insertDebugMarker("marker")
    render_pass_encoder0070.setPipeline(render_pipeline001);
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2030,
            },
        ],
        occlusionQuerySet: null
    });
    const compute_pipeline3031 = device30.createComputePipeline({
        label: "compute_pipeline3031",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    query200.destroy()
    render_bundle_encoder400.setPipeline(render_pipeline405);
    const compute_pipeline3032 = await device30.createComputePipelineAsync({
        label: "compute_pipeline3032",
        layout: pipeline_layout306,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    render_pass_encoder2030.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
        vertex: {
            module: shader_module600,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module600,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    compute_pass_encoder0030.insertDebugMarker("marker")
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer006,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer007,
                },
            },
        ],
    });

    render_pass_encoder0070.setBindGroup(0, bind_group001);
    
    
    render_pass_encoder2030.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout601]
    });
    const compute_pipeline4010 = device40.createComputePipeline({
        label: "compute_pipeline4010",
        layout: pipeline_layout401,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline3033 = device30.createComputePipeline({
        label: "compute_pipeline3033",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder4030.end();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0080.setPipeline(render_pipeline003);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer409 = device40.createBuffer({
        label: "buffer409",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4010 = device40.createBuffer({
        label: "buffer4010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: compute_pipeline404.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer409,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4010,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group402);
    compute_pass_encoder4020.popDebugGroup()
    const buffer4011 = device40.createBuffer({
        label: "buffer4011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4012 = device40.createBuffer({
        label: "buffer4012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group403 = device40.createBindGroup({
        label: "bind_group403",
        layout: compute_pipeline404.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4012,
                },
            },
        ],
    });

    compute_pass_encoder4050.setBindGroup(0, bind_group403);
    render_pass_encoder2030.setPipeline(render_pipeline200);
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer008,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer009,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group002);
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0011,
                },
            },
        ],
    });

    render_pass_encoder0080.setBindGroup(0, bind_group003);
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer201,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer202,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group200);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    const command_buffer403 = command_encoder403.finish();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer203, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer203, 0);
    compute_pass_encoder0000.end();
    compute_pass_encoder4020.dispatchWorkgroups(100);
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0013,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group004);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0014, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer0014, 0);
    compute_pass_encoder0050.popDebugGroup()
    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0016,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group005);
    device40.queue.submit([command_buffer403, ]);
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder4020.end();
    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0018,
                },
            },
        ],
    });

    render_pass_encoder0060.setBindGroup(0, bind_group006);
    const uint32_4040 = new Uint32Array(3);

    uint32_4040[0] = 100;
    uint32_4040[1] = 1;
    uint32_4040[2] = 1;

    const buffer4013 = device40.createBuffer({
        label: "buffer4013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4013, 0, uint32_4040, 0, uint32_4040.length);

    compute_pass_encoder4040.dispatchWorkgroupsIndirect(buffer4013, 0);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer204,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer205,
                },
            },
        ],
    });

    render_pass_encoder2030.setBindGroup(0, bind_group201);
    compute_pass_encoder0050.end();
    command_encoder402.popDebugGroup()
    const command_buffer402 = command_encoder402.finish();
    const uint32_4050 = new Uint32Array(3);

    uint32_4050[0] = 100;
    uint32_4050[1] = 1;
    uint32_4050[2] = 1;

    const buffer4014 = device40.createBuffer({
        label: "buffer4014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4014, 0, uint32_4050, 0, uint32_4050.length);

    compute_pass_encoder4050.dispatchWorkgroupsIndirect(buffer4014, 0);
    const command_buffer600 = command_encoder600.finish();
    compute_pass_encoder4050.popDebugGroup()
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0080.setVertexBuffer(0, buffer002);
    render_pass_encoder0080.setIndexBuffer(buffer000, "uint16");
    compute_pass_encoder4040.popDebugGroup()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder4050.end();
    render_pass_encoder0060.setVertexBuffer(0, buffer002);
    render_pass_encoder0070.setVertexBuffer(0, buffer002);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder0080.draw(3);
    const command_buffer601 = command_encoder601.finish();
    compute_pass_encoder2000.end();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    compute_pass_encoder4040.end();
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder0080.end();
    render_pass_encoder0060.draw(3);
    render_pass_encoder0070.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0070.drawIndirect(buffer0014, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    command_encoder000.popDebugGroup()
    const command_buffer404 = command_encoder404.finish();
    render_pass_encoder0060.end();
    const command_buffer005 = command_encoder005.finish();
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder0010.end();
    const command_buffer008 = command_encoder008.finish();
    command_encoder405.popDebugGroup()
    render_pass_encoder0070.end();
    const command_buffer007 = command_encoder007.finish();
    const command_buffer001 = command_encoder001.finish();
    device40.queue.submit([command_buffer404, ]);
    device20.queue.submit([command_buffer202, ]);
    const command_buffer009 = command_encoder009.finish();
    const command_buffer000 = command_encoder000.finish();
    compute_pass_encoder0030.end();
    device60.queue.submit([command_buffer600, ]);
    const command_buffer405 = command_encoder405.finish();
    device60.queue.submit([command_buffer601, ]);
    device00.queue.submit([command_buffer005, ]);
    const command_buffer003 = command_encoder003.finish();
    device00.queue.submit([command_buffer000, command_buffer003, command_buffer009, ]);
    const command_buffer006 = command_encoder006.finish();
    device00.queue.submit([command_buffer001, command_buffer006, command_buffer007, ]);
}