use std::fs::File;
use std::io::prelude::*;
use std::process::Command;

use art::*;
use act::*;
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

    run_test();

    Ok(())
}

fn run_test() {
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
}