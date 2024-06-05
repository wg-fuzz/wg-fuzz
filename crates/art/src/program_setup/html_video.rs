use crate::*;

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