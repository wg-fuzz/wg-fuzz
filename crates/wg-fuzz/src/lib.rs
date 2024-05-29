use std::fs::File;
use std::io::prelude::*;
use std::process::{Command, /*Stdio*/};

// use reconditioner::cli;
// use reconditioner::cli::Options;

use art::*;
use act::*;
// use act::APICall::*;
use generator::*;

mod calls;

pub fn fuzz() {
    loop {
        fuzz_once().unwrap();
    }
}

pub fn fuzz_once() -> std::io::Result<()> {
    match std::fs::remove_dir_all("out/") {
      Ok(_) => {},
      Err(_) => {}
    }

    std::fs::create_dir("out")?;

    let mut file = File::create("out/test.js")?;
    
    let mut program_resources = ProgramResources::new();
    let mut program = Program::new();

    generate(&mut program, &mut program_resources);

    println!("{:#?}", &program);
    
    file.write_all(program.to_javascript().as_bytes())?;

    let output = Command::new("node")
        // .env("LD_PRELOAD", "/usr/lib/llvm-15/lib/clang/15.0.7/lib/linux/libclang_rt.asan-x86_64.so")
        // .env("ASAN_OPTIONS", "halt_on_error=0")
        .arg("out/test.js")
        .output()
        .expect("Failed to run test.js");

    println!("status: {}", output.status);
    println!("stdout: {}", String::from_utf8_lossy(&output.stdout));
    println!("stderr: {}", String::from_utf8_lossy(&output.stderr));

    assert!(output.status.success());

    Ok(())
}


        // APICall::CreateShaderModule => {
        //   let mut names_vec = js_var_namespace.get(&api_call)
        //                                                    .unwrap()
        //                                                    .to_owned();
        //   let name = format!("shaderModule{}", names_vec.len());

        //   let available_names = js_var_namespace.get(&APICall::CreateDevice).unwrap();
        //   let index = rng.gen_range(0..available_names.len());
        //   let param_name = &available_names[index];

        //   let file_name = format!("out/{}.wgsl", name);

        //   let file = File::create(&file_name)?;

        //   let stdio = Stdio::from(file);

        //   Command::new("target/debug/wgsl_generator")
        //     .arg("--max-block-depth=1")
        //     .arg("--max-fns=2")
        //     .stdout(stdio)
        //     .output()?;

        //   //TODO: add args to generator?

        //   let _ = cli::run(Options {
        //     input: file_name.clone(),
        //     output: file_name.clone(),
        //     enable: Vec::new()
        //   });

        //   sample_program.push_str(&calls::create_shader_module(&name, param_name));
        //   names_vec.push(name);
        //   js_var_namespace.insert(api_call, names_vec);
        // }