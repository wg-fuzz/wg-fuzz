use crate::*;

pub fn command_encoder_to_js(api_call: &APICall, created_resource: &Resource) -> String {
    match api_call {
        CreateCommandEncoder(device) => {
            if let Resource::GPUCommandEncoder(command_encoder) = created_resource {
                return format!("const {} = {}.createCommandEncoder({{ label: \"{}\" }});", command_encoder.var_name, device.var_name, command_encoder.var_name);
            } else {
                panic!("created_resource for CreateCommandEncoder() call is not a command encoder!")
            }
        }
        ClearBuffer(command_encoder, buffer) => {
            return format!("{}.clearBuffer({});", command_encoder.var_name, buffer.var_name);
        }
        CopyBufferToBuffer(command_encoder, src_buffer, dst_buffer) => {
            return format!("{}.copyBufferToBuffer(
        {},
        0,
        {},
        0,
        400
    );", 
                command_encoder.var_name, src_buffer.var_name, dst_buffer.var_name);
        }
        CopyBufferToTexture(command_encoder, src_buffer, dst_texture) => {
            return format!("{}.copyBufferToTexture(
        {{
            buffer: {}
        }},
        {{
            texture: {}
        }},
        {{
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }}
    );", 
                            command_encoder.var_name, src_buffer.var_name, dst_texture.var_name);
        }
        CopyTextureToBuffer(command_encoder, texture, buffer) => {
            return format!("{}.copyTextureToBuffer(
        {{
            texture: {}
        }},
        {{
            buffer: {}
        }},
        {{
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }}
    );", 
                            command_encoder.var_name, texture.var_name, buffer.var_name);
        }
        CopyTextureToTexture(command_encoder, texture_src, texture_dst) => {
            return format!("{}.copyTextureToBuffer(
        {{
            texture: {}
        }},
        {{
            texture: {}
        }},
        {{
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }}
    );", 
                            command_encoder.var_name, texture_src.var_name, texture_dst.var_name);
        }
        InsertCommandEncoderDebugMarker(encoder) => {
            return format!("{}.insertDebugMarker(\"mymarker\");", encoder.var_name);
        }
        PushCommandEncoderDebugGroup(encoder) => {
            return format!("{}.pushDebugGroup(\"mygroupmarker\")", encoder.var_name);
        }
        PopCommandEncoderDebugGroup(encoder) => {
            return format!("{}.popDebugGroup()", encoder.var_name);
        }
        _ => { panic!("There is a bug in the to_javascript match calls") }
    }
}