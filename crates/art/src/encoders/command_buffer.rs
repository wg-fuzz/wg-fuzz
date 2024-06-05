use crate::*;

#[derive(Debug, Clone)]
pub struct GPUCommandBuffer {
    pub num: usize,
    pub var_name: String
}

impl GPUCommandBuffer {
    pub fn new(encoder: &GPUCommandEncoder) -> GPUCommandBuffer {
        let num_adapter = encoder.num_adapter;
        let num_device = encoder.num_device;
        let num_encoder = encoder.num;
        let name = format!("command_buffer{}{}{}", num_adapter, num_device, num_encoder);

        GPUCommandBuffer {
            num: num_encoder,
            var_name: name
        }
    }
}