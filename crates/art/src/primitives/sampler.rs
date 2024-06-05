use crate::*;

#[derive(Debug, Clone)]
pub struct GPUSampler {
    pub num: usize,
    pub var_name: String
}

impl GPUSampler {
    pub fn new(device: &GPUDevice) -> GPUSampler {
        let num_adapter = device.num_adapter;
        let num_device = device.num;
        let num = device.samplers.len();
        let name = format!("sampler{}{}{}", num_adapter, num_device, num);

        GPUSampler {
            num,
            var_name: name
        }
    }
}