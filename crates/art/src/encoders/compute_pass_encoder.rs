use crate::*;

#[derive(Debug, Clone)]
pub struct GPUComputePassEncoder {
    pub var_name: String,

    pub pipeline: Option<GPUComputePipeline>,
    pub bindgroup_set: bool,
    pub dispatched: bool,
    pub finished: bool,

    pub num_adapter: usize,
    pub num_device: usize,
    pub num_encoder: usize,
    pub num: usize,

    pub debug_group_active: bool,
}

impl GPUComputePassEncoder {
    pub fn new(encoder: &GPUCommandEncoder) -> GPUComputePassEncoder {
        let num_adapter = encoder.num_adapter;
        let num_device = encoder.num_device;
        let num_encoder = encoder.num;
        let num_pass = encoder.compute_pass_encoders.len();
        let name = format!("compute_pass_encoder{}{}{}{}", num_adapter, num_device, num_encoder, num_pass);

        GPUComputePassEncoder {
            var_name: name,

            pipeline: None,
            bindgroup_set: false,
            dispatched: false,
            finished: false,

            num_adapter,
            num_device,
            num_encoder,
            num: num_pass,

            debug_group_active: false,
        }
    }
}