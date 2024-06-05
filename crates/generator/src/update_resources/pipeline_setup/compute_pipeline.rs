use crate::*;

pub fn update_compute_pipeline(resources: &mut ProgramResources, call: &APICall) -> Resource {
    let new_resource;

    match call {
        CreateComputePipeline(device, _, _) => {
            new_resource = Resource::GPUComputePipeline(GPUComputePipeline::new(device));
            resources.adapters[device.num_adapter].devices[device.num].compute_pipelines.push(GPUComputePipeline::new(device))
        }
        CreateComputePipelineAsync(device, _, _) => {
            new_resource = Resource::GPUComputePipeline(GPUComputePipeline::new(device));
            resources.adapters[device.num_adapter].devices[device.num].compute_pipelines.push(GPUComputePipeline::new(device))
        }
        _ => { panic!("There is a bug in the update_resource match calls") }
    }
    new_resource
}