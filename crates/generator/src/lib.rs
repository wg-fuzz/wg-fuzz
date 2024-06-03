// generates an act (and art)

use art::*;
use act::*;
use act::APICall::*;

use rand::prelude::*;

pub fn generate(program: &mut Program, resources: &mut ProgramResources) -> () {
    let mut rng = rand::thread_rng();

    for _ in 1..100 {
        let mut available_api_calls = available_api_calls(resources, false);
        let call_index = rng.gen_range(0..available_api_calls.len());
        let api_call = available_api_calls.remove(call_index);
        let new_resource = update_program_resources(resources, &api_call);
        program.calls.push((api_call, new_resource));
    }

    let mut terminating_api_calls = available_api_calls(resources, true);
    while terminating_api_calls.len() > 0 {
        let call_index = rng.gen_range(0..terminating_api_calls.len());
        let api_call = terminating_api_calls.remove(call_index);
        let new_resource = update_program_resources(resources, &api_call);
        program.calls.push((api_call, new_resource));

        terminating_api_calls = available_api_calls(resources, true);
    }
}

fn update_program_resources(resources: &mut ProgramResources, call: &APICall) -> Resource {
    let mut new_resource = Resource::None;
    match call {
        PrintWGSLLanguageFeatures() => {},
        PrintPreferredCanvasFormat() => {},
        PrintAdapterInfo(_) => {},
        CreateArray() => {
            new_resource = Resource::RandomArray(RandomArray::new(&resources));
            resources.random_arrays.push(RandomArray::new(&resources))
        }
        CreateAdapter() => {
            new_resource = Resource::GPUAdapter(GPUAdapter::new(&resources));
            resources.adapters.push(GPUAdapter::new(&resources))
        }
        CreateDevice(adapter) => {
            new_resource = Resource::GPUDevice(GPUDevice::new(adapter));
            resources.adapters[adapter.num].devices.push(GPUDevice::new(adapter))
        }
        PrintDeviceInfo(_) => {}
        WaitSubmittedWork(_) => {}
        CreateRandomBuffer(device) => {
            let mut rng = rand::thread_rng();
            let i = rng.gen_range(0..10);
            let random_buffer_use_case = String::from(
                match i {
                    0 => "GPUBufferUsage.COPY_SRC",
                    1 => "GPUBufferUsage.COPY_DST",
                    2 => "GPUBufferUsage.INDEX",
                    3 => "GPUBufferUsage.INDIRECT",
                    4 => "GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ",
                    5 => "GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE",
                    6 => "GPUBufferUsage.QUERY_RESOLVE",
                    7 => "GPUBufferUsage.STORAGE",
                    8 => "GPUBufferUsage.UNIFORM",
                    9 => "GPUBufferUsage.VERTEX",
                    _ => "GPUBufferUsage.UNIFORM",
                });

            new_resource = Resource::GPUBuffer(GPUBuffer::new(device, random_buffer_use_case.clone(), 0));
            resources.adapters[device.num_adapter].devices[device.num].buffers.push(GPUBuffer::new(device, random_buffer_use_case, 0))
        }
        WriteBuffer(_, _, _) => {}
        // CreateTexture(device) => {
        //     new_resource = Resource::GPUTexture(GPUTexture::new(device));
        //     resources.adapters[device.num_adapter].devices[device.num].textures.push(GPUTexture::new(device))
        // }
        CreateShaderModule(device) => {
            new_resource = Resource::GPUShaderModule(GPUShaderModule::new(device));
            resources.adapters[device.num_adapter].devices[device.num].shader_modules.push(GPUShaderModule::new(device))
        }
        CreateComputePipeline(device, _) => {
            new_resource = Resource::GPUComputePipeline(GPUComputePipeline::new(device));
            resources.adapters[device.num_adapter].devices[device.num].compute_pipelines.push(GPUComputePipeline::new(device))
        }
        CreateCommandEncoder(device) => {
            new_resource = Resource::GPUCommandEncoder(GPUCommandEncoder::new(device));
            resources.adapters[device.num_adapter].devices[device.num].command_encoders.push(GPUCommandEncoder::new(device))
        },
        CreateCommandBuffer(encoder) => {
            new_resource = Resource::GPUCommandBuffer(GPUCommandBuffer::new(encoder));
            resources.adapters[encoder.num_adapter].devices[encoder.num_device].command_encoders[encoder.num].command_buffer = Some(GPUCommandBuffer::new(encoder));
        },
        CreateComputePass(encoder) => {
            new_resource = Resource::GPUComputePassEncoder(GPUComputePassEncoder::new(encoder));
            resources.adapters[encoder.num_adapter].devices[encoder.num_device].command_encoders[encoder.num].compute_pass_encoders.push(GPUComputePassEncoder::new(encoder));
        },
        SetComputePassPipeline(compute_pass, compute_pipeline) => {
            resources.adapters[compute_pass.num_adapter].devices[compute_pass.num_device].command_encoders[compute_pass.num_encoder].compute_pass_encoders[compute_pass.num].pipeline = Some(compute_pipeline.clone());
        },
        SetComputePassBindGroupTemplate(device, compute_pass_encoder, _) => {
            let uniform_buffer = GPUBuffer::new(device, String::from("GPUBufferUsage.UNIFORM"), 0);
            let storage_buffer = GPUBuffer::new(device, String::from("GPUBufferUsage.STORAGE"), 1);
            let bind_group_layout = GPUBindGroupLayout::new(device);
            let bind_group = GPUBindGroup::new(device);
            new_resource = Resource::BindGroupTemplate(uniform_buffer.clone(), storage_buffer.clone(), bind_group_layout.clone(), bind_group.clone());
            resources.adapters[compute_pass_encoder.num_adapter]
                     .devices[compute_pass_encoder.num_device]
                     .buffers.extend([uniform_buffer, storage_buffer]);
            resources.adapters[compute_pass_encoder.num_adapter]
                     .devices[compute_pass_encoder.num_device]
                     .bind_group_layouts.extend([bind_group_layout]);
            resources.adapters[compute_pass_encoder.num_adapter]
                     .devices[compute_pass_encoder.num_device]
                     .bind_groups.extend([bind_group]);
            resources.adapters[compute_pass_encoder.num_adapter]
                     .devices[compute_pass_encoder.num_device]
                     .command_encoders[compute_pass_encoder.num_encoder]
                     .compute_pass_encoders[compute_pass_encoder.num]
                     .bindgroup_set = true;
        }
        SetComputePassWorkgroups(compute_pass_encoder) => {
            resources.adapters[compute_pass_encoder.num_adapter]
                     .devices[compute_pass_encoder.num_device]
                     .command_encoders[compute_pass_encoder.num_encoder]
                     .compute_pass_encoders[compute_pass_encoder.num]
                     .dispatched = true;
        },
        EndComputePass(compute_pass_encoder) => {
            resources.adapters[compute_pass_encoder.num_adapter].devices[compute_pass_encoder.num_device].command_encoders[compute_pass_encoder.num_encoder].compute_pass_encoders[compute_pass_encoder.num].finished = true;
        },
        SubmitQueueRandom(_, command_encoders) => {
            for command_encoder in command_encoders {
                resources.adapters[command_encoder.num_adapter].devices[command_encoder.num_device].command_encoders[command_encoder.num].submitted = true;
            }
        }
    }
    new_resource
}


