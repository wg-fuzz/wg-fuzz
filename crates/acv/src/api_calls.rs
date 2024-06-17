use crate::*;

#[derive(Debug, Clone)]
pub enum APICall {
    PrintWGSLLanguageFeatures(),
    PrintPreferredCanvasFormat(),
    CreateArray(),

    CreateAdapter(),
    PrintAdapterInfo(GPUAdapter),

    CreateDevice(GPUAdapter),
    PrintDeviceInfo(GPUDevice),
    DestroyDevice(GPUDevice),

    CreateRandomBuffer(GPUDevice),
    PrintBufferInfo(GPUBuffer),
    ReadMappedBuffer(GPUBuffer),
    WriteBuffer(GPUDevice, GPUBuffer, RandomArray),
    DestroyBuffer(GPUBuffer),

    CreateRandomTexture(GPUDevice),
    PrintTextureInfo(GPUTexture),
    WriteTexture(GPUDevice, GPUTexture, RandomArray),
    CreateTextureView(GPUTexture),
    DestroyTexture(GPUTexture),

    CreateSampler(GPUDevice),

    CreateOcclusionQuerySet(GPUDevice),
    PrintQuerySet(GPUQuerySet),
    DestroyQuerySet(GPUQuerySet),

    CreateShaderModuleCompute(GPUDevice),
    CreateShaderModuleRender(GPUDevice),
    PrintShaderModuleInfo(GPUShaderModule),

    CreateComputeBindGroupLayout(GPUDevice),
    CreateComputePipelineLayout(GPUDevice, GPUBindGroupLayout),

    CreateComputePipeline(GPUDevice, GPUShaderModule, GPUPipelineLayout),
    CreateComputePipelineAsync(GPUDevice, GPUShaderModule, GPUPipelineLayout),

    CreateRenderPipeline(GPUDevice, GPUShaderModule),
    CreateRenderPipelineAsync(GPUDevice, GPUShaderModule),
    
    CreateCommandEncoder(GPUDevice),
    ClearBuffer(GPUCommandEncoder, GPUBuffer),
    CopyBufferToBuffer(GPUCommandEncoder, GPUBuffer, GPUBuffer),
    CopyBufferToTexture(GPUCommandEncoder, GPUBuffer, GPUTexture),
    CopyTextureToBuffer(GPUCommandEncoder, GPUTexture, GPUBuffer),
    CopyTextureToTexture(GPUCommandEncoder, GPUTexture, GPUTexture),
    InsertCommandEncoderDebugMarker(GPUCommandEncoder),
    PushCommandEncoderDebugGroup(GPUCommandEncoder),
    PopCommandEncoderDebugGroup(GPUCommandEncoder),
    ResolveQuerySet(GPUCommandEncoder, GPUQuerySet, GPUBuffer),

    CreateComputePass(GPUCommandEncoder),
    SetComputePassPipeline(GPUComputePassEncoder, GPUComputePipeline),
    SetComputePassBindGroupTemplate(GPUDevice, GPUComputePassEncoder, GPUComputePipeline),
    SetComputePassWorkgroups(GPUComputePassEncoder),
    SetComputePassWorkgroupsIndirect(GPUDevice, GPUComputePassEncoder),
    InsertComputePassDebugMarker(GPUComputePassEncoder),
    PushComputePassDebugGroup(GPUComputePassEncoder),
    PopComputePassDebugGroup(GPUComputePassEncoder),
    EndComputePass(GPUComputePassEncoder),

    CreateRenderPass(GPUCommandEncoder, GPUTextureView, Option<GPUQuerySet>),
    SetRenderPassPipeline(GPURenderPassEncoder, GPURenderPipeline),
    SetVertexBuffer(GPURenderPassEncoder, GPUBuffer),
    SetIndexBuffer(GPURenderPassEncoder, GPUBuffer),
    SetRenderPassBindGroupTemplate(GPUDevice, GPURenderPassEncoder),
    Draw(GPURenderPassEncoder),
    DrawIndexed(GPURenderPassEncoder),
    DrawIndirect(GPURenderPassEncoder, GPUBuffer),
    DrawIndexedIndirect(GPURenderPassEncoder, GPUBuffer),
    EndRenderPass(GPURenderPassEncoder),

    InsertRenderPassDebugMarker(GPURenderPassEncoder),
    PushRenderPassDebugGroup(GPURenderPassEncoder),
    PopRenderPassDebugGroup(GPURenderPassEncoder),
    SetBlendConstant(GPURenderPassEncoder),
    SetScissorRect(GPURenderPassEncoder, GPUTexture),
    SetStencilReference(GPURenderPassEncoder),
    SetViewport(GPURenderPassEncoder, GPUTexture),
    ExecuteBundles(GPURenderPassEncoder, Vec<GPURenderBundleEncoder>),
    BeginOcclusionQuery(GPURenderPassEncoder, GPUQuerySet),
    EndOcclusionQuery(GPURenderPassEncoder),

    CreateRenderBundleEncoder(GPUDevice),
    SetPipelineBundle(GPURenderBundleEncoder, GPURenderPipeline),
    SetVertexBufferBundle(GPURenderBundleEncoder, GPUBuffer),
    SetIndexBufferBundle(GPURenderBundleEncoder, GPUBuffer),
    SetBundleBindGroupTemplate(GPUDevice, GPURenderBundleEncoder),
    DrawBundle(GPURenderBundleEncoder),
    DrawIndexedBundle(GPURenderBundleEncoder),
    DrawIndirectBundle(GPURenderBundleEncoder, GPUBuffer),
    DrawIndexedIndirectBundle(GPURenderBundleEncoder, GPUBuffer),
    EndBundle(GPURenderBundleEncoder),
    InsertDebugMarkerBundle(GPURenderBundleEncoder),
    PushDebugGroupBundle(GPURenderBundleEncoder),
    PopDebugGroupBundle(GPURenderBundleEncoder),

    CreateCommandBuffer(GPUCommandEncoder),
    SubmitQueueRandom(GPUDevice, Vec<GPUCommandEncoder>),
    WaitSubmittedWork(GPUDevice),
    
    PushRandomErrorScope(GPUDevice),
    PopErrorScope(GPUDevice),
    AddUncapturedErrorListener(GPUDevice),
}