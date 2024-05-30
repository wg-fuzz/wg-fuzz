// act = abstract call tree

// for now just resource creation. use all fields eventually.

use std::fs;
use art::*;

use APICall::*;

#[derive(Debug, Clone)]
pub struct Program {
    pub calls: Vec<(APICall, Resource)>
}

impl Program {
    pub fn new() -> Program {
        Program {
            calls: Vec::new()
        }
    }

    pub fn to_javascript(&self) -> String {
        let mut js = String::new();
        js.push_str(&fs::read_to_string("crates/wg-fuzz/code_samples/prelude.txt").unwrap());
        for (call, created_resource) in &self.calls {
            js.push_str("\n\n    ");
            js.push_str(&call.to_javascript(created_resource));
        }
        js.push_str(&fs::read_to_string("crates/wg-fuzz/code_samples/postlude.txt").unwrap());
        js
    }
}

#[derive(Debug, Clone)]
pub enum APICall {
    CreateAdapter(),
    CreateDevice(GPUAdapter),
    // CreateBuffer(GPUDevice),
    // CreateTexture(GPUDevice),
    // CreateExternalTexture(GPUDevice, HTMLVideo),
    // CreateHTMLVideo(),
    // CreateSampler(GPUDevice),
    // CreateQuerySet(GPUDevice),
    // CreateShaderModule(GPUDevice),
    // CreateBindGroup(GPUDevice),
    // CreateBindGroupLayout(GPUDevice),
    // CreatePipelineLayout(GPUDevice),
    // CreateComputePipeline(GPUDevice, GPUShaderModule),
    // CreateRenderPipeline(GPUDevice, GPUShaderModule),
    // CreateRenderBundleEncoder(GPUDevice),
    CreateCommandEncoder(GPUDevice),
}

impl APICall {
    pub fn to_javascript(&self, created_resource: &Resource) -> String {
        match self {
            CreateAdapter() => {
                if let Resource::GPUAdapter(adapter) = created_resource {
                    return format!("const {} = await navigator.gpu.requestAdapter();", adapter.var_name);
                } else {
                    panic!("created_resource for CreateAdapter() call is not an adapter!")
                }
            },
            CreateDevice(adapter) => {
                if let Resource::GPUDevice(device) = created_resource {
                    return format!("const {} = await {}.requestDevice();", device.var_name, adapter.var_name);
                } else {
                    panic!("created_resource for CreateDevice() call is not a device!")
                }
            },
            // CreateBuffer(device) => {
            //     if let Resource::GPUBuffer(buffer) = created_resource {
            //         return format!("const {} = {}.createBuffer({{ size: 1000, usage: GPUBufferUsage.STORAGE }});", buffer.var_name, device.var_name);
            //     } else {
            //         panic!("created_resource for CreateBuffer() call is not a buffer!")
            //     }
            // },
            // CreateTexture(device) => {
            //     if let Resource::GPUTexture(texture) = created_resource {
            //         return format!("const {} = {}.createTexture({{ size: [1000], usage: GPUTextureUsage.STORAGE_BINDING, format: \"r8unorm\" }});", texture.var_name, device.var_name);
            //     } else {
            //         panic!("created_resource for CreateTexture() call is not a texture!")
            //     }
            // },
            // CreateExternalTexture(device, html_video) => {
            //     if let Resource::GPUExternalTexture(external_texture) = created_resource {
            //         return format!("const {} = {}.importExternalTexture({{  }});", adapter.var_name);
            //     } else {
            //         panic!("created_resource for CreateExternalTexture() call is not an external texture!")
            //     }
            // },
            // CreateHTMLVideo() => {
            //     if let Resource::HTMLVideo(html_video) = created_resource {
            //         return format!("const {} = await navigator.gpu.requestAdapter();", adapter.var_name);
            //     } else {
            //         panic!("created_resource for CreateHTMLVideo() call is not a HTML video!")
            //     }
            // },
            // CreateSampler(device) => {
            //     if let Resource::GPUSampler(sampler) = created_resource {
            //         return format!("const {} = {}.createSampler();", sampler.var_name, device.var_name);
            //     } else {
            //         panic!("created_resource for CreateSampler() call is not a sampler!")
            //     }
            // },
            // CreateQuerySet(device) => {
            //     if let Resource::GPUQuerySet(query_set) = created_resource {
            //         return format!("const {} = {}.createQuerySet({{ count: 100, type: \"occlusion\" }});", query_set.var_name, device.var_name);
            //     } else {
            //         panic!("created_resource for CreateQuerySet() call is not a query set!")
            //     }
            // },
            // CreateShaderModule(device) => {
            //     if let Resource::GPUShaderModule(shader_module) = created_resource {
            //         return format!("const {} = {}.createShaderModule({{  }});", adapter.var_name);
            //     } else {
            //         panic!("created_resource for CreateShaderModule() call is not a shader module!")
            //     }
            // },
            // CreateBindGroup(device) => {
            //     if let Resource::GPUBindGroup(bind_group) = created_resource {
            //         return format!("const {} = {}.createBindGroup({{ entries: [], layout: \"auto\" }});", bind_group.var_name, device.var_name);
            //     } else {
            //         panic!("created_resource for CreateBindGroup() call is not an bind group!")
            //     }
            // },
            // CreateBindGroupLayout(device) => {
            //     if let Resource::GPUBindGroupLayout(bind_group_layout) = created_resource {
            //         return format!("const {} = {}.createBindGroupLayout({{ entries: [] }});", bind_group_layout.var_name, device.var_name);
            //     } else {
            //         panic!("created_resource for CreateBindGroupLayout() call is not a bind group layout!")
            //     }
            // },
            // CreatePipelineLayout(device) => {
            //     if let Resource::GPUPipelineLayout(pipeline_layout) = created_resource {
            //         return format!("const {} = {}.createPipelineLayout({{ bindGroupLayouts: [] }});", pipeline_layout.var_name, device.var_name);
            //     } else {
            //         panic!("created_resource for CreatePipelineLayout() call is not a pipeline layout!")
            //     }
            // },
            // CreateComputePipeline(device, shader_module) => {
            //     if let Resource::GPUComputePipeline(compute_pipeline) = created_resource {
            //         return format!("const {} = {}.createComputePipeline({{ layout: \"auto\", compute: {{ module:  }} }});", adapter.var_name);
            //     } else {
            //         panic!("created_resource for CreateComputePipeline() call is not a compute pipeline!")
            //     }
            // },
            // CreateRenderPipeline(device, shader_module) => {
            //     if let Resource::GPURenderPipeline(render_pipeline) = created_resource {
            //         return format!("const {} = await navigator.gpu.requestAdapter();", adapter.var_name);
            //     } else {
            //         panic!("created_resource for CreateRenderPipeline() call is not a compute pipeline!")
            //     }
            // },
            // CreateRenderBundleEncoder(device) => {
            //     if let Resource::GPURenderBundleEncoder(render_bundle_encoder) = created_resource {
            //         return format!("const {} = {}.createRenderBundleEncoder({{ colorFormats: [] }});", render_bundle_encoder.var_name, device.var_name);
            //     } else {
            //         panic!("created_resource for CreateRenderBundleEncoder() call is not a render bundle encoder!")
            //     }
            // },
            CreateCommandEncoder(device) => {
                if let Resource::GPUCommandEncoder(command_encoder) = created_resource {
                    return format!("const {} = {}.createCommandEncoder();", command_encoder.var_name, device.var_name);
                } else {
                    panic!("created_resource for CreateCommandEncoder() call is not a command encoder!")
                }
            }
        }
    }
}