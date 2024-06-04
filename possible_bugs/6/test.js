const { create, globals } = require('../dawn.node');
Object.assign(globalThis, globals); // Provides constants like GPUBufferUsage.MAP_READ
let navigator = { gpu: create(['enable-dawn-features=allow_unsafe_apis,disable_symbol_renaming']), };
const fs = require('node:fs/promises');

async function init() {
    if (!navigator.gpu) {
        throw Error("WebGPU not supported.");
    }

    const array0 = new Float32Array([0.0, 0.5, 1.0, 0.0, 0.5, -0.25, -0.75, -0.25, -0.25, -1.0, 0.75, -1.0, 1.0, 0.75, 0.0, 0.25, -0.25, 0.5, -0.75, -1.0, 1.0, -0.75, 0.75, -0.25, -0.25, -0.75, 0.75, -0.5, -0.25, 1.0, 0.75, -0.75, -0.25, 1.0, 0.75, 0.0, 1.0, 0.5, 0.0, -0.5, 0.0, -1.0, 0.75, 0.25, -0.5, 0.75, 1.0, -0.75, -0.25, 0.0, 1.0, -0.5, 0.25, -0.75, -0.5, 0.75, -0.25, -1.0, -0.25, 0.0, -1.0, -0.75, 0.0, -0.25, 0.75, 0.0, 0.5, 0.75, -0.25, 0.25, -1.0, 0.25, -0.5, 0.75, 0.0, 0.25, -1.0, -1.0, 1.0, -0.5, 0.25, 0.0, 0.25, -0.5, 0.75, 0.5, 0.0, -0.5, 0.5, 0.75, -0.75, 0.0, -0.75, -0.5, -1.0, 0.25, 1.0, 1.0, -0.75, 0.0, ]);

    const adapter0 = await navigator.gpu.requestAdapter({
        powerPreference: undefined,
        label: "adapter0"
    });

    const device00 = await adapter0.requestDevice({ label: "device00" });

    console.log(navigator.gpu.getPreferredCanvasFormat());

    const texture000 = device00.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });

    texture000.destroy();

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

    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });

    const array1 = new Float32Array([-0.25, -0.25, -0.5, 1.0, -0.75, 0.25, 1.0, 0.0, 1.0, 0.25, -0.5, -1.0, -0.5, -1.0, -0.75, 1.0, -1.0, -0.75, 1.0, 0.25, 1.0, -0.25, 0.5, -1.0, 0.75, -0.75, 0.25, 0.75, 0.75, 1.0, -0.75, -1.0, 1.0, -0.5, -0.25, -0.5, -0.25, 0.75, 0.5, 0.25, -0.25, -1.0, -1.0, -0.25, 0.75, 0.75, 0.75, -0.5, 0.75, 0.0, 0.0, 0.5, -1.0, -0.75, 1.0, 0.25, -1.0, 0.0, 1.0, 1.0, -0.5, 0.0, -1.0, 0.25, 0.0, -0.25, -1.0, 1.0, -0.25, -0.25, -0.75, -0.25, 0.25, 0.25, -0.75, -0.75, -0.25, 0.0, 0.75, 0.0, -0.25, 0.75, -1.0, -0.5, 0.5, -0.75, 0.5, -0.25, 0.25, 1.0, 1.0, 1.0, 0.25, -1.0, 0.5, 1.0, 0.0, -0.75, -0.5, -0.75, ]);

    command_encoder000.insertDebugMarker("mymarker");

    console.log(navigator.gpu.wgslLanguageFeatures.size);
    
    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    const adapter1 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance",
        label: "adapter1"
    });

    console.log(navigator.gpu.wgslLanguageFeatures.size);
    
    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    const command_buffer000 = command_encoder000.finish();

    const adapter2 = await navigator.gpu.requestAdapter({
        powerPreference: undefined,
        label: "adapter2"
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

    device00.queue.submit([command_buffer000, ]);

    const device01 = await adapter0.requestDevice({ label: "device01" });

    console.log(navigator.gpu.getPreferredCanvasFormat());

    console.log(navigator.gpu.getPreferredCanvasFormat());

    const command_encoder010 = device01.createCommandEncoder({ label: "command_encoder010" });

    device00.destroy();

    device01.queue.onSubmittedWorkDone();

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

    device01.queue.onSubmittedWorkDone();

    const adapter3 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power",
        label: "adapter3"
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

    const adapter4 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power",
        label: "adapter4"
    });

    const device20 = await adapter2.requestDevice({ label: "device20" });

    const compute_pass_encoder0100 = command_encoder010.beginComputePass({ label: "compute_pass_encoder0100" });

    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });

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

    var shader_module010_code = "";
    try {
        shader_module010_code = await fs.readFile('out/shader_module010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module010 = await device01.createShaderModule({ code: shader_module010_code })

    console.log(navigator.gpu.wgslLanguageFeatures.size);
    
    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    const device02 = await adapter0.requestDevice({ label: "device02" });

    command_encoder200.pushDebugGroup("mygroupmarker")

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

    const device10 = await adapter1.requestDevice({ label: "device10" });

    const device40 = await adapter4.requestDevice({ label: "device40" });

    device40.queue.onSubmittedWorkDone();

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

    const sampler100 = device10.createSampler();

    const buffer020 = device02.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
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

    compute_pass_encoder0100.pushDebugGroup("group_marker")

    device20.queue.onSubmittedWorkDone();

    const command_encoder020 = device02.createCommandEncoder({ label: "command_encoder020" });

    command_encoder020.pushDebugGroup("mygroupmarker")

    device40.pushErrorScope("internal");

    const texture200 = device20.createTexture({
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });

    device02.queue.onSubmittedWorkDone();

    const adapter5 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance",
        label: "adapter5"
    });

    const sampler020 = device02.createSampler();

    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    const array2 = new Float32Array([0.5, -0.75, -0.75, -0.25, 0.5, -0.75, 0.5, -0.25, 0.75, 0.25, 0.0, -0.25, -0.5, 0.5, -0.75, -0.25, 0.75, -0.25, -1.0, -0.75, -0.5, 0.25, -0.25, 0.5, 0.0, -0.75, 1.0, 0.0, 0.25, -0.75, 0.5, -1.0, -0.25, -0.5, -1.0, 0.75, -0.5, 0.5, 0.0, 0.25, 0.0, -1.0, -0.25, 0.0, 0.75, 0.0, 0.5, -0.5, 0.25, -1.0, -0.75, 0.75, 0.5, -0.5, -1.0, 1.0, -0.25, 1.0, 0.5, 0.25, 0.25, 1.0, -0.25, 1.0, -1.0, 1.0, -1.0, 0.0, -0.75, 0.25, 1.0, 0.5, 0.5, 0.0, 0.0, 0.25, -0.75, -0.25, 0.0, 0.5, -1.0, 0.25, 0.25, 0.0, -1.0, -1.0, -0.75, 0.25, 0.25, -1.0, -0.75, -0.5, 0.5, -0.25, 0.25, 0.5, -0.75, 0.0, -0.5, 0.75, ]);

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

    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('out/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ code: shader_module200_code })

    {
        const buffer = buffer020
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const buffer200 = device20.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });

    device02.pushErrorScope("out-of-memory");

    device40.queue.onSubmittedWorkDone();

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
        const adapterInfo = await adapter5.requestAdapterInfo();
        console.log(adapterInfo.vendor);
        console.log(adapterInfo.architecture);
        console.log(adapterInfo.device);
        console.log(adapterInfo.description);
    }

    const compute_pipeline200 = await device20.createComputePipelineAsync({ layout: "auto", compute: { module: shader_module200, entryPoint: "main" } });

    const sampler400 = device40.createSampler();

    const sampler010 = device01.createSampler();

    const command_encoder021 = device02.createCommandEncoder({ label: "command_encoder021" });

    device02.queue.onSubmittedWorkDone();

    var shader_module011_code = "";
    try {
        shader_module011_code = await fs.readFile('out/shader_module011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module011 = await device01.createShaderModule({ code: shader_module011_code })

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

    const command_encoder022 = device02.createCommandEncoder({ label: "command_encoder022" });

    const buffer010 = device01.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });

    command_encoder020.insertDebugMarker("mymarker");

    command_encoder022.insertDebugMarker("mymarker");

    device40.pushErrorScope("internal");

    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });

    {
        const buffer = buffer020
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    command_encoder022.insertDebugMarker("mymarker");

    compute_pass_encoder4000.insertDebugMarker("marker")

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

    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('out/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ code: shader_module201_code })

    const compute_pipeline201 = await device20.createComputePipelineAsync({ layout: "auto", compute: { module: shader_module201, entryPoint: "main" } });

    device01.queue.writeBuffer(buffer010, 0, array1, 0, array1.length);

    const command_encoder023 = device02.createCommandEncoder({ label: "command_encoder023" });

    command_encoder021.insertDebugMarker("mymarker");

    const sampler200 = device20.createSampler();

    buffer020.destroy()

    device02.queue.onSubmittedWorkDone();

    {
        const shaderInfo = await shader_module200.getCompilationInfo();

        for (const message in shaderInfo.messages) {
            console.log(message.lineNum);
            console.log(message.message);
            console.log(message.type);
        }
    }

    device20.queue.onSubmittedWorkDone();

    const device11 = await adapter1.requestDevice({ label: "device11" });

    const buffer100 = device10.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });

    compute_pass_encoder4000.pushDebugGroup("group_marker")

    const buffer021 = device02.createBuffer({ 
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });

    const command_buffer022 = command_encoder022.finish();

    texture200.destroy();

    {
        await buffer010.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer010.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer010.unmap();
        console.log(new Float32Array(data));
    }
    

    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    command_encoder200.popDebugGroup()

    device02.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    compute_pass_encoder4000.popDebugGroup()

    device02.queue.submit([command_buffer022, ]);

    const command_buffer021 = command_encoder021.finish();

    const command_buffer200 = command_encoder200.finish();

    const command_buffer023 = command_encoder023.finish();

    command_encoder020.popDebugGroup()

    const command_buffer020 = command_encoder020.finish();

    device02.queue.submit([command_buffer021, command_buffer023, ]);

    device20.queue.submit([command_buffer200, ]);

    device02.queue.submit([command_buffer020, ]);

    compute_pass_encoder0100.popDebugGroup()
}

init();