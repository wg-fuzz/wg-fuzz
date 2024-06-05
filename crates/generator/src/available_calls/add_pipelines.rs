use crate::*;

pub fn add_create_pipelines(available_api_calls: &mut Vec<APICall>, device: &GPUDevice) {
    for shader_module in &device.shader_modules {
        if shader_module.compute_or_render.contains("compute") {
            for pipeline_layout in &device.pipeline_layouts {
                available_api_calls.extend([CreateComputePipeline(device.clone(), shader_module.clone(), pipeline_layout.clone()), 
                    CreateComputePipelineAsync(device.clone(), shader_module.clone(), pipeline_layout.clone())])
            }
        } else if shader_module.compute_or_render.contains("render") {
            available_api_calls.extend([CreateRenderPipeline(device.clone(), shader_module.clone()), CreateRenderPipelineAsync(device.clone(), shader_module.clone())])
        }
        available_api_calls.extend([PrintShaderModuleInfo(shader_module.clone())])
    }
}