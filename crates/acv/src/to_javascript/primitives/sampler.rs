use crate::*;

pub fn sampler_to_js(api_call: &APICall, created_resource: &Resource) -> String {
    match api_call {
        CreateSampler(device) => {
            if let Resource::GPUSampler(sampler) = created_resource {
                format!("const {} = {}.createSampler();", sampler.var_name, device.var_name)
            } else {
                panic!("created_resource for CreateSampler() call is not a sampler!")
            }
        }
        _ => panic!("There is a bug in the to_javascript match calls")
    }
}