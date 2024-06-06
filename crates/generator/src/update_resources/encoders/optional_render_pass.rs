use crate::*;

pub fn update_optional_render_pass(resources: &mut ProgramResources, call: &APICall) -> Resource {
    let new_resource = Resource::None;

    match call {
        InsertRenderPassDebugMarker(_) => {}
        PushRenderPassDebugGroup(render_pass) => {
            resources.adapters[render_pass.num_adapter].devices[render_pass.num_device].command_encoders[render_pass.num_encoder].render_pass_encoders[render_pass.num].debug_group_active = true;
        }
        PopRenderPassDebugGroup(render_pass) => {
            resources.adapters[render_pass.num_adapter].devices[render_pass.num_device].command_encoders[render_pass.num_encoder].render_pass_encoders[render_pass.num].debug_group_active = false;
        }
        SetBlendConstant(_) => {}
        SetScissorRect(_, _) => {}
        SetStencilReference(_) => {}
        SetViewport(_, _) => {}
        _ => { panic!("There is a bug in the update_resource match calls") }
    }
    new_resource
}