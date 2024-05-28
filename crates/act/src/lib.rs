// act = abstract call tree

// module: writer

// for now just resource creation. use all fields eventually.

use art::*;

#[derive(Debug)]
pub struct Program<'a> {
    pub calls: Vec<APICall<'a>>
}

#[derive(Debug)]
pub enum APICall<'a> {
    CreateAdapter(),
    CreateDevice(&'a GPUAdapter),
    CreateBuffer(&'a GPUDevice),
    CreateTexture(&'a GPUDevice),
    CreateExternalTexture(&'a GPUDevice, &'a HTMLVideo),
    CreateHTMLVideo(),
    CreateSampler(&'a GPUDevice),
    CreateQuerySet(&'a GPUDevice),
    CreateShaderModule(&'a GPUDevice),
    CreateBindGroup(&'a GPUDevice),
    CreateBindGroupLayout(&'a GPUDevice),
    CreatePipelineLayout(&'a GPUDevice),
    CreateComputePipeline(&'a GPUDevice, &'a GPUShaderModule),
    CreateRenderPipeline(&'a GPUDevice, &'a GPUShaderModule),
    CreateRenderBundleEncoder(&'a GPUDevice),
    CreateCommandEncoder(&'a GPUDevice),
}