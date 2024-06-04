const { create, globals } = require('../dawn.node');
Object.assign(globalThis, globals); // Provides constants like GPUBufferUsage.MAP_READ
let navigator = { gpu: create(['enable-dawn-features=allow_unsafe_apis,disable_symbol_renaming']), };
const fs = require('node:fs/promises');

async function init() {
    if (!navigator.gpu) {
        throw Error("WebGPU not supported.");
    }

    const adapter0 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance",
        label: "adapter0"
    });

    console.log(navigator.gpu.wgslLanguageFeatures.size);
    
    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    const device00 = await adapter0.requestDevice({ label: "device00" });

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

    const texture000 = device00.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg16float",
        dimension: "2d"
    });

    console.log(navigator.gpu.wgslLanguageFeatures.size);
    
    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    device00.queue.onSubmittedWorkDone();

    const adapter1 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance",
        label: "adapter1"
    });

    console.log(navigator.gpu.getPreferredCanvasFormat());

    device00.destroy();

    console.log(navigator.gpu.wgslLanguageFeatures.size);
    
    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    const device10 = await adapter1.requestDevice({ label: "device10" });

    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('out/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ code: shader_module100_code })

    const device11 = await adapter1.requestDevice({ label: "device11" });

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

    device11.pushErrorScope("out-of-memory");

    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });

    device10.pushErrorScope("out-of-memory");

    const array0 = new Float32Array([0.75, 0.5, 1.0, -0.5, 0.75, 1.0, -0.5, -1.0, 0.0, -0.5, -0.25, 0.0, -0.75, 0.0, 1.0, -1.0, -0.75, 0.5, 0.0, -0.75, -0.75, -0.25, -0.25, 1.0, 0.75, -0.25, -0.25, 0.25, 0.0, -1.0, -0.25, 0.75, -1.0, -0.5, -0.25, 0.0, 0.0, 1.0, 0.25, 1.0, -0.25, 0.5, -1.0, 0.75, 0.75, -0.25, -0.75, 0.5, -0.25, 0.25, 0.25, 0.75, 0.25, 0.75, -0.75, -0.75, -1.0, 0.25, 0.5, 0.5, -1.0, 0.75, -0.25, -0.25, -0.25, 0.75, 1.0, -0.25, -0.5, 0.75, -0.75, -0.25, -1.0, 1.0, 0.0, 0.25, -0.25, 0.0, 1.0, -1.0, -0.25, -0.25, 0.0, 1.0, 0.0, 0.25, 0.75, 0.25, -0.75, -1.0, 0.25, -0.5, 0.5, -0.75, 0.0, 1.0, 0.75, -0.75, -0.75, -0.75, ]);

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

    const compute_pipeline100 = device10.createComputePipeline({ layout: "auto", compute: { module: shader_module100, entryPoint: "main" } });

    const device01 = await adapter0.requestDevice({ label: "device01" });

    const device12 = await adapter1.requestDevice({ label: "device12" });

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

    var shader_module010_code = "";
    try {
        shader_module010_code = await fs.readFile('out/shader_module010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module010 = await device01.createShaderModule({ code: shader_module010_code })

    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });

    const buffer100 = device10.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });

    device11.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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

    const device02 = await adapter0.requestDevice({ label: "device02" });

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

    var shader_module020_code = "";
    try {
        shader_module020_code = await fs.readFile('out/shader_module020.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module020 = await device02.createShaderModule({ code: shader_module020_code })

    const array1 = new Float32Array([0.25, 0.25, 0.0, -0.5, -0.25, 0.25, -1.0, -1.0, 0.75, -0.25, -1.0, 0.25, 0.0, 0.25, 1.0, 0.25, -0.25, 0.25, 0.75, -0.75, 0.0, 0.75, 0.5, -1.0, -1.0, -1.0, -0.25, 0.25, 0.25, -1.0, 0.75, 0.25, -0.25, 0.5, -1.0, -0.25, 0.0, -1.0, 0.25, 0.0, 0.25, -0.75, 0.0, 0.25, 0.0, -1.0, 0.75, -0.25, -0.75, 0.5, 0.5, -0.75, 0.75, -0.75, -1.0, 1.0, 0.25, 1.0, 0.5, 0.5, -0.25, 0.75, -0.5, 0.75, 0.0, 0.75, -0.5, -0.75, -0.75, -0.75, -0.5, -0.5, 0.0, -0.75, 1.0, -0.5, 0.25, 0.25, -0.25, 0.75, 0.75, 0.75, 0.75, 0.0, 0.75, 0.5, -0.25, 0.75, 1.0, 0.75, 0.0, -0.25, 1.0, 1.0, 0.5, 1.0, 0.0, 0.5, 0.5, 0.75, ]);

    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('out/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ code: shader_module101_code })

    const buffer010 = device01.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });

    const buffer110 = device11.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });

    const array2 = new Float32Array([0.0, -1.0, 0.75, 1.0, 0.25, -1.0, 1.0, -0.5, -0.75, 1.0, -0.5, 1.0, -0.75, -0.25, -0.5, 0.0, -1.0, 0.75, -0.25, -0.75, 0.0, -0.5, -0.75, -1.0, 0.5, -1.0, -0.5, 0.0, 1.0, -0.25, -0.5, 0.5, -0.5, 1.0, 1.0, 0.5, 0.75, 1.0, 0.25, 0.25, 1.0, 0.75, 0.25, 1.0, -1.0, -0.25, 0.75, 0.25, 0.5, -0.25, 0.5, -0.5, 0.5, 1.0, 0.5, -0.5, 0.75, -0.75, 0.75, 0.0, -0.25, -1.0, 0.5, 0.5, 1.0, 1.0, 0.0, -0.25, -0.5, -0.5, -0.75, -0.25, -0.25, 0.25, -0.75, -0.75, -0.75, 0.5, 1.0, -0.25, 0.0, 0.75, 0.5, -0.5, 0.25, -0.25, -0.75, 0.75, 0.5, -1.0, 1.0, -0.75, 0.25, -0.75, -1.0, 1.0, 0.75, 0.5, 0.5, -0.75, ]);

    const command_encoder010 = device01.createCommandEncoder({ label: "command_encoder010" });

    const buffer101 = device10.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });

    console.log(navigator.gpu.wgslLanguageFeatures.size);
    
    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    device02.queue.onSubmittedWorkDone();

    const command_buffer010 = command_encoder010.finish();

    const texture120 = device12.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32sint",
        dimension: "2d"
    });

    var shader_module120_code = "";
    try {
        shader_module120_code = await fs.readFile('out/shader_module120.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module120 = await device12.createShaderModule({ code: shader_module120_code })

    const buffer020 = device02.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });

    device11.queue.onSubmittedWorkDone();

    const device03 = await adapter0.requestDevice({ label: "device03" });

    const buffer011 = device01.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });

    var shader_module011_code = "";
    try {
        shader_module011_code = await fs.readFile('out/shader_module011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module011 = await device01.createShaderModule({ code: shader_module011_code })

    const command_encoder110 = device11.createCommandEncoder({ label: "command_encoder110" });

    device03.destroy();

    device12.queue.onSubmittedWorkDone();

    const compute_pipeline101 = device10.createComputePipeline({ layout: "auto", compute: { module: shader_module101, entryPoint: "main" } });

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

    console.log(navigator.gpu.wgslLanguageFeatures.size);
    
    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    var shader_module121_code = "";
    try {
        shader_module121_code = await fs.readFile('out/shader_module121.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module121 = await device12.createShaderModule({ code: shader_module121_code })

    const command_encoder020 = device02.createCommandEncoder({ label: "command_encoder020" });

    console.log(navigator.gpu.wgslLanguageFeatures.size);
    
    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });

    const compute_pipeline120 = device12.createComputePipeline({ layout: "auto", compute: { module: shader_module120, entryPoint: "main" } });

    device02.pushErrorScope("out-of-memory");

    var shader_module122_code = "";
    try {
        shader_module122_code = await fs.readFile('out/shader_module122.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module122 = await device12.createShaderModule({ code: shader_module122_code })

    const command_buffer110 = command_encoder110.finish();

    const compute_pipeline102 = device10.createComputePipeline({ layout: "auto", compute: { module: shader_module100, entryPoint: "main" } });

    console.log(navigator.gpu.wgslLanguageFeatures.size);
    
    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    compute_pass_encoder1010.setPipeline(compute_pipeline101);

    const texture020 = device02.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r16uint",
        dimension: "2d"
    });

    console.log(navigator.gpu.getPreferredCanvasFormat());

    const device13 = await adapter1.requestDevice({ label: "device13" });

    device11.pushErrorScope("internal");

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

    const buffer102 = device10.createBuffer({
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer103 = device10.createBuffer({
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });

    // const bind_group_layout100 = device10.createBindGroupLayout({
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
    
    compute_pass_encoder1010.setBindGroup(0, bind_group100);

    const compute_pipeline103 = device10.createComputePipeline({ layout: "auto", compute: { module: shader_module100, entryPoint: "main" } });

    const buffer104 = device10.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    var shader_module130_code = "";
    try {
        shader_module130_code = await fs.readFile('out/shader_module130.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module130 = await device13.createShaderModule({ code: shader_module130_code })

    const compute_pipeline010 = device01.createComputePipeline({ layout: "auto", compute: { module: shader_module011, entryPoint: "main" } });

    var shader_module110_code = "";
    try {
        shader_module110_code = await fs.readFile('out/shader_module110.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module110 = await device11.createShaderModule({ code: shader_module110_code })

    const compute_pipeline130 = device13.createComputePipeline({ layout: "auto", compute: { module: shader_module130, entryPoint: "main" } });

    console.log(navigator.gpu.getPreferredCanvasFormat());

    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    device13.destroy();

    const texture100 = device10.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg32float",
        dimension: "2d"
    });

    var shader_module123_code = "";
    try {
        shader_module123_code = await fs.readFile('out/shader_module123.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module123 = await device12.createShaderModule({ code: shader_module123_code })

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

    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 20, rowsPerImage: 20 }, { width: 20, height: 20 });

    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });

    compute_pass_encoder1000.setPipeline(compute_pipeline101);

    device11.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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

    const command_encoder011 = device01.createCommandEncoder({ label: "command_encoder011" });

    var shader_module021_code = "";
    try {
        shader_module021_code = await fs.readFile('out/shader_module021.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module021 = await device02.createShaderModule({ code: shader_module021_code })

    var shader_module111_code = "";
    try {
        shader_module111_code = await fs.readFile('out/shader_module111.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module111 = await device11.createShaderModule({ code: shader_module111_code })

    const adapter2 = await navigator.gpu.requestAdapter({
        powerPreference: undefined,
        label: "adapter2"
    });

    console.log(navigator.gpu.wgslLanguageFeatures.size);
    
    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    compute_pass_encoder1010.dispatchWorkgroups(100);

    const command_buffer020 = command_encoder020.finish();

    const buffer105 = device10.createBuffer({
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer106 = device10.createBuffer({
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });

    // const bind_group_layout101 = device10.createBindGroupLayout({
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
        
    const bind_group101 = device10.createBindGroup({
        layout: compute_pipeline101.getBindGroupLayout(0),
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
    
    compute_pass_encoder1000.setBindGroup(0, bind_group101);

    device02.queue.submit([command_buffer020, ]);

    compute_pass_encoder1000.dispatchWorkgroups(100);

    compute_pass_encoder1000.end();

    const command_buffer011 = command_encoder011.finish();

    device01.queue.submit([command_buffer011, ]);

    device02.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    device01.queue.submit([command_buffer010, ]);

    compute_pass_encoder1010.end();

    device11.queue.submit([command_buffer110, ]);

    const command_buffer100 = command_encoder100.finish();

    device10.queue.submit([command_buffer100, ]);

    const command_buffer101 = command_encoder101.finish();

    device10.queue.submit([command_buffer101, ]);
}

init();