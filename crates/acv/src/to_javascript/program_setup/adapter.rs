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
    const {} = await navigator.gpu.requestAdapter({{
        powerPreference: {},
        label: \"{}\"
    }});", 
                    adapter.var_name, random_power_preference, adapter.var_name)
            } else {
                panic!("created_resource for CreateAdapter() call is not an adapter!")
            }
        }
        PrintAdapterInfo(adapter) => {
            format!("\
    console.log({}.features.size);

    for (const value of {}.features.keys()) {{
        console.log(value);
    }}

    console.log({}.isFallbackAdapter);

    console.log({}.limits.size);

    for (const [key, value] of Object.entries({}.limits)) {{
        console.log(key);
        console.log(value);
    }}

    {{
        const adapterInfo = await {}.requestAdapterInfo();
        console.log(adapterInfo.vendor);
        console.log(adapterInfo.architecture);
        console.log(adapterInfo.device);
        console.log(adapterInfo.description);
    }}", 
                adapter.var_name, adapter.var_name, adapter.var_name, 
                adapter.var_name, adapter.var_name, adapter.var_name)
        }
        _ => panic!("There is a bug in the to_javascript match calls")
    }
}