use crate::*;

mod program_setup;
use program_setup::*;

mod device;
use device::*;

mod buffer;
use buffer::*;

mod texture;
use texture::*;

mod sampler;
use sampler::*;

mod shader_module;
use shader_module::*;

mod pipeline_layout;
use pipeline_layout::*;

mod compute_pipeline;
use compute_pipeline::*;

mod render_pipeline;
use render_pipeline::*;

mod command_encoder;
use command_encoder::*;

mod compute_pass;
use compute_pass::*;

mod render_pass;
use render_pass::*;

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

            CreateRenderPass(_, _) => render_pass_to_js(self, created_resource),

            CreateCommandBuffer(_) | SubmitQueueRandom(_, _) | WaitSubmittedWork(_) => submit_to_js(self, created_resource),
            
            PushRandomErrorScope(_) | PopErrorScope(_) => error_to_js(self),
        }
    }
}