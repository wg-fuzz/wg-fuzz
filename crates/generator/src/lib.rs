// generates an act

use art::*;
use act::*;
use act::APICall::*;

use rand::prelude::*;

pub fn generate(program: &mut Program, resources: &mut ProgramResources) -> () {
    let mut rng = rand::thread_rng();

    for _ in 1..10 {
        let mut available_api_calls = available_api_calls(resources);
        let call_index = rng.gen_range(0..available_api_calls.len());
        let api_call = available_api_calls.remove(call_index);
        update_program_resources(resources, &api_call);
        program.calls.push(api_call);
    }
}

fn update_program_resources(resources: &mut ProgramResources, call: &APICall) {
    match call {
        CreateAdapter() => {
            resources.adapters.push(GPUAdapter::new(&resources))
        }
        CreateDevice(adapter) => {
            resources.adapters[adapter.num].devices.push(GPUDevice::new(adapter))
        }
        CreateBuffer(device) => {
            resources.adapters[device.num_adapter].devices[device.num].buffers.push(GPUBuffer::new(device))
        }
        CreateTexture(device) => {
            resources.adapters[device.num_adapter].devices[device.num].textures.push(GPUTexture::new(device))
        }
        CreateExternalTexture(device, _) => {
            resources.adapters[device.num_adapter].devices[device.num].external_textures.push(GPUExternalTexture::new(device))
        }
        CreateHTMLVideo() => {
            resources.html_videos.push(HTMLVideo::new(&resources))
        }
        CreateSampler(device) => {
            resources.adapters[device.num_adapter].devices[device.num].samplers.push(GPUSampler::new(device))
        }
        CreateQuerySet(device) => {
            resources.adapters[device.num_adapter].devices[device.num].query_sets.push(GPUQuerySet::new(device))
        }
        CreateShaderModule(device) => {
            resources.adapters[device.num_adapter].devices[device.num].shader_modules.push(GPUShaderModule::new(device))
        }
        CreateBindGroup(device) => {
            resources.adapters[device.num_adapter].devices[device.num].bind_groups.push(GPUBindGroup::new(device))
        }
        CreateBindGroupLayout(device) => {
            resources.adapters[device.num_adapter].devices[device.num].bind_group_layouts.push(GPUBindGroupLayout::new(device))
        }
        CreatePipelineLayout(device) => {
            resources.adapters[device.num_adapter].devices[device.num].pipeline_layouts.push(GPUPipelineLayout::new(device))
        }
        CreateComputePipeline(device, _) => {
            resources.adapters[device.num_adapter].devices[device.num].compute_pipelines.push(GPUComputePipeline::new(device))
        }
        CreateRenderPipeline(device, _) => {
            resources.adapters[device.num_adapter].devices[device.num].render_pipelines.push(GPURenderPipeline::new(device))
        }
        CreateRenderBundleEncoder(device) => {
            resources.adapters[device.num_adapter].devices[device.num].render_bundle_encoders.push(GPURenderBundleEncoder::new(device))
        }
        CreateCommandEncoder(device) => {
            resources.adapters[device.num_adapter].devices[device.num].command_encoders.push(GPUCommandEncoder::new(device))
        }
    }
}


fn available_api_calls(resources: &ProgramResources) -> Vec<APICall> {
    let mut available_api_calls: Vec<APICall> = Vec::new();
    available_api_calls.extend([CreateAdapter(), CreateHTMLVideo()]);

    for adapter in &resources.adapters {
        available_api_calls.extend([CreateDevice(adapter.clone())]);

        for device in &adapter.devices {
            available_api_calls.extend([CreateBuffer(device.clone()), CreateTexture(device.clone()), CreateSampler(device.clone()), CreateQuerySet(device.clone()), 
                        CreateShaderModule(device.clone()), CreateBindGroup(device.clone()), CreateBindGroupLayout(device.clone()), CreatePipelineLayout(device.clone()), 
                        CreateRenderBundleEncoder(device.clone()), CreateCommandEncoder(device.clone())]);

            for html_video in &resources.html_videos {
                available_api_calls.extend([CreateExternalTexture(device.clone(), html_video.clone())])
            }

            for shader_module in &device.shader_modules {
                available_api_calls.extend([CreateComputePipeline(device.clone(), shader_module.clone()), CreateRenderPipeline(device.clone(), shader_module.clone())])
            }
        }
    }

    available_api_calls
}