use crate::*;

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