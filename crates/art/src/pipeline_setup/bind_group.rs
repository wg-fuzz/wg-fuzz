use crate::*;

#[derive(Debug, Clone)]
pub struct GPUBindGroup {
    pub num: usize,
    pub var_name: String
}

impl GPUBindGroup {
    pub fn new(device: &GPUDevice) -> GPUBindGroup {
        let num_adapter = device.num_adapter;
        let num_device = device.num;
        let num = device.bind_groups.len();
        let name = format!("bind_group{}{}{}", num_adapter, num_device, num);

        GPUBindGroup {
            num,
            var_name: name
        }
    }
}