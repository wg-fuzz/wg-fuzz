use crate::*;

#[derive(Debug, Clone)]
pub struct GPUBindGroupLayout {
    pub num: usize,
    pub var_name: String
}

impl GPUBindGroupLayout {
    pub fn new(device: &GPUDevice) -> GPUBindGroupLayout {
        let num_adapter = device.num_adapter;
        let num_device = device.num;
        let num = device.bind_group_layouts.len();
        let name = format!("bind_group_layout{}{}{}", num_adapter, num_device, num);

        GPUBindGroupLayout {
            num,
            var_name: name
        }
    }
}