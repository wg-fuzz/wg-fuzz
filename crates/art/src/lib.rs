// art = abstract resource tree

// module: check available calls


// RESTRICTION: in impls, never store parameter reference on struct. it is cloned in generator

#[derive(Debug, Clone)]
pub struct ProgramResources {
    pub adapters: Vec<GPUAdapter>,
    pub html_videos: Vec<HTMLVideo>
}

impl ProgramResources {
    pub fn new() -> ProgramResources {
        ProgramResources {
            adapters: Vec::new(),
            html_videos: Vec::new()
        }
    }
}

#[derive(Debug, Clone)]
pub struct GPUAdapter {
    pub num: usize,
    pub var_name: String,

    pub devices: Vec<GPUDevice>
}

impl GPUAdapter {
    pub fn new(resources: &ProgramResources) -> GPUAdapter {
        let num = resources.adapters.len();
        let name = format!("adapter{}", num);

        GPUAdapter {
            num: num,
            var_name: name,
            devices: Vec::new()
        }
    }
}

#[derive(Debug, Clone)]
pub struct GPUDevice {
    pub num: usize,
    pub num_adapter: usize,
    pub var_name: String,

    pub buffers: Vec<GPUBuffer>,
    pub textures: Vec<GPUTexture>,
    pub external_textures: Vec<GPUExternalTexture>,

    pub samplers: Vec<GPUSampler>,
    pub query_sets: Vec<GPUQuerySet>,

    pub shader_modules: Vec<GPUShaderModule>,
    pub bind_groups: Vec<GPUBindGroup>,
    pub bind_group_layouts: Vec<GPUBindGroupLayout>,
    pub pipeline_layouts: Vec<GPUPipelineLayout>,

    pub compute_pipelines: Vec<GPUComputePipeline>,
    pub render_pipelines: Vec<GPURenderPipeline>,
    pub render_bundle_encoders: Vec<GPURenderBundleEncoder>,
    pub command_encoders: Vec<GPUCommandEncoder>,
}

impl GPUDevice {
    pub fn new(adapter: &GPUAdapter) -> GPUDevice {
        let num_adapter = adapter.num;
        let num = adapter.devices.len();
        let name = format!("device{}{}", num_adapter, num);

        GPUDevice {
            num,
            num_adapter,
            var_name: name,

            buffers: Vec::new(),
            textures: Vec::new(),
            external_textures: Vec::new(),

            samplers: Vec::new(),
            query_sets: Vec::new(),

            shader_modules: Vec::new(),
            bind_groups: Vec::new(),
            bind_group_layouts: Vec::new(),
            pipeline_layouts: Vec::new(),

            compute_pipelines: Vec::new(),
            render_pipelines: Vec::new(),
            render_bundle_encoders: Vec::new(),
            command_encoders: Vec::new(),
        }
    }
}

#[derive(Debug, Clone)]
pub struct GPUBuffer {
    pub num: usize,
    pub var_name: String
}

impl GPUBuffer {
    pub fn new(device: &GPUDevice) -> GPUBuffer {
        let num_device = device.num;
        let num = device.buffers.len();
        let name = format!("buffer{}{}", num_device, num);

        GPUBuffer {
            num,
            var_name: name
        }
    }
}

#[derive(Debug, Clone)]
pub struct GPUTexture {
    pub num: usize,
    pub var_name: String,

    pub texture_views: Vec<GPUTextureView>
}

impl GPUTexture {
    pub fn new(device: &GPUDevice) -> GPUTexture {
        let num_device = device.num;
        let num = device.textures.len();
        let name = format!("texture{}{}", num_device, num);

        GPUTexture {
            num,
            var_name: name,

            texture_views: Vec::new()
        }
    }
}

#[derive(Debug, Clone)]
pub struct GPUTextureView {
    pub num: usize,
    pub var_name: String
}

impl GPUTextureView {
    pub fn new(device: &GPUDevice, texture: &GPUTexture) -> GPUTextureView {
        let num_device = device.num;
        let num_texture = texture.num;
        let num = texture.texture_views.len();
        let name = format!("texture_view{}{}{}", num_device, num_texture, num);

        GPUTextureView {
            num,
            var_name: name
        }
    }
}

#[derive(Debug, Clone)]
pub struct GPUExternalTexture {
    pub num: usize,
    pub var_name: String
}

impl GPUExternalTexture {
    pub fn new(device: &GPUDevice) -> GPUExternalTexture {
        let num_device = device.num;
        let num = device.external_textures.len();
        let name = format!("external_textures{}{}", num_device, num);

        GPUExternalTexture {
            num,
            var_name: name
        }
    }
}

