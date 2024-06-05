use crate::*;

pub fn update_sampler(resources: &mut ProgramResources, call: &APICall) -> Resource {
    let new_resource ;

    match call {
        CreateSampler(device) => {
            new_resource = Resource::GPUSampler(GPUSampler::new(device));
            resources.adapters[device.num_adapter].devices[device.num].samplers.push(GPUSampler::new(device))
        }
        _ => { panic!("There is a bug in the update_resource match calls") }
    }
    new_resource
}