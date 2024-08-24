const fs = require('node:fs/promises');

async function main(gpu: GPU) {
    const array0 = new Float32Array([0.0, -0.5, 0.5, 0.5, 0.5, -0.5, -0.75, -0.25, 0.25, -0.25, -0.25, -0.25, 1.0, -0.75, -0.75, -0.75, -0.75, -0.25, 0.75, -0.75, -0.5, -0.25, 0.75, -0.75, -0.25, -1.0, 0.0, -0.25, -0.25, -1.0, -0.5, -0.25, 0.0, 0.0, -0.25, 0.0, 1.0, 1.0, -1.0, -0.5, -0.75, 0.5, -0.75, -1.0, -0.5, 0.5, 1.0, 0.5, -1.0, 1.0, 0.25, -0.25, -0.75, 0.0, -0.25, 0.25, -1.0, -1.0, -0.75, 1.0, 1.0, 0.75, 0.0, 1.0, 0.0, 0.5, -0.25, 0.25, -0.5, -0.5, -0.25, -0.5, 0.0, 0.5, -0.5, -0.5, -0.5, 0.5, -0.5, 0.0, -0.75, -0.25, -0.5, 0.0, -0.25, 0.75, -0.5, 1.0, -1.0, 0.75, 0.5, 1.0, -1.0, 0.5, -1.0, 0.5, -0.25, -0.5, 0.0, -0.75, ]);
    const array1 = new Float32Array([0.0, 1.0, -1.0, 0.5, 0.75, 1.0, 0.0, -1.0, -0.5, 0.25, -1.0, -0.25, -0.25, 1.0, -0.5, -0.25, 0.0, -1.0, 1.0, 0.75, 0.75, 0.0, 0.25, -0.25, 1.0, -0.75, 1.0, -1.0, 1.0, -0.75, 0.25, -0.75, 1.0, -0.5, 0.0, 0.75, 0.5, 0.25, -0.75, 0.0, 0.25, 1.0, -0.5, 0.25, -1.0, -0.5, -0.25, 0.0, 0.25, -0.25, -1.0, 0.5, 1.0, -0.25, 1.0, 0.0, -1.0, -1.0, 0.75, -0.5, -0.5, 1.0, -0.25, -1.0, 0.0, 0.25, 0.5, 0.25, -0.25, -1.0, -1.0, 0.5, -1.0, 0.25, 0.0, -0.5, 1.0, 0.0, 1.0, -0.5, -0.75, -1.0, 0.25, 0.25, 0.75, 0.75, 1.0, -0.5, -1.0, -0.75, 1.0, -1.0, 1.0, 1.0, -0.25, -0.25, -1.0, 0.25, -0.25, 0.0, ]);
    const array2 = new Float32Array([0.75, -0.75, 0.5, 0.0, 1.0, -0.5, -1.0, 1.0, -0.25, 0.0, -0.5, -0.25, -1.0, -0.25, -1.0, -0.25, 1.0, 0.0, -0.25, -0.25, 0.25, 0.75, 0.0, 0.25, 1.0, 0.5, 0.5, 0.5, -1.0, 1.0, 0.5, 0.5, -1.0, -0.5, 0.75, -0.25, -0.5, 0.25, 0.5, 0.0, -0.5, 0.25, 0.0, -0.25, -0.25, -0.5, -0.75, 0.25, -0.75, -0.5, -0.5, 0.25, 1.0, -0.5, 0.25, -0.75, 1.0, -1.0, 1.0, -1.0, -0.75, 0.75, 1.0, -0.25, -0.25, -0.25, -0.75, -1.0, 0.25, 0.0, 0.25, 0.5, -1.0, 0.5, 0.25, -1.0, 0.0, 0.5, 1.0, -0.25, 1.0, -0.25, 0.75, 0.75, 0.0, 0.5, 0.5, 0.5, -0.25, -1.0, 0.25, -0.75, -0.75, -0.75, -0.75, 0.0, 0.5, 0.5, -0.5, 0.75, ]);
    console.log(gpu.wgslLanguageFeatures.size);

    for (const value of gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance",
        label: "adapter0"
    });
    const array3 = new Float32Array([-0.75, -0.5, 0.25, -0.75, -1.0, 0.0, 1.0, -1.0, -0.25, 0.0, 0.75, 0.75, 0.25, 0.5, 1.0, -1.0, -1.0, 0.0, 0.5, -1.0, -0.5, 0.75, 0.0, 0.0, 0.25, -0.75, 0.25, -0.75, 0.0, 0.75, -0.75, -0.25, 0.5, 0.5, -1.0, -0.25, -1.0, 0.25, -0.75, -1.0, 0.25, -1.0, -1.0, -1.0, 0.25, 1.0, -0.25, 0.25, 1.0, 0.5, 0.0, -0.25, 0.75, -0.5, -0.5, -0.5, 1.0, 1.0, -0.25, -0.75, 0.25, -0.5, -0.75, -1.0, 0.75, -0.75, -0.5, 1.0, -0.5, -0.25, 1.0, -1.0, 0.5, -0.25, 0.0, 0.25, 0.75, -0.25, 1.0, 0.0, -0.25, 0.75, -0.25, -0.25, -0.75, -1.0, 1.0, -0.25, 0.0, 0.0, 0.75, 0.0, 0.75, -0.75, -0.5, 0.0, -0.25, 0.75, -0.75, -1.0, ]);
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
        const adapter = adapter0;
        console.log(adapter.info.vendor);
        console.log(adapter.info.architecture);
        console.log(adapter.info.device);
        console.log(adapter.info.description);
    }
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
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
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const render_pipeline001 = await device00.createRenderPipelineAsync({
        label: "render_pipeline001",
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
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto",
    });
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
                    format: gpu.getPreferredCanvasFormat(),
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
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    render_bundle_encoder000.setPipeline(render_pipeline002);
    const render_pipeline003 = await device00.createRenderPipelineAsync({
        label: "render_pipeline003",
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
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto",
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder002.insertDebugMarker("marker");
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
        const adapter = adapter0;
        console.log(adapter.info.vendor);
        console.log(adapter.info.architecture);
        console.log(adapter.info.device);
        console.log(adapter.info.description);
    }
    const render_pipeline004 = await device00.createRenderPipelineAsync({
        label: "render_pipeline004",
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
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto",
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder002.setPipeline(render_pipeline004);
    query000.destroy()
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance",
        label: "adapter1"
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    render_bundle_encoder002.insertDebugMarker("marker");
    query000.destroy()
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder001.setPipeline(render_pipeline000);
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
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

    render_bundle_encoder001.setBindGroup(0, bind_group000);
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
        const shaderInfo = await shader_module001.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline004.getBindGroupLayout(0),
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

    render_bundle_encoder002.setBindGroup(0, bind_group001);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    {
        const buffer = buffer002
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }
    render_bundle_encoder001.insertDebugMarker("marker");
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
        const adapter = adapter0;
        console.log(adapter.info.vendor);
        console.log(adapter.info.architecture);
        console.log(adapter.info.device);
        console.log(adapter.info.description);
    }
    buffer000.destroy()
    {
        const shaderInfo = await shader_module001.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }
    render_bundle_encoder000.popDebugGroup();
    query000.destroy()
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_bundle_encoder000.setBindGroup(0, bind_group002);
    device00.pushErrorScope("validation");
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    buffer004.destroy()
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power",
        label: "adapter2"
    });
    render_bundle_encoder000.popDebugGroup();
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance",
        label: "adapter3"
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const command_buffer000 = command_encoder000.finish();
    {
        const buffer = buffer002
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }
    buffer003.destroy()
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
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
        const adapter = adapter1;
        console.log(adapter.info.vendor);
        console.log(adapter.info.architecture);
        console.log(adapter.info.device);
        console.log(adapter.info.description);
    }
    buffer001.destroy()
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    {
        const buffer = buffer002
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }
    query002.destroy()
    const array4 = new Float32Array([-0.25, -0.25, 0.0, 0.75, 0.5, -0.75, -0.75, 0.25, -0.25, 1.0, -0.25, 0.75, 0.0, -0.75, 0.75, -0.5, -0.5, -0.5, 0.5, -1.0, 0.25, 0.75, 0.25, -0.25, 0.5, 0.5, 0.75, 0.25, 0.25, -0.25, 0.25, 0.25, -0.25, 0.25, 0.75, 0.75, 0.0, 0.0, -0.5, 0.5, -0.75, -1.0, 0.5, 0.75, -0.5, 1.0, 1.0, -1.0, -0.75, 0.75, -0.25, 0.5, -0.25, -0.5, -0.5, 0.25, -1.0, 1.0, 0.75, -0.25, 0.0, 0.25, -0.25, 0.0, 1.0, 0.0, -0.75, 0.0, 0.0, 0.75, 1.0, 0.5, 0.0, -0.25, -0.75, -0.75, -0.25, 1.0, -1.0, -0.75, 0.0, 0.0, 0.25, 0.25, -0.75, -1.0, -0.5, 1.0, 0.0, -0.5, -0.75, 0.25, -0.25, -0.75, 0.25, 0.75, 0.5, 0.25, 0.25, 1.0, ]);
    query001.destroy()
    console.log(gpu.getPreferredCanvasFormat());
    {
        const buffer = buffer002
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    render_bundle_encoder001.insertDebugMarker("marker");
    console.log(gpu.wgslLanguageFeatures.size);

    for (const value of gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }
    render_bundle_encoder002.insertDebugMarker("marker");
    query000.destroy()
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    render_bundle_encoder001.insertDebugMarker("marker");
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    {
        const shaderInfo = await shader_module001.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }
    const render_pipeline006 = await device00.createRenderPipelineAsync({
        label: "render_pipeline006",
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
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto",
    });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    device10.destroy();
    {
        const shaderInfo = await shader_module000.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }
    render_bundle_encoder002.popDebugGroup();
    {
        const buffer = buffer002
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }
    render_bundle_encoder002.insertDebugMarker("marker");
    const bind_group_layout000 = device00.createBindGroupLayout({ 
        label: "bind_group_layout000",
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
        const adapter = adapter1;
        console.log(adapter.info.vendor);
        console.log(adapter.info.architecture);
        console.log(adapter.info.device);
        console.log(adapter.info.description);
    }
    console.log(gpu.getPreferredCanvasFormat());
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    console.log(gpu.wgslLanguageFeatures.size);

    for (const value of gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }
    query002.destroy()
    {
        const shaderInfo = await shader_module003.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power",
        label: "adapter4"
    });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const render_pipeline008 = await device00.createRenderPipelineAsync({
        label: "render_pipeline008",
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
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto",
    });
    {
        const shaderInfo = await shader_module000.getCompilationInfo();

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
        const adapter = adapter1;
        console.log(adapter.info.vendor);
        console.log(adapter.info.architecture);
        console.log(adapter.info.device);
        console.log(adapter.info.description);
    }
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.pushErrorScope("internal");
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    query002.destroy()
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
        const adapter = adapter1;
        console.log(adapter.info.vendor);
        console.log(adapter.info.architecture);
        console.log(adapter.info.device);
        console.log(adapter.info.description);
    }
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query003.destroy()
    console.log(query005.label);
    
    console.log(query005.type);
    
    console.log(query005.count);
    render_bundle_encoder000.popDebugGroup();
    const bind_group_layout001 = device00.createBindGroupLayout({ 
        label: "bind_group_layout001",
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
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined,
        label: "adapter5"
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
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
        const adapter = adapter5;
        console.log(adapter.info.vendor);
        console.log(adapter.info.architecture);
        console.log(adapter.info.device);
        console.log(adapter.info.description);
    }
    query003.destroy()
    query001.destroy()
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    {
        const buffer = buffer002
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }
    query001.destroy()
    {
        const buffer = buffer002
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
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
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    console.log(gpu.wgslLanguageFeatures.size);

    for (const value of gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }
    query002.destroy()
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    texture000.destroy();
    const compute_pipeline000 = await device00.createComputePipelineAsync({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    {
        const shaderInfo = await shader_module002.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
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
        const adapter = adapter1;
        console.log(adapter.info.vendor);
        console.log(adapter.info.architecture);
        console.log(adapter.info.device);
        console.log(adapter.info.description);
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
        const adapter = adapter5;
        console.log(adapter.info.vendor);
        console.log(adapter.info.architecture);
        console.log(adapter.info.device);
        console.log(adapter.info.description);
    }
    // await device40.queue.onSubmittedWorkDone();
    const array5 = new Float32Array([0.0, -0.25, -1.0, 1.0, 1.0, -0.5, -0.5, 0.0, 0.25, -0.5, -0.5, -0.25, 0.5, 0.5, -1.0, 1.0, -1.0, 0.25, 0.75, -0.5, 1.0, -0.25, 0.5, 0.0, 0.5, -0.25, 0.75, -0.25, 1.0, 0.5, -0.25, 1.0, 0.75, -0.5, 0.0, 0.75, -0.5, -0.75, 0.5, 0.25, -0.75, 1.0, -0.5, 0.25, 0.5, -0.75, -0.75, 0.25, 0.0, -0.75, 0.75, 1.0, 0.75, 0.25, -0.75, 0.75, -1.0, 0.5, 0.5, -0.25, 1.0, 0.75, -1.0, 0.5, 0.25, 0.25, -0.25, 0.0, 0.75, -0.25, 1.0, -1.0, 0.25, 0.0, 0.5, -0.25, 0.25, -0.75, 0.5, 0.25, 0.0, 0.5, 0.75, 0.25, -0.5, -1.0, -0.75, 1.0, -0.5, 1.0, 1.0, 0.5, 0.0, 0.5, 1.0, 0.5, -1.0, 0.0, -0.25, 0.75, ]);
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
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
        const adapter = adapter4;
        console.log(adapter.info.vendor);
        console.log(adapter.info.architecture);
        console.log(adapter.info.device);
        console.log(adapter.info.description);
    }
    query001.destroy()
    {
        const buffer = buffer005
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }
    query005.destroy()
    // await device00.queue.onSubmittedWorkDone();
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
    {
        const shaderInfo = await shader_module001.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }
    device00.pushErrorScope("validation");
    device40.destroy();
    buffer002.destroy()
    const render_pipeline009 = await device00.createRenderPipelineAsync({
        label: "render_pipeline009",
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
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto",
    });
    render_bundle_encoder001.popDebugGroup();
    render_bundle_encoder002.insertDebugMarker("marker");
    query006.destroy()
    query003.destroy()
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const compute_pipeline003 = await device00.createComputePipelineAsync({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const query008 = device00.createQuerySet({
        label: "query008",
        type: "occlusion",
        count: 32,
    });
    query007.destroy()
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline005 = await device00.createComputePipelineAsync({
        label: "compute_pipeline005",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    query000.destroy()
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
        const adapter = adapter3;
        console.log(adapter.info.vendor);
        console.log(adapter.info.architecture);
        console.log(adapter.info.device);
        console.log(adapter.info.description);
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
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline009 = await device00.createComputePipelineAsync({
        label: "compute_pipeline009",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline0011 = await device00.createComputePipelineAsync({
        label: "compute_pipeline0011",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    buffer005.destroy()
    {
        const shaderInfo = await shader_module000.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }
    const bind_group_layout002 = device00.createBindGroupLayout({ 
        label: "bind_group_layout002",
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
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout002]
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
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
        const adapter = adapter3;
        console.log(adapter.info.vendor);
        console.log(adapter.info.architecture);
        console.log(adapter.info.device);
        console.log(adapter.info.description);
    }
    render_bundle_encoder002.popDebugGroup();
    const compute_pipeline0012 = await device00.createComputePipelineAsync({
        label: "compute_pipeline0012",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    query005.destroy()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
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
        const adapter = adapter0;
        console.log(adapter.info.vendor);
        console.log(adapter.info.architecture);
        console.log(adapter.info.device);
        console.log(adapter.info.description);
    }
    device50.pushErrorScope("validation");
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
        const adapter = adapter2;
        console.log(adapter.info.vendor);
        console.log(adapter.info.architecture);
        console.log(adapter.info.device);
        console.log(adapter.info.description);
    }
    const compute_pipeline0013 = await device00.createComputePipelineAsync({
        label: "compute_pipeline0013",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
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
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance",
        label: "adapter6"
    });
    console.log(query008.label);
    
    console.log(query008.type);
    
    console.log(query008.count);
    query001.destroy()
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
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
        const adapter = adapter2;
        console.log(adapter.info.vendor);
        console.log(adapter.info.architecture);
        console.log(adapter.info.device);
        console.log(adapter.info.description);
    }
    query002.destroy()
    {
        const shaderInfo = await shader_module004.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    query006.destroy()
    device00.queue.submit([command_buffer000, ]);
    // await device50.queue.onSubmittedWorkDone();
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    query003.destroy()
    const array6 = new Float32Array([-1.0, 0.5, -0.25, 0.75, -0.25, 0.75, 0.0, -0.75, 0.0, -1.0, 0.75, -0.5, -1.0, 1.0, -0.25, -0.5, -1.0, -0.25, -0.5, 0.0, 0.0, -1.0, -0.25, 0.25, -0.5, 1.0, 0.75, 0.0, 1.0, 1.0, -0.25, -0.25, -1.0, -0.25, 0.75, -0.25, 0.75, 0.5, -0.25, -0.5, 0.75, 0.5, 0.5, 1.0, -1.0, 0.5, 0.75, 0.0, 0.0, 0.75, -0.5, 0.0, 0.75, -1.0, -0.75, -1.0, 1.0, -0.5, 0.0, 1.0, 0.75, 0.75, -0.25, 0.5, 1.0, 1.0, 0.0, -0.5, 0.75, 1.0, 0.75, 0.5, -0.5, -0.5, 0.0, 1.0, -0.5, 1.0, 0.5, -0.5, -0.75, -0.25, -1.0, -0.5, -0.75, 0.5, -0.25, -0.5, 0.25, 1.0, -1.0, -0.25, -0.25, -0.25, -0.25, -0.5, -1.0, -0.75, -1.0, -0.75, ]);
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
    render_bundle_encoder002.insertDebugMarker("marker");
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    {
        const shaderInfo = await shader_module005.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }
    const compute_pipeline0017 = await device00.createComputePipelineAsync({
        label: "compute_pipeline0017",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query002.destroy()
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
        const adapter = adapter3;
        console.log(adapter.info.vendor);
        console.log(adapter.info.architecture);
        console.log(adapter.info.device);
        console.log(adapter.info.description);
    }
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
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
        const adapter = adapter0;
        console.log(adapter.info.vendor);
        console.log(adapter.info.architecture);
        console.log(adapter.info.device);
        console.log(adapter.info.description);
    }
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const compute_pipeline0018 = await device00.createComputePipelineAsync({
        label: "compute_pipeline0018",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    {
        const shaderInfo = await shader_module300.getCompilationInfo();

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
        const adapter = adapter5;
        console.log(adapter.info.vendor);
        console.log(adapter.info.architecture);
        console.log(adapter.info.device);
        console.log(adapter.info.description);
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
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
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
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    device60.pushErrorScope("out-of-memory");
    query007.destroy()
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    device50.queue.writeTexture({ texture: texture500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    device50.queue.writeTexture({ texture: texture500 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    query006.destroy()
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder300.insertDebugMarker("mymarker");
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    {
        const shaderInfo = await shader_module002.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }
    buffer006.destroy()
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    {
        const shaderInfo = await shader_module003.getCompilationInfo();

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
    {
        const shaderInfo = await shader_module004.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.insertDebugMarker("marker");
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
        const adapter = adapter6;
        console.log(adapter.info.vendor);
        console.log(adapter.info.architecture);
        console.log(adapter.info.device);
        console.log(adapter.info.description);
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
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout002]
    });
    {
        const shaderInfo = await shader_module500.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
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
        const adapter = adapter2;
        console.log(adapter.info.vendor);
        console.log(adapter.info.architecture);
        console.log(adapter.info.device);
        console.log(adapter.info.description);
    }
    const command_buffer601 = command_encoder601.finish();
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device50.queue.writeTexture({ texture: texture500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline500 = await device50.createRenderPipelineAsync({
        label: "render_pipeline500",
        vertex: {
            module: shader_module501,
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
            module: shader_module501,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto",
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder500.pushDebugGroup("group_marker");
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
        const adapter = adapter0;
        console.log(adapter.info.vendor);
        console.log(adapter.info.architecture);
        console.log(adapter.info.device);
        console.log(adapter.info.description);
    }
    const bind_group_layout600 = device60.createBindGroupLayout({ 
        label: "bind_group_layout600",
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
    query006.destroy()
    command_encoder300.insertDebugMarker("mymarker");
    render_bundle_encoder000.insertDebugMarker("marker");
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline0023 = await device00.createComputePipelineAsync({
        label: "compute_pipeline0023",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const bind_group_layout300 = device30.createBindGroupLayout({ 
        label: "bind_group_layout300",
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
    device00.destroy();
    const command_buffer300 = command_encoder300.finish();
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    render_bundle_encoder500.insertDebugMarker("marker");
    const bind_group_layout200 = device20.createBindGroupLayout({ 
        label: "bind_group_layout200",
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
    render_bundle_encoder500.insertDebugMarker("marker");
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    // await device50.queue.onSubmittedWorkDone();
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder500.setPipeline(render_pipeline500);
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
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
        const adapter = adapter6;
        console.log(adapter.info.vendor);
        console.log(adapter.info.architecture);
        console.log(adapter.info.device);
        console.log(adapter.info.description);
    }
    device50.popErrorScope().then((error) => {
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
        const adapter = adapter1;
        console.log(adapter.info.vendor);
        console.log(adapter.info.architecture);
        console.log(adapter.info.device);
        console.log(adapter.info.description);
    }
    device50.queue.writeTexture({ texture: texture500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
        const adapter = adapter6;
        console.log(adapter.info.vendor);
        console.log(adapter.info.architecture);
        console.log(adapter.info.device);
        console.log(adapter.info.description);
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
        const adapter = adapter2;
        console.log(adapter.info.vendor);
        console.log(adapter.info.architecture);
        console.log(adapter.info.device);
        console.log(adapter.info.description);
    }
    const array7 = new Float32Array([-0.75, -1.0, -0.25, 0.75, -0.5, -0.5, -1.0, -0.5, 0.25, 0.25, 0.5, 0.25, -0.5, 0.75, 0.0, 0.25, 0.25, -1.0, -0.25, 0.5, 0.5, -0.5, 0.5, 0.0, 0.0, 1.0, -0.25, 1.0, -0.25, -1.0, 1.0, 0.75, -0.75, 0.75, 0.25, 0.75, 1.0, -0.75, 0.25, -0.75, 0.75, 0.0, -0.25, 0.5, 0.25, -0.75, -0.25, -0.5, 0.5, 0.75, -0.75, 1.0, 0.5, -0.75, -1.0, 0.75, -0.25, 0.25, -0.75, 0.75, 1.0, 0.25, 0.75, -1.0, 0.25, -1.0, 0.0, 0.75, -0.75, 0.25, 0.25, 0.5, -1.0, -0.75, 0.75, 1.0, -0.5, 0.25, 0.75, -0.25, 1.0, 0.25, -0.25, 0.75, 0.25, -0.75, -0.25, 0.5, -1.0, 0.25, -0.5, 0.0, -0.25, 0.5, 0.75, 0.25, 0.75, 0.25, -0.5, 0.25, ]);
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
        const adapter = adapter3;
        console.log(adapter.info.vendor);
        console.log(adapter.info.architecture);
        console.log(adapter.info.device);
        console.log(adapter.info.description);
    }
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    {
        const texture = texture500
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
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    {
        const shaderInfo = await shader_module501.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba32float",
        dimension: "2d"
    });
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device60.pushErrorScope("validation");
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
        const adapter = adapter2;
        console.log(adapter.info.vendor);
        console.log(adapter.info.architecture);
        console.log(adapter.info.device);
        console.log(adapter.info.description);
    }
    texture500.destroy();
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
        const adapter = adapter1;
        console.log(adapter.info.vendor);
        console.log(adapter.info.architecture);
        console.log(adapter.info.device);
        console.log(adapter.info.description);
    }
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    console.log(query300.label);
    
    console.log(query300.type);
    
    console.log(query300.count);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder500.popDebugGroup();
    query302.destroy()
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
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
        const adapter = adapter4;
        console.log(adapter.info.vendor);
        console.log(adapter.info.architecture);
        console.log(adapter.info.device);
        console.log(adapter.info.description);
    }
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
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
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const render_pipeline200 = await device20.createRenderPipelineAsync({
        label: "render_pipeline200",
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
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto",
    });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const bind_group_layout201 = device20.createBindGroupLayout({ 
        label: "bind_group_layout201",
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
        const adapter = adapter6;
        console.log(adapter.info.vendor);
        console.log(adapter.info.architecture);
        console.log(adapter.info.device);
        console.log(adapter.info.description);
    }
    query500.destroy()
    const bind_group_layout500 = device50.createBindGroupLayout({ 
        label: "bind_group_layout500",
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
    device50.destroy();
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
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
        const adapter = adapter0;
        console.log(adapter.info.vendor);
        console.log(adapter.info.architecture);
        console.log(adapter.info.device);
        console.log(adapter.info.description);
    }
    render_bundle_encoder200.setPipeline(render_pipeline200);
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    {
        const shaderInfo = await shader_module302.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }
    const bind_group_layout301 = device30.createBindGroupLayout({ 
        label: "bind_group_layout301",
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
    const bind_group_layout202 = device20.createBindGroupLayout({ 
        label: "bind_group_layout202",
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
        const adapter = adapter0;
        console.log(adapter.info.vendor);
        console.log(adapter.info.architecture);
        console.log(adapter.info.device);
        console.log(adapter.info.description);
    }
    const command_buffer600 = command_encoder600.finish();
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    // await device30.queue.onSubmittedWorkDone();
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pipeline300 = await device30.createComputePipelineAsync({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    {
        const buffer = buffer300
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    render_bundle_encoder200.popDebugGroup();
    device30.pushErrorScope("internal");
    {
        const shaderInfo = await shader_module601.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }
    const render_pipeline300 = await device30.createRenderPipelineAsync({
        label: "render_pipeline300",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto",
    });
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    texture200.destroy();
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    texture201.destroy();
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance",
        label: "adapter7"
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    command_encoder602.pushDebugGroup("mygroupmarker")
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder201.setPipeline(render_pipeline200);
    console.log(adapter7.features.size);

    for (const value of adapter7.features.keys()) {
        console.log(value);
    }

    console.log(adapter7.isFallbackAdapter);

    console.log(adapter7.limits.size);

    for (const [key, value] of Object.entries(adapter7.limits)) {
        console.log(key);
        console.log(value);
    }

    {
        const adapter = adapter7;
        console.log(adapter.info.vendor);
        console.log(adapter.info.architecture);
        console.log(adapter.info.device);
        console.log(adapter.info.description);
    }
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout202]
    });
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder3010.insertDebugMarker("marker")
    buffer300.destroy()
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    {
        const shaderInfo = await shader_module302.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }
    // await device20.queue.onSubmittedWorkDone();
    render_bundle_encoder301.setPipeline(render_pipeline300);
    render_bundle_encoder601.pushDebugGroup("group_marker");
    const render_pipeline301 = await device30.createRenderPipelineAsync({
        label: "render_pipeline301",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto",
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    render_bundle_encoder202.setPipeline(render_pipeline200);
    const render_pipeline600 = await device60.createRenderPipelineAsync({
        label: "render_pipeline600",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto",
    });
    const bind_group_layout601 = device60.createBindGroupLayout({ 
        label: "bind_group_layout601",
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
    const compute_pipeline302 = await device30.createComputePipelineAsync({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    command_encoder602.popDebugGroup()
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_bundle_encoder601.setPipeline(render_pipeline600);
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    // await device30.queue.onSubmittedWorkDone();
    compute_pass_encoder3010.setPipeline(compute_pipeline300);
    // await device30.queue.onSubmittedWorkDone();
    render_bundle_encoder601.popDebugGroup();
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder600.insertDebugMarker("marker");
    render_bundle_encoder302.insertDebugMarker("marker");
    {
        const buffer = buffer600
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }
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
    query302.destroy()
    query600.destroy()
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer200,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer201,
                },
            },
        ],
    });

    render_bundle_encoder202.setBindGroup(0, bind_group200);
    console.log(query301.label);
    
    console.log(query301.type);
    
    console.log(query301.count);
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module202,
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
            module: shader_module202,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    render_bundle_encoder302.setPipeline(render_pipeline300);
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    // await device30.queue.onSubmittedWorkDone();
    command_encoder602.pushDebugGroup("mygroupmarker")
    console.log(gpu.wgslLanguageFeatures.size);

    for (const value of gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }
    buffer200.destroy()
    query600.destroy()
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module303,
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
            module: shader_module303,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    {
        const buffer = buffer301
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }
    query302.destroy()
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    query302.destroy()
    const render_pipeline203 = await device20.createRenderPipelineAsync({
        label: "render_pipeline203",
        vertex: {
            module: shader_module202,
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
            module: shader_module202,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto",
    });
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    query602.destroy()
    compute_pass_encoder2000.insertDebugMarker("marker")
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
        vertex: {
            module: shader_module205,
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
            module: shader_module205,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
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
        const adapter = adapter1;
        console.log(adapter.info.vendor);
        console.log(adapter.info.architecture);
        console.log(adapter.info.device);
        console.log(adapter.info.description);
    }
    query302.destroy()
    {
        const texture = texture600
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
    const compute_pipeline600 = await device60.createComputePipelineAsync({
        label: "compute_pipeline600",
        layout: pipeline_layout600,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    {
        const shaderInfo = await shader_module304.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }
    const render_pipeline205 = await device20.createRenderPipelineAsync({
        label: "render_pipeline205",
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
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto",
    });
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    command_encoder603.pushDebugGroup("mygroupmarker")
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const compute_pipeline201 = await device20.createComputePipelineAsync({
        label: "compute_pipeline201",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout601]
    });
    device20.pushErrorScope("out-of-memory");
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    const render_pipeline304 = await device30.createRenderPipelineAsync({
        label: "render_pipeline304",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto",
    });
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    const compute_pass_encoder6030 = command_encoder603.beginComputePass({ label: "compute_pass_encoder6030" });
    buffer201.destroy()
    command_encoder602.popDebugGroup()
    const compute_pipeline601 = await device60.createComputePipelineAsync({
        label: "compute_pipeline601",
        layout: pipeline_layout600,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const compute_pipeline602 = await device60.createComputePipelineAsync({
        label: "compute_pipeline602",
        layout: pipeline_layout601,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const compute_pipeline603 = await device60.createComputePipelineAsync({
        label: "compute_pipeline603",
        layout: pipeline_layout601,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    console.log(gpu.getPreferredCanvasFormat());
    const render_pass_encoder6020 = command_encoder602.beginRenderPass({
        label: "render_pass_encoder6020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6010,
            },
        ],
        occlusionQuerySet: query600
    });
    buffer601.destroy()
    render_pass_encoder6020.setPipeline(render_pipeline600);
    {
        const shaderInfo = await shader_module300.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }
    query600.destroy()
    render_bundle_encoder601.insertDebugMarker("marker");
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
        const adapter = adapter5;
        console.log(adapter.info.vendor);
        console.log(adapter.info.architecture);
        console.log(adapter.info.device);
        console.log(adapter.info.description);
    }
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout601]
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    const render_pipeline306 = device30.createRenderPipeline({
        label: "render_pipeline306",
        vertex: {
            module: shader_module306,
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
            module: shader_module306,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    {
        const buffer = buffer301
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    {
        const shaderInfo = await shader_module303.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }
    const compute_pipeline604 = await device60.createComputePipelineAsync({
        label: "compute_pipeline604",
        layout: pipeline_layout601,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.setPipeline(render_pipeline300);
    console.log(query301.label);
    
    console.log(query301.type);
    
    console.log(query301.count);
    compute_pass_encoder2010.setPipeline(compute_pipeline200);
    device30.queue.submit([command_buffer300, ]);
    const render_pipeline206 = await device20.createRenderPipelineAsync({
        label: "render_pipeline206",
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
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto",
    });
    {
        const texture = texture600
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
    const render_pipeline307 = await device30.createRenderPipelineAsync({
        label: "render_pipeline307",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto",
    });
    compute_pass_encoder6030.setPipeline(compute_pipeline602);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const compute_pipeline605 = await device60.createComputePipelineAsync({
        label: "compute_pipeline605",
        layout: pipeline_layout601,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    query301.destroy()
    console.log(query601.label);
    
    console.log(query601.type);
    
    console.log(query601.count);
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const render_pipeline207 = await device20.createRenderPipelineAsync({
        label: "render_pipeline207",
        vertex: {
            module: shader_module207,
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
            module: shader_module207,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto",
    });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_pipeline208 = device20.createRenderPipeline({
        label: "render_pipeline208",
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
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    {
        const shaderInfo = await shader_module300.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }
    const render_pipeline308 = device30.createRenderPipeline({
        label: "render_pipeline308",
        vertex: {
            module: shader_module303,
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
            module: shader_module303,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const compute_pipeline305 = await device30.createComputePipelineAsync({
        label: "compute_pipeline305",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    render_bundle_encoder600.setPipeline(render_pipeline600);
    const render_pipeline209 = await device20.createRenderPipelineAsync({
        label: "render_pipeline209",
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
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto",
    });
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile('render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer302,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer303,
                },
            },
        ],
    });

    render_bundle_encoder300.setBindGroup(0, bind_group300);
    compute_pass_encoder3010.insertDebugMarker("marker")
    {
        const shaderInfo = await shader_module204.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }
    const command_buffer202 = command_encoder202.finish();
    console.log(adapter7.features.size);

    for (const value of adapter7.features.keys()) {
        console.log(value);
    }

    console.log(adapter7.isFallbackAdapter);

    console.log(adapter7.limits.size);

    for (const [key, value] of Object.entries(adapter7.limits)) {
        console.log(key);
        console.log(value);
    }

    {
        const adapter = adapter7;
        console.log(adapter.info.vendor);
        console.log(adapter.info.architecture);
        console.log(adapter.info.device);
        console.log(adapter.info.description);
    }
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
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    query302.destroy()
    buffer202.destroy()
    // await device30.queue.onSubmittedWorkDone();
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    console.log(query300.label);
    
    console.log(query300.type);
    
    console.log(query300.count);
    render_bundle_encoder300.popDebugGroup();
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const render_pipeline2010 = device20.createRenderPipeline({
        label: "render_pipeline2010",
        vertex: {
            module: shader_module205,
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
            module: shader_module205,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    render_pass_encoder6020.insertDebugMarker("marker");
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
    device20.queue.submit([command_buffer202, ]);
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: compute_pipeline602.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer602,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer603,
                },
            },
        ],
    });

    compute_pass_encoder6030.setBindGroup(0, bind_group600);
    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer605 = device60.createBuffer({
        label: "buffer605",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group601 = device60.createBindGroup({
        label: "bind_group601",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer604,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer605,
                },
            },
        ],
    });

    render_pass_encoder6020.setBindGroup(0, bind_group601);
    device60.queue.submit([command_buffer600, command_buffer601, ]);
    compute_pass_encoder2000.setPipeline(compute_pipeline203);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer203,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer204,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group201);
    compute_pass_encoder3010.popDebugGroup()
    compute_pass_encoder6030.dispatchWorkgroups(100);
    render_pass_encoder6020.setVertexBuffer(0, buffer600);
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer304,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer305,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group301);
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer205,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer206,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group202);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder6020.draw(3);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer207, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer207, 0);
    render_pass_encoder6020.end();
    compute_pass_encoder2000.end();
    compute_pass_encoder2010.end();
    const command_buffer602 = command_encoder602.finish();
    const command_buffer201 = command_encoder201.finish();
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer306, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer306, 0);
    compute_pass_encoder3010.end();
    const command_buffer200 = command_encoder200.finish();
    const command_buffer301 = command_encoder301.finish();
    device30.queue.submit([command_buffer301, ]);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder6030.end();
    device60.queue.submit([command_buffer602, ]);
    device20.queue.submit([command_buffer201, ]);
    command_encoder603.popDebugGroup()
    const command_buffer603 = command_encoder603.finish();
}