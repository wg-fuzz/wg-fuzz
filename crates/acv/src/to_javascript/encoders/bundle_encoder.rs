use crate::*;

pub fn bundle_to_js(api_call: &APICall, created_resource: &Resource) -> String {
    match api_call {
        CreateRenderBundleEncoder(device) => {
            if let Resource::GPURenderBundleEncoder(bundle) = created_resource {
                return format!("const {} = {}.createRenderBundleEncoder({{
        colorFormats: [\"bgra8unorm\"]
    }});", 
                    bundle.var_name, device.var_name);
            } else {
                panic!("created_resource for CreateRenderBundleEncoder() call is not a render bundle!")
            }
        }
        SetPipelineBundle(bundle, render_pipeline) => {
            return format!("{}.setPipeline({});", bundle.var_name, render_pipeline.var_name);
        }
        SetVertexBufferBundle(bundle, buffer) => {
            return format!("{}.setVertexBuffer(0, {});", bundle.var_name, buffer.var_name);
        }
        SetIndexBufferBundle(bundle, buffer) => {
            return format!("{}.setIndexBuffer({}, \"uint16\");", bundle.var_name, buffer.var_name);
        }
    //     SetRenderPassBindGroup(bundle, bind_group) => {
    //         return format!("\
    // const {} = {}.createBindGroup({{
    //     layout: {}.getBindGroupLayout(0)
    // }})
    
    // {}.setBindGroup(0, {});", bundle.var_name, render_pipeline.var_name);
        // }
        DrawBundle(bundle) => {
            return format!("{}.draw(3);", bundle.var_name);
        }
        DrawIndexedBundle(bundle) => {
            return format!("{}.drawIndexed(3);", bundle.var_name);
        }
        DrawIndirectBundle(bundle, buffer) => {
            return format!("{}.drawIndirect({}, 0);", bundle.var_name, buffer.var_name);
        }
        DrawIndexedIndirectBundle(bundle, buffer) => {
            return format!("{}.drawIndexedIndirect({}, 0);", bundle.var_name, buffer.var_name);
        }
        EndBundle(bundle) => {
            return format!("{}.finish();", bundle.var_name);
        }
        InsertDebugMarkerBundle(bundle) => {
            return format!("{}.insertDebugMarker(\"marker\");", bundle.var_name);
        }
        PushDebugGroupBundle(bundle) => {
            return format!("{}.pushDebugGroup(\"group_marker\");", bundle.var_name);
        }
        PopDebugGroupBundle(bundle) => {
            return format!("{}.popDebugGroup();", bundle.var_name);
        }
        _ => { panic!("There is a bug in the to_javascript match calls") }
    }
}