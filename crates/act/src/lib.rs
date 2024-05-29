// act = abstract call tree

// module: writer

// for now just resource creation. use all fields eventually.

use art::*;

#[derive(Debug, Clone)]
pub struct Program {
    pub calls: Vec<APICall>
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