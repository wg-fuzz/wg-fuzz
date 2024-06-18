const { create, globals } = require('./dawn.node');
Object.assign(globalThis, globals);
let navigator = { gpu: create(['enable-dawn-features=allow_unsafe_apis,disable_symbol_renaming']) };
const fs = require('node:fs/promises');

async function init() {
    if (!navigator.gpu) {
        throw Error("WebGPU not supported.");
    }

    const adapter0 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance",
        label: "adapter0"
    });

    const adapter1 = await navigator.gpu.requestAdapter({
        powerPreference: undefined,
        label: "adapter1"
    });

    const array0 = new Float32Array([-0.25, 0.75, 0.75, -0.75, 0.75, 0.0, 0.0, 0.5, -1.0, 0.5, 0.0, -0.75, -1.0, 0.75, -0.75, 0.0, -0.75, -0.25, 0.75, 0.5, 0.5, 0.75, 0.25, 1.0, 0.75, -1.0, 0.75, -0.5, 1.0, -0.25, 0.75, 0.75, 0.75, -0.5, 0.0, 1.0, -0.75, 0.75, 0.25, 0.75, 1.0, -0.5, 0.75, -0.75, -0.5, -1.0, 1.0, 0.0, 1.0, -0.5, 0.25, -1.0, -1.0, 1.0, 0.0, -0.25, 1.0, -1.0, -0.75, 0.75, 0.0, -0.25, 0.25, 0.25, -0.5, 0.0, 0.5, 0.0, 0.0, 1.0, -0.5, 1.0, 0.0, 0.0, -0.25, -1.0, -0.25, -0.75, -1.0, 0.5, 0.25, -1.0, -1.0, -0.5, -0.5, 0.0, 0.5, 0.5, 0.0, -0.75, -0.5, 1.0, -0.75, 0.25, -0.5, 1.0, 0.25, 0.25, -0.25, 0.25, ]);

    console.log(navigator.gpu.getPreferredCanvasFormat());

    const device10 = await adapter1.requestDevice({ label: "device10" });

    console.log(navigator.gpu.getPreferredCanvasFormat());

    device10.pushErrorScope("validation");

    const array1 = new Float32Array([1.0, -1.0, -1.0, 1.0, 0.5, -0.75, 0.75, -0.25, -0.75, -0.25, 0.0, 0.0, 1.0, 0.25, 0.0, 0.75, -0.75, -0.5, 0.75, 0.5, 0.5, -1.0, 0.0, -0.5, -1.0, -1.0, 0.5, 0.25, -0.75, -0.5, -0.5, -0.25, 0.25, 0.75, 0.0, 1.0, -0.5, -1.0, 0.25, -0.25, -0.75, -0.75, 0.0, 1.0, -0.5, 0.0, -1.0, -1.0, -0.75, 1.0, -1.0, -0.5, 0.0, -1.0, 0.0, -0.25, 1.0, -0.75, -0.25, 0.75, -1.0, 0.25, 0.25, -0.75, -0.5, 0.25, -0.75, -0.5, 0.0, -0.25, 0.75, -0.25, -0.75, 0.0, 0.5, 0.0, -0.75, 0.0, -1.0, 0.25, 0.5, -0.25, -1.0, -0.5, 0.0, 0.0, -0.5, -1.0, -1.0, 0.5, -0.25, -0.5, -0.25, 0.5, 0.75, 1.0, 0.75, -0.25, 1.0, 0.5, ]);

    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    const device00 = await adapter0.requestDevice({ label: "device00" });

    device00.pushErrorScope("internal");

    // await device00.queue.onSubmittedWorkDone();

    console.log(navigator.gpu.getPreferredCanvasFormat());

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

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    // await device00.queue.onSubmittedWorkDone();

    const sampler000 = device00.createSampler( { label: "sampler000" } );

    {
        const buffer = buffer100
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    device00.destroy();

    {
        const buffer = buffer100
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const adapter2 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power",
        label: "adapter2"
    });

    device10.pushErrorScope("out-of-memory");

    // await device10.queue.onSubmittedWorkDone();

    const array2 = new Float32Array([-0.5, -0.5, 0.25, -0.75, 0.75, 1.0, -0.75, -1.0, 0.5, 0.0, 0.5, -0.25, -0.75, 0.5, -0.25, 0.0, 0.75, 0.5, -0.25, 0.5, -0.75, 0.5, 0.5, -0.5, -0.75, -0.5, -1.0, -0.75, 0.5, -0.75, 0.25, -0.75, 0.75, 0.5, 0.25, -0.25, 0.0, 0.0, 0.25, -0.5, 0.5, -0.5, -1.0, 0.0, -0.75, 0.25, -0.5, -0.5, -0.5, -0.5, 0.75, 0.0, 0.5, 0.75, -0.5, -0.75, 0.0, -0.25, 1.0, -1.0, -0.75, 1.0, 1.0, -0.75, -0.25, -0.75, -0.5, -0.5, -0.25, -0.25, 0.75, -0.25, -1.0, -0.25, -1.0, -0.5, 0.0, -0.25, -0.5, 0.0, 0.75, -1.0, -0.5, 0.0, 0.5, -0.75, 0.5, 0.25, -0.25, -1.0, -1.0, 0.25, -0.75, -1.0, 0.0, 0.5, 0.0, 0.0, -0.75, -0.5, ]);

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    // await device10.queue.onSubmittedWorkDone();

    {
        const buffer = buffer100
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

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

    const device20 = await adapter2.requestDevice({ label: "device20" });

    const sampler100 = device10.createSampler( { label: "sampler100" } );

    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    // await device20.queue.onSubmittedWorkDone();

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

    const sampler200 = device20.createSampler( { label: "sampler200" } );

    const adapter3 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance",
        label: "adapter3"
    });

    {
        const buffer = buffer100
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    device20.pushErrorScope("out-of-memory");

    console.log(navigator.gpu.getPreferredCanvasFormat());

    // await device20.queue.onSubmittedWorkDone();

    const adapter4 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power",
        label: "adapter4"
    });

    // await device20.queue.onSubmittedWorkDone();

    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });

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

    device10.pushErrorScope("out-of-memory");

    const adapter5 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power",
        label: "adapter5"
    });

    const device30 = await adapter3.requestDevice({ label: "device30" });

    const bind_group_layout100 = device10.createBindGroupLayout({ 
        label: "bind_group_layout100",
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

    const sampler201 = device20.createSampler( { label: "sampler201" } );

    device30.destroy();

    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });

    {
        const buffer = buffer200
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
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

    // await device10.queue.onSubmittedWorkDone();

    // await device10.queue.onSubmittedWorkDone();

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

    {
        const buffer = buffer200
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    const device40 = await adapter4.requestDevice({ label: "device40" });

    const array3 = new Float32Array([-1.0, -1.0, 1.0, 0.75, 0.75, 0.0, 1.0, 1.0, 0.0, -0.75, 0.5, 0.5, 1.0, 0.75, -0.75, -0.25, 0.0, 1.0, 1.0, 1.0, -0.5, -1.0, 0.25, -0.5, 0.75, 0.75, 0.25, 0.75, -1.0, -1.0, -1.0, 0.25, -0.5, 1.0, -1.0, 0.5, -1.0, 0.75, 0.5, -0.5, 0.5, 0.25, 0.75, -0.75, 0.75, -0.25, 0.75, 0.0, -0.5, 0.75, 0.75, -0.25, -0.5, 0.5, 0.25, 0.75, 0.5, 0.5, 0.0, 0.0, 0.75, 0.25, -0.5, -1.0, 0.75, -0.5, 0.25, 0.0, 0.25, 1.0, 0.25, -0.5, -0.25, 0.0, 1.0, -0.25, 0.75, -0.5, 0.75, 0.25, 0.75, 0.5, 0.0, 0.25, 0.75, -0.25, 0.75, 0.0, -0.5, 0.75, 0.0, -1.0, 0.5, 0.75, 0.5, 0.0, 1.0, -1.0, -0.75, 0.0, ]);

    const adapter6 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance",
        label: "adapter6"
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

    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
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

    // await device40.queue.onSubmittedWorkDone();

    device40.destroy();

    const bind_group_layout101 = device10.createBindGroupLayout({ 
        label: "bind_group_layout101",
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

    const sampler101 = device10.createSampler( { label: "sampler101" } );

    {
        const buffer = buffer101
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    {
        const buffer = buffer100
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    // await device10.queue.onSubmittedWorkDone();

    console.log(navigator.gpu.getPreferredCanvasFormat());

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
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

    {
        const buffer = buffer200
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    const device60 = await adapter6.requestDevice({ label: "device60" });

    device60.pushErrorScope("internal");

    const sampler102 = device10.createSampler( { label: "sampler102" } );

    {
        const buffer = buffer101
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    device20.destroy();

    const bind_group_layout102 = device10.createBindGroupLayout({ 
        label: "bind_group_layout102",
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
        const buffer = buffer101
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const sampler103 = device10.createSampler( { label: "sampler103" } );

    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    const bind_group_layout103 = device10.createBindGroupLayout({ 
        label: "bind_group_layout103",
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

    const bind_group_layout104 = device10.createBindGroupLayout({ 
        label: "bind_group_layout104",
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

    const device50 = await adapter5.requestDevice({ label: "device50" });

    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    {
        const buffer = buffer100
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

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

    const sampler104 = device10.createSampler( { label: "sampler104" } );

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

    const adapter7 = await navigator.gpu.requestAdapter({
        powerPreference: undefined,
        label: "adapter7"
    });

    const bind_group_layout105 = device10.createBindGroupLayout({ 
        label: "bind_group_layout105",
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

    device50.pushErrorScope("validation");

    const sampler500 = device50.createSampler( { label: "sampler500" } );

    {
        const buffer = buffer101
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    device60.pushErrorScope("out-of-memory");

    const sampler105 = device10.createSampler( { label: "sampler105" } );

    console.log(navigator.gpu.getPreferredCanvasFormat());

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

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

    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });

    const bind_group_layout106 = device10.createBindGroupLayout({ 
        label: "bind_group_layout106",
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

    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    const bind_group_layout107 = device10.createBindGroupLayout({ 
        label: "bind_group_layout107",
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

    // await device60.queue.onSubmittedWorkDone();

    const device70 = await adapter7.requestDevice({ label: "device70" });

    console.log(device70.features.size);

    for (const value of device70.features.keys()) {
        console.log(value);
    }

    console.log(device70.limits.size);

    for (const [key, value] of Object.entries(device70.limits)) {
        console.log(key);
        console.log(value);
    }

    device70.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

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

    {
        const buffer = buffer100
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

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

    {
        const buffer = buffer600
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    {
        const buffer = buffer600
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });

    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    device60.destroy();

    const sampler501 = device50.createSampler( { label: "sampler501" } );

    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });

    device10.pushErrorScope("out-of-memory");

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

    // await device10.queue.onSubmittedWorkDone();

    const sampler106 = device10.createSampler( { label: "sampler106" } );

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    console.log(navigator.gpu.getPreferredCanvasFormat());

    const sampler107 = device10.createSampler( { label: "sampler107" } );

    {
        const buffer = buffer103
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

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

    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    console.log(device70.features.size);

    for (const value of device70.features.keys()) {
        console.log(value);
    }

    console.log(device70.limits.size);

    for (const [key, value] of Object.entries(device70.limits)) {
        console.log(key);
        console.log(value);
    }

    device70.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    console.log(navigator.gpu.getPreferredCanvasFormat());

    {
        const buffer = buffer102
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });

    {
        const buffer = buffer102
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    device70.pushErrorScope("out-of-memory");

    // await device70.queue.onSubmittedWorkDone();

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    {
        const buffer = buffer101
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    device10.pushErrorScope("internal");

    {
        const buffer = buffer101
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    const sampler108 = device10.createSampler( { label: "sampler108" } );

    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });

    const sampler109 = device10.createSampler( { label: "sampler109" } );

    device10.pushErrorScope("validation");

    const sampler700 = device70.createSampler( { label: "sampler700" } );

    {
        const buffer = buffer501
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });

    {
        const buffer = buffer700
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const array4 = new Float32Array([-1.0, 0.25, -0.5, 0.75, -0.25, 1.0, 0.0, 0.5, -1.0, -0.75, -0.25, 0.0, 0.25, -0.75, 0.0, -0.5, 0.0, 0.25, -0.75, -1.0, 1.0, -0.5, -0.5, -0.75, 0.25, 0.25, -1.0, 0.5, -0.75, 0.0, -1.0, -1.0, -0.75, 0.25, 0.5, 0.25, -0.25, 1.0, 1.0, 0.75, 0.75, -0.5, -0.25, 0.0, 0.75, -0.5, 0.75, 0.25, -0.5, 0.75, 1.0, 1.0, 1.0, 0.75, 0.75, -0.5, 0.0, 0.5, -0.5, 0.75, -0.25, -0.25, 0.0, 1.0, -1.0, -0.25, 0.0, 0.5, -0.75, -0.75, 0.5, 1.0, 0.5, -0.5, -0.75, -1.0, -0.5, 0.75, 0.0, 0.5, 0.75, 1.0, 0.25, 0.5, 0.25, 0.25, 1.0, 0.5, 0.0, -1.0, 0.5, 1.0, -0.75, -0.25, -0.75, 0.0, 0.75, 0.5, 0.75, -1.0, ]);

    const sampler701 = device70.createSampler( { label: "sampler701" } );

    const bind_group_layout108 = device10.createBindGroupLayout({ 
        label: "bind_group_layout108",
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

    const adapter8 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance",
        label: "adapter8"
    });

    const sampler702 = device70.createSampler( { label: "sampler702" } );

    {
        const buffer = buffer100
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    {
        const buffer = buffer102
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    const sampler1010 = device10.createSampler( { label: "sampler1010" } );

    {
        const buffer = buffer101
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    {
        const buffer = buffer101
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

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

    // await device50.queue.onSubmittedWorkDone();

    device50.pushErrorScope("out-of-memory");

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

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

    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });

    console.log(navigator.gpu.getPreferredCanvasFormat());

    {
        const buffer = buffer500
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    {
        const buffer = buffer700
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const device80 = await adapter8.requestDevice({ label: "device80" });

    const sampler502 = device50.createSampler( { label: "sampler502" } );

    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    {
        const buffer = buffer101
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    {
        const buffer = buffer502
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    device10.destroy();

    // await device50.queue.onSubmittedWorkDone();

    const sampler800 = device80.createSampler( { label: "sampler800" } );

    const sampler503 = device50.createSampler( { label: "sampler503" } );

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

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

    console.log(device70.features.size);

    for (const value of device70.features.keys()) {
        console.log(value);
    }

    console.log(device70.limits.size);

    for (const [key, value] of Object.entries(device70.limits)) {
        console.log(key);
        console.log(value);
    }

    device70.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    {
        const buffer = buffer502
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    // await device80.queue.onSubmittedWorkDone();

    device70.pushErrorScope("validation");

    device80.pushErrorScope("out-of-memory");

    console.log(device70.features.size);

    for (const value of device70.features.keys()) {
        console.log(value);
    }

    console.log(device70.limits.size);

    for (const [key, value] of Object.entries(device70.limits)) {
        console.log(key);
        console.log(value);
    }

    device70.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    const sampler801 = device80.createSampler( { label: "sampler801" } );

    const sampler703 = device70.createSampler( { label: "sampler703" } );

    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    {
        const buffer = buffer501
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const bind_group_layout501 = device50.createBindGroupLayout({ 
        label: "bind_group_layout501",
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
        const buffer = buffer800
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    device50.pushErrorScope("internal");

    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    {
        const buffer = buffer800
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });

    {
        const buffer = buffer800
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    device80.pushErrorScope("out-of-memory");

    {
        const buffer = buffer800
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    device70.pushErrorScope("validation");

    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });

    const buffer802 = device80.createBuffer({
        label: "buffer802",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });

    {
        const buffer = buffer502
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    {
        const buffer = buffer501
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    {
        const buffer = buffer801
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    {
        const buffer = buffer800
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    const sampler802 = device80.createSampler( { label: "sampler802" } );

    {
        const buffer = buffer500
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    console.log(navigator.gpu.getPreferredCanvasFormat());

    const sampler803 = device80.createSampler( { label: "sampler803" } );

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

    {
        const buffer = buffer500
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

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

    // await device80.queue.onSubmittedWorkDone();

    device50.pushErrorScope("validation");

    // await device80.queue.onSubmittedWorkDone();

    device70.destroy();

    {
        const buffer = buffer800
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

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

    {
        const buffer = buffer800
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    const sampler804 = device80.createSampler( { label: "sampler804" } );

    // await device50.queue.onSubmittedWorkDone();

    {
        const buffer = buffer802
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    // await device50.queue.onSubmittedWorkDone();

    {
        const buffer = buffer801
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    console.log(device80.features.size);

    for (const value of device80.features.keys()) {
        console.log(value);
    }

    console.log(device80.limits.size);

    for (const [key, value] of Object.entries(device80.limits)) {
        console.log(key);
        console.log(value);
    }

    device80.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    {
        const buffer = buffer801
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    {
        const buffer = buffer502
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    {
        const buffer = buffer801
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const sampler504 = device50.createSampler( { label: "sampler504" } );

    // await device80.queue.onSubmittedWorkDone();

    {
        const buffer = buffer500
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    {
        const buffer = buffer503
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    {
        const buffer = buffer500
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    console.log(navigator.gpu.getPreferredCanvasFormat());

    {
        const buffer = buffer501
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    {
        const buffer = buffer501
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    {
        const buffer = buffer800
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    {
        const buffer = buffer502
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const sampler805 = device80.createSampler( { label: "sampler805" } );

    // await device80.queue.onSubmittedWorkDone();

    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });

    device80.destroy();

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    {
        const buffer = buffer503
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const sampler505 = device50.createSampler( { label: "sampler505" } );

    {
        const buffer = buffer503
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });

    {
        const buffer = buffer501
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    {
        const buffer = buffer500
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    // await device50.queue.onSubmittedWorkDone();

    {
        const buffer = buffer500
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    {
        const buffer = buffer504
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    {
        const buffer = buffer504
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const array5 = new Float32Array([0.0, -0.5, -1.0, 0.25, -0.75, -0.5, 0.0, 0.0, -1.0, 0.25, 0.5, -0.25, 0.0, 0.5, 0.0, -0.75, 0.5, 0.75, 0.0, -0.25, 0.25, -0.75, -0.5, 0.75, -1.0, -0.25, 0.75, -0.5, -0.75, -0.75, -1.0, 0.0, 0.25, -0.5, 0.75, 0.25, -1.0, -0.5, 0.75, -0.25, 0.5, -0.75, 0.75, -0.25, 0.75, 0.75, -1.0, 0.25, -1.0, 1.0, 0.5, 0.0, 0.0, 1.0, 1.0, -0.5, 0.0, -0.75, -0.5, 1.0, 1.0, 0.25, 0.75, -0.25, -0.5, -1.0, -1.0, 1.0, -0.75, -0.75, 0.5, -0.75, 0.25, 0.75, 0.5, 0.5, 1.0, -1.0, 1.0, 0.5, 0.5, 1.0, -0.25, -0.25, -1.0, -0.5, 0.0, -0.75, 0.0, -0.5, 0.25, 0.5, 0.5, -1.0, 0.25, -0.25, 0.5, -0.75, 0.0, -0.75, ]);

    const adapter9 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance",
        label: "adapter9"
    });

    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });

    {
        const buffer = buffer501
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    console.log(navigator.gpu.getPreferredCanvasFormat());

    // await device50.queue.onSubmittedWorkDone();

    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    // await device50.queue.onSubmittedWorkDone();

    const bind_group_layout502 = device50.createBindGroupLayout({ 
        label: "bind_group_layout502",
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

    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    // await device50.queue.onSubmittedWorkDone();

    const buffer508 = device50.createBuffer({
        label: "buffer508",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });

    {
        const buffer = buffer501
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    {
        const buffer = buffer505
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    {
        const buffer = buffer502
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

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

    {
        const buffer = buffer505
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    {
        const buffer = buffer504
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    // await device50.queue.onSubmittedWorkDone();

    // await device50.queue.onSubmittedWorkDone();

    {
        const buffer = buffer504
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    {
        const buffer = buffer508
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    // await device50.queue.onSubmittedWorkDone();

    {
        const buffer = buffer504
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const buffer509 = device50.createBuffer({
        label: "buffer509",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });

    device50.destroy();

    const array6 = new Float32Array([0.75, 1.0, 1.0, 0.75, 1.0, -0.5, 0.0, 0.25, -0.75, -1.0, 0.75, 0.0, -0.75, -1.0, 0.75, 0.75, 1.0, 1.0, -1.0, 1.0, -0.75, 0.5, 0.25, -0.25, 0.0, 0.0, -0.75, -0.25, -0.5, 0.5, -1.0, -0.75, 1.0, -0.5, 1.0, -0.25, 1.0, -0.5, 0.0, 0.25, 0.5, 0.25, -0.5, 0.5, 0.25, 0.75, -0.5, 0.25, 0.25, 0.75, -0.5, 1.0, -0.75, -0.75, 0.25, 0.0, 0.25, -1.0, 0.5, -0.5, 0.0, -0.5, -0.25, -0.75, 0.25, -0.5, 0.75, 0.75, 0.0, 0.75, -0.5, -0.25, 0.0, -1.0, 1.0, 0.5, 0.25, 0.0, -1.0, -0.5, -1.0, 0.0, 1.0, -0.5, -1.0, -0.75, 1.0, -0.5, 0.75, 1.0, -1.0, 0.75, -1.0, 0.25, 0.75, -1.0, 0.25, 0.5, -1.0, -0.5, ]);

    const array7 = new Float32Array([0.0, -0.25, 1.0, 1.0, -0.25, -0.25, 0.0, -1.0, 0.75, 0.75, -0.25, 0.75, -0.25, 0.0, 0.5, -0.25, -0.25, 0.0, -0.5, 0.25, 0.75, 1.0, -0.75, -0.5, 0.75, -0.75, -0.75, 0.25, -0.5, 0.5, 0.75, 1.0, 1.0, -1.0, 0.25, 0.5, 0.0, 0.0, 1.0, 0.5, -0.5, 0.0, 1.0, 1.0, 0.25, -0.25, 0.5, -0.75, -1.0, -1.0, 0.0, -0.25, 0.75, -0.75, 0.5, 0.5, 0.0, -1.0, -0.75, 0.75, -1.0, -0.75, 1.0, -1.0, 0.5, -0.75, 0.75, 0.5, -0.75, 0.5, 1.0, 0.75, -0.25, 0.25, 0.25, 0.25, -0.75, 0.25, -0.75, -0.25, -1.0, -0.75, -0.5, 0.25, 0.0, 0.0, -0.25, -0.25, 0.0, 1.0, -0.5, 0.25, 0.5, 1.0, 1.0, -0.25, 0.0, 1.0, 0.25, 1.0, ]);

    console.log(navigator.gpu.getPreferredCanvasFormat());

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    console.log(navigator.gpu.getPreferredCanvasFormat());

    const device90 = await adapter9.requestDevice({ label: "device90" });

    const array8 = new Float32Array([-0.25, 0.5, 0.75, 1.0, -0.5, -0.5, -0.5, -0.75, -1.0, -1.0, 1.0, 1.0, -1.0, 1.0, -0.5, 0.5, 0.75, 0.5, -0.75, 0.5, 0.5, -1.0, 0.0, -0.5, -1.0, -0.25, -0.25, 0.75, -0.75, -0.5, -0.75, 1.0, -0.5, 0.75, -0.75, -1.0, 0.0, -0.25, -0.5, 0.25, 0.25, 0.0, -0.5, -0.75, 1.0, -1.0, -0.75, 0.25, -0.5, -0.25, -0.75, 0.0, -0.5, -0.75, -0.25, -0.5, -0.75, 1.0, 0.75, 0.0, -0.25, -1.0, 0.25, 0.5, 0.25, 0.0, 0.5, -1.0, 0.0, -0.25, -0.25, 0.25, 0.75, 1.0, -1.0, 0.75, 0.5, 1.0, 0.5, -0.5, 0.5, 0.25, 0.25, -0.5, 0.25, 0.25, 0.0, -0.25, -0.5, -0.5, 0.75, -0.75, 0.25, 0.25, -0.5, 0.5, -0.25, -0.25, 0.0, -1.0, ]);

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    console.log(device90.features.size);

    for (const value of device90.features.keys()) {
        console.log(value);
    }

    console.log(device90.limits.size);

    for (const [key, value] of Object.entries(device90.limits)) {
        console.log(key);
        console.log(value);
    }

    device90.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    // await device90.queue.onSubmittedWorkDone();

    console.log(navigator.gpu.getPreferredCanvasFormat());

    console.log(navigator.gpu.getPreferredCanvasFormat());

    const sampler900 = device90.createSampler( { label: "sampler900" } );

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    device90.destroy();

    const array9 = new Float32Array([-0.25, -1.0, -1.0, -0.5, 0.5, 0.25, -0.75, 0.5, -0.5, 0.0, 0.25, -1.0, -0.5, -0.75, 0.0, 0.75, 1.0, -0.75, -0.25, 0.25, -0.5, 1.0, 0.75, 0.75, -1.0, 0.5, 0.75, 1.0, 0.25, -0.75, 0.0, -0.25, 0.0, 0.5, -0.25, -1.0, 0.75, 0.5, -0.5, -0.75, 0.25, 0.25, -0.5, 1.0, -1.0, 0.75, -0.75, -0.75, -0.75, 0.5, 0.25, 0.5, 0.0, 0.25, -0.25, -0.25, 1.0, -0.75, 1.0, 0.5, -0.5, -0.75, -0.75, -1.0, 0.5, 0.0, -0.25, 0.25, -0.25, 0.5, 0.0, 0.5, 0.5, 0.25, 1.0, -0.75, 0.0, 0.0, 0.75, 0.0, 0.0, 0.0, 0.75, 0.25, 0.0, 0.75, -0.5, -0.75, 0.0, 1.0, 0.5, -0.75, 0.0, 0.75, 0.25, -0.5, 0.0, 0.5, 0.5, -0.75, ]);

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    const adapter10 = await navigator.gpu.requestAdapter({
        powerPreference: undefined,
        label: "adapter10"
    });

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    const array10 = new Float32Array([0.5, 0.5, 0.0, 0.75, -0.5, 0.0, -0.75, 0.75, -1.0, -0.75, 0.5, -0.5, 0.75, -1.0, -0.25, 0.5, 0.0, 0.0, -1.0, -1.0, -0.25, 0.25, -0.75, -1.0, 0.25, 0.0, 0.0, 0.0, 0.5, -0.5, -0.5, 0.0, 0.75, 0.5, -0.25, -1.0, -1.0, 0.0, -0.75, 0.0, 0.75, 1.0, 0.25, 1.0, -0.25, 0.75, -0.5, -0.75, 0.75, 0.0, 0.25, 0.0, -0.75, -1.0, -0.25, -0.75, -1.0, 0.0, 0.0, 0.0, 0.5, 0.75, 0.5, 0.5, 0.5, 0.5, -0.25, 0.0, 1.0, 0.5, 0.0, -0.25, -0.5, -0.25, -0.25, 0.0, -1.0, 1.0, 0.0, -1.0, -0.5, 0.75, 1.0, 0.75, 0.25, 0.5, 0.25, -0.75, 0.25, 0.25, 0.0, -0.5, 0.25, -0.5, -0.5, 0.0, 0.75, 0.75, -0.25, 1.0, ]);

    const array11 = new Float32Array([0.25, -0.75, -0.75, -0.25, -0.75, -0.25, 0.25, -0.5, -0.75, 0.5, -0.5, -1.0, 0.75, 0.75, -0.5, -0.75, -0.75, 0.75, 0.0, -0.25, 0.75, -0.5, -0.25, 0.25, 1.0, 0.5, 0.75, -0.5, -0.25, -1.0, 1.0, 1.0, -0.75, 1.0, -0.5, 0.0, -0.25, -0.5, 0.0, -0.5, 0.0, -0.75, -0.75, -0.25, 0.5, 0.0, 0.75, 0.75, -0.25, -1.0, 0.5, 0.75, -0.5, 1.0, -0.75, 1.0, -1.0, 0.0, 0.75, -0.5, 0.75, 0.25, 0.0, 0.75, 0.25, -0.75, 0.25, 1.0, -0.25, 0.0, 0.5, -0.75, -0.75, 0.25, 1.0, -0.25, 0.75, -1.0, -0.75, 0.5, -1.0, 0.75, 0.0, 0.25, 0.0, -0.5, 0.5, 0.75, 0.0, 0.5, -0.5, 0.0, -0.75, 0.0, 0.25, -0.75, 0.0, 0.75, 0.25, 0.5, ]);

    console.log(navigator.gpu.getPreferredCanvasFormat());

    const array12 = new Float32Array([0.25, -1.0, -1.0, 0.0, -0.5, -0.25, 1.0, -0.75, -1.0, 0.75, 0.5, 0.0, 0.75, 0.5, 0.5, 0.75, -0.5, 0.75, 1.0, 1.0, -0.75, -1.0, 0.75, 0.5, -0.75, 0.0, -0.25, 0.25, 0.0, 0.75, -0.5, 1.0, -1.0, 0.0, 0.5, 0.5, -0.5, 0.75, -1.0, -0.75, -0.25, 1.0, 1.0, 0.25, 0.0, 1.0, -0.5, -0.25, -0.5, 0.0, -0.25, -1.0, 0.75, 0.0, -0.75, 0.0, -0.5, 0.75, 1.0, 0.25, 0.75, -1.0, -0.25, 0.5, -0.75, -0.25, 0.75, -0.5, -1.0, 0.5, 0.75, -0.25, 0.0, -0.5, 1.0, -0.5, -0.25, 0.0, -1.0, 1.0, 0.75, 0.25, 0.75, -0.25, 0.0, -0.5, -0.75, 0.25, 1.0, -0.25, -1.0, 1.0, 0.75, 0.25, 0.5, -0.25, 0.5, 0.5, 0.5, -0.5, ]);

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    console.log(navigator.gpu.getPreferredCanvasFormat());

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    const device100 = await adapter10.requestDevice({ label: "device100" });

    const adapter11 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance",
        label: "adapter11"
    });

    const adapter12 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power",
        label: "adapter12"
    });

    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });

    const buffer1001 = device100.createBuffer({
        label: "buffer1001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });

    device100.pushErrorScope("validation");

    // await device100.queue.onSubmittedWorkDone();

    const sampler1000 = device100.createSampler( { label: "sampler1000" } );

    const sampler1001 = device100.createSampler( { label: "sampler1001" } );

    {
        const buffer = buffer1001
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const array13 = new Float32Array([-0.25, -0.5, -0.5, -0.5, 0.75, -1.0, 0.75, 0.0, -0.5, 0.25, -1.0, 0.5, 1.0, 1.0, 0.0, -0.75, 0.0, -1.0, -0.25, 1.0, -0.75, -1.0, -0.25, 0.0, 0.0, -0.25, -0.25, 0.75, -0.25, -0.25, 0.25, -0.75, 0.5, -1.0, -0.75, 0.5, 0.25, -0.75, -0.5, 0.0, 0.25, -0.75, -0.75, -0.25, 0.5, -0.25, -1.0, 1.0, 0.25, 0.5, 0.0, 0.0, -0.25, 0.25, 1.0, -1.0, 0.25, 0.75, 1.0, 0.0, 0.75, -0.5, 1.0, 1.0, 0.25, 0.75, -0.75, 1.0, 0.5, 0.25, -0.5, 0.75, -0.75, -0.25, 0.0, 0.75, -0.25, 0.75, -1.0, 0.5, 0.75, 1.0, 1.0, 1.0, -0.5, -0.25, -0.75, -1.0, 0.25, -1.0, 0.0, 0.0, 0.0, 1.0, 0.5, -0.5, 0.0, -0.25, -1.0, 0.75, ]);

    const adapter13 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance",
        label: "adapter13"
    });

    console.log(navigator.gpu.getPreferredCanvasFormat());

    console.log(navigator.gpu.getPreferredCanvasFormat());

    {
        const buffer = buffer1000
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    {
        const buffer = buffer1001
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    console.log(device100.features.size);

    for (const value of device100.features.keys()) {
        console.log(value);
    }

    console.log(device100.limits.size);

    for (const [key, value] of Object.entries(device100.limits)) {
        console.log(key);
        console.log(value);
    }

    device100.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    console.log(navigator.gpu.getPreferredCanvasFormat());

    {
        const buffer = buffer1000
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    const device130 = await adapter13.requestDevice({ label: "device130" });

    console.log(device130.features.size);

    for (const value of device130.features.keys()) {
        console.log(value);
    }

    console.log(device130.limits.size);

    for (const [key, value] of Object.entries(device130.limits)) {
        console.log(key);
        console.log(value);
    }

    device130.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    {
        const buffer = buffer1001
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const sampler1300 = device130.createSampler( { label: "sampler1300" } );

    // await device130.queue.onSubmittedWorkDone();

    device100.pushErrorScope("validation");

    const sampler1301 = device130.createSampler( { label: "sampler1301" } );

    // await device130.queue.onSubmittedWorkDone();

    device130.pushErrorScope("out-of-memory");

    device130.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    // await device100.queue.onSubmittedWorkDone();

    console.log(device100.features.size);

    for (const value of device100.features.keys()) {
        console.log(value);
    }

    console.log(device100.limits.size);

    for (const [key, value] of Object.entries(device100.limits)) {
        console.log(key);
        console.log(value);
    }

    device100.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    const array14 = new Float32Array([-0.5, -0.25, -0.5, 0.0, 0.5, -0.25, -1.0, 1.0, -1.0, -0.5, 1.0, 0.25, 1.0, -0.5, 0.25, 0.5, -1.0, 0.5, -1.0, 1.0, -0.5, -0.75, -0.5, -0.25, 0.0, -0.5, -0.5, -0.75, -1.0, 0.25, -0.25, 0.0, 1.0, 0.75, 0.5, -0.25, -0.5, 0.25, 1.0, 0.25, -0.25, -1.0, 1.0, 0.25, 0.75, -1.0, -0.75, 0.25, -0.5, -0.25, -1.0, -1.0, 0.25, 1.0, -0.25, 0.5, 0.75, 0.25, -0.5, 0.5, 1.0, -0.75, -0.25, 0.0, 1.0, -0.25, -0.25, 0.25, 1.0, -0.5, 0.25, 0.5, 0.0, 1.0, -0.75, 0.5, 1.0, -0.25, -0.75, 0.0, 0.0, -0.25, -1.0, -0.75, -0.75, -0.5, -0.5, -0.5, 0.5, -0.5, -0.75, 1.0, 0.5, 0.75, 0.0, -0.25, 0.0, -0.75, 0.5, 0.75, ]);

    const array15 = new Float32Array([0.25, 1.0, 0.0, 1.0, -1.0, -1.0, 0.0, 0.5, -1.0, -0.75, -0.5, -0.5, -0.75, -0.25, -1.0, 0.75, -0.5, -0.75, 0.75, -0.75, -0.75, 0.25, 0.75, -0.25, 0.0, 0.0, -0.75, -0.5, -1.0, -0.75, -0.75, -1.0, -0.5, -0.5, -0.5, -0.75, 0.5, 0.5, -0.5, -0.75, 0.5, -0.75, -0.5, -0.5, -0.25, 0.25, -0.5, -0.5, 0.5, -0.5, 1.0, -0.75, -0.5, -1.0, 0.25, 0.25, 0.0, 1.0, 0.75, 0.25, -0.75, -1.0, 1.0, 0.5, 1.0, -0.75, -0.75, -1.0, -0.25, -0.5, 1.0, -0.75, 0.25, 0.0, -0.25, 0.5, -0.75, 0.0, 0.0, -0.75, -0.75, 1.0, -0.75, -1.0, -0.25, 0.25, -0.5, -0.5, 1.0, 0.0, 0.5, -0.25, 0.75, -0.5, -0.75, 0.5, -0.25, 0.0, -0.75, -0.5, ]);

    console.log(device130.features.size);

    for (const value of device130.features.keys()) {
        console.log(value);
    }

    console.log(device130.limits.size);

    for (const [key, value] of Object.entries(device130.limits)) {
        console.log(key);
        console.log(value);
    }

    device130.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    const device110 = await adapter11.requestDevice({ label: "device110" });

    {
        const buffer = buffer1000
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const sampler1002 = device100.createSampler( { label: "sampler1002" } );

    device130.destroy();

    device110.destroy();

    console.log(device100.features.size);

    for (const value of device100.features.keys()) {
        console.log(value);
    }

    console.log(device100.limits.size);

    for (const [key, value] of Object.entries(device100.limits)) {
        console.log(key);
        console.log(value);
    }

    device100.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    {
        const buffer = buffer1001
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const array16 = new Float32Array([-0.25, 0.0, 0.5, -1.0, 0.25, -0.5, 0.5, 0.0, -1.0, -1.0, 0.25, 0.75, 0.0, -0.75, -0.25, 0.5, 0.5, 0.5, -0.25, -0.25, 0.25, -1.0, 0.25, -0.75, -1.0, 0.5, 0.25, -0.5, 0.25, 0.25, 0.5, 0.25, -0.75, -1.0, 0.5, 1.0, -0.25, -0.75, 0.25, 1.0, -0.25, -0.75, -1.0, 0.5, 1.0, -0.75, -0.25, -0.25, -1.0, 0.25, 0.25, -0.25, -0.25, 0.0, 0.75, 0.25, -1.0, 0.5, 0.0, -0.75, 0.0, 0.25, 1.0, 0.0, -0.25, 0.25, -0.25, -0.75, -0.25, -1.0, 1.0, 1.0, -0.75, 0.5, -0.25, 0.75, 0.75, -0.25, -0.25, -0.75, 0.25, 0.25, -0.75, 0.25, -0.75, -0.5, 1.0, -0.25, 0.25, -1.0, -0.25, 0.0, 0.75, -0.25, -0.5, -0.25, 1.0, -0.75, -0.75, 0.5, ]);

    {
        const buffer = buffer1000
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    console.log(device100.features.size);

    for (const value of device100.features.keys()) {
        console.log(value);
    }

    console.log(device100.limits.size);

    for (const [key, value] of Object.entries(device100.limits)) {
        console.log(key);
        console.log(value);
    }

    device100.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    console.log(device100.features.size);

    for (const value of device100.features.keys()) {
        console.log(value);
    }

    console.log(device100.limits.size);

    for (const [key, value] of Object.entries(device100.limits)) {
        console.log(key);
        console.log(value);
    }

    device100.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    const device120 = await adapter12.requestDevice({ label: "device120" });

    console.log(device120.features.size);

    for (const value of device120.features.keys()) {
        console.log(value);
    }

    console.log(device120.limits.size);

    for (const [key, value] of Object.entries(device120.limits)) {
        console.log(key);
        console.log(value);
    }

    device120.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    const bind_group_layout1000 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1000",
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

    // await device100.queue.onSubmittedWorkDone();

    console.log(device100.features.size);

    for (const value of device100.features.keys()) {
        console.log(value);
    }

    console.log(device100.limits.size);

    for (const [key, value] of Object.entries(device100.limits)) {
        console.log(key);
        console.log(value);
    }

    device100.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    const bind_group_layout1200 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1200",
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

    // await device100.queue.onSubmittedWorkDone();

    device100.pushErrorScope("out-of-memory");

    {
        const buffer = buffer1000
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    // await device100.queue.onSubmittedWorkDone();

    const sampler1003 = device100.createSampler( { label: "sampler1003" } );

    const bind_group_layout1201 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1201",
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

    const bind_group_layout1001 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1001",
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

    console.log(device120.features.size);

    for (const value of device120.features.keys()) {
        console.log(value);
    }

    console.log(device120.limits.size);

    for (const [key, value] of Object.entries(device120.limits)) {
        console.log(key);
        console.log(value);
    }

    device120.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    const adapter14 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance",
        label: "adapter14"
    });

    console.log(device100.features.size);

    for (const value of device100.features.keys()) {
        console.log(value);
    }

    console.log(device100.limits.size);

    for (const [key, value] of Object.entries(device100.limits)) {
        console.log(key);
        console.log(value);
    }

    device100.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    device120.destroy();

    const sampler1004 = device100.createSampler( { label: "sampler1004" } );

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    const bind_group_layout1002 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1002",
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

    const sampler1005 = device100.createSampler( { label: "sampler1005" } );

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    const array17 = new Float32Array([0.0, 0.25, 0.0, 1.0, 0.0, 0.0, 1.0, -1.0, 1.0, 0.75, -0.25, 0.25, 0.75, 0.25, 0.25, -1.0, 1.0, 0.0, 1.0, 1.0, 0.5, 0.25, 0.25, 1.0, 0.5, 0.5, 1.0, 0.25, 0.0, 0.75, 0.0, -1.0, -0.75, -0.25, 0.75, 0.25, -0.75, -0.25, 0.0, 0.0, -0.25, 0.75, 0.5, -0.25, -0.25, -0.75, 0.5, 0.75, -0.75, 0.75, -1.0, -1.0, 0.75, 0.0, 0.75, -0.75, 0.5, 1.0, 1.0, -1.0, 1.0, -0.25, 0.5, -1.0, -1.0, -1.0, 0.25, -0.5, 0.0, 0.5, -0.5, -0.5, -0.25, 0.25, 0.5, -0.25, 0.5, 0.75, 1.0, -0.5, -0.5, 0.0, 0.75, 0.75, 0.5, 1.0, 0.25, 0.5, -0.25, 0.75, -0.75, 0.75, -0.5, -0.5, -0.25, 1.0, 1.0, -1.0, -1.0, -0.25, ]);

    const bind_group_layout1003 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1003",
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

    const bind_group_layout1004 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1004",
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

    const buffer1002 = device100.createBuffer({
        label: "buffer1002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    {
        const buffer = buffer1001
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    {
        const buffer = buffer1000
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    console.log(device100.features.size);

    for (const value of device100.features.keys()) {
        console.log(value);
    }

    console.log(device100.limits.size);

    for (const [key, value] of Object.entries(device100.limits)) {
        console.log(key);
        console.log(value);
    }

    device100.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    {
        const buffer = buffer1000
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    // await device100.queue.onSubmittedWorkDone();

    // await device100.queue.onSubmittedWorkDone();

    {
        const buffer = buffer1001
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const array18 = new Float32Array([-0.75, 1.0, 0.25, -0.25, 0.25, 0.25, 0.0, 1.0, -0.5, 0.5, 0.75, -0.25, -0.75, -1.0, 0.25, -0.5, -0.25, -0.25, 0.5, -1.0, 0.75, -1.0, -0.75, 1.0, -0.75, 1.0, -0.25, -0.5, -0.25, -1.0, -0.5, -0.5, 0.75, 1.0, -0.25, 0.5, -0.25, 0.0, 0.25, 1.0, 1.0, -0.5, -0.25, 0.25, 0.25, -0.25, 0.0, 0.5, 0.75, 0.0, 0.75, 0.0, -0.25, -0.75, 0.25, 1.0, 0.5, 0.5, 0.25, 0.0, -0.25, -0.75, -0.5, 0.5, 0.5, 0.25, -1.0, 0.0, -1.0, -0.75, 0.25, 0.25, 0.75, 0.25, -0.25, -0.5, -0.25, -1.0, 0.25, 1.0, 0.25, -0.5, 0.25, 0.0, 0.0, -0.75, 0.0, -0.75, -0.75, -1.0, -1.0, 0.25, 0.0, 1.0, 0.75, -0.75, 1.0, 0.25, 0.0, -0.5, ]);

    {
        const buffer = buffer1002
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    {
        const buffer = buffer1000
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    {
        const buffer = buffer1001
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    const sampler1006 = device100.createSampler( { label: "sampler1006" } );

    const bind_group_layout1005 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1005",
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

    const array19 = new Float32Array([0.5, 0.75, -0.75, -0.75, -1.0, 0.0, 0.5, -0.5, -0.75, -0.75, 0.0, -0.75, -1.0, -1.0, -1.0, 0.0, 0.25, 0.5, 1.0, -0.25, 0.75, -0.5, -0.25, 1.0, -1.0, 1.0, 0.0, -1.0, -0.5, 0.5, -0.25, 0.75, 0.25, 0.25, 0.25, -0.25, -1.0, 0.25, 1.0, 0.0, 0.0, -1.0, -0.25, -1.0, 0.75, 1.0, 0.5, 0.25, 0.75, 0.25, 1.0, 0.0, 1.0, -0.25, -0.25, 1.0, 1.0, -1.0, -0.25, -0.5, 0.0, 0.25, -0.75, 1.0, -1.0, 0.25, 0.75, -0.5, -1.0, 1.0, 1.0, -0.75, -0.75, 0.75, 0.25, -1.0, -0.25, -0.5, -0.5, 0.75, 0.75, 0.0, 0.25, -0.25, 0.25, -1.0, 0.0, -0.25, 0.5, 0.25, 0.5, -0.75, 0.5, 1.0, 0.5, 0.5, -0.75, 0.25, 0.75, 0.0, ]);

    const adapter15 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance",
        label: "adapter15"
    });

    const array20 = new Float32Array([0.25, 0.75, 0.75, 0.5, -1.0, 0.0, 0.5, 0.25, 0.75, 0.0, 0.5, 0.25, -0.75, 0.25, 0.5, -0.25, 0.25, 1.0, 0.5, 0.25, 0.5, -0.75, 0.75, 1.0, 0.75, -1.0, -0.5, 0.75, -1.0, 0.75, 0.75, 1.0, -0.25, 0.75, -0.25, -0.75, 0.25, 0.75, 0.5, -0.25, -0.5, -1.0, -0.5, 0.75, 0.0, -0.25, -0.25, 1.0, 0.25, -1.0, 0.25, 1.0, 0.0, -1.0, -1.0, 0.0, 0.5, 1.0, 0.5, 0.25, -0.75, 0.25, -0.5, 0.25, 1.0, 0.75, 0.0, 0.0, 1.0, 0.75, 0.0, 1.0, 0.5, 0.25, -0.5, -0.25, -0.75, -0.25, 0.0, -0.75, -0.5, -0.5, 0.75, -1.0, -0.5, -0.25, -0.5, 0.75, 0.75, 0.5, 0.25, -1.0, 0.0, -1.0, -0.25, 0.25, -1.0, 0.25, 0.0, -0.25, ]);

    const device140 = await adapter14.requestDevice({ label: "device140" });

    const buffer1400 = device140.createBuffer({
        label: "buffer1400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });

    device140.destroy();

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    {
        const buffer = buffer1001
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const buffer1003 = device100.createBuffer({
        label: "buffer1003",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });

    console.log(device100.features.size);

    for (const value of device100.features.keys()) {
        console.log(value);
    }

    console.log(device100.limits.size);

    for (const [key, value] of Object.entries(device100.limits)) {
        console.log(key);
        console.log(value);
    }

    device100.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    // await device100.queue.onSubmittedWorkDone();

    {
        const buffer = buffer1000
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    console.log(device100.features.size);

    for (const value of device100.features.keys()) {
        console.log(value);
    }

    console.log(device100.limits.size);

    for (const [key, value] of Object.entries(device100.limits)) {
        console.log(key);
        console.log(value);
    }

    device100.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    // await device100.queue.onSubmittedWorkDone();

    const sampler1007 = device100.createSampler( { label: "sampler1007" } );

    const bind_group_layout1006 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1006",
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

    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    {
        const buffer = buffer1003
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    device100.destroy();

    console.log(navigator.gpu.getPreferredCanvasFormat());

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    const adapter16 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance",
        label: "adapter16"
    });

    const device150 = await adapter15.requestDevice({ label: "device150" });

    const buffer1500 = device150.createBuffer({
        label: "buffer1500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });

    const array21 = new Float32Array([-0.75, 0.25, 0.0, -0.5, 1.0, 0.0, -0.25, -0.25, 0.75, -1.0, 0.5, 1.0, -0.5, -0.25, 0.75, -0.75, -1.0, 1.0, 0.25, -1.0, 1.0, 0.25, -1.0, 1.0, -0.25, -0.75, 0.25, 0.75, -1.0, -0.25, -0.75, 0.75, 0.75, -0.5, -0.5, 0.5, 0.25, 1.0, -1.0, 0.0, -1.0, 0.75, 0.75, 0.25, 0.5, 0.75, 0.0, 0.25, 0.5, 0.75, -1.0, 0.0, -1.0, 0.0, 0.75, 0.75, 0.25, -0.5, -0.25, 0.25, 0.5, 0.75, -0.5, -0.5, 0.75, -0.5, -0.25, 0.5, 0.25, 0.75, 0.0, -0.75, -1.0, -0.25, 0.5, 0.25, 0.0, -0.5, -0.5, 0.75, 0.75, -0.5, 0.75, 0.25, 0.5, 0.25, 0.0, -0.5, 0.0, -0.25, 0.75, -1.0, 0.5, 0.75, -0.25, 0.75, -0.25, -1.0, 0.25, 0.25, ]);

    device150.destroy();

    const adapter17 = await navigator.gpu.requestAdapter({
        powerPreference: undefined,
        label: "adapter17"
    });

    const array22 = new Float32Array([-0.25, -0.25, 1.0, 0.25, 0.75, -0.25, -0.75, -1.0, 0.75, 0.5, 0.25, -1.0, 0.25, 0.5, -0.5, 0.5, 0.0, 0.25, -1.0, -1.0, 0.75, 0.5, -1.0, 0.75, -1.0, -0.75, -0.5, 0.5, 0.75, 0.75, 0.0, 0.5, -0.25, -0.75, 0.5, -0.5, -1.0, -0.75, -0.75, 0.75, -0.25, 0.5, 0.25, 0.75, -0.75, 0.5, 0.75, -1.0, -1.0, 0.75, 0.5, -1.0, -0.75, 0.0, -1.0, -0.25, 0.0, 1.0, -1.0, 1.0, 0.0, -1.0, 1.0, 0.25, -0.75, 1.0, -0.5, -0.25, -0.75, 0.75, 0.25, 1.0, -0.75, -1.0, 0.25, 0.0, 0.25, 0.0, -0.5, -0.25, -1.0, 0.0, -0.5, 0.5, 0.5, -1.0, 0.25, 0.25, 0.75, -1.0, -0.25, 1.0, 0.0, -0.5, 0.25, -1.0, 0.5, 0.5, 0.5, 0.25, ]);

    const device170 = await adapter17.requestDevice({ label: "device170" });

    const array23 = new Float32Array([-1.0, 0.5, 0.0, 0.5, -1.0, -0.25, 0.25, 0.0, -1.0, -0.5, -1.0, -1.0, -0.5, 0.75, -0.75, 0.5, 0.5, 0.25, 0.5, 0.5, 0.0, 0.0, 1.0, -1.0, 1.0, -0.75, -0.5, 0.75, 0.5, 0.25, -1.0, -0.75, -0.25, 1.0, -0.75, -0.5, 0.5, 0.75, 0.0, 0.75, 1.0, 0.5, -1.0, 0.25, 0.75, 0.25, 0.5, 0.75, -0.25, 0.0, -0.25, 0.25, -0.5, -0.75, -1.0, -0.75, 0.25, 0.75, 1.0, 0.25, -0.75, -1.0, 0.5, -0.5, -0.5, 0.25, 0.75, 0.5, 1.0, 0.0, -0.75, -1.0, -1.0, 0.75, -0.5, 0.75, 1.0, 1.0, 0.5, 0.25, -0.25, -0.5, 0.5, -0.5, 0.5, -0.5, -0.75, 0.5, 0.75, -0.25, 0.75, -0.5, -0.5, -0.75, -0.5, -0.25, -0.75, -0.25, 1.0, -1.0, ]);

    console.log(navigator.gpu.getPreferredCanvasFormat());

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    const sampler1700 = device170.createSampler( { label: "sampler1700" } );

    const array24 = new Float32Array([-0.5, 0.25, 1.0, 0.0, 0.25, 1.0, 0.25, 0.75, 1.0, -1.0, -0.5, 0.25, -0.25, 1.0, 1.0, 0.0, 0.25, -0.5, -0.75, -0.75, 0.5, -0.75, 0.5, 0.75, -0.5, 1.0, -0.5, -0.25, -0.25, 0.0, 0.0, 0.75, -0.75, -1.0, 1.0, -0.25, -1.0, -1.0, -0.75, 1.0, -0.5, 0.5, 1.0, 0.25, -0.5, 0.75, -0.5, 0.75, 0.75, 0.75, 1.0, -1.0, -1.0, 0.75, 0.75, 0.0, -0.75, -1.0, 1.0, 0.0, -0.5, -0.75, 0.5, -1.0, 0.0, 0.75, 0.75, 0.75, 0.75, -0.75, -0.25, -0.5, 0.25, 0.25, -0.25, 0.5, 0.0, -0.5, 0.75, -0.25, -1.0, -0.25, 0.25, 0.25, -0.25, 1.0, -0.75, 0.5, 0.75, 0.25, 0.25, -1.0, 0.0, -0.25, -0.25, 0.5, 0.75, -0.25, -0.5, -0.75, ]);

    const bind_group_layout1700 = device170.createBindGroupLayout({ 
        label: "bind_group_layout1700",
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

    console.log(navigator.gpu.getPreferredCanvasFormat());

    device170.destroy();

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    const array25 = new Float32Array([-1.0, 1.0, -0.25, 0.25, -0.25, 0.0, 1.0, 0.75, 0.0, 0.75, -1.0, 0.75, 1.0, 1.0, 0.5, 0.25, 0.75, -1.0, 1.0, -1.0, 0.5, -1.0, 0.0, 0.75, -0.5, -0.75, 0.25, -0.25, 0.5, 0.75, 0.0, -1.0, 0.75, -1.0, 0.75, -0.5, 0.0, 0.75, 0.0, 0.75, 0.75, 0.0, 0.0, -0.5, 0.25, 0.5, 0.75, 0.0, 1.0, -0.5, -1.0, -0.5, 0.0, -0.5, 0.5, 0.75, 1.0, -0.75, -0.75, 1.0, 0.25, -0.5, 0.25, -0.5, 0.0, 0.25, 0.25, -0.5, 0.75, 0.25, -0.5, 0.0, 0.25, -0.25, 1.0, 0.75, 0.5, -1.0, 0.0, -0.75, -1.0, 0.25, 0.5, 1.0, 0.5, -0.25, -0.5, 0.25, 1.0, 0.5, 0.5, -0.75, 0.0, -0.5, -0.25, 0.0, 0.75, -1.0, 0.25, -0.5, ]);

    const adapter18 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance",
        label: "adapter18"
    });

    console.log(navigator.gpu.getPreferredCanvasFormat());

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    const device180 = await adapter18.requestDevice({ label: "device180" });

    const array26 = new Float32Array([-0.5, 0.5, 0.75, -0.25, -1.0, -1.0, 0.25, 0.25, 0.0, 0.5, -1.0, -0.5, 1.0, -1.0, -0.25, -0.25, 0.5, 0.0, -0.25, -0.25, -0.5, -1.0, -1.0, -0.75, 0.5, 0.25, -0.5, -0.75, -0.5, 0.25, -1.0, 0.0, 0.0, -0.25, -0.5, 0.5, 1.0, -0.5, 0.25, -1.0, 0.0, -1.0, 0.25, 0.5, 0.5, -0.75, -0.75, 0.75, -0.5, 0.75, -0.75, -1.0, -0.5, 1.0, 0.25, 1.0, -0.25, 0.0, -0.25, 0.75, -0.5, -0.5, -0.25, 0.75, 1.0, 0.0, -1.0, -0.75, 0.5, 0.75, 0.0, 0.75, 1.0, 0.0, -0.75, -0.5, -1.0, 0.0, -1.0, -0.25, -1.0, 0.0, 0.0, 0.5, 0.25, -0.5, 0.75, 0.25, 0.5, -0.75, 0.75, 0.0, -0.75, 0.5, 0.75, -0.75, 0.5, 1.0, 0.75, 0.5, ]);

    console.log(device180.features.size);

    for (const value of device180.features.keys()) {
        console.log(value);
    }

    console.log(device180.limits.size);

    for (const [key, value] of Object.entries(device180.limits)) {
        console.log(key);
        console.log(value);
    }

    device180.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    const device160 = await adapter16.requestDevice({ label: "device160" });

    device160.pushErrorScope("out-of-memory");

    // await device160.queue.onSubmittedWorkDone();

    const adapter19 = await navigator.gpu.requestAdapter({
        powerPreference: undefined,
        label: "adapter19"
    });

    const bind_group_layout1800 = device180.createBindGroupLayout({ 
        label: "bind_group_layout1800",
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

    const device190 = await adapter19.requestDevice({ label: "device190" });

    console.log(device160.features.size);

    for (const value of device160.features.keys()) {
        console.log(value);
    }

    console.log(device160.limits.size);

    for (const [key, value] of Object.entries(device160.limits)) {
        console.log(key);
        console.log(value);
    }

    device160.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    // await device160.queue.onSubmittedWorkDone();

    const adapter20 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance",
        label: "adapter20"
    });

    device190.destroy();

    const buffer1800 = device180.createBuffer({
        label: "buffer1800",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    const bind_group_layout1600 = device160.createBindGroupLayout({ 
        label: "bind_group_layout1600",
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

    const device200 = await adapter20.requestDevice({ label: "device200" });

    const bind_group_layout2000 = device200.createBindGroupLayout({ 
        label: "bind_group_layout2000",
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

    console.log(device200.features.size);

    for (const value of device200.features.keys()) {
        console.log(value);
    }

    console.log(device200.limits.size);

    for (const [key, value] of Object.entries(device200.limits)) {
        console.log(key);
        console.log(value);
    }

    device200.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    const buffer2000 = device200.createBuffer({
        label: "buffer2000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });

    {
        const buffer = buffer2000
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    device200.pushErrorScope("internal");

    {
        const buffer = buffer1800
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const bind_group_layout1601 = device160.createBindGroupLayout({ 
        label: "bind_group_layout1601",
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

    // await device200.queue.onSubmittedWorkDone();

    const buffer2001 = device200.createBuffer({
        label: "buffer2001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });

    console.log(device180.features.size);

    for (const value of device180.features.keys()) {
        console.log(value);
    }

    console.log(device180.limits.size);

    for (const [key, value] of Object.entries(device180.limits)) {
        console.log(key);
        console.log(value);
    }

    device180.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    {
        const buffer = buffer2000
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    // await device160.queue.onSubmittedWorkDone();

    const sampler2000 = device200.createSampler( { label: "sampler2000" } );

    device160.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    {
        const buffer = buffer2001
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const bind_group_layout1602 = device160.createBindGroupLayout({ 
        label: "bind_group_layout1602",
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
        const buffer = buffer1800
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    device160.pushErrorScope("validation");

    device200.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    const array27 = new Float32Array([-1.0, 0.0, 0.75, 1.0, 0.75, -1.0, 0.25, 0.0, -1.0, -0.75, -0.75, 1.0, -0.25, 0.25, 0.75, 0.25, 1.0, -1.0, -0.5, -0.25, 0.25, 1.0, -0.5, -1.0, 0.75, -0.25, 0.75, 0.0, -0.25, -0.5, -0.5, 1.0, 0.75, 0.75, -0.25, -0.75, 1.0, -0.5, 0.0, -0.75, -0.25, -0.5, -1.0, -0.5, -0.5, 0.25, 0.75, -0.5, -0.25, -0.25, 1.0, -0.25, -1.0, -0.5, -0.5, -0.25, 0.5, 0.75, 1.0, 0.25, -0.25, 1.0, 0.5, -0.75, -0.25, -0.25, -0.5, 0.75, -0.75, 0.75, 0.5, 1.0, -1.0, -0.25, 0.75, 0.75, -0.25, 1.0, -0.25, 0.0, 0.0, -0.25, -0.5, -1.0, 0.75, 0.0, -0.25, 0.25, 0.5, 0.25, -1.0, 0.5, -1.0, -0.5, 0.5, 0.25, 0.25, 0.25, -0.5, 0.25, ]);

    // await device160.queue.onSubmittedWorkDone();

    {
        const buffer = buffer2001
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const bind_group_layout2001 = device200.createBindGroupLayout({ 
        label: "bind_group_layout2001",
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

    const sampler1800 = device180.createSampler( { label: "sampler1800" } );

    // await device160.queue.onSubmittedWorkDone();

    const buffer1600 = device160.createBuffer({
        label: "buffer1600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });

    console.log(device160.features.size);

    for (const value of device160.features.keys()) {
        console.log(value);
    }

    console.log(device160.limits.size);

    for (const [key, value] of Object.entries(device160.limits)) {
        console.log(key);
        console.log(value);
    }

    device160.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    const bind_group_layout1801 = device180.createBindGroupLayout({ 
        label: "bind_group_layout1801",
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

    const bind_group_layout1802 = device180.createBindGroupLayout({ 
        label: "bind_group_layout1802",
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

    device160.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    {
        const buffer = buffer1800
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    console.log(device180.features.size);

    for (const value of device180.features.keys()) {
        console.log(value);
    }

    console.log(device180.limits.size);

    for (const [key, value] of Object.entries(device180.limits)) {
        console.log(key);
        console.log(value);
    }

    device180.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    console.log(device200.features.size);

    for (const value of device200.features.keys()) {
        console.log(value);
    }

    console.log(device200.limits.size);

    for (const [key, value] of Object.entries(device200.limits)) {
        console.log(key);
        console.log(value);
    }

    device200.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    const buffer2002 = device200.createBuffer({
        label: "buffer2002",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });

    device160.destroy();

    device180.pushErrorScope("validation");

    const sampler1801 = device180.createSampler( { label: "sampler1801" } );

    {
        const buffer = buffer2000
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    device200.destroy();

    const array28 = new Float32Array([0.75, 0.25, 0.75, 0.25, -1.0, 0.25, -0.75, -0.75, -0.75, -0.75, -0.5, -0.75, 0.25, -1.0, -0.5, -1.0, 0.0, 0.25, 0.5, -0.25, -0.5, 1.0, -0.5, -0.25, 0.75, -0.25, 1.0, 0.5, -0.25, 0.0, -0.5, -0.75, 0.5, 0.0, 0.75, -0.25, -0.75, -0.5, -0.5, 0.0, -0.75, -0.25, -0.5, 0.25, -0.75, -0.5, 0.25, 0.5, 0.25, 0.75, -0.75, 0.75, 0.25, 0.75, -0.25, 0.5, -0.75, 0.0, -0.75, 0.75, -0.5, -0.75, 0.25, -0.5, 0.5, -0.75, -0.75, 0.25, -1.0, -0.5, 1.0, -0.25, 1.0, 1.0, 0.25, -0.75, -1.0, -0.25, 0.25, -0.5, 0.0, -0.25, -0.75, -1.0, 0.25, -0.25, 0.0, 0.75, 0.5, 0.25, -1.0, 1.0, 0.25, 0.5, -0.75, 0.0, -0.75, -0.75, -1.0, -0.5, ]);

    {
        const buffer = buffer1800
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    // await device180.queue.onSubmittedWorkDone();

    console.log(navigator.gpu.getPreferredCanvasFormat());

    {
        const buffer = buffer1800
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const adapter21 = await navigator.gpu.requestAdapter({
        powerPreference: undefined,
        label: "adapter21"
    });

    {
        const buffer = buffer1800
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    console.log(navigator.gpu.getPreferredCanvasFormat());

    console.log(device180.features.size);

    for (const value of device180.features.keys()) {
        console.log(value);
    }

    console.log(device180.limits.size);

    for (const [key, value] of Object.entries(device180.limits)) {
        console.log(key);
        console.log(value);
    }

    device180.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    console.log(navigator.gpu.getPreferredCanvasFormat());

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    const buffer1801 = device180.createBuffer({
        label: "buffer1801",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });

    const bind_group_layout1803 = device180.createBindGroupLayout({ 
        label: "bind_group_layout1803",
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
        const buffer = buffer1800
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const array29 = new Float32Array([-0.5, 0.25, -0.75, -0.5, 0.75, -0.5, -0.5, 0.75, -1.0, -0.75, 0.0, 0.0, -0.25, 0.75, 1.0, 0.75, -0.25, -1.0, -0.25, 0.0, -0.25, -1.0, 1.0, 1.0, 0.5, -0.25, -0.75, 1.0, 0.0, 0.5, -0.75, -0.25, 1.0, 0.5, 0.25, 0.75, -0.25, 0.25, -1.0, -1.0, 0.0, 0.75, -0.75, 0.75, 1.0, -1.0, 0.5, 0.0, 0.0, -1.0, 0.0, -0.5, -0.75, 0.0, -0.25, -0.5, -0.25, 0.75, 0.5, -1.0, 1.0, -1.0, -0.75, 0.25, 0.25, 0.75, 1.0, -0.25, 0.5, -1.0, -0.5, 0.0, 1.0, 1.0, 0.5, 0.0, 0.75, 0.75, -0.5, 0.25, 0.0, -0.75, -0.25, -0.25, 0.75, 0.0, -0.25, -1.0, 1.0, -0.75, -0.25, 0.0, -0.25, 0.0, 0.5, 0.25, -0.5, 0.0, -0.25, 0.0, ]);

    // await device180.queue.onSubmittedWorkDone();

    const bind_group_layout1804 = device180.createBindGroupLayout({ 
        label: "bind_group_layout1804",
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
        const buffer = buffer1801
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const array30 = new Float32Array([0.5, -0.5, 0.75, 0.0, 0.75, -0.75, 1.0, -0.25, 1.0, -0.5, -0.25, -0.75, -0.5, -0.75, 0.0, 0.5, 0.5, -0.25, 0.75, 0.0, -0.25, 0.5, 0.25, -0.5, -0.5, 1.0, 0.0, 0.25, -0.75, 0.25, 0.0, 0.5, 0.5, -0.25, -1.0, 0.0, 0.0, -0.5, 0.0, -0.25, -0.5, -1.0, 0.25, 0.0, 0.5, 0.75, 1.0, -0.25, -0.25, -0.25, -1.0, 0.0, -0.75, -0.5, -0.5, -1.0, 0.0, -0.25, 0.25, -0.5, -0.5, 0.75, -0.25, -1.0, -0.75, -0.75, 1.0, -0.25, 0.0, -0.5, 0.25, -0.25, -1.0, 0.0, 0.25, -0.75, 1.0, 0.0, -0.25, 0.75, -1.0, -0.25, -1.0, -0.75, -0.5, -1.0, 0.0, -0.75, 0.0, -1.0, 0.75, -0.75, 0.25, -0.75, -0.25, 0.0, 0.0, 0.25, -0.75, 0.25, ]);

    const sampler1802 = device180.createSampler( { label: "sampler1802" } );

    const bind_group_layout1805 = device180.createBindGroupLayout({ 
        label: "bind_group_layout1805",
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

    const bind_group_layout1806 = device180.createBindGroupLayout({ 
        label: "bind_group_layout1806",
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
        const buffer = buffer1800
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    console.log(navigator.gpu.getPreferredCanvasFormat());

    {
        const buffer = buffer1801
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const device210 = await adapter21.requestDevice({ label: "device210" });

    const adapter22 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance",
        label: "adapter22"
    });

    {
        const buffer = buffer1801
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const sampler1803 = device180.createSampler( { label: "sampler1803" } );

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    const bind_group_layout1807 = device180.createBindGroupLayout({ 
        label: "bind_group_layout1807",
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

    const buffer1802 = device180.createBuffer({
        label: "buffer1802",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });

    const buffer1803 = device180.createBuffer({
        label: "buffer1803",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });

    console.log(device210.features.size);

    for (const value of device210.features.keys()) {
        console.log(value);
    }

    console.log(device210.limits.size);

    for (const [key, value] of Object.entries(device210.limits)) {
        console.log(key);
        console.log(value);
    }

    device210.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    {
        const buffer = buffer1803
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const sampler2100 = device210.createSampler( { label: "sampler2100" } );

    const array31 = new Float32Array([-0.75, -0.75, 0.25, 0.0, 0.0, 0.75, 0.25, 0.0, 0.0, -0.25, 0.75, 0.25, -0.75, 1.0, 0.25, -0.75, 0.5, 0.75, -0.75, 0.0, 0.75, -1.0, 0.5, 1.0, 1.0, -1.0, 0.5, -0.25, 0.75, 0.75, -0.75, 1.0, 0.5, 0.25, 1.0, -1.0, 0.0, -0.5, 0.75, -0.75, -1.0, 0.5, -0.5, -0.75, 0.5, -1.0, 0.0, 0.75, -0.75, 0.5, -1.0, -0.25, 0.75, 1.0, 0.75, 0.75, -1.0, -0.25, -0.75, -0.75, 0.0, 0.75, -0.75, 0.5, 0.5, 0.25, 0.75, -0.75, -0.25, -1.0, -0.5, 1.0, 0.0, -0.25, -0.75, 0.0, -0.75, -0.25, -0.75, -0.25, -0.25, -0.75, 0.25, 0.0, -0.75, 0.75, -1.0, -0.25, 0.75, 0.5, -0.5, -0.75, -1.0, 1.0, 0.5, 0.75, 0.75, 1.0, -0.75, 0.5, ]);

    console.log(device180.features.size);

    for (const value of device180.features.keys()) {
        console.log(value);
    }

    console.log(device180.limits.size);

    for (const [key, value] of Object.entries(device180.limits)) {
        console.log(key);
        console.log(value);
    }

    device180.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    const device220 = await adapter22.requestDevice({ label: "device220" });

    {
        const buffer = buffer1800
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    device220.destroy();

    {
        const buffer = buffer1800
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const buffer1804 = device180.createBuffer({
        label: "buffer1804",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });

    // await device180.queue.onSubmittedWorkDone();

    const buffer1805 = device180.createBuffer({
        label: "buffer1805",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });

    // await device180.queue.onSubmittedWorkDone();

    {
        const buffer = buffer1804
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    console.log(device210.features.size);

    for (const value of device210.features.keys()) {
        console.log(value);
    }

    console.log(device210.limits.size);

    for (const [key, value] of Object.entries(device210.limits)) {
        console.log(key);
        console.log(value);
    }

    device210.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    device210.pushErrorScope("validation");

    const adapter23 = await navigator.gpu.requestAdapter({
        powerPreference: undefined,
        label: "adapter23"
    });

    {
        const buffer = buffer1800
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    // await device180.queue.onSubmittedWorkDone();

    console.log(device210.features.size);

    for (const value of device210.features.keys()) {
        console.log(value);
    }

    console.log(device210.limits.size);

    for (const [key, value] of Object.entries(device210.limits)) {
        console.log(key);
        console.log(value);
    }

    device210.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    const bind_group_layout1808 = device180.createBindGroupLayout({ 
        label: "bind_group_layout1808",
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

    const array32 = new Float32Array([-1.0, 1.0, 0.0, 1.0, -0.75, -0.5, -0.25, 0.5, -0.75, 0.5, 0.25, -1.0, 1.0, 0.75, -1.0, -0.75, 0.5, 1.0, 0.25, -0.25, -1.0, 0.75, 0.5, 0.5, 1.0, 0.5, 1.0, -1.0, -0.25, -0.5, 0.0, 0.0, -0.5, 0.25, -0.25, -0.25, -0.25, 0.25, 0.25, 0.25, 0.25, -1.0, -0.25, -1.0, 0.0, 0.5, -1.0, -0.25, -0.25, -0.5, -1.0, 0.0, 0.5, -0.75, 0.25, -0.5, 0.5, 0.5, 0.75, 0.75, 0.5, -1.0, 0.5, 0.0, -0.5, -1.0, 1.0, -0.5, 1.0, 1.0, 0.25, 0.25, -0.75, -1.0, -1.0, 0.25, -1.0, 0.25, -1.0, -0.25, 0.5, -0.25, 0.75, -0.75, 1.0, 0.75, 0.5, -0.5, 0.25, -0.75, 1.0, -0.75, -1.0, 1.0, 0.0, 0.25, 0.25, -0.75, -0.75, 0.25, ]);

    const bind_group_layout1809 = device180.createBindGroupLayout({ 
        label: "bind_group_layout1809",
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

    {
        const buffer = buffer1804
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    console.log(device180.features.size);

    for (const value of device180.features.keys()) {
        console.log(value);
    }

    console.log(device180.limits.size);

    for (const [key, value] of Object.entries(device180.limits)) {
        console.log(key);
        console.log(value);
    }

    device180.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    {
        const buffer = buffer1801
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    {
        const buffer = buffer1802
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    // await device180.queue.onSubmittedWorkDone();

    {
        const buffer = buffer1804
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    {
        const buffer = buffer1803
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    {
        const buffer = buffer1803
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    console.log(device180.features.size);

    for (const value of device180.features.keys()) {
        console.log(value);
    }

    console.log(device180.limits.size);

    for (const [key, value] of Object.entries(device180.limits)) {
        console.log(key);
        console.log(value);
    }

    device180.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    {
        const buffer = buffer1804
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    {
        const buffer = buffer1802
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const sampler2101 = device210.createSampler( { label: "sampler2101" } );

    {
        const buffer = buffer1803
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const array33 = new Float32Array([0.75, -1.0, 0.0, 0.75, 1.0, 1.0, 1.0, -0.25, 1.0, 0.25, -0.75, -0.75, 0.75, -1.0, 1.0, 1.0, -0.25, -0.75, -0.5, -1.0, 0.75, -0.25, -1.0, 0.0, -0.75, 1.0, 1.0, 0.0, -0.5, -0.25, -0.75, 0.25, 0.75, 0.0, 0.75, -0.75, -0.75, -1.0, 0.5, 0.5, 0.5, 0.75, 0.75, -0.25, 1.0, -0.5, -0.25, -0.75, 0.75, -1.0, -0.75, 0.5, -0.25, -1.0, -0.5, 0.25, -0.5, -0.5, -1.0, -1.0, 1.0, -0.25, -1.0, -0.5, 0.75, 1.0, -0.5, 0.25, 0.5, -0.25, -0.5, 0.5, 0.5, -0.5, 0.75, 0.75, 0.25, 1.0, -0.25, -0.75, 0.5, -0.5, -0.75, -0.25, -0.25, 0.75, -0.75, -0.5, 0.25, 0.25, -0.25, 0.25, 1.0, -0.75, 0.25, -0.75, 0.75, 0.5, -0.5, 0.25, ]);

    console.log(navigator.gpu.getPreferredCanvasFormat());

    const buffer2100 = device210.createBuffer({
        label: "buffer2100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });

    {
        const buffer = buffer1804
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    device210.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    const buffer1806 = device180.createBuffer({
        label: "buffer1806",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });

    {
        const buffer = buffer1803
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    {
        const buffer = buffer1806
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const buffer1807 = device180.createBuffer({
        label: "buffer1807",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });

    console.log(device210.features.size);

    for (const value of device210.features.keys()) {
        console.log(value);
    }

    console.log(device210.limits.size);

    for (const [key, value] of Object.entries(device210.limits)) {
        console.log(key);
        console.log(value);
    }

    device210.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    const array34 = new Float32Array([0.75, -1.0, 0.25, 0.0, -0.25, -0.25, 0.25, 0.75, -0.25, -0.75, 0.75, 0.0, 0.5, 1.0, -0.5, 0.5, -0.25, 0.0, 1.0, -1.0, -0.25, -0.5, 0.5, -0.75, 0.25, -0.25, 0.25, 0.0, 1.0, 0.75, -0.5, 1.0, 0.0, -0.75, -0.25, 0.25, -1.0, 0.75, -0.75, -0.25, -1.0, 0.0, 0.25, 0.5, -0.25, -0.75, -0.75, -1.0, 0.0, -0.75, 0.25, -0.5, -0.5, 0.5, -0.25, -0.25, -0.75, 0.0, 0.75, -0.75, -0.5, 0.25, 0.5, -0.5, -0.75, -1.0, 0.75, 1.0, 0.0, -0.25, 1.0, 0.25, 0.5, -1.0, 0.75, 0.75, -0.5, 0.25, 0.25, -0.75, 0.25, -0.25, 0.25, 0.0, 0.25, -0.25, 0.25, -0.5, -1.0, 0.75, 0.5, -0.5, -0.25, 0.25, 1.0, -0.5, 0.5, 0.0, 0.5, 1.0, ]);

    {
        const buffer = buffer1801
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const array35 = new Float32Array([-0.25, 0.75, 0.75, 0.75, 1.0, 0.5, 0.75, 0.5, -0.75, 0.5, 0.25, 0.25, 0.75, 0.75, 0.75, 0.75, 0.5, -0.5, 0.75, 0.5, 0.0, -1.0, 1.0, -0.75, 0.5, 0.5, -0.5, -0.25, -0.5, 0.0, 0.75, 0.0, -0.75, -0.75, -1.0, 0.5, -0.75, -0.75, -1.0, -0.75, 0.0, 0.25, -0.25, -0.5, -0.25, 0.0, -0.75, -0.75, 0.5, -0.5, -0.25, -1.0, -1.0, -0.25, 0.5, -1.0, -1.0, -0.75, 0.75, 0.75, -0.25, 0.0, 0.25, 0.5, -0.25, 0.75, 0.25, -0.75, 1.0, 0.75, -1.0, 0.25, 0.0, 0.0, 1.0, 1.0, -1.0, -0.75, 0.5, -0.25, 0.75, -1.0, -0.5, 0.0, -0.25, 1.0, 0.5, 0.5, 0.5, 1.0, -0.75, 0.5, -0.5, 0.25, 1.0, 0.25, -0.25, 0.25, -0.5, 0.25, ]);

    const buffer1808 = device180.createBuffer({
        label: "buffer1808",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });

    {
        const buffer = buffer2100
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    {
        const buffer = buffer1805
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const device230 = await adapter23.requestDevice({ label: "device230" });

    const sampler2300 = device230.createSampler( { label: "sampler2300" } );

    {
        const buffer = buffer1801
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    device180.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    device210.pushErrorScope("internal");

    // await device210.queue.onSubmittedWorkDone();

    const sampler1804 = device180.createSampler( { label: "sampler1804" } );

    const bind_group_layout2100 = device210.createBindGroupLayout({ 
        label: "bind_group_layout2100",
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

    console.log(device180.features.size);

    for (const value of device180.features.keys()) {
        console.log(value);
    }

    console.log(device180.limits.size);

    for (const [key, value] of Object.entries(device180.limits)) {
        console.log(key);
        console.log(value);
    }

    device180.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    console.log(device180.features.size);

    for (const value of device180.features.keys()) {
        console.log(value);
    }

    console.log(device180.limits.size);

    for (const [key, value] of Object.entries(device180.limits)) {
        console.log(key);
        console.log(value);
    }

    device180.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    // await device230.queue.onSubmittedWorkDone();

    device230.pushErrorScope("internal");

    const adapter24 = await navigator.gpu.requestAdapter({
        powerPreference: undefined,
        label: "adapter24"
    });

    const buffer2101 = device210.createBuffer({
        label: "buffer2101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });

    const bind_group_layout18010 = device180.createBindGroupLayout({ 
        label: "bind_group_layout18010",
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
        const buffer = buffer1808
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    device230.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    // await device210.queue.onSubmittedWorkDone();

    const bind_group_layout2300 = device230.createBindGroupLayout({ 
        label: "bind_group_layout2300",
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

    device210.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    console.log(navigator.gpu.getPreferredCanvasFormat());

    device180.pushErrorScope("internal");

    const array36 = new Float32Array([0.5, 1.0, -0.25, 1.0, -0.5, -0.5, -0.5, 1.0, 0.75, 0.75, -0.5, -0.75, 0.0, -0.25, 1.0, 0.5, -0.25, 0.0, 1.0, -0.5, 0.5, -0.25, -1.0, 1.0, -0.25, 1.0, 0.25, 0.75, 0.25, 0.0, 0.5, 0.5, 1.0, 0.75, 0.5, -0.75, -0.25, -0.75, 0.5, 0.0, -0.5, 0.5, -0.75, -0.5, 0.75, 0.25, -0.75, -0.75, -1.0, -0.75, 0.0, 0.75, -0.25, -0.5, -0.5, 0.75, 0.75, 0.75, -0.5, 0.75, -0.25, -0.25, -1.0, 0.75, -0.25, -0.25, -0.25, -1.0, 1.0, 0.25, 1.0, -0.75, 0.25, -0.25, -0.5, 0.5, 0.0, 0.0, -0.25, 0.5, -0.5, -0.75, -1.0, -0.5, -0.75, -0.75, -1.0, -0.25, 0.25, -0.75, 1.0, 0.0, 0.5, 1.0, -1.0, 0.5, -1.0, -1.0, 0.25, 0.5, ]);

    {
        const buffer = buffer1801
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    {
        const buffer = buffer2101
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    const device240 = await adapter24.requestDevice({ label: "device240" });

    console.log(device180.features.size);

    for (const value of device180.features.keys()) {
        console.log(value);
    }

    console.log(device180.limits.size);

    for (const [key, value] of Object.entries(device180.limits)) {
        console.log(key);
        console.log(value);
    }

    device180.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    {
        const buffer = buffer1801
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    console.log(device210.features.size);

    for (const value of device210.features.keys()) {
        console.log(value);
    }

    console.log(device210.limits.size);

    for (const [key, value] of Object.entries(device210.limits)) {
        console.log(key);
        console.log(value);
    }

    device210.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    device230.destroy();

    const sampler1805 = device180.createSampler( { label: "sampler1805" } );

    const bind_group_layout2101 = device210.createBindGroupLayout({ 
        label: "bind_group_layout2101",
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

    console.log(device240.features.size);

    for (const value of device240.features.keys()) {
        console.log(value);
    }

    console.log(device240.limits.size);

    for (const [key, value] of Object.entries(device240.limits)) {
        console.log(key);
        console.log(value);
    }

    device240.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    device240.pushErrorScope("internal");

    const sampler2400 = device240.createSampler( { label: "sampler2400" } );

    const sampler2401 = device240.createSampler( { label: "sampler2401" } );

    {
        const buffer = buffer1806
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    {
        const buffer = buffer2100
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    device240.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    const buffer2102 = device210.createBuffer({
        label: "buffer2102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });

    console.log(navigator.gpu.getPreferredCanvasFormat());

    device240.destroy();

    const sampler1806 = device180.createSampler( { label: "sampler1806" } );

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    console.log(navigator.gpu.getPreferredCanvasFormat());

    {
        const buffer = buffer1804
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    const bind_group_layout18011 = device180.createBindGroupLayout({ 
        label: "bind_group_layout18011",
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
        const buffer = buffer1801
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const sampler2102 = device210.createSampler( { label: "sampler2102" } );

    // await device210.queue.onSubmittedWorkDone();

    console.log(device180.features.size);

    for (const value of device180.features.keys()) {
        console.log(value);
    }

    console.log(device180.limits.size);

    for (const [key, value] of Object.entries(device180.limits)) {
        console.log(key);
        console.log(value);
    }

    device180.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    {
        const buffer = buffer1802
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    // await device210.queue.onSubmittedWorkDone();

    const bind_group_layout2102 = device210.createBindGroupLayout({ 
        label: "bind_group_layout2102",
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
        const buffer = buffer1808
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    {
        const buffer = buffer1800
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    {
        const buffer = buffer1801
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    {
        const buffer = buffer1801
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    {
        const buffer = buffer1802
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    console.log(device210.features.size);

    for (const value of device210.features.keys()) {
        console.log(value);
    }

    console.log(device210.limits.size);

    for (const [key, value] of Object.entries(device210.limits)) {
        console.log(key);
        console.log(value);
    }

    device210.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    console.log(navigator.gpu.getPreferredCanvasFormat());

    {
        const buffer = buffer2100
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    // await device210.queue.onSubmittedWorkDone();

    const sampler2103 = device210.createSampler( { label: "sampler2103" } );

    {
        const buffer = buffer1802
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const array37 = new Float32Array([-1.0, -0.25, -0.75, -0.25, -0.75, 0.25, -0.75, -0.75, 0.25, 0.0, 0.25, 0.75, 0.5, -0.5, -0.5, -0.5, 0.5, -0.25, -0.5, 0.75, 0.75, 0.0, 0.75, -1.0, 0.5, 0.25, 1.0, 0.75, -0.25, 0.5, 0.5, 0.5, 0.75, 0.0, -1.0, 1.0, -1.0, 1.0, -0.25, 0.25, 0.75, -0.5, 0.0, -1.0, 1.0, -0.5, -0.5, -0.25, 0.75, 1.0, 0.25, 1.0, 0.5, 1.0, 0.0, 0.75, -0.25, 0.75, -0.75, -0.25, 1.0, -0.5, -1.0, 0.5, -1.0, -0.25, -1.0, -1.0, 0.75, -0.5, 0.25, -0.75, 0.0, 0.0, 0.25, -0.75, 0.5, 0.5, 0.75, 0.25, 0.0, 1.0, 0.25, 0.0, 0.0, 0.75, -1.0, -0.5, -1.0, -1.0, 0.5, 0.5, -0.75, -0.25, 0.0, -0.75, 0.25, 0.5, -1.0, 0.0, ]);

    {
        const buffer = buffer1806
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const buffer1809 = device180.createBuffer({
        label: "buffer1809",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const bind_group_layout18012 = device180.createBindGroupLayout({ 
        label: "bind_group_layout18012",
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

    console.log(device210.features.size);

    for (const value of device210.features.keys()) {
        console.log(value);
    }

    console.log(device210.limits.size);

    for (const [key, value] of Object.entries(device210.limits)) {
        console.log(key);
        console.log(value);
    }

    device210.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    const sampler1807 = device180.createSampler( { label: "sampler1807" } );

    const array38 = new Float32Array([0.75, 0.0, 0.25, -0.25, 0.75, -0.75, -0.5, -0.25, -1.0, 0.25, 0.5, -0.25, 0.5, 0.5, -0.25, -0.75, 0.25, 0.25, 0.0, 0.0, -0.25, 0.5, 0.75, 0.75, 0.25, 1.0, 0.75, -0.25, 0.5, 0.75, 0.5, -1.0, -0.25, 1.0, -0.25, 0.25, -0.25, -0.75, -0.25, -0.25, -0.75, 0.25, 0.75, -1.0, -0.75, -1.0, 1.0, 0.0, -0.5, 0.0, -0.75, -0.5, 0.0, -1.0, -0.75, 0.25, -0.25, -1.0, 0.75, 0.0, -1.0, -1.0, 0.75, -1.0, 0.0, -1.0, -0.75, 0.75, 0.5, 0.0, 0.5, -1.0, -1.0, -1.0, 0.0, 0.5, -0.5, 1.0, -1.0, -0.5, 0.75, -0.25, 0.0, 0.0, -1.0, -1.0, -0.25, 0.0, 0.75, 1.0, 0.0, 0.75, 1.0, 0.25, -0.75, 0.5, 0.0, 1.0, 0.0, 0.25, ]);

    {
        const buffer = buffer1802
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    console.log(navigator.gpu.getPreferredCanvasFormat());

    {
        const buffer = buffer1808
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const bind_group_layout18013 = device180.createBindGroupLayout({ 
        label: "bind_group_layout18013",
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
        const buffer = buffer1802
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const adapter25 = await navigator.gpu.requestAdapter({
        powerPreference: undefined,
        label: "adapter25"
    });

    device210.pushErrorScope("validation");

    const bind_group_layout18014 = device180.createBindGroupLayout({ 
        label: "bind_group_layout18014",
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

    const bind_group_layout18015 = device180.createBindGroupLayout({ 
        label: "bind_group_layout18015",
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

    console.log(device210.features.size);

    for (const value of device210.features.keys()) {
        console.log(value);
    }

    console.log(device210.limits.size);

    for (const [key, value] of Object.entries(device210.limits)) {
        console.log(key);
        console.log(value);
    }

    device210.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    {
        const buffer = buffer2102
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    {
        const buffer = buffer1800
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const sampler1808 = device180.createSampler( { label: "sampler1808" } );

    const array39 = new Float32Array([-0.5, -0.75, 0.0, 0.5, -0.75, 0.0, 0.0, -0.75, 1.0, 0.5, 0.5, -0.75, 0.0, -1.0, -0.75, 1.0, 0.25, -0.75, 0.25, 0.5, -0.5, 0.5, -1.0, 0.0, -0.25, -0.75, 0.75, 0.75, -0.75, 0.5, -0.75, -0.5, -0.75, 0.25, -0.5, 0.75, -1.0, -0.75, -0.5, -0.75, 0.5, 0.5, -0.5, 0.0, -0.25, -1.0, -0.75, 0.5, -0.75, 1.0, -0.75, -0.5, -0.5, 0.0, 1.0, -0.25, -0.5, -1.0, 0.25, -1.0, 0.5, 0.25, -1.0, 0.5, 0.5, -1.0, -0.25, -0.5, 1.0, 0.25, 1.0, 1.0, 0.25, 0.0, 0.0, 1.0, 0.5, -0.75, 0.0, -0.25, 0.25, -1.0, 1.0, 0.5, -0.25, -0.75, 0.75, 1.0, 0.25, 1.0, 0.0, -0.25, -0.75, 0.5, 0.25, 1.0, -0.25, -1.0, 0.75, -0.25, ]);

    {
        const buffer = buffer1803
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const bind_group_layout2103 = device210.createBindGroupLayout({ 
        label: "bind_group_layout2103",
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
        const buffer = buffer1807
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    device210.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    console.log(device210.features.size);

    for (const value of device210.features.keys()) {
        console.log(value);
    }

    console.log(device210.limits.size);

    for (const [key, value] of Object.entries(device210.limits)) {
        console.log(key);
        console.log(value);
    }

    device210.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    {
        const buffer = buffer1806
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    {
        const buffer = buffer1800
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    {
        const buffer = buffer2101
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const buffer18010 = device180.createBuffer({
        label: "buffer18010",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });

    {
        const buffer = buffer1800
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    const array40 = new Float32Array([-0.5, 1.0, 0.75, 0.25, 0.0, -0.25, 0.5, 0.5, -0.25, 0.5, 0.0, 0.75, 0.5, 0.75, -0.5, 0.0, 0.0, -0.75, -0.25, 0.25, 0.25, 0.0, 0.0, 0.75, 1.0, -0.75, 1.0, 0.5, 0.75, 0.0, -0.25, -0.75, 1.0, -0.5, -1.0, -0.75, -0.75, 0.25, 0.75, 0.75, 1.0, -0.25, 0.5, -1.0, 0.25, 0.25, 0.5, 0.0, 0.25, -0.5, 0.25, 0.25, 0.0, 1.0, 0.75, -1.0, -1.0, 0.25, 0.0, 1.0, 0.75, 0.5, 0.25, 0.5, 0.0, -0.5, -0.5, 0.0, -0.5, -1.0, -0.75, -0.75, -0.5, -0.75, -0.5, -0.25, 1.0, 0.0, -0.5, 0.0, -0.75, 0.0, 0.5, -0.75, 1.0, 1.0, -0.5, 0.25, 0.0, 1.0, -0.5, 0.5, 0.75, 0.75, 0.25, 0.0, 0.0, 0.75, 0.75, -0.25, ]);

    {
        const buffer = buffer1806
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    {
        const buffer = buffer1802
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    {
        const buffer = buffer2102
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    // await device210.queue.onSubmittedWorkDone();

    const sampler2104 = device210.createSampler( { label: "sampler2104" } );

    {
        const buffer = buffer2101
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    {
        const buffer = buffer18010
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    {
        const buffer = buffer1806
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    {
        const buffer = buffer2102
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const bind_group_layout2104 = device210.createBindGroupLayout({ 
        label: "bind_group_layout2104",
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
        const buffer = buffer1804
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    {
        const buffer = buffer2102
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const buffer18011 = device180.createBuffer({
        label: "buffer18011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const sampler2105 = device210.createSampler( { label: "sampler2105" } );

    {
        const buffer = buffer1804
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const device250 = await adapter25.requestDevice({ label: "device250" });

    const buffer2103 = device210.createBuffer({
        label: "buffer2103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });

    {
        const buffer = buffer1806
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    {
        const buffer = buffer2100
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const bind_group_layout2105 = device210.createBindGroupLayout({ 
        label: "bind_group_layout2105",
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
        const buffer = buffer1804
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const sampler1809 = device180.createSampler( { label: "sampler1809" } );

    {
        const buffer = buffer1803
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    {
        const buffer = buffer1800
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    device180.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    {
        const buffer = buffer1805
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    // await device180.queue.onSubmittedWorkDone();

    {
        const buffer = buffer1803
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    // await device180.queue.onSubmittedWorkDone();

    // await device210.queue.onSubmittedWorkDone();

    // await device210.queue.onSubmittedWorkDone();

    console.log(device210.features.size);

    for (const value of device210.features.keys()) {
        console.log(value);
    }

    console.log(device210.limits.size);

    for (const [key, value] of Object.entries(device210.limits)) {
        console.log(key);
        console.log(value);
    }

    device210.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    {
        const buffer = buffer1804
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const sampler18010 = device180.createSampler( { label: "sampler18010" } );

    const sampler2500 = device250.createSampler( { label: "sampler2500" } );

    const buffer2500 = device250.createBuffer({
        label: "buffer2500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });

    {
        const buffer = buffer2102
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    device180.destroy();

    // await device210.queue.onSubmittedWorkDone();

    {
        const buffer = buffer2102
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    // await device250.queue.onSubmittedWorkDone();

    console.log(device210.features.size);

    for (const value of device210.features.keys()) {
        console.log(value);
    }

    console.log(device210.limits.size);

    for (const [key, value] of Object.entries(device210.limits)) {
        console.log(key);
        console.log(value);
    }

    device210.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    const bind_group_layout2500 = device250.createBindGroupLayout({ 
        label: "bind_group_layout2500",
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

    const buffer2104 = device210.createBuffer({
        label: "buffer2104",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });

    device210.destroy();

    console.log(device250.features.size);

    for (const value of device250.features.keys()) {
        console.log(value);
    }

    console.log(device250.limits.size);

    for (const [key, value] of Object.entries(device250.limits)) {
        console.log(key);
        console.log(value);
    }

    device250.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    device250.destroy();

    const adapter26 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power",
        label: "adapter26"
    });

    const device260 = await adapter26.requestDevice({ label: "device260" });

    const array41 = new Float32Array([-0.75, 1.0, 1.0, -0.5, 0.0, -1.0, 0.75, 1.0, 0.25, -0.25, 0.0, 0.0, 0.5, 1.0, -0.75, 0.25, -0.5, 1.0, -0.5, 1.0, -0.5, 0.25, 0.5, -0.25, -0.75, 1.0, -0.25, -0.5, 0.75, -0.5, -1.0, 0.25, -0.5, -0.75, -1.0, -1.0, -0.5, -0.25, 0.75, 0.25, -1.0, 0.75, -0.5, 0.0, 0.0, -0.75, -0.5, 0.75, -0.5, 1.0, 1.0, 0.0, -0.5, -1.0, -0.25, 0.5, -0.75, -0.25, 0.5, -0.25, -1.0, 0.75, 0.5, -0.75, 0.0, 0.75, 0.25, -1.0, -1.0, 0.5, 0.25, 0.5, -0.25, 0.0, -1.0, -0.25, 0.0, 1.0, 0.75, -1.0, 1.0, 0.0, 0.5, -1.0, -0.75, -0.5, 0.5, 0.5, -0.75, -1.0, 0.75, 0.75, -0.5, 0.0, 0.75, 0.75, 0.0, -0.5, 0.75, 0.0, ]);

    // await device260.queue.onSubmittedWorkDone();

    device260.pushErrorScope("validation");

    // await device260.queue.onSubmittedWorkDone();

    console.log(device260.features.size);

    for (const value of device260.features.keys()) {
        console.log(value);
    }

    console.log(device260.limits.size);

    for (const [key, value] of Object.entries(device260.limits)) {
        console.log(key);
        console.log(value);
    }

    device260.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    const array42 = new Float32Array([-0.25, 0.5, 0.75, -0.5, 0.0, 0.75, 1.0, 1.0, 0.25, -0.75, -0.75, -0.25, -1.0, 0.25, 1.0, 0.25, 0.0, -0.75, 0.75, -1.0, 0.75, -0.5, 0.25, -1.0, -0.5, 1.0, 0.25, -0.5, 1.0, 1.0, 1.0, 0.5, 0.5, -0.75, -1.0, -1.0, -0.25, 0.25, -0.5, 0.0, 1.0, 1.0, 1.0, 0.25, -0.5, -1.0, 0.5, 0.25, -0.75, -1.0, 0.25, -1.0, 0.75, -1.0, -0.5, -1.0, -1.0, -1.0, -0.75, -0.75, 0.0, 0.0, -0.75, 0.25, 0.25, 0.0, -0.25, -1.0, -0.75, -0.5, 0.75, 0.25, -0.75, 0.5, 0.25, -0.75, 0.0, 0.0, -0.75, 1.0, 0.5, -0.5, 1.0, 1.0, 0.75, 1.0, 1.0, 0.25, 0.5, 1.0, -1.0, 0.75, 1.0, -0.25, -1.0, 0.75, -0.25, 0.75, 0.5, 0.75, ]);

    const adapter27 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power",
        label: "adapter27"
    });

    // await device260.queue.onSubmittedWorkDone();

    const sampler2600 = device260.createSampler( { label: "sampler2600" } );

    // await device260.queue.onSubmittedWorkDone();

    const adapter28 = await navigator.gpu.requestAdapter({
        powerPreference: undefined,
        label: "adapter28"
    });

    console.log(navigator.gpu.getPreferredCanvasFormat());

    console.log(device260.features.size);

    for (const value of device260.features.keys()) {
        console.log(value);
    }

    console.log(device260.limits.size);

    for (const [key, value] of Object.entries(device260.limits)) {
        console.log(key);
        console.log(value);
    }

    device260.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    const device280 = await adapter28.requestDevice({ label: "device280" });

    const adapter29 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance",
        label: "adapter29"
    });

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    const device270 = await adapter27.requestDevice({ label: "device270" });

    device280.destroy();

    // await device270.queue.onSubmittedWorkDone();

    const buffer2700 = device270.createBuffer({
        label: "buffer2700",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });

    // await device260.queue.onSubmittedWorkDone();

    // await device260.queue.onSubmittedWorkDone();

    console.log(device270.features.size);

    for (const value of device270.features.keys()) {
        console.log(value);
    }

    console.log(device270.limits.size);

    for (const [key, value] of Object.entries(device270.limits)) {
        console.log(key);
        console.log(value);
    }

    device270.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    device270.destroy();

    const device290 = await adapter29.requestDevice({ label: "device290" });

    device290.pushErrorScope("internal");

    console.log(navigator.gpu.getPreferredCanvasFormat());

    const buffer2900 = device290.createBuffer({
        label: "buffer2900",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });

    {
        const buffer = buffer2900
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    {
        const buffer = buffer2900
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    console.log(device290.features.size);

    for (const value of device290.features.keys()) {
        console.log(value);
    }

    console.log(device290.limits.size);

    for (const [key, value] of Object.entries(device290.limits)) {
        console.log(key);
        console.log(value);
    }

    device290.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    const buffer2600 = device260.createBuffer({
        label: "buffer2600",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });

    // await device290.queue.onSubmittedWorkDone();

    // await device290.queue.onSubmittedWorkDone();

    console.log(navigator.gpu.getPreferredCanvasFormat());

    {
        const buffer = buffer2600
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    // await device290.queue.onSubmittedWorkDone();

    {
        const buffer = buffer2900
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    const bind_group_layout2600 = device260.createBindGroupLayout({ 
        label: "bind_group_layout2600",
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

    // await device260.queue.onSubmittedWorkDone();

    const sampler2601 = device260.createSampler( { label: "sampler2601" } );

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    const buffer2901 = device290.createBuffer({
        label: "buffer2901",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });

    device260.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    console.log(device290.features.size);

    for (const value of device290.features.keys()) {
        console.log(value);
    }

    console.log(device290.limits.size);

    for (const [key, value] of Object.entries(device290.limits)) {
        console.log(key);
        console.log(value);
    }

    device290.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    const bind_group_layout2601 = device260.createBindGroupLayout({ 
        label: "bind_group_layout2601",
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
        const buffer = buffer2600
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const adapter30 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance",
        label: "adapter30"
    });

    const sampler2900 = device290.createSampler( { label: "sampler2900" } );

    const sampler2901 = device290.createSampler( { label: "sampler2901" } );

    const adapter31 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power",
        label: "adapter31"
    });

    device290.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    device260.pushErrorScope("out-of-memory");

    const array43 = new Float32Array([-0.5, -1.0, 1.0, 1.0, 1.0, 0.75, -0.75, -0.25, -0.75, 0.25, 0.25, 0.5, -1.0, -0.75, -1.0, 0.25, 0.0, -0.75, 0.25, 0.75, 0.25, -0.25, 0.25, -0.75, 1.0, 1.0, -1.0, 0.5, 0.5, 1.0, -0.5, -0.75, -1.0, 0.5, 1.0, -1.0, -0.75, -1.0, 0.5, 0.5, -0.25, 0.0, -0.75, 0.75, -1.0, -0.75, -0.75, -0.75, 0.25, -0.25, 1.0, -0.75, -0.25, 0.0, -0.75, -0.75, -0.25, -0.5, 1.0, 0.5, 0.5, -1.0, -0.25, 0.0, -0.75, -0.25, 0.0, 0.5, 0.5, -0.25, -0.75, 0.75, -1.0, -0.5, 0.75, 1.0, 0.25, -1.0, -1.0, -0.5, 0.25, -0.75, 0.5, -0.25, 0.0, 1.0, -0.75, -0.5, -0.5, 0.25, -0.5, 0.0, 0.0, 0.25, 0.75, 1.0, -0.75, 0.25, -1.0, 0.75, ]);

    // await device290.queue.onSubmittedWorkDone();

    {
        const buffer = buffer2901
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const bind_group_layout2900 = device290.createBindGroupLayout({ 
        label: "bind_group_layout2900",
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

    const bind_group_layout2901 = device290.createBindGroupLayout({ 
        label: "bind_group_layout2901",
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

    const device310 = await adapter31.requestDevice({ label: "device310" });

    const buffer2601 = device260.createBuffer({
        label: "buffer2601",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });

    // await device260.queue.onSubmittedWorkDone();

    const array44 = new Float32Array([1.0, -0.5, -0.75, -0.75, 0.0, 0.5, -1.0, -1.0, -0.25, -0.5, 1.0, -0.5, -0.25, -1.0, 0.25, -0.25, 1.0, 0.5, -0.25, 0.5, 0.75, 1.0, 0.0, 1.0, 1.0, -0.5, -0.5, -0.25, 1.0, 0.75, -0.5, -0.25, 0.75, -1.0, -0.25, -0.75, 0.75, 0.25, 0.5, -0.5, -0.25, 0.0, 0.75, -1.0, 0.25, -1.0, 0.75, 1.0, 0.0, 0.5, 0.25, -1.0, 0.5, -0.75, 0.25, 0.25, -0.5, 1.0, 0.0, -0.5, 0.0, 1.0, -0.5, -0.75, 0.5, -1.0, 0.0, 0.75, -0.25, 0.0, 0.0, 0.0, 0.75, -0.75, -0.25, -1.0, 0.25, 0.25, -0.75, 0.75, -0.25, -0.5, 0.0, 0.0, 0.75, 1.0, 0.75, -0.75, -0.5, 1.0, 0.5, -1.0, 0.0, -0.25, 0.25, 0.25, -1.0, 0.75, 0.75, 0.5, ]);

    {
        const buffer = buffer2600
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const sampler3100 = device310.createSampler( { label: "sampler3100" } );

    // await device310.queue.onSubmittedWorkDone();

    // await device290.queue.onSubmittedWorkDone();

    console.log(device310.features.size);

    for (const value of device310.features.keys()) {
        console.log(value);
    }

    console.log(device310.limits.size);

    for (const [key, value] of Object.entries(device310.limits)) {
        console.log(key);
        console.log(value);
    }

    device310.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    const sampler2602 = device260.createSampler( { label: "sampler2602" } );

    console.log(device310.features.size);

    for (const value of device310.features.keys()) {
        console.log(value);
    }

    console.log(device310.limits.size);

    for (const [key, value] of Object.entries(device310.limits)) {
        console.log(key);
        console.log(value);
    }

    device310.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    console.log(device310.features.size);

    for (const value of device310.features.keys()) {
        console.log(value);
    }

    console.log(device310.limits.size);

    for (const [key, value] of Object.entries(device310.limits)) {
        console.log(key);
        console.log(value);
    }

    device310.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    console.log(navigator.gpu.getPreferredCanvasFormat());

    const array45 = new Float32Array([-0.25, 0.0, -0.25, -0.25, 0.5, 0.25, 0.0, 0.75, 1.0, 1.0, 0.0, 0.75, 0.25, -0.75, 0.75, 1.0, 0.25, -0.75, -0.75, -1.0, -0.75, -0.25, 0.75, 0.25, -0.5, 1.0, -1.0, 0.75, 0.0, 1.0, 0.75, 0.75, 0.0, -0.75, -0.25, -0.25, 0.75, 1.0, -0.5, -0.25, -0.75, -0.25, 0.25, -0.75, 1.0, -1.0, 0.25, -1.0, -0.75, -0.25, 0.25, 0.0, 0.25, -0.75, -0.75, -0.25, -0.5, 0.75, -1.0, -0.5, 0.0, 0.5, 1.0, 0.5, -0.75, -0.5, -0.5, -0.5, 0.25, 1.0, -0.25, -1.0, -0.25, -0.25, -0.25, -1.0, 0.25, -0.25, 0.25, -1.0, -0.5, 0.5, -0.25, -0.75, 0.25, -0.5, -0.25, -1.0, -0.75, -0.75, 0.25, -0.75, -0.25, 0.25, 0.75, -0.75, 1.0, -0.75, -0.25, 0.25, ]);

    console.log(device310.features.size);

    for (const value of device310.features.keys()) {
        console.log(value);
    }

    console.log(device310.limits.size);

    for (const [key, value] of Object.entries(device310.limits)) {
        console.log(key);
        console.log(value);
    }

    device310.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    device260.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    const adapter32 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power",
        label: "adapter32"
    });

    const buffer2902 = device290.createBuffer({
        label: "buffer2902",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });

    const array46 = new Float32Array([0.5, 0.5, -0.5, 0.25, -0.25, 1.0, 0.5, 1.0, -0.75, -0.25, -0.75, 0.75, 1.0, 0.25, -0.75, 0.0, -0.5, -0.5, -1.0, 0.25, 0.0, -0.75, 1.0, -0.75, -0.75, -1.0, -0.75, -0.5, -1.0, 0.75, 0.75, 0.75, 0.75, 1.0, 0.25, -0.25, 0.0, -0.25, -0.75, 1.0, -0.5, 0.75, -0.5, 0.5, -0.5, 0.25, -0.25, 0.5, 0.25, 0.25, -1.0, 0.25, 0.25, -0.5, -0.25, -1.0, 0.5, -0.5, 0.5, 1.0, -1.0, -0.5, 1.0, -0.75, 0.25, -0.5, -0.5, 1.0, 0.75, 0.5, 0.5, 0.25, -1.0, -0.5, 0.75, 0.5, -1.0, -0.25, -1.0, 0.0, -1.0, -0.75, -0.75, 0.5, -1.0, -1.0, -0.25, -0.25, -1.0, 0.25, 0.75, -0.5, 0.0, 0.5, 0.5, 1.0, 0.5, -1.0, -0.5, 0.75, ]);

    const buffer2903 = device290.createBuffer({
        label: "buffer2903",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });

    const buffer2904 = device290.createBuffer({
        label: "buffer2904",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });

    const buffer3100 = device310.createBuffer({
        label: "buffer3100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });

    console.log(navigator.gpu.getPreferredCanvasFormat());

    console.log(device290.features.size);

    for (const value of device290.features.keys()) {
        console.log(value);
    }

    console.log(device290.limits.size);

    for (const [key, value] of Object.entries(device290.limits)) {
        console.log(key);
        console.log(value);
    }

    device290.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    const bind_group_layout2902 = device290.createBindGroupLayout({ 
        label: "bind_group_layout2902",
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

    const bind_group_layout3100 = device310.createBindGroupLayout({ 
        label: "bind_group_layout3100",
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

    console.log(device260.features.size);

    for (const value of device260.features.keys()) {
        console.log(value);
    }

    console.log(device260.limits.size);

    for (const [key, value] of Object.entries(device260.limits)) {
        console.log(key);
        console.log(value);
    }

    device260.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    device290.destroy();

    const adapter33 = await navigator.gpu.requestAdapter({
        powerPreference: undefined,
        label: "adapter33"
    });

    device310.destroy();

    device260.destroy();

    const device330 = await adapter33.requestDevice({ label: "device330" });

    const bind_group_layout3300 = device330.createBindGroupLayout({ 
        label: "bind_group_layout3300",
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

    const array47 = new Float32Array([-0.5, 0.25, -0.25, -0.75, 0.75, -0.25, 0.75, -0.25, -0.75, 1.0, 1.0, -0.5, -0.75, 0.75, -1.0, 0.0, -1.0, -0.5, -0.5, -1.0, 0.25, -0.75, -1.0, 0.25, 1.0, 0.0, 0.75, 0.25, 0.25, 0.5, -1.0, 0.5, 0.0, 1.0, -0.25, -0.5, -0.75, 0.0, -0.5, 0.25, 0.25, 0.0, 0.0, -1.0, -1.0, 0.25, -1.0, 0.75, 0.0, 1.0, 0.25, -0.75, -0.25, 0.5, 0.75, 0.25, 0.5, 0.5, -0.75, 0.25, -0.75, 0.25, -1.0, -0.75, 0.25, -0.5, 0.0, -1.0, 1.0, -1.0, 0.0, -1.0, -1.0, 0.5, 0.75, 0.25, -0.75, 0.75, -0.75, -0.5, -1.0, -0.75, -0.75, -0.5, 0.0, 0.0, -1.0, 0.25, -0.5, -1.0, 0.0, 0.0, -1.0, -0.5, -0.5, -0.25, 0.25, 0.75, 1.0, -1.0, ]);

    console.log(navigator.gpu.getPreferredCanvasFormat());

    const buffer3300 = device330.createBuffer({
        label: "buffer3300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });

    device330.pushErrorScope("out-of-memory");

    device330.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    const device300 = await adapter30.requestDevice({ label: "device300" });

    const adapter34 = await navigator.gpu.requestAdapter({
        powerPreference: undefined,
        label: "adapter34"
    });

    // await device300.queue.onSubmittedWorkDone();

    const device320 = await adapter32.requestDevice({ label: "device320" });

    const bind_group_layout3000 = device300.createBindGroupLayout({ 
        label: "bind_group_layout3000",
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

    const sampler3300 = device330.createSampler( { label: "sampler3300" } );

    console.log(device300.features.size);

    for (const value of device300.features.keys()) {
        console.log(value);
    }

    console.log(device300.limits.size);

    for (const [key, value] of Object.entries(device300.limits)) {
        console.log(key);
        console.log(value);
    }

    device300.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    device320.pushErrorScope("validation");

    const array48 = new Float32Array([-0.75, 0.25, 0.75, -0.25, -0.5, -0.75, 1.0, 1.0, 0.5, 1.0, 0.0, 0.75, -0.75, 1.0, 0.25, -0.75, 0.75, 1.0, -0.5, -1.0, -1.0, 0.25, -0.5, -0.5, -0.5, 0.5, 0.5, -0.5, 1.0, 0.25, 0.5, -1.0, 0.25, 1.0, -0.75, -0.75, -0.5, -1.0, 0.75, 1.0, 0.0, -0.25, -0.5, 0.75, 0.5, -0.5, 0.75, -0.25, -0.75, 0.0, -0.5, -0.5, 1.0, -1.0, 0.25, 0.5, 0.75, -1.0, 0.0, -0.5, 0.75, -0.25, -0.25, 1.0, -0.75, 1.0, -0.75, 1.0, 0.75, -0.5, 0.25, 1.0, 1.0, -0.75, -1.0, 0.5, 0.25, -0.75, 0.25, 1.0, 0.0, -0.75, 0.0, -0.5, 0.25, 0.0, 1.0, -0.25, 0.25, -0.75, 1.0, 0.5, -0.25, -0.25, -0.5, 0.0, 0.5, -0.75, -0.5, -0.5, ]);

    console.log(device320.features.size);

    for (const value of device320.features.keys()) {
        console.log(value);
    }

    console.log(device320.limits.size);

    for (const [key, value] of Object.entries(device320.limits)) {
        console.log(key);
        console.log(value);
    }

    device320.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    console.log(device320.features.size);

    for (const value of device320.features.keys()) {
        console.log(value);
    }

    console.log(device320.limits.size);

    for (const [key, value] of Object.entries(device320.limits)) {
        console.log(key);
        console.log(value);
    }

    device320.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    const array49 = new Float32Array([0.75, 0.75, 0.5, -0.25, -1.0, 1.0, 0.5, 0.0, -0.5, 0.0, 0.25, -0.75, 0.0, -1.0, 0.25, 0.5, -0.75, 1.0, 0.75, 0.5, 1.0, 0.5, 0.0, 0.75, -0.25, -0.75, 0.0, -1.0, 0.0, 0.5, -0.75, 0.25, -0.5, 0.25, 0.75, 0.0, -0.75, -0.75, -0.25, 0.25, 0.25, 1.0, -0.25, 0.0, 0.75, 0.5, -0.25, -1.0, -0.5, -1.0, -1.0, -1.0, -0.25, 0.25, -0.25, 0.25, 0.0, -1.0, 0.5, 0.25, -0.5, 0.0, 1.0, -0.75, 0.75, -0.5, -0.25, -0.25, 0.0, -0.25, -0.75, 0.0, 0.25, -0.5, -0.75, 0.0, 1.0, 0.25, 0.25, 0.0, 0.25, 0.5, -0.75, -0.5, -1.0, -1.0, 0.75, 0.0, 0.75, -0.5, 0.0, -0.75, -0.5, -0.25, 0.5, 0.25, 0.0, 0.5, 0.75, 0.5, ]);

    const bind_group_layout3301 = device330.createBindGroupLayout({ 
        label: "bind_group_layout3301",
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

    const sampler3200 = device320.createSampler( { label: "sampler3200" } );

    console.log(device330.features.size);

    for (const value of device330.features.keys()) {
        console.log(value);
    }

    console.log(device330.limits.size);

    for (const [key, value] of Object.entries(device330.limits)) {
        console.log(key);
        console.log(value);
    }

    device330.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    const buffer3200 = device320.createBuffer({
        label: "buffer3200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });

    device300.pushErrorScope("out-of-memory");

    const sampler3301 = device330.createSampler( { label: "sampler3301" } );

    device320.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    console.log(device300.features.size);

    for (const value of device300.features.keys()) {
        console.log(value);
    }

    console.log(device300.limits.size);

    for (const [key, value] of Object.entries(device300.limits)) {
        console.log(key);
        console.log(value);
    }

    device300.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    device330.destroy();

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    const array50 = new Float32Array([0.0, -1.0, 0.25, 0.0, 0.25, -0.25, -0.5, 0.0, -0.25, 0.75, 0.0, 0.25, 1.0, 1.0, 0.0, 0.5, -0.25, 0.75, 0.25, 1.0, -0.25, 0.75, 0.75, -0.5, 0.0, -0.5, -0.5, -1.0, 1.0, -0.75, -0.75, 1.0, 0.0, 0.75, 1.0, -0.5, -1.0, 0.0, 0.25, 1.0, 1.0, -0.75, 0.25, -0.25, 0.5, -0.75, -0.25, -0.25, -0.5, -0.75, -0.75, 0.25, -0.5, 0.25, 0.0, 0.25, -0.75, 1.0, -0.75, 0.0, -0.5, 0.25, 0.5, 0.0, 0.0, -0.75, -0.75, -0.75, -1.0, -0.75, 1.0, -0.25, -1.0, -0.5, -0.25, 0.25, -1.0, -1.0, -1.0, 0.0, 0.25, -0.25, 1.0, -0.75, 1.0, -0.75, -0.25, 0.5, -0.5, 1.0, 0.0, 0.5, 0.5, 0.0, -0.75, -0.5, 0.5, 1.0, 1.0, -0.25, ]);

    device320.pushErrorScope("out-of-memory");

    const adapter35 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance",
        label: "adapter35"
    });

    const sampler3201 = device320.createSampler( { label: "sampler3201" } );

    {
        const buffer = buffer3200
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const device350 = await adapter35.requestDevice({ label: "device350" });

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    const device340 = await adapter34.requestDevice({ label: "device340" });

    const buffer3000 = device300.createBuffer({
        label: "buffer3000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const bind_group_layout3200 = device320.createBindGroupLayout({ 
        label: "bind_group_layout3200",
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

    device320.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    device340.pushErrorScope("internal");

    device350.pushErrorScope("validation");

    const sampler3500 = device350.createSampler( { label: "sampler3500" } );

    const buffer3500 = device350.createBuffer({
        label: "buffer3500",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });

    device320.destroy();

    console.log(device300.features.size);

    for (const value of device300.features.keys()) {
        console.log(value);
    }

    console.log(device300.limits.size);

    for (const [key, value] of Object.entries(device300.limits)) {
        console.log(key);
        console.log(value);
    }

    device300.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    {
        const buffer = buffer3500
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    // await device300.queue.onSubmittedWorkDone();

    {
        const buffer = buffer3500
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    // await device350.queue.onSubmittedWorkDone();

    const sampler3000 = device300.createSampler( { label: "sampler3000" } );

    const bind_group_layout3500 = device350.createBindGroupLayout({ 
        label: "bind_group_layout3500",
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

    const bind_group_layout3400 = device340.createBindGroupLayout({ 
        label: "bind_group_layout3400",
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

    // await device340.queue.onSubmittedWorkDone();

    const bind_group_layout3001 = device300.createBindGroupLayout({ 
        label: "bind_group_layout3001",
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

    console.log(device350.features.size);

    for (const value of device350.features.keys()) {
        console.log(value);
    }

    console.log(device350.limits.size);

    for (const [key, value] of Object.entries(device350.limits)) {
        console.log(key);
        console.log(value);
    }

    device350.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    const array51 = new Float32Array([0.75, 1.0, 1.0, -0.75, -1.0, 0.0, 0.0, -0.5, 1.0, 0.75, -0.5, -0.75, 0.25, -1.0, 0.75, 0.75, -0.25, 1.0, 0.5, -1.0, -1.0, -1.0, -0.25, -0.75, 0.0, -1.0, -0.5, -0.25, -0.25, -0.25, -0.25, -0.75, 0.75, -0.5, 0.75, 0.75, 0.5, -0.25, 0.75, 0.0, -0.75, 0.75, 0.25, -1.0, 0.0, -0.5, -0.5, 1.0, 1.0, -0.75, 0.5, 1.0, 0.25, 0.75, 0.75, -0.5, 0.0, -0.25, -0.5, -0.5, 1.0, -0.75, -0.5, 1.0, 0.5, 0.5, 1.0, 1.0, 0.0, 0.5, -0.25, -0.5, -0.25, 0.0, -1.0, 0.75, -0.5, 0.5, 0.25, 0.5, -1.0, 0.0, 0.25, -1.0, -0.5, 0.75, -0.5, 0.0, -0.25, 0.0, -1.0, -1.0, 0.5, 0.0, -0.75, 0.0, 1.0, 0.0, 0.25, 0.25, ]);

    const buffer3501 = device350.createBuffer({
        label: "buffer3501",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3502 = device350.createBuffer({
        label: "buffer3502",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });

    console.log(device350.features.size);

    for (const value of device350.features.keys()) {
        console.log(value);
    }

    console.log(device350.limits.size);

    for (const [key, value] of Object.entries(device350.limits)) {
        console.log(key);
        console.log(value);
    }

    device350.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    console.log(device300.features.size);

    for (const value of device300.features.keys()) {
        console.log(value);
    }

    console.log(device300.limits.size);

    for (const [key, value] of Object.entries(device300.limits)) {
        console.log(key);
        console.log(value);
    }

    device300.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    const buffer3503 = device350.createBuffer({
        label: "buffer3503",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    device350.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    device350.pushErrorScope("out-of-memory");

    device340.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    device340.destroy();

    {
        const buffer = buffer3502
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const bind_group_layout3002 = device300.createBindGroupLayout({ 
        label: "bind_group_layout3002",
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

    const sampler3501 = device350.createSampler( { label: "sampler3501" } );

    const buffer3001 = device300.createBuffer({
        label: "buffer3001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    // await device350.queue.onSubmittedWorkDone();

    const adapter36 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance",
        label: "adapter36"
    });

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    {
        const buffer = buffer3503
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const buffer3002 = device300.createBuffer({
        label: "buffer3002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });

    const bind_group_layout3501 = device350.createBindGroupLayout({ 
        label: "bind_group_layout3501",
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
        const buffer = buffer3000
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const buffer3003 = device300.createBuffer({
        label: "buffer3003",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });

    const sampler3001 = device300.createSampler( { label: "sampler3001" } );

    const buffer3504 = device350.createBuffer({
        label: "buffer3504",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    {
        const buffer = buffer3003
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    // await device300.queue.onSubmittedWorkDone();

    {
        const buffer = buffer3000
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    {
        const buffer = buffer3500
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    console.log(device350.features.size);

    for (const value of device350.features.keys()) {
        console.log(value);
    }

    console.log(device350.limits.size);

    for (const [key, value] of Object.entries(device350.limits)) {
        console.log(key);
        console.log(value);
    }

    device350.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    {
        const buffer = buffer3500
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    const bind_group_layout3502 = device350.createBindGroupLayout({ 
        label: "bind_group_layout3502",
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
        const buffer = buffer3504
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    console.log(device300.features.size);

    for (const value of device300.features.keys()) {
        console.log(value);
    }

    console.log(device300.limits.size);

    for (const [key, value] of Object.entries(device300.limits)) {
        console.log(key);
        console.log(value);
    }

    device300.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    const buffer3004 = device300.createBuffer({
        label: "buffer3004",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const device360 = await adapter36.requestDevice({ label: "device360" });

    // await device350.queue.onSubmittedWorkDone();

    // await device360.queue.onSubmittedWorkDone();

    const bind_group_layout3003 = device300.createBindGroupLayout({ 
        label: "bind_group_layout3003",
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

    console.log(navigator.gpu.getPreferredCanvasFormat());

    const buffer3600 = device360.createBuffer({
        label: "buffer3600",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });

    console.log(navigator.gpu.getPreferredCanvasFormat());

    console.log(device360.features.size);

    for (const value of device360.features.keys()) {
        console.log(value);
    }

    console.log(device360.limits.size);

    for (const [key, value] of Object.entries(device360.limits)) {
        console.log(key);
        console.log(value);
    }

    device360.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    const sampler3002 = device300.createSampler( { label: "sampler3002" } );

    const sampler3600 = device360.createSampler( { label: "sampler3600" } );

    {
        const buffer = buffer3501
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const sampler3502 = device350.createSampler( { label: "sampler3502" } );

    {
        const buffer = buffer3004
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    console.log(device350.features.size);

    for (const value of device350.features.keys()) {
        console.log(value);
    }

    console.log(device350.limits.size);

    for (const [key, value] of Object.entries(device350.limits)) {
        console.log(key);
        console.log(value);
    }

    device350.lost.then((info) => {
        console.error(`WebGPU device was lost: ${info.message}`);
        console.log(info.reason);
    });

    device360.pushErrorScope("out-of-memory");

    {
        const buffer = buffer3004
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    // await device360.queue.onSubmittedWorkDone();

    {
        const buffer = buffer3503
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const bind_group_layout3503 = device350.createBindGroupLayout({ 
        label: "bind_group_layout3503",
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
        const buffer = buffer3502
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    console.log(navigator.gpu.getPreferredCanvasFormat());

    console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }

    // await device300.queue.onSubmittedWorkDone();

    {
        const buffer = buffer3502
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const adapter37 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance",
        label: "adapter37"
    });

    const bind_group_layout3504 = device350.createBindGroupLayout({ 
        label: "bind_group_layout3504",
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

    const bind_group_layout3004 = device300.createBindGroupLayout({ 
        label: "bind_group_layout3004",
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

    // await device300.queue.onSubmittedWorkDone();

    {
        const buffer = buffer3500
        console.log(buffer.label);
        console.log(buffer.mapState);
        console.log(buffer.size);
        console.log(buffer.usage);
    }

    const adapter38 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power",
        label: "adapter38"
    });

    const buffer3601 = device360.createBuffer({
        label: "buffer3601",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });

    device360.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    device300.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });

    device350.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}

init();