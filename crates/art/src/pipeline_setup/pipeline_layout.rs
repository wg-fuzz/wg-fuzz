use crate::*;

#[derive(Debug, Clone)]
pub struct GPUPipelineLayout {
    pub num: usize,
    pub var_name: String
}

impl GPUPipelineLayout {
    pub fn new(device: &GPUDevice) -> GPUPipelineLayout {
        let num_adapter = device.num_adapter;
        let num_device = device.num;
        let num = device.pipeline_layouts.len();
        let name = format!("pipeline_layout{}{}{}", num_adapter, num_device, num);

        GPUPipelineLayout {
            num,
            var_name: name
        }
    }
}