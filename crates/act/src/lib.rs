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
    CreateBuffer(GPUDevice),
    CreateTexture(GPUDevice),
    CreateExternalTexture(GPUDevice, HTMLVideo),
    CreateHTMLVideo(),
    CreateSampler(GPUDevice),
    CreateQuerySet(GPUDevice),
    CreateShaderModule(GPUDevice),
    CreateBindGroup(GPUDevice),
    CreateBindGroupLayout(GPUDevice),
    CreatePipelineLayout(GPUDevice),
    CreateComputePipeline(GPUDevice, GPUShaderModule),
    CreateRenderPipeline(GPUDevice, GPUShaderModule),
    CreateRenderBundleEncoder(GPUDevice),
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
            CreateDevice(_) => {
                return String::from("Device");
            },
            CreateBuffer(_) => {
                return String::from("Buffer");
            },
            CreateTexture(_) => {
                return String::from("Texture");
            },
            CreateExternalTexture(_, _) => {
                return String::from("ExternalTexture");
            },
            CreateHTMLVideo() => {
                return String::from("HTMLVideo");
            },
            CreateSampler(_) => {
                return String::from("Sampler");
            },
            CreateQuerySet(_) => {
                return String::from("QuerySet");
            },
            CreateShaderModule(_) => {
                return String::from("ShaderModule");
            },
            CreateBindGroup(_) => {
                return String::from("BindGroup");
            },
            CreateBindGroupLayout(_) => {
                return String::from("BindGroupLayout");
            },
            CreatePipelineLayout(_) => {
                return String::from("PipelineLayout");
            },
            CreateComputePipeline(_, _) => {
                return String::from("ComputePipeline");
            },
            CreateRenderPipeline(_, _) => {
                return String::from("RenderPipeline");
            },
            CreateRenderBundleEncoder(_) => {
                return String::from("RenderBundleEncoder");
            },
            CreateCommandEncoder(_) => {
                return String::from("CommandEncoder");
            }
        }
    }
}