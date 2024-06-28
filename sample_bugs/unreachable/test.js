const { create, globals } = require('./dawn.node');
Object.assign(globalThis, globals);
let navigator = { gpu: create([]) };

async function init() {
    const adapter = await navigator.gpu.requestAdapter();
    const device1 = await adapter.requestDevice();
    const device2 = await adapter.requestDevice();

    const buffer = device2.createBuffer({
        size: 100,
        usage: GPUBufferUsage.MAP_READ
    });

    await buffer.mapAsync(
        GPUMapMode.READ,
        0,
        100,
    );
}

init();
