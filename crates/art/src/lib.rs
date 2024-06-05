// art = abstract resource tree

// module: check available calls

// RESTRICTION: in impls, never store parameter reference on struct. it is cloned in generator

pub mod enum_wrapper;
pub mod primitives;
pub mod pipeline_setup;
pub mod encoders;
pub mod program_setup;

pub use primitives::*;
pub use pipeline_setup::*;
pub use encoders::*;
pub use program_setup::*;

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