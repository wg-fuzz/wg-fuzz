use crate::*;

pub fn update_sampler(resources: &mut ProgramResources, call: &APICall) -> Resource {
    let mut new_resource = Resource::None;

    match call {
        CreateSampler(device) => {
            new_resource = Resource::GPUSampler(GPUSampler::new(device));
            resources.adapters[device.num_adapter].devices[device.num].samplers.push(GPUSampler::new(device))
        }
        _ => {}
    }
    new_resource
}