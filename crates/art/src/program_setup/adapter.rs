use crate::*;

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