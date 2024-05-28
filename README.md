# wg-fuzz
*wg-fuzz* is a tool for generating JavaScript programs with randomised WebGPU calls. It is intended to fuzz the WebGPU API.

## Build
- Requires a dawn.node copied from Google's Dawn repo (alias c++ to clang)
- Requires a recent Node
- Run `cargo run`

## Notes
- Built in Rust for speed and correctness. Also integrates with the WGSLSmith tool easily.
- Build up monolithic string, then flush at end, for performance.

## TODO
- Write a simple randomised WebGPU API fuzzer
  - Write crates for creating randomised calls for different parts of the WebGPU API
  - Write high-level algorithm for scheduling these randomly
- Make it multithreaded
- Input minimisation
- Make the JS files multithreaded (workers?)
- Implement swarm testing
- Integrate WGSLSmith
- Make it feedback-directed (grey-box)
- Differential testing with other WebGPU implementations, e.g. wgpu?
- Coverage
- Make it a tool for fuzzing APIs in general? Make description language, think about languages to support. wg-fuzz -> api-fuzz
