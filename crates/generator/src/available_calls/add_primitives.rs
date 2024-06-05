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

pub fn add_copy_buffer(available_api_calls: &mut Vec<APICall>, device: &GPUDevice, command_encoder: &GPUCommandEncoder) {
    for buffer in &device.buffers {
        if buffer.use_case.contains("GPUBufferUsage.COPY_SRC") && !buffer.destroyed {
            for buffer_dst in &device.buffers {
                if buffer_dst.use_case.contains("GPUBufferUsage.COPY_DST") && !buffer_dst.destroyed {
                    available_api_calls.extend([CopyBufferToBuffer(command_encoder.clone(), buffer.clone(), buffer_dst.clone())])
                }
            }

            for texture in &device.textures {
                if texture.usage.contains("GPUTextureUsage.COPY_DST") && texture.format.contains("\"r32float\"") && !texture.destroyed {
                    available_api_calls.extend([CopyBufferToTexture(command_encoder.clone(), buffer.clone(), texture.clone())])
                }
            }
        }

        if buffer.use_case.contains("GPUBufferUsage.COPY_DST") && !buffer.destroyed {
            available_api_calls.extend([ClearBuffer(command_encoder.clone(), buffer.clone())]);
        }
    }
}

pub fn add_copy_texture(available_api_calls: &mut Vec<APICall>, device: &GPUDevice, command_encoder: &GPUCommandEncoder) {
    for texture in &device.textures {
        if texture.usage.contains("GPUTextureUsage.COPY_SRC") && texture.format.contains("\"r32float\"") && !texture.destroyed {
            for buffer in &device.buffers {
                if buffer.use_case.contains("GPUBufferUsage.COPY_DST") && !buffer.destroyed {
                    available_api_calls.extend([CopyTextureToBuffer(command_encoder.clone(), texture.clone(), buffer.clone())])
                }
            }

            for texture_dst in &device.textures {
                if texture.usage.contains("GPUTextureUsage.COPY_DST") && texture.format.contains("\"r32float\"") && !texture.destroyed {
                    available_api_calls.extend([CopyTextureToTexture(command_encoder.clone(), texture.clone(), texture_dst.clone())])
                }
            }
        }
    }
}