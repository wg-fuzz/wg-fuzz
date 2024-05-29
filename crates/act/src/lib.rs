// act = abstract call tree

// module: writer

// for now just resource creation. use all fields eventually.

use std::fs;
use art::*;

#[derive(Debug, Clone)]
pub struct Program {
    pub calls: Vec<APICall>
}

impl Program {
    pub fn new() -> Program {
        Program {
            calls: Vec::new()
        }
    }

    pub fn to_javascript(self) -> String {
        let mut js = String::new();
        js.push_str(&fs::read_to_string("crates/wg-fuzz/code_samples/prelude.txt").unwrap());
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