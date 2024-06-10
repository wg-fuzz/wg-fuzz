use crate::*;

pub fn update_buffer(resources: &mut ProgramResources, call: &APICall) -> Resource {
    let mut new_resource = Resource::None;

    match call {
        CreateRandomBuffer(device) => {
            let mut rng = rand::thread_rng();
            let i = rng.gen_range(0..10);
            let random_buffer_use_case = String::from(
                match i {
                    0 => "GPUBufferUsage.COPY_SRC",
                    1 => "GPUBufferUsage.COPY_DST",
                    2 => "GPUBufferUsage.INDEX",
                    3 => "GPUBufferUsage.INDIRECT",
                    4 => "GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ",
                    5 => "GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE",
                    6 => "GPUBufferUsage.QUERY_RESOLVE",
                    7 => "GPUBufferUsage.STORAGE",
                    8 => "GPUBufferUsage.UNIFORM",
                    9 => "GPUBufferUsage.VERTEX",
                    _ => "GPUBufferUsage.UNIFORM",
                });

            new_resource = Resource::GPUBuffer(GPUBuffer::new(device, random_buffer_use_case.clone(), 0));
            resources.adapters[device.num_adapter].devices[device.num].buffers.push(GPUBuffer::new(device, random_buffer_use_case, 0))
        }
        PrintBufferInfo(_) => {}
        ReadMappedBuffer(_) => {}
        WriteBuffer(_, _, _) => {}
        DestroyBuffer(buffer) => {
            resources.adapters[buffer.num_adapter].devices[buffer.num_device].buffers[buffer.num].destroyed = true;
        }
        _ => panic!("There is a bug in the update_resource match calls")
    }
    new_resource
}