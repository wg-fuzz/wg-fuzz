// art = abstract resource tree

// module: check available calls

#[derive(Debug)]
pub struct ProgramResources {
    pub adapters: Vec<GPUAdapter>,
    pub html_videos: Vec<HTMLVideo>
}

#[derive(Debug)]
pub struct GPUAdapter {
    pub var_name: String,

    pub devices: Vec<GPUDevice>
}

#[derive(Debug)]
pub struct GPUDevice {
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

#[derive(Debug)]
pub struct GPUBuffer {
    pub var_name: String
}

#[derive(Debug)]
pub struct GPUTexture {
    pub var_name: String,

    pub texture_views: Vec<GPUTextureView>
}

#[derive(Debug)]
pub struct GPUTextureView {
    pub var_name: String
}

#[derive(Debug)]
pub struct GPUExternalTexture {
    pub var_name: String
}

#[derive(Debug)]
pub struct HTMLVideo {
    pub var_name: String
}

#[derive(Debug)]
pub struct GPUSampler {
    pub var_name: String
}

#[derive(Debug)]
pub struct GPUQuerySet {
    pub var_name: String
}

#[derive(Debug)]
pub struct GPUShaderModule {
    pub var_name: String
}

#[derive(Debug)]
pub struct GPUBindGroup {
    pub var_name: String
}

#[derive(Debug)]
pub struct GPUBindGroupLayout {
    pub var_name: String
}

#[derive(Debug)]
pub struct GPUPipelineLayout {
    pub var_name: String
}

#[derive(Debug)]
pub struct GPUComputePipeline {
    pub var_name: String
}

#[derive(Debug)]
pub struct GPURenderPipeline {
    pub var_name: String
}

#[derive(Debug)]
pub struct GPURenderBundleEncoder {
    pub var_name: String,

    vertex_buffer_set: bool,
    render_pipeline_set: bool,
    index_buffer_set: bool,
    bind_group_set: bool,
    finished: bool
}

#[derive(Debug)]
pub struct GPUCommandEncoder {
    pub var_name: String,

    finished: bool
}