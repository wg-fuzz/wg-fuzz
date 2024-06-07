const { create, globals } = require('../dawn.node');
Object.assign(globalThis, globals); // Provides constants like GPUBufferUsage.MAP_READ
let navigator = { gpu: create(['enable-dawn-features=allow_unsafe_apis,disable_symbol_renaming']), };
const fs = require('node:fs/promises');

async function init() {
    if (!navigator.gpu) {
        throw Error("WebGPU not supported.");
    }

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    const array0 = new Float32Array([1.0, -0.5, -0.75, 1.0, 0.25, 0.25, 1.0, -1.0, -1.0, 1.0, 0.0, 0.25, -0.5, -0.25, 1.0, 0.0, -0.25, 0.0, 0.25, 0.5, -0.25, -1.0, 0.5, 0.25, 0.0, -0.75, -1.0, -0.75, -0.25, 0.5, 0.0, 1.0, -0.5, 0.5, 0.0, 0.75, -1.0, -0.25, -0.25, 0.5, -0.75, 1.0, -0.5, 0.25, 0.75, 0.5, 0.0, 1.0, -1.0, -0.5, 0.5, -1.0, 1.0, 0.25, -0.25, 0.25, -1.0, -0.5, -0.25, 0.75, -0.25, 0.25, -1.0, 1.0, -1.0, -1.0, 0.25, 0.5, -1.0, 0.75, 0.25, -0.5, 0.75, 1.0, 0.0, -0.25, -1.0, 0.0, 0.0, -0.5, 0.25, 0.5, 0.75, 1.0, 1.0, 0.75, -0.5, 1.0, 0.75, 0.0, -0.75, -0.25, 0.25, 0.0, -0.25, -0.75, 0.0, 0.0, 0.75, 0.75, ]);

    const adapter0 = await navigator.gpu.requestAdapter({
                powerPreference: "high-performance",
                label: "adapter0"
            });

    const adapter1 = await navigator.gpu.requestAdapter({
                powerPreference: "low-power",
                label: "adapter1"
            });

    const adapter2 = await navigator.gpu.requestAdapter({
                powerPreference: undefined,
                label: "adapter2"
            });

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

    const device00 = await adapter0.requestDevice({ label: "device00" });

    const texture000 = device00.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });

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

    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        colorFormats: []
    });

    texture000.destroy();

    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        colorFormats: []
    });

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    const bind_group_layout000 = device00.createBindGroupLayout({ 
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

    const array1 = new Float32Array([-1.0, 1.0, -1.0, -0.75, 0.75, -0.5, -0.25, -0.75, 0.0, 0.0, -0.75, -0.25, -0.5, -0.25, 0.75, 0.5, -0.25, -0.75, 0.0, -0.5, -0.5, 0.75, 0.0, -1.0, -1.0, -0.5, -0.75, 1.0, -1.0, 1.0, -0.25, 0.25, 0.5, -0.75, -0.5, 1.0, -0.5, 1.0, -0.75, 0.75, -0.5, 0.0, -0.5, 0.75, 0.25, 0.0, 0.0, 0.25, -1.0, 0.5, 0.75, 0.75, -0.75, -0.75, 0.75, 0.25, 0.0, -0.75, -1.0, 0.5, 1.0, 0.0, -0.75, 0.5, -0.75, -1.0, -0.5, 0.25, -0.5, 0.5, 1.0, 1.0, -0.75, 0.0, 0.5, 0.25, -1.0, -0.25, 0.5, -0.75, -1.0, 0.0, -1.0, -0.5, 0.25, -0.5, 0.5, 0.0, 0.0, -0.25, 1.0, 0.25, 0.75, -0.75, 1.0, -1.0, 0.5, -1.0, 0.5, -0.25, ]);

    device00.queue.onSubmittedWorkDone();

    const device20 = await adapter2.requestDevice({ label: "device20" });

    render_bundle_encoder001.pushDebugGroup("group_marker");

    device00.queue.onSubmittedWorkDone();

    const sampler200 = device20.createSampler();

    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });

    const array2 = new Float32Array([1.0, 0.25, 0.0, -0.5, 0.25, -0.25, 0.0, -0.75, 0.25, 0.5, 0.0, 0.5, -0.25, 0.5, -0.5, -0.25, -0.25, -0.75, -1.0, -1.0, -0.25, -0.5, 0.5, -0.5, 1.0, 0.5, -0.75, -1.0, -1.0, -0.75, 0.25, 0.0, -1.0, 0.5, -1.0, 0.75, -0.5, 0.25, 0.5, -0.5, 0.5, -0.5, 0.5, -0.5, -0.5, 0.75, -0.75, 0.0, -0.75, -1.0, -0.25, 0.25, 0.25, 1.0, 0.75, 0.75, -0.5, 0.5, -1.0, -1.0, -0.5, -1.0, -0.75, -0.75, -0.75, 0.5, -0.5, -0.5, 0.25, 0.75, 0.5, -0.5, 0.5, 1.0, 1.0, 0.25, -0.5, 0.0, 0.0, 1.0, -1.0, 0.0, -1.0, -0.5, 0.5, 0.25, 1.0, -0.75, -0.25, 0.0, 0.25, 0.75, 1.0, -1.0, -0.25, -0.75, 0.25, 0.25, 0.75, 0.75, ]);

    device20.queue.onSubmittedWorkDone();

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    const buffer200 = device20.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });

    const device21 = await adapter2.requestDevice({ label: "device21" });

    device20.pushErrorScope("out-of-memory");

    render_bundle_encoder000.pushDebugGroup("group_marker");

    render_bundle_encoder000.popDebugGroup();

    {
        const buffer = buffer200
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const sampler201 = device20.createSampler();

    const command_buffer200 = command_encoder200.finish();

    device21.pushErrorScope("out-of-memory");

    render_bundle_encoder001.popDebugGroup();

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    const sampler210 = device21.createSampler();

    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('out/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ code: shader_module000_code })

    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('crates/wg-fuzz/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ code: shader_module001_code })

    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });

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

    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('crates/wg-fuzz/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ code: shader_module002_code })

    const command_buffer201 = command_encoder201.finish();

    console.log(navigator.gpu.getPreferredCanvasFormat());

    const array3 = new Float32Array([-0.75, 1.0, -0.75, -0.75, 1.0, 0.0, 0.25, -0.5, 0.75, -0.25, -1.0, -1.0, -0.5, -0.75, -0.25, 0.0, -0.75, 0.5, 0.25, -0.75, 0.25, 0.25, -1.0, 0.0, 0.5, 1.0, -0.25, 0.5, 0.75, 1.0, -1.0, -0.5, 0.25, 0.25, -0.25, 0.25, 0.75, -0.5, -0.75, 0.5, -1.0, -0.75, 0.75, 0.0, -0.5, -1.0, -0.25, 0.75, -1.0, -0.25, 0.0, 0.25, 0.75, 0.5, 0.25, 0.5, -0.5, -1.0, -0.5, 0.75, -1.0, -1.0, 0.5, 1.0, 0.75, -0.5, -1.0, -0.5, 0.0, 0.5, 1.0, -0.75, -0.75, 0.75, 0.5, -0.25, 1.0, -0.25, -1.0, -1.0, 0.25, -0.25, 0.0, -1.0, 0.0, -0.5, 0.5, -0.25, -0.5, -0.75, -1.0, 0.5, -0.75, 0.75, -0.75, -0.75, 0.0, 0.25, 1.0, -1.0, ]);

    const sampler202 = device20.createSampler();

    const texture200 = device20.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8snorm",
        dimension: "2d"
    });

    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('crates/wg-fuzz/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ code: shader_module003_code })

    buffer200.destroy()

    const sampler203 = device20.createSampler();

    const render_pipeline000 = device00.createRenderPipeline({
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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

    const buffer000 = device00.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });

    var shader_module210_code = "";
    try {
        shader_module210_code = await fs.readFile('out/shader_module210.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module210 = await device21.createShaderModule({ code: shader_module210_code })

    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('out/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ code: shader_module004_code })

    device21.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    render_bundle_encoder001.pushDebugGroup("group_marker");

    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    const array4 = new Float32Array([-0.5, 0.0, -0.5, 0.5, -1.0, 0.75, 0.25, 0.25, -0.5, -0.75, 0.0, -0.25, -1.0, 1.0, 1.0, -0.75, -0.75, 0.5, -0.25, 1.0, 0.0, -0.5, 0.0, -1.0, -0.75, -0.5, 0.25, 0.75, 0.5, -0.75, 0.25, 1.0, 0.0, 0.75, 0.5, -0.5, -0.75, -0.25, 0.75, -0.75, -1.0, 1.0, -0.5, 0.5, -0.75, 0.75, 1.0, -1.0, 0.0, 0.5, -0.25, -0.5, -0.5, -0.75, 0.25, -0.5, 1.0, 0.5, 0.5, -0.5, 1.0, -1.0, 0.25, 1.0, -0.25, 1.0, 0.5, 0.75, 0.75, 0.0, -0.75, 1.0, 1.0, 1.0, 0.0, -0.75, 0.5, 1.0, -0.25, 0.5, 0.25, -0.25, -0.25, -1.0, -0.75, -0.75, -0.25, -1.0, -0.5, 0.75, -1.0, -1.0, 0.5, 1.0, -1.0, -0.25, 0.25, 1.0, 0.0, -0.75, ]);

    const sampler000 = device00.createSampler();

    const adapter3 = await navigator.gpu.requestAdapter({
                powerPreference: "low-power",
                label: "adapter3"
            });

    {
        const shaderInfo = await shader_module000.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    console.log(device00.features.size);

    for (const value of device00.features.keys()) {
        console.log(value);
    }

    console.log(device00.limits.size);

    for (const [key, value] of Object.entries(device00.limits)) {
        console.log(key);
        console.log(value);
    }

    device00.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    {
        const shaderInfo = await shader_module001.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const device22 = await adapter2.requestDevice({ label: "device22" });

    device22.queue.onSubmittedWorkDone();

    console.log(device00.features.size);

    for (const value of device00.features.keys()) {
        console.log(value);
    }

    console.log(device00.limits.size);

    for (const [key, value] of Object.entries(device00.limits)) {
        console.log(key);
        console.log(value);
    }

    device00.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });

    device00.pushErrorScope("out-of-memory");

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

    const render_pipeline001 = device00.createRenderPipeline({
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
                    format: navigator.gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto",
    });

    {
        const texture = texture200
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

    const buffer220 = device22.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    command_encoder000.pushDebugGroup("mygroupmarker")

    const render_pipeline002 = await device00.createRenderPipelineAsync({
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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

    {
        const buffer = buffer000
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const array5 = new Float32Array([-0.75, 0.0, -0.25, -1.0, -0.75, 0.5, -1.0, 0.0, 0.25, 0.25, 1.0, -0.75, 0.25, 1.0, 0.0, -0.75, 0.75, 0.75, -0.75, -0.75, 1.0, -0.5, -0.5, 0.0, -1.0, 1.0, 0.5, -0.75, -0.5, -0.25, 0.5, -0.5, 0.75, -1.0, -1.0, 0.0, -0.5, 0.0, 0.25, 1.0, 0.25, 0.5, 0.0, 0.5, 1.0, -0.75, -0.5, 0.5, -1.0, 0.5, 1.0, 0.0, -1.0, 0.25, 0.5, -1.0, 0.5, 1.0, -0.25, -0.5, 1.0, -0.75, -0.25, -0.25, 0.0, -0.25, 1.0, -0.5, -1.0, 0.5, -0.5, 0.0, -0.5, -0.75, 0.25, 0.0, -0.5, 0.0, 0.5, -0.25, -0.5, -0.5, 0.75, -0.75, 0.75, -0.25, 0.75, 1.0, -0.5, -0.75, 0.5, 0.5, 0.75, 1.0, -0.25, 1.0, -1.0, 0.25, 0.75, -0.25, ]);

    {
        const shaderInfo = await shader_module003.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    {
        const shaderInfo = await shader_module003.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    device00.queue.onSubmittedWorkDone();

    console.log(device00.features.size);

    for (const value of device00.features.keys()) {
        console.log(value);
    }

    console.log(device00.limits.size);

    for (const [key, value] of Object.entries(device00.limits)) {
        console.log(key);
        console.log(value);
    }

    device00.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    const sampler211 = device21.createSampler();

    const texture210 = device21.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    {
        const shaderInfo = await shader_module001.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    command_encoder000.popDebugGroup()

    const texture_view2100 = texture210.createView();

    console.log(device22.features.size);

    for (const value of device22.features.keys()) {
        console.log(value);
    }

    console.log(device22.limits.size);

    for (const [key, value] of Object.entries(device22.limits)) {
        console.log(key);
        console.log(value);
    }

    device22.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    render_bundle_encoder000.setPipeline(render_pipeline001);

    const adapter4 = await navigator.gpu.requestAdapter({
                powerPreference: "high-performance",
                label: "adapter4"
            });

    {
        const shaderInfo = await shader_module000.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    device22.destroy();

    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });

    const device23 = await adapter2.requestDevice({ label: "device23" });

    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('crates/wg-fuzz/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ code: shader_module200_code })

    command_encoder000.insertDebugMarker("mymarker");

    render_bundle_encoder001.setPipeline(render_pipeline002);

    var shader_module230_code = "";
    try {
        shader_module230_code = await fs.readFile('out/shader_module230.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module230 = await device23.createShaderModule({ code: shader_module230_code })

    {
        const shaderInfo = await shader_module003.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

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

    const bind_group_layout001 = device00.createBindGroupLayout({ 
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

    const sampler204 = device20.createSampler();

    const buffer230 = device23.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });

    const sampler001 = device00.createSampler();

    render_bundle_encoder000.insertDebugMarker("marker");

    {
        const shaderInfo = await shader_module000.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    device23.destroy();

    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('crates/wg-fuzz/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ code: shader_module201_code })

    console.log(device00.features.size);

    for (const value of device00.features.keys()) {
        console.log(value);
    }

    console.log(device00.limits.size);

    for (const [key, value] of Object.entries(device00.limits)) {
        console.log(key);
        console.log(value);
    }

    device00.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

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

    const bind_group_layout002 = device00.createBindGroupLayout({ 
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

    const render_pipeline200 = device20.createRenderPipeline({
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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

    console.log(device00.features.size);

    for (const value of device00.features.keys()) {
        console.log(value);
    }

    console.log(device00.limits.size);

    for (const [key, value] of Object.entries(device00.limits)) {
        console.log(key);
        console.log(value);
    }

    device00.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    {
        const shaderInfo = await shader_module002.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    device20.queue.onSubmittedWorkDone();

    var shader_module211_code = "";
    try {
        shader_module211_code = await fs.readFile('out/shader_module211.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module211 = await device21.createShaderModule({ code: shader_module211_code })

    const device30 = await adapter3.requestDevice({ label: "device30" });

    device21.destroy();

    const render_pipeline201 = await device20.createRenderPipelineAsync({
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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

    command_encoder000.pushDebugGroup("mygroupmarker")

    command_encoder001.clearBuffer(buffer000);

    device00.queue.writeBuffer(buffer000, 0, array5, 0, array5.length);

    const pipeline_layout000 = device00.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout001]
    });

    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    {
        const shaderInfo = await shader_module004.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const sampler205 = device20.createSampler();

    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });

    command_encoder001.clearBuffer(buffer000);

    const sampler002 = device00.createSampler();

    const buffer201 = device20.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });

    const texture201 = device20.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8unorm",
        dimension: "2d"
    });

    const render_pipeline003 = await device00.createRenderPipelineAsync({
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
                    format: navigator.gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto",
    });

    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);

    const device10 = await adapter1.requestDevice({ label: "device10" });

    device30.queue.onSubmittedWorkDone();

    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });

    const render_pipeline004 = device00.createRenderPipeline({
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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

    const pipeline_layout001 = device00.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout002]
    });

    device10.queue.onSubmittedWorkDone();

    const pipeline_layout002 = device00.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout002]
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

    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });

    const device40 = await adapter4.requestDevice({ label: "device40" });

    const command_buffer001 = command_encoder001.finish();

    console.log(device00.features.size);

    for (const value of device00.features.keys()) {
        console.log(value);
    }

    console.log(device00.limits.size);

    for (const [key, value] of Object.entries(device00.limits)) {
        console.log(key);
        console.log(value);
    }

    device00.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    const device24 = await adapter2.requestDevice({ label: "device24" });

    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });

    command_encoder203.insertDebugMarker("mymarker");

    command_encoder000.clearBuffer(buffer000);

    const texture240 = device24.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });

    device24.queue.onSubmittedWorkDone();

    console.log(device40.features.size);

    for (const value of device40.features.keys()) {
        console.log(value);
    }

    console.log(device40.limits.size);

    for (const [key, value] of Object.entries(device40.limits)) {
        console.log(key);
        console.log(value);
    }

    device40.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    buffer000.destroy()

    const render_pipeline202 = device20.createRenderPipeline({
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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

    render_bundle_encoder001.insertDebugMarker("marker");

    const command_buffer100 = command_encoder100.finish();

    device40.queue.onSubmittedWorkDone();

    const render_pipeline005 = await device00.createRenderPipelineAsync({
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
                    format: navigator.gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto",
    });

    const sampler240 = device24.createSampler();

    const pipeline_layout003 = device00.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout002]
    });

    const bind_group_layout240 = device24.createBindGroupLayout({ 
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

    const compute_pipeline000 = device00.createComputePipeline({ layout: pipeline_layout000, compute: { module: shader_module004, entryPoint: "main" } });

    const render_pipeline006 = device00.createRenderPipeline({
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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

    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('out/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ code: shader_module100_code })

    const texture300 = device30.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });

    const compute_pipeline001 = device00.createComputePipeline({ layout: pipeline_layout001, compute: { module: shader_module004, entryPoint: "main" } });

    const compute_pipeline002 = await device00.createComputePipelineAsync({ layout: pipeline_layout002, compute: { module: shader_module000, entryPoint: "main" } });

    device00.queue.submit([command_buffer001, ]);

    const texture400 = device40.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba16float",
        dimension: "2d"
    });

    const texture_view3000 = texture300.createView();

    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('out/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ code: shader_module400_code })

    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });

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

    device30.pushErrorScope("out-of-memory");

    const compute_pipeline003 = await device00.createComputePipelineAsync({ layout: pipeline_layout002, compute: { module: shader_module004, entryPoint: "main" } });

    const buffer202 = device20.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });

    const compute_pipeline004 = await device00.createComputePipelineAsync({ layout: pipeline_layout002, compute: { module: shader_module000, entryPoint: "main" } });

    {
        const buffer = buffer202
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

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

    {
        const shaderInfo = await shader_module004.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    device24.pushErrorScope("internal");

    {
        const shaderInfo = await shader_module002.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    texture300.destroy();

    const render_pipeline007 = device00.createRenderPipeline({
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
                    format: navigator.gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto",
    });

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

    const command_encoder240 = device24.createCommandEncoder({ label: "command_encoder240" });

    device40.queue.onSubmittedWorkDone();

    buffer201.destroy()

    const render_pipeline203 = device20.createRenderPipeline({
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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

    const texture401 = device40.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });

    var shader_module240_code = "";
    try {
        shader_module240_code = await fs.readFile('out/shader_module240.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module240 = await device24.createShaderModule({ code: shader_module240_code })

    command_encoder000.insertDebugMarker("mymarker");

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

    {
        const buffer = buffer202
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    {
        const shaderInfo = await shader_module400.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    device20.queue.onSubmittedWorkDone();

    const texture301 = device30.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });

    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });

    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('out/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ code: shader_module101_code })

    command_encoder202.insertDebugMarker("mymarker");

    const texture100 = device10.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });

    const render_pipeline008 = await device00.createRenderPipelineAsync({
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
                    format: navigator.gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto",
    });

    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });

    command_encoder240.pushDebugGroup("mygroupmarker")

    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('out/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ code: shader_module202_code })

    const device31 = await adapter3.requestDevice({ label: "device31" });

    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('out/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ code: shader_module300_code })

    const render_pipeline204 = await device20.createRenderPipelineAsync({
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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

    {
        const buffer = buffer202
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    command_encoder240.insertDebugMarker("mymarker");

    texture200.destroy();

    command_encoder202.insertDebugMarker("mymarker");

    const command_encoder310 = device31.createCommandEncoder({ label: "command_encoder310" });

    command_encoder000.insertDebugMarker("mymarker");

    command_encoder240.popDebugGroup()

    {
        const shaderInfo = await shader_module100.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const render_pipeline205 = await device20.createRenderPipelineAsync({
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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

    device30.queue.writeTexture({ texture: texture301 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });

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

    command_encoder310.pushDebugGroup("mygroupmarker")

    const compute_pipeline005 = device00.createComputePipeline({ layout: pipeline_layout003, compute: { module: shader_module000, entryPoint: "main" } });

    const array6 = new Float32Array([0.25, 0.5, -0.25, -0.5, 0.5, -0.75, 0.5, 0.75, 1.0, 0.75, -0.75, 0.0, -0.25, 0.5, 0.25, -0.25, -0.75, 0.0, 0.25, -0.25, 0.0, 0.5, 1.0, -0.5, 0.0, -0.5, 1.0, 0.5, -1.0, 0.75, 1.0, -0.75, -0.5, 0.75, -0.75, -0.5, 0.0, -0.25, 0.0, -0.25, -1.0, 0.75, -0.25, -0.25, -0.5, -0.5, 1.0, 1.0, 0.0, -1.0, 0.0, 0.0, -0.75, 0.5, -0.5, -1.0, -1.0, 0.5, -1.0, -0.25, -0.75, 0.0, 0.75, -0.75, 0.5, 0.0, -0.75, 1.0, 0.5, 0.0, 0.0, -0.25, 0.5, -0.5, 1.0, -0.5, -0.75, 0.75, 0.5, 0.25, 1.0, 1.0, -0.5, 1.0, 0.0, -0.25, 0.25, -0.5, 0.75, -0.25, 1.0, 0.0, 0.0, 1.0, 0.25, -0.25, 0.25, -0.5, -0.75, -1.0, ]);

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

    {
        const shaderInfo = await shader_module000.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    device00.pushErrorScope("internal");

    texture201.destroy();

    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });

    const array7 = new Float32Array([1.0, -0.5, 0.0, -0.25, 0.5, -0.25, -0.75, 0.25, -0.25, -1.0, 0.5, -0.5, 1.0, 1.0, 1.0, -1.0, 0.0, 0.0, -0.25, -0.5, 0.0, -0.25, 0.0, 1.0, 1.0, 0.5, -1.0, -0.25, 0.0, 0.0, 0.25, 0.25, 1.0, 1.0, -0.5, 0.25, 0.25, 0.75, 0.25, -0.25, -0.75, -0.25, -1.0, 0.0, -0.75, -1.0, 0.25, -1.0, 0.75, 0.25, -0.75, 0.5, -0.5, 0.0, -0.5, 0.75, 0.75, 0.25, 0.5, 1.0, 0.0, 0.0, -0.75, -1.0, 0.75, 0.0, 1.0, -1.0, 0.75, -0.25, 0.5, 0.25, -0.75, -0.75, 0.5, 0.25, -1.0, -0.5, -0.25, 0.5, -0.75, -0.5, -0.25, -0.25, 0.75, 0.25, -1.0, -0.5, 0.5, 0.5, 0.75, 0.0, 0.0, 0.0, -1.0, -1.0, -0.75, 0.75, -0.5, 0.0, ]);

    const buffer310 = device31.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });

    var shader_module310_code = "";
    try {
        shader_module310_code = await fs.readFile('out/shader_module310.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module310 = await device31.createShaderModule({ code: shader_module310_code })

    const render_pipeline009 = device00.createRenderPipeline({
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
                    format: navigator.gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto",
    });

    const render_pipeline206 = device20.createRenderPipeline({
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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

    const sampler100 = device10.createSampler();

    const buffer400 = device40.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });

    device10.queue.onSubmittedWorkDone();

    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    const buffer300 = device30.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });

    var shader_module241_code = "";
    try {
        shader_module241_code = await fs.readFile('out/shader_module241.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module241 = await device24.createShaderModule({ code: shader_module241_code })

    const device11 = await adapter1.requestDevice({ label: "device11" });

    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        colorFormats: []
    });

    render_bundle_encoder000.pushDebugGroup("group_marker");

    device30.queue.onSubmittedWorkDone();

    const sampler101 = device10.createSampler();

    const compute_pipeline006 = await device00.createComputePipelineAsync({ layout: pipeline_layout003, compute: { module: shader_module004, entryPoint: "main" } });

    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });

    render_bundle_encoder300.insertDebugMarker("marker");

    device30.destroy();

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

    const adapter5 = await navigator.gpu.requestAdapter({
                powerPreference: undefined,
                label: "adapter5"
            });

    command_encoder310.popDebugGroup()

    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('out/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ code: shader_module102_code })

    {
        const shaderInfo = await shader_module200.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const buffer100 = device10.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });

    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('out/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ code: shader_module203_code })

    const sampler206 = device20.createSampler();

    command_encoder203.insertDebugMarker("mymarker");

    const command_buffer204 = command_encoder204.finish();

    {
        const shaderInfo = await shader_module203.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const compute_pipeline007 = await device00.createComputePipelineAsync({ layout: pipeline_layout002, compute: { module: shader_module004, entryPoint: "main" } });

    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });

    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });

    const command_buffer203 = command_encoder203.finish();

    console.log(device40.features.size);

    for (const value of device40.features.keys()) {
        console.log(value);
    }

    console.log(device40.limits.size);

    for (const [key, value] of Object.entries(device40.limits)) {
        console.log(key);
        console.log(value);
    }

    device40.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    const pipeline_layout100 = device10.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout100]
    });

    command_encoder400.insertDebugMarker("mymarker");

    compute_pass_encoder2020.pushDebugGroup("group_marker")

    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);

    device31.queue.onSubmittedWorkDone();

    {
        const shaderInfo = await shader_module002.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    command_encoder000.insertDebugMarker("mymarker");

    const texture402 = device40.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba16float",
        dimension: "2d"
    });

    {
        const buffer = buffer100
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const command_encoder241 = device24.createCommandEncoder({ label: "command_encoder241" });

    const texture_view4000 = texture400.createView();

    render_bundle_encoder001.insertDebugMarker("marker");

    device24.queue.onSubmittedWorkDone();

    var shader_module242_code = "";
    try {
        shader_module242_code = await fs.readFile('out/shader_module242.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module242 = await device24.createShaderModule({ code: shader_module242_code })

    const compute_pipeline008 = device00.createComputePipeline({ layout: pipeline_layout003, compute: { module: shader_module000, entryPoint: "main" } });

    const compute_pipeline100 = device10.createComputePipeline({ layout: pipeline_layout100, compute: { module: shader_module100, entryPoint: "main" } });

    const texture_view4020 = texture402.createView();

    {
        const texture = texture100
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

    compute_pass_encoder0020.setPipeline(compute_pipeline006);

    device40.queue.onSubmittedWorkDone();

    const render_pipeline207 = device20.createRenderPipeline({
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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

    const sampler241 = device24.createSampler();

    const sampler110 = device11.createSampler();

    console.log(device00.features.size);

    for (const value of device00.features.keys()) {
        console.log(value);
    }

    console.log(device00.limits.size);

    for (const [key, value] of Object.entries(device00.limits)) {
        console.log(key);
        console.log(value);
    }

    device00.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    const pipeline_layout200 = device20.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout200]
    });

    console.log(device20.features.size);

    for (const value of device20.features.keys()) {
        console.log(value);
    }

    console.log(device20.limits.size);

    for (const [key, value] of Object.entries(device20.limits)) {
        console.log(key);
        console.log(value);
    }

    device20.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    const buffer001 = device00.createBuffer({
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer002 = device00.createBuffer({
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group000 = device00.createBindGroup({
        layout: compute_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer001,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer002,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group000);

    texture400.destroy();

    const render_pipeline0010 = device00.createRenderPipeline({
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
                    format: navigator.gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto",
    });

    const compute_pipeline009 = device00.createComputePipeline({ layout: pipeline_layout002, compute: { module: shader_module004, entryPoint: "main" } });

    buffer202.destroy()

    const texture101 = device10.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });

    const pipeline_layout004 = device00.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout001]
    });

    device00.queue.onSubmittedWorkDone();

    command_encoder241.pushDebugGroup("mygroupmarker")

    device24.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    command_encoder241.popDebugGroup()

    command_encoder000.popDebugGroup()

    compute_pass_encoder0020.dispatchWorkgroups(100);

    const command_buffer241 = command_encoder241.finish();

    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    compute_pass_encoder2020.popDebugGroup()

    const command_buffer000 = command_encoder000.finish();

    device00.queue.submit([command_buffer000, ]);

    const command_buffer310 = command_encoder310.finish();

    device31.queue.submit([command_buffer310, ]);

    compute_pass_encoder0020.end();

    device10.queue.submit([command_buffer100, ]);

    const command_buffer240 = command_encoder240.finish();

    device24.queue.submit([command_buffer240, command_buffer241, ]);

    const command_buffer002 = command_encoder002.finish();

    device20.queue.submit([command_buffer201, command_buffer203, command_buffer204, ]);
}

init();