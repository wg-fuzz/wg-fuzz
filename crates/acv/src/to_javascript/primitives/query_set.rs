use crate::*;

pub fn query_set_to_js(api_call: &APICall, created_resource: &Resource) -> String {
    match api_call {
        CreateOcclusionQuerySet(device) => {
            if let Resource::GPUQuerySet(query_set) = created_resource {
                format!("const {} = {}.createQuerySet({{
        type: \"occlusion\",
        count: 32,
    }});", 
                    query_set.var_name, device.var_name)
            } else {
                panic!("created_resource for CreateOcclusionQuerySet() call is not a query set!")
            }
        }
        PrintQuerySet(query_set) => {
            format!("\
    console.log({}.label);
    
    console.log({}.type);
    
    console.log({}.count);",
                query_set.var_name, query_set.var_name, query_set.var_name)
        } 
        DestroyQuerySet(query_set) => {
            format!("{}.destroy()", query_set.var_name)
        }
        _ => panic!("There is a bug in the to_javascript match calls")
    }
}