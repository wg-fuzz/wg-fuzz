# wg-fuzz
*wg-fuzz* is a tool for generating JavaScript programs with randomised WebGPU calls. It is intended to fuzz the WebGPU API. Currently, it is set up to fuzz Dawn's implementation of WebGPU, though it can be easily modified to fuzz other implementations as well.

## Set up
- Clone the repo
- Separately, build Dawn with Node bindings (https://dawn.googlesource.com/dawn/+/refs/heads/main/src/dawn/node)
  - Personally, Dawn fails to build for me roughly as of the latest commit on 2024/6/18 when CMake uses the default GCC compiler. Run `export CC=/usr/bin/clang && export CXX=/usr/bin/clang++` before the `cmake` step in the link if you come across this issue.
  - You may build with sanitizers by following the `If building with ASan using Clang:` instructions in the link, followed by adding `-DDAWN_ENABLE_ASAN=ON`/`-DDAWN_ENABLE_UBSAN=ON` in the `cmake` step.
  - Change the `dawn/CMakeLists.txt` file to use this code in the section where you find the lines containing "-fsanitize=memory", "-fsanitize=address", etc.:
```
    SET(COMPILER_RT_BUILD_SHARED_ASAN ON)

    set(SANITIZER_OPTIONS "-shared-libasan -fsanitize-recover=all")
    if (${DAWN_ENABLE_MSAN})
      list(APPEND SANITIZER_OPTIONS "-fsanitize=memory")
    endif()
    if (${DAWN_ENABLE_ASAN})
      list(APPEND SANITIZER_OPTIONS "-fsanitize=address")
    endif()
    if (${DAWN_ENABLE_TSAN})
      list(APPEND SANITIZER_OPTIONS "-fsanitize=thread")
    endif()
    if (${DAWN_ENABLE_UBSAN})
      list(APPEND SANITIZER_OPTIONS "-fsanitize=undefined" "-fsanitize=float-divide-by-zero" "-fsanitize=unsigned-integer-overflow" "-fsanitize=implicit-conversion" "-fsanitize=local-bounds" "-fsanitize=nullability")
    endif()
```
  - Inside wg-fuzz, change the code in crates/wg-fuzz/src/lib.rs to use the `LD_PRELOAD` flags needed for the sanitizers that you compiled with. Run `clang -print-file-name=libclang_rt.asan-x86_64.so` to check and update the path used in the code.
  - With the code as it is, you may run across one bug quite frequently. To enable further testing, you may want to comment out the lines found here: dawn/src/dawn/node/binding/GPUDevice.cpp:182-183 (the `UNREACHABLE("WGPUDeviceLostReason_Force32|FailedAtCreation");` and `break;`.
  - Finally, compile dawn.node through the instructions in the link.
- Copy your `dawn.node` file into the root of the wg-fuzz repo.
- Run `cargo build` (important it's separate to cargo run)

## Running
- Run `cargo run --release`
- You may optionally pass in swarm testing and fuzzy condition probabilities. To do this, run `cargo run --release -- <swarm testing probability> <fuzzy condition probability> 0`
- The 0 (or any number) is necessary to pass in
- A swarm testing probability of 1.0 is effectively the same as no swarm testing. The lower the probability, the less types of calls are made in any given generated WebGPU program (decided randomly at the start of each run). 0.8/0.9 seems to work well.
- A fuzzy condition probability of 0.0 is effectively the same as no fuzzy conditions. The higher the probability, the more likely wg-fuzz is to make slightly invalid WebGPU API calls. 0.1 or possibly a bit lower seems to work well.
- Once it gets to a stage where Node is running the program, `Running WebGPU program...` will be printed on stdout. If a possible bug is found, `Possible bug found!` will be printed after that and logged inside `generated_bugs/` under a folder named after the timestamp it was found. Everything needed to run the test is copied over, including the dawn.node used at the time. Use `node test.js` to run it. If you compiled with sanitizers, you may need to pass an LD_PRELOAD flag like `LD_PRELOAD="/usr/lib/llvm-14/lib/clang/14.0.0/lib/linux/libclang_rt.asan-x86_64.so" node test.js`. Again, update with your personal location found with `clang -print-file-name=libclang_rt.asan-x86_64.so`.

## Possible Future Work
- Differential testing with other WebGPU implementations, e.g. wgpu
- Implement `to_javascript()` methods that randomly generate and test more optional arguments in the WebGPU API.
- More bug finding (try on different platforms like Windows/MacOS, longer fuzzing)
- Make wg-fuzz multithreaded
- Make the generated JS files multithreaded (workers?)
- Make it feedback-directed (grey-box)
- Coverage

## Reducing with CReduce
- Copy reduction/interesting.sh to the root of the repo.
- You might need to modify it to use LD_PRELOAD.
- Run `chmod +x interesting.sh`, and then run `creduce --not-c interesting.sh generated_bugs/<bug>/out/*`. You should get some .orig files at the root of the repo, and the test.js file etc should be modified in-plae in the path you specified.
