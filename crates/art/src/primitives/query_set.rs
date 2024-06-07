use crate::*;

#[derive(Debug, Clone)]
pub struct GPUQuerySet {
    pub num_adapter: usize,
    pub num_device: usize,
    pub num: usize,
    pub var_name: String,

    pub query_type: String,
    pub count: usize,
    pub i: usize,
    pub query_active: bool,

    pub destroyed: bool,
}

impl GPUQuerySet {
    pub fn new(device: &GPUDevice, query_type: String, count: usize) -> GPUQuerySet {
        let num_adapter = device.num_adapter;
        let num_device = device.num;
        let num = device.query_sets.len();
        let name = format!("query{}{}{}", num_adapter, num_device, num);

        GPUQuerySet {
            num_adapter,
            num_device,
            num,
            var_name: name,

            query_type,
            count,
            i: 0,
            query_active: false,

            destroyed: false,
        }
    }
}