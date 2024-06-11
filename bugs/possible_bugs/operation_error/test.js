const { create, globals } = require('./dawn.node');
Object.assign(globalThis, globals);
let navigator = { gpu: create(['enable-dawn-features=allow_unsafe_apis,disable_symbol_renaming']) };
const fs = require('node:fs/promises');

async function init() {
    if (!navigator.gpu) {
        throw Error("WebGPU not supported.");
    }

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    const array0 = new Float32Array([0.0, 1.0, -0.5, 0.5, 0.25, -0.25, 0.0, -0.25, -0.5, 0.0, 0.75, 0.25, 0.25, -1.0, -0.75, 0.75, -1.0, -0.25, -1.0, 0.5, 0.0, -0.75, -0.75, -0.75, 0.75, -0.25, -0.5, 0.5, 1.0, 0.0, -0.75, 0.25, 0.75, -0.75, 0.75, 0.25, -0.75, 1.0, 0.5, 0.75, -0.25, -1.0, 0.0, -1.0, 1.0, -0.25, -0.5, -0.25, 0.0, 0.0, 1.0, -0.25, 0.5, -0.25, 0.75, 1.0, -0.25, 0.25, 0.0, 0.25, -0.75, -0.75, -0.75, -0.5, 0.25, 0.5, 0.25, -0.25, -1.0, -0.25, 0.5, -0.25, 0.75, 0.25, -0.25, 0.75, 0.0, -0.25, 1.0, -0.5, -1.0, -0.5, -0.25, -0.25, -0.75, -1.0, 0.25, -0.25, 1.0, 0.25, 1.0, 1.0, 0.0, 0.0, -1.0, -1.0, 1.0, -0.25, 0.0, 0.5, ]);

    console.log(navigator.gpu.getPreferredCanvasFormat());

    const adapter0 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance",
        label: "adapter0"
    });

    console.log(navigator.gpu.getPreferredCanvasFormat());

    const array1 = new Float32Array([1.0, 0.5, -1.0, -0.25, 0.5, -0.5, 1.0, 1.0, -1.0, 1.0, 0.5, -1.0, 1.0, -0.25, 0.0, -0.5, 1.0, -1.0, -0.75, -0.25, 1.0, 0.25, -0.5, 0.0, 1.0, 0.5, 0.75, -0.25, -1.0, 1.0, -0.75, 0.75, -0.25, -0.25, -0.5, 0.0, -0.25, 0.5, -0.25, 0.5, -0.5, -0.75, 0.75, 0.5, 0.0, -1.0, 0.0, 0.75, -1.0, 0.75, 0.5, 0.5, 0.0, 1.0, -0.5, 0.75, -1.0, 0.75, -0.25, 0.0, -0.5, -0.75, -0.25, 0.75, 0.25, -0.75, 0.0, -0.75, 0.25, -0.75, 0.75, -0.25, -1.0, 0.5, -0.5, 0.25, -0.25, -1.0, 1.0, -0.75, -1.0, -0.75, 0.0, -1.0, 0.5, 0.25, -0.25, 0.5, 0.75, -1.0, -0.75, 0.25, -0.75, 1.0, -0.5, 1.0, -0.75, -0.25, -0.75, -0.25, ]);

    console.log(navigator.gpu.getPreferredCanvasFormat());

    const device00 = await adapter0.requestDevice({ label: "device00" });

    device00.destroy();

    const array2 = new Float32Array([0.5, 0.0, -0.5, 0.75, 0.5, -1.0, 0.25, -0.25, -1.0, -0.75, 0.75, 0.75, 1.0, -1.0, -0.5, 0.25, 1.0, -0.25, 1.0, 0.0, -0.5, 0.25, 0.25, 0.0, -0.75, 1.0, 0.0, 0.75, 0.0, -1.0, 0.75, 1.0, 1.0, -0.75, -0.5, -1.0, 0.75, -1.0, 0.0, -0.25, -0.5, 1.0, -0.5, 0.5, -0.5, -0.5, -0.25, 0.25, 0.5, -0.25, 0.75, -0.75, -0.75, -0.25, -0.5, 0.75, -1.0, 0.0, -1.0, 0.25, -0.25, -0.5, -0.5, 0.5, -0.5, -0.5, -0.75, -0.5, 0.0, 0.5, 0.75, 0.25, 1.0, 1.0, 0.5, -1.0, -0.25, -1.0, 1.0, 0.0, -0.75, -0.75, -0.5, -1.0, 0.75, 0.0, 0.0, 1.0, 0.0, -0.25, 0.5, 0.25, -0.25, -1.0, -0.75, 0.0, -0.25, 0.0, 0.5, -1.0, ]);

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    const array3 = new Float32Array([0.0, 0.75, -0.75, 0.75, 1.0, 1.0, 0.0, 0.75, -0.75, 0.5, -0.75, 0.75, 1.0, -0.5, 1.0, 0.75, 0.25, -1.0, -0.75, -0.25, 1.0, -0.5, -1.0, 0.25, 0.75, 0.0, 0.75, 0.25, -0.5, 0.0, 0.75, 0.0, 0.25, -0.5, -0.75, 0.5, -0.25, 0.5, 1.0, 0.75, 0.5, 0.0, 0.25, 1.0, 0.5, 0.5, 0.75, 0.25, 1.0, 0.5, -0.25, -0.75, 0.75, 0.0, -0.75, -1.0, 0.5, 0.5, -0.5, -0.5, 0.0, 1.0, 0.0, 0.75, 0.75, 0.5, 1.0, 1.0, 0.0, -0.25, 0.5, -1.0, -0.75, -1.0, -1.0, 1.0, 0.0, 0.5, 0.5, 0.75, -0.75, -0.5, -0.25, 0.0, 0.5, 1.0, 0.75, -1.0, -1.0, -0.75, -0.5, 1.0, 0.75, -0.25, 0.0, -0.25, 0.0, -0.5, 0.0, -0.75, ]);

    const device01 = await adapter0.requestDevice({ label: "device01" });

    const texture010 = device01.createTexture({
        label: "texture010",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });

    const bind_group_layout010 = device01.createBindGroupLayout({ 
        label: "bind_group_layout010",
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

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    var shader_module010_code = "";
    try {
        shader_module010_code = await fs.readFile('render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module010 = await device01.createShaderModule({ label: "shader_module010", code: shader_module010_code })

    const command_encoder010 = device01.createCommandEncoder({ label: "command_encoder010" });

    const array4 = new Float32Array([0.5, 0.0, -0.25, 0.25, -0.5, 0.25, 1.0, -0.5, -1.0, -0.5, -1.0, 0.75, -0.75, -0.25, -0.75, 0.25, -0.25, 0.75, 1.0, 0.5, -0.75, -0.5, -0.75, -1.0, 0.25, 0.5, 0.25, -0.5, -0.75, 0.25, -0.5, 1.0, 0.5, -0.75, 0.75, -1.0, -0.75, 0.75, -1.0, 0.5, -1.0, -0.25, -1.0, 0.25, -0.75, 1.0, 0.25, 0.0, -1.0, 0.0, -1.0, 1.0, -1.0, 0.75, 0.5, 0.0, -0.75, 0.0, 0.5, 0.75, -0.75, 0.25, 0.0, -0.25, 0.75, 0.5, 0.0, 0.25, -1.0, 1.0, 1.0, 0.0, 0.0, 0.25, 0.0, -0.25, -0.75, 1.0, 0.75, -1.0, -1.0, 0.75, -0.25, 1.0, 1.0, 0.5, -1.0, -0.5, 1.0, -0.5, 0.75, 0.0, 1.0, -0.5, 1.0, -0.75, 0.75, -0.25, 0.25, 0.0, ]);

    command_encoder010.pushDebugGroup("mygroupmarker")

    const command_encoder011 = device01.createCommandEncoder({ label: "command_encoder011" });

    console.log(navigator.gpu.getPreferredCanvasFormat());

    const texture_view0100 = texture010.createView({ label: "texture_view0100" });

    const command_encoder012 = device01.createCommandEncoder({ label: "command_encoder012" });

    const array5 = new Float32Array([1.0, -0.5, -0.75, 1.0, 0.5, 0.25, 1.0, -1.0, -0.75, 1.0, 0.0, -0.5, -1.0, -0.25, -0.75, -0.75, 1.0, -0.75, 0.5, -1.0, -0.5, -0.5, -0.25, -0.75, 0.75, -1.0, -1.0, -0.5, -0.5, 0.0, -0.25, -1.0, 0.25, 0.75, -1.0, 1.0, -0.25, 0.25, -1.0, 0.5, 0.75, 0.5, 0.0, 0.0, -0.75, 1.0, 0.5, -0.75, -0.25, 1.0, 0.0, 0.0, 0.0, 0.25, 1.0, -0.25, -0.25, -0.25, 0.0, -0.75, -0.25, 0.25, -0.75, -0.5, 0.5, 0.5, 0.5, -0.75, 0.25, 0.25, 0.5, 0.5, -0.5, 0.0, -0.75, -1.0, 1.0, -0.5, -0.5, -1.0, 0.0, 0.75, 0.75, -0.5, -0.75, 1.0, 1.0, 0.25, 0.25, 0.75, -1.0, -0.5, 0.5, 0.5, -0.25, 0.75, -0.75, 0.0, 0.75, 0.0, ]);

    command_encoder012.insertDebugMarker("mymarker");

    console.log(device01.features.size);

    for (const value of device01.features.keys()) {
        console.log(value);
    }

    console.log(device01.limits.size);

    for (const [key, value] of Object.entries(device01.limits)) {
        console.log(key);
        console.log(value);
    }

    device01.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    const compute_pass_encoder0100 = command_encoder010.beginComputePass({ label: "compute_pass_encoder0100" });

    const command_encoder013 = device01.createCommandEncoder({ label: "command_encoder013" });

    const adapter1 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance",
        label: "adapter1"
    });

    const compute_pass_encoder0130 = command_encoder013.beginComputePass({ label: "compute_pass_encoder0130" });

    console.log(navigator.gpu.getPreferredCanvasFormat());

    const device10 = await adapter1.requestDevice({ label: "device10" });

    compute_pass_encoder0100.insertDebugMarker("marker")

    var shader_module011_code = "";
    try {
        shader_module011_code = await fs.readFile('shader_module011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module011 = await device01.createShaderModule({ label: "shader_module011", code: shader_module011_code })

    const adapter2 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power",
        label: "adapter2"
    });

    const query010 = device01.createQuerySet({
        label: "query010",
        type: "occlusion",
        count: 32,
    });

    const sampler100 = device10.createSampler( { label: "sampler100" } );

    device10.destroy();

    const texture011 = device01.createTexture({
        label: "texture011",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });

    const render_pipeline010 = await device01.createRenderPipelineAsync({
        label: "render_pipeline010",
        vertex: {
            module: shader_module010,
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
            module: shader_module010,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: navigator.gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto",
    });

    const render_pass_encoder0110 = command_encoder011.beginRenderPass({
        label: "render_pass_encoder0110",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0100,
            },
        ],
        occlusionQuerySet: null
    });

    render_pass_encoder0110.setViewport(0, 0, texture010.width / 2, texture010.height / 2, 0, 1);

    render_pass_encoder0110.setBlendConstant([1.0, 0.0, 0.0, 1.0]);

    const array6 = new Float32Array([0.75, 0.75, -0.75, 1.0, 0.75, -0.5, 0.0, -0.75, -0.5, -0.25, -0.25, -0.75, -0.25, -0.5, -0.5, 1.0, -0.25, -0.25, -0.75, -0.25, -0.25, 1.0, -0.5, 1.0, 1.0, 0.0, -0.25, -0.75, -0.25, 0.5, 1.0, -0.25, 0.75, 0.5, 0.5, -1.0, 0.75, 1.0, -0.25, 0.75, -0.5, -0.25, -1.0, -0.25, -0.5, -0.25, -0.75, -0.25, 1.0, -1.0, 0.25, 0.5, 1.0, 0.5, -0.25, -1.0, -0.75, 0.5, -1.0, 1.0, 0.25, 0.5, 1.0, 0.0, -0.75, -0.75, -0.5, -1.0, -0.25, 1.0, 0.5, 0.25, 1.0, -0.75, 0.25, -0.25, -0.25, -0.25, 0.75, 0.75, 0.75, 0.0, 0.75, 0.75, -0.25, 0.0, -0.5, 1.0, 0.5, -0.5, -0.75, -0.25, -0.5, 0.5, 1.0, -0.5, 0.0, -0.5, -0.5, 0.75, ]);

    device01.queue.writeTexture({ texture: texture011 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });

    const texture_view0101 = texture010.createView({ label: "texture_view0101" });

    query010.destroy()

    const query011 = device01.createQuerySet({
        label: "query011",
        type: "occlusion",
        count: 32,
    });

    const device02 = await adapter0.requestDevice({ label: "device02" });

    device01.queue.writeTexture({ texture: texture011 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });

    compute_pass_encoder0100.insertDebugMarker("marker")

    const command_buffer012 = command_encoder012.finish();

    compute_pass_encoder0100.pushDebugGroup("group_marker")

    var shader_module020_code = "";
    try {
        shader_module020_code = await fs.readFile('shader_module020.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module020 = await device02.createShaderModule({ label: "shader_module020", code: shader_module020_code })

    console.log(adapter0.features.size);

    for (const value of adapter0.features.keys()) {
        console.log(value);
    }

    console.log(adapter0.isFallbackAdapter);

    console.log(adapter0.limits.size);

    for (const [key, value] of Object.entries(adapter0.limits)) {
        console.log(key);
        console.log(value);
    }

    {
        const adapter = adapter0;
        console.log(adapter.info.vendor);
        console.log(adapter.info.architecture);
        console.log(adapter.info.device);
        console.log(adapter.info.description);
    }

    render_pass_encoder0110.executeBundles([])

    query011.destroy()

    // await device02.queue.onSubmittedWorkDone();

    const buffer010 = device01.createBuffer({
        label: "buffer010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });

    {
        const texture = texture010
        console.log(texture.depthOrArrayLayers);

        console.log(texture.dimension);

        console.log(texture.format);

        console.log(texture.height);

        console.log(texture.width);

        console.log(texture.label);

        console.log(texture.mipLevelCount);

        console.log(texture.sampleCount);

        console.log(texture.usage);
    }

    const sampler010 = device01.createSampler( { label: "sampler010" } );

    const render_pipeline011 = device01.createRenderPipeline({
        label: "render_pipeline011",
        vertex: {
            module: shader_module010,
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
            module: shader_module010,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: navigator.gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });

    device01.queue.writeTexture({ texture: texture011 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });

    render_pass_encoder0110.setViewport(0, 0, texture010.width / 2, texture010.height / 2, 0, 1);

    render_pass_encoder0110.setViewport(0, 0, texture010.width / 2, texture010.height / 2, 0, 1);

    device01.queue.writeBuffer(buffer010, 0, array0, 0, array0.length);

    const render_bundle_encoder020 = device02.createRenderBundleEncoder({
        label: "render_bundle_encoder020",
        colorFormats: ["bgra8unorm"]
    });

    device01.pushErrorScope("validation");

    device01.queue.writeTexture({ texture: texture011 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });

    render_pass_encoder0110.insertDebugMarker("marker");

    query010.destroy()

    // await device02.queue.onSubmittedWorkDone();

    render_pass_encoder0110.setBlendConstant([1.0, 0.0, 0.0, 1.0]);

    render_pass_encoder0110.setViewport(0, 0, texture010.width / 2, texture010.height / 2, 0, 1);

    query011.destroy()

    render_pass_encoder0110.setScissorRect(0, 0, texture010.width / 2, texture010.height / 2);

    device02.pushErrorScope("internal");

    {
        await buffer010.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer010.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer010.unmap();
        console.log(new Float32Array(data));
    }

    device01.queue.writeTexture({ texture: texture011 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });

    var shader_module012_code = "";
    try {
        shader_module012_code = await fs.readFile('shader_module012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module012 = await device01.createShaderModule({ label: "shader_module012", code: shader_module012_code })

    buffer010.destroy()

    const texture_view0110 = texture011.createView({ label: "texture_view0110" });

    device01.queue.writeTexture({ texture: texture011 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });

    const sampler011 = device01.createSampler( { label: "sampler011" } );

    const render_pipeline012 = device01.createRenderPipeline({
        label: "render_pipeline012",
        vertex: {
            module: shader_module010,
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
            module: shader_module010,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: navigator.gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });

    const buffer011 = device01.createBuffer({
        label: "buffer011",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });

    render_bundle_encoder020.pushDebugGroup("group_marker");

    const bind_group_layout020 = device02.createBindGroupLayout({ 
        label: "bind_group_layout020",
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

    const command_encoder020 = device02.createCommandEncoder({ label: "command_encoder020" });

    const bind_group_layout011 = device01.createBindGroupLayout({ 
        label: "bind_group_layout011",
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

    const command_encoder021 = device02.createCommandEncoder({ label: "command_encoder021" });

    command_encoder021.insertDebugMarker("mymarker");

    texture010.destroy();

    const texture020 = device02.createTexture({
        label: "texture020",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });

    device01.queue.writeTexture({ texture: texture011 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });

    const device03 = await adapter0.requestDevice({ label: "device03" });

    const pipeline_layout010 = device01.createPipelineLayout({ 
        label: "pipeline_layout010",
        bindGroupLayouts: [bind_group_layout010]
    });

    command_encoder021.pushDebugGroup("mygroupmarker")

    console.log(adapter0.features.size);

    for (const value of adapter0.features.keys()) {
        console.log(value);
    }

    console.log(adapter0.isFallbackAdapter);

    console.log(adapter0.limits.size);

    for (const [key, value] of Object.entries(adapter0.limits)) {
        console.log(key);
        console.log(value);
    }

    {
        const adapter = adapter0;
        console.log(adapter.info.vendor);
        console.log(adapter.info.architecture);
        console.log(adapter.info.device);
        console.log(adapter.info.description);
    }

    query010.destroy()

    render_bundle_encoder020.popDebugGroup();

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    const texture_view0200 = texture020.createView({ label: "texture_view0200" });

    var shader_module030_code = "";
    try {
        shader_module030_code = await fs.readFile('render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module030 = await device03.createShaderModule({ label: "shader_module030", code: shader_module030_code })

    render_pass_encoder0110.setPipeline(render_pipeline010);

    const buffer012 = device01.createBuffer({
        label: "buffer012",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });

    const query020 = device02.createQuerySet({
        label: "query020",
        type: "occlusion",
        count: 32,
    });

    query010.destroy()

    buffer012.destroy()

    device01.queue.writeTexture({ texture: texture011 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });

    const buffer020 = device02.createBuffer({
        label: "buffer020",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });

    const query012 = device01.createQuerySet({
        label: "query012",
        type: "occlusion",
        count: 32,
    });

    device01.queue.writeTexture({ texture: texture011 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });

    texture020.destroy();

    var shader_module021_code = "";
    try {
        shader_module021_code = await fs.readFile('render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module021 = await device02.createShaderModule({ label: "shader_module021", code: shader_module021_code })

    const compute_pipeline010 = await device01.createComputePipelineAsync({
        label: "compute_pipeline010",
        layout: pipeline_layout010,
        compute: {
            module: shader_module012,
            entryPoint: "main"
        }
    });

    const render_pass_encoder0210 = command_encoder021.beginRenderPass({
        label: "render_pass_encoder0210",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0200,
            },
        ],
        occlusionQuerySet: query020
    });

    console.log(navigator.gpu.getPreferredCanvasFormat());

    {
        const buffer = buffer020
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const render_pass_encoder0200 = command_encoder020.beginRenderPass({
        label: "render_pass_encoder0200",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0200,
            },
        ],
        occlusionQuerySet: query020
    });

    var shader_module013_code = "";
    try {
        shader_module013_code = await fs.readFile('render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module013 = await device01.createShaderModule({ label: "shader_module013", code: shader_module013_code })

    {
        const shaderInfo = await shader_module012.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const pipeline_layout011 = device01.createPipelineLayout({ 
        label: "pipeline_layout011",
        bindGroupLayouts: [bind_group_layout011]
    });

    console.log(device01.features.size);

    for (const value of device01.features.keys()) {
        console.log(value);
    }

    console.log(device01.limits.size);

    for (const [key, value] of Object.entries(device01.limits)) {
        console.log(key);
        console.log(value);
    }

    device01.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    render_pass_encoder0200.beginOcclusionQuery(0)

    render_pass_encoder0210.insertDebugMarker("marker");

    const compute_pipeline011 = await device01.createComputePipelineAsync({
        label: "compute_pipeline011",
        layout: pipeline_layout011,
        compute: {
            module: shader_module011,
            entryPoint: "main"
        }
    });

    const texture012 = device01.createTexture({
        label: "texture012",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });

    // await device02.queue.onSubmittedWorkDone();

    const render_pipeline013 = await device01.createRenderPipelineAsync({
        label: "render_pipeline013",
        vertex: {
            module: shader_module010,
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
            module: shader_module010,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: navigator.gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto",
    });

    const texture013 = device01.createTexture({
        label: "texture013",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });

    {
        const shaderInfo = await shader_module030.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const compute_pipeline012 = device01.createComputePipeline({
        label: "compute_pipeline012",
        layout: pipeline_layout010,
        compute: {
            module: shader_module011,
            entryPoint: "main"
        }
    });

    render_pass_encoder0200.setViewport(0, 0, texture020.width / 2, texture020.height / 2, 0, 1);

    compute_pass_encoder0130.pushDebugGroup("group_marker")

    const compute_pipeline013 = await device01.createComputePipelineAsync({
        label: "compute_pipeline013",
        layout: pipeline_layout010,
        compute: {
            module: shader_module011,
            entryPoint: "main"
        }
    });

    const texture030 = device03.createTexture({
        label: "texture030",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });

    compute_pass_encoder0100.insertDebugMarker("marker")

    // await device03.queue.onSubmittedWorkDone();

    render_pass_encoder0210.setStencilReference(1);

    const buffer021 = device02.createBuffer({
        label: "buffer021",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });

    texture011.destroy();

    compute_pass_encoder0130.setPipeline(compute_pipeline010);

    var shader_module031_code = "";
    try {
        shader_module031_code = await fs.readFile('render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module031 = await device03.createShaderModule({ label: "shader_module031", code: shader_module031_code })

    {
        const shaderInfo = await shader_module011.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    render_pass_encoder0110.setViewport(0, 0, texture010.width / 2, texture010.height / 2, 0, 1);

    render_pass_encoder0110.pushDebugGroup("group_marker");

    {
        const buffer = buffer011
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    render_pass_encoder0200.setViewport(0, 0, texture020.width / 2, texture020.height / 2, 0, 1);

    {
        const buffer = buffer020
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const render_pipeline020 = await device02.createRenderPipelineAsync({
        label: "render_pipeline020",
        vertex: {
            module: shader_module021,
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
            module: shader_module021,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: navigator.gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto",
    });

    const compute_pipeline014 = await device01.createComputePipelineAsync({
        label: "compute_pipeline014",
        layout: pipeline_layout011,
        compute: {
            module: shader_module012,
            entryPoint: "main"
        }
    });

    render_pass_encoder0110.setBlendConstant([1.0, 0.0, 0.0, 1.0]);

    render_pass_encoder0200.setStencilReference(1);

    {
        const texture = texture012
        console.log(texture.depthOrArrayLayers);

        console.log(texture.dimension);

        console.log(texture.format);

        console.log(texture.height);

        console.log(texture.width);

        console.log(texture.label);

        console.log(texture.mipLevelCount);

        console.log(texture.sampleCount);

        console.log(texture.usage);
    }

    {
        const shaderInfo = await shader_module020.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const pipeline_layout012 = device01.createPipelineLayout({ 
        label: "pipeline_layout012",
        bindGroupLayouts: [bind_group_layout010]
    });

    const pipeline_layout013 = device01.createPipelineLayout({ 
        label: "pipeline_layout013",
        bindGroupLayouts: [bind_group_layout011]
    });

    const render_bundle_encoder021 = device02.createRenderBundleEncoder({
        label: "render_bundle_encoder021",
        colorFormats: ["bgra8unorm"]
    });

    console.log(device02.features.size);

    for (const value of device02.features.keys()) {
        console.log(value);
    }

    console.log(device02.limits.size);

    for (const [key, value] of Object.entries(device02.limits)) {
        console.log(key);
        console.log(value);
    }

    device02.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    device02.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    render_pass_encoder0210.setScissorRect(0, 0, texture020.width / 2, texture020.height / 2);

    const buffer013 = device01.createBuffer({
        label: "buffer013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer014 = device01.createBuffer({
        label: "buffer014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group010 = device01.createBindGroup({
        label: "bind_group010",
        layout: compute_pipeline010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer014,
                },
            },
        ],
    });

    compute_pass_encoder0130.setBindGroup(0, bind_group010);

    render_bundle_encoder021.setPipeline(render_pipeline020);

    {
        const buffer = buffer011
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const command_encoder014 = device01.createCommandEncoder({ label: "command_encoder014" });

    const render_pipeline030 = await device03.createRenderPipelineAsync({
        label: "render_pipeline030",
        vertex: {
            module: shader_module031,
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
            module: shader_module031,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: navigator.gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto",
    });

    const buffer015 = device01.createBuffer({
        label: "buffer015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    render_pass_encoder0210.setPipeline(render_pipeline020);

    render_pass_encoder0110.setViewport(0, 0, texture010.width / 2, texture010.height / 2, 0, 1);

    const texture021 = device02.createTexture({
        label: "texture021",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r8uint",
        dimension: "2d"
    });

    const render_bundle_encoder030 = device03.createRenderBundleEncoder({
        label: "render_bundle_encoder030",
        colorFormats: ["bgra8unorm"]
    });

    buffer013.destroy()

    const render_pipeline014 = await device01.createRenderPipelineAsync({
        label: "render_pipeline014",
        vertex: {
            module: shader_module013,
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
            module: shader_module013,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: navigator.gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto",
    });

    render_pass_encoder0200.endOcclusionQuery()

    const array7 = new Float32Array([-0.25, 1.0, -0.5, 0.5, -1.0, 1.0, 0.75, 1.0, -0.25, -0.75, 0.5, -1.0, -0.75, 0.25, 0.5, -0.5, -0.25, 0.0, 0.25, -0.75, -0.25, -0.5, -0.25, 0.5, -0.5, 0.0, 0.0, -0.5, 0.0, 0.25, 1.0, 0.75, 0.75, -1.0, 0.5, 1.0, -1.0, -0.75, -0.5, 0.75, 1.0, 1.0, -1.0, 0.5, 0.0, 0.75, 0.5, -0.25, -0.75, -0.75, 0.5, -0.5, 0.5, -1.0, 0.75, 0.75, -0.75, -1.0, 0.0, 0.0, -1.0, 1.0, 0.25, 0.25, -0.25, -0.25, 0.75, 0.5, -0.75, -0.5, 1.0, 0.25, -0.75, -0.5, -0.25, 0.5, 1.0, -0.25, 1.0, -0.5, 0.0, 0.75, 1.0, -1.0, 0.25, -0.5, 0.75, 0.0, 0.0, 0.5, -0.5, -0.25, -0.5, 0.25, 0.25, 0.0, 0.5, -0.25, 0.25, -0.25, ]);

    render_pass_encoder0110.setScissorRect(0, 0, texture010.width / 2, texture010.height / 2);

    const render_pipeline015 = await device01.createRenderPipelineAsync({
        label: "render_pipeline015",
        vertex: {
            module: shader_module010,
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
            module: shader_module010,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: navigator.gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto",
    });

    const compute_pipeline015 = await device01.createComputePipelineAsync({
        label: "compute_pipeline015",
        layout: pipeline_layout010,
        compute: {
            module: shader_module011,
            entryPoint: "main"
        }
    });

    const command_encoder022 = device02.createCommandEncoder({ label: "command_encoder022" });

    compute_pass_encoder0100.setPipeline(compute_pipeline014);

    render_pass_encoder0210.beginOcclusionQuery(1)

    render_pass_encoder0110.setBlendConstant([1.0, 0.0, 0.0, 1.0]);

    const adapter3 = await navigator.gpu.requestAdapter({
        powerPreference: undefined,
        label: "adapter3"
    });

    const render_pass_encoder0140 = command_encoder014.beginRenderPass({
        label: "render_pass_encoder0140",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0110,
            },
        ],
        occlusionQuerySet: query012
    });

    {
        const shaderInfo = await shader_module021.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const render_bundle_encoder031 = device03.createRenderBundleEncoder({
        label: "render_bundle_encoder031",
        colorFormats: ["bgra8unorm"]
    });

    const render_pipeline031 = device03.createRenderPipeline({
        label: "render_pipeline031",
        vertex: {
            module: shader_module031,
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
            module: shader_module031,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: navigator.gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });

    const compute_pipeline016 = device01.createComputePipeline({
        label: "compute_pipeline016",
        layout: pipeline_layout013,
        compute: {
            module: shader_module011,
            entryPoint: "main"
        }
    });

    {
        const texture = texture030
        console.log(texture.depthOrArrayLayers);

        console.log(texture.dimension);

        console.log(texture.format);

        console.log(texture.height);

        console.log(texture.width);

        console.log(texture.label);

        console.log(texture.mipLevelCount);

        console.log(texture.sampleCount);

        console.log(texture.usage);
    }

    const sampler030 = device03.createSampler( { label: "sampler030" } );

    render_pass_encoder0140.executeBundles([])

    buffer015.destroy()

    compute_pass_encoder0130.dispatchWorkgroups(100);

    const compute_pipeline017 = device01.createComputePipeline({
        label: "compute_pipeline017",
        layout: pipeline_layout012,
        compute: {
            module: shader_module012,
            entryPoint: "main"
        }
    });

    const render_pipeline032 = device03.createRenderPipeline({
        label: "render_pipeline032",
        vertex: {
            module: shader_module030,
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
            module: shader_module030,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: navigator.gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });

    const buffer016 = device01.createBuffer({
        label: "buffer016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    render_pass_encoder0140.executeBundles([])

    const render_pipeline033 = device03.createRenderPipeline({
        label: "render_pipeline033",
        vertex: {
            module: shader_module030,
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
            module: shader_module030,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: navigator.gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });

    const compute_pipeline018 = await device01.createComputePipelineAsync({
        label: "compute_pipeline018",
        layout: pipeline_layout012,
        compute: {
            module: shader_module012,
            entryPoint: "main"
        }
    });

    const render_pipeline016 = await device01.createRenderPipelineAsync({
        label: "render_pipeline016",
        vertex: {
            module: shader_module013,
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
            module: shader_module013,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: navigator.gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto",
    });

    render_pass_encoder0140.setPipeline(render_pipeline015);

    console.log(device03.features.size);

    for (const value of device03.features.keys()) {
        console.log(value);
    }

    console.log(device03.limits.size);

    for (const [key, value] of Object.entries(device03.limits)) {
        console.log(key);
        console.log(value);
    }

    device03.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    const buffer017 = device01.createBuffer({
        label: "buffer017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer018 = device01.createBuffer({
        label: "buffer018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group011 = device01.createBindGroup({
        label: "bind_group011",
        layout: render_pipeline010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer018,
                },
            },
        ],
    });

    render_pass_encoder0110.setBindGroup(0, bind_group011);

    const adapter4 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power",
        label: "adapter4"
    });

    const command_buffer022 = command_encoder022.finish();

    {
        const buffer = buffer016
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const bind_group_layout030 = device03.createBindGroupLayout({ 
        label: "bind_group_layout030",
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

    console.log(device01.features.size);

    for (const value of device01.features.keys()) {
        console.log(value);
    }

    console.log(device01.limits.size);

    for (const [key, value] of Object.entries(device01.limits)) {
        console.log(key);
        console.log(value);
    }

    device01.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    render_bundle_encoder030.setPipeline(render_pipeline033);

    const render_pipeline017 = await device01.createRenderPipelineAsync({
        label: "render_pipeline017",
        vertex: {
            module: shader_module013,
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
            module: shader_module013,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: navigator.gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto",
    });

    render_pass_encoder0200.executeBundles([])

    render_bundle_encoder031.insertDebugMarker("marker");

    {
        const shaderInfo = await shader_module020.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const device20 = await adapter2.requestDevice({ label: "device20" });

    render_pass_encoder0200.beginOcclusionQuery(2)

    const texture031 = device03.createTexture({
        label: "texture031",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg8sint",
        dimension: "2d"
    });

    const pipeline_layout030 = device03.createPipelineLayout({ 
        label: "pipeline_layout030",
        bindGroupLayouts: [bind_group_layout030]
    });

    render_pass_encoder0110.setStencilReference(1);

    const compute_pipeline019 = device01.createComputePipeline({
        label: "compute_pipeline019",
        layout: pipeline_layout012,
        compute: {
            module: shader_module011,
            entryPoint: "main"
        }
    });

    const render_bundle_encoder010 = device01.createRenderBundleEncoder({
        label: "render_bundle_encoder010",
        colorFormats: ["bgra8unorm"]
    });

    console.log(query012.label);
    
    console.log(query012.type);
    
    console.log(query012.count);

    const compute_pipeline0110 = await device01.createComputePipelineAsync({
        label: "compute_pipeline0110",
        layout: pipeline_layout011,
        compute: {
            module: shader_module012,
            entryPoint: "main"
        }
    });

    const bind_group_layout012 = device01.createBindGroupLayout({ 
        label: "bind_group_layout012",
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

    render_pass_encoder0140.setScissorRect(0, 0, texture011.width / 2, texture011.height / 2);

    texture031.destroy();

    device01.queue.writeTexture({ texture: texture013 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });

    const compute_pipeline0111 = await device01.createComputePipelineAsync({
        label: "compute_pipeline0111",
        layout: pipeline_layout013,
        compute: {
            module: shader_module012,
            entryPoint: "main"
        }
    });

    render_bundle_encoder031.setPipeline(render_pipeline031);

    {
        const shaderInfo = await shader_module012.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const compute_pipeline0112 = device01.createComputePipeline({
        label: "compute_pipeline0112",
        layout: pipeline_layout013,
        compute: {
            module: shader_module011,
            entryPoint: "main"
        }
    });

    render_pass_encoder0200.endOcclusionQuery()

    console.log(navigator.gpu.getPreferredCanvasFormat());

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    const buffer030 = device03.createBuffer({
        label: "buffer030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer031 = device03.createBuffer({
        label: "buffer031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group030 = device03.createBindGroup({
        label: "bind_group030",
        layout: render_pipeline031.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer031,
                },
            },
        ],
    });

    render_bundle_encoder031.setBindGroup(0, bind_group030);

    {
        const buffer = buffer018
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    buffer018.destroy()

    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });

    const array8 = new Float32Array([1.0, 0.25, 0.5, -0.25, 0.75, 0.5, -0.25, -0.5, 0.25, -0.25, 0.75, -0.5, -1.0, -1.0, -0.5, 1.0, 1.0, 0.0, -0.75, -0.75, -1.0, -0.75, 0.75, 0.0, 1.0, 0.75, 1.0, -1.0, -1.0, 0.25, 0.5, 0.25, -0.5, -0.25, 0.5, 0.5, 0.5, 0.5, 0.5, -1.0, 0.5, 1.0, -1.0, -1.0, 0.0, 1.0, 1.0, -0.75, -1.0, 0.25, 0.25, 0.75, 0.75, -0.25, 0.0, -0.5, 1.0, -0.5, 0.5, -0.25, 1.0, 0.5, -1.0, 0.25, 0.5, 0.75, -0.25, -0.25, 1.0, 0.75, 0.75, 1.0, 0.25, 0.5, -1.0, -0.5, 0.5, 0.5, -0.75, 1.0, 0.25, 0.75, 0.75, -1.0, 1.0, -1.0, 0.5, 0.25, -0.75, -1.0, 0.5, 0.0, 0.5, -0.75, -0.25, 0.5, 1.0, 1.0, -1.0, 1.0, ]);

    {
        const shaderInfo = await shader_module011.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const sampler031 = device03.createSampler( { label: "sampler031" } );

    render_bundle_encoder010.setPipeline(render_pipeline015);

    query012.destroy()

    const buffer022 = device02.createBuffer({
        label: "buffer022",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });

    const compute_pipeline0113 = await device01.createComputePipelineAsync({
        label: "compute_pipeline0113",
        layout: pipeline_layout012,
        compute: {
            module: shader_module012,
            entryPoint: "main"
        }
    });

    render_pass_encoder0210.setStencilReference(1);

    query011.destroy()

    const device04 = await adapter0.requestDevice({ label: "device04" });

    const texture_view0130 = texture013.createView({ label: "texture_view0130" });

    render_pass_encoder0210.setScissorRect(0, 0, texture020.width / 2, texture020.height / 2);

    {
        const buffer = buffer030
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const query040 = device04.createQuerySet({
        label: "query040",
        type: "occlusion",
        count: 32,
    });

    const query041 = device04.createQuerySet({
        label: "query041",
        type: "occlusion",
        count: 32,
    });

    const compute_pipeline0114 = device01.createComputePipeline({
        label: "compute_pipeline0114",
        layout: pipeline_layout013,
        compute: {
            module: shader_module012,
            entryPoint: "main"
        }
    });

    const sampler020 = device02.createSampler( { label: "sampler020" } );

    device02.pushErrorScope("validation");

    const query042 = device04.createQuerySet({
        label: "query042",
        type: "occlusion",
        count: 32,
    });

    buffer022.destroy()

    const buffer019 = device01.createBuffer({
        label: "buffer019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0110 = device01.createBuffer({
        label: "buffer0110",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group012 = device01.createBindGroup({
        label: "bind_group012",
        layout: render_pipeline015.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0110,
                },
            },
        ],
    });

    render_bundle_encoder010.setBindGroup(0, bind_group012);

    render_pass_encoder0140.setViewport(0, 0, texture011.width / 2, texture011.height / 2, 0, 1);

    texture021.destroy();

    {
        const buffer = buffer021
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    device01.queue.writeTexture({ texture: texture013 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });

    device03.pushErrorScope("validation");

    {
        const buffer = buffer0110
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    {
        const shaderInfo = await shader_module030.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });

    const render_pipeline021 = await device02.createRenderPipelineAsync({
        label: "render_pipeline021",
        vertex: {
            module: shader_module021,
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
            module: shader_module021,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: navigator.gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto",
    });

    const buffer032 = device03.createBuffer({
        label: "buffer032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    buffer030.destroy()

    query012.destroy()

    device01.queue.writeTexture({ texture: texture013 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });

    render_pass_encoder0210.setViewport(0, 0, texture020.width / 2, texture020.height / 2, 0, 1);

    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })

    const compute_pipeline0115 = await device01.createComputePipelineAsync({
        label: "compute_pipeline0115",
        layout: pipeline_layout012,
        compute: {
            module: shader_module011,
            entryPoint: "main"
        }
    });

    const query030 = device03.createQuerySet({
        label: "query030",
        type: "occlusion",
        count: 32,
    });

    texture012.destroy();

    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })

    const compute_pipeline0116 = await device01.createComputePipelineAsync({
        label: "compute_pipeline0116",
        layout: pipeline_layout013,
        compute: {
            module: shader_module011,
            entryPoint: "main"
        }
    });

    render_pass_encoder0110.insertDebugMarker("marker");

    const buffer0111 = device01.createBuffer({
        label: "buffer0111",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });

    render_pass_encoder0210.setBlendConstant([1.0, 0.0, 0.0, 1.0]);

    texture013.destroy();

    render_pass_encoder0200.setPipeline(render_pipeline020);

    const render_pipeline034 = device03.createRenderPipeline({
        label: "render_pipeline034",
        vertex: {
            module: shader_module030,
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
            module: shader_module030,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: navigator.gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });

    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })

    {
        const buffer = buffer016
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    {
        const buffer = buffer014
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    buffer016.destroy()

    const texture022 = device02.createTexture({
        label: "texture022",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });

    const sampler040 = device04.createSampler( { label: "sampler040" } );

    {
        const buffer = buffer017
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    device01.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    const buffer023 = device02.createBuffer({
        label: "buffer023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer024 = device02.createBuffer({
        label: "buffer024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group020 = device02.createBindGroup({
        label: "bind_group020",
        layout: render_pipeline020.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer024,
                },
            },
        ],
    });

    render_pass_encoder0200.setBindGroup(0, bind_group020);

    compute_pass_encoder0130.popDebugGroup()

    device03.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    const buffer0112 = device01.createBuffer({
        label: "buffer0112",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0113 = device01.createBuffer({
        label: "buffer0113",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group013 = device01.createBindGroup({
        label: "bind_group013",
        layout: render_pipeline015.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0112,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0113,
                },
            },
        ],
    });

    render_pass_encoder0140.setBindGroup(0, bind_group013);

    compute_pass_encoder0130.end();

    const command_buffer013 = command_encoder013.finish();

    render_pass_encoder0110.popDebugGroup();

    device01.queue.submit([command_buffer012, command_buffer013, ]);

    device02.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    compute_pass_encoder0100.popDebugGroup()

    const buffer025 = device02.createBuffer({
        label: "buffer025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer026 = device02.createBuffer({
        label: "buffer026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group021 = device02.createBindGroup({
        label: "bind_group021",
        layout: render_pipeline020.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer026,
                },
            },
        ],
    });

    render_pass_encoder0210.setBindGroup(0, bind_group021);

    render_pass_encoder0210.endOcclusionQuery()

    const buffer0114 = device01.createBuffer({
        label: "buffer0114",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0115 = device01.createBuffer({
        label: "buffer0115",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group014 = device01.createBindGroup({
        label: "bind_group014",
        layout: compute_pipeline014.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0114,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0115,
                },
            },
        ],
    });

    compute_pass_encoder0100.setBindGroup(0, bind_group014);

    const uint32_0100 = new Uint32Array(3);

    uint32_0100[0] = 100;
    uint32_0100[1] = 1;
    uint32_0100[2] = 1;

    const buffer0116 = device01.createBuffer({
        label: "buffer0116",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device01.queue.writeBuffer(buffer0116, 0, uint32_0100, 0, uint32_0100.length);

    compute_pass_encoder0100.dispatchWorkgroupsIndirect(buffer0116, 0);

    compute_pass_encoder0100.end();

    device02.queue.submit([command_buffer022, ]);

    command_encoder010.popDebugGroup()

    const command_buffer010 = command_encoder010.finish();

    device01.queue.submit([command_buffer010, ]);
}

init();