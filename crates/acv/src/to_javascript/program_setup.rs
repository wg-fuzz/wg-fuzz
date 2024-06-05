use crate::*;

pub fn print_wgsl_language_features() -> String {
    return String::from("console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }");
}

pub fn print_preferred_canvas_format() -> String {
    return String::from("console.log(navigator.gpu.getPreferredCanvasFormat());");
}