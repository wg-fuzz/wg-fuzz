use crate::*;

#[derive(Debug, Clone)]
pub struct GPUBuffer {
    pub num_adapter: usize,
    pub num_device: usize,
    pub num: usize,
    pub var_name: String,

    pub use_case: String,

    pub destroyed: bool,
}

impl GPUBuffer {
    pub fn new(device: &GPUDevice, use_case: String, offset: usize) -> GPUBuffer {
        let num_adapter = device.num_adapter;
        let num_device = device.num;
        let num = device.buffers.len() + offset;
        let name = format!("buffer{}{}{}", num_adapter, num_device, num);

        GPUBuffer {
            num_adapter,
            num_device,
            num,
            var_name: name,

            use_case,

            destroyed: false,
        }
    }
}