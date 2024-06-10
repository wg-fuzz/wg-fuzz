use crate::*;

pub fn compute_pipeline_to_js(api_call: &APICall, created_resource: &Resource) -> String {
    match api_call {
        CreateComputePipeline(device, shader_module, pipeline_layout) => {
            if let Resource::GPUComputePipeline(compute_pipeline) = created_resource {
                format!("const {} = {}.createComputePipeline({{ layout: {}, compute: {{ module: {}, entryPoint: \"main\" }} }});", 
                    compute_pipeline.var_name, device.var_name, pipeline_layout.var_name, shader_module.var_name)
            } else {
                panic!("created_resource for CreateComputePipeline() call is not a compute pipeline!")
            }
        }
        CreateComputePipelineAsync(device, shader_module, pipeline_layout) => {
            if let Resource::GPUComputePipeline(compute_pipeline) = created_resource {
                format!("const {} = await {}.createComputePipelineAsync({{ layout: {}, compute: {{ module: {}, entryPoint: \"main\" }} }});", 
                    compute_pipeline.var_name, device.var_name, pipeline_layout.var_name, shader_module.var_name)
            } else {
                panic!("created_resource for CreateComputePipelineAsync() call is not a compute pipeline!")
            }
        }
        _ => panic!("There is a bug in the to_javascript match calls")
    }
}