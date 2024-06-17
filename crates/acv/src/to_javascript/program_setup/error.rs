use crate::*;

pub fn error_to_js(api_call: &APICall) -> String {
    match api_call {
        PushRandomErrorScope(device) => {
            let mut rng = rand::thread_rng();
            let i = rng.gen_range(0..3);
            let random_error_type = match i {
                0 => "\"internal\"",
                1 => "\"out-of-memory\"",
                2 => "\"validation\"",
                _ => "\"internal\"",
            };
            format!("{}.pushErrorScope({});", device.var_name, random_error_type)
        }
        PopErrorScope(device) => {
            format!("\
    {}.popErrorScope().then((error) => {{
        if (error) {{
            console.error(`An error occurred: ${{error.message}}`);
        }}
    }});", device.var_name)
        }
        AddUncapturedErrorListener(device) => {
            format!("console.log(typeof {}.onuncapturederror);", device.var_name)
        },
        _ => panic!("There is a bug in the to_javascript match calls")
    }
}