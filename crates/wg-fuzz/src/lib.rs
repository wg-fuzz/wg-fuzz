use std::fs::{self, File};
use std::io::prelude::*;
use std::process::{Command, Output};
use std::env;
use chrono;

use art::*;
use acv::*;
use fs_extra::dir;
use generator::*;

pub fn fuzz() {
    let args: Vec<String> = env::args().collect();

    if args.len() == 4 {
        let swarm_prob: f64 = args[1].parse().unwrap();
        let fuzzy_prob: f64 = args[2].parse().unwrap();
        let condor_identifier: i32 = args[3].parse().unwrap();
        println!("swarm prob: {swarm_prob}");
        println!("fuzzy prob: {fuzzy_prob}");
        println!("condor_identifier: {condor_identifier}");

        if swarm_prob == 0.0 {
            println!("Swarm prob is 0.0; exiting");
            return;
        }
    }

    let start_time = chrono::offset::Local::now();
    let mut current_time = chrono::offset::Local::now();
    while current_time < start_time.checked_add_signed(chrono::TimeDelta::hours(10)).unwrap() {
        fuzz_once().unwrap();
        current_time = chrono::offset::Local::now();
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
    let mut condor_identifier = 0;

    if args.len() == 1 {
        generate(&mut program, &mut program_resources, 1.0, 0.0);
    } else {
        let swarm_prob: f64 = args[1].parse().unwrap();
        let fuzzy_prob: f64 = args[2].parse().unwrap();
        condor_identifier = args[3].parse().unwrap();
    
        generate(&mut program, &mut program_resources, swarm_prob, fuzzy_prob);
    }

    // println!("{:#?}", &program);
    
    file.write_all(program.to_javascript().as_bytes())?;

    fs::copy("dawn.node", "out/dawn.node").expect("Could not copy dawn.node to out/dawn.node");

    fs::copy("crates/acv/src/code_samples/render_shader.wgsl", "out/render_shader.wgsl").expect("Could not copy render_shader.wgsl to out/render_shader.wgsl");

    run_test(condor_identifier);

    Ok(())
}

fn run_test(condor_identifier: i32) {
    println!("Running WebGPU program...");
    env::set_current_dir("out").unwrap();
    let output = Command::new("node")
        // .env("LD_PRELOAD", "/usr/lib/llvm-14/lib/clang/14.0.0/lib/linux/libclang_rt.asan-x86_64.so")
        // .env("LD_PRELOAD", "/usr/lib/llvm-14/lib/clang/14.0.0/lib/linux/libclang_rt.ubsan_standalone-x86_64.so")
        .env("LD_PRELOAD", "/usr/lib/llvm-14/lib/clang/14.0.0/lib/linux/libclang_rt.tsan-x86_64.so")
        .arg("test.js")
        .output()
        .expect("Failed to run test.js");
    env::set_current_dir("..").unwrap();

    // println!("status: {}", output.status);
    // println!("stdout: {}", String::from_utf8_lossy(&output.stdout));
    // println!("stderr: {}", String::from_utf8_lossy(&output.stderr));

    let lowercase_stdout = String::from_utf8(output.stdout.clone()).unwrap().to_lowercase();
    let lowercase_stderr = String::from_utf8(output.stderr.clone()).unwrap().to_lowercase();

    if !output.status.success() && !lowercase_stderr.contains("immediate._onimmediate()") {
        log_run_as_bug(condor_identifier, output.clone());
    } else {
        for phrase in ["core dumped", "sanitizer"] {
            if (lowercase_stdout.contains(phrase) || lowercase_stderr.contains(phrase)) && !lowercase_stderr.contains("immediate._onimmediate()") {
                log_run_as_bug(condor_identifier, output.clone());
            }
        }
    }
}

fn log_run_as_bug(condor_identifier: i32, output: Output) {
    println!("Possible bug found!");
    let timestamp = chrono::offset::Local::now().format(&format!("{condor_identifier}_%Y-%m-%d_%H:%M:%S")).to_string();

    let new_folder = format!("generated_bugs/{}", timestamp);

    let _ = Command::new("mkdir")
        .arg(new_folder.clone())
        .output()
        .unwrap();

    fs_extra::copy_items(&["out/"], new_folder.clone(), &dir::CopyOptions::new()).unwrap();

    let mut stdout_file = File::create(format!("{}/stdout.txt", new_folder.clone())).unwrap();
    stdout_file.write_all(&output.stdout).unwrap();
    let mut stderr_file = File::create(format!("{}/stderr.txt", new_folder.clone())).unwrap();
    stderr_file.write_all(&output.stderr).unwrap();
    let mut exitcode_file = File::create(format!("{}/exitcode.txt", new_folder.clone())).unwrap();
    exitcode_file.write_all(output.status.code().unwrap().to_string().as_bytes()).unwrap();
}