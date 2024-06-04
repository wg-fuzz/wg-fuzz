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

    console.log(navigator.gpu.getPreferredCanvasFormat());

    console.log(navigator.gpu.getPreferredCanvasFormat());

    console.log(navigator.gpu.wgslLanguageFeatures.size);
    
    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    console.log(navigator.gpu.wgslLanguageFeatures.size);
    
    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    console.log(navigator.gpu.getPreferredCanvasFormat());

    const adapter0 = await navigator.gpu.requestAdapter({
        powerPreference: undefined,
        label: "adapter0"
    });

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

    const device01 = await adapter0.requestDevice({ label: "device01" });

    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });

    device01.pushErrorScope("validation");

    device00.queue.onSubmittedWorkDone();

    console.log(navigator.gpu.wgslLanguageFeatures.size);
    
    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    const command_encoder010 = device01.createCommandEncoder({ label: "command_encoder010" });

    const command_buffer000 = command_encoder000.finish();

    const array0 = new Float32Array([-0.5, 0.75, -0.5, -0.25, -0.5, -0.5, 0.0, -1.0, -1.0, -1.0, 1.0, -1.0, 0.75, -1.0, 0.0, 0.75, 0.25, -1.0, 0.0, 0.0, 0.75, -1.0, -0.75, 0.25, 0.5, 0.75, 1.0, 0.25, -0.75, -0.75, 1.0, 0.75, -0.5, 1.0, -1.0, 0.5, 0.5, -1.0, -0.75, 0.75, 0.25, -0.5, 0.75, -0.5, 1.0, -0.5, 0.25, 0.75, -0.25, 0.0, -0.75, -0.5, -0.75, 0.75, 0.25, 0.5, 0.25, 0.25, -0.5, 0.75, 1.0, -0.75, -0.25, -0.5, 0.75, 0.0, 0.5, 0.5, 0.25, 0.75, -0.75, 0.25, 1.0, 0.25, -0.5, -1.0, -0.75, -0.5, 0.25, -0.25, 0.25, -0.25, 0.25, -0.25, 0.0, 0.0, 0.0, 0.5, 0.75, 0.25, 0.25, 0.5, -1.0, -0.75, 0.5, -0.5, -1.0, -1.0, -0.25, 0.0, ]);

    const command_encoder011 = device01.createCommandEncoder({ label: "command_encoder011" });

    const compute_pass_encoder0110 = command_encoder011.beginComputePass({ label: "compute_pass_encoder0110" });

    const compute_pass_encoder0100 = command_encoder010.beginComputePass({ label: "compute_pass_encoder0100" });

    device01.queue.onSubmittedWorkDone();

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

    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('out/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ code: shader_module000_code })

    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });

    const buffer010 = device01.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });

    const adapter1 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power",
        label: "adapter1"
    });

    const device02 = await adapter0.requestDevice({ label: "device02" });

    device02.queue.onSubmittedWorkDone();

    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });

    const adapter2 = await navigator.gpu.requestAdapter({
        powerPreference: undefined,
        label: "adapter2"
    });

    device01.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    const compute_pipeline000 = device00.createComputePipeline({ layout: "auto", compute: { module: shader_module000, entryPoint: "main" } });

    const array1 = new Float32Array([-0.5, 0.75, 0.0, -1.0, 0.75, 1.0, 0.75, -0.25, 0.75, 0.0, -0.75, -1.0, 0.5, -0.5, 0.0, 0.5, 0.5, -0.25, -1.0, -1.0, -0.75, 0.75, 0.75, 0.5, 0.75, -0.75, -0.75, -0.75, -1.0, -1.0, -1.0, -0.25, 0.5, -0.5, -0.5, 0.75, -0.5, -0.75, 1.0, 1.0, -0.75, 0.25, 0.75, -0.25, 0.0, 0.75, -1.0, 0.5, 0.75, 0.0, -0.5, -0.75, 0.5, -0.25, -1.0, 0.0, 0.5, 0.75, 0.0, -0.25, -1.0, 1.0, -1.0, 0.75, 0.75, -0.75, -0.5, -0.75, -1.0, 0.5, 0.25, -0.75, -0.25, -0.75, -0.5, -1.0, 1.0, -0.75, -0.5, 0.0, -0.75, -0.5, 0.0, 0.75, -0.5, 0.75, 0.0, -0.5, -0.25, -0.75, -0.75, 0.75, -0.25, -0.25, -0.25, 0.5, 0.5, -1.0, 0.25, -0.5, ]);

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

    const array2 = new Float32Array([0.75, -0.25, 0.25, -0.25, -1.0, 0.5, 0.25, 1.0, 0.75, 0.5, 0.25, 0.75, -1.0, -0.5, -1.0, 0.0, 0.5, 0.0, -0.5, -0.5, 0.25, -0.5, 0.5, 0.0, -1.0, -0.5, 0.0, 0.5, -0.25, 0.25, 0.75, -1.0, -0.25, -0.25, 0.0, 0.5, 1.0, 1.0, -0.25, 0.25, -0.25, -0.75, 1.0, 1.0, 0.5, 0.25, 0.75, -1.0, 1.0, -0.25, 0.5, -0.25, -0.25, 0.5, -0.5, -0.75, -0.5, -1.0, 0.25, 0.75, 0.0, 1.0, -0.5, -1.0, 0.5, 0.0, 0.0, -0.5, -0.5, 0.5, -0.75, -0.25, 0.75, 0.5, -0.75, -0.25, -0.25, 1.0, -0.75, 0.75, 1.0, -0.25, 0.0, 0.25, -0.5, 0.0, 1.0, 0.0, -0.5, -0.75, 0.5, 0.0, 0.0, 1.0, 0.25, 1.0, 0.75, -1.0, 0.75, -0.75, ]);

    device02.destroy();

    const texture000 = device00.createTexture({
        size: [400],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8sint",
        dimension: "2d"
    });

    const array3 = new Float32Array([-1.0, 0.5, -0.25, -0.75, -0.25, 0.5, -0.75, 0.25, -0.75, -1.0, 0.75, 1.0, 1.0, -0.5, 0.75, 0.0, 0.75, 0.75, 1.0, 0.75, 0.0, 1.0, 0.0, -0.75, 0.75, -0.5, -0.25, -0.25, 0.75, 1.0, 0.75, -0.25, 0.75, -1.0, 0.5, -0.5, -0.5, 0.25, -0.5, -1.0, 0.25, 0.0, 0.75, -1.0, 1.0, -0.5, -0.5, 0.25, 0.75, -1.0, 0.25, 0.25, 0.0, -0.75, 0.0, -0.25, 1.0, 0.75, -1.0, -0.5, 0.25, -1.0, -0.75, -1.0, -1.0, -0.75, 0.75, -0.25, -0.5, -1.0, -0.25, 0.5, 0.5, -0.25, 0.75, -1.0, 0.75, -0.25, -1.0, 0.75, 0.25, -0.5, -0.75, 0.0, 0.75, 0.5, -0.75, 0.75, 1.0, 0.5, 0.5, -0.25, 1.0, -0.5, 0.5, 0.25, 0.5, -0.5, 1.0, 0.75, ]);

    compute_pass_encoder0010.setPipeline(compute_pipeline000);

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

    const adapter3 = await navigator.gpu.requestAdapter({
        powerPreference: undefined,
        label: "adapter3"
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

    const array4 = new Float32Array([-0.25, -1.0, 1.0, 0.5, -0.75, 0.75, 1.0, 0.25, 0.0, -0.5, 0.75, -0.75, -0.75, -0.5, -1.0, -0.5, 1.0, 0.0, -0.5, -0.25, -0.75, 0.5, 0.75, -1.0, 0.25, -0.75, -1.0, -0.5, -1.0, 0.25, 0.0, 0.5, 0.0, 0.0, 0.5, 0.5, 0.25, 0.5, 1.0, 1.0, -1.0, 0.25, 0.25, 0.25, 1.0, -1.0, 0.25, -1.0, 0.75, 0.0, 0.25, 0.25, 0.25, 0.25, 0.5, 0.0, 0.5, 0.75, -0.25, -0.75, 0.5, -0.5, 0.5, 0.5, -1.0, -0.75, 0.75, -1.0, 0.25, 0.25, -0.25, 1.0, 0.5, 0.75, -0.25, 0.25, 1.0, 0.5, -0.75, 0.25, 0.0, 0.5, -0.75, -0.5, 0.5, 1.0, 0.25, -0.25, -0.75, 1.0, -0.75, 1.0, 1.0, -0.75, -0.5, -1.0, -0.25, -0.75, 1.0, 0.75, ]);

    const texture001 = device00.createTexture({
        size: [400],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8unorm-srgb",
        dimension: "3d"
    });

    const buffer011 = device01.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });

    device01.pushErrorScope("internal");

    const buffer000 = device00.createBuffer({
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer001 = device00.createBuffer({
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });

    // const bind_group_layout000 = device00.createBindGroupLayout({
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
        
    const bind_group000 = device00.createBindGroup({
        layout: compute_pipeline000.getBindGroupLayout(0),
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
    
    compute_pass_encoder0010.setBindGroup(0, bind_group000);

    compute_pass_encoder0010.dispatchWorkgroups(100);

    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('out/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ code: shader_module001_code })

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

    const buffer012 = device01.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });

    const device10 = await adapter1.requestDevice({ label: "device10" });

    device00.pushErrorScope("validation");

    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });

    const array5 = new Float32Array([-0.75, -0.75, -0.75, -0.25, 1.0, 0.25, 1.0, 0.75, -1.0, 0.0, -1.0, 0.75, 0.25, 0.0, 0.5, -1.0, -1.0, 0.0, 0.75, 0.5, 1.0, 0.25, -1.0, -0.5, 0.25, 0.0, -0.75, 0.25, 0.0, 0.75, -1.0, 0.75, 1.0, 0.25, -0.75, 0.75, -1.0, 1.0, 0.5, 0.0, 0.25, -1.0, 0.75, 0.0, -0.5, -0.5, -1.0, 1.0, -0.75, 0.75, -1.0, -0.5, -0.75, 0.5, 0.0, 0.5, 0.25, -0.75, -0.75, -0.25, 0.75, 1.0, -0.5, 0.5, 0.75, 0.75, 0.75, 1.0, -0.75, 0.25, -1.0, -0.5, -0.75, 0.5, 0.0, 0.0, 0.25, -0.5, 0.0, 0.75, -1.0, 1.0, -0.5, -0.75, 0.5, -0.75, 0.5, -0.75, -0.75, 0.75, -0.75, 0.75, 0.5, 0.25, -1.0, 0.25, 0.25, 0.75, 0.0, -0.5, ]);

    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    device00.queue.onSubmittedWorkDone();

    const device11 = await adapter1.requestDevice({ label: "device11" });

    device00.queue.onSubmittedWorkDone();

    device10.queue.onSubmittedWorkDone();

    const adapter4 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power",
        label: "adapter4"
    });

    const device30 = await adapter3.requestDevice({ label: "device30" });

    console.log(navigator.gpu.wgslLanguageFeatures.size);
    
    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
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

    device00.pushErrorScope("internal");

    const device12 = await adapter1.requestDevice({ label: "device12" });

    const texture002 = device00.createTexture({
        size: [400],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "depth32float",
        dimension: "1d"
    });

    device01.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    device30.destroy();

    device11.queue.onSubmittedWorkDone();

    device12.destroy();

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

    const array6 = new Float32Array([0.5, 0.25, 0.0, -0.25, 0.0, -0.75, 0.75, -1.0, 0.5, 0.0, -0.5, -0.25, 1.0, -0.5, 0.0, 1.0, 0.25, -1.0, -0.5, -1.0, 0.75, 0.75, 1.0, 0.5, 0.0, 0.25, 0.0, -0.75, 0.75, 0.25, 0.5, 0.0, 0.5, 0.75, -0.75, -0.5, 0.0, -0.5, 0.25, 0.0, -0.5, -0.75, -0.25, -0.25, -0.25, 1.0, 0.0, 0.5, 1.0, -0.25, -0.75, -1.0, 0.75, 1.0, -0.25, -0.5, -1.0, 0.0, -1.0, 1.0, 0.5, -0.5, -0.25, 1.0, 0.0, -1.0, 1.0, -1.0, 0.25, 0.5, -0.25, -0.25, -0.75, 1.0, -0.25, -0.75, 0.0, 0.5, -0.5, 0.5, 0.25, -0.75, -0.25, 0.5, 0.75, 0.75, 0.25, 0.0, 1.0, 0.0, -0.75, 0.75, 0.5, -1.0, 1.0, 0.5, 0.75, -0.75, 1.0, 0.5, ]);

    device11.queue.onSubmittedWorkDone();

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

    const device13 = await adapter1.requestDevice({ label: "device13" });

    device11.destroy();

    const device14 = await adapter1.requestDevice({ label: "device14" });

    const array7 = new Float32Array([1.0, -0.75, 0.25, 1.0, 0.0, 0.5, -0.75, 0.5, 0.75, -0.25, 0.5, -0.25, 0.5, -0.5, -0.75, -0.5, -0.75, -1.0, 0.0, 0.5, -0.5, -0.5, 0.0, 1.0, -0.25, 0.75, 0.0, 1.0, -0.5, 0.75, 0.25, -0.5, -0.75, -0.25, -1.0, -0.25, 0.5, 1.0, -0.75, 1.0, -0.75, 0.0, 0.25, -0.5, -0.75, 1.0, -1.0, -0.25, 1.0, 1.0, -0.25, 1.0, 0.75, 0.75, 0.25, -0.75, 1.0, -0.5, 0.5, 0.0, -0.75, 0.25, 1.0, 0.75, -0.5, 0.75, 0.75, -0.5, 0.75, 1.0, 0.75, 0.5, -0.25, -0.5, -0.75, 0.5, 1.0, 0.5, -0.75, -0.75, 0.5, -0.5, -0.5, 0.0, -0.5, 0.5, 1.0, -0.25, -1.0, -0.75, 0.75, -0.5, 0.75, 0.75, 0.75, 0.5, -1.0, -0.25, 0.5, -1.0, ]);

    device00.queue.onSubmittedWorkDone();

    device14.queue.onSubmittedWorkDone();

    const compute_pipeline001 = device00.createComputePipeline({ layout: "auto", compute: { module: shader_module001, entryPoint: "main" } });

    const device40 = await adapter4.requestDevice({ label: "device40" });

    compute_pass_encoder0010.end();

    device14.destroy();

    const buffer013 = device01.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
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

    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('out/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ code: shader_module400_code })

    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });

    device40.pushErrorScope("out-of-memory");

    const texture400 = device40.createTexture({
        size: [400],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r16uint",
        dimension: "3d"
    });

    var shader_module010_code = "";
    try {
        shader_module010_code = await fs.readFile('out/shader_module010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module010 = await device01.createShaderModule({ code: shader_module010_code })

    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('out/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ code: shader_module100_code })

    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    const command_encoder130 = device13.createCommandEncoder({ label: "command_encoder130" });

    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    const command_buffer130 = command_encoder130.finish();

    const command_buffer400 = command_encoder400.finish();

    const command_buffer001 = command_encoder001.finish();

    const command_buffer002 = command_encoder002.finish();

    device00.queue.submit([command_buffer001, ]);

    device00.queue.submit([command_buffer002, ]);

    device00.queue.submit([command_buffer000, ]);

    device13.queue.submit([command_buffer130, ]);
}

init();