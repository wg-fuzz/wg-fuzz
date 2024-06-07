use crate::*;

pub fn update_query_set(resources: &mut ProgramResources, call: &APICall) -> Resource {
    let mut new_resource = Resource::None ;

    match call {
        CreateOcclusionQuerySet(device) => {
            new_resource = Resource::GPUQuerySet(GPUQuerySet::new(device, String::from("occlusion"), 32));
            resources.adapters[device.num_adapter].devices[device.num].query_sets.push(GPUQuerySet::new(device, String::from("occlusion"), 32))
        } 
        PrintQuerySet(_) => {}
        DestroyQuerySet(query_set) => {
            resources.adapters[query_set.num_adapter].devices[query_set.num_device].query_sets[query_set.num].destroyed = true;
        }
        _ => { panic!("There is a bug in the update_resource match calls") }
    }
    new_resource
}