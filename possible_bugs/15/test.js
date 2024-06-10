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

    const array0 = new Float32Array([-1.0, -0.25, -1.0, -0.75, 0.75, 0.5, -0.75, 0.75, -0.5, -0.75, 0.25, -0.25, 0.0, 1.0, 1.0, -0.25, -0.25, 0.75, -0.5, 0.5, -0.5, 0.25, 1.0, -0.5, 0.25, 0.25, -0.5, -0.5, -1.0, -0.5, -0.5, 0.0, -0.25, 0.0, -1.0, 0.75, -0.5, 1.0, -1.0, 0.5, -0.5, -1.0, -1.0, 0.5, -0.75, -0.25, 0.5, -0.75, 0.0, 0.5, -1.0, -1.0, -0.75, 1.0, -0.5, -1.0, -0.75, 0.75, 0.0, 1.0, 0.75, -0.5, 0.75, -0.25, 0.0, 0.5, 0.0, -0.25, -1.0, -1.0, 0.75, -0.5, -0.25, 1.0, 0.0, -1.0, 1.0, -0.25, 0.75, 0.0, 0.5, 0.5, 0.5, 0.25, -1.0, 0.0, 0.75, -0.5, -1.0, -0.25, -0.5, 0.5, -0.5, 0.25, 0.0, 0.0, -1.0, 1.0, 1.0, -0.25, ]);

    const array1 = new Float32Array([-0.5, 0.25, 0.0, -0.25, 0.5, 0.0, -0.75, 1.0, -0.5, -0.75, -0.25, 1.0, 0.0, -0.25, -1.0, 0.25, 0.75, 0.5, 0.25, 0.0, 1.0, 0.25, 1.0, -0.25, 1.0, 0.5, -0.75, 0.75, 1.0, -0.5, -0.75, -1.0, -0.75, -0.5, -0.25, 1.0, 0.0, -0.75, -0.75, -0.75, 0.75, 0.5, -0.25, -1.0, 0.75, -0.25, -1.0, -1.0, 0.5, 0.75, -0.5, -0.25, -0.75, -0.25, 1.0, 0.0, -0.25, 0.75, 1.0, -0.75, -0.75, -0.75, 1.0, 0.5, 0.75, -1.0, 0.75, 1.0, 1.0, 0.5, -1.0, 0.5, 0.75, -0.25, -0.25, 0.75, -1.0, -0.5, 0.5, 0.0, 0.75, -0.5, -0.5, -1.0, 0.5, 0.5, -1.0, -0.25, -0.25, 0.75, 0.75, -0.5, -0.25, -1.0, 1.0, 0.75, 0.0, -0.25, 0.0, 0.25, ]);

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    console.log(navigator.gpu.getPreferredCanvasFormat());

    const adapter0 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance",
        label: "adapter0"
    });

    const device00 = await adapter0.requestDevice({ label: "device00" });

    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('crates/acv/src/code_samples/render_shader.wgsl', 'utf8');
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

    {
        const shaderInfo = await shader_module000.getCompilationInfo();

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

    const render_pipeline000 = await device00.createRenderPipelineAsync({
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

    const query000 = device00.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    const device01 = await adapter0.requestDevice({ label: "device01" });

    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    const device02 = await adapter0.requestDevice({ label: "device02" });

    const sampler000 = device00.createSampler();

    const buffer000 = device00.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });

    var shader_module010_code = "";
    try {
        shader_module010_code = await fs.readFile('out/shader_module010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module010 = await device01.createShaderModule({ code: shader_module010_code })

    {
        const shaderInfo = await shader_module010.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    device02.destroy();

    const buffer010 = device01.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });

    device00.pushErrorScope("validation");

    device01.pushErrorScope("out-of-memory");

    const sampler010 = device01.createSampler();

    const buffer001 = device00.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });

    const query010 = device01.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    device01.queue.onSubmittedWorkDone();

    const query001 = device00.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    console.log(navigator.gpu.getPreferredCanvasFormat());

    var shader_module011_code = "";
    try {
        shader_module011_code = await fs.readFile('crates/acv/src/code_samples/render_shader.wgsl', 'utf8');
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

    render_bundle_encoder000.pushDebugGroup("group_marker");

    {
        const buffer = buffer000
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

    render_bundle_encoder000.setPipeline(render_pipeline000);

    query000.destroy()

    const buffer011 = device01.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });

    const render_pipeline010 = device01.createRenderPipeline({
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

    const render_pipeline001 = await device00.createRenderPipelineAsync({
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

    const buffer012 = device01.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });

    {
        const shaderInfo = await shader_module010.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    buffer012.destroy()

    const render_pipeline002 = device00.createRenderPipeline({
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
        layout: "auto"
    });

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

    buffer010.destroy()

    const query002 = device00.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    const render_pipeline003 = device00.createRenderPipeline({
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
        layout: "auto"
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

    const query011 = device01.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    const buffer002 = device00.createBuffer({
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer003 = device00.createBuffer({
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group000 = device00.createBindGroup({
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder000.setBindGroup(0, bind_group000);

    {
        await buffer001.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer001.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer001.unmap();
        console.log(new Float32Array(data));
    }

    buffer001.destroy()

    console.log(query011.label);
    
    console.log(query011.type);
    
    console.log(query011.count);

    console.log(query001.label);
    
    console.log(query001.type);
    
    console.log(query001.count);

    buffer000.destroy()

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

    device01.queue.onSubmittedWorkDone();

    console.log(query010.label);
    
    console.log(query010.type);
    
    console.log(query010.count);

    {
        const buffer = buffer002
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });

    var shader_module013_code = "";
    try {
        shader_module013_code = await fs.readFile('crates/acv/src/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module013 = await device01.createShaderModule({ code: shader_module013_code })

    console.log(query001.label);
    
    console.log(query001.type);
    
    console.log(query001.count);

    const texture000 = device00.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
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

    const command_encoder010 = device01.createCommandEncoder({ label: "command_encoder010" });

    device00.queue.onSubmittedWorkDone();

    command_encoder000.pushDebugGroup("mygroupmarker")

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

    console.log(query011.label);
    
    console.log(query011.type);
    
    console.log(query011.count);

    const query012 = device01.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });

    const pipeline_layout010 = device01.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout011]
    });

    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });

    var shader_module014_code = "";
    try {
        shader_module014_code = await fs.readFile('out/shader_module014.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module014 = await device01.createShaderModule({ code: shader_module014_code })

    buffer003.destroy()

    query000.destroy()

    const compute_pipeline010 = await device01.createComputePipelineAsync({ layout: pipeline_layout010, compute: { module: shader_module014, entryPoint: "main" } });

    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });

    device01.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    buffer002.destroy()

    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });

    query000.destroy()

    query000.destroy()

    const render_pipeline011 = await device01.createRenderPipelineAsync({
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

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    command_encoder001.insertDebugMarker("mymarker");

    const compute_pipeline011 = await device01.createComputePipelineAsync({ layout: pipeline_layout010, compute: { module: shader_module014, entryPoint: "main" } });

    const device03 = await adapter0.requestDevice({ label: "device03" });

    const compute_pipeline012 = device01.createComputePipeline({ layout: pipeline_layout010, compute: { module: shader_module014, entryPoint: "main" } });

    const compute_pipeline013 = device01.createComputePipeline({ layout: pipeline_layout010, compute: { module: shader_module010, entryPoint: "main" } });

    const render_pipeline012 = await device01.createRenderPipelineAsync({
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

    const compute_pipeline014 = device01.createComputePipeline({ layout: pipeline_layout010, compute: { module: shader_module010, entryPoint: "main" } });

    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });

    const compute_pipeline015 = device01.createComputePipeline({ layout: pipeline_layout010, compute: { module: shader_module012, entryPoint: "main" } });

    query012.destroy()

    console.log(query002.label);
    
    console.log(query002.type);
    
    console.log(query002.count);

    device01.queue.onSubmittedWorkDone();

    const render_pipeline004 = device00.createRenderPipeline({
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
        layout: "auto"
    });

    const render_pipeline005 = await device00.createRenderPipelineAsync({
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

    command_encoder002.pushDebugGroup("mygroupmarker")

    compute_pass_encoder0010.pushDebugGroup("group_marker")

    command_encoder002.insertDebugMarker("mymarker");

    var shader_module030_code = "";
    try {
        shader_module030_code = await fs.readFile('crates/acv/src/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module030 = await device03.createShaderModule({ code: shader_module030_code })

    const pipeline_layout011 = device01.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout010]
    });

    const compute_pipeline016 = await device01.createComputePipelineAsync({ layout: pipeline_layout010, compute: { module: shader_module010, entryPoint: "main" } });

    {
        const shaderInfo = await shader_module013.getCompilationInfo();

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

    query002.destroy()

    const query003 = device00.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    console.log(query010.label);
    
    console.log(query010.type);
    
    console.log(query010.count);

    const texture_view0000 = texture000.createView();

    console.log(query010.label);
    
    console.log(query010.type);
    
    console.log(query010.count);

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

    const texture030 = device03.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });

    command_encoder003.pushDebugGroup("mygroupmarker")

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

    command_encoder003.popDebugGroup()

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

    const compute_pipeline017 = device01.createComputePipeline({ layout: pipeline_layout011, compute: { module: shader_module014, entryPoint: "main" } });

    {
        const shaderInfo = await shader_module000.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const compute_pipeline018 = await device01.createComputePipelineAsync({ layout: pipeline_layout010, compute: { module: shader_module012, entryPoint: "main" } });

    const render_pipeline013 = await device01.createRenderPipelineAsync({
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

    texture000.destroy();

    const render_bundle_encoder030 = device03.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query003
    });

    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query003
    });

    console.log(query010.label);
    
    console.log(query010.type);
    
    console.log(query010.count);

    command_encoder003.pushDebugGroup("mygroupmarker")

    const buffer030 = device03.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });

    const query013 = device01.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    render_bundle_encoder030.setPipeline(render_pipeline031);

    const compute_pipeline019 = await device01.createComputePipelineAsync({ layout: pipeline_layout010, compute: { module: shader_module014, entryPoint: "main" } });

    device03.pushErrorScope("out-of-memory");

    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('out/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ code: shader_module002_code })

    const compute_pipeline0110 = device01.createComputePipeline({ layout: pipeline_layout011, compute: { module: shader_module014, entryPoint: "main" } });

    render_pass_encoder0020.setPipeline(render_pipeline002);

    const sampler030 = device03.createSampler();

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

    render_pass_encoder0000.setPipeline(render_pipeline003);

    query010.destroy()

    const compute_pipeline0111 = device01.createComputePipeline({ layout: pipeline_layout011, compute: { module: shader_module010, entryPoint: "main" } });

    device00.queue.onSubmittedWorkDone();

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

    const compute_pipeline0112 = await device01.createComputePipelineAsync({ layout: pipeline_layout010, compute: { module: shader_module010, entryPoint: "main" } });

    console.log(query003.label);
    
    console.log(query003.type);
    
    console.log(query003.count);

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

    console.log(query003.label);
    
    console.log(query003.type);
    
    console.log(query003.count);

    command_encoder010.insertDebugMarker("mymarker");

    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);

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

    render_pass_encoder0000.setStencilReference(1);

    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);

    const query030 = device03.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    device03.queue.writeTexture({ texture: texture030 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });

    const render_pipeline006 = device00.createRenderPipeline({
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
        layout: "auto"
    });

    device03.queue.writeTexture({ texture: texture030 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });

    {
        const shaderInfo = await shader_module013.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    buffer011.destroy()

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

    const render_pipeline032 = device03.createRenderPipeline({
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

    device01.queue.onSubmittedWorkDone();

    command_encoder001.insertDebugMarker("mymarker");

    const texture031 = device03.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });

    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    command_encoder001.insertDebugMarker("mymarker");

    command_encoder000.popDebugGroup()

    render_pass_encoder0000.setStencilReference(1);

    device03.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    console.log(query001.label);
    
    console.log(query001.type);
    
    console.log(query001.count);

    render_pass_encoder0020.beginOcclusionQuery(0)

    query011.destroy()

    console.log(query030.label);
    
    console.log(query030.type);
    
    console.log(query030.count);

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

    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);

    const render_bundle_encoder031 = device03.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    {
        const shaderInfo = await shader_module013.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const texture032 = device03.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });

    const compute_pipeline0113 = await device01.createComputePipelineAsync({ layout: pipeline_layout011, compute: { module: shader_module012, entryPoint: "main" } });

    buffer030.destroy()

    render_bundle_encoder001.setPipeline(render_pipeline002);

    const query014 = device01.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    query000.destroy()

    const compute_pipeline0114 = await device01.createComputePipelineAsync({ layout: pipeline_layout011, compute: { module: shader_module012, entryPoint: "main" } });

    const render_pipeline014 = await device01.createRenderPipelineAsync({
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

    render_bundle_encoder030.insertDebugMarker("marker");

    {
        const shaderInfo = await shader_module012.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const command_buffer010 = command_encoder010.finish();

    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query002
    });

    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);

    command_encoder001.pushDebugGroup("mygroupmarker")

    const render_pipeline033 = device03.createRenderPipeline({
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

    console.log(navigator.gpu.getPreferredCanvasFormat());

    compute_pass_encoder0010.insertDebugMarker("marker")

    {
        const shaderInfo = await shader_module001.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    render_pass_encoder0020.endOcclusionQuery()

    const query015 = device01.createQuerySet({
        type: "occlusion",
        count: 32,
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

    render_pass_encoder0020.setStencilReference(1);

    render_pass_encoder0020.setStencilReference(1);

    const sampler031 = device03.createSampler();

    const render_pipeline034 = await device03.createRenderPipelineAsync({
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

    const buffer004 = device00.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });

    const compute_pipeline0115 = await device01.createComputePipelineAsync({ layout: pipeline_layout010, compute: { module: shader_module012, entryPoint: "main" } });

    command_encoder002.insertDebugMarker("mymarker");

    texture032.destroy();

    const compute_pipeline0116 = await device01.createComputePipelineAsync({ layout: pipeline_layout011, compute: { module: shader_module012, entryPoint: "main" } });

    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });

    command_encoder000.resolveQuerySet(
        query002,
        0,
        32,
        buffer004,
        0
    )

    render_pass_encoder0030.setPipeline(render_pipeline000);

    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('out/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ code: shader_module003_code })

    const buffer005 = device00.createBuffer({
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer006 = device00.createBuffer({
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group001 = device00.createBindGroup({
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer005,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer006,
                },
            },
        ],
    });

    render_pass_encoder0020.setBindGroup(0, bind_group001);

    buffer006.destroy()

    buffer005.destroy()

    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer004,
        0
    )

    command_encoder000.pushDebugGroup("mygroupmarker")

    const texture010 = device01.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgb10a2uint",
        dimension: "2d"
    });

    var shader_module015_code = "";
    try {
        shader_module015_code = await fs.readFile('out/shader_module015.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module015 = await device01.createShaderModule({ code: shader_module015_code })

    command_encoder003.resolveQuerySet(
        query000,
        0,
        32,
        buffer004,
        0
    )

    command_encoder004.resolveQuerySet(
        query001,
        0,
        32,
        buffer004,
        0
    )

    compute_pass_encoder0010.insertDebugMarker("marker")

    const render_pipeline015 = device01.createRenderPipeline({
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

    texture031.destroy();

    device03.destroy();

    render_pass_encoder0000.insertDebugMarker("marker");

    command_encoder004.resolveQuerySet(
        query002,
        0,
        32,
        buffer004,
        0
    )

    render_pass_encoder0020.pushDebugGroup("group_marker");

    command_encoder003.insertDebugMarker("mymarker");

    {
        const shaderInfo = await shader_module001.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);

    render_bundle_encoder000.insertDebugMarker("marker");

    console.log(query015.label);
    
    console.log(query015.type);
    
    console.log(query015.count);

    const texture001 = device00.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "depth16unorm",
        dimension: "2d"
    });

    const texture_view0010 = texture001.createView();

    command_encoder002.resolveQuerySet(
        query003,
        0,
        32,
        buffer004,
        0
    )

    const compute_pipeline0117 = device01.createComputePipeline({ layout: pipeline_layout011, compute: { module: shader_module015, entryPoint: "main" } });

    const compute_pipeline0118 = await device01.createComputePipelineAsync({ layout: pipeline_layout011, compute: { module: shader_module015, entryPoint: "main" } });

    const query016 = device01.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    const bind_group_layout013 = device01.createBindGroupLayout({ 
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

    render_pass_encoder0000.pushDebugGroup("group_marker");

    console.log(query015.label);
    
    console.log(query015.type);
    
    console.log(query015.count);

    render_pass_encoder0020.beginOcclusionQuery(0)

    render_pass_encoder0030.setStencilReference(1);

    console.log(query013.label);
    
    console.log(query013.type);
    
    console.log(query013.count);

    const render_pipeline007 = device00.createRenderPipeline({
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
        layout: "auto"
    });

    query014.destroy()

    {
        const shaderInfo = await shader_module000.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const compute_pipeline0119 = await device01.createComputePipelineAsync({ layout: pipeline_layout011, compute: { module: shader_module012, entryPoint: "main" } });

    const command_buffer004 = command_encoder004.finish();

    console.log(query015.label);
    
    console.log(query015.type);
    
    console.log(query015.count);

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

    query002.destroy()

    const render_pipeline016 = device01.createRenderPipeline({
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

    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);

    {
        const shaderInfo = await shader_module011.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    texture010.destroy();

    const buffer007 = device00.createBuffer({
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer008 = device00.createBuffer({
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group002 = device00.createBindGroup({
        layout: render_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer007,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer008,
                },
            },
        ],
    });

    render_pass_encoder0000.setBindGroup(0, bind_group002);

    render_pass_encoder0030.insertDebugMarker("marker");

    command_encoder003.popDebugGroup()

    {
        const shaderInfo = await shader_module001.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    device01.queue.submit([command_buffer010, ]);

    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);

    const command_encoder011 = device01.createCommandEncoder({ label: "command_encoder011" });

    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);

    {
        const shaderInfo = await shader_module003.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const buffer013 = device01.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });

    const buffer009 = device00.createBuffer({
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0010 = device00.createBuffer({
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group003 = device00.createBindGroup({
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer009,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0010,
                },
            },
        ],
    });

    render_pass_encoder0030.setBindGroup(0, bind_group003);

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

    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer004,
        0
    )

    const render_pipeline017 = device01.createRenderPipeline({
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

    {
        const texture = texture001
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

    const query004 = device00.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    const texture011 = device01.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });

    command_encoder003.resolveQuerySet(
        query003,
        0,
        32,
        buffer004,
        0
    )

    buffer004.destroy()

    console.log(query001.label);
    
    console.log(query001.type);
    
    console.log(query001.count);

    {
        const buffer = buffer008
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const pipeline_layout000 = device00.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout000]
    });

    const sampler001 = device00.createSampler();

    command_encoder001.resolveQuerySet(
        query003,
        0,
        32,
        buffer004,
        0
    )

    buffer009.destroy()

    const texture_view0011 = texture001.createView();

    compute_pass_encoder0010.popDebugGroup()

    console.log(query016.label);
    
    console.log(query016.type);
    
    console.log(query016.count);

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

    command_encoder003.insertDebugMarker("mymarker");

    texture011.destroy();

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

    const pipeline_layout012 = device01.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout011]
    });

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

    const compute_pipeline0120 = await device01.createComputePipelineAsync({ layout: pipeline_layout012, compute: { module: shader_module012, entryPoint: "main" } });

    const compute_pipeline0121 = device01.createComputePipeline({ layout: pipeline_layout012, compute: { module: shader_module014, entryPoint: "main" } });

    const compute_pipeline0122 = await device01.createComputePipelineAsync({ layout: pipeline_layout011, compute: { module: shader_module015, entryPoint: "main" } });

    const render_bundle_encoder010 = device01.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    command_encoder001.popDebugGroup()

    render_pass_encoder0020.endOcclusionQuery()

    device00.queue.submit([command_buffer004, ]);

    command_encoder002.popDebugGroup()

    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    command_encoder000.popDebugGroup()

    const command_buffer011 = command_encoder011.finish();

    device01.queue.submit([command_buffer011, ]);

    render_pass_encoder0000.popDebugGroup();

    render_pass_encoder0020.popDebugGroup();
}

init();