struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: i32,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: vec3<f32>,
    d: i32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2(arg_0: u32, arg_1: vec4<bool>) -> Struct_3 {
    let var_0 = vec3<i32>(-(~(-33158i)), -(~u_input.d.x), countOneBits(~_wgslsmith_mod_i32(0i, u_input.e.x << (10457u % 32u))));
    let var_1 = vec3<u32>(~u_input.a, ~arg_0, ~(~(63257u << ((10918u >> (arg_0 % 32u)) % 32u))));
    var var_2 = arg_1.x;
    var_2 = any(arg_1.zw) & true;
    let var_3 = ~_wgslsmith_add_u32(24957u, abs(u_input.a));
    return Struct_3(Struct_2(!arg_1.zx, arg_1, abs(~(-10956i)), arg_1.wyy));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: u32, arg_3: Struct_1) -> i32 {
    let var_0 = false;
    var var_1 = arg_3;
    var var_2 = ~min(~min(83848u, _wgslsmith_clamp_u32(u_input.a, 4294967295u, u_input.a)), arg_2 | ~arg_1);
    let var_3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-1221f, -843f, 820f, 291f), vec4<f32>(arg_3.a.x, arg_3.a.x, arg_3.a.x, arg_3.a.x)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(170f, -1004f, arg_3.a.x, arg_3.a.x))), !vec4<bool>(var_0, false, true, false))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, 885f, 167f, var_1.a.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1244f, 1000f, var_1.a.x, var_1.a.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.a.x, 2351f, 631f, 999f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1368f, arg_3.a.x, arg_3.a.x, 1000f) - vec4<f32>(1536f, var_1.a.x, var_1.a.x, var_1.a.x))))))));
    let var_4 = arg_3;
    return ~27756i;
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: vec4<i32>, arg_3: bool) -> Struct_4 {
    let var_0 = 1i;
    var var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -151f);
    let var_3 = max(select(max(vec2<u32>(1u, u_input.a) & vec2<u32>(u_input.a, 4294967295u), min(min(vec2<u32>(1u, 1u), vec2<u32>(u_input.a, 124381u)), ~vec2<u32>(4294967295u, 18457u))), ~reverseBits(~vec2<u32>(35393u, 1u)), false), ~((vec2<u32>(u_input.a, 1u) ^ vec2<u32>(u_input.a, u_input.a)) >> ((vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(u_input.a, 4426u) % vec2<u32>(32u))) % vec2<u32>(32u))) ^ firstLeadingBit(~vec2<u32>(16600u, 0u) | _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(35547u, u_input.a))));
    var var_4 = ~vec3<u32>(1u, var_3.x, 1u);
    return Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2))), -1944f)), vec2<bool>(!all(select(arg_0.a.d, arg_0.a.b.yxx, vec3<bool>(arg_0.a.d.x, false, true))), var_1.a.b.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_2)))), var_2, _wgslsmith_f_op_f32(f32(-1f) * -136f))), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.e.x, 19025i), firstTrailingBit(0i), -2147483647i), abs(-2147483647i) << ((1u >> (1u % 32u)) % 32u), _wgslsmith_clamp_i32(~(-3749i), 0i, var_0), ~(~arg_0.a.c)), select(arg_2, u_input.e, !var_1.a.b)), -u_input.b.zxw);
}

