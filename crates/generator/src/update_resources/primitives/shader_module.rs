use crate::*;

pub fn update_shader_module(resources: &mut ProgramResources, call: &APICall) -> Resource {
    let mut new_resource = Resource::None;

    match call {
        CreateShaderModuleCompute(device) => {
            new_resource = Resource::GPUShaderModule(GPUShaderModule::new(device, String::from("compute")));
            resources.adapters[device.num_adapter].devices[device.num].shader_modules.push(GPUShaderModule::new(device, String::from("compute")))
        }
        CreateShaderModuleRender(device) => {
            new_resource = Resource::GPUShaderModule(GPUShaderModule::new(device, String::from("render")));
            resources.adapters[device.num_adapter].devices[device.num].shader_modules.push(GPUShaderModule::new(device, String::from("render")))
        }
        PrintShaderModuleInfo(_) => {}
        _ => panic!("There is a bug in the update_resource match calls")
    }
    new_resource
}