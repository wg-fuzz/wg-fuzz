use crate::*;

pub fn update_device(resources: &mut ProgramResources, call: &APICall) -> Resource {
    let mut new_resource = Resource::None;

    match call {
        CreateDevice(adapter) => {
            new_resource = Resource::GPUDevice(GPUDevice::new(adapter));
            resources.adapters[adapter.num].devices.push(GPUDevice::new(adapter))
        }
        PrintDeviceInfo(_) => {}
        DestroyDevice(device) => {
            resources.adapters[device.num_adapter].devices[device.num].destroyed = true;
        }
        _ => panic!("There is a bug in the update_resource match calls")
    }
    new_resource
}