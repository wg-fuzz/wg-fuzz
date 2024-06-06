use crate::*;

#[derive(Debug, Clone)]
pub struct GPUTextureView {
    pub num: usize,
    pub num_texture: usize,
    pub var_name: String
}

impl GPUTextureView {
    pub fn new(texture: &GPUTexture) -> GPUTextureView {
        let num_adapter = texture.num_adapter;
        let num_device = texture.num_device;
        let num_texture = texture.num;
        let num = texture.texture_views.len();
        let name = format!("texture_view{}{}{}{}", num_adapter, num_device, num_texture, num);

        GPUTextureView {
            num,
            num_texture,
            var_name: name
        }
    }
}