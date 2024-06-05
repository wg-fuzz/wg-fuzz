use crate::*;

#[derive(Debug, Clone)]
pub struct GPUShaderModule {
    pub num: usize,
    pub var_name: String,

    pub compute_or_render: String,
}

impl GPUShaderModule {
    pub fn new(device: &GPUDevice, compute_or_render: String) -> GPUShaderModule {
        let num_adapter = device.num_adapter;
        let num_device = device.num;
        let num = device.shader_modules.len();
        let name = format!("shader_module{}{}{}", num_adapter, num_device, num);

        GPUShaderModule {
            num,
            var_name: name,

            compute_or_render,
        }
    }
}