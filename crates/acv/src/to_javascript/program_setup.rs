use crate::*;

pub fn print_wgsl_language_features() -> String {
    return String::from("console.log(navigator.gpu.wgslLanguageFeatures.size);

    for (const value of navigator.gpu.wgslLanguageFeatures.keys()) {
        console.log(value);
    }");
}