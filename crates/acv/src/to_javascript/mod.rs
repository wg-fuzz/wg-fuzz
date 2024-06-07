use crate::*;

mod program_setup;
use program_setup::*;

mod primitives;
use primitives::*;

mod pipeline_setup;
use pipeline_setup::*;

mod encoders;
use encoders::*;

impl APICall {
    pub fn to_javascript(&self, created_resource: &Resource) -> String {
        match self {
            PrintWGSLLanguageFeatures() | PrintPreferredCanvasFormat() | CreateArray() => program_to_js(self, created_resource),

            CreateAdapter() | PrintAdapterInfo(_) => adapter_to_js(self, created_resource),

            CreateDevice(_) | PrintDeviceInfo(_) | DestroyDevice(_) => device_to_js(self, created_resource),

            CreateRandomBuffer(_) | PrintBufferInfo(_) | ReadMappedBuffer(_) | WriteBuffer(_, _, _) | DestroyBuffer(_) => buffer_to_js(self, created_resource),

            CreateRandomTexture(_) | PrintTextureInfo(_) | WriteTexture(_, _, _) | CreateTextureView(_) | DestroyTexture(_) => texture_to_js(self, created_resource),

            CreateSampler(_) => sampler_to_js(self, created_resource),

            CreateShaderModuleCompute(_) | CreateShaderModuleRender(_) | PrintShaderModuleInfo(_) => shader_module_to_js(self, created_resource),

            CreateComputeBindGroupLayout(_) | CreateComputePipelineLayout(_, _) => pipeline_layout_to_js(self, created_resource),

            CreateComputePipeline(_, _, _) | CreateComputePipelineAsync(_, _, _) => compute_pipeline_to_js(self, created_resource),

            CreateRenderPipeline(_, _) | CreateRenderPipelineAsync(_, _) => render_pipeline_to_js(self, created_resource),

            CreateCommandEncoder(_) | ClearBuffer(_, _) | CopyBufferToBuffer(_, _, _)
                | CopyBufferToTexture(_, _, _) | CopyTextureToBuffer(_, _, _) | CopyTextureToTexture(_, _, _)
                | InsertCommandEncoderDebugMarker(_) | PushCommandEncoderDebugGroup(_) | PopCommandEncoderDebugGroup(_) =>
                    command_encoder_to_js(self, created_resource),

            CreateComputePass(_) | SetComputePassPipeline(_, _) | SetComputePassBindGroupTemplate(_, _, _)
                | SetComputePassWorkgroups(_) | SetComputePassWorkgroupsIndirect(_, _) | InsertComputePassDebugMarker(_)
                | PushComputePassDebugGroup(_) | PopComputePassDebugGroup(_) | EndComputePass(_) =>
                    compute_pass_to_js(self, created_resource),

            CreateRenderPass(_, _) | SetRenderPassPipeline(_, _) | SetVertexBuffer(_, _)
                | SetIndexBuffer(_, _) /*| SetRenderPassBindGroup(_, _)*/ | Draw(_)
                | DrawIndexed(_) | DrawIndirect(_, _) | DrawIndexedIndirect(_, _)
                | EndRenderPass(_) => 
                    render_pass_to_js(self, created_resource),
            
            InsertRenderPassDebugMarker(_) | PushRenderPassDebugGroup(_) | PopRenderPassDebugGroup(_)
                | SetBlendConstant(_) | SetScissorRect(_, _) | SetStencilReference(_)
                | SetViewport(_, _) | ExecuteBundles(_, _) =>
                    optional_render_pass_to_js(self),
            
            CreateRenderBundleEncoder(_) | SetPipelineBundle(_, _) | SetVertexBufferBundle(_, _)
                | SetIndexBufferBundle(_, _) | DrawBundle(_) | DrawIndexedBundle(_)
                | DrawIndirectBundle(_, _) | DrawIndexedIndirectBundle(_, _) | EndBundle(_)
                | InsertDebugMarkerBundle(_) | PushDebugGroupBundle(_) | PopDebugGroupBundle(_) =>
                    bundle_to_js(self, created_resource),

            CreateCommandBuffer(_) | SubmitQueueRandom(_, _) | WaitSubmittedWork(_) => submit_to_js(self, created_resource),
            
            PushRandomErrorScope(_) | PopErrorScope(_) => error_to_js(self),
        }
    }
}