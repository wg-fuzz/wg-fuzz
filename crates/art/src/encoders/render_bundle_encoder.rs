use crate::*;

#[derive(Debug, Clone)]
pub struct GPURenderBundleEncoder {
    pub num: usize,
    pub var_name: String,

    // vertex_buffer_set: bool,
    // render_pipeline_set: bool,
    // index_buffer_set: bool,
    // bind_group_set: bool,
    // finished: bool
}

impl GPURenderBundleEncoder {
    pub fn new(device: &GPUDevice) -> GPURenderBundleEncoder {
        let num_adapter = device.num_adapter;
        let num_device = device.num;
        let num = device.render_bundle_encoders.len();
        let name = format!("render_bundle_encoder{}{}{}", num_adapter, num_device, num);

        GPURenderBundleEncoder {
            num,
            var_name: name,

            // vertex_buffer_set: false,
            // render_pipeline_set: false,
            // index_buffer_set: false,
            // bind_group_set: false,
            // finished: false
        }
    }
}