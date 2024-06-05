use crate::*;

#[derive(Debug, Clone)]
pub enum Resource {
    ProgramResources(ProgramResources),
    GPUAdapter(GPUAdapter),
    GPUDevice(GPUDevice),
    GPUBuffer(GPUBuffer),
    GPUTexture(GPUTexture),
    GPUTextureView(GPUTextureView),
    GPUExternalTexture(GPUExternalTexture),
    HTMLVideo(HTMLVideo),
    GPUSampler(GPUSampler),
    GPUQuerySet(GPUQuerySet),
    GPUShaderModule(GPUShaderModule),
    GPUBindGroup(GPUBindGroup),
    GPUBindGroupLayout(GPUBindGroupLayout),
    GPUPipelineLayout(GPUPipelineLayout),
    GPUComputePipeline(GPUComputePipeline),
    GPURenderPipeline(GPURenderPipeline),
    GPURenderBundleEncoder(GPURenderBundleEncoder),
    GPUCommandEncoder(GPUCommandEncoder),
    GPUCommandBuffer(GPUCommandBuffer),
    GPUComputePassEncoder(GPUComputePassEncoder),
    GPURenderPassEncoder(GPURenderPassEncoder),
    BindGroupTemplate(GPUBuffer, GPUBuffer, GPUBindGroup),
    RandomArray(RandomArray),
    None
}