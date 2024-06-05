use crate::*;

#[derive(Debug, Clone)]
pub struct GPUQuerySet {
    pub num: usize,
    pub var_name: String
}

impl GPUQuerySet {
    pub fn new(device: &GPUDevice) -> GPUQuerySet {
        let num_adapter = device.num_adapter;
        let num_device = device.num;
        let num = device.query_sets.len();
        let name = format!("query{}{}{}", num_adapter, num_device, num);

        GPUQuerySet {
            num,
            var_name: name
        }
    }
}