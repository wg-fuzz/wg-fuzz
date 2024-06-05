use crate::*;

pub fn add_manipulate_buffers(available_api_calls: &mut Vec<APICall>, resources: &ProgramResources, device: &GPUDevice) {
    // Crashes
    for buffer in &device.buffers {
        if !buffer.destroyed {
            if buffer.use_case.contains("GPUBufferUsage.COPY_DST") {
                for array in &resources.random_arrays {
                    available_api_calls.extend([WriteBuffer(device.clone(), buffer.clone(), array.clone())])
                }
            }
            if buffer.use_case.contains("GPUBufferUsage.MAP_READ") {
                available_api_calls.extend([ReadMappedBuffer(buffer.clone())])
            }
            available_api_calls.extend([PrintBufferInfo(buffer.clone()), DestroyBuffer(buffer.clone())])
        }
    }
}

pub fn add_manipulate_textures(available_api_calls: &mut Vec<APICall>, resources: &ProgramResources, device: &GPUDevice) {
    for texture in &device.textures {
        if !texture.destroyed {
            if texture.usage.contains("GPUTextureUsage.COPY_DST") && texture.format.contains("\"r32float\""){
                for array in &resources.random_arrays {
                    available_api_calls.extend([WriteTexture(device.clone(), texture.clone(), array.clone())])
                }
            }
            available_api_calls.extend([DestroyTexture(texture.clone()), PrintTextureInfo(texture.clone()), CreateTextureView(texture.clone())])
        }
    }
}