use crate::*;

pub fn update_compute_pipeline(resources: &mut ProgramResources, call: &APICall) -> Resource {
    let mut new_resource = Resource::None;

    match call {
        CreateComputePipeline(device, _, _) => {
            new_resource = Resource::GPUComputePipeline(GPUComputePipeline::new(device));
            resources.adapters[device.num_adapter].devices[device.num].compute_pipelines.push(GPUComputePipeline::new(device))
        }
        CreateComputePipelineAsync(device, _, _) => {
            new_resource = Resource::GPUComputePipeline(GPUComputePipeline::new(device));
            resources.adapters[device.num_adapter].devices[device.num].compute_pipelines.push(GPUComputePipeline::new(device))
        }
        _ => {}
    }
    new_resource
}