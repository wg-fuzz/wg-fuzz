// generates an act (and art)

use art::*;
use act::*;
use act::APICall::*;

use rand::prelude::*;

pub fn generate(program: &mut Program, resources: &mut ProgramResources) -> () {
    let mut rng = rand::thread_rng();

    for _ in 1..100 {
        let mut available_api_calls = available_api_calls(resources);
        let call_index = rng.gen_range(0..available_api_calls.len());
        let api_call = available_api_calls.remove(call_index);
        let new_resource = update_program_resources(resources, &api_call);
        program.calls.push((api_call, new_resource));
    }
}

fn update_program_resources(resources: &mut ProgramResources, call: &APICall) -> Resource {
    let mut new_resource = Resource::None;
    match call {
        CreateAdapter() => {
            new_resource = Resource::GPUAdapter(GPUAdapter::new(&resources));
            resources.adapters.push(GPUAdapter::new(&resources))
        }
        CreateDevice(adapter) => {
            new_resource = Resource::GPUDevice(GPUDevice::new(adapter));
            resources.adapters[adapter.num].devices.push(GPUDevice::new(adapter))
        }
        // CreateBuffer(device) => {
        //     new_resource = Resource::GPUBuffer(GPUBuffer::new(device));
        //     resources.adapters[device.num_adapter].devices[device.num].buffers.push(GPUBuffer::new(device))
        // }
        // CreateTexture(device) => {
        //     new_resource = Resource::GPUTexture(GPUTexture::new(device));
        //     resources.adapters[device.num_adapter].devices[device.num].textures.push(GPUTexture::new(device))
        // }
        // CreateExternalTexture(device, _) => {
        //     new_resource = Resource::GPUExternalTexture(GPUExternalTexture::new(device));
        //     resources.adapters[device.num_adapter].devices[device.num].external_textures.push(GPUExternalTexture::new(device))
        // }
        // CreateHTMLVideo() => {
        //     new_resource = Resource::HTMLVideo(HTMLVideo::new(&resources));
        //     resources.html_videos.push(HTMLVideo::new(&resources))
        // }
        // CreateSampler(device) => {
        //     new_resource = Resource::GPUSampler(GPUSampler::new(device));
        //     resources.adapters[device.num_adapter].devices[device.num].samplers.push(GPUSampler::new(device))
        // }
        // CreateQuerySet(device) => {
        //     new_resource = Resource::GPUQuerySet(GPUQuerySet::new(device));
        //     resources.adapters[device.num_adapter].devices[device.num].query_sets.push(GPUQuerySet::new(device))
        // }
        // CreateShaderModule(device) => {
        //     new_resource = Resource::GPUShaderModule(GPUShaderModule::new(device));
        //     resources.adapters[device.num_adapter].devices[device.num].shader_modules.push(GPUShaderModule::new(device))
        // }
        // CreateBindGroup(device) => {
        //     new_resource = Resource::GPUBindGroup(GPUBindGroup::new(device));
        //     resources.adapters[device.num_adapter].devices[device.num].bind_groups.push(GPUBindGroup::new(device))
        // }
        // CreateBindGroupLayout(device) => {
        //     new_resource = Resource::GPUBindGroupLayout(GPUBindGroupLayout::new(device));
        //     resources.adapters[device.num_adapter].devices[device.num].bind_group_layouts.push(GPUBindGroupLayout::new(device))
        // }
        // CreatePipelineLayout(device) => {
        //     new_resource = Resource::GPUPipelineLayout(GPUPipelineLayout::new(device));
        //     resources.adapters[device.num_adapter].devices[device.num].pipeline_layouts.push(GPUPipelineLayout::new(device))
        // }
        // CreateComputePipeline(device, _) => {
        //     new_resource = Resource::GPUComputePipeline(GPUComputePipeline::new(device));
        //     resources.adapters[device.num_adapter].devices[device.num].compute_pipelines.push(GPUComputePipeline::new(device))
        // }
        // CreateRenderPipeline(device, _) => {
        //     new_resource = Resource::GPURenderPipeline(GPURenderPipeline::new(device));
        //     resources.adapters[device.num_adapter].devices[device.num].render_pipelines.push(GPURenderPipeline::new(device))
        // }
        // CreateRenderBundleEncoder(device) => {
        //     new_resource = Resource::GPURenderBundleEncoder(GPURenderBundleEncoder::new(device));
        //     resources.adapters[device.num_adapter].devices[device.num].render_bundle_encoders.push(GPURenderBundleEncoder::new(device))
        // }
        CreateCommandEncoder(device) => {
            new_resource = Resource::GPUCommandEncoder(GPUCommandEncoder::new(device));
            resources.adapters[device.num_adapter].devices[device.num].command_encoders.push(GPUCommandEncoder::new(device))
        },
        CreateCommandBuffer(encoder) => {
            new_resource = Resource::GPUCommandBuffer(GPUCommandBuffer::new(encoder));
            resources.adapters[encoder.num_adapter].devices[encoder.num_device].command_encoders[encoder.num].finish();
        },
    }
    new_resource
}


fn available_api_calls(resources: &ProgramResources) -> Vec<APICall> {
    let mut available_api_calls: Vec<APICall> = Vec::new();
    available_api_calls.extend([CreateAdapter(), /*CreateHTMLVideo()*/]);

    for adapter in &resources.adapters {
        available_api_calls.extend([CreateDevice(adapter.clone())]);

        for device in &adapter.devices {
            available_api_calls.extend([/*CreateBuffer(device.clone()), CreateTexture(device.clone()), CreateSampler(device.clone()), CreateQuerySet(device.clone()), 
                        CreateShaderModule(device.clone()), CreateBindGroup(device.clone()), CreateBindGroupLayout(device.clone()), CreatePipelineLayout(device.clone()), 
                        CreateRenderBundleEncoder(device.clone()),*/ CreateCommandEncoder(device.clone())]);

            for command_encoder in &device.command_encoders {
                if let None = command_encoder.command_buffer {
                    available_api_calls.extend([CreateCommandBuffer(command_encoder.clone())])
                }
            }

            // for html_video in &resources.html_videos {
            //     available_api_calls.extend([CreateExternalTexture(device.clone(), html_video.clone())])
            // }

            // for shader_module in &device.shader_modules {
            //     available_api_calls.extend([CreateComputePipeline(device.clone(), shader_module.clone()), CreateRenderPipeline(device.clone(), shader_module.clone())])
            // }
        }
    }

    available_api_calls
}