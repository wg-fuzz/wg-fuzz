use crate::*;

pub fn optional_render_pass_to_js(api_call: &APICall) -> String {
    match api_call {
        InsertRenderPassDebugMarker(render_pass) => {
            format!("{}.insertDebugMarker(\"marker\");", render_pass.var_name)
        }
        PushRenderPassDebugGroup(render_pass) => {
            format!("{}.pushDebugGroup(\"group_marker\");", render_pass.var_name)
        }
        PopRenderPassDebugGroup(render_pass) => {
            format!("{}.popDebugGroup();", render_pass.var_name)
        }
        SetBlendConstant(render_pass) => {
            format!("{}.setBlendConstant([1.0, 0.0, 0.0, 1.0]);", render_pass.var_name)
        }
        SetScissorRect(render_pass, texture) => {
            format!("{}.setScissorRect(0, 0, {}.width / 2, {}.height / 2);", render_pass.var_name, texture.var_name, texture.var_name)
        }
        SetStencilReference(render_pass) => {
            format!("{}.setStencilReference(1);", render_pass.var_name)
        }
        SetViewport(render_pass, texture) => {
            format!("{}.setViewport(0, 0, {}.width / 2, {}.height / 2, 0, 1);", render_pass.var_name, texture.var_name, texture.var_name)
        }
        ExecuteBundles(render_pass, bundles) => {
            let mut bundles_str = String::from("[");
            for bundle in bundles {
                bundles_str.push_str(&bundle.var_name);
                bundles_str.push_str(", ");
            }
            bundles_str.push_str("]");
            format!("{}.executeBundles({})", render_pass.var_name, bundles_str)
        }
        BeginOcclusionQuery(render_pass, query_set) => {
            format!("{}.beginOcclusionQuery({})", render_pass.var_name, query_set.i)
        }
        EndOcclusionQuery(render_pass) => {
            format!("{}.endOcclusionQuery()", render_pass.var_name)
        }
        _ => panic!("There is a bug in the to_javascript match calls")
    }
}