fn available_api_calls(resources: &ProgramResources, terminate: bool) -> Vec<APICall> {
    let mut available_api_calls: Vec<APICall> = Vec::new();
    available_api_calls.extend([CreateAdapter(), CreateArray(), PrintWGSLLanguageFeatures(), PrintPreferredCanvasFormat(), /*CreateHTMLVideo()*/]);

    for adapter in &resources.adapters {
        available_api_calls.extend([CreateDevice(adapter.clone()), PrintAdapterInfo(adapter.clone())]);

        for device in &adapter.devices {
            available_api_calls.extend([CreateRandomBuffer(device.clone()), PrintDeviceInfo(device.clone()), WaitSubmittedWork(device.clone()), 
                        /*CreateTexture(device.clone()), CreateSampler(device.clone()), CreateQuerySet(device.clone()), */
                        CreateShaderModule(device.clone()), /*CreateBindGroup(device.clone()), CreateBindGroupLayout(device.clone()), CreatePipelineLayout(device.clone()), 
                        CreateRenderBundleEncoder(device.clone()),*/ CreateCommandEncoder(device.clone())]);

            for buffer in &device.buffers {
                if buffer.use_case.contains("GPUBufferUsage::CopyDst") {
                    for array in &resources.random_arrays {
                        available_api_calls.extend([WriteBuffer(device.clone(), buffer.clone(), array.clone())])
                    }
                }
            }

            let mut queue_command_encoders: Vec<GPUCommandEncoder> = Vec::new();

            for command_encoder in &device.command_encoders {
                let mut all_passes_finished = true;
                for compute_pass in &command_encoder.compute_pass_encoders {
                    // This restricts a compute pass encoder to be set up in the following order in the final javascript program for simplicity
                    if let None = &compute_pass.pipeline {
                        for compute_pipeline in &device.compute_pipelines {
                            available_api_calls.extend([SetComputePassPipeline(compute_pass.clone(), compute_pipeline.clone())])
                        }
                    } else if !compute_pass.bindgroup_set {
                        if let Some(compute_pipeline) = &compute_pass.pipeline {
                            available_api_calls.extend([SetComputePassBindGroupTemplate(device.clone(), compute_pass.clone(), compute_pipeline.clone())]);
                        }
                    } else if !compute_pass.dispatched {
                        available_api_calls.extend([SetComputePassWorkgroups(compute_pass.clone())])
                    } else if !compute_pass.finished {
                        available_api_calls.extend([EndComputePass(compute_pass.clone())])
                    }

                    if !compute_pass.finished {
                        all_passes_finished = false;
                    }
                }

                if let None = command_encoder.command_buffer {
                    if all_passes_finished {
                        available_api_calls.extend([CreateCommandBuffer(command_encoder.clone())]);
                        if command_encoder.compute_pass_encoders.len() < 2 {
                            available_api_calls.extend([CreateComputePass(command_encoder.clone())])
                        }
                    }
                }

                if let Some(_) = command_encoder.command_buffer {
                    if command_encoder.submitted == false && rand::random() {
                        queue_command_encoders.push(command_encoder.clone());
                    }
                }
            }

            if queue_command_encoders.len() > 0 {
                available_api_calls.extend([SubmitQueueRandom(device.clone(), queue_command_encoders)]);
            }

            // for html_video in &resources.html_videos {
            //     available_api_calls.extend([CreateExternalTexture(device.clone(), html_video.clone())])
            // }

            for shader_module in &device.shader_modules {
                available_api_calls.extend([CreateComputePipeline(device.clone(), shader_module.clone())/*, CreateRenderPipeline(device.clone(), shader_module.clone())*/])
            }
        }
    }

    if terminate {
        available_api_calls.retain(|call| match call {
            PrintWGSLLanguageFeatures() => false,
            PrintPreferredCanvasFormat() => false,
            CreateArray() => false,
            WriteBuffer(_, _, _) => false,
            CreateAdapter() => false,
            PrintAdapterInfo(_) => false,
            CreateDevice(_) => false,
            PrintDeviceInfo(_) => false,
            WaitSubmittedWork(_) => false,
            CreateRandomBuffer(_) => false,
            CreateCommandEncoder(_) => false,
            CreateComputePass(_) => false,
            CreateShaderModule(_) => false,
            EndComputePass(_) => true,
            CreateCommandBuffer(_) => true,
            CreateComputePipeline(_, _) => false,
            SetComputePassPipeline(_, _) => true,
            SetComputePassBindGroupTemplate(_, _, _) => true,
            SetComputePassWorkgroups(_) => true,
            SubmitQueueRandom(_, _) => true,
        });
    }

    available_api_calls
}