pub fn create_adapter(var_name: &String) -> String {
    format!("const {} = await navigator.gpu.requestAdapter();", var_name)
}