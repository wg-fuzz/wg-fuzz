use crate::*;
use art::enum_wrapper::Resource;

mod program_setup;
use program_setup::*;

mod primitives;
use primitives::*;

mod pipeline_setup;
use pipeline_setup::*;

mod encoders;
use encoders::*;

pub fn update_program_resources(resources: &mut ProgramResources, call: &APICall) -> Resource {
    let new_resource;
    match call {
        PrintWGSLLanguageFeatures() | PrintPreferredCanvasFormat() | CreateArray() => { new_resource = update_program(resources, call) }

        CreateAdapter() | PrintAdapterInfo(_) => { new_resource = update_adapter(resources, call) }

        CreateDevice(_) | PrintDeviceInfo(_) | DestroyDevice(_) => { new_resource = update_device(resources, call) }

        CreateRandomBuffer(_) | PrintBufferInfo(_) | ReadMappedBuffer(_) | WriteBuffer(_, _, _) | DestroyBuffer(_) => { new_resource = update_buffer(resources, call) }

        CreateRandomTexture(_) | PrintTextureInfo(_) | WriteTexture(_, _, _) | CreateTextureView(_) | DestroyTexture(_) => { new_resource = update_texture(resources, call) }

        CreateSampler(_) => { new_resource = update_sampler(resources, call) }

        CreateOcclusionQuerySet(_) | PrintQuerySet(_) | DestroyQuerySet(_) => { new_resource = update_query_set(resources, call) }

        CreateShaderModuleCompute(_) | CreateShaderModuleRender(_) | PrintShaderModuleInfo(_) => { new_resource = update_shader_module(resources, call) }

        CreateComputeBindGroupLayout(_) | CreateComputePipelineLayout(_, _) => { new_resource = update_pipeline_layout(resources, call) }
        
        CreateComputePipeline(_, _, _) | CreateComputePipelineAsync(_, _, _) => { new_resource = update_compute_pipeline(resources, call) }

        CreateRenderPipeline(_, _) | CreateRenderPipelineAsync(_, _) => { new_resource = update_render_pipeline(resources, call) }

        CreateCommandEncoder(_) | ClearBuffer(_, _) | CopyBufferToBuffer(_, _, _) | CopyBufferToTexture(_, _, _) 
            | CopyTextureToBuffer(_, _, _) | CopyTextureToTexture(_, _, _) 
            | InsertCommandEncoderDebugMarker(_) | PushCommandEncoderDebugGroup(_) | PopCommandEncoderDebugGroup(_)
            | ResolveQuerySet(_, _, _) =>
                { new_resource = update_command_encoder(resources, call) }

        CreateComputePass(_) | SetComputePassPipeline(_, _) | SetComputePassBindGroupTemplate(_, _, _)
            | SetComputePassWorkgroups(_) | SetComputePassWorkgroupsIndirect(_, _) | InsertComputePassDebugMarker(_)
            | PushComputePassDebugGroup(_) | PopComputePassDebugGroup(_) | EndComputePass(_) =>
                { new_resource = update_compute_pass(resources, call) }

        CreateRenderPass(_, _, _) | SetRenderPassPipeline(_, _) | SetVertexBuffer(_, _)
            | SetIndexBuffer(_, _) /*| SetRenderPassBindGroup(_, _)*/ | Draw(_)
            | DrawIndexed(_) | DrawIndirect(_, _) | DrawIndexedIndirect(_, _)
            | EndRenderPass(_) | BeginOcclusionQuery(_, _) | EndOcclusionQuery(_) => 
                { new_resource = update_render_pass(resources, call) }
    
        InsertRenderPassDebugMarker(_) | PushRenderPassDebugGroup(_) | PopRenderPassDebugGroup(_)
            | SetBlendConstant(_) | SetScissorRect(_, _) | SetStencilReference(_)
            | SetViewport(_, _) | ExecuteBundles(_, _) =>
                { new_resource = update_optional_render_pass(resources, call) }
        
        CreateRenderBundleEncoder(_) | SetPipelineBundle(_, _) | SetVertexBufferBundle(_, _)
            | SetIndexBufferBundle(_, _) | DrawBundle(_) | DrawIndexedBundle(_)
            | DrawIndirectBundle(_, _) | DrawIndexedIndirectBundle(_, _) | EndBundle(_)
            | InsertDebugMarkerBundle(_) | PushDebugGroupBundle(_) | PopDebugGroupBundle(_) =>
                { new_resource = update_bundle(resources, call) }

        CreateCommandBuffer(_) | SubmitQueueRandom(_, _) | WaitSubmittedWork(_) => { new_resource = update_submit(resources, call) }

        PushRandomErrorScope(_) | PopErrorScope(_) => { new_resource = update_error(resources, call) }
    }
    new_resource
}