// art = abstract resource tree

// module: check available calls


// RESTRICTION: in impls, never store parameter reference on struct. it is cloned in generator

#[derive(Debug, Clone)]
pub enum Resource {
    ProgramResources(ProgramResources),
    GPUAdapter(GPUAdapter),
    GPUDevice(GPUDevice),
    GPUBuffer(GPUBuffer),
    GPUTexture(GPUTexture),
    GPUTextureView(GPUTextureView),
    GPUExternalTexture(GPUExternalTexture),
    HTMLVideo(HTMLVideo),
    GPUSampler(GPUSampler),
    GPUQuerySet(GPUQuerySet),
    GPUShaderModule(GPUShaderModule),
    GPUBindGroup(GPUBindGroup),
    GPUBindGroupLayout(GPUBindGroupLayout),
    GPUPipelineLayout(GPUPipelineLayout),
    GPUComputePipeline(GPUComputePipeline),
    GPURenderPipeline(GPURenderPipeline),
    GPURenderBundleEncoder(GPURenderBundleEncoder),
    GPUCommandEncoder(GPUCommandEncoder),
    GPUCommandBuffer(GPUCommandBuffer),
    GPUComputePassEncoder(GPUComputePassEncoder),
    BindGroupTemplate(GPUBuffer, GPUBuffer, GPUBindGroupLayout, GPUBindGroup),
    RandomArray(RandomArray),
    None
}

#[derive(Debug, Clone)]
pub struct ProgramResources {
    pub adapters: Vec<GPUAdapter>,
    pub html_videos: Vec<HTMLVideo>,
    pub random_arrays: Vec<RandomArray>
}

impl ProgramResources {
    pub fn new() -> ProgramResources {
        ProgramResources {
            adapters: Vec::new(),
            html_videos: Vec::new(),
            random_arrays: Vec::new()
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

    pub error_scope_active: bool,

    pub destroyed: bool,
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

            error_scope_active: false,

            destroyed: false,
        }
    }
}

#[derive(Debug, Clone)]
pub struct RandomArray {
    pub num: usize,
    pub var_name: String
}

impl RandomArray {
    pub fn new(resources: &ProgramResources) -> RandomArray {
        let num = resources.random_arrays.len();
        let name = format!("array{}", num);

        RandomArray {
            num,
            var_name: name
        }
    }
}

#[derive(Debug, Clone)]
pub struct GPUBuffer {
    pub num: usize,
    pub var_name: String,

    pub use_case: String,
}

impl GPUBuffer {
    pub fn new(device: &GPUDevice, use_case: String, offset: usize) -> GPUBuffer {
        let num_adapter = device.num_adapter;
        let num_device = device.num;
        let num = device.buffers.len() + offset;
        let name = format!("buffer{}{}{}", num_adapter, num_device, num);

        GPUBuffer {
            num,
            var_name: name,

            use_case,
        }
    }
}

#[derive(Debug, Clone)]
pub struct GPUTexture {
    pub num_adapter: usize,
    pub num_device: usize,
    pub num: usize,
    pub var_name: String,

    pub usage: String,
    pub format: String,
    // pub dimension: String,

    pub texture_views: Vec<GPUTextureView>
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
    pub fn new(texture: &GPUTexture) -> GPUTextureView {
        let num_adapter = texture.num_adapter;
        let num_device = texture.num_device;
        let num_texture = texture.num;
        let num = texture.texture_views.len();
        let name = format!("texture_view{}{}{}{}", num_adapter, num_device, num_texture, num);

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
        let num_adapter = device.num_adapter;
        let num_device = device.num;
        let num = device.samplers.len();
        let name = format!("sampler{}{}{}", num_adapter, num_device, num);

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
        let num_adapter = device.num_adapter;
        let num_device = device.num;
        let num = device.query_sets.len();
        let name = format!("query{}{}{}", num_adapter, num_device, num);

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
        let num_adapter = device.num_adapter;
        let num_device = device.num;
        let num = device.shader_modules.len();
        let name = format!("shader_module{}{}{}", num_adapter, num_device, num);

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
        let num_adapter = device.num_adapter;
        let num_device = device.num;
        let num = device.bind_groups.len();
        let name = format!("bind_group{}{}{}", num_adapter, num_device, num);

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
        let num_adapter = device.num_adapter;
        let num_device = device.num;
        let num = device.bind_group_layouts.len();
        let name = format!("bind_group_layout{}{}{}", num_adapter, num_device, num);

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
        let num_adapter = device.num_adapter;
        let num_device = device.num;
        let num = device.pipeline_layouts.len();
        let name = format!("pipeline_layout{}{}{}", num_adapter, num_device, num);

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
        let num_adapter = device.num_adapter;
        let num_device = device.num;
        let num = device.compute_pipelines.len();
        let name = format!("compute_pipeline{}{}{}", num_adapter, num_device, num);

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
        let num_adapter = device.num_adapter;
        let num_device = device.num;
        let num = device.render_pipelines.len();
        let name = format!("render_pipeline{}{}{}", num_adapter, num_device, num);

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
        let num_adapter = device.num_adapter;
        let num_device = device.num;
        let num = device.render_bundle_encoders.len();
        let name = format!("render_bundle_encoder{}{}{}", num_adapter, num_device, num);

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

    pub num_adapter: usize,
    pub num_device: usize,

    pub compute_pass_encoders: Vec<GPUComputePassEncoder>,
    pub command_buffer: Option<GPUCommandBuffer>,
    pub submitted: bool
}

impl GPUCommandEncoder {
    pub fn new(device: &GPUDevice) -> GPUCommandEncoder {
        let num_adapter = device.num_adapter;
        let num_device = device.num;
        let num = device.command_encoders.len();
        let name = format!("command_encoder{}{}{}", num_adapter, num_device, num);

        GPUCommandEncoder {
            num,
            var_name: name,

            num_adapter,
            num_device,

            compute_pass_encoders: Vec::new(),
            command_buffer: None,
            submitted: false
        }
    }
}

#[derive(Debug, Clone)]
pub struct GPUComputePassEncoder {
    pub var_name: String,

    pub pipeline: Option<GPUComputePipeline>,
    pub bindgroup_set: bool,
    pub dispatched: bool,
    pub finished: bool,

    pub num_adapter: usize,
    pub num_device: usize,
    pub num_encoder: usize,
    pub num: usize,

    pub debug_group_active: bool,
}

impl GPUComputePassEncoder {
    pub fn new(encoder: &GPUCommandEncoder) -> GPUComputePassEncoder {
        let num_adapter = encoder.num_adapter;
        let num_device = encoder.num_device;
        let num_encoder = encoder.num;
        let num_pass = encoder.compute_pass_encoders.len();
        let name = format!("compute_pass_encoder{}{}{}{}", num_adapter, num_device, num_encoder, num_pass);

        GPUComputePassEncoder {
            var_name: name,

            pipeline: None,
            bindgroup_set: false,
            dispatched: false,
            finished: false,

            num_adapter,
            num_device,
            num_encoder,
            num: num_pass,

            debug_group_active: false,
        }
    }
}

#[derive(Debug, Clone)]
pub struct GPUCommandBuffer {
    pub num: usize,
    pub var_name: String
}

impl GPUCommandBuffer {
    pub fn new(encoder: &GPUCommandEncoder) -> GPUCommandBuffer {
        let num_adapter = encoder.num_adapter;
        let num_device = encoder.num_device;
        let num_encoder = encoder.num;
        let name = format!("command_buffer{}{}{}", num_adapter, num_device, num_encoder);

        GPUCommandBuffer {
            num: num_encoder,
            var_name: name
        }
    }
}