mod random_adapter;
mod random_device;

use std::fs;
use std::fs::File;
use std::io::prelude::*;
use std::process::Command;
use rand::{
  distributions::{Distribution, Standard},
  Rng,
};
use std::collections::HashMap;

#[derive(PartialEq, Eq, Hash, Clone, Copy)]
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

struct Adapter {
  var_name: String
}

struct Device {
  var_name: String
}

struct Buffer {
  var_name: String
}

struct CommandEncoder {
  var_name: String
}

struct ComputePipeline {
  var_name: String
}

struct RenderPipeline {
  var_name: String
}

struct ShaderModule {
  var_name: String
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

    let mut js_var_namespace: HashMap<APICall, Vec<String>> = HashMap::new();

    for _ in 1..100 {
      // pick random API call
      let api_call: APICall = rand::random();

      sample_program.push_str("\n\n    ");

      // handle it appropriately
      match api_call {
        APICall::CreateAdapter => {
          let mut names_vec = js_var_namespace.entry(api_call)
                                                           .or_insert(Vec::new())
                                                           .to_owned();
          let name = format!("adapter{}", names_vec.len());
          sample_program.push_str(&format!("{} = CreateAdapter", name));
          names_vec.push(name);
          js_var_namespace.insert(api_call, names_vec);
        }
        APICall::CreateDevice => {
          let mut names_vec = js_var_namespace.entry(api_call)
                                                           .or_insert(Vec::new())
                                                           .to_owned();
          let name = format!("device{}", names_vec.len());
          sample_program.push_str(&format!("{} = CreateDevice", name));
          names_vec.push(name);
          js_var_namespace.insert(api_call, names_vec);
        }
        APICall::CreateBuffer => {
          let mut names_vec = js_var_namespace.entry(api_call)
                                                           .or_insert(Vec::new())
                                                           .to_owned();
          let name = format!("buffer{}", names_vec.len());
          sample_program.push_str(&format!("{} = CreateBuffer", name));
          names_vec.push(name);
          js_var_namespace.insert(api_call, names_vec);
        }
        APICall::CreateCommandEncoder => {
          let mut names_vec = js_var_namespace.entry(api_call)
                                                           .or_insert(Vec::new())
                                                           .to_owned();
          let name = format!("commandEncoder{}", names_vec.len());
          sample_program.push_str(&format!("{} = CreateCommandEncoder", name));
          names_vec.push(name);
          js_var_namespace.insert(api_call, names_vec);
        }
        APICall::CreateComputePipeline => {
          let mut names_vec = js_var_namespace.entry(api_call)
                                                           .or_insert(Vec::new())
                                                           .to_owned();
          let name = format!("computerPipeline{}", names_vec.len());
          sample_program.push_str(&format!("{} = CreateComputerPipeline", name));
          names_vec.push(name);
          js_var_namespace.insert(api_call, names_vec);
        }
        APICall::CreateRenderPipeline => {
          let mut names_vec = js_var_namespace.entry(api_call)
                                                           .or_insert(Vec::new())
                                                           .to_owned();
          let name = format!("renderPipeline{}", names_vec.len());
          sample_program.push_str(&format!("{} = CreateRenderPipeline", name));
          names_vec.push(name);
          js_var_namespace.insert(api_call, names_vec);
        }
        APICall::CreateShaderModule => {
          let mut names_vec = js_var_namespace.entry(api_call)
                                                           .or_insert(Vec::new())
                                                           .to_owned();
          let name = format!("shaderModule{}", names_vec.len());
          sample_program.push_str(&format!("{} = CreateShaderModule", name));
          names_vec.push(name);
          js_var_namespace.insert(api_call, names_vec);
        }
        APICall::SubmitWork => {
          sample_program.push_str("SubmitWork")
        }
        APICall::Bug => {
          panic!("Bug in API call random distribution");
        }
      }
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
