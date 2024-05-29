// use wg_fuzz::fuzz_once;

use art::*;
use act::*;
// use act::APICall::*;
use generator::*;

fn main() -> std::io::Result<()> {
    // return Ok(fuzz_once()?);
    let mut program_resources = ProgramResources::new();
    let mut program = Program::new();

    generate(&mut program, &mut program_resources);

    println!("{:#?}", program);
    Ok(())
}
