use crate::*;

// pub fn create_device(created_resource: &Resource, adapter: &GPUAdapter) -> String {
//     if let Resource::GPUDevice(device) = created_resource {
//         return format!("const {} = await {}.requestDevice({{ label: \"{}\" }});", device.var_name, adapter.var_name, device.var_name);
//     } else {
//         panic!("created_resource for CreateDevice() call is not a device!")
//     }
// }