use crate::*;

pub fn submit_to_js(api_call: &APICall, created_resource: &Resource) -> String {
    match api_call {
        CreateCommandBuffer(encoder) => {
            if let Resource::GPUCommandBuffer(command_buffer) = created_resource {
                format!("const {} = {}.finish();", command_buffer.var_name, encoder.var_name)
            } else {
                panic!("created_resource for CreateCommandBuffer() call is not a command buffer!")
            }
        }
        SubmitQueueRandom(device, command_encoders) => {
            let mut command_buffers_str = String::from("[");
            for command_encoder in command_encoders {
                command_buffers_str.push_str(&command_encoder.command_buffer.as_ref().unwrap().var_name);
                command_buffers_str.push_str(", ");
            }
            command_buffers_str.push_str("]");
            format!("{}.queue.submit({});", device.var_name, command_buffers_str)
        }
        WaitSubmittedWork(device) => {
            format!("await {}.queue.onSubmittedWorkDone();", device.var_name)
        }
        _ => panic!("There is a bug in the to_javascript match calls")
    }
}