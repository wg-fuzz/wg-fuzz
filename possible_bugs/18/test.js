const { create, globals } = require('./dawn.node');
Object.assign(globalThis, globals); // Provides constants like GPUBufferUsage.MAP_READ
let navigator = { gpu: create(['enable-dawn-features=allow_unsafe_apis,disable_symbol_renaming']), };
const fs = require('node:fs/promises');

async function init() {
    if (!navigator.gpu) {
        throw Error("WebGPU not supported.");
    }

    const array0 = new Float32Array([-0.75, 0.5, 0.25, -0.5, 0.5, -0.75, -0.5, 0.25, -0.75, 0.0, 0.0, -0.5, -0.5, 0.75, 0.75, -1.0, 0.5, -1.0, 0.25, 0.5, 1.0, -0.75, 0.25, 0.25, 0.5, -0.25, 0.75, 0.25, 1.0, 1.0, 0.25, 0.5, 0.0, -1.0, -0.25, 1.0, 0.75, -0.25, 0.0, 0.25, -0.5, 0.0, 0.75, -0.25, -1.0, -0.75, -0.25, 0.25, 0.25, 1.0, 0.0, 0.0, 0.5, 0.75, -0.75, -0.5, -0.5, -0.75, 1.0, -0.75, -0.75, 0.5, 0.25, -0.25, -0.25, 0.75, 0.75, -1.0, -0.5, 1.0, 1.0, -1.0, 0.0, -0.25, -0.5, 0.5, 0.25, -1.0, 0.25, 0.25, 0.5, 1.0, 0.75, 0.0, -0.5, -0.75, 0.75, 0.75, 0.5, -0.25, 0.5, -0.75, 1.0, -1.0, -1.0, -1.0, 1.0, -0.5, 0.5, 1.0, ]);

    console.log(navigator.gpu.getPreferredCanvasFormat());

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

    const array1 = new Float32Array([0.25, 0.25, 0.75, 0.5, 0.5, -0.75, 0.0, -0.5, -0.75, -0.25, -1.0, 0.5, 0.75, 0.0, 0.5, -0.25, 1.0, 0.0, 0.75, 0.25, -0.25, 0.25, -0.25, -0.75, 0.75, 0.5, 1.0, 0.5, 0.5, -1.0, 1.0, -1.0, -1.0, 0.75, 0.5, 0.75, 0.5, 1.0, 0.75, 0.75, 0.0, -0.75, -0.75, -0.5, 1.0, 0.5, -0.5, 0.75, -0.25, -0.25, -0.25, 0.5, -0.25, 0.5, 1.0, 0.0, 0.5, -1.0, 0.75, -0.25, 1.0, -0.25, 0.0, 1.0, -0.75, -0.75, 0.75, 0.5, 1.0, 1.0, -0.25, -1.0, 0.25, 0.0, -0.75, -0.75, 0.0, 0.5, 0.75, -0.75, 1.0, 0.5, 0.75, -0.25, -0.5, -1.0, 0.5, -1.0, -0.5, -1.0, 0.25, 0.75, 0.5, 0.0, 0.25, -0.75, -1.0, -1.0, 0.5, 0.75, ]);

    const adapter0 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance",
        label: "adapter0"
    });

    console.log(navigator.gpu.getPreferredCanvasFormat());

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

    const array2 = new Float32Array([-0.75, -0.25, 0.75, -0.25, -0.25, -0.5, 1.0, 1.0, 0.0, 0.25, 0.5, -0.25, 0.0, 0.0, 1.0, -0.25, 1.0, 0.75, -1.0, 0.25, 1.0, 0.75, 0.25, -0.25, -0.75, 1.0, -0.25, -0.75, -1.0, 1.0, -0.25, -1.0, 1.0, 0.75, -0.75, 0.75, 1.0, 0.5, -0.75, -0.75, -1.0, 0.75, 1.0, 0.25, -1.0, 1.0, 1.0, 0.5, -0.5, 0.75, -0.25, 0.25, 0.25, 0.0, -0.25, 0.5, -0.75, -0.5, 0.0, -0.75, 0.25, -0.5, 1.0, 0.75, -0.75, 0.5, -0.5, 0.5, 0.75, 0.0, -1.0, -1.0, 0.75, -1.0, 0.5, 0.5, 0.75, 0.25, 0.5, 0.5, 0.75, -0.75, -1.0, 1.0, -0.5, 0.25, 0.25, 0.75, 0.25, 0.25, -0.5, 0.25, -0.75, -1.0, -0.25, 0.75, -0.75, 0.0, 0.0, -0.75, ]);

    console.log(navigator.gpu.getPreferredCanvasFormat());

    const device00 = await adapter0.requestDevice({ label: "device00" });

    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ code: shader_module000_code })

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

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ code: shader_module001_code })

    device00.destroy();

    console.log(navigator.gpu.getPreferredCanvasFormat());

    const device01 = await adapter0.requestDevice({ label: "device01" });

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

    const sampler010 = device01.createSampler();

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

    const sampler011 = device01.createSampler();

    const command_encoder010 = device01.createCommandEncoder({ label: "command_encoder010" });

    command_encoder010.pushDebugGroup("mygroupmarker")

    const device02 = await adapter0.requestDevice({ label: "device02" });

    var shader_module020_code = "";
    try {
        shader_module020_code = await fs.readFile('shader_module020.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module020 = await device02.createShaderModule({ code: shader_module020_code })

    device01.pushErrorScope("internal");

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

    const buffer010 = device01.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });

    const pipeline_layout010 = device01.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout010]
    });

    device01.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    const array3 = new Float32Array([1.0, 1.0, 0.5, 0.25, 0.0, -0.25, -0.5, 0.25, -1.0, -0.75, -1.0, -0.75, 1.0, -1.0, 0.5, 0.25, 0.25, 0.75, -1.0, 0.5, -0.75, -1.0, 0.75, -0.75, -0.75, -0.75, 1.0, -0.75, 0.0, 1.0, 0.5, 0.5, -1.0, 0.0, -0.5, 0.25, 1.0, 1.0, 0.5, -0.5, -0.75, -1.0, 0.25, -0.5, -0.5, -0.25, 0.5, -0.5, 1.0, 0.25, 1.0, 0.75, 0.75, -0.5, -0.75, 0.5, 0.0, 0.5, 0.25, 0.5, -0.5, 0.0, 1.0, 0.75, 0.5, 1.0, 0.25, -0.5, -1.0, 1.0, -0.5, -1.0, -1.0, -0.25, -1.0, 0.5, 0.25, 0.0, 0.5, -0.5, -0.75, 1.0, -0.5, 1.0, -0.5, 0.25, 0.0, -0.5, -0.25, 0.5, -0.25, 0.75, 1.0, -0.25, 0.5, 0.75, -0.75, -1.0, -0.25, 0.25, ]);

    command_encoder010.insertDebugMarker("mymarker");

    command_encoder010.popDebugGroup()

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

    command_encoder010.pushDebugGroup("mygroupmarker")

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

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    device01.queue.onSubmittedWorkDone();

    const device03 = await adapter0.requestDevice({ label: "device03" });

    const buffer030 = device03.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });

    console.log(navigator.gpu.getPreferredCanvasFormat());

    const texture010 = device01.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg8uint",
        dimension: "2d"
    });

    buffer010.destroy()

    const sampler030 = device03.createSampler();

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

    const pipeline_layout030 = device03.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout030]
    });

    const command_encoder030 = device03.createCommandEncoder({ label: "command_encoder030" });

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

    const command_buffer030 = command_encoder030.finish();

    texture010.destroy();

    const sampler031 = device03.createSampler();

    device03.queue.onSubmittedWorkDone();

    device01.queue.onSubmittedWorkDone();

    const pipeline_layout011 = device01.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout010]
    });

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

    const buffer011 = device01.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });

    device03.pushErrorScope("validation");

    {
        const buffer = buffer030
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    var shader_module010_code = "";
    try {
        shader_module010_code = await fs.readFile('render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module010 = await device01.createShaderModule({ code: shader_module010_code })

    var shader_module011_code = "";
    try {
        shader_module011_code = await fs.readFile('shader_module011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module011 = await device01.createShaderModule({ code: shader_module011_code })

    const pipeline_layout012 = device01.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout010]
    });

    device03.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    const buffer031 = device03.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.INDEX
    });

    const buffer012 = device01.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.INDEX
    });

    const compute_pipeline010 = await device01.createComputePipelineAsync({ layout: pipeline_layout011, compute: { module: shader_module011, entryPoint: "main" } });

    const render_pipeline010 = await device01.createRenderPipelineAsync({
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

    const compute_pipeline011 = await device01.createComputePipelineAsync({ layout: pipeline_layout010, compute: { module: shader_module011, entryPoint: "main" } });

    {
        const shaderInfo = await shader_module010.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const render_bundle_encoder010 = device01.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

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

    const adapter1 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance",
        label: "adapter1"
    });

    device01.pushErrorScope("validation");

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

    command_encoder010.insertDebugMarker("mymarker");

    const texture030 = device03.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });

    var shader_module030_code = "";
    try {
        shader_module030_code = await fs.readFile('shader_module030.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module030 = await device03.createShaderModule({ code: shader_module030_code })

    var shader_module031_code = "";
    try {
        shader_module031_code = await fs.readFile('render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module031 = await device03.createShaderModule({ code: shader_module031_code })

    device01.queue.onSubmittedWorkDone();

    const compute_pipeline012 = await device01.createComputePipelineAsync({ layout: pipeline_layout010, compute: { module: shader_module011, entryPoint: "main" } });

    var shader_module012_code = "";
    try {
        shader_module012_code = await fs.readFile('render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module012 = await device01.createShaderModule({ code: shader_module012_code })

    {
        const buffer = buffer031
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const query010 = device01.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    {
        const shaderInfo = await shader_module011.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const compute_pipeline013 = await device01.createComputePipelineAsync({ layout: pipeline_layout011, compute: { module: shader_module011, entryPoint: "main" } });

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

    {
        const shaderInfo = await shader_module031.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const query030 = device03.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    texture030.destroy();

    command_encoder010.insertDebugMarker("mymarker");

    device01.queue.onSubmittedWorkDone();

    const command_encoder011 = device01.createCommandEncoder({ label: "command_encoder011" });

    {
        const shaderInfo = await shader_module011.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    render_bundle_encoder010.pushDebugGroup("group_marker");

    const compute_pipeline014 = await device01.createComputePipelineAsync({ layout: pipeline_layout012, compute: { module: shader_module011, entryPoint: "main" } });

    {
        const shaderInfo = await shader_module011.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    buffer030.destroy()

    const compute_pipeline015 = device01.createComputePipeline({ layout: pipeline_layout011, compute: { module: shader_module011, entryPoint: "main" } });

    const pipeline_layout031 = device03.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout032]
    });

    const command_buffer011 = command_encoder011.finish();

    const compute_pipeline030 = device03.createComputePipeline({ layout: pipeline_layout030, compute: { module: shader_module030, entryPoint: "main" } });

    device03.pushErrorScope("internal");

    buffer031.destroy()

    {
        const shaderInfo = await shader_module031.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    var shader_module013_code = "";
    try {
        shader_module013_code = await fs.readFile('render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module013 = await device01.createShaderModule({ code: shader_module013_code })

    render_bundle_encoder010.insertDebugMarker("marker");

    {
        const shaderInfo = await shader_module012.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    console.log(query030.label);
    
    console.log(query030.type);
    
    console.log(query030.count);

    const render_bundle_encoder030 = device03.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    const compute_pipeline016 = device01.createComputePipeline({ layout: pipeline_layout011, compute: { module: shader_module011, entryPoint: "main" } });

    const device10 = await adapter1.requestDevice({ label: "device10" });

    buffer012.destroy()

    const compute_pipeline031 = await device03.createComputePipelineAsync({ layout: pipeline_layout031, compute: { module: shader_module030, entryPoint: "main" } });

    device01.queue.submit([command_buffer011, ]);

    const query011 = device01.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    const render_bundle_encoder011 = device01.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    const buffer013 = device01.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });

    render_bundle_encoder030.insertDebugMarker("marker");

    var shader_module014_code = "";
    try {
        shader_module014_code = await fs.readFile('shader_module014.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module014 = await device01.createShaderModule({ code: shader_module014_code })

    render_bundle_encoder010.popDebugGroup();

    {
        const shaderInfo = await shader_module011.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    render_bundle_encoder010.setPipeline(render_pipeline010);

    const compute_pipeline017 = await device01.createComputePipelineAsync({ layout: pipeline_layout012, compute: { module: shader_module014, entryPoint: "main" } });

    var shader_module032_code = "";
    try {
        shader_module032_code = await fs.readFile('shader_module032.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module032 = await device03.createShaderModule({ code: shader_module032_code })

    const sampler100 = device10.createSampler();

    const compute_pipeline018 = device01.createComputePipeline({ layout: pipeline_layout010, compute: { module: shader_module014, entryPoint: "main" } });

    const compute_pipeline032 = await device03.createComputePipelineAsync({ layout: pipeline_layout030, compute: { module: shader_module030, entryPoint: "main" } });

    var shader_module033_code = "";
    try {
        shader_module033_code = await fs.readFile('render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module033 = await device03.createShaderModule({ code: shader_module033_code })

    const render_pipeline030 = await device03.createRenderPipelineAsync({
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

    const pipeline_layout032 = device03.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout032]
    });

    command_encoder010.insertDebugMarker("mymarker");

    const render_pipeline031 = await device03.createRenderPipelineAsync({
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

    const bind_group_layout033 = device03.createBindGroupLayout({ 
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

    render_bundle_encoder030.setPipeline(render_pipeline031);

    const texture100 = device10.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });

    const sampler032 = device03.createSampler();

    const pipeline_layout033 = device03.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout032]
    });

    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });

    const texture_view1000 = texture100.createView();

    device03.queue.onSubmittedWorkDone();

    const render_pipeline011 = await device01.createRenderPipelineAsync({
        vertex: {
            module: shader_module012,
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
            module: shader_module012,
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

    const compute_pipeline019 = device01.createComputePipeline({ layout: pipeline_layout011, compute: { module: shader_module014, entryPoint: "main" } });

    render_bundle_encoder030.insertDebugMarker("marker");

    render_bundle_encoder010.pushDebugGroup("group_marker");

    texture100.destroy();

    const query100 = device10.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    const compute_pipeline033 = device03.createComputePipeline({ layout: pipeline_layout030, compute: { module: shader_module032, entryPoint: "main" } });

    const compute_pipeline0110 = await device01.createComputePipelineAsync({ layout: pipeline_layout012, compute: { module: shader_module014, entryPoint: "main" } });

    {
        const shaderInfo = await shader_module032.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    render_bundle_encoder030.pushDebugGroup("group_marker");

    query011.destroy()

    {
        const buffer = buffer011
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const query101 = device10.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    const render_pipeline012 = await device01.createRenderPipelineAsync({
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

    const query031 = device03.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    const pipeline_layout034 = device03.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout030]
    });

    const adapter2 = await navigator.gpu.requestAdapter({
        powerPreference: undefined,
        label: "adapter2"
    });

    {
        const shaderInfo = await shader_module033.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const compute_pass_encoder0100 = command_encoder010.beginComputePass({ label: "compute_pass_encoder0100" });

    query100.destroy()

    const query032 = device03.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    compute_pass_encoder0100.setPipeline(compute_pipeline018);

    device10.pushErrorScope("out-of-memory");

    const render_pipeline013 = device01.createRenderPipeline({
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

    const adapter3 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power",
        label: "adapter3"
    });

    var shader_module015_code = "";
    try {
        shader_module015_code = await fs.readFile('shader_module015.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module015 = await device01.createShaderModule({ code: shader_module015_code })

    const render_pipeline014 = await device01.createRenderPipelineAsync({
        vertex: {
            module: shader_module012,
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
            module: shader_module012,
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

    query011.destroy()

    render_bundle_encoder011.setPipeline(render_pipeline011);

    const compute_pipeline034 = device03.createComputePipeline({ layout: pipeline_layout030, compute: { module: shader_module030, entryPoint: "main" } });

    const compute_pipeline035 = device03.createComputePipeline({ layout: pipeline_layout034, compute: { module: shader_module030, entryPoint: "main" } });

    const buffer014 = device01.createBuffer({
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer015 = device01.createBuffer({
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group010 = device01.createBindGroup({
        layout: render_pipeline010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer015,
                },
            },
        ],
    });

    render_bundle_encoder010.setBindGroup(0, bind_group010);

    const buffer016 = device01.createBuffer({
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer017 = device01.createBuffer({
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group011 = device01.createBindGroup({
        layout: render_pipeline011.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer017,
                },
            },
        ],
    });

    render_bundle_encoder011.setBindGroup(0, bind_group011);

    const compute_pipeline0111 = await device01.createComputePipelineAsync({ layout: pipeline_layout010, compute: { module: shader_module015, entryPoint: "main" } });

    const buffer018 = device01.createBuffer({
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer019 = device01.createBuffer({
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group012 = device01.createBindGroup({
        layout: compute_pipeline018.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer019,
                },
            },
        ],
    });

    compute_pass_encoder0100.setBindGroup(0, bind_group012);

    query100.destroy()

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

    {
        const shaderInfo = await shader_module030.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const buffer100 = device10.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });

    {
        const buffer = buffer016
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    var shader_module016_code = "";
    try {
        shader_module016_code = await fs.readFile('shader_module016.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module016 = await device01.createShaderModule({ code: shader_module016_code })

    query011.destroy()

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

    const pipeline_layout035 = device03.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout033]
    });

    var shader_module034_code = "";
    try {
        shader_module034_code = await fs.readFile('shader_module034.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module034 = await device03.createShaderModule({ code: shader_module034_code })

    const render_pipeline032 = await device03.createRenderPipelineAsync({
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

    buffer017.destroy()

    const compute_pipeline0112 = await device01.createComputePipelineAsync({ layout: pipeline_layout010, compute: { module: shader_module011, entryPoint: "main" } });

    {
        const buffer = buffer015
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const render_pipeline015 = await device01.createRenderPipelineAsync({
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

    const compute_pipeline036 = await device03.createComputePipelineAsync({ layout: pipeline_layout031, compute: { module: shader_module034, entryPoint: "main" } });

    {
        const shaderInfo = await shader_module010.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
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

    device01.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    {
        const buffer = buffer016
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    buffer015.destroy()

    buffer019.destroy()

    const sampler012 = device01.createSampler();

    render_bundle_encoder100.pushDebugGroup("group_marker");

    const device20 = await adapter2.requestDevice({ label: "device20" });

    const compute_pipeline0113 = await device01.createComputePipelineAsync({ layout: pipeline_layout012, compute: { module: shader_module015, entryPoint: "main" } });

    const compute_pipeline0114 = device01.createComputePipeline({ layout: pipeline_layout011, compute: { module: shader_module011, entryPoint: "main" } });

    const compute_pipeline037 = await device03.createComputePipelineAsync({ layout: pipeline_layout032, compute: { module: shader_module030, entryPoint: "main" } });

    const compute_pipeline038 = await device03.createComputePipelineAsync({ layout: pipeline_layout032, compute: { module: shader_module032, entryPoint: "main" } });

    {
        const shaderInfo = await shader_module013.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const pipeline_layout100 = device10.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout101]
    });

    const render_pipeline033 = device03.createRenderPipeline({
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

    const pipeline_layout101 = device10.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout100]
    });

    const command_encoder012 = device01.createCommandEncoder({ label: "command_encoder012" });

    compute_pass_encoder0100.pushDebugGroup("group_marker")

    render_bundle_encoder100.popDebugGroup();

    const render_pipeline016 = await device01.createRenderPipelineAsync({
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

    render_bundle_encoder011.insertDebugMarker("marker");

    const compute_pipeline039 = await device03.createComputePipelineAsync({ layout: pipeline_layout033, compute: { module: shader_module030, entryPoint: "main" } });

    const render_pipeline017 = device01.createRenderPipeline({
        vertex: {
            module: shader_module012,
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
            module: shader_module012,
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

    var shader_module035_code = "";
    try {
        shader_module035_code = await fs.readFile('shader_module035.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module035 = await device03.createShaderModule({ code: shader_module035_code })

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

    const buffer101 = device10.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.INDEX
    });

    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });

    console.log(query030.label);
    
    console.log(query030.type);
    
    console.log(query030.count);

    const compute_pipeline0310 = await device03.createComputePipelineAsync({ layout: pipeline_layout033, compute: { module: shader_module034, entryPoint: "main" } });

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

    const compute_pipeline0311 = await device03.createComputePipelineAsync({ layout: pipeline_layout033, compute: { module: shader_module035, entryPoint: "main" } });

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    const compute_pipeline0312 = await device03.createComputePipelineAsync({ layout: pipeline_layout030, compute: { module: shader_module034, entryPoint: "main" } });

    const pipeline_layout102 = device10.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout100]
    });

    console.log(query010.label);
    
    console.log(query010.type);
    
    console.log(query010.count);

    const query033 = device03.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    var shader_module017_code = "";
    try {
        shader_module017_code = await fs.readFile('shader_module017.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module017 = await device01.createShaderModule({ code: shader_module017_code })

    const render_pipeline018 = device01.createRenderPipeline({
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
        layout: "auto"
    });

    const device11 = await adapter1.requestDevice({ label: "device11" });

    render_bundle_encoder100.insertDebugMarker("marker");

    const compute_pipeline0313 = await device03.createComputePipelineAsync({ layout: pipeline_layout034, compute: { module: shader_module034, entryPoint: "main" } });

    compute_pass_encoder0100.insertDebugMarker("marker")

    device10.queue.onSubmittedWorkDone();

    const compute_pipeline0115 = device01.createComputePipeline({ layout: pipeline_layout011, compute: { module: shader_module016, entryPoint: "main" } });

    {
        const shaderInfo = await shader_module012.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    render_bundle_encoder030.popDebugGroup();

    const pipeline_layout036 = device03.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout032]
    });

    const compute_pipeline0314 = await device03.createComputePipelineAsync({ layout: pipeline_layout036, compute: { module: shader_module035, entryPoint: "main" } });

    render_bundle_encoder100.pushDebugGroup("group_marker");

    const compute_pipeline0315 = device03.createComputePipeline({ layout: pipeline_layout032, compute: { module: shader_module032, entryPoint: "main" } });

    console.log(query010.label);
    
    console.log(query010.type);
    
    console.log(query010.count);

    {
        const shaderInfo = await shader_module017.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const compute_pipeline0116 = await device01.createComputePipelineAsync({ layout: pipeline_layout010, compute: { module: shader_module011, entryPoint: "main" } });

    const adapter4 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power",
        label: "adapter4"
    });

    const compute_pipeline0316 = await device03.createComputePipelineAsync({ layout: pipeline_layout032, compute: { module: shader_module034, entryPoint: "main" } });

    const compute_pipeline0317 = await device03.createComputePipelineAsync({ layout: pipeline_layout034, compute: { module: shader_module032, entryPoint: "main" } });

    const command_buffer200 = command_encoder200.finish();

    const compute_pipeline0318 = device03.createComputePipeline({ layout: pipeline_layout034, compute: { module: shader_module035, entryPoint: "main" } });

    var shader_module036_code = "";
    try {
        shader_module036_code = await fs.readFile('render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module036 = await device03.createShaderModule({ code: shader_module036_code })

    const pipeline_layout037 = device03.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout033]
    });

    const compute_pipeline0319 = device03.createComputePipeline({ layout: pipeline_layout034, compute: { module: shader_module032, entryPoint: "main" } });

    {
        const shaderInfo = await shader_module033.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

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

    const buffer032 = device03.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });

    const query012 = device01.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    const compute_pipeline0320 = await device03.createComputePipelineAsync({ layout: pipeline_layout030, compute: { module: shader_module035, entryPoint: "main" } });

    const compute_pipeline0321 = await device03.createComputePipelineAsync({ layout: pipeline_layout033, compute: { module: shader_module032, entryPoint: "main" } });

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

    const bind_group_layout012 = device01.createBindGroupLayout({ 
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
        const shaderInfo = await shader_module016.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    render_bundle_encoder100.popDebugGroup();

    buffer013.destroy()

    const compute_pipeline0322 = device03.createComputePipeline({ layout: pipeline_layout035, compute: { module: shader_module030, entryPoint: "main" } });

    const compute_pipeline0323 = device03.createComputePipeline({ layout: pipeline_layout034, compute: { module: shader_module035, entryPoint: "main" } });

    const compute_pipeline0324 = await device03.createComputePipelineAsync({ layout: pipeline_layout031, compute: { module: shader_module034, entryPoint: "main" } });

    const compute_pipeline0325 = device03.createComputePipeline({ layout: pipeline_layout031, compute: { module: shader_module032, entryPoint: "main" } });

    const compute_pipeline0117 = device01.createComputePipeline({ layout: pipeline_layout012, compute: { module: shader_module011, entryPoint: "main" } });

    const compute_pipeline0326 = device03.createComputePipeline({ layout: pipeline_layout033, compute: { module: shader_module034, entryPoint: "main" } });

    const compute_pipeline0118 = await device01.createComputePipelineAsync({ layout: pipeline_layout010, compute: { module: shader_module017, entryPoint: "main" } });

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
        const buffer = buffer032
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const device30 = await adapter3.requestDevice({ label: "device30" });

    const compute_pipeline0327 = await device03.createComputePipelineAsync({ layout: pipeline_layout035, compute: { module: shader_module030, entryPoint: "main" } });

    device11.destroy();

    const device40 = await adapter4.requestDevice({ label: "device40" });

    const compute_pipeline0328 = await device03.createComputePipelineAsync({ layout: pipeline_layout032, compute: { module: shader_module030, entryPoint: "main" } });

    const query200 = device20.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    const query102 = device10.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    const compute_pipeline0119 = await device01.createComputePipelineAsync({ layout: pipeline_layout011, compute: { module: shader_module016, entryPoint: "main" } });

    render_bundle_encoder100.insertDebugMarker("marker");

    {
        const shaderInfo = await shader_module014.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    render_bundle_encoder010.insertDebugMarker("marker");

    const compute_pipeline0329 = await device03.createComputePipelineAsync({ layout: pipeline_layout032, compute: { module: shader_module030, entryPoint: "main" } });

    const compute_pipeline0120 = await device01.createComputePipelineAsync({ layout: pipeline_layout012, compute: { module: shader_module016, entryPoint: "main" } });

    const texture300 = device30.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });

    compute_pass_encoder0100.popDebugGroup()

    const command_buffer012 = command_encoder012.finish();

    device03.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    const uint32_0100 = new Uint32Array(3);

    uint32_0100[0] = 100;
    uint32_0100[1] = 1;
    uint32_0100[2] = 1;

    const buffer0110 = device01.createBuffer({
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device01.queue.writeBuffer(buffer0110, 0, uint32_0100, 0, uint32_0100.length);

    compute_pass_encoder0100.dispatchWorkgroupsIndirect(buffer0110, 0);

    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    device01.queue.submit([command_buffer012, ]);

    device20.queue.submit([command_buffer200, ]);

    device03.queue.submit([command_buffer030, ]);

    compute_pass_encoder0100.end();

    command_encoder010.popDebugGroup()

    const command_buffer010 = command_encoder010.finish();

    device01.queue.submit([command_buffer010, ]);
}

init();