struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec3<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: bool;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: f32) -> u32 {
    let var_0 = !vec3<bool>(!(!arg_0.b), all(!vec3<bool>(arg_0.b, arg_0.a, arg_0.b)) | any(vec4<bool>(true, arg_0.b, arg_0.b, arg_0.a)), !(arg_0.a != any(vec4<bool>(arg_0.b, false, arg_0.a, arg_0.a))));
    var var_1 = vec4<i32>(reverseBits(-38663i), _wgslsmith_sub_i32(1i, arg_1), ~(~(i32(-1i) * -arg_1)), _wgslsmith_clamp_i32(-2147483647i | arg_1, firstLeadingBit(i32(-1i) * -41992i), ~(-21177i ^ -arg_1)));
    var_1 = ~vec4<i32>(-51615i, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(firstLeadingBit(var_1.xxx), var_1.zwz, abs(vec3<i32>(var_1.x, -5789i, arg_1))), (vec3<i32>(arg_1, arg_1, var_1.x) << (vec3<u32>(global0.x, u_input.a.x, global0.x) % vec3<u32>(32u))) | var_1.xwy), -_wgslsmith_dot_vec3_i32(var_1.wxw, var_1.wwx), -2147483647i);
    var_1 = max(max(select(select(reverseBits(vec4<i32>(-48323i, var_1.x, var_1.x, var_1.x)), vec4<i32>(arg_1, -1i, -47057i, arg_1), !vec4<bool>(true, var_0.x, true, false)), vec4<i32>(-47043i, max(var_1.x, 1i), _wgslsmith_dot_vec2_i32(var_1.yz, var_1.xw), var_1.x), true), firstLeadingBit(~vec4<i32>(var_1.x, arg_1, var_1.x, 7151i)) & reverseBits(vec4<i32>(30546i, 28783i, -61815i, -1i))), vec4<i32>(~(~34873i), 1i, _wgslsmith_clamp_i32(-1i, -min(12800i, 2147483647i), firstLeadingBit(_wgslsmith_sub_i32(arg_1, 61852i))), var_1.x));
    var_1 = _wgslsmith_add_vec4_i32(~(~(vec4<i32>(-21549i, 2147483647i, arg_1, var_1.x) ^ vec4<i32>(1i, arg_1, 2147483647i, arg_1))) | ~(-vec4<i32>(arg_1, arg_1, 1i, arg_1) | ~vec4<i32>(var_1.x, 31801i, var_1.x, var_1.x)), firstTrailingBit(-vec4<i32>(16558i, var_1.x, 1i, var_1.x)) | -(~_wgslsmith_mod_vec4_i32(vec4<i32>(arg_1, var_1.x, var_1.x, 0i), vec4<i32>(-11992i, var_1.x, -2392i, 1i))));
    return ~_wgslsmith_sub_u32(7037u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(36214u, global0.x, 0u, global0.x) ^ vec4<u32>(global0.x, u_input.a.x, 0u, 30532u), vec4<u32>(1u, u_input.a.x, 14539u, u_input.a.x) & vec4<u32>(4294967295u, global0.x, global0.x, 0u)));
}

