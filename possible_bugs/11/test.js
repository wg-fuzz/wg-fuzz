const { create, globals } = require('../dawn.node');
Object.assign(globalThis, globals); // Provides constants like GPUBufferUsage.MAP_READ
let navigator = { gpu: create(['enable-dawn-features=allow_unsafe_apis,disable_symbol_renaming']), };
const fs = require('node:fs/promises');

async function init() {
    if (!navigator.gpu) {
        throw Error("WebGPU not supported.");
    }

    const adapter0 = await navigator.gpu.requestAdapter({
                powerPreference: "low-power",
                label: "adapter0"
            });

    const device00 = await adapter0.requestDevice({ label: "device00" });

    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('out/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ code: shader_module000_code })

    device00.destroy();

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

    console.log(navigator.gpu.getPreferredCanvasFormat());

    const device01 = await adapter0.requestDevice({ label: "device01" });

    device01.queue.onSubmittedWorkDone();

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

    const sampler010 = device01.createSampler();

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

    device01.pushErrorScope("validation");

    const sampler011 = device01.createSampler();

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

    const command_encoder010 = device01.createCommandEncoder({ label: "command_encoder010" });

    const command_buffer010 = command_encoder010.finish();

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

    const texture010 = device01.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });

    const array0 = new Float32Array([-0.5, 0.0, -0.5, -0.25, 1.0, -0.25, 0.5, -0.75, -0.5, 1.0, -1.0, 0.75, -0.5, 0.0, -0.25, -0.25, 0.0, 0.75, -1.0, -0.5, 0.75, -0.5, 0.5, 0.25, 0.25, -0.75, 0.25, 0.0, 0.5, -0.5, 0.0, 0.5, 1.0, 0.25, -0.75, -0.75, 0.0, 0.5, 0.75, 0.0, -0.25, -0.75, 0.5, 0.75, -1.0, 0.25, 1.0, -0.5, -1.0, -0.25, -0.75, 0.0, 0.25, 0.0, 0.5, 1.0, -0.25, -0.25, -0.25, -0.75, 0.0, 1.0, -0.5, -0.25, -0.5, -0.75, 0.5, 0.25, 1.0, 0.25, -0.5, 0.75, 0.25, 0.25, -1.0, 0.75, -0.25, 0.5, -0.75, 0.25, 1.0, -1.0, -0.75, 0.0, 0.5, -0.75, -0.5, 0.0, -0.5, 0.0, 0.25, 0.5, 0.75, 0.0, -0.75, 0.5, 0.75, -0.25, -0.75, -0.25, ]);

    const device10 = await adapter1.requestDevice({ label: "device10" });

    var shader_module010_code = "";
    try {
        shader_module010_code = await fs.readFile('crates/wg-fuzz/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module010 = await device01.createShaderModule({ code: shader_module010_code })

    const query010 = device01.createQuerySet({
        type: "occlusion",
        count: 32,
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

    console.log(query010.label);
    
    console.log(query010.type);
    
    console.log(query010.count);

    device01.queue.onSubmittedWorkDone();

    const buffer010 = device01.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });

    {
        const shaderInfo = await shader_module010.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
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

    const texture_view0100 = texture010.createView();

    const command_encoder011 = device01.createCommandEncoder({ label: "command_encoder011" });

    const query100 = device10.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    console.log(query010.label);
    
    console.log(query010.type);
    
    console.log(query010.count);

    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    console.log(query100.label);
    
    console.log(query100.type);
    
    console.log(query100.count);

    device10.destroy();

    texture010.destroy();

    const pipeline_layout010 = device01.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout011]
    });

    const command_buffer011 = command_encoder011.finish();

    const device02 = await adapter0.requestDevice({ label: "device02" });

    const render_bundle_encoder020 = device02.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    render_bundle_encoder020.insertDebugMarker("marker");

    const pipeline_layout011 = device01.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout011]
    });

    device01.queue.onSubmittedWorkDone();

    const render_bundle_encoder021 = device02.createRenderBundleEncoder({
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

    const texture011 = device01.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });

    const render_bundle_encoder010 = device01.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    const buffer011 = device01.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });

    const sampler020 = device02.createSampler();

    render_bundle_encoder021.pushDebugGroup("group_marker");

    render_bundle_encoder020.pushDebugGroup("group_marker");

    const pipeline_layout012 = device01.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout010]
    });

    {
        const buffer = buffer010
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    device02.queue.onSubmittedWorkDone();

    {
        const texture = texture011
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

    texture011.destroy();

    const pipeline_layout013 = device01.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout011]
    });

    const sampler012 = device01.createSampler();

    const query011 = device01.createQuerySet({
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

    const pipeline_layout014 = device01.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout012]
    });

    const adapter2 = await navigator.gpu.requestAdapter({
                powerPreference: "high-performance",
                label: "adapter2"
            });

    var shader_module011_code = "";
    try {
        shader_module011_code = await fs.readFile('out/shader_module011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module011 = await device01.createShaderModule({ code: shader_module011_code })

    {
        const shaderInfo = await shader_module010.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const compute_pipeline010 = device01.createComputePipeline({ layout: pipeline_layout010, compute: { module: shader_module011, entryPoint: "main" } });

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    device02.pushErrorScope("out-of-memory");

    const render_bundle_encoder022 = device02.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    const compute_pipeline011 = device01.createComputePipeline({ layout: pipeline_layout014, compute: { module: shader_module011, entryPoint: "main" } });

    render_bundle_encoder020.popDebugGroup();

    query011.destroy()

    const query012 = device01.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    const texture012 = device01.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });

    const texture_view0120 = texture012.createView();

    const buffer020 = device02.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.INDEX
    });

    render_bundle_encoder010.pushDebugGroup("group_marker");

    const command_encoder012 = device01.createCommandEncoder({ label: "command_encoder012" });

    buffer011.destroy()

    const render_pass_encoder0120 = command_encoder012.beginRenderPass({
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0100,
            },
        ],
        occlusionQuerySet: query012
    });

    const pipeline_layout015 = device01.createPipelineLayout({ 
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

    const sampler013 = device01.createSampler();

    console.log(query012.label);
    
    console.log(query012.type);
    
    console.log(query012.count);

    const compute_pipeline012 = device01.createComputePipeline({ layout: pipeline_layout010, compute: { module: shader_module011, entryPoint: "main" } });

    render_bundle_encoder010.insertDebugMarker("marker");

    const query013 = device01.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    render_bundle_encoder022.pushDebugGroup("group_marker");

    const render_pipeline010 = device01.createRenderPipeline({
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
        layout: device01.createPipelineLayout({
            bindGroupLayouts: [
                device01.createBindGroupLayout({
                    entries: [
                        {
                            binding: 0,
                            visibility: GPUShaderStage.FRAGMENT,
                            buffer: {
                                type: "uniform"
                            }
                        },
                        {
                            binding: 1,
                            visibility: GPUShaderStage.FRAGMENT,
                            buffer: {
                                type: "storage"
                            }
                        }
                    ]
                })
            ]
        }),
    });

    {
        const buffer = buffer010
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    {
        const texture = texture012
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

    render_bundle_encoder010.popDebugGroup();

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

    render_pass_encoder0120.executeBundles([])

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

    var shader_module012_code = "";
    try {
        shader_module012_code = await fs.readFile('crates/wg-fuzz/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module012 = await device01.createShaderModule({ code: shader_module012_code })

    var shader_module020_code = "";
    try {
        shader_module020_code = await fs.readFile('crates/wg-fuzz/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module020 = await device02.createShaderModule({ code: shader_module020_code })

    const compute_pipeline013 = await device01.createComputePipelineAsync({ layout: pipeline_layout011, compute: { module: shader_module011, entryPoint: "main" } });

    const pipeline_layout016 = device01.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout010]
    });

    buffer020.destroy()

    const pipeline_layout017 = device01.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout010]
    });

    console.log(query010.label);
    
    console.log(query010.type);
    
    console.log(query010.count);

    const texture013 = device01.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });

    const compute_pipeline014 = await device01.createComputePipelineAsync({ layout: pipeline_layout015, compute: { module: shader_module011, entryPoint: "main" } });

    render_pass_encoder0120.setStencilReference(1);

    const sampler021 = device02.createSampler();

    const compute_pipeline015 = device01.createComputePipeline({ layout: pipeline_layout015, compute: { module: shader_module011, entryPoint: "main" } });

    render_pass_encoder0120.setViewport(0, 0, texture010.width / 2, texture010.height / 2, 0, 1);

    render_bundle_encoder021.popDebugGroup();

    const command_encoder013 = device01.createCommandEncoder({ label: "command_encoder013" });

    const compute_pipeline016 = await device01.createComputePipelineAsync({ layout: pipeline_layout012, compute: { module: shader_module011, entryPoint: "main" } });

    console.log(query012.label);
    
    console.log(query012.type);
    
    console.log(query012.count);

    device01.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    texture013.destroy();

    query013.destroy()

    {
        const shaderInfo = await shader_module012.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    render_pass_encoder0120.setViewport(0, 0, texture010.width / 2, texture010.height / 2, 0, 1);

    const render_pass_encoder0130 = command_encoder013.beginRenderPass({
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0120,
            },
        ],
        occlusionQuerySet: query010
    });

    {
        const shaderInfo = await shader_module012.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    query011.destroy()

    const compute_pipeline017 = await device01.createComputePipelineAsync({ layout: pipeline_layout017, compute: { module: shader_module011, entryPoint: "main" } });

    render_pass_encoder0120.insertDebugMarker("marker");

    const compute_pipeline018 = await device01.createComputePipelineAsync({ layout: pipeline_layout016, compute: { module: shader_module011, entryPoint: "main" } });

    var shader_module021_code = "";
    try {
        shader_module021_code = await fs.readFile('crates/wg-fuzz/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module021 = await device02.createShaderModule({ code: shader_module021_code })

    const compute_pipeline019 = await device01.createComputePipelineAsync({ layout: pipeline_layout016, compute: { module: shader_module011, entryPoint: "main" } });

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

    render_pass_encoder0120.setPipeline(render_pipeline010);

    const pipeline_layout018 = device01.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout010]
    });

    command_encoder012.pushDebugGroup("mygroupmarker")

    render_pass_encoder0120.setScissorRect(0, 0, texture010.width / 2, texture010.height / 2);

    const compute_pipeline0110 = device01.createComputePipeline({ layout: pipeline_layout013, compute: { module: shader_module011, entryPoint: "main" } });

    render_pass_encoder0130.setPipeline(render_pipeline010);

    console.log(query012.label);
    
    console.log(query012.type);
    
    console.log(query012.count);

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

    const compute_pipeline0111 = device01.createComputePipeline({ layout: pipeline_layout015, compute: { module: shader_module011, entryPoint: "main" } });

    const texture_view0121 = texture012.createView();

    query013.destroy()

    const buffer012 = device01.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.INDEX
    });

    const buffer013 = device01.createBuffer({
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer014 = device01.createBuffer({
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group010 = device01.createBindGroup({
        layout: render_pipeline010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer014,
                },
            },
        ],
    });

    render_pass_encoder0120.setBindGroup(0, bind_group010);

    console.log(query010.label);
    
    console.log(query010.type);
    
    console.log(query010.count);

    render_pass_encoder0130.setBlendConstant([1.0, 0.0, 0.0, 1.0]);

    const render_pipeline020 = device02.createRenderPipeline({
        vertex: {
            module: shader_module020,
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
            module: shader_module020,
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
        layout: device02.createPipelineLayout({
            bindGroupLayouts: [
                device02.createBindGroupLayout({
                    entries: [
                        {
                            binding: 0,
                            visibility: GPUShaderStage.FRAGMENT,
                            buffer: {
                                type: "uniform"
                            }
                        },
                        {
                            binding: 1,
                            visibility: GPUShaderStage.FRAGMENT,
                            buffer: {
                                type: "storage"
                            }
                        }
                    ]
                })
            ]
        }),
    });

    {
        const texture = texture012
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

    render_pass_encoder0130.insertDebugMarker("marker");

    const compute_pipeline0112 = device01.createComputePipeline({ layout: pipeline_layout017, compute: { module: shader_module011, entryPoint: "main" } });

    const compute_pipeline0113 = await device01.createComputePipelineAsync({ layout: pipeline_layout010, compute: { module: shader_module011, entryPoint: "main" } });

    buffer013.destroy()

    const device11 = await adapter1.requestDevice({ label: "device11" });

    render_pass_encoder0120.setBlendConstant([1.0, 0.0, 0.0, 1.0]);

    command_encoder013.pushDebugGroup("mygroupmarker")

    const compute_pipeline0114 = await device01.createComputePipelineAsync({ layout: pipeline_layout016, compute: { module: shader_module011, entryPoint: "main" } });

    var shader_module110_code = "";
    try {
        shader_module110_code = await fs.readFile('crates/wg-fuzz/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module110 = await device11.createShaderModule({ code: shader_module110_code })

    var shader_module013_code = "";
    try {
        shader_module013_code = await fs.readFile('crates/wg-fuzz/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module013 = await device01.createShaderModule({ code: shader_module013_code })

    const compute_pipeline0115 = device01.createComputePipeline({ layout: pipeline_layout014, compute: { module: shader_module011, entryPoint: "main" } });

    const render_pipeline021 = device02.createRenderPipeline({
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
        layout: device02.createPipelineLayout({
            bindGroupLayouts: [
                device02.createBindGroupLayout({
                    entries: [
                        {
                            binding: 0,
                            visibility: GPUShaderStage.FRAGMENT,
                            buffer: {
                                type: "uniform"
                            }
                        },
                        {
                            binding: 1,
                            visibility: GPUShaderStage.FRAGMENT,
                            buffer: {
                                type: "storage"
                            }
                        }
                    ]
                })
            ]
        }),
    });

    const sampler110 = device11.createSampler();

    const device12 = await adapter1.requestDevice({ label: "device12" });

    const render_pipeline022 = await device02.createRenderPipelineAsync({
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
        layout: "auto",
    });

    const texture110 = device11.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8unorm",
        dimension: "2d"
    });

    {
        const buffer = buffer010
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    device02.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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

    const render_pipeline023 = device02.createRenderPipeline({
        vertex: {
            module: shader_module020,
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
            module: shader_module020,
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
        layout: device02.createPipelineLayout({
            bindGroupLayouts: [
                device02.createBindGroupLayout({
                    entries: [
                        {
                            binding: 0,
                            visibility: GPUShaderStage.FRAGMENT,
                            buffer: {
                                type: "uniform"
                            }
                        },
                        {
                            binding: 1,
                            visibility: GPUShaderStage.FRAGMENT,
                            buffer: {
                                type: "storage"
                            }
                        }
                    ]
                })
            ]
        }),
    });

    render_bundle_encoder021.setPipeline(render_pipeline022);

    const query120 = device12.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    const compute_pipeline0116 = await device01.createComputePipelineAsync({ layout: pipeline_layout018, compute: { module: shader_module011, entryPoint: "main" } });

    {
        const shaderInfo = await shader_module012.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    device01.queue.onSubmittedWorkDone();

    device02.pushErrorScope("out-of-memory");

    render_bundle_encoder022.setPipeline(render_pipeline020);

    render_pass_encoder0130.setStencilReference(1);

    const render_bundle_encoder110 = device11.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    const compute_pipeline0117 = await device01.createComputePipelineAsync({ layout: pipeline_layout011, compute: { module: shader_module011, entryPoint: "main" } });

    const pipeline_layout019 = device01.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout010]
    });

    const texture120 = device12.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
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

    device12.queue.onSubmittedWorkDone();

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

    {
        const shaderInfo = await shader_module013.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    {
        const buffer = buffer014
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const buffer110 = device11.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });

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

    render_bundle_encoder020.setPipeline(render_pipeline023);

    const sampler120 = device12.createSampler();

    const command_encoder120 = device12.createCommandEncoder({ label: "command_encoder120" });

    const compute_pipeline0118 = device01.createComputePipeline({ layout: pipeline_layout015, compute: { module: shader_module011, entryPoint: "main" } });

    const render_bundle_encoder011 = device01.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    const render_pipeline012 = device01.createRenderPipeline({
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
        layout: device01.createPipelineLayout({
            bindGroupLayouts: [
                device01.createBindGroupLayout({
                    entries: [
                        {
                            binding: 0,
                            visibility: GPUShaderStage.FRAGMENT,
                            buffer: {
                                type: "uniform"
                            }
                        },
                        {
                            binding: 1,
                            visibility: GPUShaderStage.FRAGMENT,
                            buffer: {
                                type: "storage"
                            }
                        }
                    ]
                })
            ]
        }),
    });

    const command_encoder014 = device01.createCommandEncoder({ label: "command_encoder014" });

    const render_pass_encoder0140 = command_encoder014.beginRenderPass({
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0121,
            },
        ],
        occlusionQuerySet: query011
    });

    const sampler121 = device12.createSampler();

    const texture_view0122 = texture012.createView();

    {
        const shaderInfo = await shader_module110.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    render_pass_encoder0120.beginOcclusionQuery(0)

    buffer110.destroy()

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

    var shader_module120_code = "";
    try {
        shader_module120_code = await fs.readFile('out/shader_module120.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module120 = await device12.createShaderModule({ code: shader_module120_code })

    const compute_pipeline0119 = device01.createComputePipeline({ layout: pipeline_layout017, compute: { module: shader_module011, entryPoint: "main" } });

    const pipeline_layout110 = device11.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout110]
    });

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
        layout: device11.createPipelineLayout({
            bindGroupLayouts: [
                device11.createBindGroupLayout({
                    entries: [
                        {
                            binding: 0,
                            visibility: GPUShaderStage.FRAGMENT,
                            buffer: {
                                type: "uniform"
                            }
                        },
                        {
                            binding: 1,
                            visibility: GPUShaderStage.FRAGMENT,
                            buffer: {
                                type: "storage"
                            }
                        }
                    ]
                })
            ]
        }),
    });

    const render_pipeline024 = await device02.createRenderPipelineAsync({
        vertex: {
            module: shader_module020,
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
            module: shader_module020,
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

    const bind_group_layout014 = device01.createBindGroupLayout({ 
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

    render_pass_encoder0140.executeBundles([])

    const query121 = device12.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    const compute_pipeline0120 = device01.createComputePipeline({ layout: pipeline_layout015, compute: { module: shader_module011, entryPoint: "main" } });

    var shader_module121_code = "";
    try {
        shader_module121_code = await fs.readFile('out/shader_module121.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module121 = await device12.createShaderModule({ code: shader_module121_code })

    render_pass_encoder0130.setStencilReference(1);

    render_bundle_encoder011.setPipeline(render_pipeline013);

    render_pass_encoder0140.setPipeline(render_pipeline011);

    render_pass_encoder0120.setStencilReference(1);

    render_pass_encoder0130.setStencilReference(1);

    buffer014.destroy()

    render_bundle_encoder010.setPipeline(render_pipeline011);

    const device03 = await adapter0.requestDevice({ label: "device03" });

    render_bundle_encoder110.setPipeline(render_pipeline110);

    {
        const shaderInfo = await shader_module110.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    command_encoder120.insertDebugMarker("mymarker");

    const buffer111 = device11.createBuffer({
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer112 = device11.createBuffer({
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group110 = device11.createBindGroup({
        layout: render_pipeline110.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer111,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer112,
                },
            },
        ],
    });

    render_bundle_encoder110.setBindGroup(0, bind_group110);

    var shader_module014_code = "";
    try {
        shader_module014_code = await fs.readFile('crates/wg-fuzz/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module014 = await device01.createShaderModule({ code: shader_module014_code })

    render_pass_encoder0120.insertDebugMarker("marker");

    const compute_pipeline0121 = device01.createComputePipeline({ layout: pipeline_layout019, compute: { module: shader_module011, entryPoint: "main" } });

    var shader_module015_code = "";
    try {
        shader_module015_code = await fs.readFile('out/shader_module015.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module015 = await device01.createShaderModule({ code: shader_module015_code })

    const command_encoder015 = device01.createCommandEncoder({ label: "command_encoder015" });

    render_pass_encoder0130.setBlendConstant([1.0, 0.0, 0.0, 1.0]);

    const compute_pipeline0122 = await device01.createComputePipelineAsync({ layout: pipeline_layout012, compute: { module: shader_module011, entryPoint: "main" } });

    var shader_module122_code = "";
    try {
        shader_module122_code = await fs.readFile('out/shader_module122.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module122 = await device12.createShaderModule({ code: shader_module122_code })

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
        layout: device01.createPipelineLayout({
            bindGroupLayouts: [
                device01.createBindGroupLayout({
                    entries: [
                        {
                            binding: 0,
                            visibility: GPUShaderStage.FRAGMENT,
                            buffer: {
                                type: "uniform"
                            }
                        },
                        {
                            binding: 1,
                            visibility: GPUShaderStage.FRAGMENT,
                            buffer: {
                                type: "storage"
                            }
                        }
                    ]
                })
            ]
        }),
    });

    var shader_module123_code = "";
    try {
        shader_module123_code = await fs.readFile('crates/wg-fuzz/code_samples/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module123 = await device12.createShaderModule({ code: shader_module123_code })

    const render_pass_encoder0150 = command_encoder015.beginRenderPass({
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0121,
            },
        ],
        occlusionQuerySet: null
    });

    command_encoder014.insertDebugMarker("mymarker");

    const render_pipeline025 = await device02.createRenderPipelineAsync({
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
        layout: "auto",
    });

    device03.pushErrorScope("internal");

    const pipeline_layout0110 = device01.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout011]
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

    const command_encoder030 = device03.createCommandEncoder({ label: "command_encoder030" });

    const compute_pipeline0123 = await device01.createComputePipelineAsync({ layout: pipeline_layout0110, compute: { module: shader_module011, entryPoint: "main" } });

    const pipeline_layout111 = device11.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout110]
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

    render_pass_encoder0150.setPipeline(render_pipeline014);

    {
        const shaderInfo = await shader_module010.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

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

    const compute_pipeline0124 = device01.createComputePipeline({ layout: pipeline_layout016, compute: { module: shader_module015, entryPoint: "main" } });

    const compute_pipeline0125 = device01.createComputePipeline({ layout: pipeline_layout0110, compute: { module: shader_module011, entryPoint: "main" } });

    const buffer015 = device01.createBuffer({
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer016 = device01.createBuffer({
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group011 = device01.createBindGroup({
        layout: render_pipeline013.getBindGroupLayout(0),
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

    render_bundle_encoder011.setBindGroup(0, bind_group011);

    const pipeline_layout0111 = device01.createPipelineLayout({ 
        bindGroupLayouts: [bind_group_layout012]
    });

    render_pass_encoder0130.setStencilReference(1);

    device11.pushErrorScope("validation");

    render_bundle_encoder022.popDebugGroup();

    const array1 = new Float32Array([0.0, -0.5, -1.0, 0.0, 1.0, -0.25, 0.75, 0.75, 0.5, -0.5, 0.5, 0.0, -0.5, 1.0, -0.5, -1.0, -1.0, 0.0, 1.0, 1.0, 1.0, 0.25, 0.25, 0.75, 0.5, -0.5, -0.5, 1.0, -0.25, 0.25, 0.0, 0.75, -0.25, 0.75, 0.5, -0.75, -0.75, -0.25, -0.25, 0.0, 0.0, -0.75, 0.75, 1.0, -0.25, -1.0, -0.5, -0.5, 1.0, -0.75, -0.75, 0.25, -0.75, 1.0, 1.0, -0.25, 0.75, 0.5, 1.0, -1.0, 0.0, 0.0, 1.0, -0.75, 0.5, 0.0, -1.0, -1.0, 0.0, 0.0, 0.5, -1.0, -0.25, -0.75, -1.0, 0.5, 0.25, -0.5, 0.5, -1.0, 0.25, 0.75, -0.75, 0.25, 0.75, 0.0, 1.0, -0.25, -0.25, -1.0, 0.5, -0.25, -0.25, 0.5, -1.0, -0.5, 0.75, -0.25, -0.5, 0.25, ]);

    const render_pipeline016 = device01.createRenderPipeline({
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
        layout: device01.createPipelineLayout({
            bindGroupLayouts: [
                device01.createBindGroupLayout({
                    entries: [
                        {
                            binding: 0,
                            visibility: GPUShaderStage.FRAGMENT,
                            buffer: {
                                type: "uniform"
                            }
                        },
                        {
                            binding: 1,
                            visibility: GPUShaderStage.FRAGMENT,
                            buffer: {
                                type: "storage"
                            }
                        }
                    ]
                })
            ]
        }),
    });

    const render_pipeline120 = await device12.createRenderPipelineAsync({
        vertex: {
            module: shader_module123,
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
            module: shader_module123,
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

    const query122 = device12.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    const texture121 = device12.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r16sint",
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

    const compute_pipeline0126 = await device01.createComputePipelineAsync({ layout: pipeline_layout013, compute: { module: shader_module011, entryPoint: "main" } });

    const render_pipeline026 = await device02.createRenderPipelineAsync({
        vertex: {
            module: shader_module020,
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
            module: shader_module020,
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

    render_pass_encoder0140.setScissorRect(0, 0, texture012.width / 2, texture012.height / 2);

    const render_pipeline027 = device02.createRenderPipeline({
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
        layout: device02.createPipelineLayout({
            bindGroupLayouts: [
                device02.createBindGroupLayout({
                    entries: [
                        {
                            binding: 0,
                            visibility: GPUShaderStage.FRAGMENT,
                            buffer: {
                                type: "uniform"
                            }
                        },
                        {
                            binding: 1,
                            visibility: GPUShaderStage.FRAGMENT,
                            buffer: {
                                type: "storage"
                            }
                        }
                    ]
                })
            ]
        }),
    });

    {
        const shaderInfo = await shader_module121.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    buffer111.destroy()

    const query123 = device12.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    command_encoder015.insertDebugMarker("mymarker");

    command_encoder013.popDebugGroup()

    buffer112.destroy()

    {
        const texture = texture012
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

    texture120.destroy();

    command_encoder014.pushDebugGroup("mygroupmarker")

    {
        const texture = texture110
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

    const compute_pipeline0127 = device01.createComputePipeline({ layout: pipeline_layout011, compute: { module: shader_module015, entryPoint: "main" } });

    {
        const shaderInfo = await shader_module012.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    device02.queue.onSubmittedWorkDone();

    command_encoder015.insertDebugMarker("mymarker");

    const render_pipeline017 = await device01.createRenderPipelineAsync({
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

    render_bundle_encoder021.pushDebugGroup("group_marker");

    const compute_pipeline0128 = await device01.createComputePipelineAsync({ layout: pipeline_layout019, compute: { module: shader_module011, entryPoint: "main" } });

    const render_bundle_encoder030 = device03.createRenderBundleEncoder({
        colorFormats: ["bgra8unorm"]
    });

    device11.queue.onSubmittedWorkDone();

    {
        const shaderInfo = await shader_module013.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    render_pass_encoder0140.insertDebugMarker("marker");

    command_encoder012.insertDebugMarker("mymarker");

    {
        const texture = texture012
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

    render_pass_encoder0120.insertDebugMarker("marker");

    render_bundle_encoder020.insertDebugMarker("marker");

    render_pass_encoder0140.setViewport(0, 0, texture012.width / 2, texture012.height / 2, 0, 1);

    const texture122 = device12.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });

    {
        const texture = texture012
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

    render_pass_encoder0150.setBlendConstant([1.0, 0.0, 0.0, 1.0]);

    const query110 = device11.createQuerySet({
        type: "occlusion",
        count: 32,
    });

    const render_pipeline018 = device01.createRenderPipeline({
        vertex: {
            module: shader_module014,
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
            module: shader_module014,
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
        layout: device01.createPipelineLayout({
            bindGroupLayouts: [
                device01.createBindGroupLayout({
                    entries: [
                        {
                            binding: 0,
                            visibility: GPUShaderStage.FRAGMENT,
                            buffer: {
                                type: "uniform"
                            }
                        },
                        {
                            binding: 1,
                            visibility: GPUShaderStage.FRAGMENT,
                            buffer: {
                                type: "storage"
                            }
                        }
                    ]
                })
            ]
        }),
    });

    {
        const shaderInfo = await shader_module020.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    const buffer017 = device01.createBuffer({
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer018 = device01.createBuffer({
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group012 = device01.createBindGroup({
        layout: render_pipeline014.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer018,
                },
            },
        ],
    });

    render_pass_encoder0150.setBindGroup(0, bind_group012);

    render_pass_encoder0120.endOcclusionQuery()

    const buffer019 = device01.createBuffer({
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0110 = device01.createBuffer({
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group013 = device01.createBindGroup({
        layout: render_pipeline011.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0110,
                },
            },
        ],
    });

    render_pass_encoder0140.setBindGroup(0, bind_group013);

    device03.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    device02.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    command_encoder012.popDebugGroup()

    device01.queue.submit([command_buffer011, ]);

    device11.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    const buffer0111 = device01.createBuffer({
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0112 = device01.createBuffer({
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group014 = device01.createBindGroup({
        layout: render_pipeline010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0111,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0112,
                },
            },
        ],
    });

    render_pass_encoder0130.setBindGroup(0, bind_group014);

    const command_buffer120 = command_encoder120.finish();

    const command_buffer030 = command_encoder030.finish();

    command_encoder014.popDebugGroup()
}

init();