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

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    const adapter0 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power",
        label: "adapter0"
    });

    console.log(navigator.gpu.getPreferredCanvasFormat());

    const device00 = await adapter0.requestDevice({ label: "device00" });

    const device01 = await adapter0.requestDevice({ label: "device01" });

    const texture010 = device01.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r8unorm",
        dimension: "2d"
    });

    const texture011 = device01.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });

    device01.destroy();

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

    device00.pushErrorScope("internal");

    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('out/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ code: shader_module000_code })

    device00.queue.onSubmittedWorkDone();

    const texture000 = device00.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });

    const texture_view0000 = texture000.createView();

    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    {
        const shaderInfo = await shader_module000.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    device00.queue.onSubmittedWorkDone();

    const device02 = await adapter0.requestDevice({ label: "device02" });

    var shader_module020_code = "";
    try {
        shader_module020_code = await fs.readFile('out/shader_module020.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module020 = await device02.createShaderModule({ code: shader_module020_code })

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

    device02.destroy();

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
        shader_module001_code = await fs.readFile('crates/acv/src/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ code: shader_module001_code })

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    console.log(navigator.gpu.getPreferredCanvasFormat());

    const query000 = device00.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    const texture001 = device00.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });

    const texture002 = device00.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba32sint",
        dimension: "2d"
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

    query000.destroy()

    device00.pushErrorScope("internal");

    const texture_view0020 = texture002.createView();

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

    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    device00.queue.onSubmittedWorkDone();

    const array0 = new Float32Array([1.0, -0.25, 0.25, -0.75, -1.0, 1.0, -0.25, 0.0, 0.25, 0.75, -1.0, 0.0, 0.25, 0.75, 0.75, 0.25, 1.0, 1.0, -0.25, 0.75, -0.5, -0.5, -0.75, 0.5, -0.25, -0.25, 0.75, 0.75, 1.0, -0.25, 0.75, -1.0, -0.25, -1.0, -0.5, 1.0, 0.0, 0.5, 0.5, 0.75, 0.25, -0.25, -0.25, 0.25, -0.5, 0.5, 0.0, -0.25, -0.5, 1.0, 0.5, 0.5, 1.0, -1.0, -0.5, 0.75, 1.0, -0.25, 0.5, 0.0, -0.75, 0.75, 0.25, -0.75, 1.0, 0.75, 0.5, 1.0, 0.25, -1.0, 0.25, 0.25, -0.75, 0.0, -0.75, 0.75, -1.0, 1.0, 0.25, 0.75, -1.0, -0.5, -0.25, 0.75, 1.0, 0.75, 0.25, -0.5, 0.25, -0.25, -0.25, -0.5, -0.25, 0.0, 0.5, 0.5, 0.5, 0.75, 0.75, -0.25, ]);

    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    const device03 = await adapter0.requestDevice({ label: "device03" });

    const buffer030 = device03.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });

    var shader_module030_code = "";
    try {
        shader_module030_code = await fs.readFile('crates/acv/src/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module030 = await device03.createShaderModule({ code: shader_module030_code })

    {
        const texture = texture002
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
        const shaderInfo = await shader_module030.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const adapter1 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance",
        label: "adapter1"
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

    device03.queue.onSubmittedWorkDone();

    {
        const shaderInfo = await shader_module000.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const render_pipeline000 = device00.createRenderPipeline({
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
        layout: "auto"
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

    device03.pushErrorScope("out-of-memory");

    {
        const buffer = buffer030
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const buffer031 = device03.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });

    var shader_module031_code = "";
    try {
        shader_module031_code = await fs.readFile('crates/acv/src/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module031 = await device03.createShaderModule({ code: shader_module031_code })

    const render_pipeline030 = await device03.createRenderPipelineAsync({
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
        layout: "auto",
    });

    query000.destroy()

    const array1 = new Float32Array([0.75, 1.0, -1.0, -0.25, -0.5, 0.5, 0.0, 1.0, 1.0, -0.25, 0.5, 1.0, -1.0, -0.5, -0.25, -0.75, 0.0, -1.0, 0.0, 1.0, -0.75, 0.75, 0.5, 0.75, 0.75, 0.25, 0.0, -1.0, -0.75, 0.5, -0.25, 0.75, -0.5, -0.75, 0.0, -0.25, -0.25, 0.0, 0.0, -0.25, 0.0, -0.25, -1.0, 0.25, -1.0, -0.75, -0.25, -1.0, -0.5, 0.5, 0.0, -1.0, 0.5, 1.0, 0.0, -0.75, 0.25, -1.0, 0.5, -0.5, 0.0, -0.75, -0.75, 0.25, -0.75, -0.75, -0.5, 0.25, -0.75, -0.5, 0.75, 0.5, 0.0, 0.5, -0.25, 1.0, -1.0, -0.75, -1.0, 0.5, 1.0, -0.25, -0.25, 1.0, 0.0, 0.0, -0.5, -1.0, -0.75, -0.75, -0.5, -0.25, -0.75, 0.75, -1.0, -1.0, 0.25, 0.0, 1.0, 0.5, ]);

    const texture_view0021 = texture002.createView();

    render_bundle_encoder000.setPipeline(render_pipeline000);

    render_bundle_encoder000.pushDebugGroup("group_marker");

    const sampler000 = device00.createSampler();

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

    render_bundle_encoder000.insertDebugMarker("marker");

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

    const query030 = device03.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    device03.queue.writeBuffer(buffer031, 0, array0, 0, array0.length);

    const buffer000 = device00.createBuffer({
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer001 = device00.createBuffer({
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group000 = device00.createBindGroup({
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer000,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer001,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group000);

    const sampler030 = device03.createSampler();

    const adapter2 = await navigator.gpu.requestAdapter({
        powerPreference: undefined,
        label: "adapter2"
    });

    const texture_view0010 = texture001.createView();

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

    const texture_view0022 = texture002.createView();

    const command_encoder030 = device03.createCommandEncoder({ label: "command_encoder030" });

    query000.destroy()

    const texture003 = device00.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });

    command_encoder030.pushDebugGroup("mygroupmarker")

    const render_bundle_encoder030 = device03.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    const render_pipeline001 = await device00.createRenderPipelineAsync({
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

    const bind_group_layout030 = device03.createBindGroupLayout({ 
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
        const buffer = buffer030
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const bind_group_layout031 = device03.createBindGroupLayout({ 
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

    buffer031.destroy()

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

    const adapter3 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance",
        label: "adapter3"
    });

    {
        const shaderInfo = await shader_module031.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    {
        const texture = texture002
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

    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('crates/acv/src/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ code: shader_module002_code })

    buffer030.destroy()

    const adapter4 = await navigator.gpu.requestAdapter({
        powerPreference: undefined,
        label: "adapter4"
    });

    {
        const shaderInfo = await shader_module002.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const query001 = device00.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    const render_bundle_encoder031 = device03.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    command_encoder030.resolveQuerySet(
        query030,
        0,
        32,
        buffer030,
        0
    )

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

    render_bundle_encoder031.pushDebugGroup("group_marker");

    const buffer032 = device03.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.UNIFORM
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

    render_bundle_encoder000.insertDebugMarker("marker");

    const render_pipeline031 = device03.createRenderPipeline({
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

    render_bundle_encoder031.popDebugGroup();

    const render_bundle_encoder032 = device03.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    const texture030 = device03.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });

    console.log(query030.label);
    
    console.log(query030.type);
    
    console.log(query030.count);

    {
        const shaderInfo = await shader_module031.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    {
        const buffer = buffer000
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    buffer001.destroy()

    query030.destroy()

    const render_pipeline002 = await device00.createRenderPipelineAsync({
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

    const device04 = await adapter0.requestDevice({ label: "device04" });

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    device00.queue.onSubmittedWorkDone();

    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('crates/acv/src/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ code: shader_module003_code })

    render_bundle_encoder000.popDebugGroup();

    const texture004 = device00.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });

    var shader_module032_code = "";
    try {
        shader_module032_code = await fs.readFile('crates/acv/src/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module032 = await device03.createShaderModule({ code: shader_module032_code })

    const sampler040 = device04.createSampler();

    const adapter5 = await navigator.gpu.requestAdapter({
        powerPreference: undefined,
        label: "adapter5"
    });

    device00.queue.onSubmittedWorkDone();

    var shader_module033_code = "";
    try {
        shader_module033_code = await fs.readFile('crates/acv/src/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module033 = await device03.createShaderModule({ code: shader_module033_code })

    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    render_bundle_encoder030.setPipeline(render_pipeline031);

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

    const query002 = device00.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    const render_pipeline032 = device03.createRenderPipeline({
        vertex: {
            module: shader_module032,
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
            module: shader_module032,
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

    {
        const buffer = buffer032
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    device00.pushErrorScope("internal");

    texture002.destroy();

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

    render_bundle_encoder001.insertDebugMarker("marker");

    render_bundle_encoder031.pushDebugGroup("group_marker");

    device04.destroy();

    device00.queue.writeTexture({ texture: texture003 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });

    {
        const shaderInfo = await shader_module000.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    query001.destroy()

    {
        const shaderInfo = await shader_module003.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    render_bundle_encoder031.setPipeline(render_pipeline031);

    render_bundle_encoder032.setPipeline(render_pipeline030);

    const render_pipeline003 = device00.createRenderPipeline({
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
        layout: "auto"
    });

    const buffer033 = device03.createBuffer({
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer034 = device03.createBuffer({
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group030 = device03.createBindGroup({
        layout: render_pipeline030.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer034,
                },
            },
        ],
    });

    render_bundle_encoder032.setBindGroup(0, bind_group030);

    const sampler001 = device00.createSampler();

    {
        const shaderInfo = await shader_module003.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    query000.destroy()

    const render_pipeline004 = device00.createRenderPipeline({
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
        layout: "auto"
    });

    render_bundle_encoder000.pushDebugGroup("group_marker");

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

    const render_pipeline033 = await device03.createRenderPipelineAsync({
        vertex: {
            module: shader_module032,
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
            module: shader_module032,
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

    const texture_view0300 = texture030.createView();

    query002.destroy()

    {
        const buffer = buffer034
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const device30 = await adapter3.requestDevice({ label: "device30" });

    command_encoder030.insertDebugMarker("mymarker");

    const device40 = await adapter4.requestDevice({ label: "device40" });

    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });

    const buffer035 = device03.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });

    device00.queue.writeTexture({ texture: texture004 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });

    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('out/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ code: shader_module400_code })

    const buffer036 = device03.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
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

    const texture031 = device03.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });

    buffer032.destroy()

    command_encoder030.clearBuffer(buffer035);

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
        layout: "auto"
    });

    render_bundle_encoder001.setPipeline(render_pipeline002);

    const pipeline_layout030 = device03.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout030]
    });

    const texture_view0001 = texture000.createView();

    buffer035.destroy()

    texture030.destroy();

    const buffer300 = device30.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    const command_encoder031 = device03.createCommandEncoder({ label: "command_encoder031" });

    device40.pushErrorScope("internal");

    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });

    const device05 = await adapter0.requestDevice({ label: "device05" });

    {
        const texture = texture004
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
        const buffer = buffer300
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    texture004.destroy();

    {
        const buffer = buffer036
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    query002.destroy()

    query000.destroy()

    {
        const buffer = buffer000
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    device05.destroy();

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

    const render_pipeline034 = device03.createRenderPipeline({
        vertex: {
            module: shader_module033,
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
            module: shader_module033,
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

    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    command_encoder400.insertDebugMarker("mymarker");

    {
        const shaderInfo = await shader_module032.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const render_pipeline035 = await device03.createRenderPipelineAsync({
        vertex: {
            module: shader_module032,
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
            module: shader_module032,
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

    command_encoder031.resolveQuerySet(
        query030,
        0,
        32,
        buffer030,
        0
    )

    const device41 = await adapter4.requestDevice({ label: "device41" });

    const sampler400 = device40.createSampler();

    device30.pushErrorScope("out-of-memory");

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

    command_encoder030.popDebugGroup()

    const render_pipeline036 = device03.createRenderPipeline({
        vertex: {
            module: shader_module033,
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
            module: shader_module033,
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

    const texture_view0310 = texture031.createView();

    {
        const shaderInfo = await shader_module000.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    {
        const buffer = buffer300
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const texture032 = device03.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });

    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);

    render_bundle_encoder030.insertDebugMarker("marker");

    device41.queue.onSubmittedWorkDone();

    const render_pipeline037 = device03.createRenderPipeline({
        vertex: {
            module: shader_module032,
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
            module: shader_module032,
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

    const command_buffer030 = command_encoder030.finish();

    device41.queue.onSubmittedWorkDone();

    command_encoder031.insertDebugMarker("mymarker");

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

    texture001.destroy();

    command_encoder300.pushDebugGroup("mygroupmarker")

    console.log(navigator.gpu.getPreferredCanvasFormat());

    console.log(device41.features.size);

    for (const value of device41.features.keys()) {
        console.log(value);
    }

    console.log(device41.limits.size);

    for (const [key, value] of Object.entries(device41.limits)) {
        console.log(key);
        console.log(value);
    }

    device41.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    const device31 = await adapter3.requestDevice({ label: "device31" });

    device31.pushErrorScope("out-of-memory");

    texture031.destroy();

    {
        const texture = texture032
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

    console.log(device41.features.size);

    for (const value of device41.features.keys()) {
        console.log(value);
    }

    console.log(device41.limits.size);

    for (const [key, value] of Object.entries(device41.limits)) {
        console.log(key);
        console.log(value);
    }

    device41.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

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
        layout: "auto"
    });

    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);

    var shader_module310_code = "";
    try {
        shader_module310_code = await fs.readFile('crates/acv/src/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module310 = await device31.createShaderModule({ code: shader_module310_code })

    {
        const shaderInfo = await shader_module001.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const sampler002 = device00.createSampler();

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
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

    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('crates/acv/src/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ code: shader_module004_code })

    const query003 = device00.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('crates/acv/src/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ code: shader_module300_code })

    buffer034.destroy()

    const bind_group_layout410 = device41.createBindGroupLayout({ 
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

    command_encoder031.resolveQuerySet(
        query030,
        0,
        32,
        buffer030,
        0
    )

    const command_buffer400 = command_encoder400.finish();

    const buffer002 = device00.createBuffer({
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer003 = device00.createBuffer({
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group001 = device00.createBindGroup({
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer002,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer003,
                },
            },
        ],
    });

    render_bundle_encoder001.setBindGroup(0, bind_group001);

    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('crates/acv/src/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ code: shader_module005_code })

    const render_pipeline007 = await device00.createRenderPipelineAsync({
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

    const command_encoder410 = device41.createCommandEncoder({ label: "command_encoder410" });

    const buffer037 = device03.createBuffer({
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer038 = device03.createBuffer({
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group031 = device03.createBindGroup({
        layout: render_pipeline031.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer037,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer038,
                },
            },
        ],
    });

    render_bundle_encoder031.setBindGroup(0, bind_group031);

    var shader_module034_code = "";
    try {
        shader_module034_code = await fs.readFile('crates/acv/src/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module034 = await device03.createShaderModule({ code: shader_module034_code })

    command_encoder031.insertDebugMarker("mymarker");

    const adapter6 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power",
        label: "adapter6"
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

    const buffer039 = device03.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });

    var shader_module035_code = "";
    try {
        shader_module035_code = await fs.readFile('crates/acv/src/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module035 = await device03.createShaderModule({ code: shader_module035_code })

    {
        const buffer = buffer002
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
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

    const render_pipeline038 = await device03.createRenderPipelineAsync({
        vertex: {
            module: shader_module035,
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
            module: shader_module035,
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

    const sampler031 = device03.createSampler();

    render_bundle_encoder030.pushDebugGroup("group_marker");

    const render_pipeline310 = device31.createRenderPipeline({
        vertex: {
            module: shader_module310,
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
            module: shader_module310,
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

    const buffer400 = device40.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });

    const render_pipeline008 = device00.createRenderPipeline({
        vertex: {
            module: shader_module005,
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
            module: shader_module005,
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

    buffer036.destroy()

    const texture005 = device00.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });

    const buffer004 = device00.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });

    const render_pipeline009 = device00.createRenderPipeline({
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
        layout: "auto"
    });

    {
        const shaderInfo = await shader_module031.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    device30.queue.onSubmittedWorkDone();

    render_bundle_encoder030.popDebugGroup();

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

    command_encoder410.pushDebugGroup("mygroupmarker")

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

    const query300 = device30.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });

    device31.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    {
        const shaderInfo = await shader_module033.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    {
        const buffer = buffer038
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    buffer300.destroy()

    var shader_module036_code = "";
    try {
        shader_module036_code = await fs.readFile('crates/acv/src/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module036 = await device03.createShaderModule({ code: shader_module036_code })

    const buffer005 = device00.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });

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
        layout: "auto"
    });

    const buffer410 = device41.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    query300.destroy()

    const device60 = await adapter6.requestDevice({ label: "device60" });

    const render_pipeline039 = await device03.createRenderPipelineAsync({
        vertex: {
            module: shader_module035,
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
            module: shader_module035,
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
        const buffer = buffer038
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    buffer002.destroy()

    const sampler310 = device31.createSampler();

    buffer037.destroy()

    texture032.destroy();

    console.log(device60.features.size);

    for (const value of device60.features.keys()) {
        console.log(value);
    }

    console.log(device60.limits.size);

    for (const [key, value] of Object.entries(device60.limits)) {
        console.log(key);
        console.log(value);
    }

    device60.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    const buffer0310 = device03.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });

    const sampler410 = device41.createSampler();

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

    const texture_view0030 = texture003.createView();

    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });

    const query301 = device30.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    buffer005.destroy()

    command_encoder031.insertDebugMarker("mymarker");

    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('crates/acv/src/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ code: shader_module600_code })

    const compute_pass_encoder4100 = command_encoder410.beginComputePass({ label: "compute_pass_encoder4100" });

    const bind_group_layout032 = device03.createBindGroupLayout({ 
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

    command_encoder410.popDebugGroup()

    const command_buffer031 = command_encoder031.finish();

    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    const command_buffer401 = command_encoder401.finish();

    device40.queue.submit([command_buffer401, ]);

    device03.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    device03.queue.submit([command_buffer030, ]);

    command_encoder300.popDebugGroup()
}

init();
