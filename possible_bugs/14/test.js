const { create, globals } = require('/home/leu/Documents/projects/fyp/wg-fuzz/dawn.node');
Object.assign(globalThis, globals); // Provides constants like GPUBufferUsage.MAP_READ
let navigator = { gpu: create(['enable-dawn-features=allow_unsafe_apis,disable_symbol_renaming']), };
const fs = require('node:fs/promises');

async function init() {
    if (!navigator.gpu) {
        throw Error("WebGPU not supported.");
    }

    const array0 = new Float32Array([1.0, -0.25, -0.75, -0.75, 0.25, 0.0, 0.75, 1.0, -0.25, -1.0, -1.0, -0.5, -0.25, -0.5, 0.75, 1.0, 0.75, -0.25, 0.75, 0.5, 0.25, -0.75, 0.75, 0.0, -1.0, 1.0, -0.25, 0.25, -0.5, 0.75, -0.5, 0.0, 0.0, -1.0, 1.0, 1.0, -0.5, -0.5, 0.75, 0.5, 0.75, 0.0, -1.0, -0.75, -0.75, -1.0, -0.5, -0.5, 0.75, -0.75, -0.75, -0.75, -0.75, 0.5, 0.0, -0.25, 0.5, 0.5, -0.25, -0.5, 0.0, -0.25, -0.25, 0.75, -0.75, 0.75, -0.75, 0.0, 0.0, 0.0, -0.25, 1.0, 0.0, 0.75, 0.0, 0.25, 0.25, 0.0, 1.0, 0.0, -0.5, -0.75, -0.5, -0.75, -0.5, -0.5, 1.0, -0.75, 0.75, -0.75, 0.0, 1.0, -0.25, 1.0, -0.5, 0.5, -0.75, -0.5, 0.5, -0.25, ]);

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    const adapter0 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance",
        label: "adapter0"
    });

    console.log(navigator.gpu.getPreferredCanvasFormat());

    const array1 = new Float32Array([-0.75, -0.5, 1.0, 0.5, -1.0, 1.0, 0.0, 0.0, -0.5, 0.5, 0.75, -0.75, -1.0, -0.25, -1.0, 0.75, -0.5, 1.0, 0.0, -0.5, 0.25, -1.0, -0.75, 0.0, 0.75, -0.75, 0.75, -0.5, -0.75, 1.0, 0.5, 0.5, 1.0, -1.0, 0.25, 1.0, 1.0, 1.0, -1.0, 0.5, 0.25, 0.5, -0.5, 1.0, 0.25, 1.0, -1.0, -0.75, 0.0, 1.0, 0.75, 0.5, -0.75, 0.5, -0.25, 0.75, 0.75, -1.0, -0.5, 0.25, -1.0, -1.0, 0.0, -0.5, 0.5, -0.75, -0.25, -0.75, -1.0, -0.5, -0.75, 0.5, -1.0, -1.0, 0.75, -0.25, 1.0, -0.25, -1.0, -1.0, 0.25, 1.0, 1.0, -0.5, -0.5, 0.25, -0.75, 0.5, -1.0, 0.0, 0.25, -1.0, -0.5, -0.75, 0.25, -0.75, -0.25, -0.25, 0.75, -0.25, ]);

    console.log(navigator.gpu.getPreferredCanvasFormat());

    const device00 = await adapter0.requestDevice({ label: "device00" });

    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('out/shader_module000.wgsl', 'utf8');
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

    const device01 = await adapter0.requestDevice({ label: "device01" });

    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });

    const texture010 = device01.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });

    const command_buffer000 = command_encoder000.finish();

    device00.queue.onSubmittedWorkDone();

    device01.queue.onSubmittedWorkDone();

    var shader_module010_code = "";
    try {
        shader_module010_code = await fs.readFile('crates/acv/src/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module010 = await device01.createShaderModule({ code: shader_module010_code })

    device00.queue.submit([command_buffer000, ]);

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

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

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
        layout: "auto"
    });

    const buffer010 = device01.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });

    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    buffer010.destroy()

    texture010.destroy();

    device01.pushErrorScope("validation");

    const device02 = await adapter0.requestDevice({ label: "device02" });

    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('crates/acv/src/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ code: shader_module002_code })

    const buffer020 = device02.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });

    const texture020 = device02.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });

    const buffer000 = device00.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });

    device01.queue.onSubmittedWorkDone();

    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('out/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ code: shader_module003_code })

    const pipeline_layout010 = device01.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout010]
    });

    const device03 = await adapter0.requestDevice({ label: "device03" });

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

    const buffer011 = device01.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });

    device02.pushErrorScope("out-of-memory");

    var shader_module020_code = "";
    try {
        shader_module020_code = await fs.readFile('out/shader_module020.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module020 = await device02.createShaderModule({ code: shader_module020_code })

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

    const query030 = device03.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    const buffer021 = device02.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const command_encoder010 = device01.createCommandEncoder({ label: "command_encoder010" });

    const bind_group_layout020 = device02.createBindGroupLayout({ 
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

    const query000 = device00.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    console.log(query000.label);
    
    console.log(query000.type);
    
    console.log(query000.count);

    device01.queue.writeBuffer(buffer011, 0, array0, 0, array0.length);

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

    const buffer012 = device01.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });

    device00.pushErrorScope("internal");

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

    var shader_module021_code = "";
    try {
        shader_module021_code = await fs.readFile('crates/acv/src/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module021 = await device02.createShaderModule({ code: shader_module021_code })

    const device04 = await adapter0.requestDevice({ label: "device04" });

    const texture_view0200 = texture020.createView();

    var shader_module011_code = "";
    try {
        shader_module011_code = await fs.readFile('crates/acv/src/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module011 = await device01.createShaderModule({ code: shader_module011_code })

    const render_pipeline012 = device01.createRenderPipeline({
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

    {
        const buffer = buffer021
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const sampler020 = device02.createSampler();

    console.log(query000.label);
    
    console.log(query000.type);
    
    console.log(query000.count);

    console.log(navigator.gpu.getPreferredCanvasFormat());

    const texture030 = device03.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });

    const render_bundle_encoder010 = device01.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    const pipeline_layout020 = device02.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout020]
    });

    console.log(query030.label);
    
    console.log(query030.type);
    
    console.log(query030.count);

    const texture031 = device03.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });

    {
        const shaderInfo = await shader_module002.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    {
        const texture = texture020
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

    buffer020.destroy()

    render_bundle_encoder000.insertDebugMarker("marker");

    {
        const shaderInfo = await shader_module010.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
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

    const render_pipeline013 = await device01.createRenderPipelineAsync({
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

    console.log(query030.label);
    
    console.log(query030.type);
    
    console.log(query030.count);

    texture031.destroy();

    const compute_pipeline020 = device02.createComputePipeline({ layout: pipeline_layout020, compute: { module: shader_module020, entryPoint: "main" } });

    buffer012.destroy()

    render_bundle_encoder010.setPipeline(render_pipeline012);

    const render_pipeline014 = device01.createRenderPipeline({
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

    const pipeline_layout021 = device02.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout020]
    });

    const render_bundle_encoder040 = device04.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    var shader_module012_code = "";
    try {
        shader_module012_code = await fs.readFile('out/shader_module012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module012 = await device01.createShaderModule({ code: shader_module012_code })

    var shader_module030_code = "";
    try {
        shader_module030_code = await fs.readFile('crates/acv/src/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module030 = await device03.createShaderModule({ code: shader_module030_code })

    const compute_pipeline010 = await device01.createComputePipelineAsync({ layout: pipeline_layout010, compute: { module: shader_module012, entryPoint: "main" } });

    {
        const shaderInfo = await shader_module002.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    render_bundle_encoder010.pushDebugGroup("group_marker");

    const compute_pipeline021 = device02.createComputePipeline({ layout: pipeline_layout020, compute: { module: shader_module020, entryPoint: "main" } });

    const query001 = device00.createQuerySet({
        type: "occlusion",
        count: 32,
    });

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

    const compute_pipeline022 = device02.createComputePipeline({ layout: pipeline_layout021, compute: { module: shader_module020, entryPoint: "main" } });

    query030.destroy()

    const bind_group_layout040 = device04.createBindGroupLayout({ 
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

    command_encoder010.pushDebugGroup("mygroupmarker")

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
        layout: "auto"
    });

    const render_pipeline002 = device00.createRenderPipeline({
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

    const render_pipeline016 = await device01.createRenderPipelineAsync({
        vertex: {
            module: shader_module011,
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
            module: shader_module011,
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

    render_bundle_encoder000.setPipeline(render_pipeline000);

    console.log(navigator.gpu.getPreferredCanvasFormat());

    device01.queue.onSubmittedWorkDone();

    query030.destroy()

    const compute_pipeline011 = device01.createComputePipeline({ layout: pipeline_layout010, compute: { module: shader_module012, entryPoint: "main" } });

    device02.queue.onSubmittedWorkDone();

    const bind_group_layout021 = device02.createBindGroupLayout({ 
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

    {
        const shaderInfo = await shader_module020.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const device05 = await adapter0.requestDevice({ label: "device05" });

    const render_bundle_encoder041 = device04.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    const sampler040 = device04.createSampler();

    const texture011 = device01.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
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

    var shader_module022_code = "";
    try {
        shader_module022_code = await fs.readFile('out/shader_module022.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module022 = await device02.createShaderModule({ code: shader_module022_code })

    {
        const buffer = buffer011
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

    device04.pushErrorScope("validation");

    const bind_group_layout041 = device04.createBindGroupLayout({ 
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

    const texture_view0300 = texture030.createView();

    const compute_pipeline023 = await device02.createComputePipelineAsync({ layout: pipeline_layout020, compute: { module: shader_module022, entryPoint: "main" } });

    const compute_pipeline024 = await device02.createComputePipelineAsync({ layout: pipeline_layout021, compute: { module: shader_module022, entryPoint: "main" } });

    device02.queue.onSubmittedWorkDone();

    const render_bundle_encoder020 = device02.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    render_bundle_encoder041.pushDebugGroup("group_marker");

    device05.pushErrorScope("validation");

    device02.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    {
        const shaderInfo = await shader_module001.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    {
        const shaderInfo = await shader_module022.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const query040 = device04.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    render_bundle_encoder041.insertDebugMarker("marker");

    const render_bundle_encoder021 = device02.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    const buffer013 = device01.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.STORAGE
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

    {
        const buffer = buffer000
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

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

    const pipeline_layout011 = device01.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout010]
    });

    {
        const shaderInfo = await shader_module010.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    var shader_module013_code = "";
    try {
        shader_module013_code = await fs.readFile('crates/acv/src/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module013 = await device01.createShaderModule({ code: shader_module013_code })

    const pipeline_layout022 = device02.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout020]
    });

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

    const compute_pipeline025 = await device02.createComputePipelineAsync({ layout: pipeline_layout020, compute: { module: shader_module020, entryPoint: "main" } });

    const compute_pass_encoder0100 = command_encoder010.beginComputePass({ label: "compute_pass_encoder0100" });

    const render_bundle_encoder022 = device02.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });

    {
        const shaderInfo = await shader_module013.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    render_bundle_encoder020.pushDebugGroup("group_marker");

    const command_encoder030 = device03.createCommandEncoder({ label: "command_encoder030" });

    buffer000.destroy()

    const buffer001 = device00.createBuffer({
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer002 = device00.createBuffer({
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group000 = device00.createBindGroup({
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder000.setBindGroup(0, bind_group000);

    const render_pipeline017 = await device01.createRenderPipelineAsync({
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

    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('out/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ code: shader_module004_code })

    const compute_pipeline012 = device01.createComputePipeline({ layout: pipeline_layout011, compute: { module: shader_module012, entryPoint: "main" } });

    const command_buffer001 = command_encoder001.finish();

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    render_bundle_encoder041.popDebugGroup();

    {
        const shaderInfo = await shader_module021.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const render_pipeline020 = device02.createRenderPipeline({
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
        layout: "auto"
    });

    buffer002.destroy()

    const adapter1 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power",
        label: "adapter1"
    });

    const render_pass_encoder0300 = command_encoder030.beginRenderPass({
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0300,
            },
        ],
        occlusionQuerySet: query030
    });

    const render_pipeline018 = device01.createRenderPipeline({
        vertex: {
            module: shader_module011,
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
            module: shader_module011,
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

    query000.destroy()

    {
        const shaderInfo = await shader_module000.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    render_bundle_encoder000.insertDebugMarker("marker");

    device01.queue.writeBuffer(buffer011, 0, array0, 0, array0.length);

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

    device03.queue.writeTexture({ texture: texture030 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });

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

    const compute_pipeline026 = device02.createComputePipeline({ layout: pipeline_layout022, compute: { module: shader_module020, entryPoint: "main" } });

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

    {
        const shaderInfo = await shader_module011.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    render_bundle_encoder020.popDebugGroup();

    {
        const shaderInfo = await shader_module020.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    render_pass_encoder0300.executeBundles([])

    const device10 = await adapter1.requestDevice({ label: "device10" });

    render_bundle_encoder020.insertDebugMarker("marker");

    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });

    compute_pass_encoder0100.setPipeline(compute_pipeline011);

    texture011.destroy();

    command_encoder002.pushDebugGroup("mygroupmarker")

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

    const buffer022 = device02.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });

    {
        const buffer = buffer022
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    var shader_module040_code = "";
    try {
        shader_module040_code = await fs.readFile('out/shader_module040.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module040 = await device04.createShaderModule({ code: shader_module040_code })

    const bind_group_layout042 = device04.createBindGroupLayout({ 
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

    {
        const shaderInfo = await shader_module003.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    device03.queue.onSubmittedWorkDone();

    {
        const buffer = buffer021
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const bind_group_layout043 = device04.createBindGroupLayout({ 
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

    render_bundle_encoder020.setPipeline(render_pipeline020);

    query001.destroy()

    {
        const shaderInfo = await shader_module002.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const pipeline_layout040 = device04.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout042]
    });

    const buffer014 = device01.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.INDEX
    });

    const render_pipeline032 = await device03.createRenderPipelineAsync({
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

    command_encoder002.insertDebugMarker("mymarker");

    const buffer003 = device00.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.INDEX
    });

    console.log(navigator.gpu.getPreferredCanvasFormat());

    const query020 = device02.createQuerySet({
        type: "occlusion",
        count: 32,
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

    const bind_group_layout022 = device02.createBindGroupLayout({ 
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

    const texture032 = device03.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });

    device01.queue.onSubmittedWorkDone();

    query020.destroy()

    const buffer023 = device02.createBuffer({
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer024 = device02.createBuffer({
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group020 = device02.createBindGroup({
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

    render_bundle_encoder020.setBindGroup(0, bind_group020);

    const command_encoder031 = device03.createCommandEncoder({ label: "command_encoder031" });

    const texture000 = device00.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba16float",
        dimension: "2d"
    });

    render_pass_encoder0300.setStencilReference(1);

    {
        const shaderInfo = await shader_module011.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    query001.destroy()

    const compute_pass_encoder0310 = command_encoder031.beginComputePass({ label: "compute_pass_encoder0310" });

    {
        const shaderInfo = await shader_module010.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const command_encoder040 = device04.createCommandEncoder({ label: "command_encoder040" });

    buffer003.destroy()

    device01.pushErrorScope("internal");

    const bind_group_layout050 = device05.createBindGroupLayout({ 
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

    const sampler000 = device00.createSampler();

    console.log(query031.label);
    
    console.log(query031.type);
    
    console.log(query031.count);

    render_bundle_encoder040.pushDebugGroup("group_marker");

    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });

    texture030.destroy();

    render_pass_encoder0300.setPipeline(render_pipeline031);

    device01.queue.onSubmittedWorkDone();

    render_bundle_encoder022.pushDebugGroup("group_marker");

    buffer022.destroy()

    const compute_pipeline027 = device02.createComputePipeline({ layout: pipeline_layout020, compute: { module: shader_module022, entryPoint: "main" } });

    var shader_module031_code = "";
    try {
        shader_module031_code = await fs.readFile('out/shader_module031.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module031 = await device03.createShaderModule({ code: shader_module031_code })

    const render_pipeline005 = await device00.createRenderPipelineAsync({
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

    compute_pass_encoder0310.insertDebugMarker("marker")

    command_encoder031.pushDebugGroup("mygroupmarker")

    device01.queue.onSubmittedWorkDone();

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

    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('crates/acv/src/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ code: shader_module100_code })

    const pipeline_layout023 = device02.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout021]
    });

    command_encoder031.insertDebugMarker("mymarker");

    const texture012 = device01.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });

    const texture021 = device02.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });

    compute_pass_encoder0100.pushDebugGroup("group_marker")

    texture020.destroy();

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

    compute_pass_encoder0020.insertDebugMarker("marker")

    const buffer040 = device04.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });

    const compute_pipeline028 = device02.createComputePipeline({ layout: pipeline_layout021, compute: { module: shader_module020, entryPoint: "main" } });

    const query002 = device00.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    render_bundle_encoder022.popDebugGroup();

    render_bundle_encoder022.setPipeline(render_pipeline020);

    query030.destroy()

    compute_pass_encoder0020.pushDebugGroup("group_marker")

    const command_encoder032 = device03.createCommandEncoder({ label: "command_encoder032" });

    device05.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    const sampler041 = device04.createSampler();

    command_encoder010.insertDebugMarker("mymarker");

    device01.queue.writeBuffer(buffer011, 0, array1, 0, array1.length);

    const compute_pipeline029 = await device02.createComputePipelineAsync({ layout: pipeline_layout023, compute: { module: shader_module022, entryPoint: "main" } });

    {
        const shaderInfo = await shader_module011.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    texture000.destroy();

    const compute_pipeline0210 = device02.createComputePipeline({ layout: pipeline_layout023, compute: { module: shader_module022, entryPoint: "main" } });

    var shader_module041_code = "";
    try {
        shader_module041_code = await fs.readFile('crates/acv/src/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module041 = await device04.createShaderModule({ code: shader_module041_code })

    const pipeline_layout041 = device04.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout043]
    });

    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('crates/acv/src/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ code: shader_module005_code })

    command_encoder040.pushDebugGroup("mygroupmarker")

    command_encoder031.popDebugGroup()

    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });

    {
        const shaderInfo = await shader_module022.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const sampler012 = device01.createSampler();

    var shader_module042_code = "";
    try {
        shader_module042_code = await fs.readFile('crates/acv/src/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module042 = await device04.createShaderModule({ code: shader_module042_code })

    const compute_pipeline0211 = device02.createComputePipeline({ layout: pipeline_layout023, compute: { module: shader_module022, entryPoint: "main" } });

    const pipeline_layout042 = device04.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout043]
    });

    render_pass_encoder0300.insertDebugMarker("marker");

    const pipeline_layout043 = device04.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout043]
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

    render_bundle_encoder040.insertDebugMarker("marker");

    const compute_pipeline0212 = device02.createComputePipeline({ layout: pipeline_layout020, compute: { module: shader_module022, entryPoint: "main" } });

    render_bundle_encoder100.pushDebugGroup("group_marker");

    const sampler021 = device02.createSampler();

    {
        const shaderInfo = await shader_module020.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const pipeline_layout044 = device04.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout043]
    });

    var shader_module023_code = "";
    try {
        shader_module023_code = await fs.readFile('crates/acv/src/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module023 = await device02.createShaderModule({ code: shader_module023_code })

    const render_pipeline006 = await device00.createRenderPipelineAsync({
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

    const compute_pipeline0213 = await device02.createComputePipelineAsync({ layout: pipeline_layout022, compute: { module: shader_module022, entryPoint: "main" } });

    render_bundle_encoder022.pushDebugGroup("group_marker");

    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });

    render_bundle_encoder022.insertDebugMarker("marker");

    device02.queue.writeTexture({ texture: texture021 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });

    const compute_pipeline040 = await device04.createComputePipelineAsync({ layout: pipeline_layout041, compute: { module: shader_module040, entryPoint: "main" } });

    console.log(device05.features.size);

    for (const value of device05.features.keys()) {
        console.log(value);
    }

    console.log(device05.limits.size);

    for (const [key, value] of Object.entries(device05.limits)) {
        console.log(key);
        console.log(value);
    }

    device05.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    const render_pipeline040 = await device04.createRenderPipelineAsync({
        vertex: {
            module: shader_module042,
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
            module: shader_module042,
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

    render_bundle_encoder010.popDebugGroup();

    const pipeline_layout045 = device04.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout043]
    });

    const buffer050 = device05.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    render_bundle_encoder041.setPipeline(render_pipeline040);

    device02.queue.writeTexture({ texture: texture021 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });

    const sampler001 = device00.createSampler();

    {
        const shaderInfo = await shader_module030.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const compute_pipeline0214 = device02.createComputePipeline({ layout: pipeline_layout020, compute: { module: shader_module020, entryPoint: "main" } });

    command_encoder040.popDebugGroup()

    device04.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    const command_buffer032 = command_encoder032.finish();

    const command_buffer100 = command_encoder100.finish();

    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    const buffer030 = device03.createBuffer({
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer031 = device03.createBuffer({
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group030 = device03.createBindGroup({
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

    render_pass_encoder0300.setBindGroup(0, bind_group030);

    command_encoder010.popDebugGroup()

    const command_buffer003 = command_encoder003.finish();

    compute_pass_encoder0020.popDebugGroup()

    const command_buffer040 = command_encoder040.finish();

    device01.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    device00.queue.submit([command_buffer003, ]);

    compute_pass_encoder0100.popDebugGroup()

    const buffer015 = device01.createBuffer({
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer016 = device01.createBuffer({
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group010 = device01.createBindGroup({
        layout: compute_pipeline011.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer016,
                },
            },
        ],
    });

    compute_pass_encoder0100.setBindGroup(0, bind_group010);

    compute_pass_encoder0100.dispatchWorkgroups(100);

    command_encoder002.popDebugGroup()

    device03.queue.submit([command_buffer032, ]);

    device10.queue.submit([command_buffer100, ]);

    device04.queue.submit([command_buffer040, ]);

    device00.queue.submit([command_buffer001, ]);

    compute_pass_encoder0100.end();

    const command_buffer010 = command_encoder010.finish();
}

init();