use crate::*;

#[derive(Debug, Clone)]
pub struct GPURenderBundleEncoder {
    pub num_adapter: usize,
    pub num_device: usize,
    pub num: usize,
    pub var_name: String,

    pub pipeline: Option<GPURenderPipeline>,
    pub bindgroup_set: bool,
    pub finished: bool,

    pub debug_group_active: bool,

    pub vertex_buffer: Option<GPUBuffer>,
    pub index_buffer: Option<GPUBuffer>,
    pub drew: bool,
}

impl GPURenderBundleEncoder {
    pub fn new(device: &GPUDevice) -> GPURenderBundleEncoder {
        let num_adapter = device.num_adapter;
        let num_device = device.num;
        let num = device.render_bundle_encoders.len();
        let name = format!("render_bundle_encoder{}{}{}", num_adapter, num_device, num);

        GPURenderBundleEncoder {
            num_adapter,
            num_device,
            num,
            var_name: name,

            pipeline: None,
            bindgroup_set: false,
            finished: false,

            debug_group_active: false,

            vertex_buffer: None,
            index_buffer: None,
            drew: false,
        }
    }
}