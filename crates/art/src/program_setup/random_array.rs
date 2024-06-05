use crate::*;

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