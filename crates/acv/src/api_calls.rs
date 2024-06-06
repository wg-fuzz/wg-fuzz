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

    CreateComputePass(GPUCommandEncoder),
    SetComputePassPipeline(GPUComputePassEncoder, GPUComputePipeline),
    SetComputePassBindGroupTemplate(GPUDevice, GPUComputePassEncoder, GPUComputePipeline),
    SetComputePassWorkgroups(GPUComputePassEncoder),
    SetComputePassWorkgroupsIndirect(GPUDevice, GPUComputePassEncoder),
    InsertComputePassDebugMarker(GPUComputePassEncoder),
    PushComputePassDebugGroup(GPUComputePassEncoder),
    PopComputePassDebugGroup(GPUComputePassEncoder),
    EndComputePass(GPUComputePassEncoder),

    CreateRenderPass(GPUCommandEncoder, GPUTextureView),
    SetRenderPassPipeline(GPURenderPassEncoder, GPURenderPipeline),
    SetVertexBuffer(GPURenderPassEncoder, GPUBuffer),
    SetIndexBuffer(GPURenderPassEncoder, GPUBuffer),
    // SetRenderPassBindGroup(GPURenderPassEncoder, GPUBindGroup),
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

    CreateCommandBuffer(GPUCommandEncoder),
    SubmitQueueRandom(GPUDevice, Vec<GPUCommandEncoder>),
    WaitSubmittedWork(GPUDevice),
    
    PushRandomErrorScope(GPUDevice),
    PopErrorScope(GPUDevice),
    // AddUncapturedErrorListener(GPUDevice),
}