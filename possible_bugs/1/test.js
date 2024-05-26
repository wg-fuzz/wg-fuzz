const { create, globals } = require('../dawn.node');
Object.assign(globalThis, globals); // Provides constants like GPUBufferUsage.MAP_READ
let navigator = { gpu: create(['enable-dawn-features=allow_unsafe_apis,disable_symbol_renaming']), };
const fs = require('node:fs/promises');

async function init() {
    if (!navigator.gpu) {
        throw Error("WebGPU not supported.");
    }

    const adapter0 = await navigator.gpu.requestAdapter();const device0 = await adapter0.requestDevice();

    var shaderModule0_file = "";
    try {
        shaderModule0_file = await fs.readFile('out/shaderModule0.wgsl', { encoding: 'utf8' });
        // console.log(shaderModule0_file);
    } catch (err) {
        console.log(err);
    }
    const shaderModule0 = await device0.createShaderModule({code: shaderModule0_file})

    var shaderModule1_file = "";
    try {
        shaderModule1_file = await fs.readFile('out/shaderModule1.wgsl', { encoding: 'utf8' });
        // console.log(shaderModule1_file);
    } catch (err) {
        console.log(err);
    }
    const shaderModule1 = await device0.createShaderModule({code: shaderModule1_file})

    const computePipeline0 = await device0.createComputePipeline({compute: {module: shaderModule1, entryPoint: "main"}, layout: "auto"})

    var shaderModule2_file = "";
    try {
        shaderModule2_file = await fs.readFile('out/shaderModule2.wgsl', { encoding: 'utf8' });
        // console.log(shaderModule2_file);
    } catch (err) {
        console.log(err);
    }
    const shaderModule2 = await device0.createShaderModule({code: shaderModule2_file})
}

init();