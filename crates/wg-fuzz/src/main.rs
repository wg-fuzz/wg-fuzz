use wg_fuzz::fuzz_once;

use art::*;
use act::*;
use act::APICall::*;
use generator::*;

fn main() -> std::io::Result<()> {
    // return Ok(fuzz_once()?);
    let program_resources = ProgramResources {
        adapters: Vec::new(),
        html_videos: Vec::new()
    };

    println!("{:?}", generate(&program_resources));
    Ok(())
}
