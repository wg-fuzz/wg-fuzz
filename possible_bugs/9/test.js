const { create, globals } = require('../dawn.node');
Object.assign(globalThis, globals); // Provides constants like GPUBufferUsage.MAP_READ
let navigator = { gpu: create(['enable-dawn-features=allow_unsafe_apis,disable_symbol_renaming']), };
const fs = require('node:fs/promises');

async function init() {
    if (!navigator.gpu) {
        throw Error("WebGPU not supported.");
    }

    const array0 = new Float32Array([-0.5, 0.0, 0.5, 0.0, 1.0, 1.0, 0.25, 1.0, 0.5, -1.0, 1.0, -0.25, 1.0, -0.5, -1.0, 0.25, 0.25, -0.5, 0.0, 0.75, -0.75, -0.75, -0.5, 1.0, -1.0, -0.25, -0.75, 0.0, -0.75, -0.75, 0.0, -1.0, -1.0, -0.75, -1.0, 0.0, 0.5, -1.0, -1.0, -0.75, 1.0, 1.0, 0.75, 1.0, 0.5, -1.0, -0.5, 0.25, -0.75, 0.75, 0.75, -0.5, 0.25, 0.25, -0.25, 0.5, -1.0, 1.0, 0.0, 1.0, 1.0, 0.75, 0.75, 0.25, -0.75, -0.75, 0.5, 0.25, 0.0, 0.25, -1.0, -0.5, 0.0, -1.0, 0.75, -0.5, 0.75, -0.5, -0.5, 0.75, -0.75, 0.0, 0.25, 0.25, 0.0, 1.0, 0.25, 1.0, 1.0, 0.5, -0.75, 0.5, -0.75, 0.0, -0.75, 0.5, 0.5, -1.0, 0.0, -0.75, ]);

    const adapter0 = await navigator.gpu.requestAdapter({
                powerPreference: "low-power",
                label: "adapter0"
            });

    console.log(navigator.gpu.getPreferredCanvasFormat());

    const array1 = new Float32Array([0.25, -1.0, 0.25, -0.75, -0.25, 0.25, -0.25, -0.25, 1.0, -0.25, -0.5, 1.0, -0.75, 0.75, 0.25, -0.25, -0.5, 0.75, 0.25, 0.75, -1.0, 0.75, 0.25, -0.25, -0.25, 1.0, 0.25, 0.75, -0.75, -1.0, 1.0, -1.0, 1.0, 1.0, -0.75, 0.5, 0.75, -0.25, -0.5, -0.75, 1.0, -1.0, 0.0, -0.5, 0.75, -0.5, -0.75, 0.75, 0.0, -0.5, 0.75, 0.25, -0.75, 0.75, 0.25, -0.75, 1.0, -0.75, -1.0, 0.25, -1.0, 0.25, -0.25, -0.5, -1.0, -0.25, -0.75, 0.5, -1.0, 0.5, -1.0, 0.0, 1.0, 0.25, -0.5, 0.25, -0.5, -0.5, 1.0, 1.0, -0.75, 0.5, 0.0, -0.25, 0.25, -1.0, -0.25, -0.25, 0.5, 0.5, -0.75, 0.75, -0.75, 0.5, 0.75, 0.75, -0.75, 0.25, 0.5, 0.0, ]);

    const array2 = new Float32Array([-0.75, -0.75, 0.0, -0.25, 0.5, -0.25, 0.75, -1.0, -0.25, 0.75, -1.0, 0.25, -0.5, 0.75, 0.25, 0.5, -0.25, 1.0, -0.25, 0.75, 1.0, 0.25, 0.5, -0.5, 0.25, -0.25, -0.5, -0.5, 0.25, -0.25, -0.75, -1.0, -0.75, 0.5, 0.75, 0.75, 0.5, 1.0, 0.5, 0.0, -0.75, -1.0, 0.5, 0.5, 0.5, 0.5, -0.75, 0.75, -0.75, -1.0, 1.0, -0.5, 0.5, 0.0, 0.5, 0.0, 0.5, -0.75, 0.25, 0.75, 0.25, -1.0, -0.5, 0.25, -0.5, 0.25, 0.75, 0.0, 0.5, -1.0, -0.5, 1.0, 0.25, -1.0, -0.5, 0.5, 0.25, 0.25, -0.75, -0.25, 0.75, 0.75, 0.75, -1.0, 0.0, 1.0, -0.25, -0.75, 1.0, -0.75, -0.25, -0.5, -1.0, -0.75, -0.5, -0.75, 0.75, 1.0, 1.0, 0.0, ]);

    const device00 = await adapter0.requestDevice({ label: "device00" });

    const texture000 = device00.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });

    const sampler000 = device00.createSampler();

    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('crates/wg-fuzz/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ code: shader_module000_code })

    const texture_view0000 = texture000.createView();

    {
        const texture = texture000
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

    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('out/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ code: shader_module001_code })

    const buffer000 = device00.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });

    const adapter1 = await navigator.gpu.requestAdapter({
                powerPreference: "low-power",
                label: "adapter1"
            });

    buffer000.destroy()

    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    device00.queue.onSubmittedWorkDone();

    const query000 = device00.createQuerySet({
        type: "occlusion",
        count: 32,
    });

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
        const adapterInfo = await adapter0.requestAdapterInfo();
        console.log(adapterInfo.vendor);
        console.log(adapterInfo.architecture);
        console.log(adapterInfo.device);
        console.log(adapterInfo.description);
    }

    const render_pipeline000 = device00.createRenderPipeline({
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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

    const device10 = await adapter1.requestDevice({ label: "device10" });

    {
        const texture = texture000
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

    console.log(navigator.gpu.getPreferredCanvasFormat());

    device10.queue.onSubmittedWorkDone();

    const texture001 = device00.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth16unorm",
        dimension: "2d"
    });

    const device01 = await adapter0.requestDevice({ label: "device01" });

    {
        const shaderInfo = await shader_module001.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    console.log(navigator.gpu.getPreferredCanvasFormat());

    render_bundle_encoder000.pushDebugGroup("group_marker");

    device01.queue.onSubmittedWorkDone();

    const sampler001 = device00.createSampler();

    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    const texture010 = device01.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
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

    const render_pipeline001 = device00.createRenderPipeline({
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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

    const texture011 = device01.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth16unorm",
        dimension: "2d"
    });

    render_bundle_encoder000.setPipeline(render_pipeline000);

    render_bundle_encoder100.pushDebugGroup("group_marker");

    const texture002 = device00.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });

    texture002.destroy();

    device00.destroy();

    device01.queue.onSubmittedWorkDone();

    const buffer010 = device01.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });

    device01.queue.onSubmittedWorkDone();

    const buffer011 = device01.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });

    device01.queue.writeBuffer(buffer010, 0, array0, 0, array0.length);

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

    var shader_module010_code = "";
    try {
        shader_module010_code = await fs.readFile('out/shader_module010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module010 = await device01.createShaderModule({ code: shader_module010_code })

    device01.queue.writeBuffer(buffer010, 0, array1, 0, array1.length);

    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });

    render_bundle_encoder100.insertDebugMarker("marker");

    console.log(navigator.gpu.getPreferredCanvasFormat());

    const buffer100 = device10.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.INDEX
    });

    render_bundle_encoder100.insertDebugMarker("marker");

    device01.queue.writeBuffer(buffer010, 0, array2, 0, array2.length);

    const bind_group_layout010 = device01.createBindGroupLayout({ 
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

    {
        const buffer = buffer010
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

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

    const texture012 = device01.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });

    const pipeline_layout010 = device01.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout010]
    });

    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });

    texture010.destroy();

    buffer011.destroy()

    const adapter2 = await navigator.gpu.requestAdapter({
                powerPreference: "low-power",
                label: "adapter2"
            });

    const device11 = await adapter1.requestDevice({ label: "device11" });

    const sampler100 = device10.createSampler();

    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('out/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ code: shader_module100_code })

    console.log(adapter2.features.size);

    for (const value of adapter2.features.keys()) {
        console.log(value);
    }

    console.log(adapter2.isFallbackAdapter);

    console.log(adapter2.limits.size);

    for (const [key, value] of Object.entries(adapter2.limits)) {
        console.log(key);
        console.log(value);
    }

    {
        const adapterInfo = await adapter2.requestAdapterInfo();
        console.log(adapterInfo.vendor);
        console.log(adapterInfo.architecture);
        console.log(adapterInfo.device);
        console.log(adapterInfo.description);
    }

    var shader_module011_code = "";
    try {
        shader_module011_code = await fs.readFile('out/shader_module011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module011 = await device01.createShaderModule({ code: shader_module011_code })

    device01.queue.writeBuffer(buffer010, 0, array2, 0, array2.length);

    console.log(device10.features.size);

    for (const value of device10.features.keys()) {
        console.log(value);
    }

    console.log(device10.limits.size);

    for (const [key, value] of Object.entries(device10.limits)) {
        console.log(key);
        console.log(value);
    }

    device10.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    const compute_pipeline010 = await device01.createComputePipelineAsync({ layout: pipeline_layout010, compute: { module: shader_module010, entryPoint: "main" } });

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
        const adapterInfo = await adapter0.requestAdapterInfo();
        console.log(adapterInfo.vendor);
        console.log(adapterInfo.architecture);
        console.log(adapterInfo.device);
        console.log(adapterInfo.description);
    }

    const compute_pipeline011 = await device01.createComputePipelineAsync({ layout: pipeline_layout010, compute: { module: shader_module010, entryPoint: "main" } });

    {
        const shaderInfo = await shader_module010.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const compute_pipeline012 = device01.createComputePipeline({ layout: pipeline_layout010, compute: { module: shader_module011, entryPoint: "main" } });

    const adapter3 = await navigator.gpu.requestAdapter({
                powerPreference: "high-performance",
                label: "adapter3"
            });

    device01.queue.writeBuffer(buffer010, 0, array2, 0, array2.length);

    var shader_module110_code = "";
    try {
        shader_module110_code = await fs.readFile('crates/wg-fuzz/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module110 = await device11.createShaderModule({ code: shader_module110_code })

    const bind_group_layout100 = device10.createBindGroupLayout({ 
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

    var shader_module111_code = "";
    try {
        shader_module111_code = await fs.readFile('crates/wg-fuzz/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module111 = await device11.createShaderModule({ code: shader_module111_code })

    const command_encoder110 = device11.createCommandEncoder({ label: "command_encoder110" });

    device11.queue.onSubmittedWorkDone();

    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('out/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ code: shader_module101_code })

    console.log(adapter1.features.size);

    for (const value of adapter1.features.keys()) {
        console.log(value);
    }

    console.log(adapter1.isFallbackAdapter);

    console.log(adapter1.limits.size);

    for (const [key, value] of Object.entries(adapter1.limits)) {
        console.log(key);
        console.log(value);
    }

    {
        const adapterInfo = await adapter1.requestAdapterInfo();
        console.log(adapterInfo.vendor);
        console.log(adapterInfo.architecture);
        console.log(adapterInfo.device);
        console.log(adapterInfo.description);
    }

    command_encoder100.insertDebugMarker("mymarker");

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

    const device30 = await adapter3.requestDevice({ label: "device30" });

    const texture300 = device30.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });

    const render_bundle_encoder110 = device11.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    var shader_module112_code = "";
    try {
        shader_module112_code = await fs.readFile('crates/wg-fuzz/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module112 = await device11.createShaderModule({ code: shader_module112_code })

    var shader_module113_code = "";
    try {
        shader_module113_code = await fs.readFile('out/shader_module113.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module113 = await device11.createShaderModule({ code: shader_module113_code })

    const buffer012 = device01.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.INDEX
    });

    const buffer101 = device10.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const device20 = await adapter2.requestDevice({ label: "device20" });

    {
        const buffer = buffer100
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const texture100 = device10.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });

    console.log(adapter3.features.size);

    for (const value of adapter3.features.keys()) {
        console.log(value);
    }

    console.log(adapter3.isFallbackAdapter);

    console.log(adapter3.limits.size);

    for (const [key, value] of Object.entries(adapter3.limits)) {
        console.log(key);
        console.log(value);
    }

    {
        const adapterInfo = await adapter3.requestAdapterInfo();
        console.log(adapterInfo.vendor);
        console.log(adapterInfo.architecture);
        console.log(adapterInfo.device);
        console.log(adapterInfo.description);
    }

    const bind_group_layout101 = device10.createBindGroupLayout({ 
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

    var shader_module012_code = "";
    try {
        shader_module012_code = await fs.readFile('out/shader_module012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module012 = await device01.createShaderModule({ code: shader_module012_code })

    const compute_pipeline013 = await device01.createComputePipelineAsync({ layout: pipeline_layout010, compute: { module: shader_module012, entryPoint: "main" } });

    device20.queue.onSubmittedWorkDone();

    {
        const shaderInfo = await shader_module010.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const compute_pipeline014 = await device01.createComputePipelineAsync({ layout: pipeline_layout010, compute: { module: shader_module010, entryPoint: "main" } });

    const device31 = await adapter3.requestDevice({ label: "device31" });

    const device32 = await adapter3.requestDevice({ label: "device32" });

    const texture101 = device10.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });

    const command_buffer110 = command_encoder110.finish();

    const texture_view1010 = texture101.createView();

    console.log(adapter2.features.size);

    for (const value of adapter2.features.keys()) {
        console.log(value);
    }

    console.log(adapter2.isFallbackAdapter);

    console.log(adapter2.limits.size);

    for (const [key, value] of Object.entries(adapter2.limits)) {
        console.log(key);
        console.log(value);
    }

    {
        const adapterInfo = await adapter2.requestAdapterInfo();
        console.log(adapterInfo.vendor);
        console.log(adapterInfo.architecture);
        console.log(adapterInfo.device);
        console.log(adapterInfo.description);
    }

    render_bundle_encoder110.pushDebugGroup("group_marker");

    console.log(adapter3.features.size);

    for (const value of adapter3.features.keys()) {
        console.log(value);
    }

    console.log(adapter3.isFallbackAdapter);

    console.log(adapter3.limits.size);

    for (const [key, value] of Object.entries(adapter3.limits)) {
        console.log(key);
        console.log(value);
    }

    {
        const adapterInfo = await adapter3.requestAdapterInfo();
        console.log(adapterInfo.vendor);
        console.log(adapterInfo.architecture);
        console.log(adapterInfo.device);
        console.log(adapterInfo.description);
    }

    device01.pushErrorScope("validation");

    texture101.destroy();

    device01.queue.writeBuffer(buffer010, 0, array2, 0, array2.length);

    device01.queue.onSubmittedWorkDone();

    {
        const shaderInfo = await shader_module113.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const sampler320 = device32.createSampler();

    {
        const shaderInfo = await shader_module110.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    device01.queue.onSubmittedWorkDone();

    {
        const buffer = buffer101
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    {
        const shaderInfo = await shader_module101.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const texture320 = device32.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });

    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('crates/wg-fuzz/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ code: shader_module300_code })

    compute_pass_encoder1000.pushDebugGroup("group_marker")

    const bind_group_layout102 = device10.createBindGroupLayout({ 
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

    const render_pipeline110 = await device11.createRenderPipelineAsync({
        vertex: {
            module: shader_module111,
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
            module: shader_module111,
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

    const render_pipeline111 = device11.createRenderPipeline({
        vertex: {
            module: shader_module111,
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
            module: shader_module111,
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

    device32.pushErrorScope("out-of-memory");

    const render_pipeline300 = device30.createRenderPipeline({
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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

    var shader_module310_code = "";
    try {
        shader_module310_code = await fs.readFile('crates/wg-fuzz/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module310 = await device31.createShaderModule({ code: shader_module310_code })

    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });

    const texture_view3000 = texture300.createView();

    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('out/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ code: shader_module200_code })

    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('out/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ code: shader_module201_code })

    const texture013 = device01.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba32sint",
        dimension: "2d"
    });

    const query110 = device11.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    const adapter4 = await navigator.gpu.requestAdapter({
                powerPreference: "low-power",
                label: "adapter4"
            });

    const device02 = await adapter0.requestDevice({ label: "device02" });

    const texture102 = device10.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });

    const buffer013 = device01.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });

    device31.queue.onSubmittedWorkDone();

    var shader_module013_code = "";
    try {
        shader_module013_code = await fs.readFile('crates/wg-fuzz/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module013 = await device01.createShaderModule({ code: shader_module013_code })

    const pipeline_layout100 = device10.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout102]
    });

    const bind_group_layout011 = device01.createBindGroupLayout({ 
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

    const array3 = new Float32Array([-1.0, 0.25, 0.5, 1.0, -0.75, -0.5, 0.75, 1.0, 0.25, -1.0, 0.0, 0.25, -0.5, 1.0, -0.5, -0.75, 0.5, 0.0, -0.25, -0.75, 0.5, -0.5, 0.0, -0.25, 0.0, 0.5, -0.5, -0.25, -0.75, 0.0, -0.25, 0.0, -0.5, 0.75, 1.0, 0.75, 0.5, 0.0, 0.5, -0.25, 0.0, 0.25, -1.0, -0.75, -0.75, -0.25, 0.0, -0.25, 0.25, 0.75, 0.75, 0.5, 0.75, -0.5, -0.75, -0.75, -0.5, -0.5, -0.5, -0.75, -0.75, -0.5, 0.5, 0.0, 1.0, 0.25, 0.0, -1.0, 0.0, 0.75, 0.0, 0.75, 1.0, -1.0, 0.5, 0.5, -0.25, -0.5, 1.0, -0.75, 0.75, 0.25, 0.25, 0.25, 1.0, -1.0, 0.75, 0.25, 0.25, 0.25, -0.75, 0.75, 0.5, -0.75, 0.0, 0.0, -1.0, 0.0, 0.0, -0.5, ]);

    const pipeline_layout101 = device10.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout100]
    });

    const compute_pipeline100 = device10.createComputePipeline({ layout: pipeline_layout101, compute: { module: shader_module101, entryPoint: "main" } });

    texture300.destroy();

    const compute_pipeline015 = await device01.createComputePipelineAsync({ layout: pipeline_layout010, compute: { module: shader_module011, entryPoint: "main" } });

    const texture_view0120 = texture012.createView();

    {
        const shaderInfo = await shader_module100.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const command_encoder020 = device02.createCommandEncoder({ label: "command_encoder020" });

    const query100 = device10.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    const bind_group_layout110 = device11.createBindGroupLayout({ 
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

    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('out/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ code: shader_module102_code })

    const query101 = device10.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    const bind_group_layout103 = device10.createBindGroupLayout({ 
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

    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });

    const query020 = device02.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    query101.destroy()

    const render_pipeline301 = await device30.createRenderPipelineAsync({
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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

    const texture_view0110 = texture011.createView();

    {
        const buffer = buffer010
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    {
        const buffer = buffer010
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const texture_view1020 = texture102.createView();

    texture013.destroy();

    render_bundle_encoder110.insertDebugMarker("marker");

    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('out/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ code: shader_module301_code })

    {
        await buffer013.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer013.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer013.unmap();
        console.log(new Float32Array(data));
    }

    var shader_module020_code = "";
    try {
        shader_module020_code = await fs.readFile('out/shader_module020.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module020 = await device02.createShaderModule({ code: shader_module020_code })

    device01.queue.writeBuffer(buffer013, 0, array0, 0, array0.length);

    const render_pipeline112 = await device11.createRenderPipelineAsync({
        vertex: {
            module: shader_module112,
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
            module: shader_module112,
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

    const command_encoder010 = device01.createCommandEncoder({ label: "command_encoder010" });

    device01.queue.writeBuffer(buffer013, 0, array1, 0, array1.length);

    console.log(adapter1.features.size);

    for (const value of adapter1.features.keys()) {
        console.log(value);
    }

    console.log(adapter1.isFallbackAdapter);

    console.log(adapter1.limits.size);

    for (const [key, value] of Object.entries(adapter1.limits)) {
        console.log(key);
        console.log(value);
    }

    {
        const adapterInfo = await adapter1.requestAdapterInfo();
        console.log(adapterInfo.vendor);
        console.log(adapterInfo.architecture);
        console.log(adapterInfo.device);
        console.log(adapterInfo.description);
    }

    const texture_view3200 = texture320.createView();

    const bind_group_layout200 = device20.createBindGroupLayout({ 
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

    const compute_pipeline016 = await device01.createComputePipelineAsync({ layout: pipeline_layout010, compute: { module: shader_module010, entryPoint: "main" } });

    const compute_pipeline101 = device10.createComputePipeline({ layout: pipeline_layout100, compute: { module: shader_module100, entryPoint: "main" } });

    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    const compute_pipeline102 = device10.createComputePipeline({ layout: pipeline_layout101, compute: { module: shader_module100, entryPoint: "main" } });

    const pipeline_layout110 = device11.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout110]
    });

    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });

    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('out/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ code: shader_module202_code })

    device01.queue.writeBuffer(buffer010, 0, array3, 0, array3.length);

    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('crates/wg-fuzz/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ code: shader_module203_code })

    const compute_pipeline110 = await device11.createComputePipelineAsync({ layout: pipeline_layout110, compute: { module: shader_module113, entryPoint: "main" } });

    command_encoder020.pushDebugGroup("mygroupmarker")

    device10.queue.onSubmittedWorkDone();

    {
        const buffer = buffer100
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    device01.queue.writeBuffer(buffer010, 0, array0, 0, array0.length);

    {
        const shaderInfo = await shader_module200.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    query100.destroy()

    var shader_module021_code = "";
    try {
        shader_module021_code = await fs.readFile('out/shader_module021.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module021 = await device02.createShaderModule({ code: shader_module021_code })

    {
        const texture = texture011
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

    const buffer200 = device20.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });

    const sampler200 = device20.createSampler();

    const adapter5 = await navigator.gpu.requestAdapter({
                powerPreference: "low-power",
                label: "adapter5"
            });

    const sampler300 = device30.createSampler();

    const compute_pipeline103 = await device10.createComputePipelineAsync({ layout: pipeline_layout100, compute: { module: shader_module101, entryPoint: "main" } });

    device32.queue.onSubmittedWorkDone();

    console.log(device30.features.size);

    for (const value of device30.features.keys()) {
        console.log(value);
    }

    console.log(device30.limits.size);

    for (const [key, value] of Object.entries(device30.limits)) {
        console.log(key);
        console.log(value);
    }

    device30.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    var shader_module320_code = "";
    try {
        shader_module320_code = await fs.readFile('crates/wg-fuzz/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module320 = await device32.createShaderModule({ code: shader_module320_code })

    device01.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    device02.pushErrorScope("out-of-memory");

    const texture020 = device02.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });

    const texture_view3201 = texture320.createView();

    {
        const buffer = buffer101
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    {
        const shaderInfo = await shader_module102.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const render_bundle_encoder320 = device32.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    var shader_module321_code = "";
    try {
        shader_module321_code = await fs.readFile('out/shader_module321.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module321 = await device32.createShaderModule({ code: shader_module321_code })

    buffer100.destroy()

    const command_encoder320 = device32.createCommandEncoder({ label: "command_encoder320" });

    var shader_module114_code = "";
    try {
        shader_module114_code = await fs.readFile('out/shader_module114.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module114 = await device11.createShaderModule({ code: shader_module114_code })

    console.log(adapter1.features.size);

    for (const value of adapter1.features.keys()) {
        console.log(value);
    }

    console.log(adapter1.isFallbackAdapter);

    console.log(adapter1.limits.size);

    for (const [key, value] of Object.entries(adapter1.limits)) {
        console.log(key);
        console.log(value);
    }

    {
        const adapterInfo = await adapter1.requestAdapterInfo();
        console.log(adapterInfo.vendor);
        console.log(adapterInfo.architecture);
        console.log(adapterInfo.device);
        console.log(adapterInfo.description);
    }

    device02.queue.onSubmittedWorkDone();

    const buffer102 = device10.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });

    const compute_pass_encoder0200 = command_encoder020.beginComputePass({ label: "compute_pass_encoder0200" });

    const render_pass_encoder3200 = command_encoder320.beginRenderPass({
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3200,
            },
        ],
        occlusionQuerySet: null
    });

    render_bundle_encoder320.pushDebugGroup("group_marker");

    {
        const shaderInfo = await shader_module114.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const adapter6 = await navigator.gpu.requestAdapter({
                powerPreference: "low-power",
                label: "adapter6"
            });

    command_encoder320.insertDebugMarker("mymarker");

    {
        const buffer = buffer013
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    console.log(adapter6.features.size);

    for (const value of adapter6.features.keys()) {
        console.log(value);
    }

    console.log(adapter6.isFallbackAdapter);

    console.log(adapter6.limits.size);

    for (const [key, value] of Object.entries(adapter6.limits)) {
        console.log(key);
        console.log(value);
    }

    {
        const adapterInfo = await adapter6.requestAdapterInfo();
        console.log(adapterInfo.vendor);
        console.log(adapterInfo.architecture);
        console.log(adapterInfo.device);
        console.log(adapterInfo.description);
    }

    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    render_pass_encoder3200.setBlendConstant([1.0, 0.0, 0.0, 1.0]);

    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });

    {
        const buffer = buffer200
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    var shader_module115_code = "";
    try {
        shader_module115_code = await fs.readFile('out/shader_module115.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module115 = await device11.createShaderModule({ code: shader_module115_code })

    const command_encoder310 = device31.createCommandEncoder({ label: "command_encoder310" });

    const sampler101 = device10.createSampler();

    var shader_module022_code = "";
    try {
        shader_module022_code = await fs.readFile('out/shader_module022.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module022 = await device02.createShaderModule({ code: shader_module022_code })

    device32.queue.onSubmittedWorkDone();

    compute_pass_encoder0200.insertDebugMarker("marker")

    command_encoder010.clearBuffer(buffer010);

    compute_pass_encoder1000.setPipeline(compute_pipeline100);

    const sampler310 = device31.createSampler();

    device01.queue.writeBuffer(buffer013, 0, array2, 0, array2.length);

    buffer010.destroy()

    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });

    const texture_view0111 = texture011.createView();

    {
        const texture = texture320
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

    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('crates/wg-fuzz/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ code: shader_module103_code })

    const compute_pipeline017 = await device01.createComputePipelineAsync({ layout: pipeline_layout010, compute: { module: shader_module010, entryPoint: "main" } });

    render_pass_encoder3200.pushDebugGroup("group_marker");

    const render_bundle_encoder020 = device02.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    const compute_pipeline104 = await device10.createComputePipelineAsync({ layout: pipeline_layout101, compute: { module: shader_module100, entryPoint: "main" } });

    const texture110 = device11.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });

    {
        const shaderInfo = await shader_module201.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const render_pipeline200 = device20.createRenderPipeline({
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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

    const render_bundle_encoder111 = device11.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    const compute_pipeline111 = device11.createComputePipeline({ layout: pipeline_layout110, compute: { module: shader_module114, entryPoint: "main" } });

    const bind_group_layout320 = device32.createBindGroupLayout({ 
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

    const compute_pipeline018 = await device01.createComputePipelineAsync({ layout: pipeline_layout010, compute: { module: shader_module011, entryPoint: "main" } });

    render_bundle_encoder020.pushDebugGroup("group_marker");

    render_bundle_encoder320.insertDebugMarker("marker");

    const compute_pipeline112 = await device11.createComputePipelineAsync({ layout: pipeline_layout110, compute: { module: shader_module113, entryPoint: "main" } });

    const device60 = await adapter6.requestDevice({ label: "device60" });

    {
        const buffer = buffer102
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    console.log(adapter5.features.size);

    for (const value of adapter5.features.keys()) {
        console.log(value);
    }

    console.log(adapter5.isFallbackAdapter);

    console.log(adapter5.limits.size);

    for (const [key, value] of Object.entries(adapter5.limits)) {
        console.log(key);
        console.log(value);
    }

    {
        const adapterInfo = await adapter5.requestAdapterInfo();
        console.log(adapterInfo.vendor);
        console.log(adapterInfo.architecture);
        console.log(adapterInfo.device);
        console.log(adapterInfo.description);
    }

    query100.destroy()

    const render_pipeline302 = await device30.createRenderPipelineAsync({
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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

    const texture_view0200 = texture020.createView();

    command_encoder010.insertDebugMarker("mymarker");

    render_bundle_encoder100.popDebugGroup();

    const compute_pipeline019 = device01.createComputePipeline({ layout: pipeline_layout010, compute: { module: shader_module012, entryPoint: "main" } });

    compute_pass_encoder1000.insertDebugMarker("marker")

    const texture310 = device31.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });

    buffer102.destroy()

    const compute_pipeline105 = await device10.createComputePipelineAsync({ layout: pipeline_layout100, compute: { module: shader_module101, entryPoint: "main" } });

    command_encoder320.insertDebugMarker("mymarker");

    const render_pipeline113 = device11.createRenderPipeline({
        vertex: {
            module: shader_module111,
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
            module: shader_module111,
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

    const sampler102 = device10.createSampler();

    const render_pipeline303 = device30.createRenderPipeline({
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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

    texture020.destroy();

    render_bundle_encoder200.setPipeline(render_pipeline200);

    const device33 = await adapter3.requestDevice({ label: "device33" });

    const compute_pipeline106 = await device10.createComputePipelineAsync({ layout: pipeline_layout101, compute: { module: shader_module100, entryPoint: "main" } });

    compute_pass_encoder0200.insertDebugMarker("marker")

    console.log(adapter4.features.size);

    for (const value of adapter4.features.keys()) {
        console.log(value);
    }

    console.log(adapter4.isFallbackAdapter);

    console.log(adapter4.limits.size);

    for (const [key, value] of Object.entries(adapter4.limits)) {
        console.log(key);
        console.log(value);
    }

    {
        const adapterInfo = await adapter4.requestAdapterInfo();
        console.log(adapterInfo.vendor);
        console.log(adapterInfo.architecture);
        console.log(adapterInfo.device);
        console.log(adapterInfo.description);
    }

    const compute_pipeline107 = await device10.createComputePipelineAsync({ layout: pipeline_layout100, compute: { module: shader_module101, entryPoint: "main" } });

    console.log(device31.features.size);

    for (const value of device31.features.keys()) {
        console.log(value);
    }

    console.log(device31.limits.size);

    for (const [key, value] of Object.entries(device31.limits)) {
        console.log(key);
        console.log(value);
    }

    device31.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    device01.queue.writeBuffer(buffer013, 0, array1, 0, array1.length);

    const render_bundle_encoder112 = device11.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    const compute_pipeline0110 = await device01.createComputePipelineAsync({ layout: pipeline_layout010, compute: { module: shader_module012, entryPoint: "main" } });

    render_bundle_encoder111.pushDebugGroup("group_marker");

    const sampler311 = device31.createSampler();

    const bind_group_layout600 = device60.createBindGroupLayout({ 
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

    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });

    {
        const texture = texture011
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

    render_pass_encoder3200.setStencilReference(1);

    const sampler020 = device02.createSampler();

    const render_pass_encoder0100 = command_encoder010.beginRenderPass({
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0110,
            },
        ],
        occlusionQuerySet: null
    });

    const buffer600 = device60.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });

    {
        const texture = texture320
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

    const pipeline_layout102 = device10.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout103]
    });

    device11.queue.submit([command_buffer110, ]);

    compute_pass_encoder1000.popDebugGroup()

    command_encoder020.popDebugGroup()

    device32.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    device02.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    const buffer103 = device10.createBuffer({
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer104 = device10.createBuffer({
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group100 = device10.createBindGroup({
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer103,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer104,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group100);

    compute_pass_encoder1000.dispatchWorkgroups(100);

    compute_pass_encoder1000.end();

    const command_buffer100 = command_encoder100.finish();

    render_pass_encoder3200.popDebugGroup();

    const command_buffer200 = command_encoder200.finish();

    const command_buffer310 = command_encoder310.finish();

    device20.queue.submit([command_buffer200, ]);

    device31.queue.submit([command_buffer310, ]);
}

init();