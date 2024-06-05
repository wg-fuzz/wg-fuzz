use crate::*;

pub fn program_to_js(api_call: &APICall, created_resource: &Resource) -> String {
    match api_call {
        PrintWGSLLanguageFeatures() => {
            return String::from("console.log(navigator.gpu.wgslLanguageFeatures.size);

for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
    console.log(value);
}");
        },
        PrintPreferredCanvasFormat() => {
            return String::from("console.log(navigator.gpu.getPreferredCanvasFormat());");
        },
        CreateArray() => {
            if let Resource::RandomArray(array) = created_resource {
                let mut random_floats = String::new();
                let float_choices = ["-1.0", "-0.75", "-0.5", "-0.25", "0.0", "0.25", "0.5", "0.75", "1.0"];
                let mut rand = rand::thread_rng();
                for _ in 0..100 {
                    let i = rand.gen_range(0..float_choices.len());
                    random_floats.push_str(float_choices[i]);
                    random_floats.push_str(", ");
                }
                return format!("const {} = new Float32Array([{}]);", array.var_name, random_floats);
            } else {
                panic!("created_resource for CreateDevice() call is not a device!")
            }
        },
        _ => { panic!("There is a bug in the to_javascript match calls") }
    }
}