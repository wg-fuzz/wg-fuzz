use std::fs;
use std::fs::File;
use std::io::prelude::*;
use std::process::{Command, Stdio};
use rand::Rng;
use std::collections::HashMap;

use strum::IntoEnumIterator;
use strum_macros::EnumIter;

use reconditioner::cli;
use reconditioner::cli::Options;

mod calls;

#[derive(PartialEq, Eq, Hash, Clone, Copy, EnumIter)]
enum APICall {
  CreateAdapter,
  CreateDevice,
  CreateShaderModule,
  CreateComputePipeline,
  CreateCommandBuffer,
}

pub fn fuzz() {
    loop {
        fuzz_once().unwrap();
    }
}

pub fn fuzz_once() -> std::io::Result<()> {
    let mut requirement_map: HashMap<APICall, Vec<APICall>> = HashMap::new();
    // requirement_map.insert(APICall::CreateAdapter, vec![]);
    // requirement_map.insert(APICall::CreateDevice, vec![APICall::CreateAdapter]);
    requirement_map.insert(APICall::CreateShaderModule, vec![APICall::CreateDevice]);
    requirement_map.insert(APICall::CreateComputePipeline, vec![APICall::CreateDevice, APICall::CreateShaderModule]);
    requirement_map.insert(APICall::CreateCommandBuffer, vec![APICall::CreateDevice, APICall::CreateComputePipeline]);

    match std::fs::remove_dir_all("out/") {
      Ok(_) => {},
      Err(_) => {}
    }

    std::fs::create_dir("out")?;

    let mut file = File::create("out/test.js")?;

    let mut sample_program = String::from("");

    sample_program.push_str("\
const { create, globals } = require('../dawn.node');
Object.assign(globalThis, globals); // Provides constants like GPUBufferUsage.MAP_READ
let navigator = { gpu: create(['enable-dawn-features=allow_unsafe_apis,disable_symbol_renaming']), };
const fs = require('node:fs/promises');");
    sample_program.push_str("\n\n");
    sample_program.push_str("async function init() {\n");
    sample_program.push_str(&fs::read_to_string("crates/wg-fuzz/code_samples/navigator_check.txt").unwrap());

    sample_program.push_str("\n\n    ");

    let mut js_var_namespace: HashMap<APICall, Vec<String>> = HashMap::new();
    for api_call in APICall::iter() {
      js_var_namespace.insert(api_call, Vec::new());
    }
    let mut available_api_calls: Vec<APICall> = Vec::new();

    let mut names_vec = js_var_namespace.get(&APICall::CreateAdapter)
        .unwrap()
        .to_owned();
    let name = format!("adapter0");
    sample_program.push_str(&calls::create_adapter(&name));
    names_vec.push(name);
    js_var_namespace.insert(APICall::CreateAdapter, names_vec);


    let mut names_vec = js_var_namespace.get(&APICall::CreateDevice)
                                                      .unwrap()
                                                      .to_owned();
    let name = format!("device{}", names_vec.len());

    let param_name = &String::from("adapter0");
    
    sample_program.push_str(&calls::create_device(  &name, param_name));
    names_vec.push(name);
    js_var_namespace.insert(APICall::CreateDevice, names_vec);

    for _ in 1..5 {
      // find which api calls are available
      for (call, names) in &requirement_map {
        let mut allow = true;
        for name in names {
          if js_var_namespace.get(name).unwrap().len() == 0 {
            allow = false;
          }
        }
        if allow && !available_api_calls.contains(call){
          available_api_calls.push(*call);
        }
      }

      // pick random API call
      let mut rng = rand::thread_rng();
      let index = rng.gen_range(0..available_api_calls.len());
      let api_call = available_api_calls[index];

      sample_program.push_str("\n\n    ");

      // handle it appropriately
      match api_call {
        APICall::CreateAdapter => {
          // let mut names_vec = js_var_namespace.get(&api_call)
          //                                                  .unwrap()
          //                                                  .to_owned();
          // let name = format!("adapter{}", names_vec.len());
          // sample_program.push_str(&calls::create_adapter(&name));
          // names_vec.push(name);
          // js_var_namespace.insert(api_call, names_vec);
        }
        APICall::CreateDevice => {
          // let mut names_vec = js_var_namespace.get(&api_call)
          //                                                  .unwrap()
          //                                                  .to_owned();
          // let name = format!("device{}", names_vec.len());

          // let available_names = js_var_namespace.get(&APICall::CreateAdapter).unwrap();
          // let index = rng.gen_range(0..available_names.len());
          // let param_name = &available_names[index];
          
          // sample_program.push_str(&calls::create_device(  &name, param_name));
          // names_vec.push(name);
          // js_var_namespace.insert(api_call, names_vec);
        }
        APICall::CreateComputePipeline => {
          let mut names_vec = js_var_namespace.get(&api_call)
                                                           .unwrap()
                                                           .to_owned();
          let name = format!("computePipeline{}", names_vec.len());

          let available_names = js_var_namespace.get(&APICall::CreateDevice).unwrap();
          let index = rng.gen_range(0..available_names.len());
          let param_name1 = &available_names[index];

          let available_names = js_var_namespace.get(&APICall::CreateShaderModule).unwrap();
          let index = rng.gen_range(0..available_names.len());
          let param_name2 = &available_names[index];

          sample_program.push_str(&calls::create_compute_pipeline(&name, param_name1, param_name2));
          names_vec.push(name);
          js_var_namespace.insert(api_call, names_vec);
        }
        APICall::CreateShaderModule => {
          let mut names_vec = js_var_namespace.get(&api_call)
                                                           .unwrap()
                                                           .to_owned();
          let name = format!("shaderModule{}", names_vec.len());

          let available_names = js_var_namespace.get(&APICall::CreateDevice).unwrap();
          let index = rng.gen_range(0..available_names.len());
          let param_name = &available_names[index];

          let file_name = format!("out/{}.wgsl", name);

          let file = File::create(&file_name)?;

          let stdio = Stdio::from(file);

          Command::new("target/debug/generator")
            .arg("--max-block-depth=1")
            .arg("--max-fns=2")
            .stdout(stdio)
            .output()?;

          //TODO: add args to generator?

          let _ = cli::run(Options {
            input: file_name.clone(),
            output: file_name.clone(),
            enable: Vec::new()
          });

          sample_program.push_str(&calls::create_shader_module(&name, param_name));
          names_vec.push(name);
          js_var_namespace.insert(api_call, names_vec);
        }
        APICall::CreateCommandBuffer => {
          let mut names_vec = js_var_namespace.get(&api_call)
                                                           .unwrap()
                                                           .to_owned();
          let name = format!("{}", names_vec.len());

          let available_names = js_var_namespace.get(&APICall::CreateDevice).unwrap();
          let index = rng.gen_range(0..available_names.len());
          let param_name1 = &available_names[index];

          let available_names = js_var_namespace.get(&APICall::CreateComputePipeline).unwrap();
          let index = rng.gen_range(0..available_names.len());
          let param_name2 = &available_names[index];

          sample_program.push_str(&calls::create_command_buffer(&name, param_name1, param_name2));
          names_vec.push(name);
          js_var_namespace.insert(api_call, names_vec);
        }
      }
    }

    sample_program.push_str("\n}\n\ninit();");
    
    file.write_all(sample_program.as_bytes())?;

    let output = Command::new("node")
        // .env("LD_PRELOAD", "/usr/lib/llvm-15/lib/clang/15.0.7/lib/linux/libclang_rt.asan-x86_64.so \
        // /usr/lib/llvm-15/lib/clang/15.0.7/lib/linux/libclang_rt.ubsan_standalone-x86_64.so")
        .env("ASAN_OPTIONS", "halt_on_error=1")
        .arg("out/test.js")
        .output()
        .expect("Failed to run test.js");

    println!("status: {}", output.status);
    println!("stdout: {}", String::from_utf8_lossy(&output.stdout));
    println!("stderr: {}", String::from_utf8_lossy(&output.stderr));

    assert!(output.status.success());

    Ok(())
}
