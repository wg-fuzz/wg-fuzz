use crate::*;

pub fn update_adapter(resources: &mut ProgramResources, call: &APICall) -> Resource {
    let mut new_resource = Resource::None;

    match call {
        CreateAdapter() => {
            new_resource = Resource::GPUAdapter(GPUAdapter::new(&resources));
            resources.adapters.push(GPUAdapter::new(&resources))
        }
        PrintAdapterInfo(_) => {}
        _ => {}
    }
    new_resource
}