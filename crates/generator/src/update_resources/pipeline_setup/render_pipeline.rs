use crate::*;

pub fn update_render_pipeline(resources: &mut ProgramResources, call: &APICall) -> Resource {
    let new_resource;

    match call {
        CreateRenderPipeline(device, _) => {
            new_resource = Resource::GPURenderPipeline(GPURenderPipeline::new(device));
            resources.adapters[device.num_adapter].devices[device.num].render_pipelines.push(GPURenderPipeline::new(device))
        }
        CreateRenderPipelineAsync(device, _) => {
            new_resource = Resource::GPURenderPipeline(GPURenderPipeline::new(device));
            resources.adapters[device.num_adapter].devices[device.num].render_pipelines.push(GPURenderPipeline::new(device))
        }
        _ => { panic!("There is a bug in the update_resource match calls") }
    }
    new_resource
}