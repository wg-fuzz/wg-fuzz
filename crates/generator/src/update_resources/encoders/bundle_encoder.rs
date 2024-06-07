use crate::*;

pub fn update_bundle(resources: &mut ProgramResources, call: &APICall) -> Resource {
    let mut new_resource = Resource::None;

    match call {
        CreateRenderBundleEncoder(device) => {
            new_resource = Resource::GPURenderBundleEncoder(GPURenderBundleEncoder::new(device));
            resources.adapters[device.num_adapter].devices[device.num].render_bundle_encoders.push(GPURenderBundleEncoder::new(device));
        }
        SetPipelineBundle(bundle, render_pipeline) => {
            resources.adapters[bundle.num_adapter].devices[bundle.num_device].render_bundle_encoders[bundle.num].pipeline = Some(render_pipeline.clone());
        }
        SetVertexBufferBundle(bundle, buffer) => {
            resources.adapters[bundle.num_adapter].devices[bundle.num_device].render_bundle_encoders[bundle.num].vertex_buffer = Some(buffer.clone());
        }
        SetIndexBufferBundle(bundle, buffer) => {
            resources.adapters[bundle.num_adapter].devices[bundle.num_device].render_bundle_encoders[bundle.num].index_buffer = Some(buffer.clone());
        }
        DrawBundle(bundle) => {
            resources.adapters[bundle.num_adapter].devices[bundle.num_device].render_bundle_encoders[bundle.num].drew = true;
        }
        DrawIndexedBundle(bundle) => {
            resources.adapters[bundle.num_adapter].devices[bundle.num_device].render_bundle_encoders[bundle.num].drew = true;
        }
        DrawIndirectBundle(bundle, _) => {
            resources.adapters[bundle.num_adapter].devices[bundle.num_device].render_bundle_encoders[bundle.num].drew = true;
        }
        DrawIndexedIndirectBundle(bundle, _) => {
            resources.adapters[bundle.num_adapter].devices[bundle.num_device].render_bundle_encoders[bundle.num].drew = true;
        }
        EndBundle(bundle) => {
            resources.adapters[bundle.num_adapter].devices[bundle.num_device].render_bundle_encoders[bundle.num].finished = true;
        }
        InsertDebugMarkerBundle(_) => {}
        PushDebugGroupBundle(bundle) => {
            resources.adapters[bundle.num_adapter].devices[bundle.num_device].render_bundle_encoders[bundle.num].debug_group_active = true;
        }
        PopDebugGroupBundle(bundle) => {
            resources.adapters[bundle.num_adapter].devices[bundle.num_device].render_bundle_encoders[bundle.num].debug_group_active = false;
        }
        _ => { panic!("There is a bug in the update_resource match calls") }
    }
    new_resource
}