fn func_2(arg_0: u32, arg_1: vec4<f32>, arg_2: u32) -> Struct_2 {
    global1 = true;
    let var_0 = global0.yz >> (_wgslsmith_div_vec2_u32(~_wgslsmith_add_vec2_u32(u_input.a, select(global0.xx, vec2<u32>(arg_2, 90945u), vec2<bool>(false, true))), ~(~global0.yz)) % vec2<u32>(32u));
    global0 = select(_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, ~global0.x, ~1u), vec3<u32>(var_0.x, 35786u, u_input.a.x), vec3<u32>(13780u & arg_0, _wgslsmith_clamp_u32(0u, 58300u, u_input.a.x), ~u_input.a.x)), vec3<u32>(_wgslsmith_sub_u32(var_0.x >> (28865u % 32u), global0.x), 1u, func_3(Struct_1(true, false), -2147483647i, _wgslsmith_div_f32(922f, -1199f)))), _wgslsmith_div_vec3_u32(~(~countOneBits(vec3<u32>(0u, arg_2, 37817u))), vec3<u32>(var_0.x, ~34884u, var_0.x) << (vec3<u32>(select(u_input.a.x, 0u, true), _wgslsmith_mod_u32(var_0.x, 3973u), ~global0.x) % vec3<u32>(32u))), all(!vec3<bool>(any(vec3<bool>(false, false, true)), false, all(vec3<bool>(true, false, true)))));
    global0 = max(reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(~arg_0, ~63447u, ~arg_0), max(~vec3<u32>(10061u, 53533u, 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(58881u, arg_0, var_0.x), vec3<u32>(u_input.a.x, 1u, global0.x))))), _wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, u_input.a.x, 1u), vec3<u32>(~(~arg_2), abs(~4294967295u), _wgslsmith_add_u32(~84634u, arg_0)), vec3<u32>(arg_0, 1u, arg_2)));
    global1 = true;
    return Struct_2(_wgslsmith_div_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, 1i, 1i, 1i)), countOneBits(~(-6080i))), ~firstTrailingBit(~(23213i << (var_0.x % 32u))), firstTrailingBit(vec2<i32>(1i, 1i)));
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    let var_0 = func_2(~_wgslsmith_div_u32(firstTrailingBit(global0.x), _wgslsmith_add_u32(_wgslsmith_add_u32(867u, u_input.a.x), global0.x)), vec4<f32>(-1552f, _wgslsmith_div_f32(1151f, _wgslsmith_f_op_f32(f32(-1f) * -767f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(1857f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1395f))), ~70026u);
    global0 = abs(vec3<u32>(~54415u, 0u, 24048u)) ^ vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(0u, 6308u), ~_wgslsmith_mod_u32(1u, u_input.a.x)), 1u, ~1u);
    global1 = true;
    global1 = arg_0.a;
    global1 = all(vec3<bool>(true, true, arg_0.a || false));
    return func_2(global0.x, vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(175f - 884f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(476f + 532f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-979f + 708f)))), _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(max(-214f, _wgslsmith_f_op_f32(-176f - 886f))))), 2055f), abs(select(global0.x, _wgslsmith_add_u32(countOneBits(34595u), _wgslsmith_sub_u32(4294967295u, 4294967295u)), arg_0.b)));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2, arg_3: vec2<bool>) -> f32 {
    global0 = _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(max(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, global0.x), u_input.a), u_input.a.x), global0.x, global0.x), vec3<u32>(u_input.a.x, u_input.a.x, _wgslsmith_div_u32(u_input.a.x ^ 1u, u_input.a.x & 40088u))), ~min(vec3<u32>(9452u, u_input.a.x, 9985u) | ~vec3<u32>(global0.x, 20352u, u_input.a.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(7445u, 10685u, global0.x), min(vec3<u32>(4294967295u, 65984u, 61112u), vec3<u32>(54355u, u_input.a.x, u_input.a.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(global0.x, global0.x, 0u), vec3<u32>(global0.x, 4294967295u, global0.x)))));
    global1 = true;
    let var_0 = global0.x;
    global1 = (1i <= arg_2.c.x) && !arg_3.x;
    let var_1 = func_2(_wgslsmith_mod_u32(~(~_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x)), global0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-323f, arg_1, arg_1, arg_1))) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1, arg_1, arg_1, arg_1)))))), _wgslsmith_div_u32(~(~global0.x << (57298u % 32u)), firstLeadingBit(abs(~u_input.a.x))));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_2(18953i, -14595i, vec2<i32>(59476i, 2147483647i)), -519f, func_1(Struct_1(true, true)), vec2<bool>(false, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-157f * -780f))), _wgslsmith_f_op_f32(f32(-1f) * -443f)) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-178f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(118f, -117f))), _wgslsmith_div_f32(227f, 2217f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(595f, _wgslsmith_f_op_f32(1418f + 705f), -430f), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1065f, 1000f, -462f), vec3<f32>(-1004f, -479f, -151f)) - vec3<f32>(-295f, 1908f, 212f)))))));
    let var_1 = ~_wgslsmith_clamp_i32(i32(-1i) * -6969i, max(1i, -30417i), _wgslsmith_sub_i32(1i, min(reverseBits(2147483647i), abs(5713i))));
    let var_2 = Struct_1(!(!any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)))), false);
    global1 = false;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(219f * var_0.x) * _wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_div_f32(-233f, 1926f)), ~select(u_input.a.x & 37174u, _wgslsmith_mult_u32(~5442u, abs(global0.x)), select(var_2.b, all(vec3<bool>(var_2.a, false, var_2.b)), true)), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-1674f - 196f)), vec4<u32>(~global0.x, _wgslsmith_dot_vec2_u32(global0.yx, _wgslsmith_mod_vec2_u32(global0.zx, ~u_input.a)), global0.x, ~(~func_3(var_2, var_1, 1097f))));
}

