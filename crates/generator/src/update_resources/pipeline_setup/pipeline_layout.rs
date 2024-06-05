use crate::*;

pub fn update_pipeline_layout(resources: &mut ProgramResources, call: &APICall) -> Resource {
    let new_resource;

    match call {
        CreateComputeBindGroupLayout(device) => {
            new_resource = Resource::GPUBindGroupLayout(GPUBindGroupLayout::new(device));
            resources.adapters[device.num_adapter].devices[device.num].bind_group_layouts.push(GPUBindGroupLayout::new(device))
        }
        CreateComputePipelineLayout(device, _) => {
            new_resource = Resource::GPUPipelineLayout(GPUPipelineLayout::new(device));
            resources.adapters[device.num_adapter].devices[device.num].pipeline_layouts.push(GPUPipelineLayout::new(device))
        }
        _ => { panic!("There is a bug in the update_resource match calls") }
    }
    new_resource
}