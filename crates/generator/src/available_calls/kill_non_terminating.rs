use crate::*;

pub fn kill_non_terminating(available_api_calls: &mut Vec<APICall>) {
    available_api_calls.retain(|call| match call {
        PrintWGSLLanguageFeatures() => false,
        PrintPreferredCanvasFormat() => false,
        CreateArray() => false,

        CreateAdapter() => false,
        PrintAdapterInfo(_) => false,

        CreateDevice(_) => false,
        PrintDeviceInfo(_) => false,
        DestroyDevice(_) => false,

        CreateRandomBuffer(_) => false,
        PrintBufferInfo(_) => false,
        ReadMappedBuffer(_) => false,
        WriteBuffer(_, _, _) => false,
        DestroyBuffer(_) => false,

        CreateRandomTexture(_) => false,
        PrintTextureInfo(_) => false,
        WriteTexture(_, _, _) => false,
        CreateTextureView(_) => false,
        DestroyTexture(_) => false,

        CreateSampler(_) => false,

        CreateOcclusionQuerySet(_) => false,
        PrintQuerySet(_) => false,
        DestroyQuerySet(_) => false,

        CreateShaderModuleCompute(_) => false,
        CreateShaderModuleRender(_) => false,
        PrintShaderModuleInfo(_) => false,

        CreateComputeBindGroupLayout(_) => false,
        CreateComputePipelineLayout(_, _) => false,

        CreateComputePipeline(_, _, _) => false,
        CreateComputePipelineAsync(_, _, _) => false,

        CreateRenderPipeline(_, _) => false,
        CreateRenderPipelineAsync(_, _) => false,

        CreateCommandEncoder(_) => false,
        ClearBuffer(_, _) => false,
        CopyBufferToBuffer(_, _, _) => false,
        CopyBufferToTexture(_, _, _) => false,
        CopyTextureToBuffer(_, _, _) => false,
        CopyTextureToTexture(_, _, _) => false,
        InsertCommandEncoderDebugMarker(_) => false,
        PushCommandEncoderDebugGroup(_) => false,
        PopCommandEncoderDebugGroup(_) => true,
        ResolveQuerySet(_, _, _) => false,

        CreateComputePass(_) => false,
        SetComputePassPipeline(_, _) => true,
        SetComputePassBindGroupTemplate(_, _, _) => true,
        SetComputePassWorkgroups(_) => true,
        SetComputePassWorkgroupsIndirect(_, _) => true,
        InsertComputePassDebugMarker(_) => false,
        PushComputePassDebugGroup(_) => false,
        PopComputePassDebugGroup(_) => true,
        EndComputePass(_) => true,

        CreateRenderPass(_, _, _) => false,
        SetRenderPassPipeline(_, _) => true,
        SetVertexBuffer(_, _) => true,
        SetIndexBuffer(_, _) => true,
        SetRenderPassBindGroupTemplate(_, _) => true,
        Draw(_) => true,
        DrawIndexed(_) => true,
        DrawIndirect(_, _) => true,
        DrawIndexedIndirect(_, _) => true,
        EndRenderPass(_) => true,

        InsertRenderPassDebugMarker(_) => false,
        PushRenderPassDebugGroup(_) => false,
        PopRenderPassDebugGroup(_) => true,
        SetBlendConstant(_) => false,
        SetScissorRect(_, _) => false,
        SetStencilReference(_) => false,
        SetViewport(_, _) => false,
        ExecuteBundles(_, _) => false,
        BeginOcclusionQuery(_, _) => false,
        EndOcclusionQuery(_) => true,

        CreateRenderBundleEncoder(_) => false,
        SetPipelineBundle(_, _) => false,
        SetVertexBufferBundle(_, _) => false,
        SetIndexBufferBundle(_, _) => false,
        // SetBundleBindGroup(_, _) => false,
        DrawBundle(_) => false,
        DrawIndexedBundle(_) => false,
        DrawIndirectBundle(_, _) => false,
        DrawIndexedIndirectBundle(_, _) => false,
        EndBundle(_) => false,
        InsertDebugMarkerBundle(_) => false,
        PushDebugGroupBundle(_) => false,
        PopDebugGroupBundle(_) => false,

        CreateCommandBuffer(_) => true,
        SubmitQueueRandom(_, _) => true,
        WaitSubmittedWork(_) => false,

        PushRandomErrorScope(_) => false,
        PopErrorScope(_) => true,
        // AddUncapturedErrorListener(_) => false,
    });
}