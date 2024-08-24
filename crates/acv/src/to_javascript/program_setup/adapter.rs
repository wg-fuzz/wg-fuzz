use crate::*;

pub fn adapter_to_js(api_call: &APICall, created_resource: &Resource) -> String {
    match api_call {
        CreateAdapter() => {
            if let Resource::GPUAdapter(adapter) = created_resource {
                let mut rng = rand::thread_rng();
                let i = rng.gen_range(0..3);
                let random_power_preference = match i {
                    0 => "undefined",
                    1 => "\"low-power\"",
                    2 => "\"high-performance\"",
                    _ => "undefined",
                };
                format!("\
    const {} = await gpu.requestAdapter({{
        powerPreference: {}
    }});", 
                    adapter.var_name, random_power_preference)
            } else {
                panic!("created_resource for CreateAdapter() call is not an adapter!")
            }
        }
        PrintAdapterInfo(_) => {
            format!("")
        }
        _ => panic!("There is a bug in the to_javascript match calls")
    }
}