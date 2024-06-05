use crate::*;
use art::enum_wrapper::Resource;

pub fn update_program_resources(resources: &mut ProgramResources, call: &APICall) -> Resource {
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
        PrintBufferInfo(_) => {}
        DestroyBuffer(buffer) => {
            resources.adapters[buffer.num_adapter].devices[buffer.num_device].buffers[buffer.num].destroyed = true;
        }
        ReadMappedBuffer(_) => {}
        ClearBuffer(_, _) => {}
        CopyBufferToBuffer(_, _, _) => {}
        CopyBufferToTexture(_, _, _) => {}
        CopyTextureToBuffer(_, _, _) => {}
        CopyTextureToTexture(_, _, _) => {}
        CreateRandomTexture(device) => {
            let mut rng = rand::thread_rng();
            // let i = rng.gen_range(0..3);
            // let random_dimension = String::from(
            //     match i {
            //         0 => "\"1d\"",
            //         1 => "\"2d\"",
            //         2 => "\"3d\"",
            //         _ => "\"2d\"",
            //     });

            // most of the time it's r32float by default '_' pattern
            let i = rng.gen_range(0..200);
            let random_format = String::from(
                match i {
                    0 => "\"r8unorm\"",
                    1 => "\"r8snorm\"",
                    2 => "\"r8uint\"",
                    3 => "\"r8sint\"",
                
                    // 16-bit formats
                    4 => "\"r16uint\"",
                    5 => "\"r16sint\"",
                    6 => "\"r16float\"",
                    7 => "\"rg8unorm\"",
                    8 => "\"rg8snorm\"",
                    9 => "\"rg8uint\"",
                    10 => "\"rg8sint\"",
                
                    // 32-bit formats
                    11 => "\"r32uint\"",
                    12 => "\"r32sint\"",
                    13 => "\"r32float\"",
                    14 => "\"rg16uint\"",
                    15 => "\"rg16sint\"",
                    16 => "\"rg16float\"",
                    17 => "\"rgba8unorm\"",
                    18 => "\"rgba8unorm-srgb\"",
                    19 => "\"rgba8snorm\"",
                    20 => "\"rgba8uint\"",
                    21 => "\"rgba8sint\"",
                    22 => "\"bgra8unorm\"",
                    23 => "\"bgra8unorm-srgb\"",
                    // Packed 32-bit formats
                    24 => "\"rgb9e5ufloat\"",
                    25 => "\"rgb10a2uint\"",
                    26 => "\"rgb10a2unorm\"",
                    27 => "\"rg11b10ufloat\"",
                
                    // 64-bit formats
                    28 => "\"rg32uint\"",
                    29 => "\"rg32sint\"",
                    30 => "\"rg32float\"",
                    31 => "\"rgba16uint\"",
                    32 => "\"rgba16sint\"",
                    33 => "\"rgba16float\"",
                
                    // 128-bit formats
                    34 => "\"rgba32uint\"",
                    35 => "\"rgba32sint\"",
                    36 => "\"rgba32float\"",
                
                    // Depth/stencil formats
                    37 => "\"stencil8\"",
                    38 => "\"depth16unorm\"",
                    39 => "\"depth24plus\"",
                    40 => "\"depth24plus-stencil8\"",
                    41 => "\"depth32float\"",
                
                    // "depth32float-stencil8" feature
                    /*42 => "\"depth32float-stencil8\"",
                
                    // BC compressed formats usable if "texture-compression-bc" is both
                    // supported by the device/user agent and enabled in requestDevice.
                    43 => "\"bc1-rgba-unorm\"",
                    44 => "\"bc1-rgba-unorm-srgb\"",
                    45 => "\"bc2-rgba-unorm\"",
                    46 => "\"bc2-rgba-unorm-srgb\"",
                    47 => "\"bc3-rgba-unorm\"",
                    48 => "\"bc3-rgba-unorm-srgb\"",
                    49 => "\"bc4-r-unorm\"",
                    50 => "\"bc4-r-snorm\"",
                    51 => "\"bc5-rg-unorm\"",
                    52 => "\"bc5-rg-snorm\"",
                    53 => "\"bc6h-rgb-ufloat\"",
                    54 => "\"bc6h-rgb-float\"",
                    55 => "\"bc7-rgba-unorm\"",
                    56 => "\"bc7-rgba-unorm-srgb\"",
                
                    // ETC2 compressed formats usable if "texture-compression-etc2" is both
                    // supported by the device/user agent and enabled in requestDevice.
                    57 => "\"etc2-rgb8unorm\"",
                    58 => "\"etc2-rgb8unorm-srgb\"",
                    59 => "\"etc2-rgb8a1unorm\"",
                    60 => "\"etc2-rgb8a1unorm-srgb\"",
                    61 => "\"etc2-rgba8unorm\"",
                    62 => "\"etc2-rgba8unorm-srgb\"",
                    63 => "\"eac-r11unorm\"",
                    64 => "\"eac-r11snorm\"",
                    65 => "\"eac-rg11unorm\"",
                    66 => "\"eac-rg11snorm\"",
                
                    // ASTC compressed formats usable if "texture-compression-astc" is both
                    // supported by the device/user agent and enabled in requestDevice.
                    67 => "\"astc-4x4-unorm\"",
                    68 => "\"astc-4x4-unorm-srgb\"",
                    69 => "\"astc-5x4-unorm\"",
                    70 => "\"astc-5x4-unorm-srgb\"",
                    71 => "\"astc-5x5-unorm\"",
                    72 => "\"astc-5x5-unorm-srgb\"",
                    73 => "\"astc-6x5-unorm\"",
                    74 => "\"astc-6x5-unorm-srgb\"",
                    75 => "\"astc-6x6-unorm\"",
                    76 => "\"astc-6x6-unorm-srgb\"",
                    77 => "\"astc-8x5-unorm\"",
                    78 => "\"astc-8x5-unorm-srgb\"",
                    79 => "\"astc-8x6-unorm\"",
                    80 => "\"astc-8x6-unorm-srgb\"",
                    81 => "\"astc-8x8-unorm\"",
                    82 => "\"astc-8x8-unorm-srgb\"",
                    83 => "\"astc-10x5-unorm\"",
                    84 => "\"astc-10x5-unorm-srgb\"",
                    85 => "\"astc-10x6-unorm\"",
                    86 => "\"astc-10x6-unorm-srgb\"",
                    87 => "\"astc-10x8-unorm\"",
                    88 => "\"astc-10x8-unorm-srgb\"",
                    89 => "\"astc-10x10-unorm\"",
                    90 => "\"astc-10x10-unorm-srgb\"",
                    91 => "\"astc-12x10-unorm\"",
                    92 => "\"astc-12x10-unorm-srgb\"",
                    93 => "\"astc-12x12-unorm\"",
                    94 => "\"astc-12x12-unorm-srgb\"",*/
                    _ => "\"r32float\"",
                });
            
            let i = rng.gen_range(0..5);
            let random_usage = String::from(
                match i {
                    0 => "GPUTextureUsage.COPY_SRC",
                    1 => "GPUTextureUsage.COPY_DST",
                    2 => "GPUTextureUsage.RENDER_ATTACHMENT",
                    3 => "GPUTextureUsage.STORAGE_BINDING",
                    4 => "GPUTextureUsage.TEXTURE_BINDING",
                    _ => "GPUTextureUsage.COPY_SRC"
                });

            new_resource = Resource::GPUTexture(GPUTexture::new(device, random_usage.clone(), random_format.clone()));
            resources.adapters[device.num_adapter].devices[device.num].textures.push(GPUTexture::new(device, random_usage, random_format))
        }
        WriteTexture(_, _, _) => {}
        PrintTextureInfo(_) => {}
        CreateTextureView(texture) => {
            new_resource = Resource::GPUTextureView(GPUTextureView::new(texture));
            resources.adapters[texture.num_adapter].devices[texture.num_device].textures[texture.num].texture_views.push(GPUTextureView::new(texture))
        }
        DestroyTexture(texture) => {
            resources.adapters[texture.num_adapter].devices[texture.num_device].textures[texture.num].destroyed = true;
        }
        CreateSampler(device) => {
            new_resource = Resource::GPUSampler(GPUSampler::new(device));
            resources.adapters[device.num_adapter].devices[device.num].samplers.push(GPUSampler::new(device))
        }
        CreateShaderModuleCompute(device) => {
            new_resource = Resource::GPUShaderModule(GPUShaderModule::new(device, String::from("compute")));
            resources.adapters[device.num_adapter].devices[device.num].shader_modules.push(GPUShaderModule::new(device, String::from("compute")))
        }
        CreateShaderModuleRender(device) => {
            new_resource = Resource::GPUShaderModule(GPUShaderModule::new(device, String::from("render")));
            resources.adapters[device.num_adapter].devices[device.num].shader_modules.push(GPUShaderModule::new(device, String::from("render")))
        }
        PrintShaderModuleInfo(_) => {}
        CreateComputeBindGroupLayout(device) => {
            new_resource = Resource::GPUBindGroupLayout(GPUBindGroupLayout::new(device));
            resources.adapters[device.num_adapter].devices[device.num].bind_group_layouts.push(GPUBindGroupLayout::new(device))
        }
        CreateComputePipelineLayout(device, _) => {
            new_resource = Resource::GPUPipelineLayout(GPUPipelineLayout::new(device));
            resources.adapters[device.num_adapter].devices[device.num].pipeline_layouts.push(GPUPipelineLayout::new(device))
        }
        CreateComputePipeline(device, _, _) => {
            new_resource = Resource::GPUComputePipeline(GPUComputePipeline::new(device));
            resources.adapters[device.num_adapter].devices[device.num].compute_pipelines.push(GPUComputePipeline::new(device))
        }
        CreateComputePipelineAsync(device, _, _) => {
            new_resource = Resource::GPUComputePipeline(GPUComputePipeline::new(device));
            resources.adapters[device.num_adapter].devices[device.num].compute_pipelines.push(GPUComputePipeline::new(device))
        }
        CreateRenderPipeline(device, _) => {
            new_resource = Resource::GPURenderPipeline(GPURenderPipeline::new(device));
            resources.adapters[device.num_adapter].devices[device.num].render_pipelines.push(GPURenderPipeline::new(device))
        }
        CreateRenderPipelineAsync(device, _) => {
            new_resource = Resource::GPURenderPipeline(GPURenderPipeline::new(device));
            resources.adapters[device.num_adapter].devices[device.num].render_pipelines.push(GPURenderPipeline::new(device))
        }
        CreateCommandEncoder(device) => {
            new_resource = Resource::GPUCommandEncoder(GPUCommandEncoder::new(device));
            resources.adapters[device.num_adapter].devices[device.num].command_encoders.push(GPUCommandEncoder::new(device))
        },
        InsertCommandEncoderDebugMarker(_) => {}
        PushCommandEncoderDebugGroup(command_encoder) => {
            resources.adapters[command_encoder.num_adapter].devices[command_encoder.num_device].command_encoders[command_encoder.num].debug_group_active = true;
        }
        PopCommandEncoderDebugGroup(command_encoder) => {
            resources.adapters[command_encoder.num_adapter].devices[command_encoder.num_device].command_encoders[command_encoder.num].debug_group_active = false;
        }
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
            // let bind_group_layout = GPUBindGroupLayout::new(device);
            let bind_group = GPUBindGroup::new(device);
            new_resource = Resource::BindGroupTemplate(uniform_buffer.clone(), storage_buffer.clone(), bind_group.clone());
            resources.adapters[compute_pass_encoder.num_adapter]
                     .devices[compute_pass_encoder.num_device]
                     .buffers.extend([uniform_buffer, storage_buffer]);
            // resources.adapters[compute_pass_encoder.num_adapter]
            //          .devices[compute_pass_encoder.num_device]
            //          .bind_group_layouts.extend([bind_group_layout]);
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
        }
        SetComputePassWorkgroupsIndirect(device, compute_pass_encoder) => {
            new_resource = Resource::GPUBuffer(GPUBuffer::new(device, String::from("GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT"), 0));
            resources.adapters[compute_pass_encoder.num_adapter]
                     .devices[compute_pass_encoder.num_device]
                     .buffers.push(GPUBuffer::new(device, String::from("GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT"), 0));
            resources.adapters[compute_pass_encoder.num_adapter]
                     .devices[compute_pass_encoder.num_device]
                     .command_encoders[compute_pass_encoder.num_encoder]
                     .compute_pass_encoders[compute_pass_encoder.num]
                     .dispatched = true;
        }
        InsertComputePassDebugMarker(_) => {}
        PushComputePassDebugGroup(compute_pass_encoder) => {
            resources.adapters[compute_pass_encoder.num_adapter]
                     .devices[compute_pass_encoder.num_device]
                     .command_encoders[compute_pass_encoder.num_encoder]
                     .compute_pass_encoders[compute_pass_encoder.num].debug_group_active = true;
        }
        PopComputePassDebugGroup(compute_pass_encoder) => {
            resources.adapters[compute_pass_encoder.num_adapter]
                     .devices[compute_pass_encoder.num_device]
                     .command_encoders[compute_pass_encoder.num_encoder]
                     .compute_pass_encoders[compute_pass_encoder.num].debug_group_active = false;
        }
        EndComputePass(compute_pass_encoder) => {
            resources.adapters[compute_pass_encoder.num_adapter].devices[compute_pass_encoder.num_device].command_encoders[compute_pass_encoder.num_encoder].compute_pass_encoders[compute_pass_encoder.num].finished = true;
        },
        CreateRenderPass(encoder, _) => {
            new_resource = Resource::GPURenderPassEncoder(GPURenderPassEncoder::new(encoder));
            resources.adapters[encoder.num_adapter].devices[encoder.num_device].command_encoders[encoder.num].render_pass_encoders.push(GPURenderPassEncoder::new(encoder));
        }
        SubmitQueueRandom(_, command_encoders) => {
            for command_encoder in command_encoders {
                resources.adapters[command_encoder.num_adapter].devices[command_encoder.num_device].command_encoders[command_encoder.num].submitted = true;
            }
        },
        //AddUncapturedErrorListener(_) => {}
        PushRandomErrorScope(device) => {
            resources.adapters[device.num_adapter].devices[device.num].error_scope_active = true;
        },
        PopErrorScope(device) => {
            resources.adapters[device.num_adapter].devices[device.num].error_scope_active = false;
        },
        DestroyDevice(device) => {
            resources.adapters[device.num_adapter].devices[device.num].destroyed = true;
        }
    }
    new_resource
}