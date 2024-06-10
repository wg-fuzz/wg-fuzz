// generates an act (and art)

use art::*;
use acv::*;
mod update_resources;
use update_resources::update_program_resources;
mod available_calls;
use available_calls::available_api_calls;

use rand::prelude::*;

pub fn generate(program: &mut Program, resources: &mut ProgramResources) -> () {
    let mut rng = rand::thread_rng();

    let swarm = [true; 89];
    // for i in 0..swarm.len() {
    //     swarm[i] = rng.gen_bool(0.5);
    // }

    for _ in 1..300 {
        let mut available_api_calls = available_api_calls(resources, swarm, false);
        let call_index = rng.gen_range(0..available_api_calls.len());
        let api_call = available_api_calls.remove(call_index);
        let new_resource = update_program_resources(resources, &api_call);
        program.calls.push((api_call, new_resource));
    }

    let mut terminating_api_calls = available_api_calls(resources, swarm, true);
    while terminating_api_calls.len() > 0 {
        let call_index = rng.gen_range(0..terminating_api_calls.len());
        let api_call = terminating_api_calls.remove(call_index);
        let new_resource = update_program_resources(resources, &api_call);
        program.calls.push((api_call, new_resource));

        terminating_api_calls = available_api_calls(resources, swarm, true);
    }
}