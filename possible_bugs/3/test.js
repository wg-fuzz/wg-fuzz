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

    const array0 = new Float32Array([-0.25, -0.5, 0.0, 0.0, 0.0, -0.75, 1.0, -0.75, 0.25, -1.0, 0.0, -0.75, -1.0, -1.0, 0.5, -1.0, -0.5, -0.75, -1.0, -0.75, 0.0, -0.75, -0.5, 0.0, 1.0, 0.5, 1.0, -0.5, 0.25, 0.0, 0.5, -0.25, 1.0, 0.25, -0.25, -0.75, 0.0, 0.5, 0.5, -1.0, -0.5, 0.0, 0.25, -0.5, -1.0, 0.0, 0.5, 0.25, 0.5, 0.75, -0.25, -1.0, -0.5, 0.0, -1.0, 0.25, 1.0, 0.0, -0.25, -0.75, 0.0, 0.25, 0.0, 1.0, -1.0, -1.0, -0.5, -0.25, 0.0, 0.25, -0.5, 0.75, -0.5, 0.25, 0.25, -0.75, -0.5, 0.25, 0.25, 0.0, -0.5, 1.0, 0.25, 0.25, 1.0, -0.5, 1.0, -0.75, 0.5, 0.25, 0.75, -1.0, 0.25, 0.0, 1.0, 1.0, -0.25, -0.75, -1.0, -0.5, ]);

    const adapter0 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power",
        label: "adapter0"
    });

    console.log(navigator.gpu.wgslLanguageFeatures.size);
    
    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    console.log(navigator.gpu.wgslLanguageFeatures.size);
    
    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    console.log(navigator.gpu.getPreferredCanvasFormat());

    const array1 = new Float32Array([1.0, 0.0, -1.0, 0.75, -0.75, 0.25, 0.25, -0.75, 0.25, 0.5, 1.0, -1.0, -1.0, 0.75, 1.0, 0.5, -1.0, 1.0, 0.0, -0.5, 0.5, 1.0, -0.5, -0.75, -0.75, -1.0, 1.0, -0.5, 0.25, 0.5, 0.5, 0.25, -1.0, -0.25, -0.75, -0.5, -1.0, 0.75, 0.75, 0.25, -0.25, 0.0, 0.5, 1.0, -1.0, -0.75, -0.5, -1.0, -0.5, -1.0, 0.25, -0.75, 0.25, -0.75, -0.5, -0.25, 1.0, -0.25, 0.25, -0.25, -0.25, 1.0, 0.25, 0.25, 0.5, -0.75, -1.0, -0.5, -0.25, 1.0, 0.75, 1.0, -0.75, 0.0, 1.0, -1.0, 0.75, -0.5, -0.75, 1.0, 0.0, 0.0, -0.75, -0.25, -0.25, -0.75, 0.75, -0.75, -1.0, -0.5, -0.5, -0.5, 0.5, 0.0, -0.5, 0.25, 0.75, -0.75, 0.75, 0.0, ]);

    console.log(navigator.gpu.getPreferredCanvasFormat());

    const device00 = await adapter0.requestDevice({ label: "device00" });

    const array2 = new Float32Array([1.0, 0.75, -0.75, 0.0, 0.5, 0.0, 1.0, 0.0, -0.5, -0.75, 0.75, -1.0, 1.0, 0.5, -1.0, -0.75, -0.5, 0.0, 0.25, 0.75, -0.5, 1.0, -1.0, 0.0, 0.0, 0.25, -0.5, 1.0, -0.25, 0.0, -0.75, -0.25, -0.75, 0.75, 0.5, -0.25, 0.75, 0.75, -1.0, -0.5, 0.5, 1.0, -0.25, -0.5, 1.0, 0.75, 0.0, 0.5, 0.25, -0.5, 0.0, 0.5, 0.25, -1.0, 0.75, -1.0, 0.5, 0.75, 0.75, 0.0, 0.25, -0.5, -1.0, 0.5, -0.75, 0.5, -0.25, 1.0, 1.0, 1.0, -0.25, 0.75, 0.0, 1.0, 0.5, -1.0, -0.75, -0.5, 0.75, -0.75, 0.75, 0.5, 0.0, -1.0, 0.5, -0.25, -0.25, 0.0, -0.5, -1.0, -0.25, 0.75, 0.25, -0.75, 0.75, -1.0, -0.25, 1.0, -0.5, -1.0, ]);

    device00.queue.onSubmittedWorkDone();

    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('out/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ code: shader_module000_code })

    device00.queue.onSubmittedWorkDone();

    device00.destroy();

    console.log(navigator.gpu.wgslLanguageFeatures.size);
    
    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    const array3 = new Float32Array([-0.5, 0.25, -1.0, 0.5, 0.75, -0.25, -0.75, 0.0, 0.5, -0.5, -0.5, -0.25, 1.0, 0.0, 0.75, 0.5, -1.0, -0.5, 0.75, -0.75, 1.0, 1.0, 0.25, -0.75, 0.5, -0.75, -1.0, 1.0, 0.0, 1.0, 0.0, 0.25, -0.5, 0.25, -0.75, -0.25, 1.0, -0.75, 0.75, -1.0, -0.75, -1.0, 0.75, 0.75, -0.75, 0.5, 0.0, -0.5, 0.5, -0.75, -0.25, -0.25, -0.5, 0.75, 0.5, 0.25, -0.5, -0.5, 0.5, -0.5, 0.0, 1.0, -1.0, -0.5, -1.0, 0.5, 0.5, 1.0, -0.25, 0.0, 0.0, -0.25, 0.75, 0.0, 1.0, -1.0, 0.25, -0.75, 0.25, 0.75, 1.0, 0.25, 1.0, 1.0, -0.5, -0.5, 0.75, 0.0, 0.75, -0.75, -1.0, -0.5, 0.0, -0.25, 0.0, 1.0, -0.5, -1.0, 0.25, -0.5, ]);

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

    const array4 = new Float32Array([0.25, 1.0, 0.25, 0.25, 1.0, 0.25, -0.5, 1.0, 0.25, 1.0, -0.5, -1.0, 0.75, 0.25, 0.5, 0.75, -1.0, -0.25, -0.25, 0.0, -0.25, 1.0, 0.0, -1.0, 0.5, -1.0, -1.0, -0.75, 1.0, -1.0, 0.0, -0.5, 0.5, 0.5, 1.0, -1.0, -0.75, 0.25, 0.25, -0.75, -0.5, 0.0, -0.25, 0.5, 1.0, -0.25, 0.75, -0.5, 0.0, 0.75, -0.25, 0.75, 0.75, 1.0, -1.0, 0.5, -0.75, 0.0, -1.0, -1.0, 1.0, -0.25, 0.75, -0.75, -0.5, -1.0, -0.75, 0.0, 0.25, 0.25, -0.25, -1.0, -1.0, 0.0, 0.5, -1.0, 0.0, -0.75, -0.25, 1.0, -0.5, 0.0, 0.5, -1.0, -0.5, 0.75, 0.5, 0.75, -0.5, 0.75, 0.0, 0.75, -0.25, -1.0, -0.5, -0.75, -0.25, 0.0, 1.0, 0.5, ]);

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

    console.log(navigator.gpu.getPreferredCanvasFormat());

    const device01 = await adapter0.requestDevice({ label: "device01" });

    const buffer010 = device01.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });

    const array5 = new Float32Array([-0.75, -0.5, 0.25, -0.75, 1.0, 0.75, 0.25, -0.25, -0.25, 0.0, 0.0, -0.25, -0.75, 1.0, -0.25, 0.5, -0.5, -0.25, 0.5, 0.0, -0.25, 0.0, -0.5, 0.0, -1.0, 0.75, 0.75, 0.25, 0.75, -1.0, -0.25, 0.5, -1.0, 0.25, 0.0, 1.0, -0.25, 0.0, -0.75, -1.0, -0.75, 0.75, 1.0, -0.5, 0.25, -0.75, -0.5, 1.0, 1.0, -0.25, 1.0, 0.0, 0.25, -0.5, 0.5, -0.25, -0.5, 1.0, -0.75, -1.0, -0.5, -1.0, -0.5, 0.75, 0.75, 0.5, -1.0, -0.25, -0.25, 0.5, 0.0, -0.5, -0.75, 0.0, 0.25, -0.25, -0.75, 0.75, -0.25, -1.0, 0.75, -1.0, 1.0, 0.5, 0.25, 0.75, -0.25, 0.25, 0.25, -0.5, 0.5, 1.0, -0.75, 0.5, -1.0, 1.0, 0.5, 1.0, -1.0, 0.25, ]);

    const command_encoder010 = device01.createCommandEncoder({ label: "command_encoder010" });

    var shader_module010_code = "";
    try {
        shader_module010_code = await fs.readFile('out/shader_module010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module010 = await device01.createShaderModule({ code: shader_module010_code })

    const array6 = new Float32Array([0.5, 0.75, -0.75, 0.75, 0.5, 0.75, -0.5, 0.75, -1.0, 0.0, -0.75, 0.75, -0.5, -0.25, -0.25, -0.75, 0.5, 1.0, 0.75, 0.5, 0.25, 1.0, 0.0, 0.0, 0.5, -0.5, 0.5, 0.25, -0.5, 0.75, -0.25, 1.0, 1.0, -0.5, 0.5, -0.75, -1.0, 0.0, 0.5, 0.5, 0.25, 0.0, -1.0, -0.25, 0.75, -0.75, 0.5, 0.5, -0.25, -1.0, -0.25, -0.5, 0.5, -1.0, 0.25, 0.5, 0.25, 0.0, 0.0, -0.25, 0.75, 0.25, 0.5, 0.5, 1.0, 1.0, 1.0, 1.0, 0.0, -0.75, -0.75, 0.0, 0.0, -0.25, -0.25, 0.25, 0.0, 1.0, -1.0, -0.75, 0.0, 0.75, -0.5, 0.5, 0.75, 1.0, 1.0, 0.75, 0.0, -0.75, -0.75, 0.0, -0.75, 0.0, 0.75, -0.75, -0.25, -1.0, 0.25, -0.25, ]);

    const compute_pipeline010 = device01.createComputePipeline({ layout: "auto", compute: { module: shader_module010, entryPoint: "main" } });

    device01.queue.onSubmittedWorkDone();

    const texture010 = device01.createTexture({
        size: [400],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg16sint",
        dimension: "3d"
    });

    device01.pushErrorScope("out-of-memory");

    const compute_pipeline011 = device01.createComputePipeline({ layout: "auto", compute: { module: shader_module010, entryPoint: "main" } });

    const compute_pass_encoder0100 = command_encoder010.beginComputePass({ label: "compute_pass_encoder0100" });

    compute_pass_encoder0100.setPipeline(compute_pipeline011);

    const array7 = new Float32Array([-0.75, 0.75, -0.75, 0.5, 0.0, -1.0, -0.5, 0.75, 0.5, -0.25, -0.75, -0.5, 0.75, 0.25, 1.0, 0.75, -1.0, -0.5, -1.0, 0.75, 0.25, 0.75, -0.25, 0.25, 1.0, 0.0, 0.75, 0.0, 0.0, 1.0, 0.25, 0.5, -0.5, -0.5, -1.0, -0.25, 0.75, -1.0, 0.5, -0.5, 0.25, -0.75, -0.75, 0.25, 0.75, 0.25, 0.25, -0.25, 0.5, -0.25, -0.5, -0.5, 1.0, -0.25, 1.0, -0.5, 0.5, -0.25, 0.0, -0.25, 0.0, 0.0, 0.0, 0.5, -0.5, -0.5, 1.0, -0.75, -0.25, 0.0, 0.75, 0.5, 0.25, 0.75, 0.5, -0.25, 0.25, 0.25, 0.5, -0.25, 1.0, 1.0, 0.25, 1.0, 0.25, 0.25, -1.0, -0.5, -1.0, -1.0, 0.25, 0.0, 1.0, 0.0, 0.5, 0.0, -0.75, -0.5, 0.5, -0.75, ]);

    var shader_module011_code = "";
    try {
        shader_module011_code = await fs.readFile('out/shader_module011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module011 = await device01.createShaderModule({ code: shader_module011_code })

    const buffer011 = device01.createBuffer({
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer012 = device01.createBuffer({
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });

    // const bind_group_layout010 = device01.createBindGroupLayout({
    //     entries: [
    //         {
    //             binding: 0,
    //             visibility: GPUShaderStage.COMPUTE,
    //             buffer: {
    //                 type: "uniform",
    //             },
    //         },
    //         {
    //             binding: 1,
    //             visibility: GPUShaderStage.COMPUTE,
    //             buffer: {
    //                 type: "storage",
    //             }
    //         }
    //     ],
    // });
        
    const bind_group010 = device01.createBindGroup({
        layout: compute_pipeline011.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer012,
                },
            },
        ],
    });
    
    compute_pass_encoder0100.setBindGroup(0, bind_group010);

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

    const command_encoder011 = device01.createCommandEncoder({ label: "command_encoder011" });

    const buffer013 = device01.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });

    const compute_pipeline012 = device01.createComputePipeline({ layout: "auto", compute: { module: shader_module010, entryPoint: "main" } });

    const command_encoder012 = device01.createCommandEncoder({ label: "command_encoder012" });

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

    device01.queue.onSubmittedWorkDone();

    device01.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    const compute_pipeline013 = device01.createComputePipeline({ layout: "auto", compute: { module: shader_module011, entryPoint: "main" } });

    var shader_module012_code = "";
    try {
        shader_module012_code = await fs.readFile('out/shader_module012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module012 = await device01.createShaderModule({ code: shader_module012_code })

    const compute_pipeline014 = device01.createComputePipeline({ layout: "auto", compute: { module: shader_module012, entryPoint: "main" } });

    device01.pushErrorScope("internal");

    device01.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    const command_buffer011 = command_encoder011.finish();

    const buffer014 = device01.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.INDEX
    });

    const compute_pipeline015 = device01.createComputePipeline({ layout: "auto", compute: { module: shader_module010, entryPoint: "main" } });

    var shader_module013_code = "";
    try {
        shader_module013_code = await fs.readFile('out/shader_module013.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module013 = await device01.createShaderModule({ code: shader_module013_code })

    compute_pass_encoder0100.dispatchWorkgroups(100);

    const array8 = new Float32Array([0.75, 0.25, -0.75, -0.5, 0.25, -0.25, 0.5, -0.25, 0.75, -0.25, 0.75, 1.0, 0.75, 0.25, -0.25, -0.75, 1.0, 0.25, 0.5, 0.5, 0.25, 0.0, 0.75, -1.0, -0.75, -1.0, 0.75, -0.75, -0.5, 0.0, -0.25, 0.5, -0.75, 0.0, -0.25, -0.5, 0.75, 0.5, 0.25, 0.0, -0.75, -0.25, 0.75, 0.75, -0.75, -0.75, 0.5, 0.75, -0.25, -0.75, -0.25, -1.0, 0.25, 0.75, 1.0, 0.5, 0.0, 1.0, -1.0, 0.0, -0.75, 1.0, -0.25, 0.0, -0.75, -0.25, 0.5, 0.25, -0.75, 0.75, 0.0, 0.75, 0.75, 0.25, 0.75, -1.0, 0.0, 0.25, -1.0, 0.5, -0.25, -1.0, -0.25, -1.0, 0.75, 0.0, 0.25, 0.5, -0.5, -0.5, 0.0, -0.25, 0.5, 0.75, 1.0, 1.0, -0.25, 0.0, -1.0, 0.25, ]);

    const compute_pipeline016 = device01.createComputePipeline({ layout: "auto", compute: { module: shader_module013, entryPoint: "main" } });

    device01.queue.onSubmittedWorkDone();

    const compute_pipeline017 = device01.createComputePipeline({ layout: "auto", compute: { module: shader_module011, entryPoint: "main" } });

    const compute_pipeline018 = device01.createComputePipeline({ layout: "auto", compute: { module: shader_module013, entryPoint: "main" } });

    const buffer015 = device01.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer016 = device01.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });

    device01.queue.submit([command_buffer011, ]);

    device01.pushErrorScope("validation");

    const compute_pipeline019 = device01.createComputePipeline({ layout: "auto", compute: { module: shader_module012, entryPoint: "main" } });

    compute_pass_encoder0100.end();

    const adapter1 = await navigator.gpu.requestAdapter({
        powerPreference: undefined,
        label: "adapter1"
    });

    const compute_pipeline0110 = device01.createComputePipeline({ layout: "auto", compute: { module: shader_module013, entryPoint: "main" } });

    const compute_pipeline0111 = device01.createComputePipeline({ layout: "auto", compute: { module: shader_module011, entryPoint: "main" } });

    const texture011 = device01.createTexture({
        size: [400],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32sint",
        dimension: "1d"
    });

    device01.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    const device02 = await adapter0.requestDevice({ label: "device02" });

    var shader_module014_code = "";
    try {
        shader_module014_code = await fs.readFile('out/shader_module014.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module014 = await device01.createShaderModule({ code: shader_module014_code })

    const buffer020 = device02.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });

    var shader_module015_code = "";
    try {
        shader_module015_code = await fs.readFile('out/shader_module015.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module015 = await device01.createShaderModule({ code: shader_module015_code })

    const texture012 = device01.createTexture({
        size: [400],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba32sint",
        dimension: "1d"
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

    const compute_pipeline0112 = device01.createComputePipeline({ layout: "auto", compute: { module: shader_module015, entryPoint: "main" } });

    const adapter2 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance",
        label: "adapter2"
    });

    const command_encoder020 = device02.createCommandEncoder({ label: "command_encoder020" });

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

    device01.pushErrorScope("internal");

    const command_encoder021 = device02.createCommandEncoder({ label: "command_encoder021" });

    const compute_pipeline0113 = device01.createComputePipeline({ layout: "auto", compute: { module: shader_module010, entryPoint: "main" } });

    const device20 = await adapter2.requestDevice({ label: "device20" });

    device02.pushErrorScope("validation");

    const compute_pass_encoder0200 = command_encoder020.beginComputePass({ label: "compute_pass_encoder0200" });

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

    const compute_pass_encoder0210 = command_encoder021.beginComputePass({ label: "compute_pass_encoder0210" });

    var shader_module020_code = "";
    try {
        shader_module020_code = await fs.readFile('out/shader_module020.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module020 = await device02.createShaderModule({ code: shader_module020_code })

    const texture013 = device01.createTexture({
        size: [400],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba32sint",
        dimension: "1d"
    });

    var shader_module021_code = "";
    try {
        shader_module021_code = await fs.readFile('out/shader_module021.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module021 = await device02.createShaderModule({ code: shader_module021_code })

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

    const compute_pipeline020 = device02.createComputePipeline({ layout: "auto", compute: { module: shader_module021, entryPoint: "main" } });

    const device10 = await adapter1.requestDevice({ label: "device10" });

    var shader_module016_code = "";
    try {
        shader_module016_code = await fs.readFile('out/shader_module016.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module016 = await device01.createShaderModule({ code: shader_module016_code })

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

    const compute_pipeline0114 = device01.createComputePipeline({ layout: "auto", compute: { module: shader_module013, entryPoint: "main" } });

    const texture100 = device10.createTexture({
        size: [400],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32uint",
        dimension: "3d"
    });

    device01.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    device02.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    const command_buffer012 = command_encoder012.finish();

    compute_pass_encoder0200.setPipeline(compute_pipeline020);

    const buffer021 = device02.createBuffer({
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer022 = device02.createBuffer({
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });

    // const bind_group_layout020 = device02.createBindGroupLayout({
    //     entries: [
    //         {
    //             binding: 0,
    //             visibility: GPUShaderStage.COMPUTE,
    //             buffer: {
    //                 type: "uniform",
    //             },
    //         },
    //         {
    //             binding: 1,
    //             visibility: GPUShaderStage.COMPUTE,
    //             buffer: {
    //                 type: "storage",
    //             }
    //         }
    //     ],
    // });
        
    const bind_group020 = device02.createBindGroup({
        layout: compute_pipeline020.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer022,
                },
            },
        ],
    });
    
    compute_pass_encoder0200.setBindGroup(0, bind_group020);

    compute_pass_encoder0200.dispatchWorkgroups(100);

    compute_pass_encoder0200.end();

    const command_buffer020 = command_encoder020.finish();

    compute_pass_encoder0210.setPipeline(compute_pipeline020);

    const command_buffer010 = command_encoder010.finish();

    device01.queue.submit([command_buffer010, command_buffer012, ]);

    const buffer023 = device02.createBuffer({
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer024 = device02.createBuffer({
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });

    // const bind_group_layout021 = device02.createBindGroupLayout({
    //     entries: [
    //         {
    //             binding: 0,
    //             visibility: GPUShaderStage.COMPUTE,
    //             buffer: {
    //                 type: "uniform",
    //             },
    //         },
    //         {
    //             binding: 1,
    //             visibility: GPUShaderStage.COMPUTE,
    //             buffer: {
    //                 type: "storage",
    //             }
    //         }
    //     ],
    // });
        
    const bind_group021 = device02.createBindGroup({
        layout: compute_pipeline020.getBindGroupLayout(0),
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
    
    compute_pass_encoder0210.setBindGroup(0, bind_group021);

    compute_pass_encoder0210.dispatchWorkgroups(100);

    compute_pass_encoder0210.end();

    const command_buffer021 = command_encoder021.finish();

    device02.queue.submit([command_buffer020, command_buffer021, ]);
}

init();