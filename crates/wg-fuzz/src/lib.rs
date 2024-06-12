use std::fs::{self, File};
use std::io::prelude::*;
use std::process::Command;
use std::env;
use chrono;

use art::*;
use acv::*;
use fs_extra::dir;
use generator::*;

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
    let _ = std::fs::create_dir("generated_bugs"); // May already exist

    let mut file = File::create("out/test.js")?;
    
    let mut program_resources = ProgramResources::new();
    let mut program = Program::new();

    let args: Vec<String> = env::args().collect();

    if args.len() == 1 {
        generate(&mut program, &mut program_resources, 1.0, 0.0);
    } else {
        let swarm_prob: f64 = args[1].parse().unwrap();
        let fuzzy_prob: f64 = args[2].parse().unwrap();
    
        generate(&mut program, &mut program_resources, swarm_prob, fuzzy_prob);
    }

    // println!("{:#?}", &program);
    
    file.write_all(program.to_javascript().as_bytes())?;

    fs::copy("dawn.node", "out/dawn.node").expect("Could not copy dawn.node to out/dawn.node");

    fs::copy("crates/acv/src/code_samples/render_shader.wgsl", "out/render_shader.wgsl").expect("Could not copy render_shader.wgsl to out/render_shader.wgsl");

    run_test();

    Ok(())
}

fn run_test() {
    println!("Running WebGPU program...");
    env::set_current_dir("out").unwrap();
    let output = Command::new("node")
        // .env("LD_PRELOAD", "/usr/lib/llvm-14/lib/clang/14.0.0/lib/linux/libclang_rt.asan-x86_64.so")
        .env("LD_PRELOAD", "/usr/lib/llvm-14/lib/clang/14.0.0/lib/linux/libclang_rt.ubsan_standalone-x86_64.so")
        .arg("test.js")
        .output()
        .expect("Failed to run test.js");
    env::set_current_dir("..").unwrap();

    // println!("status: {}", output.status);
    // println!("stdout: {}", String::from_utf8_lossy(&output.stdout));
    // println!("stderr: {}", String::from_utf8_lossy(&output.stderr));

    let lowercase_stdout = String::from_utf8(output.stdout).unwrap().to_lowercase();
    let lowercase_stderr = String::from_utf8(output.stderr).unwrap().to_lowercase();

    if !output.status.success() && !lowercase_stderr.contains("immediate._onimmediate()") {
        log_run_as_bug();
    } else {
        for phrase in ["core dumped", "sanitizer"] {
            if (lowercase_stdout.contains(phrase) || lowercase_stderr.contains(phrase)) && !lowercase_stderr.contains("immediate._onimmediate()") {
                log_run_as_bug();
            }
        }
    }
}

fn log_run_as_bug() {
    println!("Possible bug found!");
    let timestamp = chrono::offset::Local::now().format("%Y-%m-%d_%H:%M:%S").to_string();

    let new_folder = format!("generated_bugs/{}", timestamp);

    let _ = Command::new("mkdir")
        .arg(new_folder.clone())
        .output()
        .unwrap();

    fs_extra::copy_items(&["out/"], new_folder, &dir::CopyOptions::new()).unwrap();

}