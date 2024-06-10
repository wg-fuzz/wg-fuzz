const { create, globals } = require('../dawn.node');
Object.assign(globalThis, globals); // Provides constants like GPUBufferUsage.MAP_READ
let navigator = { gpu: create(['enable-dawn-features=allow_unsafe_apis,disable_symbol_renaming']), };
const fs = require('node:fs/promises');

async function init() {
    if (!navigator.gpu) {
        throw Error("WebGPU not supported.");
    }

    console.log(navigator.gpu.getPreferredCanvasFormat());

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    const array0 = new Float32Array([-0.25, -0.75, 0.5, -0.5, 0.0, -0.25, -0.25, 0.0, 0.5, 0.75, 0.5, -1.0, 0.0, 0.75, 1.0, -1.0, 0.75, 0.25, 0.25, 0.0, 0.0, 0.25, -0.25, 0.25, 0.75, -0.25, 0.25, 0.75, 0.75, -0.25, 0.0, 1.0, -0.5, 0.0, -1.0, 1.0, -0.25, -0.5, 0.75, 0.0, 0.75, 1.0, -0.25, 0.75, 0.0, -0.5, 0.0, 0.0, -0.25, 0.5, 0.25, 0.75, 0.25, 0.0, -1.0, -0.5, -0.75, -0.75, 1.0, 0.5, 0.75, -1.0, 0.25, 0.75, 0.5, -0.75, -0.25, 0.25, 0.25, 0.75, 0.5, 0.75, 0.0, -0.5, -0.25, -1.0, 0.0, 0.5, 0.0, 0.5, -1.0, 0.25, -0.75, -0.5, -0.25, -0.75, 1.0, 0.0, 0.0, 0.75, 0.25, -0.5, -0.25, 1.0, -0.75, 1.0, -1.0, -0.75, 0.75, 1.0, ]);

    const array1 = new Float32Array([0.0, 0.75, 1.0, -0.75, -0.75, 0.0, 0.5, -0.75, 0.25, -0.25, -1.0, 0.0, -0.5, 1.0, 0.25, 1.0, 1.0, 0.0, -0.5, 0.0, 0.0, 1.0, 0.25, -1.0, 0.0, -1.0, -1.0, -1.0, -1.0, 0.5, 0.75, 1.0, 0.5, -0.75, 0.0, 0.75, 1.0, -0.25, -0.25, -0.75, 0.5, -1.0, 0.0, -0.75, 1.0, -1.0, -1.0, -0.75, -0.25, -1.0, -0.5, -0.75, 0.5, 1.0, -0.5, -0.75, 0.0, -1.0, 0.5, 0.25, 0.75, 0.0, -0.5, 0.75, -1.0, -0.75, 0.0, -1.0, 1.0, -0.5, 0.25, -0.25, 0.75, 0.75, -0.25, 0.0, -1.0, 1.0, 1.0, 0.5, 0.25, 0.25, 1.0, -0.75, -1.0, -0.25, 1.0, 0.25, 0.0, 0.75, 0.5, 0.75, -0.5, 0.25, 0.25, -0.5, 1.0, -0.5, -0.75, -0.5, ]);

    console.log(navigator.gpu.getPreferredCanvasFormat());

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    const array2 = new Float32Array([-0.75, -0.75, 1.0, -1.0, -0.5, 0.75, -1.0, 0.75, 1.0, -1.0, -0.75, 0.25, -0.75, 0.0, 1.0, 1.0, -0.75, -0.75, 0.0, 1.0, -0.5, -1.0, -0.75, -0.25, 1.0, -0.75, -0.25, 1.0, -0.25, -0.25, 1.0, 1.0, -0.75, 0.5, -1.0, 0.25, -0.5, 1.0, 0.0, 0.75, 0.25, -0.5, -1.0, 0.25, -0.75, 0.25, 0.0, 1.0, -0.75, 1.0, 0.25, -0.75, 0.75, 1.0, 0.25, -0.75, -0.75, 0.5, -1.0, -0.25, -0.75, -0.75, 0.75, -0.25, 1.0, -0.75, -0.5, -0.25, 0.0, 0.75, 0.0, -1.0, 0.0, -0.75, 0.5, -0.5, 0.0, 0.25, 0.75, 0.25, -0.75, -1.0, -0.5, 0.75, -0.25, 1.0, 0.75, -1.0, -0.5, 0.5, -0.75, -0.25, 1.0, 0.5, 0.5, -0.25, 0.0, -0.75, 0.0, -1.0, ]);

    const array3 = new Float32Array([-0.5, 1.0, -0.75, 0.25, 0.25, 1.0, 0.0, -0.75, 0.25, -0.5, -0.5, 0.5, -0.25, 0.0, 0.25, 0.75, 0.5, 0.25, 0.75, 1.0, -0.25, -1.0, -0.25, 0.5, -0.25, -0.25, 0.5, 0.25, 0.25, 1.0, -0.25, -0.25, 0.5, -1.0, -1.0, 0.75, 1.0, 0.25, 0.25, 0.75, -0.25, -1.0, 0.25, -0.5, -0.25, -0.75, 0.5, 0.5, 0.0, 1.0, 0.0, -0.5, 0.25, -1.0, -0.75, -0.25, -1.0, -0.75, -0.75, -1.0, -0.5, 1.0, 0.0, 1.0, -1.0, -0.75, -0.25, 0.5, 0.25, -0.75, 0.25, -1.0, 0.0, 1.0, 0.5, -0.75, 0.5, -0.75, -0.25, 0.0, -0.5, 1.0, 0.0, 0.0, 1.0, -0.75, -0.75, 0.0, 0.75, 0.5, -0.5, -1.0, 1.0, -0.25, -0.5, -0.25, -0.25, -0.25, -1.0, -0.75, ]);

    console.log(navigator.gpu.getPreferredCanvasFormat());

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

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

    const array4 = new Float32Array([-0.75, -0.75, -0.25, 1.0, 0.75, 0.5, 0.75, 0.5, 0.25, 1.0, 0.0, 0.25, 0.0, 0.25, 0.75, -0.5, -0.75, -0.25, -0.25, -1.0, -0.25, -0.75, 0.25, -1.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.75, 0.0, 0.5, 0.0, -1.0, 0.5, 0.5, -0.25, -0.5, -0.75, 0.0, -0.25, -0.5, -1.0, -1.0, -0.75, -1.0, 0.0, 0.75, 0.75, -0.75, 0.25, 0.25, 0.0, -0.25, -0.5, -1.0, 1.0, 1.0, 0.5, -0.5, 0.0, 0.75, -1.0, 0.5, -0.75, -0.75, 0.25, -0.75, 0.75, -1.0, 0.0, 0.5, 0.75, 0.25, -1.0, 0.0, 0.75, 1.0, -1.0, 0.0, -0.5, 1.0, 0.25, -1.0, -0.5, 1.0, 0.0, -0.5, -0.5, 0.75, -0.75, -0.25, 0.25, -0.25, -0.25, -0.5, -0.75, 0.0, 0.25, -1.0, ]);

    const adapter0 = await navigator.gpu.requestAdapter({
        powerPreference: undefined,
        label: "adapter0"
    });

    const device00 = await adapter0.requestDevice({ label: "device00" });

    const device01 = await adapter0.requestDevice({ label: "device01" });

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

    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    const query010 = device01.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    device01.destroy();

    device00.destroy();

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

    const device02 = await adapter0.requestDevice({ label: "device02" });

    device02.destroy();

    const device03 = await adapter0.requestDevice({ label: "device03" });

    device03.destroy();

    const array5 = new Float32Array([0.75, 1.0, 1.0, 1.0, 0.25, 0.5, 0.0, -0.5, 0.5, 0.0, 0.0, -0.75, 0.0, -1.0, 1.0, 0.0, 0.75, -0.75, 1.0, -0.25, 0.25, -0.75, -0.75, -0.75, 1.0, 0.25, 0.0, 0.5, -0.75, -1.0, 0.25, -0.25, 0.5, -0.25, 0.5, -1.0, 0.25, 0.75, 0.0, 0.25, 0.0, 0.25, -1.0, -1.0, 0.5, -0.5, 1.0, 0.5, -1.0, 0.0, 1.0, 0.75, -1.0, 0.0, 0.25, 0.75, -1.0, -0.5, 0.5, 0.75, 0.75, -0.75, -0.5, -0.75, 0.0, -1.0, -0.75, -0.5, 0.25, -0.25, 1.0, -1.0, 0.5, -1.0, 0.5, -0.5, -0.5, 0.0, 0.0, 0.0, -0.25, 0.75, 0.25, -0.25, 0.5, -0.75, -0.25, 0.0, -0.75, -0.25, -0.75, 0.75, 0.0, -1.0, 0.0, 0.75, 1.0, 0.25, -1.0, 0.75, ]);

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

    const device04 = await adapter0.requestDevice({ label: "device04" });

    device04.destroy();

    const device05 = await adapter0.requestDevice({ label: "device05" });

    const adapter1 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power",
        label: "adapter1"
    });

    device05.destroy();

    const device06 = await adapter0.requestDevice({ label: "device06" });

    const texture060 = device06.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r8snorm",
        dimension: "2d"
    });

    device06.queue.onSubmittedWorkDone();

    device06.destroy();

    const device10 = await adapter1.requestDevice({ label: "device10" });

    const array6 = new Float32Array([-1.0, -1.0, -0.5, -1.0, 0.75, -1.0, 0.0, -0.75, 0.5, -0.25, -0.25, -1.0, -0.5, -1.0, -0.75, -0.25, -0.5, -1.0, 1.0, -0.5, 0.5, 0.5, 0.5, -1.0, -0.25, -0.75, 0.75, -0.25, -0.75, -0.75, 0.5, 1.0, 0.25, -1.0, -0.25, -0.25, 0.75, -0.5, -0.5, 0.25, -1.0, 0.25, 1.0, -0.75, 0.5, -0.5, 0.75, 0.0, 0.25, 0.0, -0.75, 0.0, -0.5, 0.0, 0.5, -0.25, 0.75, -0.5, 0.5, 0.5, 0.5, -1.0, -0.25, 0.25, -0.5, 0.0, -1.0, 0.75, 0.0, -1.0, -0.75, -1.0, 0.75, -0.25, 0.0, 0.75, -0.5, 0.75, -0.5, 0.0, 1.0, -0.25, -1.0, 0.75, -0.5, 0.0, 1.0, -0.5, -0.25, -0.75, 0.25, -1.0, -0.5, 0.5, 0.25, -0.75, -1.0, 0.75, 0.0, 0.75, ]);

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

    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('out/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ code: shader_module100_code })

    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('crates/acv/src/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ code: shader_module101_code })

    const texture100 = device10.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });

    device10.destroy();

    const device07 = await adapter0.requestDevice({ label: "device07" });

    console.log(device07.features.size);

    for (const value of device07.features.keys()) {
        console.log(value);
    }

    console.log(device07.limits.size);

    for (const [key, value] of Object.entries(device07.limits)) {
        console.log(key);
        console.log(value);
    }

    device07.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
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

    const command_encoder070 = device07.createCommandEncoder({ label: "command_encoder070" });

    const sampler070 = device07.createSampler();

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    const buffer070 = device07.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.INDEX
    });

    {
        const buffer = buffer070
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const device08 = await adapter0.requestDevice({ label: "device08" });

    const device09 = await adapter0.requestDevice({ label: "device09" });

    const device11 = await adapter1.requestDevice({ label: "device11" });

    console.log(device07.features.size);

    for (const value of device07.features.keys()) {
        console.log(value);
    }

    console.log(device07.limits.size);

    for (const [key, value] of Object.entries(device07.limits)) {
        console.log(key);
        console.log(value);
    }

    device07.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    const buffer090 = device09.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });

    buffer070.destroy()

    var shader_module110_code = "";
    try {
        shader_module110_code = await fs.readFile('out/shader_module110.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module110 = await device11.createShaderModule({ code: shader_module110_code })

    device11.destroy();

    var shader_module070_code = "";
    try {
        shader_module070_code = await fs.readFile('out/shader_module070.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module070 = await device07.createShaderModule({ code: shader_module070_code })

    var shader_module080_code = "";
    try {
        shader_module080_code = await fs.readFile('crates/acv/src/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module080 = await device08.createShaderModule({ code: shader_module080_code })

    {
        const buffer = buffer090
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const texture090 = device09.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });

    device09.queue.writeBuffer(buffer090, 0, array1, 0, array1.length);

    device08.queue.onSubmittedWorkDone();

    const sampler080 = device08.createSampler();

    texture090.destroy();

    buffer090.destroy()

    var shader_module090_code = "";
    try {
        shader_module090_code = await fs.readFile('crates/acv/src/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module090 = await device09.createShaderModule({ code: shader_module090_code })

    {
        const shaderInfo = await shader_module070.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    command_encoder070.pushDebugGroup("mygroupmarker")

    var shader_module071_code = "";
    try {
        shader_module071_code = await fs.readFile('crates/acv/src/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module071 = await device07.createShaderModule({ code: shader_module071_code })

    const command_encoder090 = device09.createCommandEncoder({ label: "command_encoder090" });

    const render_bundle_encoder080 = device08.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    command_encoder070.insertDebugMarker("mymarker");

    {
        const shaderInfo = await shader_module080.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const buffer071 = device07.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    command_encoder070.popDebugGroup()

    const bind_group_layout070 = device07.createBindGroupLayout({ 
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

    const command_encoder091 = device09.createCommandEncoder({ label: "command_encoder091" });

    const sampler081 = device08.createSampler();

    const sampler090 = device09.createSampler();

    const buffer072 = device07.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });

    console.log(device08.features.size);

    for (const value of device08.features.keys()) {
        console.log(value);
    }

    console.log(device08.limits.size);

    for (const [key, value] of Object.entries(device08.limits)) {
        console.log(key);
        console.log(value);
    }

    device08.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    const render_bundle_encoder070 = device07.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    const render_pipeline090 = device09.createRenderPipeline({
        vertex: {
            module: shader_module090,
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
            module: shader_module090,
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

    var shader_module072_code = "";
    try {
        shader_module072_code = await fs.readFile('out/shader_module072.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module072 = await device07.createShaderModule({ code: shader_module072_code })

    const query090 = device09.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    const buffer073 = device07.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });

    const render_bundle_encoder071 = device07.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    const command_encoder080 = device08.createCommandEncoder({ label: "command_encoder080" });

    const query080 = device08.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    const command_encoder092 = device09.createCommandEncoder({ label: "command_encoder092" });

    const command_buffer070 = command_encoder070.finish();

    const compute_pass_encoder0800 = command_encoder080.beginComputePass({ label: "compute_pass_encoder0800" });

    const render_pipeline070 = device07.createRenderPipeline({
        vertex: {
            module: shader_module071,
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
            module: shader_module071,
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

    render_bundle_encoder070.pushDebugGroup("group_marker");

    var shader_module091_code = "";
    try {
        shader_module091_code = await fs.readFile('out/shader_module091.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module091 = await device09.createShaderModule({ code: shader_module091_code })

    render_bundle_encoder070.setPipeline(render_pipeline070);

    command_encoder091.pushDebugGroup("mygroupmarker")

    device09.pushErrorScope("validation");

    const pipeline_layout070 = device07.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout070]
    });

    const device12 = await adapter1.requestDevice({ label: "device12" });

    const compute_pipeline070 = await device07.createComputePipelineAsync({ layout: pipeline_layout070, compute: { module: shader_module070, entryPoint: "main" } });

    const render_bundle_encoder120 = device12.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    {
        const buffer = buffer073
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const bind_group_layout071 = device07.createBindGroupLayout({ 
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

    render_bundle_encoder120.insertDebugMarker("marker");

    command_encoder092.pushDebugGroup("mygroupmarker")

    const buffer091 = device09.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const render_bundle_encoder081 = device08.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    const bind_group_layout090 = device09.createBindGroupLayout({ 
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

    const buffer120 = device12.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });

    var shader_module073_code = "";
    try {
        shader_module073_code = await fs.readFile('out/shader_module073.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module073 = await device07.createShaderModule({ code: shader_module073_code })

    const sampler082 = device08.createSampler();

    render_bundle_encoder071.insertDebugMarker("marker");

    console.log(device09.features.size);

    for (const value of device09.features.keys()) {
        console.log(value);
    }

    console.log(device09.limits.size);

    for (const [key, value] of Object.entries(device09.limits)) {
        console.log(key);
        console.log(value);
    }

    device09.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    console.log(device08.features.size);

    for (const value of device08.features.keys()) {
        console.log(value);
    }

    console.log(device08.limits.size);

    for (const [key, value] of Object.entries(device08.limits)) {
        console.log(key);
        console.log(value);
    }

    device08.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    const adapter2 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power",
        label: "adapter2"
    });

    console.log(query080.label);
    
    console.log(query080.type);
    
    console.log(query080.count);

    const texture070 = device07.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });

    {
        const buffer = buffer120
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const compute_pipeline071 = await device07.createComputePipelineAsync({ layout: pipeline_layout070, compute: { module: shader_module073, entryPoint: "main" } });

    const bind_group_layout120 = device12.createBindGroupLayout({ 
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

    console.log(query090.label);
    
    console.log(query090.type);
    
    console.log(query090.count);

    const buffer074 = device07.createBuffer({
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer075 = device07.createBuffer({
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group070 = device07.createBindGroup({
        layout: render_pipeline070.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer074,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer075,
                },
            },
        ],
    });

    render_bundle_encoder070.setBindGroup(0, bind_group070);

    const query070 = device07.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    const compute_pipeline072 = await device07.createComputePipelineAsync({ layout: pipeline_layout070, compute: { module: shader_module072, entryPoint: "main" } });

    render_bundle_encoder071.pushDebugGroup("group_marker");

    const pipeline_layout090 = device09.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout090]
    });

    const render_bundle_encoder121 = device12.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    render_bundle_encoder070.setVertexBuffer(0, buffer072);

    render_bundle_encoder071.insertDebugMarker("marker");

    const query071 = device07.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    command_encoder092.popDebugGroup()

    {
        const buffer = buffer074
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    {
        const shaderInfo = await shader_module080.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    {
        const shaderInfo = await shader_module091.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    render_bundle_encoder070.setIndexBuffer(buffer070, "uint16");

    render_bundle_encoder081.pushDebugGroup("group_marker");

    device12.pushErrorScope("out-of-memory");

    const command_encoder071 = device07.createCommandEncoder({ label: "command_encoder071" });

    render_bundle_encoder080.insertDebugMarker("marker");

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    const compute_pass_encoder0710 = command_encoder071.beginComputePass({ label: "compute_pass_encoder0710" });

    const device20 = await adapter2.requestDevice({ label: "device20" });

    {
        const shaderInfo = await shader_module090.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('out/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ code: shader_module200_code })

    const compute_pass_encoder0900 = command_encoder090.beginComputePass({ label: "compute_pass_encoder0900" });

    device08.pushErrorScope("validation");

    const compute_pipeline073 = device07.createComputePipeline({ layout: pipeline_layout070, compute: { module: shader_module072, entryPoint: "main" } });

    const render_bundle_encoder090 = device09.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    render_bundle_encoder070.drawIndexed(3);

    {
        const buffer = buffer071
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const compute_pass_encoder0910 = command_encoder091.beginComputePass({ label: "compute_pass_encoder0910" });

    {
        const buffer = buffer073
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    {
        const shaderInfo = await shader_module091.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    buffer071.destroy()

    const compute_pipeline074 = await device07.createComputePipelineAsync({ layout: pipeline_layout070, compute: { module: shader_module072, entryPoint: "main" } });

    const query072 = device07.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    const query091 = device09.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    const query120 = device12.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    const bind_group_layout080 = device08.createBindGroupLayout({ 
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

    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('out/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ code: shader_module201_code })

    command_encoder071.pushDebugGroup("mygroupmarker")

    compute_pass_encoder0710.setPipeline(compute_pipeline072);

    const texture200 = device20.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });

    const buffer200 = device20.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });

    buffer200.destroy()

    command_encoder092.pushDebugGroup("mygroupmarker")

    const sampler200 = device20.createSampler();

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

    render_bundle_encoder121.insertDebugMarker("marker");

    query072.destroy()

    const command_encoder072 = device07.createCommandEncoder({ label: "command_encoder072" });

    const compute_pipeline075 = await device07.createComputePipelineAsync({ layout: pipeline_layout070, compute: { module: shader_module072, entryPoint: "main" } });

    const adapter3 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power",
        label: "adapter3"
    });

    {
        const texture = texture070
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

    const array7 = new Float32Array([0.0, 0.75, 0.0, -0.25, -0.75, 0.5, 0.5, -1.0, 1.0, 0.5, -0.5, -0.25, -0.5, 0.25, -0.25, 0.5, 0.5, 0.5, -0.5, -0.5, -0.75, 0.25, 1.0, 0.75, 1.0, 0.0, 0.0, -0.5, 0.25, 0.25, -0.25, -0.5, -0.25, 0.5, 0.0, -0.75, -1.0, 0.0, 0.5, -0.25, -0.75, -1.0, -0.25, 0.75, -0.75, -0.25, -0.5, -0.75, -0.25, -1.0, -0.75, 0.0, -0.5, -0.75, 0.0, -0.5, 0.25, 1.0, 0.0, 0.25, 0.0, 0.0, -0.25, 0.25, -1.0, 0.5, -0.5, -1.0, 0.0, -0.25, -0.75, -1.0, 0.5, 0.5, 0.75, -1.0, 0.75, -0.25, -0.25, 0.0, -0.5, -0.75, -0.25, -0.75, -0.75, 0.0, 0.75, 0.0, 1.0, -0.25, 1.0, -0.25, -1.0, 0.0, 0.5, 0.75, 0.5, -1.0, 1.0, 0.25, ]);

    command_encoder092.popDebugGroup()

    render_bundle_encoder081.insertDebugMarker("marker");

    const render_bundle_encoder072 = device07.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });

    const compute_pipeline076 = await device07.createComputePipelineAsync({ layout: pipeline_layout070, compute: { module: shader_module070, entryPoint: "main" } });

    command_encoder080.insertDebugMarker("mymarker");

    {
        const shaderInfo = await shader_module201.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    {
        const buffer = buffer075
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const texture120 = device12.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });

    const texture_view1200 = texture120.createView();

    console.log(query090.label);
    
    console.log(query090.type);
    
    console.log(query090.count);

    const render_pipeline071 = await device07.createRenderPipelineAsync({
        vertex: {
            module: shader_module071,
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
            module: shader_module071,
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

    const query081 = device08.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    {
        const buffer = buffer091
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    device12.queue.onSubmittedWorkDone();

    var shader_module081_code = "";
    try {
        shader_module081_code = await fs.readFile('out/shader_module081.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module081 = await device08.createShaderModule({ code: shader_module081_code })

    const buffer076 = device07.createBuffer({
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer077 = device07.createBuffer({
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group071 = device07.createBindGroup({
        layout: compute_pipeline072.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer076,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer077,
                },
            },
        ],
    });

    compute_pass_encoder0710.setBindGroup(0, bind_group071);

    {
        const shaderInfo = await shader_module081.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    {
        const buffer = buffer076
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const buffer080 = device08.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.INDEX
    });

    render_bundle_encoder071.setPipeline(render_pipeline070);

    render_bundle_encoder072.insertDebugMarker("marker");

    query070.destroy()

    {
        const shaderInfo = await shader_module201.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    {
        const buffer = buffer072
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const command_buffer092 = command_encoder092.finish();

    {
        const shaderInfo = await shader_module080.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    render_bundle_encoder090.insertDebugMarker("marker");

    const device010 = await adapter0.requestDevice({ label: "device010" });

    render_bundle_encoder070.insertDebugMarker("marker");

    var shader_module082_code = "";
    try {
        shader_module082_code = await fs.readFile('out/shader_module082.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module082 = await device08.createShaderModule({ code: shader_module082_code })

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

    const command_buffer072 = command_encoder072.finish();

    const texture080 = device08.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });

    const sampler083 = device08.createSampler();

    device07.queue.submit([command_buffer070, ]);

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

    const buffer081 = device08.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });

    const texture_view2000 = texture200.createView();

    const render_pipeline072 = await device07.createRenderPipelineAsync({
        vertex: {
            module: shader_module071,
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
            module: shader_module071,
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

    device20.queue.writeTexture({ texture: texture200 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });

    const pipeline_layout120 = device12.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout120]
    });

    command_encoder090.insertDebugMarker("mymarker");

    {
        const shaderInfo = await shader_module081.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
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

    const texture071 = device07.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r8sint",
        dimension: "2d"
    });

    var shader_module0100_code = "";
    try {
        shader_module0100_code = await fs.readFile('crates/acv/src/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0100 = await device010.createShaderModule({ code: shader_module0100_code })

    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });

    {
        const shaderInfo = await shader_module082.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    compute_pass_encoder0910.pushDebugGroup("group_marker")

    query091.destroy()

    buffer120.destroy()

    const render_pipeline080 = await device08.createRenderPipelineAsync({
        vertex: {
            module: shader_module080,
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
            module: shader_module080,
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

    const compute_pipeline077 = await device07.createComputePipelineAsync({ layout: pipeline_layout070, compute: { module: shader_module072, entryPoint: "main" } });

    command_encoder080.pushDebugGroup("mygroupmarker")

    device12.queue.onSubmittedWorkDone();

    const device13 = await adapter1.requestDevice({ label: "device13" });

    render_bundle_encoder072.pushDebugGroup("group_marker");

    render_bundle_encoder072.popDebugGroup();

    const render_pipeline091 = device09.createRenderPipeline({
        vertex: {
            module: shader_module090,
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
            module: shader_module090,
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

    const texture_view1201 = texture120.createView();

    console.log(query080.label);
    
    console.log(query080.type);
    
    console.log(query080.count);

    {
        const shaderInfo = await shader_module072.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    render_bundle_encoder072.setPipeline(render_pipeline071);

    device20.pushErrorScope("out-of-memory");

    render_bundle_encoder121.pushDebugGroup("group_marker");

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

    const bind_group_layout091 = device09.createBindGroupLayout({ 
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

    device010.destroy();

    var shader_module130_code = "";
    try {
        shader_module130_code = await fs.readFile('crates/acv/src/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module130 = await device13.createShaderModule({ code: shader_module130_code })

    const render_bundle_encoder082 = device08.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    render_bundle_encoder080.insertDebugMarker("marker");

    render_bundle_encoder080.insertDebugMarker("marker");

    render_bundle_encoder090.setPipeline(render_pipeline091);

    device09.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    const texture_view0800 = texture080.createView();

    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });

    console.log(device12.features.size);

    for (const value of device12.features.keys()) {
        console.log(value);
    }

    console.log(device12.limits.size);

    for (const [key, value] of Object.entries(device12.limits)) {
        console.log(key);
        console.log(value);
    }

    device12.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    const pipeline_layout091 = device09.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout090]
    });

    render_bundle_encoder080.pushDebugGroup("group_marker");

    const buffer078 = device07.createBuffer({
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer079 = device07.createBuffer({
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group072 = device07.createBindGroup({
        layout: render_pipeline070.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer078,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer079,
                },
            },
        ],
    });

    render_bundle_encoder071.setBindGroup(0, bind_group072);

    buffer078.destroy()

    const command_encoder120 = device12.createCommandEncoder({ label: "command_encoder120" });

    query090.destroy()

    var shader_module074_code = "";
    try {
        shader_module074_code = await fs.readFile('crates/acv/src/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module074 = await device07.createShaderModule({ code: shader_module074_code })

    texture120.destroy();

    render_bundle_encoder120.pushDebugGroup("group_marker");

    {
        const shaderInfo = await shader_module200.getCompilationInfo();

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

    buffer079.destroy()

    device13.destroy();

    render_bundle_encoder082.setPipeline(render_pipeline080);

    const bind_group_layout081 = device08.createBindGroupLayout({ 
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
        const buffer = buffer091
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    var shader_module083_code = "";
    try {
        shader_module083_code = await fs.readFile('crates/acv/src/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module083 = await device08.createShaderModule({ code: shader_module083_code })

    const query092 = device09.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    console.log(device07.features.size);

    for (const value of device07.features.keys()) {
        console.log(value);
    }

    console.log(device07.limits.size);

    for (const [key, value] of Object.entries(device07.limits)) {
        console.log(key);
        console.log(value);
    }

    device07.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    var shader_module075_code = "";
    try {
        shader_module075_code = await fs.readFile('crates/acv/src/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module075 = await device07.createShaderModule({ code: shader_module075_code })

    const command_encoder081 = device08.createCommandEncoder({ label: "command_encoder081" });

    var shader_module076_code = "";
    try {
        shader_module076_code = await fs.readFile('out/shader_module076.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module076 = await device07.createShaderModule({ code: shader_module076_code })

    {
        const texture = texture080
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

    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });

    const buffer0710 = device07.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });

    const device011 = await adapter0.requestDevice({ label: "device011" });

    const render_bundle_encoder122 = device12.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    const render_pipeline073 = await device07.createRenderPipelineAsync({
        vertex: {
            module: shader_module071,
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
            module: shader_module071,
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

    render_bundle_encoder080.insertDebugMarker("marker");

    var shader_module092_code = "";
    try {
        shader_module092_code = await fs.readFile('out/shader_module092.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module092 = await device09.createShaderModule({ code: shader_module092_code })

    buffer0710.destroy()

    command_encoder081.pushDebugGroup("mygroupmarker")

    {
        const texture = texture071
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

    compute_pass_encoder0710.dispatchWorkgroups(100);

    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    const command_buffer200 = command_encoder200.finish();

    device07.queue.submit([command_buffer072, ]);

    command_encoder071.popDebugGroup()

    command_encoder081.popDebugGroup()

    compute_pass_encoder0710.end();

    device12.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    compute_pass_encoder0910.popDebugGroup()

    device09.queue.submit([command_buffer092, ]);

    command_encoder080.popDebugGroup()

    device20.queue.submit([command_buffer200, ]);

    device08.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    const command_buffer081 = command_encoder081.finish();

    const command_buffer120 = command_encoder120.finish();

    command_encoder091.popDebugGroup()

    const command_buffer071 = command_encoder071.finish();

    device12.queue.submit([command_buffer120, ]);

    device08.queue.submit([command_buffer081, ]);
}

init();