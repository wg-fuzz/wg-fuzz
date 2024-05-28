use clap::StructOpt;
use wgsl_generator::Options;

fn main() -> eyre::Result<()> {
    color_eyre::install()?;
    wgsl_generator::run(Options::parse())
}
