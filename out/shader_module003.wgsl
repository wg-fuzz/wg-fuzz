struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec4<bool>) -> vec4<u32> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1565f, _wgslsmith_div_f32(629f, 567f)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-129f, 547f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(686f, -650f)))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1246f), 1000f))), -246f);
    var var_1 = 16365u;
    let var_2 = (~firstLeadingBit(countOneBits(vec3<u32>(21990u, u_input.a, 0u))) >> (vec3<u32>(~(u_input.a | u_input.c), u_input.a, ~_wgslsmith_dot_vec3_u32(vec3<u32>(54062u, 1u, u_input.c), vec3<u32>(u_input.a, 17704u, 69694u))) % vec3<u32>(32u))) << (max(~vec3<u32>(39892u, 55931u, u_input.b) ^ abs(countOneBits(vec3<u32>(u_input.b, 16992u, u_input.a))), ~vec3<u32>(u_input.c & 1u, ~u_input.b, u_input.a ^ u_input.c)) % vec3<u32>(32u));
    var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.b)) * _wgslsmith_f_op_f32(abs(var_0.b)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(152f + var_0.a.x))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(898f, _wgslsmith_f_op_f32(-var_0.b))), 534f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-1052f, _wgslsmith_f_op_f32(-var_0.b))), -472f)))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, var_0.a.x, 765f)), 2147483647i, _wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.d & -1i, -u_input.d, -2147483647i), select(u_input.d, 1i, false) ^ max(-2147483647i, u_input.d)) << (_wgslsmith_dot_vec4_u32(vec4<u32>(~var_2.x, countOneBits(u_input.c), var_2.x, ~var_2.x), vec4<u32>(1u, var_2.x, var_2.x, u_input.a) ^ ~vec4<u32>(var_2.x, 58130u, var_2.x, 1u)) % 32u), arg_0.x);
    return vec4<u32>(_wgslsmith_div_u32(u_input.b, var_2.x & _wgslsmith_sub_u32(var_2.x, var_2.x)) ^ ~var_2.x, 1u, _wgslsmith_clamp_u32(var_2.x, ~var_2.x, 14039u), u_input.c);
}

