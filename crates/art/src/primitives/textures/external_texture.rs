use crate::*;

#[derive(Debug, Clone)]
pub struct GPUExternalTexture {
    pub num: usize,
    pub var_name: String
}

impl GPUExternalTexture {
    pub fn new(device: &GPUDevice) -> GPUExternalTexture {
        let num_adapter = device.num_adapter;
        let num_device = device.num;
        let num = device.external_textures.len();
        let name = format!("external_textures{}{}{}", num_adapter, num_device, num);

        GPUExternalTexture {
            num,
            var_name: name
        }
    }
}