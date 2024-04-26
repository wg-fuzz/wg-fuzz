use rand::prelude::*;

pub fn get_random_adapter() -> String {
    let mut rng = rand::thread_rng();
    let n1: u8 = rng.gen_range(0..3);
    let random_power_preference = match n1 {
        0 => "undefined",
        1 => "\"low-power\"",
        2 => "\"high-performance\"",
        _ => "undefined"
    };

    return random_power_preference.to_string();
}
