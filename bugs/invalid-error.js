const { create, globals } = require('./dawn.node');
Object.assign(globalThis, globals);
let navigator = { gpu: create([]) };

async function init() {
    const adapter = await navigator.gpu.requestAdapter();
    let device0 = await adapter.requestDevice();
    let device1 = await adapter.requestDevice();
}

init();
