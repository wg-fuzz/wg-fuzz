// art = abstract resource tree

// module: check available calls


// RESTRICTION: in impls, never store parameter reference on struct. it is cloned in generator

pub mod enum_wrapper;
pub mod primitives;
pub mod pipeline_setup;
pub mod encoders;

pub use primitives::*;
pub use pipeline_setup::*;
pub use encoders::*;

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