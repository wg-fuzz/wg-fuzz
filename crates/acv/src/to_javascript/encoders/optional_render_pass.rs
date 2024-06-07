use crate::*;

pub fn optional_render_pass_to_js(api_call: &APICall) -> String {
    match api_call {
        InsertRenderPassDebugMarker(render_pass) => {
            return format!("{}.insertDebugMarker(\"marker\");", render_pass.var_name);
        }
        PushRenderPassDebugGroup(render_pass) => {
            return format!("{}.pushDebugGroup(\"group_marker\");", render_pass.var_name);
        }
        PopRenderPassDebugGroup(render_pass) => {
            return format!("{}.popDebugGroup();", render_pass.var_name);
        }
        SetBlendConstant(render_pass) => {
            return format!("{}.setBlendConstant([1.0, 0.0, 0.0, 1.0]);", render_pass.var_name);
        }
        SetScissorRect(render_pass, texture) => {
            return format!("{}.setScissorRect(0, 0, {}.width / 2, {}.height / 2);", render_pass.var_name, texture.var_name, texture.var_name);
        }
        SetStencilReference(render_pass) => {
            return format!("{}.setStencilReference(1);", render_pass.var_name);
        }
        SetViewport(render_pass, texture) => {
            return format!("{}.setViewport(0, 0, {}.width / 2, {}.height / 2, 0, 1);", render_pass.var_name, texture.var_name, texture.var_name);
        }
        ExecuteBundles(render_pass, bundles) => {
            let mut bundles_str = String::from("[");
            for bundle in bundles {
                bundles_str.push_str(&bundle.var_name);
                bundles_str.push_str(", ");
            }
            bundles_str.push_str("]");
            return format!("{}.executeBundles({})", render_pass.var_name, bundles_str);
        }
        BeginOcclusionQuery(render_pass, query_set) => {
            return format!("{}.beginOcclusionQuery({})", render_pass.var_name, query_set.i)
        }
        EndOcclusionQuery(render_pass) => {
            return format!("{}.endOcclusionQuery()", render_pass.var_name)
        }
        _ => { panic!("There is a bug in the to_javascript match calls") }
    }
}