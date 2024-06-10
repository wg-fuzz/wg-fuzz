use crate::*;

pub fn texture_to_js(api_call: &APICall, created_resource: &Resource) -> String {
    match api_call {
        CreateRandomTexture(device) => {
            if let Resource::GPUTexture(texture) = created_resource {
                format!("\
    const {} = {}.createTexture({{
        label: \"{}\",
        size: [10, 10],
        usage: {},
        format: {},
        dimension: \"2d\"
    }});", 
                    texture.var_name, device.var_name, texture.var_name, texture.usage, texture.format)
            } else {
                panic!("created_resource for CreateRandomTexture() call is not a texture!")
            }
        }
        PrintTextureInfo(texture) => {
            format!("\
    {{
        const texture = {}
        console.log(texture.depthOrArrayLayers);

        console.log(texture.dimension);

        console.log(texture.format);

        console.log(texture.height);

        console.log(texture.width);

        console.log(texture.label);

        console.log(texture.mipLevelCount);

        console.log(texture.sampleCount);

        console.log(texture.usage);
    }}", 
                texture.var_name)
        }
        WriteTexture(device, texture, array) => {
            format!("{}.queue.writeTexture({{ texture: {} }}, {}, {{ bytesPerRow: 40, rowsPerImage: 10 }}, {{ width: 10, height: 10 }});", 
                device.var_name, texture.var_name, array.var_name)
        }
        CreateTextureView(texture) => {
            if let Resource::GPUTextureView(texture_view) = created_resource {
                format!("const {} = {}.createView({{ label: \"{}\" }});", texture_view.var_name, texture.var_name, texture_view.var_name)
            } else {
                panic!("created_resource for CreateTextureView() call is not a texture view!")
            }
        }
        DestroyTexture(texture) => {
            format!("{}.destroy();", texture.var_name)
        }
        _ => panic!("There is a bug in the to_javascript match calls")
    }
}