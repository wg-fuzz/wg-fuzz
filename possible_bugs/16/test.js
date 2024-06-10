const { create, globals } = require('./dawn.node');
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

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    console.log(navigator.gpu.getPreferredCanvasFormat());

    console.log(navigator.gpu.getPreferredCanvasFormat());

    const adapter0 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power",
        label: "adapter0"
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

    const adapter1 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance",
        label: "adapter1"
    });

    const device10 = await adapter1.requestDevice({ label: "device10" });

    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ code: shader_module100_code })

    const texture100 = device10.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });

    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });

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

    const texture_view1000 = texture100.createView();

    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: null
    });

    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    render_pass_encoder1000.insertDebugMarker("marker");

    render_pass_encoder1000.insertDebugMarker("marker");

    const texture_view1001 = texture100.createView();

    console.log(navigator.gpu.getPreferredCanvasFormat());

    render_bundle_encoder100.insertDebugMarker("marker");

    const adapter2 = await navigator.gpu.requestAdapter({
        powerPreference: undefined,
        label: "adapter2"
    });

    command_encoder100.insertDebugMarker("mymarker");

    const adapter3 = await navigator.gpu.requestAdapter({
        powerPreference: undefined,
        label: "adapter3"
    });

    render_pass_encoder1000.insertDebugMarker("marker");

    const device30 = await adapter3.requestDevice({ label: "device30" });

    const sampler100 = device10.createSampler();

    const array0 = new Float32Array([0.75, 0.5, -0.75, -0.25, 0.0, 1.0, 0.75, 0.75, 0.75, -0.5, -0.75, -0.25, 0.75, 0.75, 0.5, -0.25, 0.25, -1.0, -0.75, -0.75, 0.5, 0.5, -0.75, -0.75, 0.75, -0.25, 0.25, 0.75, 0.5, -0.25, -0.75, 0.75, 1.0, -0.5, -0.25, 1.0, 1.0, -0.75, 0.75, 0.0, 0.0, 1.0, 0.75, 0.0, -0.75, 0.75, -0.5, 1.0, 0.0, -0.5, -0.5, 0.5, -0.25, -0.75, 0.5, -0.75, 0.25, 1.0, -1.0, -0.75, 1.0, 0.75, -0.5, -0.5, 0.75, -0.5, 1.0, -1.0, 0.5, 0.25, 0.5, 1.0, -0.75, -0.75, 0.75, 0.75, -1.0, 0.75, 0.5, 0.0, -0.25, 0.75, 1.0, -1.0, 0.75, -0.75, 0.25, -0.5, -0.75, -1.0, 0.5, 0.0, 0.75, -0.5, -1.0, -1.0, 0.0, 0.25, 0.5, -1.0, ]);

    const device00 = await adapter0.requestDevice({ label: "device00" });

    const device20 = await adapter2.requestDevice({ label: "device20" });

    device30.pushErrorScope("out-of-memory");

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

    device00.pushErrorScope("validation");

    command_encoder100.pushDebugGroup("mygroupmarker")

    device10.pushErrorScope("out-of-memory");

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

    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ code: shader_module300_code })

    const array1 = new Float32Array([-1.0, -0.5, 0.75, 0.0, 0.5, 1.0, -1.0, 0.0, 0.25, 0.75, 1.0, -0.25, -0.5, -0.25, 0.75, 0.0, 1.0, 0.0, 0.25, -1.0, 0.25, -0.5, 0.0, 0.5, -0.5, 0.5, -1.0, -0.25, -0.25, 1.0, -0.5, -0.25, 0.25, 0.25, -0.25, -1.0, 0.5, 0.75, -0.75, 0.75, 1.0, -0.75, 0.25, 0.75, 0.25, -0.75, 0.5, -1.0, -0.5, -1.0, -0.5, 0.25, 1.0, 0.5, -0.5, 0.0, 0.75, 0.0, -0.75, 0.25, -0.5, -1.0, 0.0, 1.0, -0.75, -0.25, -1.0, 0.75, 0.5, 0.0, -1.0, 0.5, -0.25, -1.0, -0.25, 0.5, -0.75, 0.5, 0.5, -1.0, -0.75, -1.0, -0.75, -0.75, -0.5, 0.5, -0.25, 0.5, 0.75, 0.0, 0.25, -0.5, 0.5, -0.25, -0.25, 0.0, 0.25, 0.75, 0.5, 0.0, ]);

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

    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);

    command_encoder100.insertDebugMarker("mymarker");

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

    const array2 = new Float32Array([0.25, -0.25, 1.0, -0.75, -0.25, -0.75, 0.75, 0.5, 0.5, 0.25, -0.25, 0.0, 0.5, 0.0, 0.75, -0.25, -0.25, -1.0, 0.5, 0.25, 0.75, -1.0, -0.5, -0.25, -0.75, 0.75, -0.75, 1.0, -0.25, 1.0, -0.75, 0.75, -0.75, 0.25, -0.5, 0.0, 0.75, -1.0, 0.75, 0.25, 0.25, -0.5, -0.5, 0.5, -0.5, -0.5, -0.25, -0.5, -1.0, -0.75, 0.25, 0.75, -1.0, 0.0, -0.25, 0.0, 0.25, -1.0, 0.0, -1.0, 0.25, -0.75, -0.25, 0.75, 0.75, -1.0, -0.5, -1.0, 0.25, 0.75, 0.75, 0.25, 1.0, -1.0, -0.25, 0.25, 0.0, 0.5, 0.5, 0.5, -0.25, 1.0, -0.75, 0.5, -0.75, 0.0, 0.25, -1.0, 1.0, 0.25, -0.5, -0.75, 1.0, -0.5, -0.25, 0.75, -0.25, 1.0, 0.5, 0.75, ]);

    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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

    texture100.destroy();

    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ code: shader_module200_code })

    const sampler101 = device10.createSampler();

    const texture300 = device30.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba16sint",
        dimension: "2d"
    });

    const sampler000 = device00.createSampler();

    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ code: shader_module101_code })

    {
        const shaderInfo = await shader_module300.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const pipeline_layout100 = device10.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout100]
    });

    const adapter4 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance",
        label: "adapter4"
    });

    {
        const texture = texture300
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

    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });

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

    const texture200 = device20.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });

    const pipeline_layout101 = device10.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout100]
    });

    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });

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

    texture300.destroy();

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

    const device31 = await adapter3.requestDevice({ label: "device31" });

    const bind_group_layout310 = device31.createBindGroupLayout({ 
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

    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    const compute_pipeline100 = await device10.createComputePipelineAsync({ layout: pipeline_layout101, compute: { module: shader_module100, entryPoint: "main" } });

    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ code: shader_module201_code })

    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ code: shader_module202_code })

    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ code: shader_module203_code })

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

    const texture_view2000 = texture200.createView();

    const texture301 = device30.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
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

    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ code: shader_module204_code })

    const buffer200 = device20.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });

    device20.destroy();

    const buffer100 = device10.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });

    render_bundle_encoder100.pushDebugGroup("group_marker");

    const compute_pipeline101 = device10.createComputePipeline({ layout: pipeline_layout101, compute: { module: shader_module100, entryPoint: "main" } });

    device30.queue.onSubmittedWorkDone();

    const render_pipeline100 = await device10.createRenderPipelineAsync({
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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

    const device11 = await adapter1.requestDevice({ label: "device11" });

    render_pass_encoder1000.executeBundles([])

    render_pass_encoder1000.setStencilReference(1);

    const texture110 = device11.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });

    console.log(navigator.gpu.getPreferredCanvasFormat());

    command_encoder000.pushDebugGroup("mygroupmarker")

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

    device00.pushErrorScope("internal");

    const sampler102 = device10.createSampler();

    console.log(navigator.gpu.getPreferredCanvasFormat());

    const query100 = device10.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    const sampler310 = device31.createSampler();

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

    device31.queue.onSubmittedWorkDone();

    const render_bundle_encoder310 = device31.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
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

    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);

    render_pass_encoder1000.pushDebugGroup("group_marker");

    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    const pipeline_layout110 = device11.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout110]
    });

    command_encoder300.insertDebugMarker("mymarker");

    query100.destroy()

    const device21 = await adapter2.requestDevice({ label: "device21" });

    command_encoder100.insertDebugMarker("mymarker");

    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);

    device10.pushErrorScope("internal");

    const pipeline_layout000 = device00.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout001]
    });

    {
        const shaderInfo = await shader_module300.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const pipeline_layout001 = device00.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout001]
    });

    {
        const texture = texture301
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

    const render_bundle_encoder110 = device11.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    const render_bundle_encoder111 = device11.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    device31.destroy();

    const query101 = device10.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    const compute_pipeline102 = await device10.createComputePipelineAsync({ layout: pipeline_layout100, compute: { module: shader_module100, entryPoint: "main" } });

    query100.destroy()

    render_pass_encoder1000.executeBundles([])

    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

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

    device30.pushErrorScope("out-of-memory");

    render_bundle_encoder100.insertDebugMarker("marker");

    const texture000 = device00.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });

    var shader_module210_code = "";
    try {
        shader_module210_code = await fs.readFile('shader_module210.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module210 = await device21.createShaderModule({ code: shader_module210_code })

    const render_bundle_encoder210 = device21.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    render_pass_encoder1000.executeBundles([])

    var shader_module110_code = "";
    try {
        shader_module110_code = await fs.readFile('shader_module110.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module110 = await device11.createShaderModule({ code: shader_module110_code })

    const query110 = device11.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }

    const compute_pipeline103 = device10.createComputePipeline({ layout: pipeline_layout100, compute: { module: shader_module100, entryPoint: "main" } });

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

    const command_encoder210 = device21.createCommandEncoder({ label: "command_encoder210" });

    const sampler103 = device10.createSampler();

    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }

    device11.pushErrorScope("validation");

    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ code: shader_module000_code })

    var shader_module111_code = "";
    try {
        shader_module111_code = await fs.readFile('render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module111 = await device11.createShaderModule({ code: shader_module111_code })

    const render_pipeline101 = await device10.createRenderPipelineAsync({
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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

    const render_pipeline102 = device10.createRenderPipeline({
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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

    const texture111 = device11.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });

    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);

    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });

    const render_bundle_encoder112 = device11.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    console.log(query101.label);
    
    console.log(query101.type);
    
    console.log(query101.count);

    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ code: shader_module102_code })

    render_bundle_encoder110.insertDebugMarker("marker");

    command_encoder000.insertDebugMarker("mymarker");

    const bind_group_layout300 = device30.createBindGroupLayout({ 
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

    const pipeline_layout002 = device00.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout000]
    });

    {
        const shaderInfo = await shader_module111.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const pipeline_layout111 = device11.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout110]
    });

    var shader_module112_code = "";
    try {
        shader_module112_code = await fs.readFile('shader_module112.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module112 = await device11.createShaderModule({ code: shader_module112_code })

    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);

    texture000.destroy();

    const pipeline_layout102 = device10.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout102]
    });

    const compute_pipeline000 = device00.createComputePipeline({ layout: pipeline_layout000, compute: { module: shader_module000, entryPoint: "main" } });

    compute_pass_encoder0000.insertDebugMarker("marker")

    const compute_pipeline104 = await device10.createComputePipelineAsync({ layout: pipeline_layout102, compute: { module: shader_module100, entryPoint: "main" } });

    const compute_pipeline001 = await device00.createComputePipelineAsync({ layout: pipeline_layout001, compute: { module: shader_module000, entryPoint: "main" } });

    const bind_group_layout301 = device30.createBindGroupLayout({ 
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

    render_pass_encoder1000.setPipeline(render_pipeline100);

    render_pass_encoder1000.popDebugGroup();

    device00.pushErrorScope("out-of-memory");

    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ code: shader_module301_code })

    {
        const shaderInfo = await shader_module300.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const compute_pipeline105 = device10.createComputePipeline({ layout: pipeline_layout102, compute: { module: shader_module100, entryPoint: "main" } });

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

    const compute_pipeline106 = await device10.createComputePipelineAsync({ layout: pipeline_layout101, compute: { module: shader_module100, entryPoint: "main" } });

    render_pass_encoder1000.setStencilReference(1);

    var shader_module211_code = "";
    try {
        shader_module211_code = await fs.readFile('render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module211 = await device21.createShaderModule({ code: shader_module211_code })

    const query300 = device30.createQuerySet({
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

    console.log(navigator.gpu.getPreferredCanvasFormat());

    texture111.destroy();

    const pipeline_layout112 = device11.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout110]
    });

    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });

    const buffer210 = device21.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);

    const compute_pipeline002 = device00.createComputePipeline({ layout: pipeline_layout000, compute: { module: shader_module000, entryPoint: "main" } });

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

    compute_pass_encoder0000.pushDebugGroup("group_marker")

    {
        const shaderInfo = await shader_module111.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });

    const query102 = device10.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    {
        const shaderInfo = await shader_module111.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

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

    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query102
    });

    {
        const shaderInfo = await shader_module301.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    render_bundle_encoder100.setPipeline(render_pipeline102);

    const query210 = device21.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    render_bundle_encoder112.insertDebugMarker("marker");

    console.log(query210.label);
    
    console.log(query210.type);
    
    console.log(query210.count);

    const command_buffer300 = command_encoder300.finish();

    const sampler210 = device21.createSampler();

    render_pass_encoder1010.beginOcclusionQuery(0)

    const adapter5 = await navigator.gpu.requestAdapter({
        powerPreference: undefined,
        label: "adapter5"
    });

    command_encoder100.insertDebugMarker("mymarker");

    const device12 = await adapter1.requestDevice({ label: "device12" });

    const sampler104 = device10.createSampler();

    const device32 = await adapter3.requestDevice({ label: "device32" });

    console.log(device21.features.size);

    for (const value of device21.features.keys()) {
        console.log(value);
    }

    console.log(device21.limits.size);

    for (const [key, value] of Object.entries(device21.limits)) {
        console.log(key);
        console.log(value);
    }

    device21.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    const texture112 = device11.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });

    const buffer300 = device30.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });

    command_encoder101.pushDebugGroup("mygroupmarker")

    const device33 = await adapter3.requestDevice({ label: "device33" });

    const device40 = await adapter4.requestDevice({ label: "device40" });

    device12.pushErrorScope("out-of-memory");

    {
        const texture = texture112
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

    const compute_pipeline107 = device10.createComputePipeline({ layout: pipeline_layout100, compute: { module: shader_module100, entryPoint: "main" } });

    const sampler211 = device21.createSampler();

    const bind_group_layout302 = device30.createBindGroupLayout({ 
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

    const command_encoder320 = device32.createCommandEncoder({ label: "command_encoder320" });

    const compute_pass_encoder3200 = command_encoder320.beginComputePass({ label: "compute_pass_encoder3200" });

    render_bundle_encoder210.insertDebugMarker("marker");

    console.log(device33.features.size);

    for (const value of device33.features.keys()) {
        console.log(value);
    }

    console.log(device33.limits.size);

    for (const [key, value] of Object.entries(device33.limits)) {
        console.log(key);
        console.log(value);
    }

    device33.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    const compute_pipeline003 = device00.createComputePipeline({ layout: pipeline_layout001, compute: { module: shader_module000, entryPoint: "main" } });

    const compute_pipeline110 = device11.createComputePipeline({ layout: pipeline_layout112, compute: { module: shader_module112, entryPoint: "main" } });

    const texture_view1120 = texture112.createView();

    const buffer000 = device00.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });

    const buffer110 = device11.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });

    texture301.destroy();

    const sampler001 = device00.createSampler();

    command_encoder100.clearBuffer(buffer100);

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

    const render_bundle_encoder211 = device21.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    const compute_pipeline004 = await device00.createComputePipelineAsync({ layout: pipeline_layout000, compute: { module: shader_module000, entryPoint: "main" } });

    render_bundle_encoder100.popDebugGroup();

    render_pass_encoder1010.setPipeline(render_pipeline102);

    const command_encoder120 = device12.createCommandEncoder({ label: "command_encoder120" });

    const command_buffer210 = command_encoder210.finish();

    {
        const shaderInfo = await shader_module101.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    render_bundle_encoder211.pushDebugGroup("group_marker");

    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);

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

    render_bundle_encoder112.insertDebugMarker("marker");

    render_bundle_encoder210.pushDebugGroup("group_marker");

    query110.destroy()

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

    device30.pushErrorScope("out-of-memory");

    const command_encoder211 = device21.createCommandEncoder({ label: "command_encoder211" });

    {
        const texture = texture112
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

    query101.destroy()

    device30.queue.onSubmittedWorkDone();

    const pipeline_layout103 = device10.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout100]
    });

    const compute_pipeline111 = await device11.createComputePipelineAsync({ layout: pipeline_layout112, compute: { module: shader_module110, entryPoint: "main" } });

    command_encoder001.insertDebugMarker("mymarker");

    const sampler400 = device40.createSampler();

    const texture113 = device11.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });

    const pipeline_layout300 = device30.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout301]
    });

    query210.destroy()

    compute_pass_encoder0000.setPipeline(compute_pipeline001);

    device33.queue.onSubmittedWorkDone();

    device30.queue.onSubmittedWorkDone();

    const compute_pipeline108 = device10.createComputePipeline({ layout: pipeline_layout102, compute: { module: shader_module100, entryPoint: "main" } });

    texture110.destroy();

    device33.pushErrorScope("validation");

    device32.queue.onSubmittedWorkDone();

    const render_pipeline103 = device10.createRenderPipeline({
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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

    const buffer111 = device11.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });

    query101.destroy()

    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });

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

    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });

    device40.queue.onSubmittedWorkDone();

    const device50 = await adapter5.requestDevice({ label: "device50" });

    {
        const shaderInfo = await shader_module110.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    {
        const shaderInfo = await shader_module301.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
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

    const command_buffer102 = command_encoder102.finish();

    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ code: shader_module001_code })

    {
        const shaderInfo = await shader_module112.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    var shader_module120_code = "";
    try {
        shader_module120_code = await fs.readFile('shader_module120.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module120 = await device12.createShaderModule({ code: shader_module120_code })

    const bind_group_layout500 = device50.createBindGroupLayout({ 
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

    device12.queue.onSubmittedWorkDone();

    const query111 = device11.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    device40.queue.onSubmittedWorkDone();

    const compute_pass_encoder1200 = command_encoder120.beginComputePass({ label: "compute_pass_encoder1200" });

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

    compute_pass_encoder0010.pushDebugGroup("group_marker")

    const pipeline_layout113 = device11.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout110]
    });

    device50.pushErrorScope("out-of-memory");

    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);

    const compute_pipeline112 = device11.createComputePipeline({ layout: pipeline_layout110, compute: { module: shader_module112, entryPoint: "main" } });

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

    const compute_pipeline109 = device10.createComputePipeline({ layout: pipeline_layout101, compute: { module: shader_module100, entryPoint: "main" } });

    {
        const shaderInfo = await shader_module301.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    device12.queue.onSubmittedWorkDone();

    compute_pass_encoder0010.setPipeline(compute_pipeline000);

    const compute_pipeline113 = await device11.createComputePipelineAsync({ layout: pipeline_layout112, compute: { module: shader_module110, entryPoint: "main" } });

    command_encoder100.clearBuffer(buffer100);

    {
        const texture = texture112
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

    device11.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    compute_pass_encoder0010.popDebugGroup()

    const buffer001 = device00.createBuffer({
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer002 = device00.createBuffer({
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group000 = device00.createBindGroup({
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group000);

    compute_pass_encoder0000.dispatchWorkgroups(100);

    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    command_encoder000.popDebugGroup()

    const buffer101 = device10.createBuffer({
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer102 = device10.createBuffer({
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group100 = device10.createBindGroup({
        layout: render_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer101,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer102,
                },
            },
        ],
    });

    render_pass_encoder1010.setBindGroup(0, bind_group100);

    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    device10.queue.submit([command_buffer102, ]);

    render_pass_encoder1010.endOcclusionQuery()

    compute_pass_encoder0000.popDebugGroup()

    const buffer003 = device00.createBuffer({
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer004 = device00.createBuffer({
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group001 = device00.createBindGroup({
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

    compute_pass_encoder0010.setBindGroup(0, bind_group001);

    compute_pass_encoder0000.end();

    const command_buffer000 = command_encoder000.finish();

    const buffer103 = device10.createBuffer({
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer104 = device10.createBuffer({
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group101 = device10.createBindGroup({
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1000.setBindGroup(0, bind_group101);

    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer005 = device00.createBuffer({
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer005, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer005, 0);

    command_encoder100.popDebugGroup()

    device33.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    device21.queue.submit([command_buffer210, ]);

    device12.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    compute_pass_encoder0010.end();

    command_encoder101.popDebugGroup()

    const command_buffer001 = command_encoder001.finish();

    device30.queue.submit([command_buffer300, ]);

    const command_buffer211 = command_encoder211.finish();

    device21.queue.submit([command_buffer211, ]);

    device00.queue.submit([command_buffer000, command_buffer001, ]);
}

init();