use crate::*;

#[derive(Debug, Clone)]
pub struct GPURenderPipeline {
    pub num: usize,
    pub var_name: String
}

impl GPURenderPipeline {
    pub fn new(device: &GPUDevice) -> GPURenderPipeline {
        let num_adapter = device.num_adapter;
        let num_device = device.num;
        let num = device.render_pipelines.len();
        let name = format!("render_pipeline{}{}{}", num_adapter, num_device, num);

        GPURenderPipeline {
            num,
            var_name: name
        }
    }
}