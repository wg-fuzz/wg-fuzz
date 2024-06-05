use crate::*;

pub fn update_error(resources: &mut ProgramResources, call: &APICall) -> Resource {
    let new_resource = Resource::None;

    match call {
        PushRandomErrorScope(device) => {
            resources.adapters[device.num_adapter].devices[device.num].error_scope_active = true;
        }
        PopErrorScope(device) => {
            resources.adapters[device.num_adapter].devices[device.num].error_scope_active = false;
        }
        // AddUncapturedErrorListener(_) => {}
        _ => {}
    }
    new_resource
}