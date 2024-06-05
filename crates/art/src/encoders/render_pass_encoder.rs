use crate::*;

#[derive(Debug, Clone)]
pub struct GPURenderPassEncoder {
    pub var_name: String,

    pub pipeline: Option<GPURenderPipeline>,
    pub bindgroup_set: bool,
    pub dispatched: bool,
    pub finished: bool,

    pub num_adapter: usize,
    pub num_device: usize,
    pub num_encoder: usize,
    pub num: usize,

    pub debug_group_active: bool,
}

impl GPURenderPassEncoder {
    pub fn new(encoder: &GPUCommandEncoder) -> GPURenderPassEncoder {
        let num_adapter = encoder.num_adapter;
        let num_device = encoder.num_device;
        let num_encoder = encoder.num;
        let num_pass = encoder.render_pass_encoders.len();
        let name = format!("render_pass_encoder{}{}{}{}", num_adapter, num_device, num_encoder, num_pass);

        GPURenderPassEncoder {
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