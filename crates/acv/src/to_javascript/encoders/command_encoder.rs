use crate::*;

pub fn command_encoder_to_js(api_call: &APICall, created_resource: &Resource) -> String {
    match api_call {
        CreateCommandEncoder(device) => {
            if let Resource::GPUCommandEncoder(command_encoder) = created_resource {
                format!("const {} = {}.createCommandEncoder({{ label: \"{}\" }});", command_encoder.var_name, device.var_name, command_encoder.var_name)
            } else {
                panic!("created_resource for CreateCommandEncoder() call is not a command encoder!")
            }
        }
        ClearBuffer(command_encoder, buffer) => {
            format!("{}.clearBuffer({});", command_encoder.var_name, buffer.var_name)
        }
        CopyBufferToBuffer(command_encoder, src_buffer, dst_buffer) => {
            format!("{}.copyBufferToBuffer(
        {},
        0,
        {},
        0,
        400
    );", 
                command_encoder.var_name, src_buffer.var_name, dst_buffer.var_name)
        }
        CopyBufferToTexture(command_encoder, src_buffer, dst_texture) => {
            format!("{}.copyBufferToTexture(
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
                            command_encoder.var_name, src_buffer.var_name, dst_texture.var_name)
        }
        CopyTextureToBuffer(command_encoder, texture, buffer) => {
            format!("{}.copyTextureToBuffer(
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
                            command_encoder.var_name, texture.var_name, buffer.var_name)
        }
        CopyTextureToTexture(command_encoder, texture_src, texture_dst) => {
            format!("{}.copyTextureToBuffer(
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
                            command_encoder.var_name, texture_src.var_name, texture_dst.var_name)
        }
        InsertCommandEncoderDebugMarker(encoder) => {
            format!("{}.insertDebugMarker(\"mymarker\");", encoder.var_name)
        }
        PushCommandEncoderDebugGroup(encoder) => {
            format!("{}.pushDebugGroup(\"mygroupmarker\")", encoder.var_name)
        }
        PopCommandEncoderDebugGroup(encoder) => {
            format!("{}.popDebugGroup()", encoder.var_name)
        }
        ResolveQuerySet(command_encoder, query_set, buffer) => {
            format!("{}.resolveQuerySet(
                {},
                0,
                32,
                {},
                0
            )", command_encoder.var_name, query_set.var_name, buffer.var_name)
        }
        _ => panic!("There is a bug in the to_javascript match calls")
    }
}