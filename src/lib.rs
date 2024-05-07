mod random_adapter;
mod random_device;

use std::fs;
use std::fs::File;
use std::io::prelude::*;
use std::process::Command;

enum DawnType {
  Safe,
  AllowUnsafeAPIs,
}

struct WebGPUProgram {
  dawn_import: String,
  random_adapter: String,
  random_device: String,
  program: String,
}

impl WebGPUProgram {

  fn new(dawn_type: DawnType) -> Self {
    let dawn_import_arguments = match dawn_type {
      DawnType::Safe => String::from("'enable-dawn-features=allow_unsafe_apis,disable_symbol_renaming'"),
      DawnType::AllowUnsafeAPIs => String::from("")
    };
    let dawn_import = format!("\
const {{ create, globals }} = require('./dawn.node');
Object.assign(globalThis, globals); // Provides constants like GPUBufferUsage.MAP_READ
let navigator = {{ gpu: create([{dawn_import_arguments}]), }};");

    let random_adapter = random_adapter::get_random_adapter();
    let random_device = random_device::get_random_device();

    Self {
      dawn_import,
      random_adapter,
      random_device,
      program: fs::read_to_string("code_samples/webgpu_program.txt").unwrap(),
    }
  }
  

  fn to_string(&self) -> String {
    let mut program_content = String::new();
    program_content.push_str(&self.dawn_import);
    program_content.push_str("\n\n");
    program_content.push_str("async function init() {\n");
    program_content.push_str(&fs::read_to_string("code_samples/navigator_check.txt").unwrap());
    program_content.push_str(&self.random_adapter);
    program_content.push_str(&self.random_device);
    program_content.push_str(&self.program);
    program_content.push_str("}\n\ninit();");

    program_content
  }

}

pub fn fuzz() {
    loop {
        fuzz_once().unwrap();
    }
}

pub fn fuzz_once() -> std::io::Result<()> {
    let mut file = File::create("test.js")?;

    let sample_program = WebGPUProgram::new(DawnType::AllowUnsafeAPIs).to_string();
    
    file.write_all(sample_program.as_bytes())?;

    let output = Command::new("node")
        .env("LD_PRELOAD", "/usr/lib/gcc/x86_64-linux-gnu/11/libasan.so")
        .env("ASAN_OPTIONS", "halt_on_error=1")
        .arg("test.js")
        .output()
        .expect("Failed to run test.js");

    println!("status: {}", output.status);
    //println!("stdout: {}", String::from_utf8_lossy(&output.stdout));
    //println!("stderr: {}", String::from_utf8_lossy(&output.stderr));

    //assert!(output.status.success());

    Ok(())
}
