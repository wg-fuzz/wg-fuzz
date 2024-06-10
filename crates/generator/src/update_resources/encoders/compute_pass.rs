use crate::*;

pub fn update_compute_pass(resources: &mut ProgramResources, call: &APICall) -> Resource {
    let mut new_resource = Resource::None;

    match call {
        CreateComputePass(encoder) => {
            new_resource = Resource::GPUComputePassEncoder(GPUComputePassEncoder::new(encoder));
            resources.adapters[encoder.num_adapter].devices[encoder.num_device].command_encoders[encoder.num].compute_pass_encoders.push(GPUComputePassEncoder::new(encoder));
        }
        SetComputePassPipeline(compute_pass, compute_pipeline) => {
            resources.adapters[compute_pass.num_adapter].devices[compute_pass.num_device].command_encoders[compute_pass.num_encoder].compute_pass_encoders[compute_pass.num].pipeline = Some(compute_pipeline.clone());
        }
        SetComputePassBindGroupTemplate(device, compute_pass_encoder, _) => {
            let uniform_buffer = GPUBuffer::new(device, String::from("GPUBufferUsage.UNIFORM"), 0);
            let storage_buffer = GPUBuffer::new(device, String::from("GPUBufferUsage.STORAGE"), 1);
            // let bind_group_layout = GPUBindGroupLayout::new(device);
            let bind_group = GPUBindGroup::new(device);
            new_resource = Resource::BindGroupTemplate(uniform_buffer.clone(), storage_buffer.clone(), bind_group.clone());
            resources.adapters[compute_pass_encoder.num_adapter]
                     .devices[compute_pass_encoder.num_device]
                     .buffers.extend([uniform_buffer, storage_buffer]);
            // resources.adapters[compute_pass_encoder.num_adapter]
            //          .devices[compute_pass_encoder.num_device]
            //          .bind_group_layouts.extend([bind_group_layout]);
            resources.adapters[compute_pass_encoder.num_adapter]
                     .devices[compute_pass_encoder.num_device]
                     .bind_groups.extend([bind_group]);
            resources.adapters[compute_pass_encoder.num_adapter]
                     .devices[compute_pass_encoder.num_device]
                     .command_encoders[compute_pass_encoder.num_encoder]
                     .compute_pass_encoders[compute_pass_encoder.num]
                     .bindgroup_set = true;
        }
        SetComputePassWorkgroups(compute_pass_encoder) => {
            resources.adapters[compute_pass_encoder.num_adapter]
                     .devices[compute_pass_encoder.num_device]
                     .command_encoders[compute_pass_encoder.num_encoder]
                     .compute_pass_encoders[compute_pass_encoder.num]
                     .dispatched = true;
        }
        SetComputePassWorkgroupsIndirect(device, compute_pass_encoder) => {
            new_resource = Resource::GPUBuffer(GPUBuffer::new(device, String::from("GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT"), 0));
            resources.adapters[compute_pass_encoder.num_adapter]
                     .devices[compute_pass_encoder.num_device]
                     .buffers.push(GPUBuffer::new(device, String::from("GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT"), 0));
            resources.adapters[compute_pass_encoder.num_adapter]
                     .devices[compute_pass_encoder.num_device]
                     .command_encoders[compute_pass_encoder.num_encoder]
                     .compute_pass_encoders[compute_pass_encoder.num]
                     .dispatched = true;
        }
        InsertComputePassDebugMarker(_) => {}
        PushComputePassDebugGroup(compute_pass_encoder) => {
            resources.adapters[compute_pass_encoder.num_adapter]
                     .devices[compute_pass_encoder.num_device]
                     .command_encoders[compute_pass_encoder.num_encoder]
                     .compute_pass_encoders[compute_pass_encoder.num].debug_group_active = true;
        }
        PopComputePassDebugGroup(compute_pass_encoder) => {
            resources.adapters[compute_pass_encoder.num_adapter]
                     .devices[compute_pass_encoder.num_device]
                     .command_encoders[compute_pass_encoder.num_encoder]
                     .compute_pass_encoders[compute_pass_encoder.num].debug_group_active = false;
        }
        EndComputePass(compute_pass_encoder) => {
            resources.adapters[compute_pass_encoder.num_adapter].devices[compute_pass_encoder.num_device].command_encoders[compute_pass_encoder.num_encoder].compute_pass_encoders[compute_pass_encoder.num].finished = true;
        }
        _ => panic!("There is a bug in the update_resource match calls")
    }
    new_resource
}