use crate::*;

#[derive(Debug, Clone)]
pub struct GPUComputePipeline {
    pub num: usize,
    pub var_name: String
}

impl GPUComputePipeline {
    pub fn new(device: &GPUDevice) -> GPUComputePipeline {
        let num_adapter = device.num_adapter;
        let num_device = device.num;
        let num = device.compute_pipelines.len();
        let name = format!("compute_pipeline{}{}{}", num_adapter, num_device, num);

        GPUComputePipeline {
            num,
            var_name: name
        }
    }
}