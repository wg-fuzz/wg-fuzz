use crate::*;

pub fn update_texture(resources: &mut ProgramResources, call: &APICall) -> Resource {
    let mut new_resource = Resource::None;

    match call {
        CreateRandomTexture(device) => {
            let mut rng = rand::thread_rng();
            
            // most of the time it's r32float by default '_' pattern
            let i = rng.gen_range(0..200);
            let random_format = String::from(
                match i {
                    0 => "\"r8unorm\"",
                    1 => "\"r8snorm\"",
                    2 => "\"r8uint\"",
                    3 => "\"r8sint\"",
                
                    // 16-bit formats
                    4 => "\"r16uint\"",
                    5 => "\"r16sint\"",
                    6 => "\"r16float\"",
                    7 => "\"rg8unorm\"",
                    8 => "\"rg8snorm\"",
                    9 => "\"rg8uint\"",
                    10 => "\"rg8sint\"",
                
                    // 32-bit formats
                    11 => "\"r32uint\"",
                    12 => "\"r32sint\"",
                    13 => "\"r32float\"",
                    14 => "\"rg16uint\"",
                    15 => "\"rg16sint\"",
                    16 => "\"rg16float\"",
                    17 => "\"rgba8unorm\"",
                    18 => "\"rgba8unorm-srgb\"",
                    19 => "\"rgba8snorm\"",
                    20 => "\"rgba8uint\"",
                    21 => "\"rgba8sint\"",
                    22 => "\"bgra8unorm\"",
                    23 => "\"bgra8unorm-srgb\"",
                    // Packed 32-bit formats
                    24 => "\"rgb9e5ufloat\"",
                    25 => "\"rgb10a2uint\"",
                    26 => "\"rgb10a2unorm\"",
                    27 => "\"rg11b10ufloat\"",
                
                    // 64-bit formats
                    28 => "\"rg32uint\"",
                    29 => "\"rg32sint\"",
                    30 => "\"rg32float\"",
                    31 => "\"rgba16uint\"",
                    32 => "\"rgba16sint\"",
                    33 => "\"rgba16float\"",
                
                    // 128-bit formats
                    34 => "\"rgba32uint\"",
                    35 => "\"rgba32sint\"",
                    36 => "\"rgba32float\"",
                
                    // Depth/stencil formats
                    37 => "\"stencil8\"",
                    38 => "\"depth16unorm\"",
                    39 => "\"depth24plus\"",
                    40 => "\"depth24plus-stencil8\"",
                    41 => "\"depth32float\"",
                
                    // "depth32float-stencil8" feature
                    /*42 => "\"depth32float-stencil8\"",
                
                    // BC compressed formats usable if "texture-compression-bc" is both
                    // supported by the device/user agent and enabled in requestDevice.
                    43 => "\"bc1-rgba-unorm\"",
                    44 => "\"bc1-rgba-unorm-srgb\"",
                    45 => "\"bc2-rgba-unorm\"",
                    46 => "\"bc2-rgba-unorm-srgb\"",
                    47 => "\"bc3-rgba-unorm\"",
                    48 => "\"bc3-rgba-unorm-srgb\"",
                    49 => "\"bc4-r-unorm\"",
                    50 => "\"bc4-r-snorm\"",
                    51 => "\"bc5-rg-unorm\"",
                    52 => "\"bc5-rg-snorm\"",
                    53 => "\"bc6h-rgb-ufloat\"",
                    54 => "\"bc6h-rgb-float\"",
                    55 => "\"bc7-rgba-unorm\"",
                    56 => "\"bc7-rgba-unorm-srgb\"",
                
                    // ETC2 compressed formats usable if "texture-compression-etc2" is both
                    // supported by the device/user agent and enabled in requestDevice.
                    57 => "\"etc2-rgb8unorm\"",
                    58 => "\"etc2-rgb8unorm-srgb\"",
                    59 => "\"etc2-rgb8a1unorm\"",
                    60 => "\"etc2-rgb8a1unorm-srgb\"",
                    61 => "\"etc2-rgba8unorm\"",
                    62 => "\"etc2-rgba8unorm-srgb\"",
                    63 => "\"eac-r11unorm\"",
                    64 => "\"eac-r11snorm\"",
                    65 => "\"eac-rg11unorm\"",
                    66 => "\"eac-rg11snorm\"",
                
                    // ASTC compressed formats usable if "texture-compression-astc" is both
                    // supported by the device/user agent and enabled in requestDevice.
                    67 => "\"astc-4x4-unorm\"",
                    68 => "\"astc-4x4-unorm-srgb\"",
                    69 => "\"astc-5x4-unorm\"",
                    70 => "\"astc-5x4-unorm-srgb\"",
                    71 => "\"astc-5x5-unorm\"",
                    72 => "\"astc-5x5-unorm-srgb\"",
                    73 => "\"astc-6x5-unorm\"",
                    74 => "\"astc-6x5-unorm-srgb\"",
                    75 => "\"astc-6x6-unorm\"",
                    76 => "\"astc-6x6-unorm-srgb\"",
                    77 => "\"astc-8x5-unorm\"",
                    78 => "\"astc-8x5-unorm-srgb\"",
                    79 => "\"astc-8x6-unorm\"",
                    80 => "\"astc-8x6-unorm-srgb\"",
                    81 => "\"astc-8x8-unorm\"",
                    82 => "\"astc-8x8-unorm-srgb\"",
                    83 => "\"astc-10x5-unorm\"",
                    84 => "\"astc-10x5-unorm-srgb\"",
                    85 => "\"astc-10x6-unorm\"",
                    86 => "\"astc-10x6-unorm-srgb\"",
                    87 => "\"astc-10x8-unorm\"",
                    88 => "\"astc-10x8-unorm-srgb\"",
                    89 => "\"astc-10x10-unorm\"",
                    90 => "\"astc-10x10-unorm-srgb\"",
                    91 => "\"astc-12x10-unorm\"",
                    92 => "\"astc-12x10-unorm-srgb\"",
                    93 => "\"astc-12x12-unorm\"",
                    94 => "\"astc-12x12-unorm-srgb\"",*/
                    _ => "\"r32float\"",
                });
            
            let i = rng.gen_range(0..5);
            let random_usage = String::from(
                match i {
                    0 => "GPUTextureUsage.COPY_SRC",
                    1 => "GPUTextureUsage.COPY_DST",
                    2 => "GPUTextureUsage.RENDER_ATTACHMENT",
                    3 => "GPUTextureUsage.STORAGE_BINDING",
                    4 => "GPUTextureUsage.TEXTURE_BINDING",
                    _ => "GPUTextureUsage.COPY_SRC"
                });

            new_resource = Resource::GPUTexture(GPUTexture::new(device, random_usage.clone(), random_format.clone()));
            resources.adapters[device.num_adapter].devices[device.num].textures.push(GPUTexture::new(device, random_usage, random_format))
        }
        PrintTextureInfo(_) => {}
        WriteTexture(_, _, _) => {}
        CreateTextureView(texture) => {
            new_resource = Resource::GPUTextureView(GPUTextureView::new(texture));
            resources.adapters[texture.num_adapter].devices[texture.num_device].textures[texture.num].texture_views.push(GPUTextureView::new(texture))
        }
        DestroyTexture(texture) => {
            resources.adapters[texture.num_adapter].devices[texture.num_device].textures[texture.num].destroyed = true;
        }
        _ => {}
    }
    new_resource
}