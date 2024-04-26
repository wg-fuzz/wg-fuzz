use std::fs::File;
use std::io::prelude::*;
use std::process::Command;
use rand::prelude::*;

fn main() -> std::io::Result<()> {
    let mut file = File::create("test.js")?;

    let mut rng = rand::thread_rng();
    let n1: u8 = rng.gen_range(0..3);
    let random_power_preference = match n1 {
        0 => "undefined",
        1 => "\"low-power\"",
        2 => "\"high-performance\"",
        _ => "undefined"
    };

    let sample_program = 
"const { create, globals } = require('./dawn.node');
Object.assign(globalThis, globals); // Provides constants like GPUBufferUsage.MAP_READ
let navigator = { gpu: create(['enable-dawn-features=allow_unsafe_apis,dump_shaders,disable_symbol_renaming']), };

async function init() {
  if (!navigator.gpu) {
    throw Error(\"WebGPU not supported.\");
  }

  const adapter = await navigator.gpu.requestAdapter({powerPreference: ".to_owned() + random_power_preference + "});
  if (!adapter) {
    throw Error(\"Couldn't request WebGPU adapter.\");
  }

  const device = await adapter.requestDevice();

  // Define global buffer size
  const BUFFER_SIZE = 1000;

  const shader = `
  @group(0) @binding(0)
  var<storage, read_write> output: array<f32>;

  @compute @workgroup_size(64)
  fn main(
    @builtin(global_invocation_id)
    global_id : vec3u,

    @builtin(local_invocation_id)
    local_id : vec3u,
  ) {
    // Avoid accessing the buffer out of bounds
    if (global_id.x >= ${BUFFER_SIZE}) {
      return;
    }

    output[global_id.x] =
      f32(global_id.x) * 1000. + f32(local_id.x);
  }
  `;

  const shaderModule = device.createShaderModule(
    {
      code: shader
    }
  );

  const output = device.createBuffer({
    size: BUFFER_SIZE,
    usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC,
  });

  const stagingBuffer = device.createBuffer({
    size: BUFFER_SIZE,
    usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST,
  });

  const bindGroupLayout = device.createBindGroupLayout({
    entries: [
      {
        binding: 0,
        visibility: GPUShaderStage.COMPUTE,
        buffer: {
          type: \"storage\",
        },
      },
    ],
  });

  const bindGroup = device.createBindGroup({
    layout: bindGroupLayout,
    entries: [
      {
        binding: 0,
        resource: {
          buffer: output,
        },
      },
    ],
  });

  const computePipeline = device.createComputePipeline({
    layout: device.createPipelineLayout({
      bindGroupLayouts: [bindGroupLayout],
    }),
    compute: {
      module: shaderModule,
      entryPoint: \"main\",
    },
  });

  const commandEncoder = device.createCommandEncoder();
  const passEncoder = commandEncoder.beginComputePass();

  passEncoder.setPipeline(computePipeline);
  passEncoder.setBindGroup(0, bindGroup);
  passEncoder.dispatchWorkgroups(Math.ceil(BUFFER_SIZE / 64));

  passEncoder.end();

  // Copy output buffer to staging buffer
  commandEncoder.copyBufferToBuffer(
    output,
    0, // Source offset
    stagingBuffer,
    0, // Destination offset
    BUFFER_SIZE,
  );

  // End frame by passing array of command buffers to command queue for execution
  device.queue.submit([commandEncoder.finish()]);

  // map staging buffer to read results back to JS
  await stagingBuffer.mapAsync(
    GPUMapMode.READ,
    0, // Offset
    BUFFER_SIZE, // Length
  );

  const copyArrayBuffer = stagingBuffer.getMappedRange(0, BUFFER_SIZE);
  const data = copyArrayBuffer.slice();
  stagingBuffer.unmap();
  console.log(new Float32Array(data));
}

init();";
    file.write_all(sample_program.as_bytes())?;

    let output = Command::new("node")
        .env("LD_PRELOAD", "/usr/lib/gcc/x86_64-linux-gnu/11/libasan.so")
        .env("ASAN_OPTIONS", "halt_on_error=1")
        .arg("test.js")
        .output()
        .expect("Failed to run test.js");

    println!("status: {}", output.status);
    println!("stdout: {}", String::from_utf8_lossy(&output.stdout));
    println!("stderr: {}", String::from_utf8_lossy(&output.stderr));

    assert!(output.status.success());

    Ok(())
}
