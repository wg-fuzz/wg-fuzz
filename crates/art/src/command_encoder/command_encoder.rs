use crate::*;

#[derive(Debug, Clone)]
pub struct GPUCommandEncoder {
    pub num: usize,
    pub var_name: String,

    pub num_adapter: usize,
    pub num_device: usize,

    pub compute_pass_encoders: Vec<GPUComputePassEncoder>,
    pub render_pass_encoders: Vec<GPURenderPassEncoder>,
    pub command_buffer: Option<GPUCommandBuffer>,
    pub submitted: bool,

    pub debug_group_active: bool,
}

impl GPUCommandEncoder {
    pub fn new(device: &GPUDevice) -> GPUCommandEncoder {
        let num_adapter = device.num_adapter;
        let num_device = device.num;
        let num = device.command_encoders.len();
        let name = format!("command_encoder{}{}{}", num_adapter, num_device, num);

        GPUCommandEncoder {
            num,
            var_name: name,

            num_adapter,
            num_device,

            compute_pass_encoders: Vec::new(),
            render_pass_encoders: Vec::new(),
            command_buffer: None,
            submitted: false,

            debug_group_active: false,
        }
    }
}