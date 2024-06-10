const { create, globals } = require('../dawn.node');
Object.assign(globalThis, globals); // Provides constants like GPUBufferUsage.MAP_READ
let navigator = { gpu: create(['enable-dawn-features=allow_unsafe_apis,disable_symbol_renaming']), };
const fs = require('node:fs/promises');

async function init() {
    if (!navigator.gpu) {
        throw Error("WebGPU not supported.");
    }

    const array0 = new Float32Array([-0.5, 0.0, -1.0, -0.5, -0.5, -0.5, 0.0, 0.5, 0.0, -0.5, -0.75, 0.25, 0.5, 0.5, 0.75, 1.0, -0.25, -1.0, 0.5, 0.5, -1.0, -1.0, -0.25, 0.25, 0.75, -0.75, -0.5, 0.25, 0.25, -0.5, -0.25, -0.5, -0.25, 1.0, 0.75, -0.5, -0.25, -1.0, 1.0, 0.75, 0.5, 0.5, -1.0, 0.75, 1.0, 0.25, -0.5, 0.75, 0.5, 0.75, -0.25, 1.0, 1.0, 0.75, -0.5, -0.25, -0.25, 0.25, 0.0, 0.0, -0.75, 0.25, -1.0, 0.5, 1.0, 1.0, -0.75, -0.5, -1.0, 1.0, -1.0, 0.5, 0.75, 0.75, -0.75, -0.5, -1.0, -0.75, 0.5, 0.75, 0.0, -1.0, -0.25, -1.0, 0.0, -0.75, -0.75, -1.0, -0.5, 1.0, -0.75, -0.5, -1.0, -0.5, -0.75, -0.5, -0.75, 0.25, 0.0, -0.25, ]);

    const array1 = new Float32Array([-0.25, -0.25, -0.75, -0.75, 0.5, 0.5, -0.75, 0.75, 1.0, 0.75, 0.5, 0.25, 0.25, 0.5, 1.0, 0.5, 0.5, 1.0, -0.75, 0.0, 0.5, -0.5, 0.75, -0.5, -0.5, 0.0, 0.5, -0.25, 1.0, 1.0, -0.75, 1.0, 0.25, -0.25, -0.5, -0.25, -0.5, 0.75, 0.5, 0.5, 0.0, -0.5, 0.25, 0.5, -0.75, 0.5, 0.25, -0.25, 0.75, 0.5, 0.0, 0.75, 0.0, -0.5, 0.75, 0.75, -0.75, 0.5, -1.0, -0.25, -0.75, 0.25, 0.5, 0.5, -1.0, -0.75, -0.25, 0.25, 0.75, -0.25, -0.5, 0.0, -0.75, -1.0, -0.75, 0.0, -0.5, 1.0, -0.75, 1.0, 0.75, -0.75, 0.75, -0.25, 0.75, 0.25, 0.0, 0.75, 0.25, 0.75, 0.5, -1.0, 0.25, -0.5, -0.5, -1.0, 1.0, -0.75, -0.25, -0.75, ]);

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    const adapter0 = await navigator.gpu.requestAdapter({
                powerPreference: "low-power",
                label: "adapter0"
            });

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
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

    console.log(navigator.gpu.getPreferredCanvasFormat());

    const adapter1 = await navigator.gpu.requestAdapter({
                powerPreference: "high-performance",
                label: "adapter1"
            });

    const array2 = new Float32Array([-0.25, -0.25, 0.75, -0.75, -0.25, -0.75, -0.25, -1.0, 1.0, 0.75, -0.75, 1.0, 0.5, -1.0, -0.75, 0.5, 0.0, 0.0, 0.0, 0.25, 0.0, -0.25, 0.25, 0.0, 0.5, -1.0, 0.75, 0.25, -1.0, -0.25, 1.0, -0.75, -0.75, -0.75, -0.75, 0.75, 0.5, 0.75, -0.5, 0.0, 0.75, 0.25, 0.25, -1.0, 0.25, 0.0, 0.5, -1.0, -0.25, -0.25, -1.0, 0.25, -0.25, 0.0, 0.75, -0.25, -0.75, -1.0, 0.75, 0.0, -1.0, 0.25, 0.25, 0.0, 0.5, -0.5, -1.0, -0.75, -0.75, 1.0, -1.0, 0.25, 0.75, -0.25, 0.0, -1.0, -1.0, 0.0, 0.0, -0.5, 0.5, -0.25, 0.5, -0.75, -0.5, 0.75, 0.0, 0.5, 1.0, 0.0, -0.25, 0.75, -0.75, 0.0, -0.5, -0.75, 1.0, -0.25, 0.0, -1.0, ]);

    const array3 = new Float32Array([1.0, 0.5, 0.75, -1.0, 0.25, -0.75, 1.0, 0.25, -0.25, 1.0, 0.0, 0.75, -0.25, 0.5, 0.5, 0.75, 0.25, -0.5, 0.0, -1.0, -0.25, 0.0, -0.5, -0.25, -0.25, -1.0, -0.75, -0.5, 0.0, 0.25, 0.75, -0.5, 0.75, 0.25, 0.0, -0.25, 0.25, 0.5, 1.0, 0.25, 1.0, -0.25, -0.25, 0.5, 0.75, -1.0, -1.0, -1.0, 0.5, 0.25, -0.75, -1.0, 1.0, 1.0, -0.75, 0.5, 1.0, -0.25, 0.5, -1.0, -0.75, 0.25, 0.75, 0.5, 0.75, 1.0, 0.25, 0.25, 0.25, 0.75, -0.5, 0.0, 0.0, -1.0, 0.25, -0.75, -1.0, 0.0, 0.25, 0.0, 0.5, -0.25, -0.75, -0.25, -0.5, 1.0, -0.25, 0.75, 0.75, -0.25, -1.0, 0.75, -0.5, 0.0, 0.5, 0.25, -1.0, -1.0, -0.25, -1.0, ]);

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

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    const device10 = await adapter1.requestDevice({ label: "device10" });

    device10.queue.onSubmittedWorkDone();

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

    const device11 = await adapter1.requestDevice({ label: "device11" });

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

    const query100 = device10.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    console.log(query100.label);
    
    console.log(query100.type);
    
    console.log(query100.count);

    const render_bundle_encoder110 = device11.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    const adapter2 = await navigator.gpu.requestAdapter({
                powerPreference: "high-performance",
                label: "adapter2"
            });

    device10.queue.onSubmittedWorkDone();

    render_bundle_encoder110.insertDebugMarker("marker");

    device10.queue.onSubmittedWorkDone();

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

    const sampler110 = device11.createSampler();

    device11.pushErrorScope("internal");

    const texture110 = device11.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });

    device11.queue.onSubmittedWorkDone();

    const device20 = await adapter2.requestDevice({ label: "device20" });

    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });

    const sampler111 = device11.createSampler();

    const render_bundle_encoder111 = device11.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('crates/wg-fuzz/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ code: shader_module200_code })

    const query200 = device20.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    const device00 = await adapter0.requestDevice({ label: "device00" });

    const command_buffer200 = command_encoder200.finish();

    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('out/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ code: shader_module000_code })

    device10.pushErrorScope("internal");

    const query000 = device00.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    device20.queue.onSubmittedWorkDone();

    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('crates/wg-fuzz/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ code: shader_module100_code })

    device11.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    device20.queue.onSubmittedWorkDone();

    device11.pushErrorScope("out-of-memory");

    const texture111 = device11.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });

    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('out/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ code: shader_module101_code })

    device20.queue.onSubmittedWorkDone();

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

    render_bundle_encoder000.pushDebugGroup("group_marker");

    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('crates/wg-fuzz/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ code: shader_module001_code })

    const render_pipeline100 = await device10.createRenderPipelineAsync({
        vertex: {
            module: shader_module100,
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
            module: shader_module100,
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
        usage: GPUBufferUsage.INDEX
    });

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

    console.log(navigator.gpu.getPreferredCanvasFormat());

    const query110 = device11.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    render_bundle_encoder000.insertDebugMarker("marker");

    console.log(query000.label);
    
    console.log(query000.type);
    
    console.log(query000.count);

    {
        const shaderInfo = await shader_module200.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    {
        const texture = texture111
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

    const sampler112 = device11.createSampler();

    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });

    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('out/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ code: shader_module002_code })

    {
        const shaderInfo = await shader_module001.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const texture200 = device20.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgb10a2unorm",
        dimension: "2d"
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

    texture110.destroy();

    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    const device21 = await adapter2.requestDevice({ label: "device21" });

    {
        const shaderInfo = await shader_module101.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    query110.destroy()

    device10.queue.onSubmittedWorkDone();

    command_encoder201.pushDebugGroup("mygroupmarker")

    const render_pipeline101 = await device10.createRenderPipelineAsync({
        vertex: {
            module: shader_module100,
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
            module: shader_module100,
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

    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('crates/wg-fuzz/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ code: shader_module003_code })

    {
        const buffer = buffer000
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    var shader_module210_code = "";
    try {
        shader_module210_code = await fs.readFile('out/shader_module210.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module210 = await device21.createShaderModule({ code: shader_module210_code })

    console.log(device11.features.size);

    for (const value of device11.features.keys()) {
        console.log(value);
    }

    console.log(device11.limits.size);

    for (const [key, value] of Object.entries(device11.limits)) {
        console.log(key);
        console.log(value);
    }

    device11.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

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

    device00.queue.onSubmittedWorkDone();

    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('out/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ code: shader_module004_code })

    const render_bundle_encoder112 = device11.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    const render_pipeline001 = device00.createRenderPipeline({
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

    const render_pipeline200 = await device20.createRenderPipelineAsync({
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

    query110.destroy()

    render_bundle_encoder000.setPipeline(render_pipeline002);

    {
        const shaderInfo = await shader_module004.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    render_bundle_encoder002.insertDebugMarker("marker");

    const render_pipeline003 = await device00.createRenderPipelineAsync({
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

    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
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

    const sampler200 = device20.createSampler();

    const buffer001 = device00.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.INDEX
    });

    const query201 = device20.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    const render_bundle_encoder210 = device21.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    var shader_module211_code = "";
    try {
        shader_module211_code = await fs.readFile('crates/wg-fuzz/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module211 = await device21.createShaderModule({ code: shader_module211_code })

    buffer001.destroy()

    render_bundle_encoder001.setPipeline(render_pipeline003);

    const buffer100 = device10.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });

    command_encoder201.insertDebugMarker("mymarker");

    device10.queue.onSubmittedWorkDone();

    const render_pipeline210 = device21.createRenderPipeline({
        vertex: {
            module: shader_module211,
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
            module: shader_module211,
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

    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    device10.destroy();

    const render_pipeline004 = await device00.createRenderPipelineAsync({
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

    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('crates/wg-fuzz/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ code: shader_module201_code })

    const render_pipeline201 = device20.createRenderPipeline({
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

    device00.queue.onSubmittedWorkDone();

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

    device21.pushErrorScope("out-of-memory");

    render_bundle_encoder002.setPipeline(render_pipeline002);

    const query202 = device20.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    const render_pipeline005 = device00.createRenderPipeline({
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

    const bind_group_layout201 = device20.createBindGroupLayout({ 
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
        const shaderInfo = await shader_module200.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    device11.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    console.log(device11.features.size);

    for (const value of device11.features.keys()) {
        console.log(value);
    }

    console.log(device11.limits.size);

    for (const [key, value] of Object.entries(device11.limits)) {
        console.log(key);
        console.log(value);
    }

    device11.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('out/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ code: shader_module202_code })

    const sampler201 = device20.createSampler();

    console.log(query201.label);
    
    console.log(query201.type);
    
    console.log(query201.count);

    console.log(query000.label);
    
    console.log(query000.type);
    
    console.log(query000.count);

    const bind_group_layout202 = device20.createBindGroupLayout({ 
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

    const pipeline_layout200 = device20.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout201]
    });

    render_bundle_encoder001.pushDebugGroup("group_marker");

    const pipeline_layout201 = device20.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout201]
    });

    const pipeline_layout202 = device20.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout201]
    });

    render_bundle_encoder210.insertDebugMarker("marker");

    {
        const shaderInfo = await shader_module001.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const compute_pipeline200 = await device20.createComputePipelineAsync({ layout: pipeline_layout201, compute: { module: shader_module202, entryPoint: "main" } });

    device20.queue.onSubmittedWorkDone();

    const texture210 = device21.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8snorm",
        dimension: "2d"
    });

    buffer000.destroy()

    const buffer200 = device20.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });

    render_bundle_encoder112.insertDebugMarker("marker");

    const pipeline_layout110 = device11.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout110]
    });

    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('crates/wg-fuzz/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ code: shader_module005_code })

    const texture201 = device20.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg16sint",
        dimension: "2d"
    });

    var shader_module110_code = "";
    try {
        shader_module110_code = await fs.readFile('crates/wg-fuzz/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module110 = await device11.createShaderModule({ code: shader_module110_code })

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

    texture200.destroy();

    const pipeline_layout111 = device11.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout110]
    });

    const pipeline_layout203 = device20.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout200]
    });

    command_encoder201.resolveQuerySet(
                query202,
                0,
                32,
                buffer200,
                0
            )

    const render_pipeline202 = await device20.createRenderPipelineAsync({
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

    render_bundle_encoder200.insertDebugMarker("marker");

    const render_pipeline006 = device00.createRenderPipeline({
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

    const pipeline_layout112 = device11.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout110]
    });

    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('out/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ code: shader_module203_code })

    {
        const texture = texture201
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

    const buffer110 = device11.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });

    {
        const shaderInfo = await shader_module005.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    {
        const shaderInfo = await shader_module202.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const texture_view1110 = texture111.createView();

    const texture112 = device11.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });

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

    const render_pipeline008 = await device00.createRenderPipelineAsync({
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

    device20.queue.onSubmittedWorkDone();

    device00.destroy();

    const query111 = device11.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    device11.queue.writeTexture({ texture: texture112 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });

    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    const sampler210 = device21.createSampler();

    const texture211 = device21.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });

    const render_pipeline211 = device21.createRenderPipeline({
        vertex: {
            module: shader_module211,
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
            module: shader_module211,
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

    const compute_pipeline201 = await device20.createComputePipelineAsync({ layout: pipeline_layout201, compute: { module: shader_module203, entryPoint: "main" } });

    const texture_view2010 = texture201.createView();

    device11.queue.writeTexture({ texture: texture112 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });

    device21.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    const array4 = new Float32Array([-0.5, 0.25, 0.25, 0.5, -1.0, -0.25, 1.0, 1.0, 0.5, -0.5, -0.5, -0.5, -0.5, -0.75, -0.75, -0.5, 0.5, 0.75, 0.0, -0.75, -1.0, 0.25, -0.5, 0.0, 0.75, -0.5, -0.25, 0.25, 0.25, 0.25, 1.0, 0.75, 0.0, -0.5, 1.0, -0.5, -0.25, -0.5, 0.75, 0.5, -0.5, -0.25, 0.75, 0.75, -0.75, -0.25, -0.75, -1.0, 0.0, -0.5, -0.25, -0.25, 1.0, -0.75, -0.5, -0.5, 0.25, -0.5, 1.0, 0.75, 1.0, -0.5, 0.0, -0.75, 1.0, -0.75, 0.75, 0.25, 0.0, 0.25, 0.0, 0.25, -0.75, 0.0, -0.75, 0.75, 0.75, 0.25, 0.25, -0.5, -0.75, -1.0, 0.75, -0.5, 0.0, -0.5, -0.75, -0.5, -0.75, -0.75, 0.25, 0.75, 0.5, 0.25, -0.75, 0.25, -0.25, -0.75, 0.25, -0.5, ]);

    const sampler211 = device21.createSampler();

    device20.queue.onSubmittedWorkDone();

    render_bundle_encoder112.insertDebugMarker("marker");

    {
        const texture = texture201
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
        const shaderInfo = await shader_module200.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const texture_view1120 = texture112.createView();

    const pipeline_layout113 = device11.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout110]
    });

    device21.pushErrorScope("validation");

    device11.queue.writeTexture({ texture: texture112 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });

    console.log(query202.label);
    
    console.log(query202.type);
    
    console.log(query202.count);

    {
        const shaderInfo = await shader_module200.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const pipeline_layout204 = device20.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout201]
    });

    const compute_pipeline202 = await device20.createComputePipelineAsync({ layout: pipeline_layout201, compute: { module: shader_module202, entryPoint: "main" } });

    command_encoder201.resolveQuerySet(
                query202,
                0,
                32,
                buffer200,
                0
            )

    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    const render_pipeline212 = device21.createRenderPipeline({
        vertex: {
            module: shader_module211,
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
            module: shader_module211,
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

    const render_pipeline213 = device21.createRenderPipeline({
        vertex: {
            module: shader_module211,
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
            module: shader_module211,
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

    const compute_pipeline203 = device20.createComputePipeline({ layout: pipeline_layout203, compute: { module: shader_module203, entryPoint: "main" } });

    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query202
    });

    const texture_view1121 = texture112.createView();

    const compute_pipeline204 = await device20.createComputePipelineAsync({ layout: pipeline_layout202, compute: { module: shader_module202, entryPoint: "main" } });

    const adapter3 = await navigator.gpu.requestAdapter({
                powerPreference: "low-power",
                label: "adapter3"
            });

    const array5 = new Float32Array([1.0, 0.5, -0.25, -0.25, 0.5, -0.75, -0.75, 0.5, 0.25, 0.75, -0.75, 0.0, -1.0, 0.75, 0.75, 0.0, 1.0, 0.75, 1.0, 1.0, -1.0, -1.0, -0.25, 0.0, 0.25, 0.0, 0.75, -1.0, 0.5, 1.0, -0.75, 0.25, 0.5, 1.0, 0.5, 0.75, 0.0, 0.75, 0.5, 0.25, -0.75, 0.5, 0.75, -0.25, -0.25, -0.25, 0.5, -0.5, 0.75, -0.25, 0.5, 0.0, -0.75, -0.75, 0.75, -0.5, 1.0, -1.0, -0.75, 0.25, 0.75, -0.25, 0.25, -0.5, -1.0, -0.25, 0.25, 0.0, 0.25, 0.0, 0.5, 0.25, -0.75, -0.75, -0.75, 0.25, 0.0, -0.5, 0.75, 1.0, 1.0, -0.5, 0.75, 0.5, -0.25, 0.5, 1.0, 0.75, 0.75, 0.25, 0.25, 0.25, 1.0, -0.25, 0.25, 0.0, 0.5, 0.25, -1.0, 1.0, ]);

    const device22 = await adapter2.requestDevice({ label: "device22" });

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    device11.queue.writeBuffer(buffer110, 0, array4, 0, array4.length);

    device11.queue.writeTexture({ texture: texture112 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });

    device21.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    const bind_group_layout220 = device22.createBindGroupLayout({ 
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

    const texture202 = device20.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg16sint",
        dimension: "2d"
    });

    query200.destroy()

    var shader_module212_code = "";
    try {
        shader_module212_code = await fs.readFile('crates/wg-fuzz/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module212 = await device21.createShaderModule({ code: shader_module212_code })

    const texture_view2110 = texture211.createView();

    const device23 = await adapter2.requestDevice({ label: "device23" });

    const compute_pipeline205 = device20.createComputePipeline({ layout: pipeline_layout200, compute: { module: shader_module202, entryPoint: "main" } });

    const command_encoder230 = device23.createCommandEncoder({ label: "command_encoder230" });

    device21.destroy();

    var shader_module111_code = "";
    try {
        shader_module111_code = await fs.readFile('crates/wg-fuzz/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module111 = await device11.createShaderModule({ code: shader_module111_code })

    device22.pushErrorScope("out-of-memory");

    var shader_module230_code = "";
    try {
        shader_module230_code = await fs.readFile('out/shader_module230.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module230 = await device23.createShaderModule({ code: shader_module230_code })

    const texture_view2011 = texture201.createView();

    device11.queue.writeTexture({ texture: texture112 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });

    render_pass_encoder2010.pushDebugGroup("group_marker");

    device11.pushErrorScope("validation");

    const device01 = await adapter0.requestDevice({ label: "device01" });

    {
        const buffer = buffer110
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const device24 = await adapter2.requestDevice({ label: "device24" });

    render_bundle_encoder110.insertDebugMarker("marker");

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

    render_bundle_encoder201.pushDebugGroup("group_marker");

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    device11.queue.writeTexture({ texture: texture112 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });

    const sampler113 = device11.createSampler();

    device20.queue.submit([command_buffer200, ]);

    var shader_module231_code = "";
    try {
        shader_module231_code = await fs.readFile('out/shader_module231.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module231 = await device23.createShaderModule({ code: shader_module231_code })

    {
        const texture = texture111
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
        const shaderInfo = await shader_module202.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    command_encoder201.resolveQuerySet(
                query202,
                0,
                32,
                buffer200,
                0
            )

    render_bundle_encoder201.setPipeline(render_pipeline201);

    command_encoder230.pushDebugGroup("mygroupmarker")

    command_encoder201.resolveQuerySet(
                query201,
                0,
                32,
                buffer200,
                0
            )

    const buffer220 = device22.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.INDEX
    });

    console.log(navigator.gpu.getPreferredCanvasFormat());

    render_pass_encoder2010.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);

    device23.queue.onSubmittedWorkDone();

    const query010 = device01.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    const command_encoder240 = device24.createCommandEncoder({ label: "command_encoder240" });

    {
        const shaderInfo = await shader_module111.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    {
        const shaderInfo = await shader_module200.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const render_bundle_encoder220 = device22.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    query111.destroy()

    render_bundle_encoder220.insertDebugMarker("marker");

    const compute_pipeline206 = device20.createComputePipeline({ layout: pipeline_layout200, compute: { module: shader_module203, entryPoint: "main" } });

    render_bundle_encoder202.insertDebugMarker("marker");

    const compute_pipeline207 = device20.createComputePipeline({ layout: pipeline_layout204, compute: { module: shader_module202, entryPoint: "main" } });

    const query230 = device23.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    {
        const shaderInfo = await shader_module200.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const render_pipeline204 = await device20.createRenderPipelineAsync({
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

    {
        const buffer = buffer110
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const texture203 = device20.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });

    const compute_pipeline208 = await device20.createComputePipelineAsync({ layout: pipeline_layout204, compute: { module: shader_module203, entryPoint: "main" } });

    var shader_module010_code = "";
    try {
        shader_module010_code = await fs.readFile('out/shader_module010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module010 = await device01.createShaderModule({ code: shader_module010_code })

    {
        const shaderInfo = await shader_module201.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    {
        const shaderInfo = await shader_module231.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const command_encoder231 = device23.createCommandEncoder({ label: "command_encoder231" });

    const compute_pass_encoder2300 = command_encoder230.beginComputePass({ label: "compute_pass_encoder2300" });

    const render_bundle_encoder230 = device23.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    const texture_view2020 = texture202.createView();

    render_bundle_encoder202.setPipeline(render_pipeline201);

    const command_encoder010 = device01.createCommandEncoder({ label: "command_encoder010" });

    command_encoder230.insertDebugMarker("mymarker");

    console.log(navigator.gpu.getPreferredCanvasFormat());

    command_encoder010.pushDebugGroup("mygroupmarker")

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

    const buffer240 = device24.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });

    const compute_pipeline209 = await device20.createComputePipelineAsync({ layout: pipeline_layout203, compute: { module: shader_module202, entryPoint: "main" } });

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

    render_bundle_encoder112.insertDebugMarker("marker");

    buffer240.destroy()

    command_encoder201.resolveQuerySet(
                query201,
                0,
                32,
                buffer200,
                0
            )

    device11.queue.writeBuffer(buffer110, 0, array3, 0, array3.length);

    {
        const texture = texture111
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

    render_bundle_encoder110.pushDebugGroup("group_marker");

    const pipeline_layout205 = device20.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout200]
    });

    {
        const shaderInfo = await shader_module202.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    texture111.destroy();

    command_encoder240.pushDebugGroup("mygroupmarker")

    const device30 = await adapter3.requestDevice({ label: "device30" });

    buffer200.destroy()

    render_pass_encoder2010.setPipeline(render_pipeline202);

    const bind_group_layout203 = device20.createBindGroupLayout({ 
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

    const buffer201 = device20.createBuffer({
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer202 = device20.createBuffer({
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group200 = device20.createBindGroup({
        layout: render_pipeline202.getBindGroupLayout(0),
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

    render_pass_encoder2010.setBindGroup(0, bind_group200);

    const render_pipeline110 = device11.createRenderPipeline({
        vertex: {
            module: shader_module110,
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
            module: shader_module110,
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

    buffer220.destroy()

    render_bundle_encoder200.setPipeline(render_pipeline205);

    console.log(query201.label);
    
    console.log(query201.type);
    
    console.log(query201.count);

    device11.queue.writeTexture({ texture: texture112 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });

    const compute_pipeline2010 = device20.createComputePipeline({ layout: pipeline_layout202, compute: { module: shader_module202, entryPoint: "main" } });

    const command_encoder241 = device24.createCommandEncoder({ label: "command_encoder241" });

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

    const pipeline_layout206 = device20.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout201]
    });

    const texture300 = device30.createTexture({
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

    render_bundle_encoder110.popDebugGroup();

    render_pass_encoder2010.popDebugGroup();

    device22.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    device11.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    const command_buffer231 = command_encoder231.finish();

    command_encoder010.popDebugGroup()

    command_encoder201.popDebugGroup()

    const command_buffer010 = command_encoder010.finish();

    command_encoder240.popDebugGroup()

    const command_buffer241 = command_encoder241.finish();

    command_encoder230.popDebugGroup()

    const command_buffer240 = command_encoder240.finish();

    device24.queue.submit([command_buffer240, command_buffer241, ]);

    device01.queue.submit([command_buffer010, ]);
}

init();