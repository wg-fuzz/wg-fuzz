const { create, globals } = require('../dawn.node');
Object.assign(globalThis, globals); // Provides constants like GPUBufferUsage.MAP_READ
let navigator = { gpu: create(['enable-dawn-features=allow_unsafe_apis,disable_symbol_renaming']), };
const fs = require('node:fs/promises');

async function init() {
    if (!navigator.gpu) {
        throw Error("WebGPU not supported.");
    }

    console.log(navigator.gpu.getPreferredCanvasFormat());

    const adapter0 = await navigator.gpu.requestAdapter({
                powerPreference: "low-power",
                label: "adapter0"
            });

    const array0 = new Float32Array([-0.25, 1.0, 0.25, -0.25, -0.5, 1.0, -0.75, 0.5, 0.5, 0.5, -0.5, -0.5, 0.25, 0.5, 0.5, -0.75, -1.0, -0.25, -1.0, 0.75, 0.0, 0.75, -0.25, -0.25, 0.0, -0.25, 0.0, -0.25, -1.0, -0.25, 0.25, -0.5, -0.5, 0.75, 0.5, -0.75, -0.25, -1.0, -0.5, -0.5, -1.0, 0.5, 0.25, 1.0, -0.5, 1.0, 0.75, 0.25, 1.0, 0.0, 0.0, 1.0, 0.25, 0.75, -0.5, -1.0, 0.5, -0.5, 0.75, -1.0, 0.75, 0.0, -0.25, 0.75, 0.0, 0.75, 0.5, -1.0, 1.0, -0.25, 0.0, 0.5, 0.5, 1.0, -1.0, 0.75, -0.25, 1.0, 0.25, 0.0, 0.0, -0.75, 0.0, 0.25, 0.5, -0.75, -0.5, -0.5, 0.25, 0.25, 0.75, 0.25, -0.75, -0.5, -0.75, 0.75, 0.0, -0.5, 0.25, -0.25, ]);

    const adapter1 = await navigator.gpu.requestAdapter({
                powerPreference: "low-power",
                label: "adapter1"
            });

    const device00 = await adapter0.requestDevice({ label: "device00" });

    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });

    const device01 = await adapter0.requestDevice({ label: "device01" });

    var shader_module010_code = "";
    try {
        shader_module010_code = await fs.readFile('crates/wg-fuzz/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module010 = await device01.createShaderModule({ code: shader_module010_code })

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

    const buffer000 = device00.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });

    const texture010 = device01.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32sint",
        dimension: "2d"
    });

    console.log(navigator.gpu.getPreferredCanvasFormat());

    const adapter2 = await navigator.gpu.requestAdapter({
                powerPreference: undefined,
                label: "adapter2"
            });

    {
        const buffer = buffer000
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const buffer010 = device01.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });

    const array1 = new Float32Array([-0.75, 0.75, 0.5, -0.75, 0.5, -0.75, -0.25, 0.0, -0.25, -0.75, -0.5, 1.0, -0.5, -0.5, -0.25, 0.0, 0.0, -0.25, -1.0, -0.25, 0.75, -1.0, 0.25, 0.0, -0.25, 0.5, -0.25, -0.75, 0.0, -0.75, -1.0, -1.0, -0.75, 0.25, -0.5, -0.5, -0.25, -0.25, 1.0, 0.5, 0.25, -0.5, 1.0, -0.75, -0.5, -0.75, 1.0, -0.5, -1.0, -0.5, -0.5, 0.25, -1.0, 0.5, -0.75, 0.5, -0.75, -0.75, 0.75, -0.25, -1.0, -1.0, 0.75, -1.0, -0.5, -1.0, -0.5, 0.25, -1.0, 0.75, -0.25, 0.25, 0.0, 0.5, 0.75, 0.25, -1.0, -0.25, 0.0, -1.0, -0.5, -1.0, -1.0, -0.25, 0.5, 0.25, -0.75, 0.25, -0.25, 0.0, -0.5, 0.0, 0.5, 0.75, 0.75, 0.0, -0.25, 0.5, 0.75, -0.5, ]);

    const adapter3 = await navigator.gpu.requestAdapter({
                powerPreference: "high-performance",
                label: "adapter3"
            });

    {
        const buffer = buffer010
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    device01.queue.onSubmittedWorkDone();

    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });

    buffer010.destroy()

    device01.pushErrorScope("validation");

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

    device00.queue.onSubmittedWorkDone();

    const device10 = await adapter1.requestDevice({ label: "device10" });

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

    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });

    var shader_module011_code = "";
    try {
        shader_module011_code = await fs.readFile('out/shader_module011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module011 = await device01.createShaderModule({ code: shader_module011_code })

    var shader_module012_code = "";
    try {
        shader_module012_code = await fs.readFile('out/shader_module012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module012 = await device01.createShaderModule({ code: shader_module012_code })

    command_encoder000.pushDebugGroup("mygroupmarker")

    var shader_module013_code = "";
    try {
        shader_module013_code = await fs.readFile('out/shader_module013.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module013 = await device01.createShaderModule({ code: shader_module013_code })

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

    {
        const shaderInfo = await shader_module013.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    device01.popErrorScope().then((error) => {
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

    const buffer011 = device01.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });

    {
        const shaderInfo = await shader_module012.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    var shader_module014_code = "";
    try {
        shader_module014_code = await fs.readFile('out/shader_module014.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module014 = await device01.createShaderModule({ code: shader_module014_code })

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

    const render_pipeline011 = device01.createRenderPipeline({
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

    const device02 = await adapter0.requestDevice({ label: "device02" });

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

    device02.queue.onSubmittedWorkDone();

    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });

    var shader_module015_code = "";
    try {
        shader_module015_code = await fs.readFile('out/shader_module015.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module015 = await device01.createShaderModule({ code: shader_module015_code })

    const buffer012 = device01.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.UNIFORM
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

    compute_pass_encoder0000.popDebugGroup()

    const buffer013 = device01.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.STORAGE
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

    device01.queue.onSubmittedWorkDone();

    device01.destroy();

    const device11 = await adapter1.requestDevice({ label: "device11" });

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

    device10.pushErrorScope("out-of-memory");

    const sampler100 = device10.createSampler();

    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });

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

    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('crates/wg-fuzz/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ code: shader_module100_code })

    const command_buffer101 = command_encoder101.finish();

    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('crates/wg-fuzz/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ code: shader_module101_code })

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

    buffer000.destroy()

    const texture020 = device02.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });

    const sampler101 = device10.createSampler();

    const sampler020 = device02.createSampler();

    compute_pass_encoder0000.insertDebugMarker("marker")

    const pipeline_layout100 = device10.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout100]
    });

    device11.destroy();

    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });

    const sampler102 = device10.createSampler();

    const pipeline_layout101 = device10.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout100]
    });

    const command_buffer102 = command_encoder102.finish();

    const texture100 = device10.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });

    const buffer020 = device02.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });

    device00.pushErrorScope("validation");

    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('out/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ code: shader_module000_code })

    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('crates/wg-fuzz/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ code: shader_module102_code })

    const texture000 = device00.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgb10a2uint",
        dimension: "2d"
    });

    const texture021 = device02.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
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

    {
        const shaderInfo = await shader_module000.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    {
        const shaderInfo = await shader_module101.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    compute_pass_encoder0000.insertDebugMarker("marker")

    {
        const shaderInfo = await shader_module000.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const array2 = new Float32Array([0.0, 0.0, -0.25, -0.75, -1.0, -0.75, 0.75, -1.0, -1.0, -0.25, 1.0, -1.0, 0.5, 0.0, -1.0, -0.75, 0.75, -0.25, -0.75, -0.25, 1.0, -0.25, -0.75, -0.25, -0.75, 0.0, -0.75, 0.75, 0.25, 0.25, -1.0, -0.75, -1.0, 0.5, 0.75, -0.25, 0.25, -0.25, 0.5, 0.25, -0.5, 1.0, -1.0, -1.0, -1.0, -1.0, -0.5, -1.0, -0.5, 0.0, 1.0, -0.5, 0.75, 0.75, -0.25, -0.25, 0.5, 0.75, 0.75, 1.0, 0.0, 0.0, -0.5, -0.5, -0.75, -0.25, -1.0, -0.75, -1.0, -1.0, -0.25, -0.5, 0.0, 0.5, 0.75, -1.0, 0.25, -0.5, 0.75, 1.0, -0.5, -0.25, -0.75, 1.0, -0.5, 0.5, 1.0, -0.25, -1.0, -0.5, 0.75, 1.0, 0.0, 0.75, 0.0, -1.0, -0.25, -0.25, -0.25, 1.0, ]);

    {
        const shaderInfo = await shader_module102.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const buffer100 = device10.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });

    const texture_view0210 = texture021.createView();

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

    compute_pass_encoder0000.insertDebugMarker("marker")

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

    const device12 = await adapter1.requestDevice({ label: "device12" });

    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('out/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ code: shader_module001_code })

    device02.pushErrorScope("internal");

    const device20 = await adapter2.requestDevice({ label: "device20" });

    command_encoder000.insertDebugMarker("mymarker");

    device02.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    const texture101 = device10.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });

    device10.queue.onSubmittedWorkDone();

    {
        const texture = texture021
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

    command_encoder100.pushDebugGroup("mygroupmarker")

    device20.queue.onSubmittedWorkDone();

    {
        const shaderInfo = await shader_module000.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    console.log(navigator.gpu.getPreferredCanvasFormat());

    const texture_view1010 = texture101.createView();

    const texture_view1000 = texture100.createView();

    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('crates/wg-fuzz/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ code: shader_module200_code })

    const buffer021 = device02.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });

    const buffer120 = device12.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });

    {
        const shaderInfo = await shader_module102.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const texture102 = device10.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });

    {
        const texture = texture102
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

    compute_pass_encoder1000.pushDebugGroup("group_marker")

    device02.queue.onSubmittedWorkDone();

    device20.destroy();

    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);

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

    const texture120 = device12.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

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

    const texture001 = device00.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });

    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);

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

    const render_pipeline101 = await device10.createRenderPipelineAsync({
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

    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('crates/wg-fuzz/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ code: shader_module002_code })

    command_encoder100.insertDebugMarker("mymarker");

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    const sampler000 = device00.createSampler();

    {
        const shaderInfo = await shader_module100.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const buffer001 = device00.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

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

    const buffer101 = device10.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    texture021.destroy();

    {
        const texture = texture101
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

    device02.queue.onSubmittedWorkDone();

    const texture_view1020 = texture102.createView();

    buffer120.destroy()

    const sampler103 = device10.createSampler();

    texture102.destroy();

    const buffer022 = device02.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });

    const buffer102 = device10.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });

    const buffer121 = device12.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.INDIRECT
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

    const array3 = new Float32Array([0.25, -0.25, -1.0, -0.25, 0.0, 1.0, 0.0, -0.5, 0.0, 0.75, 0.0, 0.5, -0.75, -0.25, -1.0, -0.25, 0.5, 0.5, -1.0, 1.0, -0.5, -0.25, 0.75, -0.75, -0.25, 0.75, 0.25, 0.25, -0.5, 1.0, -0.25, 0.0, -0.75, 1.0, -0.75, 1.0, -0.25, -0.25, -1.0, -0.25, -0.25, 0.5, -0.5, -1.0, 1.0, -0.25, 0.25, -0.75, -1.0, -0.75, -0.5, 0.75, -1.0, -0.5, 0.25, 0.0, 0.0, -0.75, -0.25, -0.5, 0.5, -0.75, -1.0, 0.0, 0.0, 0.25, 0.5, -1.0, 0.75, -1.0, -0.25, 1.0, -0.5, 0.0, 0.75, 0.75, -0.75, 0.25, -0.5, -0.25, 0.0, -0.75, 0.25, 0.25, 1.0, -0.75, -0.25, 0.75, -0.5, 0.75, 0.0, -0.75, 0.0, 0.0, -0.75, 0.75, 1.0, 1.0, 1.0, 0.25, ]);

    const bind_group_layout121 = device12.createBindGroupLayout({ 
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

    const render_pipeline102 = await device10.createRenderPipelineAsync({
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

    buffer121.destroy()

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

    {
        const texture = texture101
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
        bindGroupLayouts: [bind_group_layout101]
    });

    const pipeline_layout103 = device10.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout103]
    });

    {
        const shaderInfo = await shader_module101.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    texture100.destroy();

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

    texture120.destroy();

    device02.destroy();

    const pipeline_layout120 = device12.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout121]
    });

    device12.pushErrorScope("internal");

    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('out/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ code: shader_module003_code })

    {
        const shaderInfo = await shader_module000.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const array4 = new Float32Array([0.25, 1.0, 0.25, 0.5, 0.5, 0.0, 0.25, 0.5, -0.25, 0.0, -0.75, -1.0, 0.5, 0.0, 0.75, 0.5, 0.75, 1.0, -0.5, 0.5, -1.0, 1.0, 1.0, 0.5, 0.5, 0.0, -1.0, 0.75, -1.0, -0.5, 0.5, 0.25, 1.0, -0.75, 0.75, -1.0, -0.25, 1.0, -0.25, -0.5, 0.25, 0.25, 0.75, 0.25, 0.5, -0.25, 1.0, 0.75, -0.25, -1.0, -1.0, -0.25, -1.0, -0.75, 1.0, -0.25, -0.75, -0.25, 0.75, 1.0, -1.0, -0.25, -0.75, 0.75, -0.75, 0.25, 0.0, 0.0, -0.25, 0.5, 0.25, -0.25, 0.5, 0.5, 0.25, 0.75, 0.75, 0.0, 1.0, 0.0, 0.25, 1.0, -0.75, 0.75, -0.75, 1.0, 1.0, -1.0, 0.25, -0.25, -1.0, 0.5, 0.25, -1.0, -1.0, -0.75, -0.75, 0.5, -1.0, 0.25, ]);

    const render_pipeline103 = await device10.createRenderPipelineAsync({
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

    compute_pass_encoder0000.pushDebugGroup("group_marker")

    var shader_module120_code = "";
    try {
        shader_module120_code = await fs.readFile('crates/wg-fuzz/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module120 = await device12.createShaderModule({ code: shader_module120_code })

    compute_pass_encoder1000.popDebugGroup()

    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });

    var shader_module121_code = "";
    try {
        shader_module121_code = await fs.readFile('out/shader_module121.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module121 = await device12.createShaderModule({ code: shader_module121_code })

    device10.pushErrorScope("validation");

    command_encoder103.copyTextureToBuffer(
        {
            texture: texture101
        },
        {
            buffer: buffer100
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );

    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
    colorAttachments: [
        {
            clearValue: [0.0, 0.5, 1.0, 1.0],
            loadOp: "clear",
            storeOp: "store",
            view: texture_view1010,
        },
    ],
    });

    const render_pipeline104 = device10.createRenderPipeline({
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

    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);

    {
        const buffer = buffer100
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    device00.queue.onSubmittedWorkDone();

    const render_pipeline000 = await device00.createRenderPipelineAsync({
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

    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);

    command_encoder100.popDebugGroup()

    const buffer103 = device10.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });

    command_encoder103.clearBuffer(buffer100);

    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);

    render_pass_encoder1030.setStencilReference(1);

    const texture121 = device12.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    render_pass_encoder1030.setStencilReference(1);

    device10.queue.submit([command_buffer102, ]);

    compute_pass_encoder1000.insertDebugMarker("marker")

    const device30 = await adapter3.requestDevice({ label: "device30" });

    {
        const buffer = buffer101
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

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

    render_pass_encoder1030.setPipeline(render_pipeline102);

    device30.pushErrorScope("out-of-memory");

    device00.queue.onSubmittedWorkDone();

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

    texture101.destroy();

    {
        const shaderInfo = await shader_module002.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    buffer100.destroy()

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

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    const device03 = await adapter0.requestDevice({ label: "device03" });

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

    const compute_pipeline120 = device12.createComputePipeline({ layout: pipeline_layout120, compute: { module: shader_module121, entryPoint: "main" } });

    device12.queue.onSubmittedWorkDone();

    var shader_module030_code = "";
    try {
        shader_module030_code = await fs.readFile('out/shader_module030.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module030 = await device03.createShaderModule({ code: shader_module030_code })

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

    texture121.destroy();

    const render_pipeline105 = device10.createRenderPipeline({
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

    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });

    command_encoder001.pushDebugGroup("mygroupmarker")

    {
        const buffer = buffer001
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const texture300 = device30.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });

    device00.queue.onSubmittedWorkDone();

    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('out/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ code: shader_module300_code })

    {
        const shaderInfo = await shader_module300.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    {
        const shaderInfo = await shader_module000.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const sampler030 = device03.createSampler();

    {
        const shaderInfo = await shader_module100.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    render_pass_encoder1030.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);

    compute_pass_encoder1000.insertDebugMarker("marker")

    render_pass_encoder1030.pushDebugGroup("group_marker");

    const adapter4 = await navigator.gpu.requestAdapter({
                powerPreference: undefined,
                label: "adapter4"
            });

    device03.pushErrorScope("out-of-memory");

    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('out/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ code: shader_module301_code })

    buffer101.destroy()

    device00.queue.onSubmittedWorkDone();

    const pipeline_layout104 = device10.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout102]
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

    const adapter5 = await navigator.gpu.requestAdapter({
                powerPreference: "high-performance",
                label: "adapter5"
            });

    command_encoder100.pushDebugGroup("mygroupmarker")

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

    const pipeline_layout105 = device10.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout100]
    });

    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });

    const buffer300 = device30.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });

    {
        const shaderInfo = await shader_module003.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    device30.queue.writeTexture({ texture: texture300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });

    const sampler001 = device00.createSampler();

    const device50 = await adapter5.requestDevice({ label: "device50" });

    {
        const buffer = buffer001
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const pipeline_layout121 = device12.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout120]
    });

    const command_encoder120 = device12.createCommandEncoder({ label: "command_encoder120" });

    device10.queue.onSubmittedWorkDone();

    command_encoder103.pushDebugGroup("mygroupmarker")

    const texture_view0000 = texture000.createView();

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    {
        const shaderInfo = await shader_module102.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    {
        const buffer = buffer001
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('out/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ code: shader_module302_code })

    console.log(device50.features.size);

    for (const value of device50.features.keys()) {
        console.log(value);
    }

    console.log(device50.limits.size);

    for (const [key, value] of Object.entries(device50.limits)) {
        console.log(key);
        console.log(value);
    }

    device50.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    const device51 = await adapter5.requestDevice({ label: "device51" });

    {
        const buffer = buffer001
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

    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('out/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ code: shader_module500_code })

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

    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('out/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ code: shader_module004_code })

    const pipeline_layout122 = device12.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout121]
    });

    buffer300.destroy()

    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('crates/wg-fuzz/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ code: shader_module303_code })

    command_encoder120.insertDebugMarker("mymarker");

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

    const compute_pass_encoder1200 = command_encoder120.beginComputePass({ label: "compute_pass_encoder1200" });

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    const compute_pipeline121 = device12.createComputePipeline({ layout: pipeline_layout122, compute: { module: shader_module121, entryPoint: "main" } });

    const compute_pipeline122 = device12.createComputePipeline({ layout: pipeline_layout120, compute: { module: shader_module121, entryPoint: "main" } });

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

    const pipeline_layout106 = device10.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout103]
    });

    compute_pass_encoder0000.popDebugGroup()

    texture001.destroy();

    {
        const shaderInfo = await shader_module121.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

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

    command_encoder300.pushDebugGroup("mygroupmarker")

    const sampler031 = device03.createSampler();

    {
        const shaderInfo = await shader_module003.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    {
        const shaderInfo = await shader_module120.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const device40 = await adapter4.requestDevice({ label: "device40" });

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

    device30.queue.onSubmittedWorkDone();

    render_pass_encoder1030.popDebugGroup();

    const compute_pipeline123 = await device12.createComputePipelineAsync({ layout: pipeline_layout120, compute: { module: shader_module121, entryPoint: "main" } });

    const render_pipeline106 = device10.createRenderPipeline({
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

    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });

    {
        const shaderInfo = await shader_module301.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const compute_pipeline124 = await device12.createComputePipelineAsync({ layout: pipeline_layout120, compute: { module: shader_module121, entryPoint: "main" } });

    const texture_view0001 = texture000.createView();

    const sampler032 = device03.createSampler();

    render_pass_encoder1030.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);

    compute_pass_encoder1200.setPipeline(compute_pipeline122);

    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    command_encoder300.popDebugGroup()

    const command_buffer300 = command_encoder300.finish();

    const buffer122 = device12.createBuffer({
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer123 = device12.createBuffer({
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group120 = device12.createBindGroup({
        layout: compute_pipeline122.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer122,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer123,
                },
            },
        ],
    });

    compute_pass_encoder1200.setBindGroup(0, bind_group120);

    device03.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    command_encoder001.popDebugGroup()

    compute_pass_encoder1200.dispatchWorkgroups(100);

    device10.queue.submit([command_buffer101, ]);

    command_encoder000.popDebugGroup()

    device30.queue.submit([command_buffer300, ]);

    command_encoder100.popDebugGroup()

    device12.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    command_encoder103.popDebugGroup()

    compute_pass_encoder1200.end();

    const command_buffer120 = command_encoder120.finish();
}

init();