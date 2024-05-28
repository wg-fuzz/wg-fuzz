// generates an act

use art::*;
use act::*;
use act::APICall::*;

use rand::prelude::*;

pub fn generate<'a>(resources: &'a ProgramResources) -> Program<'a> {
    // let program_resources = ProgramResources {
    //     adapters: Vec::new(),
    //     html_videos: Vec::new()
    // };

    let mut program = Program {
        calls: Vec::new()
    };

    let mut rng = rand::thread_rng();

    for _ in 1..10 {
        let mut available_api_calls = available_api_calls(&resources);
        let call_index = rng.gen_range(0..available_api_calls.len());
        let api_call = available_api_calls.remove(call_index);
        program.calls.push(api_call);
    }

    program
}

fn update_program_resources(resources: &ProgramResources, call: &APICall) {
    match call {
        // CreateAdapter() => {resources.adapters.push()}
        _ => {}
    }
}

// CreateAdapter(),
// CreateDevice(&'a GPUAdapter),
// CreateBuffer(&'a GPUDevice),
// CreateTexture(&'a GPUDevice),
// CreateExternalTexture(&'a GPUDevice, &'a HTMLVideo),
// CreateHTMLVideo(),
// CreateSampler(&'a GPUDevice),
// CreateQuerySet(&'a GPUDevice),
// CreateShaderModule(&'a GPUDevice),
// CreateBindGroup(&'a GPUDevice),
// CreateBindGroupLayout(&'a GPUDevice),
// CreatePipelineLayout(&'a GPUDevice),
// CreateComputePipeline(&'a GPUDevice, &'a GPUShaderModule),
// CreateRenderPipeline(&'a GPUDevice, &'a GPUShaderModule),
// CreateRenderBundleEncoder(&'a GPUDevice),
// CreateCommandEncoder(&'a GPUDevice),

fn available_api_calls(resources: &ProgramResources) -> Vec<APICall> {
    let mut available_api_calls: Vec<APICall> = Vec::new();
    available_api_calls.extend([CreateAdapter(), CreateHTMLVideo()]);

    for adapter in &resources.adapters {
        available_api_calls.extend([CreateDevice(adapter)]);

        for device in &adapter.devices {
            available_api_calls.extend([CreateBuffer(device), CreateTexture(device), CreateSampler(device), CreateQuerySet(device), 
                        CreateShaderModule(device), CreateBindGroup(device), CreateBindGroupLayout(device), CreatePipelineLayout(device), 
                        CreateRenderBundleEncoder(device), CreateCommandEncoder(device)]);

            for html_video in &resources.html_videos {
                available_api_calls.extend([CreateExternalTexture(device, html_video)])
            }

            for shader_module in &device.shader_modules {
                available_api_calls.extend([CreateComputePipeline(device, shader_module), CreateRenderPipeline(device, shader_module)])
            }
        }
    }

    available_api_calls
}