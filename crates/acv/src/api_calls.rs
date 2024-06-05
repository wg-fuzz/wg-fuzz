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
    WaitSubmittedWork(GPUDevice),

    CreateRandomBuffer(GPUDevice),
    WriteBuffer(GPUDevice, GPUBuffer, RandomArray),
    PrintBufferInfo(GPUBuffer),
    DestroyBuffer(GPUBuffer),
    ReadMappedBuffer(GPUBuffer),

    CreateRandomTexture(GPUDevice),
    WriteTexture(GPUDevice, GPUTexture, RandomArray),
    PrintTextureInfo(GPUTexture),
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

    CreateCommandBuffer(GPUCommandEncoder),
    SubmitQueueRandom(GPUDevice, Vec<GPUCommandEncoder>),
    PushRandomErrorScope(GPUDevice),
    PopErrorScope(GPUDevice),
    // AddUncapturedErrorListener(GPUDevice),
}