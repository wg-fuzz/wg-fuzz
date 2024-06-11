const { create, globals } = require('./dawn.node');
Object.assign(globalThis, globals);
let navigator = { gpu: create([]) };

async function init() {
    try {
        const adapter = await navigator.gpu.requestAdapter();
        const device0 = await adapter.requestDevice();
        const device1 = await adapter.requestDevice();
    
        device1.pushErrorScope("internal");
    
        device1.popErrorScope();
    } catch (e) {
        console.log(e);
    }

}

init();
