// acv = abstract call vector

// for now just resource creation. use all fields eventually.

mod api_calls;
pub use api_calls::APICall::{self, *};

pub mod to_javascript;

use std::{fs::{self, File}, process::{Command, Stdio}};
use art::*;

use reconditioner::cli;
use reconditioner::cli::Options;

use rand::prelude::*;

#[derive(Debug, Clone)]
pub struct Program {
    pub calls: Vec<(APICall, Resource)>
}

impl Program {
    pub fn new() -> Program {
        Program {
            calls: Vec::new()
        }
    }

    pub fn to_javascript(&self) -> String {
        let mut js = String::new();
        js.push_str(&fs::read_to_string("crates/wg-fuzz/code_samples/prelude.txt").unwrap());
        for (call, created_resource) in &self.calls {
            js.push_str("\n\n    ");
            js.push_str(&call.to_javascript(created_resource));
        }
        js.push_str(&fs::read_to_string("crates/wg-fuzz/code_samples/postlude.txt").unwrap());
        js
    }
}