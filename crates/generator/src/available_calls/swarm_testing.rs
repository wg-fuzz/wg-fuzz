use crate::*;

pub fn filter_swarm(available_api_calls: &mut Vec<APICall>, swarm: [bool; 89]) {
    available_api_calls.retain(|call| match call {
        PrintWGSLLanguageFeatures() => swarm[0],
        PrintPreferredCanvasFormat() => swarm[1],
        CreateArray() => swarm[2],

        CreateAdapter() => swarm[3],
        PrintAdapterInfo(_) => swarm[4],

        CreateDevice(_) => swarm[5],
        PrintDeviceInfo(_) => swarm[6],
        DestroyDevice(_) => swarm[7],

        CreateRandomBuffer(_) => swarm[8],
        PrintBufferInfo(_) => swarm[9],
        ReadMappedBuffer(_) => swarm[10],
        WriteBuffer(_, _, _) => swarm[11],
        DestroyBuffer(_) => swarm[12],

        CreateRandomTexture(_) => swarm[13],
        PrintTextureInfo(_) => swarm[14],
        WriteTexture(_, _, _) => swarm[15],
        CreateTextureView(_) => swarm[16],
        DestroyTexture(_) => swarm[17],

        CreateSampler(_) => swarm[18],

        CreateOcclusionQuerySet(_) => swarm[19],
        PrintQuerySet(_) => swarm[20],
        DestroyQuerySet(_) => swarm[21],

        CreateShaderModuleCompute(_) => swarm[22],
        CreateShaderModuleRender(_) => swarm[23],
        PrintShaderModuleInfo(_) => swarm[24],

        CreateComputeBindGroupLayout(_) => swarm[25],
        CreateComputePipelineLayout(_, _) => swarm[26],

        CreateComputePipeline(_, _, _) => swarm[27],
        CreateComputePipelineAsync(_, _, _) => swarm[28],

        CreateRenderPipeline(_, _) => swarm[29],
        CreateRenderPipelineAsync(_, _) => swarm[30],

        CreateCommandEncoder(_) => swarm[31],
        ClearBuffer(_, _) => swarm[32],
        CopyBufferToBuffer(_, _, _) => swarm[33],
        CopyBufferToTexture(_, _, _) => swarm[34],
        CopyTextureToBuffer(_, _, _) => swarm[35],
        CopyTextureToTexture(_, _, _) => swarm[36],
        InsertCommandEncoderDebugMarker(_) => swarm[37],
        PushCommandEncoderDebugGroup(_) => swarm[38],
        PopCommandEncoderDebugGroup(_) => swarm[39],
        ResolveQuerySet(_, _, _) => swarm[40],

        CreateComputePass(_) => swarm[41],
        SetComputePassPipeline(_, _) => swarm[42],
        SetComputePassBindGroupTemplate(_, _, _) => swarm[43],
        SetComputePassWorkgroups(_) => swarm[44],
        SetComputePassWorkgroupsIndirect(_, _) => swarm[45],
        InsertComputePassDebugMarker(_) => swarm[46],
        PushComputePassDebugGroup(_) => swarm[47],
        PopComputePassDebugGroup(_) => swarm[48],
        EndComputePass(_) => swarm[49],

        CreateRenderPass(_, _, _) => swarm[50],
        SetRenderPassPipeline(_, _) => swarm[51],
        SetVertexBuffer(_, _) => swarm[52],
        SetIndexBuffer(_, _) => swarm[53],
        SetRenderPassBindGroupTemplate(_, _) => swarm[54],
        Draw(_) => swarm[55],
        DrawIndexed(_) => swarm[56],
        DrawIndirect(_, _) => swarm[57],
        DrawIndexedIndirect(_, _) => swarm[58],
        EndRenderPass(_) => swarm[59],

        InsertRenderPassDebugMarker(_) => swarm[60],
        PushRenderPassDebugGroup(_) => swarm[61],
        PopRenderPassDebugGroup(_) => swarm[62],
        SetBlendConstant(_) => swarm[63],
        SetScissorRect(_, _) => swarm[64],
        SetStencilReference(_) => swarm[65],
        SetViewport(_, _) => swarm[66],
        ExecuteBundles(_, _) => swarm[67],
        BeginOcclusionQuery(_, _) => swarm[68],
        EndOcclusionQuery(_) => swarm[69],

        CreateRenderBundleEncoder(_) => swarm[70],
        SetPipelineBundle(_, _) => swarm[71],
        SetVertexBufferBundle(_, _) => swarm[72],
        SetIndexBufferBundle(_, _) => swarm[73],
        SetBundleBindGroupTemplate(_, _) => swarm[74],
        DrawBundle(_) => swarm[75],
        DrawIndexedBundle(_) => swarm[76],
        DrawIndirectBundle(_, _) => swarm[77],
        DrawIndexedIndirectBundle(_, _) => swarm[78],
        EndBundle(_) => swarm[79],
        InsertDebugMarkerBundle(_) => swarm[80],
        PushDebugGroupBundle(_) => swarm[81],
        PopDebugGroupBundle(_) => swarm[82],

        CreateCommandBuffer(_) => swarm[83],
        SubmitQueueRandom(_, _) => swarm[84],
        WaitSubmittedWork(_) => swarm[85],

        PushRandomErrorScope(_) => swarm[86],
        PopErrorScope(_) => swarm[87],
        // AddUncapturedErrorListener(_) => swarm[88],
    });
}