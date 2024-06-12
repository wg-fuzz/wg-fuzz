use rand::{rngs::ThreadRng, Rng};

pub fn fuzzy(rng: &mut ThreadRng, ratio_incorrectness: f64) -> bool {
    rng.gen_bool(ratio_incorrectness)
}