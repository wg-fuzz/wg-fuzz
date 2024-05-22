use wg_fuzz::fuzz_once;

fn main() -> std::io::Result<()> {
    return Ok(fuzz_once()?);
}