fn func_2() -> f32 {
    var var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1434f, -1720f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(348f, 1877f) * vec2<f32>(-814f, -640f))), vec2<bool>(true, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(897f + -468f) - _wgslsmith_f_op_f32(-1489f - 210f)), -1021f)), abs((~vec4<u32>(u_input.b, u_input.b, 106604u, u_input.a) ^ ~vec4<u32>(u_input.a, 99799u, 4294967295u, u_input.a)) ^ ~_wgslsmith_div_vec4_u32(vec4<u32>(9724u, u_input.b, u_input.b, 1u), vec4<u32>(0u, u_input.c, 49981u, u_input.a))), -u_input.d, vec4<u32>(~(44914u << (u_input.b % 32u)), abs(16109u), 3227u, 14152u | ~u_input.b) << (vec4<u32>(40998u, _wgslsmith_sub_u32(0u, u_input.c), min(u_input.b, u_input.c), ~(4294967295u ^ u_input.c)) % vec4<u32>(32u)));
    var_0 = Struct_3(Struct_2(var_0.a.a, 1560f), ~(~(func_3(vec4<bool>(true, false, true, false)) & ~var_0.d)), 1i, var_0.d);
    let var_1 = any(select(vec2<bool>(true, any(vec3<bool>(true, true, false))), vec2<bool>(true, true), true));
    var_0 = Struct_3(Struct_2(var_0.a.a, _wgslsmith_f_op_f32(368f + _wgslsmith_f_op_f32(-var_0.a.b))), ~_wgslsmith_sub_vec4_u32((var_0.b ^ var_0.b) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, var_0.d.x, u_input.c, var_0.b.x), vec4<u32>(var_0.b.x, 65329u, var_0.d.x, u_input.c)) % vec4<u32>(32u)), firstTrailingBit(~var_0.d)), var_0.c, _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(var_0.b.x, 44265u, u_input.b, var_0.d.x), func_3(vec4<bool>(false, false, var_1, var_1))) | min(~vec4<u32>(1u, 1u, 41454u, 1u), _wgslsmith_clamp_vec4_u32(var_0.b, vec4<u32>(u_input.a, var_0.b.x, u_input.c, 22980u), var_0.d)), abs(~(var_0.d << (vec4<u32>(4294967295u, 47959u, var_0.b.x, u_input.b) % vec4<u32>(32u))))));
    let var_2 = u_input.d;
    return _wgslsmith_f_op_f32(var_0.a.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(461f))));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_4) -> Struct_4 {
    let var_0 = 3002u;
    let var_1 = 165f;
    var var_2 = u_input.d;
    let var_3 = _wgslsmith_f_op_f32(294f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -115f) * _wgslsmith_div_f32(arg_0.a.b, arg_0.a.a.x)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2()))))));
    var var_4 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.a.a), vec2<f32>(var_1, arg_0.a.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -333f)) + var_3)), func_3(!vec4<bool>(true, 32345u < u_input.a, u_input.b < var_0, any(vec2<bool>(true, false)))), 0i, ~vec4<u32>(_wgslsmith_clamp_u32(0u, 4294967295u >> (0u % 32u), countOneBits(0u)), ~u_input.c, var_0, _wgslsmith_add_u32(~u_input.a, countOneBits(var_0))));
    return arg_1;
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: vec3<bool>) -> vec2<bool> {
    let var_0 = arg_0;
    var var_1 = ~vec4<i32>(2147483647i, -26221i, _wgslsmith_add_i32(-(~22820i), ~(27848i >> (0u % 32u))), -1i);
    var var_2 = !(!select(select(select(vec4<bool>(arg_2.x, true, false, false), vec4<bool>(var_0, arg_2.x, var_0, false), arg_0), select(vec4<bool>(arg_2.x, false, true, var_0), vec4<bool>(true, true, true, true), vec4<bool>(false, false, arg_0, false)), vec4<bool>(arg_0, false, false, var_0)), select(select(vec4<bool>(true, false, arg_2.x, false), vec4<bool>(var_0, false, false, arg_0), vec4<bool>(true, arg_0, true, false)), !vec4<bool>(false, false, var_0, arg_2.x), 568f <= arg_1.a.a.x), !(!vec4<bool>(false, var_0, arg_0, arg_2.x))));
    let var_3 = false;
    return vec2<bool>(var_0, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!select(vec2<bool>(true, true), func_4(true, func_1(Struct_4(Struct_2(vec2<f32>(-1210f, -1039f), -120f)), Struct_4(Struct_2(vec2<f32>(195f, -696f), -727f))), vec3<bool>(true, true, true)), !func_4(false, Struct_4(Struct_2(vec2<f32>(-772f, 375f), 168f)), vec3<bool>(true, false, true))), !(!func_4(false, func_1(Struct_4(Struct_2(vec2<f32>(-299f, 264f), -939f)), Struct_4(Struct_2(vec2<f32>(933f, 1021f), -803f))), vec3<bool>(false, false, true))), false);
    let var_1 = 1u;
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(890f, -311f, 395f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(496f, -128f, 150f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(267f, -879f, 932f)))))), u_input.d, firstLeadingBit(u_input.d), min(min(reverseBits(u_input.d), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.d, u_input.d, 2147483647i), vec4<i32>(79535i, u_input.d, -52290i, u_input.d))), -1i) > -1i);
    var var_3 = vec3<f32>(var_2.a.x, var_2.a.x, var_2.a.x);
    var var_4 = -_wgslsmith_mod_vec4_i32(-select(vec4<i32>(var_2.b, -61392i, -67888i, u_input.d), vec4<i32>(-1i, 1i, u_input.d, 1796i) << (vec4<u32>(var_1, 1u, 1u, 15093u) % vec4<u32>(32u)), true), vec4<i32>(var_2.c, var_2.c, 2147483647i, ~(-u_input.d)));
    var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-121f, var_3.x, var_2.a.x)) + var_2.a) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x - -805f)), _wgslsmith_f_op_f32(round(-681f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) - var_3.x)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_2.a.x, -869f, -1964f), vec3<f32>(-1281f, -750f, var_2.a.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(max(vec3<u32>(var_1, 4294967295u, 71476u), ~(~abs(vec3<u32>(u_input.b, 0u, 1u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, -1145f, -732f, -898f)) * _wgslsmith_div_vec4_f32(vec4<f32>(var_2.a.x, var_2.a.x, var_3.x, var_2.a.x), vec4<f32>(-1030f, var_3.x, -670f, -476f))), vec4<f32>(_wgslsmith_f_op_f32(select(var_2.a.x, 1874f, var_2.d)), _wgslsmith_div_f32(var_2.a.x, 196f), var_2.a.x, _wgslsmith_f_op_f32(max(var_2.a.x, -530f))), select(!vec4<bool>(var_0.x, var_2.d, false, true), select(vec4<bool>(var_2.d, true, true, var_0.x), vec4<bool>(var_2.d, var_0.x, var_2.d, false), var_0.x), false))) - vec4<f32>(606f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.a.x))), _wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(-var_3.x)), _wgslsmith_f_op_f32(-var_3.x))));
}

