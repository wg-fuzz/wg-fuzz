const { create, globals } = require('./dawn.node');
Object.assign(globalThis, globals);
let navigator = { gpu: create([]), };

async function init() {
    const adapter = await navigator.gpu.requestAdapter();
    const device = await adapter.requestDevice();

    device.queue.onSubmittedWorkDone();

    device.destroy();
}

init();
