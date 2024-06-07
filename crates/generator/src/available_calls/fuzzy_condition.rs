use rand::{rngs::ThreadRng, Rng};

const RATIO_INCORRECTNESS: f64 = 0.00001;

pub fn fuzzy(rng: &mut ThreadRng) -> bool {
    rng.gen_bool(RATIO_INCORRECTNESS)
}