#[derive(Debug, Clone)]
pub struct HTMLVideo {
    pub num: usize,
    pub var_name: String
}

impl HTMLVideo {
    pub fn new(resources: &ProgramResources) -> HTMLVideo {
        let num = resources.html_videos.len();
        let name = format!("html_video{}", num);

        HTMLVideo {
            num,
            var_name: name
        }
    }
}

#[derive(Debug, Clone)]
pub struct GPUSampler {
    pub num: usize,
    pub var_name: String
}

impl GPUSampler {
    pub fn new(device: &GPUDevice) -> GPUSampler {
        let num_device = device.num;
        let num = device.samplers.len();
        let name = format!("sampler{}{}", num_device, num);

        GPUSampler {
            num,
            var_name: name
        }
    }
}

#[derive(Debug, Clone)]
pub struct GPUQuerySet {
    pub num: usize,
    pub var_name: String
}

impl GPUQuerySet {
    pub fn new(device: &GPUDevice) -> GPUQuerySet {
        let num_device = device.num;
        let num = device.query_sets.len();
        let name = format!("query{}{}", num_device, num);

        GPUQuerySet {
            num,
            var_name: name
        }
    }
}

#[derive(Debug, Clone)]
pub struct GPUShaderModule {
    pub num: usize,
    pub var_name: String
}

impl GPUShaderModule {
    pub fn new(device: &GPUDevice) -> GPUShaderModule {
        let num_device = device.num;
        let num = device.shader_modules.len();
        let name = format!("shader_module{}{}", num_device, num);

        GPUShaderModule {
            num,
            var_name: name
        }
    }
}

#[derive(Debug, Clone)]
pub struct GPUBindGroup {
    pub num: usize,
    pub var_name: String
}

impl GPUBindGroup {
    pub fn new(device: &GPUDevice) -> GPUBindGroup {
        let num_device = device.num;
        let num = device.bind_groups.len();
        let name = format!("bind_group{}{}", num_device, num);

        GPUBindGroup {
            num,
            var_name: name
        }
    }
}

#[derive(Debug, Clone)]
pub struct GPUBindGroupLayout {
    pub num: usize,
    pub var_name: String
}

impl GPUBindGroupLayout {
    pub fn new(device: &GPUDevice) -> GPUBindGroupLayout {
        let num_device = device.num;
        let num = device.bind_group_layouts.len();
        let name = format!("bind_group_layout{}{}", num_device, num);

        GPUBindGroupLayout {
            num,
            var_name: name
        }
    }
}

#[derive(Debug, Clone)]
pub struct GPUPipelineLayout {
    pub num: usize,
    pub var_name: String
}

impl GPUPipelineLayout {
    pub fn new(device: &GPUDevice) -> GPUPipelineLayout {
        let num_device = device.num;
        let num = device.pipeline_layouts.len();
        let name = format!("pipeline_layout{}{}", num_device, num);

        GPUPipelineLayout {
            num,
            var_name: name
        }
    }
}

#[derive(Debug, Clone)]
pub struct GPUComputePipeline {
    pub num: usize,
    pub var_name: String
}

impl GPUComputePipeline {
    pub fn new(device: &GPUDevice) -> GPUComputePipeline {
        let num_device = device.num;
        let num = device.compute_pipelines.len();
        let name = format!("compute_pipeline{}{}", num_device, num);

        GPUComputePipeline {
            num,
            var_name: name
        }
    }
}

#[derive(Debug, Clone)]
pub struct GPURenderPipeline {
    pub num: usize,
    pub var_name: String
}

impl GPURenderPipeline {
    pub fn new(device: &GPUDevice) -> GPURenderPipeline {
        let num_device = device.num;
        let num = device.render_pipelines.len();
        let name = format!("render_pipeline{}{}", num_device, num);

        GPURenderPipeline {
            num,
            var_name: name
        }
    }
}

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
        let num_device = device.num;
        let num = device.render_bundle_encoders.len();
        let name = format!("render_bundle_encoder{}{}", num_device, num);

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

#[derive(Debug, Clone)]
pub struct GPUCommandEncoder {
    pub num: usize,
    pub var_name: String,

    // finished: bool
}

impl GPUCommandEncoder {
    pub fn new(device: &GPUDevice) -> GPUCommandEncoder {
        let num_device = device.num;
        let num = device.command_encoders.len();
        let name = format!("command_encoder{}{}", num_device, num);

        GPUCommandEncoder {
            num,
            var_name: name,

            // finished: false
        }
    }
}