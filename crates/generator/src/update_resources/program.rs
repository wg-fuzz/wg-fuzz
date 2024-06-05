use crate::*;

pub fn update_program(resources: &mut ProgramResources, call: &APICall) -> Resource {
    let mut new_resource = Resource::None;

    match call {
        PrintWGSLLanguageFeatures() => {}
        PrintPreferredCanvasFormat() => {}
        CreateArray() => {
            new_resource = Resource::RandomArray(RandomArray::new(&resources));
            resources.random_arrays.push(RandomArray::new(&resources))
        }
        _ => {}
    }
    new_resource
}