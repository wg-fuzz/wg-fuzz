const { create, globals } = require('./dawn.node');
Object.assign(globalThis, globals); // Provides constants like GPUBufferUsage.MAP_READ
let navigator = { gpu: create(['enable-dawn-features=allow_unsafe_apis,disable_symbol_renaming']), };
const fs = require('node:fs/promises');

async function init() {
    if (!navigator.gpu) {
        throw Error("WebGPU not supported.");
    }

    const array0 = new Float32Array([1.0, -0.5, -0.5, -0.75, -0.75, -0.25, -0.75, -0.25, 0.0, -0.5, -0.5, 0.5, 0.0, -1.0, -0.5, 0.25, -0.75, 0.5, -0.5, 0.75, -0.5, -1.0, 0.25, 1.0, 0.0, -0.75, 0.0, -0.5, 0.75, 0.0, -0.25, -1.0, -0.75, 0.0, 0.75, -0.25, 0.0, 0.0, -0.75, -0.5, -0.5, 0.5, 0.25, 0.25, 0.5, -0.25, 0.75, 0.0, -0.5, 1.0, -0.25, 1.0, 0.75, -0.5, 0.0, -0.75, -1.0, 0.75, 0.0, 1.0, -0.5, -1.0, 1.0, -0.25, 0.25, -0.75, -0.25, -0.75, -0.75, 0.0, 0.0, 0.25, 0.5, 0.0, -0.75, 1.0, 0.25, 0.0, -0.25, 1.0, 0.5, 0.25, 1.0, -0.75, 0.5, -0.75, -1.0, 0.5, 1.0, 1.0, -0.25, -1.0, -0.75, -0.75, -0.5, -1.0, 0.0, -0.5, -0.5, 0.25, ]);

    const adapter0 = await navigator.gpu.requestAdapter({
        powerPreference: undefined,
        label: "adapter0"
    });

    console.log(navigator.gpu.getPreferredCanvasFormat());

    const device00 = await adapter0.requestDevice({ label: "device00" });

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

    device00.pushErrorScope("internal");

    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('shader_module000.wgsl', 'utf8');
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

    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ code: shader_module001_code })

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
        const shaderInfo = await shader_module001.getCompilationInfo();

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

    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ code: shader_module002_code })

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

    const array1 = new Float32Array([0.75, -0.25, 0.0, 0.75, 0.75, -0.75, 1.0, 0.0, 0.25, -0.25, 0.25, 0.25, -0.75, -1.0, 0.75, 0.0, 0.0, -0.5, -0.5, 0.75, 0.5, -0.75, 1.0, 1.0, -0.25, -0.75, -1.0, 1.0, -0.25, 0.25, -0.25, 0.25, -0.75, 0.75, 1.0, 0.25, -0.75, 0.25, 0.25, 1.0, 0.25, 0.5, -0.5, -0.5, 0.25, -0.5, -0.75, 1.0, 0.5, 0.5, -0.25, 0.75, 0.25, 0.0, 0.75, 0.5, -0.5, 0.0, -0.25, -1.0, 0.75, -0.25, 1.0, 0.5, -0.75, -0.25, -0.75, 0.0, -0.25, -0.75, -0.75, 1.0, -0.5, 1.0, 1.0, -1.0, -0.5, -0.75, 1.0, 0.0, 0.75, 0.75, -0.5, 0.75, 0.5, -1.0, 0.0, -1.0, -0.5, 0.0, 0.0, -0.5, -0.5, 0.5, 1.0, 0.75, 0.25, -0.75, -1.0, -0.5, ]);

    const adapter1 = await navigator.gpu.requestAdapter({
        powerPreference: undefined,
        label: "adapter1"
    });

    const array2 = new Float32Array([-1.0, -0.75, 0.0, -0.5, 1.0, 1.0, -0.25, 0.75, 0.75, 0.0, 0.75, 0.0, 1.0, 1.0, -1.0, 0.0, 0.5, 0.75, -0.5, 0.5, 0.25, -0.5, -0.25, 0.75, 0.75, 0.0, 0.25, -0.75, -0.25, 0.75, 0.5, -0.5, 0.5, -0.25, -0.5, 1.0, 0.0, 0.5, -0.5, -0.25, 0.0, 0.75, 0.5, -1.0, 0.0, 0.5, 0.0, -0.75, -0.25, -0.5, -0.75, 0.5, -0.25, 0.25, 1.0, 1.0, -0.25, 0.0, 0.25, 0.0, 1.0, 1.0, 0.5, 0.0, -1.0, -0.5, 0.75, -1.0, -0.25, 0.5, -0.5, -0.25, 0.75, 0.0, 0.25, 0.25, -0.5, -0.75, 0.25, 0.0, -1.0, 1.0, 1.0, 0.5, -0.5, 0.0, 0.5, -0.5, 0.75, 0.25, -0.25, 0.25, 0.0, 0.0, -1.0, -0.5, -0.25, 0.0, 0.0, 0.0, ]);

    const device10 = await adapter1.requestDevice({ label: "device10" });

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

    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    console.log(navigator.gpu.getPreferredCanvasFormat());

    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ code: shader_module003_code })

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

    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });

    const pipeline_layout100 = device10.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout100]
    });

    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    {
        const shaderInfo = await shader_module002.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
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

    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });

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

    render_bundle_encoder102.pushDebugGroup("group_marker");

    const command_buffer100 = command_encoder100.finish();

    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });

    const adapter2 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance",
        label: "adapter2"
    });

    const query100 = device10.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    const array3 = new Float32Array([0.0, 0.75, 0.25, 0.75, -1.0, -1.0, -0.25, -0.75, -0.75, -0.75, -0.25, -0.25, -1.0, -0.75, -0.5, -0.25, 0.0, 1.0, 0.5, 0.0, -1.0, 1.0, 1.0, 0.0, 0.25, -1.0, -0.75, 0.5, -1.0, -0.5, 0.25, 0.75, -0.75, 0.75, -1.0, -0.75, 0.0, -1.0, 0.25, -1.0, 0.5, 0.0, 0.75, 0.75, -1.0, 1.0, 1.0, -0.5, -1.0, 0.0, -0.75, 0.5, -0.25, -1.0, -0.75, 0.5, -0.5, 0.0, 0.0, 0.0, 0.25, 1.0, -0.75, -0.25, 0.25, 0.5, -0.75, -1.0, -0.5, 0.75, 0.25, -0.25, 0.0, -1.0, 0.5, 1.0, -0.5, 0.75, 0.75, -1.0, 1.0, 0.5, -0.75, -1.0, 0.0, -0.5, 1.0, -0.25, 0.5, -0.5, 0.25, 0.0, 1.0, -0.25, 0.75, -0.25, 0.25, 0.75, -1.0, -0.75, ]);

    console.log(navigator.gpu.getPreferredCanvasFormat());

    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ code: shader_module004_code })

    const buffer000 = device00.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });

    {
        const buffer = buffer000
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

    buffer000.destroy()

    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });

    const command_buffer101 = command_encoder101.finish();

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

    const pipeline_layout000 = device00.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout002]
    });

    const pipeline_layout001 = device00.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout002]
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

    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ code: shader_module100_code })

    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });

    device10.queue.onSubmittedWorkDone();

    const buffer001 = device00.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });

    command_encoder102.insertDebugMarker("mymarker");

    const compute_pipeline000 = device00.createComputePipeline({ layout: pipeline_layout000, compute: { module: shader_module000, entryPoint: "main" } });

    device00.pushErrorScope("out-of-memory");

    const compute_pipeline001 = await device00.createComputePipelineAsync({ layout: pipeline_layout000, compute: { module: shader_module000, entryPoint: "main" } });

    const buffer002 = device00.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });

    const compute_pipeline002 = device00.createComputePipeline({ layout: pipeline_layout001, compute: { module: shader_module002, entryPoint: "main" } });

    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });

    const compute_pipeline003 = await device00.createComputePipelineAsync({ layout: pipeline_layout000, compute: { module: shader_module001, entryPoint: "main" } });

    render_bundle_encoder102.popDebugGroup();

    const compute_pipeline004 = await device00.createComputePipelineAsync({ layout: pipeline_layout000, compute: { module: shader_module002, entryPoint: "main" } });

    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ code: shader_module101_code })

    device10.pushErrorScope("out-of-memory");

    const compute_pipeline005 = await device00.createComputePipelineAsync({ layout: pipeline_layout001, compute: { module: shader_module002, entryPoint: "main" } });

    render_bundle_encoder102.insertDebugMarker("marker");

    compute_pass_encoder0000.pushDebugGroup("group_marker")

    const sampler000 = device00.createSampler();

    const compute_pipeline006 = device00.createComputePipeline({ layout: pipeline_layout000, compute: { module: shader_module000, entryPoint: "main" } });

    compute_pass_encoder0000.setPipeline(compute_pipeline002);

    const compute_pipeline007 = device00.createComputePipeline({ layout: pipeline_layout000, compute: { module: shader_module003, entryPoint: "main" } });

    command_encoder102.insertDebugMarker("mymarker");

    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });

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

    render_bundle_encoder100.insertDebugMarker("marker");

    render_bundle_encoder100.insertDebugMarker("marker");

    const device20 = await adapter2.requestDevice({ label: "device20" });

    compute_pass_encoder0000.popDebugGroup()

    device20.destroy();

    const compute_pipeline100 = await device10.createComputePipelineAsync({ layout: pipeline_layout100, compute: { module: shader_module100, entryPoint: "main" } });

    const compute_pipeline101 = device10.createComputePipeline({ layout: pipeline_layout100, compute: { module: shader_module100, entryPoint: "main" } });

    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);

    const buffer100 = device10.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });

    const pipeline_layout002 = device00.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout000]
    });

    const compute_pipeline008 = device00.createComputePipeline({ layout: pipeline_layout000, compute: { module: shader_module001, entryPoint: "main" } });

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

    const compute_pipeline009 = await device00.createComputePipelineAsync({ layout: pipeline_layout002, compute: { module: shader_module001, entryPoint: "main" } });

    const compute_pipeline0010 = device00.createComputePipeline({ layout: pipeline_layout001, compute: { module: shader_module002, entryPoint: "main" } });

    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);

    const compute_pipeline0011 = device00.createComputePipeline({ layout: pipeline_layout000, compute: { module: shader_module002, entryPoint: "main" } });

    const compute_pipeline0012 = device00.createComputePipeline({ layout: pipeline_layout001, compute: { module: shader_module003, entryPoint: "main" } });

    buffer100.destroy()

    const compute_pipeline102 = device10.createComputePipeline({ layout: pipeline_layout100, compute: { module: shader_module101, entryPoint: "main" } });

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ code: shader_module005_code })

    compute_pass_encoder1030.setPipeline(compute_pipeline101);

    const render_pipeline000 = device00.createRenderPipeline({
        vertex: {
            module: shader_module004,
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
            module: shader_module004,
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

    const buffer101 = device10.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });

    const sampler100 = device10.createSampler();

    const compute_pipeline0013 = device00.createComputePipeline({ layout: pipeline_layout001, compute: { module: shader_module002, entryPoint: "main" } });

    const render_pipeline001 = device00.createRenderPipeline({
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

    device10.queue.onSubmittedWorkDone();

    const buffer003 = device00.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });

    const compute_pipeline0014 = await device00.createComputePipelineAsync({ layout: pipeline_layout002, compute: { module: shader_module002, entryPoint: "main" } });

    render_bundle_encoder100.insertDebugMarker("marker");

    buffer002.destroy()

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    compute_pass_encoder1030.pushDebugGroup("group_marker")

    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ code: shader_module102_code })

    {
        const shaderInfo = await shader_module100.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ code: shader_module103_code })

    render_bundle_encoder100.pushDebugGroup("group_marker");

    const pipeline_layout003 = device00.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout001]
    });

    const compute_pipeline0015 = await device00.createComputePipelineAsync({ layout: pipeline_layout001, compute: { module: shader_module002, entryPoint: "main" } });

    const compute_pipeline0016 = device00.createComputePipeline({ layout: pipeline_layout002, compute: { module: shader_module002, entryPoint: "main" } });

    const compute_pipeline0017 = await device00.createComputePipelineAsync({ layout: pipeline_layout001, compute: { module: shader_module003, entryPoint: "main" } });

    buffer001.destroy()

    console.log(query100.label);
    
    console.log(query100.type);
    
    console.log(query100.count);

    {
        const shaderInfo = await shader_module101.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    {
        const shaderInfo = await shader_module002.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    compute_pass_encoder1030.popDebugGroup()

    const compute_pipeline0018 = device00.createComputePipeline({ layout: pipeline_layout003, compute: { module: shader_module001, entryPoint: "main" } });

    const compute_pipeline0019 = await device00.createComputePipelineAsync({ layout: pipeline_layout003, compute: { module: shader_module003, entryPoint: "main" } });

    const compute_pipeline0020 = device00.createComputePipeline({ layout: pipeline_layout001, compute: { module: shader_module001, entryPoint: "main" } });

    {
        const buffer = buffer003
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const render_pipeline100 = await device10.createRenderPipelineAsync({
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
        layout: "auto",
    });

    render_bundle_encoder100.popDebugGroup();

    const render_pipeline002 = await device00.createRenderPipelineAsync({
        vertex: {
            module: shader_module004,
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
            module: shader_module004,
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

    compute_pass_encoder0000.insertDebugMarker("marker")

    buffer003.destroy()

    const render_pipeline003 = device00.createRenderPipeline({
        vertex: {
            module: shader_module004,
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
            module: shader_module004,
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

    const compute_pipeline0021 = await device00.createComputePipelineAsync({ layout: pipeline_layout001, compute: { module: shader_module002, entryPoint: "main" } });

    const compute_pipeline0022 = await device00.createComputePipelineAsync({ layout: pipeline_layout002, compute: { module: shader_module000, entryPoint: "main" } });

    const compute_pipeline0023 = device00.createComputePipeline({ layout: pipeline_layout002, compute: { module: shader_module000, entryPoint: "main" } });

    {
        const shaderInfo = await shader_module102.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const buffer102 = device10.createBuffer({
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer103 = device10.createBuffer({
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group100 = device10.createBindGroup({
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer102,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer103,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group100);

    const compute_pipeline0024 = await device00.createComputePipelineAsync({ layout: pipeline_layout000, compute: { module: shader_module002, entryPoint: "main" } });

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

    const query000 = device00.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    const sampler101 = device10.createSampler();

    query100.destroy()

    const render_pipeline004 = device00.createRenderPipeline({
        vertex: {
            module: shader_module004,
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
            module: shader_module004,
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

    render_bundle_encoder101.insertDebugMarker("marker");

    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });

    const sampler001 = device00.createSampler();

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
        const buffer = buffer101
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const sampler002 = device00.createSampler();

    command_encoder001.insertDebugMarker("mymarker");

    const compute_pipeline103 = device10.createComputePipeline({ layout: pipeline_layout100, compute: { module: shader_module101, entryPoint: "main" } });

    const compute_pipeline0025 = device00.createComputePipeline({ layout: pipeline_layout000, compute: { module: shader_module003, entryPoint: "main" } });

    {
        const shaderInfo = await shader_module103.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    render_bundle_encoder102.pushDebugGroup("group_marker");

    const compute_pipeline0026 = await device00.createComputePipelineAsync({ layout: pipeline_layout003, compute: { module: shader_module000, entryPoint: "main" } });

    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    const compute_pipeline0027 = device00.createComputePipeline({ layout: pipeline_layout001, compute: { module: shader_module000, entryPoint: "main" } });

    compute_pass_encoder1030.dispatchWorkgroups(100);

    const pipeline_layout004 = device00.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout000]
    });

    compute_pass_encoder0000.insertDebugMarker("marker")

    {
        const shaderInfo = await shader_module100.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    command_encoder102.insertDebugMarker("mymarker");

    const texture000 = device00.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });

    const render_pipeline005 = device00.createRenderPipeline({
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

    const compute_pipeline0028 = device00.createComputePipeline({ layout: pipeline_layout004, compute: { module: shader_module002, entryPoint: "main" } });

    const compute_pipeline0029 = device00.createComputePipeline({ layout: pipeline_layout004, compute: { module: shader_module001, entryPoint: "main" } });

    render_bundle_encoder102.setPipeline(render_pipeline100);

    const array4 = new Float32Array([0.25, 1.0, 0.75, 0.75, 0.0, -0.75, 0.25, 0.0, 0.25, 0.0, -1.0, -0.25, -0.25, -0.75, -1.0, 0.0, 0.75, -0.25, -0.25, -0.25, 1.0, -0.5, -0.25, 0.5, 0.75, -0.25, 1.0, 0.25, 1.0, 1.0, 0.75, -0.25, 0.0, -0.75, 0.25, 0.5, 0.75, 0.75, -0.25, -0.75, -1.0, 0.0, -0.5, -0.25, 0.5, 0.5, -0.5, 0.25, 0.0, -0.75, 0.5, 0.0, 0.5, -1.0, 0.5, 0.25, 0.25, -1.0, -0.25, 0.75, 0.5, -0.5, 0.75, 1.0, 1.0, 0.75, 0.25, -0.25, -0.25, 0.5, 0.25, 0.25, 0.25, -0.5, 0.5, -0.75, -0.75, 0.0, 0.75, -1.0, -0.25, -0.5, -0.25, 0.25, 0.25, 0.0, -1.0, 1.0, -1.0, -0.25, -0.75, -0.5, -1.0, 0.5, -1.0, -0.25, 1.0, 1.0, 0.75, -0.75, ]);

    const render_pipeline101 = device10.createRenderPipeline({
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

    const compute_pipeline0030 = await device00.createComputePipelineAsync({ layout: pipeline_layout001, compute: { module: shader_module002, entryPoint: "main" } });

    device10.queue.submit([command_buffer100, ]);

    {
        const shaderInfo = await shader_module000.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const compute_pipeline104 = device10.createComputePipeline({ layout: pipeline_layout100, compute: { module: shader_module100, entryPoint: "main" } });

    const compute_pipeline0031 = device00.createComputePipeline({ layout: pipeline_layout000, compute: { module: shader_module003, entryPoint: "main" } });

    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    const compute_pipeline0032 = device00.createComputePipeline({ layout: pipeline_layout000, compute: { module: shader_module001, entryPoint: "main" } });

    render_bundle_encoder000.setPipeline(render_pipeline001);

    query000.destroy()

    const render_pipeline006 = device00.createRenderPipeline({
        vertex: {
            module: shader_module004,
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
            module: shader_module004,
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

    render_bundle_encoder001.setPipeline(render_pipeline004);

    compute_pass_encoder1030.pushDebugGroup("group_marker")

    const buffer004 = device00.createBuffer({
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer005 = device00.createBuffer({
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group000 = device00.createBindGroup({
        layout: render_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer004,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer005,
                },
            },
        ],
    });

    render_bundle_encoder001.setBindGroup(0, bind_group000);

    const render_pipeline102 = await device10.createRenderPipelineAsync({
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
        layout: "auto",
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

    const compute_pipeline0033 = await device00.createComputePipelineAsync({ layout: pipeline_layout001, compute: { module: shader_module002, entryPoint: "main" } });

    query000.destroy()

    const compute_pipeline0034 = await device00.createComputePipelineAsync({ layout: pipeline_layout004, compute: { module: shader_module002, entryPoint: "main" } });

    const buffer104 = device10.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });

    const array5 = new Float32Array([0.0, 0.25, -1.0, -0.5, 0.5, -0.75, 1.0, 0.75, -1.0, -0.75, -0.75, 1.0, 0.5, 0.75, 0.25, -0.25, 0.25, 0.75, 1.0, 0.0, -0.75, 0.25, 0.5, -1.0, -0.75, 0.25, -1.0, 0.0, -1.0, -0.75, 0.0, -0.5, -0.5, -0.75, -0.25, 0.75, -1.0, -0.25, -0.25, -0.5, 1.0, 0.5, 0.5, -0.25, -0.75, 0.5, -0.5, 0.25, -0.75, 1.0, 0.0, 1.0, -0.5, -0.25, -1.0, -0.75, 1.0, -0.25, 0.0, 0.25, -0.5, -0.5, 0.5, -1.0, 0.5, 0.75, -1.0, -1.0, -1.0, 1.0, -1.0, 1.0, 0.25, -1.0, 1.0, 1.0, 0.75, 0.75, 0.75, -0.25, -0.25, 0.25, 0.75, -0.25, 0.25, 0.5, 0.75, -0.75, 0.0, -0.25, -0.25, -1.0, -0.75, -1.0, -1.0, 0.5, -0.25, 0.25, 0.5, -0.5, ]);

    command_encoder001.pushDebugGroup("mygroupmarker")

    const compute_pipeline0035 = device00.createComputePipeline({ layout: pipeline_layout002, compute: { module: shader_module003, entryPoint: "main" } });

    const compute_pipeline105 = await device10.createComputePipelineAsync({ layout: pipeline_layout100, compute: { module: shader_module100, entryPoint: "main" } });

    const compute_pipeline0036 = device00.createComputePipeline({ layout: pipeline_layout003, compute: { module: shader_module001, entryPoint: "main" } });

    const compute_pipeline0037 = device00.createComputePipeline({ layout: pipeline_layout000, compute: { module: shader_module001, entryPoint: "main" } });

    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });

    render_bundle_encoder100.setPipeline(render_pipeline102);

    render_bundle_encoder001.pushDebugGroup("group_marker");

    const texture100 = device10.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });

    {
        const shaderInfo = await shader_module102.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const compute_pipeline0038 = device00.createComputePipeline({ layout: pipeline_layout002, compute: { module: shader_module000, entryPoint: "main" } });

    render_bundle_encoder101.setPipeline(render_pipeline100);

    const compute_pipeline0039 = device00.createComputePipeline({ layout: pipeline_layout003, compute: { module: shader_module002, entryPoint: "main" } });

    const query101 = device10.createQuerySet({
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

    const compute_pipeline106 = device10.createComputePipeline({ layout: pipeline_layout100, compute: { module: shader_module101, entryPoint: "main" } });

    const compute_pipeline0040 = device00.createComputePipeline({ layout: pipeline_layout004, compute: { module: shader_module003, entryPoint: "main" } });

    const compute_pipeline0041 = await device00.createComputePipelineAsync({ layout: pipeline_layout004, compute: { module: shader_module000, entryPoint: "main" } });

    device10.queue.submit([command_buffer101, ]);

    device00.queue.onSubmittedWorkDone();

    const pipeline_layout005 = device00.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout002]
    });

    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ code: shader_module104_code })

    const render_pipeline007 = await device00.createRenderPipelineAsync({
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
        layout: "auto",
    });

    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ code: shader_module105_code })

    const buffer105 = device10.createBuffer({
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer106 = device10.createBuffer({
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group101 = device10.createBindGroup({
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer105,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer106,
                },
            },
        ],
    });

    render_bundle_encoder102.setBindGroup(0, bind_group101);

    const bind_group_layout003 = device00.createBindGroupLayout({ 
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

    const compute_pipeline0042 = await device00.createComputePipelineAsync({ layout: pipeline_layout000, compute: { module: shader_module000, entryPoint: "main" } });

    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });

    {
        const shaderInfo = await shader_module104.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

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

    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ code: shader_module106_code })

    const compute_pipeline0043 = await device00.createComputePipelineAsync({ layout: pipeline_layout002, compute: { module: shader_module001, entryPoint: "main" } });

    const query001 = device00.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    const render_pipeline103 = await device10.createRenderPipelineAsync({
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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

    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });

    texture100.destroy();

    console.log(query001.label);
    
    console.log(query001.type);
    
    console.log(query001.count);

    const compute_pipeline0044 = await device00.createComputePipelineAsync({ layout: pipeline_layout001, compute: { module: shader_module003, entryPoint: "main" } });

    const compute_pipeline0045 = await device00.createComputePipelineAsync({ layout: pipeline_layout000, compute: { module: shader_module002, entryPoint: "main" } });

    command_encoder102.pushDebugGroup("mygroupmarker")

    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });

    render_bundle_encoder000.pushDebugGroup("group_marker");

    {
        const shaderInfo = await shader_module000.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

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

    {
        const buffer = buffer105
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    {
        const buffer = buffer103
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    render_bundle_encoder000.insertDebugMarker("marker");

    const compute_pipeline0046 = await device00.createComputePipelineAsync({ layout: pipeline_layout001, compute: { module: shader_module001, entryPoint: "main" } });

    const compute_pipeline0047 = await device00.createComputePipelineAsync({ layout: pipeline_layout002, compute: { module: shader_module003, entryPoint: "main" } });

    const compute_pipeline0048 = device00.createComputePipeline({ layout: pipeline_layout004, compute: { module: shader_module002, entryPoint: "main" } });

    const texture101 = device10.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });

    {
        const buffer = buffer106
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    {
        const shaderInfo = await shader_module001.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    {
        const buffer = buffer104
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const compute_pipeline0049 = await device00.createComputePipelineAsync({ layout: pipeline_layout003, compute: { module: shader_module000, entryPoint: "main" } });

    command_encoder102.insertDebugMarker("mymarker");

    query100.destroy()

    query100.destroy()

    console.log(query001.label);
    
    console.log(query001.type);
    
    console.log(query001.count);

    render_bundle_encoder001.setVertexBuffer(0, buffer001);

    const buffer006 = device00.createBuffer({
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer007 = device00.createBuffer({
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group001 = device00.createBindGroup({
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group001);

    const device21 = await adapter2.requestDevice({ label: "device21" });

    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ code: shader_module006_code })

    {
        const buffer = buffer104
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
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

    const compute_pipeline0050 = device00.createComputePipeline({ layout: pipeline_layout004, compute: { module: shader_module006, entryPoint: "main" } });

    const compute_pipeline0051 = await device00.createComputePipelineAsync({ layout: pipeline_layout003, compute: { module: shader_module000, entryPoint: "main" } });

    const render_pipeline104 = device10.createRenderPipeline({
        vertex: {
            module: shader_module105,
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
            module: shader_module105,
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

    const render_pipeline105 = await device10.createRenderPipelineAsync({
        vertex: {
            module: shader_module106,
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
            module: shader_module106,
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

    render_bundle_encoder001.popDebugGroup();

    const buffer008 = device00.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });

    const render_pipeline106 = device10.createRenderPipeline({
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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

    const device01 = await adapter0.requestDevice({ label: "device01" });

    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });

    render_bundle_encoder101.insertDebugMarker("marker");

    const texture001 = device00.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });

    const pipeline_layout101 = device10.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout102]
    });

    const compute_pipeline0052 = await device00.createComputePipelineAsync({ layout: pipeline_layout001, compute: { module: shader_module000, entryPoint: "main" } });

    {
        const buffer = buffer004
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const buffer107 = device10.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });

    const compute_pipeline107 = device10.createComputePipeline({ layout: pipeline_layout100, compute: { module: shader_module101, entryPoint: "main" } });

    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });

    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });

    device10.queue.writeBuffer(buffer107, 0, array3, 0, array3.length);

    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });

    compute_pass_encoder1040.setPipeline(compute_pipeline101);

    {
        const shaderInfo = await shader_module100.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    {
        const buffer = buffer006
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const pipeline_layout006 = device00.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout001]
    });

    compute_pass_encoder1030.insertDebugMarker("marker")

    const render_pipeline107 = await device10.createRenderPipelineAsync({
        vertex: {
            module: shader_module106,
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
            module: shader_module106,
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

    const compute_pipeline0053 = device00.createComputePipeline({ layout: pipeline_layout006, compute: { module: shader_module000, entryPoint: "main" } });

    const compute_pipeline0054 = await device00.createComputePipelineAsync({ layout: pipeline_layout001, compute: { module: shader_module006, entryPoint: "main" } });

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

    const compute_pipeline0055 = device00.createComputePipeline({ layout: pipeline_layout000, compute: { module: shader_module000, entryPoint: "main" } });

    const compute_pipeline0056 = await device00.createComputePipelineAsync({ layout: pipeline_layout002, compute: { module: shader_module001, entryPoint: "main" } });

    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer000,
        0
    )

    const query210 = device21.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ code: shader_module107_code })

    const compute_pipeline0057 = device00.createComputePipeline({ layout: pipeline_layout002, compute: { module: shader_module002, entryPoint: "main" } });

    const compute_pipeline0058 = device00.createComputePipeline({ layout: pipeline_layout006, compute: { module: shader_module000, entryPoint: "main" } });

    {
        const shaderInfo = await shader_module100.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    render_bundle_encoder000.popDebugGroup();

    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer009 = device00.createBuffer({
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer009, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer009, 0);

    compute_pass_encoder1030.popDebugGroup()

    compute_pass_encoder1030.end();

    command_encoder001.popDebugGroup()

    const command_buffer103 = command_encoder103.finish();

    const command_buffer001 = command_encoder001.finish();

    compute_pass_encoder0000.end();

    device10.queue.submit([command_buffer103, ]);

    device00.queue.submit([command_buffer001, ]);

    const command_buffer000 = command_encoder000.finish();

    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    const buffer108 = device10.createBuffer({
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer109 = device10.createBuffer({
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group102 = device10.createBindGroup({
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer108,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer109,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group102);

    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer1010 = device10.createBuffer({
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1010, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer1010, 0);

    command_encoder102.popDebugGroup()

    compute_pass_encoder1040.end();

    device00.queue.submit([command_buffer000, ]);

    const command_buffer102 = command_encoder102.finish();

    const command_buffer104 = command_encoder104.finish();

    device10.queue.submit([command_buffer102, command_buffer104, ]);
}

init();