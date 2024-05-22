mod random_adapter;
mod random_device;

use std::fs;
use std::fs::File;
use std::io::prelude::*;
use std::process::Command;

enum APICall {
  CreateAdapter,
  CreateDevice,
  CreateBuffer,
  CreateCommandEncoder,
  CreateComputePipeline,
  CreateRenderPipeline,
  CreateShaderModule,
  SubmitWork
}

pub fn fuzz() {
    loop {
        fuzz_once().unwrap();
    }
}

pub fn fuzz_once() -> std::io::Result<()> {
    let mut file = File::create("test.js")?;

    let mut sample_program = String::from("");

    sample_program.push_str("\
const {{ create, globals }} = require('./dawn.node');
Object.assign(globalThis, globals); // Provides constants like GPUBufferUsage.MAP_READ
let navigator = {{ gpu: create(['enable-dawn-features=allow_unsafe_apis,disable_symbol_renaming']), }};");
    sample_program.push_str("\n\n");
    sample_program.push_str("async function init() {\n");
    sample_program.push_str(&fs::read_to_string("code_samples/navigator_check.txt").unwrap());

    for _ in 1..100 {
      sample_program.push_str("\n\n    hello")
    }

    sample_program.push_str("\n}\n\ninit();");
    
    file.write_all(sample_program.as_bytes())?;

    // let output = Command::new("node")
    //     .env("LD_PRELOAD", "/usr/lib/gcc/x86_64-linux-gnu/11/libasan.so")
    //     .env("ASAN_OPTIONS", "halt_on_error=1")
    //     .arg("test.js")
    //     .output()
    //     .expect("Failed to run test.js");

    // println!("status: {}", output.status);
    //println!("stdout: {}", String::from_utf8_lossy(&output.stdout));
    //println!("stderr: {}", String::from_utf8_lossy(&output.stderr));

    //assert!(output.status.success());

    Ok(())
}
