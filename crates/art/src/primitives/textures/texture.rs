use crate::*;

#[derive(Debug, Clone)]
pub struct GPUTexture {
    pub num_adapter: usize,
    pub num_device: usize,
    pub num: usize,
    pub var_name: String,

    pub usage: String,
    pub format: String,
    // pub dimension: String,

    pub texture_views: Vec<GPUTextureView>,

    pub destroyed: bool,
}

impl GPUTexture {
    pub fn new(device: &GPUDevice, usage: String, format: String) -> GPUTexture {
        let num_adapter = device.num_adapter;
        let num_device = device.num;
        let num = device.textures.len();
        let name = format!("texture{}{}{}", num_adapter, num_device, num);

        GPUTexture {
            num_adapter,
            num_device,
            num,
            var_name: name,

            usage,
            format,
            // dimension,

            texture_views: Vec::new(),

            destroyed: false
        }
    }
}