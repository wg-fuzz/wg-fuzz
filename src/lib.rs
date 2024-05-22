mod random_adapter;
mod random_device;

use std::fmt;
use std::fs;
use std::fs::File;
use std::io::prelude::*;
use std::process::Command;
use rand::{
  distributions::{Distribution, Standard},
  Rng,
};

#[derive(Debug)]
enum APICall {
  CreateAdapter,
  CreateDevice,
  CreateBuffer,
  CreateCommandEncoder,
  CreateComputePipeline,
  CreateRenderPipeline,
  CreateShaderModule,
  SubmitWork,
  Bug
}

impl fmt::Display for APICall {
  fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
      write!(f, "{:?}", self)
  }
}


impl Distribution<APICall> for Standard {
  fn sample<R: Rng + ?Sized>(&self, rng: &mut R) -> APICall {
      match rng.gen_range(0..8) {
          0 => APICall::CreateAdapter,
          1 => APICall::CreateDevice,
          2 => APICall::CreateBuffer,
          3 => APICall::CreateCommandEncoder,
          4 => APICall::CreateComputePipeline,
          5 => APICall::CreateRenderPipeline,
          6 => APICall::CreateShaderModule,
          7 => APICall::SubmitWork,
          _ => APICall::Bug
      }
  }
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
      let api_call: APICall = rand::random();
      sample_program.push_str(&format!("\n\n    {}", api_call.to_string()))
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
