const fs = require('node:fs/promises');

async function main(gpu: GPU) {
    
    
    const array0 = new Float32Array([-0.5, 0.75, 0.0, 0.75, 0.25, 0.5, 0.0, -1.0, 0.5, -1.0, -0.25, 1.0, 0.75, 0.25, -0.5, -0.75, -1.0, -0.75, 0.0, -0.75, 0.75, 0.0, 1.0, -0.75, -0.5, 0.25, 0.25, 0.25, -0.5, 0.75, 0.75, 1.0, 0.25, 0.0, 0.25, 1.0, 0.0, 0.5, 1.0, -0.5, -0.75, 0.75, 0.0, 0.25, -0.5, 0.25, 0.0, -0.25, 0.0, -0.25, -0.25, -1.0, 0.75, 0.0, 1.0, -0.5, 1.0, -0.5, -0.25, -1.0, -0.75, -1.0, 0.25, -0.25, 0.0, 0.25, -0.75, 0.75, 0.5, -0.25, 0.75, 0.5, -0.25, 1.0, -0.75, -0.75, -0.75, -0.75, -0.5, -0.75, 0.75, 0.0, -0.5, 1.0, 0.0, 1.0, 0.5, 0.75, 0.5, 0.75, -1.0, -0.5, -0.25, -0.75, 0.75, 1.0, 0.5, -0.25, -0.75, 0.75, ]);
    
    
    
    const array1 = new Float32Array([0.5, -0.5, -0.25, 0.75, 0.5, -0.25, -0.5, -0.25, -1.0, 0.5, 0.5, 0.25, 0.5, -1.0, 1.0, -1.0, -1.0, -0.5, 0.75, 0.5, 0.0, 0.5, 0.0, 0.5, 0.75, 0.75, -0.25, 0.5, 1.0, -0.5, -1.0, 0.0, 0.25, 0.25, -0.25, 0.25, 0.0, -1.0, 1.0, 0.75, 0.5, 0.25, 0.0, -0.25, -1.0, -0.5, -1.0, 1.0, 0.75, 1.0, 0.25, 0.25, 0.75, -0.25, -0.25, -1.0, 0.0, -0.5, -0.5, 0.5, 0.25, 0.25, 0.5, 0.5, 0.5, 0.5, 0.75, -0.75, 1.0, -0.75, 0.5, 0.5, 0.0, 0.5, 0.75, 0.5, -0.5, -0.25, 0.25, 0.0, 0.25, -1.0, 0.75, -1.0, -1.0, 0.5, -1.0, 0.75, 0.75, 0.25, 0.0, -1.0, -1.0, 0.75, -1.0, -0.5, 0.0, 0.25, -0.5, -0.5, ]);
    const array2 = new Float32Array([0.5, -1.0, 0.75, -0.5, -0.5, 1.0, 0.25, -1.0, -1.0, 0.0, -0.75, 0.0, 1.0, -0.75, 0.0, 0.0, 0.5, 0.75, -0.25, 0.25, 0.75, 0.0, 0.5, 0.5, -0.75, 1.0, 0.75, 0.5, 1.0, -0.25, 1.0, 0.25, -0.25, -0.25, 0.5, 0.5, 0.0, -0.75, 0.25, 0.5, 0.25, -0.75, -0.25, -0.5, 1.0, 0.75, -0.25, -0.25, -0.25, -0.75, 0.25, -0.75, 0.5, 0.25, -0.25, -1.0, 0.0, 0.5, 0.0, -0.5, -0.25, 0.25, -0.75, 0.5, 0.5, 0.0, 0.25, -1.0, -0.5, 0.0, 1.0, -1.0, -1.0, 0.0, -0.75, -0.25, 0.25, 0.0, -0.25, 0.25, 0.5, -0.75, -0.75, 0.0, -0.5, 0.5, -0.75, 0.75, 0.25, 0.75, 0.75, 0.0, -1.0, 1.0, 0.0, 0.0, 0.25, -0.75, 0.5, 1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    const array3 = new Float32Array([0.75, 0.5, -1.0, 1.0, -1.0, 0.75, 0.75, 0.0, 0.25, -0.75, 0.0, -1.0, -0.5, 0.75, 0.5, -0.75, -0.25, 0.75, 0.5, 0.5, 0.25, 0.75, 1.0, -0.5, -1.0, 0.25, -0.5, 0.5, 0.75, 0.5, 0.5, -0.5, -1.0, -0.25, -0.25, 0.5, -0.75, 0.5, 0.5, -1.0, -0.25, 0.5, 1.0, 0.25, -0.5, 0.0, -1.0, 0.0, -0.75, 0.25, 0.0, -0.5, 0.0, 1.0, -1.0, -1.0, 0.75, -0.5, -0.5, -0.5, -0.5, 0.5, -1.0, 0.75, 0.75, -0.75, 0.75, 0.0, 0.75, 0.5, 0.75, 0.5, 0.0, -1.0, 1.0, 0.75, -0.75, 0.5, 1.0, -0.25, 0.0, -1.0, 0.0, 0.5, 0.5, 1.0, 1.0, -0.25, -0.75, -0.75, 0.5, 0.5, -0.25, 0.75, -0.5, -0.25, -1.0, -0.5, -0.5, 0.0, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array4 = new Float32Array([0.5, -0.25, -0.5, -0.25, 0.0, -0.75, -0.75, -1.0, -0.75, -0.5, 0.25, 0.5, -0.75, 0.75, -1.0, 0.25, 0.0, 0.5, 0.5, -0.5, -0.25, -0.25, 0.0, 0.5, 1.0, 0.75, 0.5, -1.0, -0.75, 0.25, 0.5, 0.5, -0.5, -0.75, 0.25, 0.0, -0.75, -0.5, 0.5, 0.5, 1.0, -0.5, 0.0, -0.25, 0.5, 0.25, -1.0, 0.25, -0.5, 0.25, 0.75, 0.0, 0.0, 0.0, -0.25, -1.0, 0.25, -1.0, 0.0, 0.5, 0.5, 0.25, -0.75, -0.5, 0.5, -0.5, 0.25, -0.25, -1.0, 0.75, -0.5, -0.75, -0.25, -1.0, 0.5, -0.5, 0.0, 0.5, -0.25, 0.75, 0.75, 0.0, 0.5, 0.75, 0.75, 0.75, -0.5, 0.25, 1.0, 0.5, 0.5, -0.5, 1.0, -0.5, 0.0, -1.0, -0.25, 0.0, -0.75, -0.75, ]);
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device10.destroy();
    
    
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    device20.destroy();
    
    
    
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    device50.destroy();
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
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
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r16sint",
        dimension: "2d"
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    const array5 = new Float32Array([0.0, 0.25, -0.5, 0.5, -1.0, -0.25, -0.5, -1.0, -0.25, -0.5, -0.5, 0.5, 1.0, 0.5, 1.0, -1.0, 0.5, -0.25, 1.0, -0.5, 0.0, 1.0, -1.0, 0.75, 1.0, -0.75, 0.25, -0.75, 0.25, 1.0, 0.5, 0.5, -1.0, -0.25, -1.0, 0.75, -0.5, 0.75, -0.25, 1.0, 0.75, 1.0, 0.25, -1.0, -0.5, -1.0, 0.75, 0.5, 0.25, 0.0, 0.25, -0.25, 1.0, 0.0, 1.0, -0.75, 1.0, -1.0, 0.25, -0.25, -1.0, 0.5, 0.5, 0.75, 1.0, -1.0, 0.0, 0.75, 0.25, 0.0, 0.25, -0.25, -1.0, 1.0, 0.75, 0.0, 0.5, -0.5, -0.25, 0.75, 0.75, 0.75, 1.0, 0.25, -0.5, -0.25, 0.25, 0.5, -0.75, -1.0, 0.75, 1.0, -0.25, 0.0, 1.0, 0.0, 1.0, -0.25, 0.0, 0.0, ]);
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    render_bundle_encoder600.insertDebugMarker("marker");
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
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
    const bind_group_layout602 = device60.createBindGroupLayout({ 
        label: "bind_group_layout602",
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
    
    
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.pushErrorScope("out-of-memory");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    device60.destroy();
    
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    render_bundle_encoder401.insertDebugMarker("marker");
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
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    buffer301.destroy()
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    const bind_group_layout400 = device40.createBindGroupLayout({ 
        label: "bind_group_layout400",
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
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    buffer400.destroy()
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    texture401.destroy();
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    buffer300.destroy()
    
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    buffer302.destroy()
    const bind_group_layout401 = device40.createBindGroupLayout({ 
        label: "bind_group_layout401",
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
    
    
    device40.queue.writeTexture({ texture: texture402 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array6 = new Float32Array([-0.75, 0.75, -0.25, 0.5, 0.75, -0.5, 1.0, -1.0, -1.0, -0.25, 1.0, 1.0, -0.75, 1.0, -1.0, 0.75, 1.0, 0.5, -0.75, -0.75, 0.75, 0.0, 0.0, -0.5, 0.25, 0.25, -0.5, -0.75, -1.0, 0.5, 0.75, -0.75, 0.0, 0.5, 0.5, -0.5, 1.0, -1.0, -0.5, -0.5, -0.5, -1.0, 0.0, -1.0, 0.0, 0.0, 0.5, 0.75, -0.75, -1.0, -0.25, 0.75, 0.0, 0.5, 0.5, 0.25, 0.0, -0.5, -1.0, -0.5, -0.75, 0.25, 0.25, -0.5, 1.0, -0.5, -0.25, 0.0, -1.0, -0.5, 0.75, 0.5, -0.25, -0.75, -0.5, 0.0, 0.0, 0.5, 0.25, 0.5, -0.5, -0.25, -1.0, 0.0, -0.5, 1.0, 0.5, 0.0, -1.0, -0.5, -0.5, -0.5, 0.25, -1.0, 0.5, -0.5, 0.5, 0.25, -0.5, 0.75, ]);
    device40.queue.writeTexture({ texture: texture402 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query300.destroy()
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    texture400.destroy();
    device40.queue.writeTexture({ texture: texture402 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture300.destroy();
    
    device40.queue.writeTexture({ texture: texture402 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.pushErrorScope("internal");
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query400.destroy()
    device40.queue.writeTexture({ texture: texture402 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder400.insertDebugMarker("marker");
    
    buffer401.destroy()
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
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query300
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "depth16unorm",
        dimension: "2d"
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    render_pass_encoder3000.pushDebugGroup("group_marker");
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    render_bundle_encoder402.insertDebugMarker("marker");
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    
    device40.destroy();
    
    
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    render_pass_encoder3000.setPipeline(render_pipeline300);
    
    
    render_bundle_encoder300.setPipeline(render_pipeline300);
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8unorm",
        dimension: "2d"
    });
    const render_pipeline301 = device30.createRenderPipeline({
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
        layout: "auto"
    });
    buffer303.destroy()
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const bind_group_layout302 = device30.createBindGroupLayout({ 
        label: "bind_group_layout302",
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
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device90.pushErrorScope("internal");
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    query300.destroy()
    buffer304.destroy()
    const command_buffer900 = command_encoder900.finish();
    const sampler901 = device90.createSampler( { label: "sampler901" } );
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline304 = device30.createRenderPipeline({
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
        layout: "auto"
    });
    render_bundle_encoder301.setPipeline(render_pipeline303);
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    texture1100.destroy();
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
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout302]
    });
    var shader_module1101_code = "";
    try {
        shader_module1101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1101 = await device110.createShaderModule({ label: "shader_module1101", code: shader_module1101_code })
    const render_pipeline1100 = device110.createRenderPipeline({
        label: "render_pipeline1100",
        vertex: {
            module: shader_module1100,
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
            module: shader_module1100,
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
    const render_pipeline1101 = device110.createRenderPipeline({
        label: "render_pipeline1101",
        vertex: {
            module: shader_module1101,
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
            module: shader_module1101,
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
    
    const render_pipeline1102 = device110.createRenderPipeline({
        label: "render_pipeline1102",
        vertex: {
            module: shader_module1100,
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
            module: shader_module1100,
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
    
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    var shader_module1102_code = "";
    try {
        shader_module1102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1102 = await device110.createShaderModule({ label: "shader_module1102", code: shader_module1102_code })
    
    const render_pipeline306 = device30.createRenderPipeline({
        label: "render_pipeline306",
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
    
    
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    query900.destroy()
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    
    
    
    const bind_group_layout900 = device90.createBindGroupLayout({ 
        label: "bind_group_layout900",
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
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    
    
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    query901.destroy()
    const render_pipeline307 = device30.createRenderPipeline({
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
        layout: "auto"
    });
    
    const command_encoder901 = device90.createCommandEncoder({ label: "command_encoder901" });
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3000.setStencilReference(1);
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    query901.destroy()
    render_bundle_encoder1100.setPipeline(render_pipeline1100);
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    command_encoder901.pushDebugGroup("mygroupmarker")
    
    device90.queue.submit([command_buffer900, ]);
    device110.destroy();
    
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
    
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout302]
    });
    render_bundle_encoder302.setPipeline(render_pipeline307);
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer307 = device30.createBuffer({
        label: "buffer307",
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
                    buffer: buffer306,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer307,
                },
            },
        ],
    });

    render_bundle_encoder300.setBindGroup(0, bind_group300);
    
    
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const pipeline_layout900 = device90.createPipelineLayout({ 
        label: "pipeline_layout900",
        bindGroupLayouts: [bind_group_layout900]
    });
    query901.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const compute_pipeline900 = device90.createComputePipeline({
        label: "compute_pipeline900",
        layout: pipeline_layout900,
        compute: {
            module: shader_module900,
            entryPoint: "main"
        }
    });
    
    command_encoder901.insertDebugMarker("mymarker");
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout301]
    });
    const query902 = device90.createQuerySet({
        label: "query902",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module902_code = "";
    try {
        shader_module902_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module902.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module902 = await device90.createShaderModule({ label: "shader_module902", code: shader_module902_code })
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
    
    
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout301,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    render_pass_encoder3000.setStencilReference(1);
    
    
    
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    var shader_module903_code = "";
    try {
        shader_module903_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module903.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module903 = await device90.createShaderModule({ label: "shader_module903", code: shader_module903_code })
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline303.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer308,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer309,
                },
            },
        ],
    });

    render_bundle_encoder301.setBindGroup(0, bind_group301);
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const sampler306 = device30.createSampler( { label: "sampler306" } );
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer308.destroy()
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3001,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    texture301.destroy();
    query901.destroy()
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    render_pass_encoder3010.setPipeline(render_pipeline304);
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
    render_pass_encoder3010.insertDebugMarker("marker");
    render_pass_encoder3000.insertDebugMarker("marker");
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth32float",
        dimension: "2d"
    });
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    query301.destroy()
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const render_pipeline309 = device30.createRenderPipeline({
        label: "render_pipeline309",
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
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    device90.pushErrorScope("out-of-memory");
    texture900.destroy();
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout302,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    buffer306.destroy()
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout301,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout304,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder9010 = command_encoder901.beginComputePass({ label: "compute_pass_encoder9010" });
    const pipeline_layout901 = device90.createPipelineLayout({ 
        label: "pipeline_layout901",
        bindGroupLayouts: [bind_group_layout900]
    });
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder301.setVertexBuffer(0, buffer305);
    buffer309.destroy()
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    
    
    
    
    
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    const bind_group_layout700 = device70.createBindGroupLayout({ 
        label: "bind_group_layout700",
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
    query300.destroy()
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    buffer800.destroy()
    query902.destroy()
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    query700.destroy()
    
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3010.setStencilReference(1);
    const bind_group_layout800 = device80.createBindGroupLayout({ 
        label: "bind_group_layout800",
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
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout302,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    
    const command_buffer800 = command_encoder800.finish();
    
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline901 = device90.createComputePipeline({
        label: "compute_pipeline901",
        layout: pipeline_layout901,
        compute: {
            module: shader_module900,
            entryPoint: "main"
        }
    });
    
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    compute_pass_encoder9010.setPipeline(compute_pipeline900);
    
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    const pipeline_layout902 = device90.createPipelineLayout({ 
        label: "pipeline_layout902",
        bindGroupLayouts: [bind_group_layout900]
    });
    const compute_pipeline902 = device90.createComputePipeline({
        label: "compute_pipeline902",
        layout: pipeline_layout901,
        compute: {
            module: shader_module903,
            entryPoint: "main"
        }
    });
    device70.pushErrorScope("internal");
    const render_pipeline3010 = device30.createRenderPipeline({
        label: "render_pipeline3010",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    render_bundle_encoder302.popDebugGroup();
    
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    buffer305.destroy()
    
    
    const compute_pipeline903 = device90.createComputePipeline({
        label: "compute_pipeline903",
        layout: pipeline_layout901,
        compute: {
            module: shader_module900,
            entryPoint: "main"
        }
    });
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout301,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout304,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const texture902 = device90.createTexture({
        label: "texture902",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    compute_pass_encoder9010.insertDebugMarker("marker")
    
    const command_encoder902 = device90.createCommandEncoder({ label: "command_encoder902" });
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout304,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    command_encoder902.pushDebugGroup("mygroupmarker")
    const command_encoder903 = device90.createCommandEncoder({ label: "command_encoder903" });
    
    
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const render_pipeline3011 = device30.createRenderPipeline({
        label: "render_pipeline3011",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    query901.destroy()
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline904 = device90.createComputePipeline({
        label: "compute_pipeline904",
        layout: pipeline_layout900,
        compute: {
            module: shader_module903,
            entryPoint: "main"
        }
    });
    command_encoder700.insertDebugMarker("mymarker");
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const texture802 = device80.createTexture({
        label: "texture802",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer700 = command_encoder700.finish();
    const compute_pipeline905 = device90.createComputePipeline({
        label: "compute_pipeline905",
        layout: pipeline_layout901,
        compute: {
            module: shader_module900,
            entryPoint: "main"
        }
    });
    render_pass_encoder3020.setPipeline(render_pipeline304);
    
    render_bundle_encoder302.insertDebugMarker("marker");
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    query902.destroy()
    const pipeline_layout903 = device90.createPipelineLayout({ 
        label: "pipeline_layout903",
        bindGroupLayouts: [bind_group_layout900]
    });
    render_pass_encoder3000.pushDebugGroup("group_marker");
    
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3017 = device30.createComputePipeline({
        label: "compute_pipeline3017",
        layout: pipeline_layout301,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    
    
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group900 = device90.createBindGroup({
        label: "bind_group900",
        layout: compute_pipeline900.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer900,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer901,
                },
            },
        ],
    });

    compute_pass_encoder9010.setBindGroup(0, bind_group900);
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    
    
    const bind_group_layout901 = device90.createBindGroupLayout({ 
        label: "bind_group_layout901",
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
    const compute_pipeline3018 = device30.createComputePipeline({
        label: "compute_pipeline3018",
        layout: pipeline_layout302,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    
    const render_pipeline3012 = device30.createRenderPipeline({
        label: "render_pipeline3012",
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
    device70.queue.submit([command_buffer700, ]);
    
    const compute_pipeline906 = device90.createComputePipeline({
        label: "compute_pipeline906",
        layout: pipeline_layout900,
        compute: {
            module: shader_module900,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const bind_group_layout701 = device70.createBindGroupLayout({ 
        label: "bind_group_layout701",
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
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline907 = device90.createComputePipeline({
        label: "compute_pipeline907",
        layout: pipeline_layout903,
        compute: {
            module: shader_module900,
            entryPoint: "main"
        }
    });
    const compute_pipeline908 = device90.createComputePipeline({
        label: "compute_pipeline908",
        layout: pipeline_layout903,
        compute: {
            module: shader_module903,
            entryPoint: "main"
        }
    });
    render_pass_encoder3010.setStencilReference(1);
    const command_encoder904 = device90.createCommandEncoder({ label: "command_encoder904" });
    query900.destroy()
    var shader_module904_code = "";
    try {
        shader_module904_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module904.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module904 = await device90.createShaderModule({ label: "shader_module904", code: shader_module904_code })
    const compute_pipeline3019 = device30.createComputePipeline({
        label: "compute_pipeline3019",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3011,
                },
            },
        ],
    });

    render_pass_encoder3000.setBindGroup(0, bind_group302);
    
    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: render_pipeline304.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3013,
                },
            },
        ],
    });

    render_pass_encoder3020.setBindGroup(0, bind_group303);
    
    
    query700.destroy()
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const render_pass_encoder8010 = command_encoder801.beginRenderPass({
        label: "render_pass_encoder8010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view8000,
            },
        ],
        occlusionQuerySet: query800
    });
    buffer3011.destroy()
    
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    render_pass_encoder3010.insertDebugMarker("marker");
    
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    const adapter13 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module802.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    const pipeline_layout904 = device90.createPipelineLayout({ 
        label: "pipeline_layout904",
        bindGroupLayouts: [bind_group_layout900]
    });
    device70.destroy();
    render_pass_encoder8010.beginOcclusionQuery(0)
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    render_bundle_encoder900.pushDebugGroup("group_marker");
    render_pass_encoder8010.setStencilReference(1);
    const uint32_9010 = new Uint32Array(3);

    uint32_9010[0] = 100;
    uint32_9010[1] = 1;
    uint32_9010[2] = 1;

    const buffer902 = device90.createBuffer({
        label: "buffer902",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device90.queue.writeBuffer(buffer902, 0, uint32_9010, 0, uint32_9010.length);

    compute_pass_encoder9010.dispatchWorkgroupsIndirect(buffer902, 0);
    const compute_pipeline3020 = device30.createComputePipeline({
        label: "compute_pipeline3020",
        layout: pipeline_layout302,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    
    
    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: render_pipeline304.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3015,
                },
            },
        ],
    });

    render_pass_encoder3010.setBindGroup(0, bind_group304);
    const compute_pipeline3021 = device30.createComputePipeline({
        label: "compute_pipeline3021",
        layout: pipeline_layout305,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    render_pass_encoder3000.setVertexBuffer(0, buffer305);
    const bind_group_layout303 = device30.createBindGroupLayout({ 
        label: "bind_group_layout303",
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
    const compute_pipeline3022 = device30.createComputePipeline({
        label: "compute_pipeline3022",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    buffer3010.destroy()
    render_pass_encoder8010.setStencilReference(1);
    buffer3014.destroy()
    
    texture902.destroy();
    
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const texture_view8020 = texture802.createView({ label: "texture_view8020" });
    compute_pass_encoder9010.insertDebugMarker("marker")
    
    render_pass_encoder3010.insertDebugMarker("marker");
    const array7 = new Float32Array([-0.5, 0.0, -0.75, 0.75, 0.0, 1.0, -1.0, 0.75, -1.0, -0.25, 0.25, -1.0, -1.0, -0.5, -0.5, 0.0, 0.5, -0.25, -0.5, -0.5, -0.25, 0.25, 0.75, -1.0, -0.25, -1.0, -1.0, -0.5, 0.25, -0.75, 0.5, 0.5, -0.75, -0.75, -0.75, -0.5, 0.25, -1.0, 1.0, 0.25, 1.0, -0.25, 0.5, 0.0, 0.0, -0.25, -0.5, 0.25, 0.0, -0.5, -0.25, -1.0, -0.5, -0.5, 1.0, 0.5, 1.0, -0.25, 0.75, -1.0, 0.5, -1.0, -1.0, -1.0, -1.0, 0.75, 0.75, -0.75, 0.0, 1.0, -0.75, -0.5, 0.5, 0.0, 0.75, 1.0, -0.5, 0.25, 0.75, -0.25, -0.75, -1.0, 0.75, 0.0, 0.75, -1.0, 0.0, 0.5, 0.25, 0.25, 0.75, -0.25, 1.0, -0.5, -1.0, -0.5, -0.25, 0.25, 0.5, 0.5, ]);
    render_bundle_encoder300.insertDebugMarker("marker");
    const compute_pipeline3023 = device30.createComputePipeline({
        label: "compute_pipeline3023",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline909 = device90.createComputePipeline({
        label: "compute_pipeline909",
        layout: pipeline_layout903,
        compute: {
            module: shader_module904,
            entryPoint: "main"
        }
    });
    const sampler902 = device90.createSampler( { label: "sampler902" } );
    render_pass_encoder8010.endOcclusionQuery()
    device90.queue.writeBuffer(buffer902, 0, array6, 0, array6.length);
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout300]
    });
    compute_pass_encoder9010.pushDebugGroup("group_marker")
    query900.destroy()
    const compute_pass_encoder9020 = command_encoder902.beginComputePass({ label: "compute_pass_encoder9020" });
    compute_pass_encoder9020.setPipeline(compute_pipeline900);
    const texture_view9010 = texture901.createView({ label: "texture_view9010" });
    device80.queue.submit([command_buffer800, ]);
    const render_pass_encoder9030 = command_encoder903.beginRenderPass({
        label: "render_pass_encoder9030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view9010,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder3020.setVertexBuffer(0, buffer305);
    render_pass_encoder3020.draw(3);
    compute_pass_encoder9010.popDebugGroup()
    compute_pass_encoder9010.end();
    const buffer903 = device90.createBuffer({
        label: "buffer903",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer904 = device90.createBuffer({
        label: "buffer904",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group901 = device90.createBindGroup({
        label: "bind_group901",
        layout: compute_pipeline900.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer903,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer904,
                },
            },
        ],
    });

    compute_pass_encoder9020.setBindGroup(0, bind_group901);
    render_pass_encoder3020.end();
    const command_buffer302 = command_encoder302.finish();
    render_pass_encoder3010.setVertexBuffer(0, buffer305);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder3000.popDebugGroup();
    compute_pass_encoder9020.dispatchWorkgroups(100);
    const command_buffer904 = command_encoder904.finish();
    render_pass_encoder3010.draw(3);
    render_pass_encoder3000.drawIndirect(buffer304, 0);
    render_pass_encoder3010.end();
    const command_buffer301 = command_encoder301.finish();
    device90.queue.submit([command_buffer904, ]);
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder9020.end();
    command_encoder901.popDebugGroup()
    const command_buffer901 = command_encoder901.finish();
    command_encoder902.popDebugGroup()
    render_pass_encoder3000.end();
    const command_buffer902 = command_encoder902.finish();
    const command_buffer300 = command_encoder300.finish();
}