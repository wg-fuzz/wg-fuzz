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

        CreateShaderModuleCompute(_) | CreateShaderModuleRender(_) | PrintShaderModuleInfo(_) => { new_resource = update_shader_module(resources, call) }

        CreateComputeBindGroupLayout(_) | CreateComputePipelineLayout(_, _) => { new_resource = update_pipeline_layout(resources, call) }
        
        CreateComputePipeline(_, _, _) | CreateComputePipelineAsync(_, _, _) => { new_resource = update_compute_pipeline(resources, call) }

        CreateRenderPipeline(_, _) | CreateRenderPipelineAsync(_, _) => { new_resource = update_render_pipeline(resources, call) }

        CreateCommandEncoder(_) | ClearBuffer(_, _) | CopyBufferToBuffer(_, _, _) | CopyBufferToTexture(_, _, _) 
            | CopyTextureToBuffer(_, _, _) | CopyTextureToTexture(_, _, _) 
            | InsertCommandEncoderDebugMarker(_) | PushCommandEncoderDebugGroup(_) | PopCommandEncoderDebugGroup(_) =>
                { new_resource = update_command_encoder(resources, call) }

        CreateComputePass(_) | SetComputePassPipeline(_, _) | SetComputePassBindGroupTemplate(_, _, _)
            | SetComputePassWorkgroups(_) | SetComputePassWorkgroupsIndirect(_, _) | InsertComputePassDebugMarker(_)
            | PushComputePassDebugGroup(_) | PopComputePassDebugGroup(_) | EndComputePass(_) =>
                { new_resource = update_compute_pass(resources, call) }

        CreateRenderPass(_, _) => { new_resource = update_render_pass(resources, call) }

        CreateCommandBuffer(_) | SubmitQueueRandom(_, _) | WaitSubmittedWork(_) => { new_resource = update_submit(resources, call) }

        PushRandomErrorScope(_) | PopErrorScope(_) => { new_resource = update_error(resources, call) }
    }
    new_resource
}