fn func_1(arg_0: vec3<bool>, arg_1: bool) -> bool {
    let var_0 = func_4(func_2(1u, select(vec4<bool>(true, arg_0.x, true, 1i < u_input.c.x), !(!vec4<bool>(true, false, true, arg_1)), false)), arg_1, vec4<i32>(u_input.e.x, func_3(func_2(7309u, vec4<bool>(arg_1, false, true, arg_0.x)).a, u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(8474u, 35649u, 4294967295u, u_input.a), vec4<u32>(u_input.a, u_input.a, 0u, u_input.a)), Struct_1(vec2<f32>(-2134f, 135f), u_input.e.wxy)) >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(47733u, 25837u), vec2<u32>(u_input.a, 1u)) % 32u), -1i, 36218i >> (min(reverseBits(u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(776u, 0u, 50790u), vec3<u32>(u_input.a, u_input.a, u_input.a))) % 32u)), !(!(!all(arg_0))));
    let var_1 = arg_0;
    var var_2 = true;
    let var_3 = -reverseBits(func_3(func_2(8295u, vec4<bool>(var_1.x, arg_0.x, arg_1, arg_1)).a, ~u_input.a, 66709u, Struct_1(vec2<f32>(var_0.a.x, -2177f), u_input.e.xyw)) | 1i);
    var_2 = true;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-346f + -966f)), _wgslsmith_f_op_f32(select(-647f, _wgslsmith_f_op_f32(-2080f + -248f), all(vec4<bool>(false, false, true, false)))))), vec2<bool>(any(vec3<bool>(func_1(vec3<bool>(true, true, false), false), any(vec4<bool>(true, false, true, true)), false)), any(vec2<bool>(all(vec4<bool>(false, false, false, false)), true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(max(686f, -447f)), 1959f, _wgslsmith_f_op_f32(floor(-1000f)))))), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), firstLeadingBit(u_input.b.yy)), vec3<i32>(35407i, 1i, min(firstLeadingBit(1i), 1i)));
    let var_1 = Struct_1(var_0.a, ~firstTrailingBit(vec3<i32>(abs(7405i), u_input.b.x, i32(-1i) * -21664i)));
    let var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_0.c.zx)) - vec2<f32>(var_1.a.x, 678f)), var_0.c.zy) * var_1.a), var_0.b, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-224f, -1015f, var_1.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.a.x, var_1.a.x, var_1.a.x)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-148f, var_1.a.x, var_1.a.x)))), func_2(~_wgslsmith_mult_u32(4294967295u, u_input.a), vec4<bool>(func_2(u_input.a, vec4<bool>(true, false, false, var_0.b.x)).a.d.x, var_0.a.x < 435f, any(vec2<bool>(true, false)), false)).a.d)), var_0.d, u_input.e.xxw);
    var var_3 = -1631f;
    var_3 = _wgslsmith_f_op_f32(f32(-1f) * -730f);
    var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) - -1203f);
    var var_4 = -2201f;
    var_0 = func_4(func_2(1u, !vec4<bool>(func_2(23040u, vec4<bool>(var_0.b.x, false, var_0.b.x, false)).a.b.x, var_0.b.x || false, !var_2.b.x, true)), true, _wgslsmith_div_vec4_i32(u_input.e, abs(_wgslsmith_add_vec4_i32(~u_input.b, vec4<i32>(var_1.b.x, var_2.d, u_input.d.x, 13036i)))), func_2(~u_input.a ^ _wgslsmith_dot_vec2_u32(abs(vec2<u32>(10486u, u_input.a)), vec2<u32>(32883u, 24039u)), func_2(u_input.a, select(!vec4<bool>(false, var_0.b.x, false, true), vec4<bool>(true, true, true, true), vec4<bool>(var_0.b.x, false, var_0.b.x, var_0.b.x))).a.b).a.d.x);
    let var_5 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-911f)), var_0.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.d.x, u_input.b.x, -33699i, _wgslsmith_sub_i32(u_input.c.x, countOneBits(29744i)) & _wgslsmith_mult_i32(37961i, ~var_2.e.x)), 1134f, _wgslsmith_sub_vec4_i32(-(~vec4<i32>(var_0.d, var_2.e.x, 2147483647i, var_2.e.x)), _wgslsmith_sub_vec4_i32(select(u_input.b, min(vec4<i32>(-60881i, 1i, var_2.d, var_2.d), vec4<i32>(u_input.e.x, 17020i, var_0.d, u_input.d.x)), any(vec4<bool>(true, var_2.b.x, false, false))), _wgslsmith_div_vec4_i32(vec4<i32>(var_0.e.x, var_1.b.x, 1i, var_0.e.x), u_input.b) << (~vec4<u32>(u_input.a, u_input.a, u_input.a, 52649u) % vec4<u32>(32u)))), var_5);
}

