struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: bool,
    d: bool,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: vec4<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-709f, -533f), _wgslsmith_f_op_f32(1000f - -319f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1501f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(290f)) + _wgslsmith_f_op_f32(sign(-773f)))) * -564f)));
    var var_1 = Struct_3(vec2<bool>(all(select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(vec2<bool>(true, false), vec2<bool>(true, true), true), true)), all(vec4<bool>(true, true, true, true))), Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(floor(1095f)), _wgslsmith_div_f32(var_0, var_0), var_0)), vec4<u32>(~firstLeadingBit(u_input.a), ~(~u_input.c), firstTrailingBit(u_input.a), 71680u), vec2<u32>(u_input.c, _wgslsmith_mod_u32(1u, ~u_input.a))), false || any(vec3<bool>(true, all(vec3<bool>(true, true, true)), true)), true, Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1321f, -1234f, var_0, -1321f))), ~(~vec4<u32>(96063u, 23607u, u_input.a, u_input.a) & ~vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.c)), firstLeadingBit(_wgslsmith_mult_vec2_u32(~vec2<u32>(4294967295u, 53951u), ~vec2<u32>(4294967295u, 4294967295u)))));
    var var_2 = Struct_5(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.b.a.a.x, 839f, var_0, -1093f))))), var_1.b.b, min(var_1.e.b.xy, _wgslsmith_add_vec2_u32(~vec2<u32>(var_1.e.b.x, 4294967295u), ~vec2<u32>(0u, var_1.e.c.x)))), var_1.c & var_1.d);
    var_2 = Struct_5(Struct_2(var_2.a.a, var_1.e.b, _wgslsmith_mod_vec2_u32(var_1.b.b.yz, ~(~vec2<u32>(1u, var_2.a.c.x)))), var_1.c);
    var var_3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0)) - 203f) - _wgslsmith_div_f32(-510f, _wgslsmith_f_op_f32(step(var_1.e.a.a.x, var_2.a.a.a.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(-939f + var_1.e.a.a.x)))), _wgslsmith_f_op_f32(round(var_0)), _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(-var_2.a.a.a.x))));
    return 1000f;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1304f), _wgslsmith_f_op_f32(func_3()), 1115f)))), vec4<u32>(~39760u << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.c, u_input.a), ~vec3<u32>(4294967295u, u_input.a, 38441u)) % 32u), firstTrailingBit(u_input.c), firstTrailingBit(u_input.a), ~1u), vec2<u32>(u_input.c ^ u_input.c, 20893u));
    let var_1 = Struct_2(var_0.a, ~vec4<u32>(countOneBits(reverseBits(var_0.c.x)), (u_input.c << (0u % 32u)) >> (~0u % 32u), _wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.c.x, 51963u), max(var_0.c, var_0.b.yy)), var_0.c.x), firstTrailingBit(vec2<u32>(u_input.c >> ((1u ^ var_0.b.x) % 32u), var_0.b.x)));
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.a.a.x, var_1.a.a.x, var_1.a.a.x, 204f), _wgslsmith_f_op_vec4_f32(var_1.a.a + vec4<f32>(111f, 681f, -1659f, var_1.a.a.x)))))), vec4<u32>(4294967295u, 4295u, u_input.a, 0u) ^ var_1.b, ~(~var_0.c));
    var_0 = var_1;
    let var_2 = any(select(select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true), any(vec4<bool>(false, true, false, false))), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true)), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), true), any(vec4<bool>(false, false, true, true))), vec4<bool>(all(vec4<bool>(true, false, true, false)), false, false, select(true, false, false))), !vec4<bool>(all(vec2<bool>(false, false)), all(vec4<bool>(false, true, true, false)), true, true), !select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false))));
    return Struct_2(var_1.a, ~vec4<u32>(0u, var_0.c.x, countOneBits(4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 144u), _wgslsmith_mult_vec2_u32(vec2<u32>(67157u, var_1.b.x), var_1.b.zz))), vec2<u32>(reverseBits(countOneBits(~50779u)), 0u));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_5) -> Struct_5 {
    var var_0 = _wgslsmith_f_op_f32(sign(arg_0.a.a.a.x));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.a.a.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.a.a.x - arg_1.a.a.a.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.a.a.a.x, arg_0.a.a.a.x, false)))), !arg_1.b)));
    var var_1 = _wgslsmith_mod_vec2_u32(vec2<u32>(55278u, u_input.a) << (vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.c, arg_0.a.c.x, 42599u), ~vec4<u32>(arg_0.a.c.x, arg_1.a.b.x, u_input.a, 45200u)), _wgslsmith_add_u32(16300u, _wgslsmith_sub_u32(arg_0.a.c.x, u_input.c))) % vec2<u32>(32u)), ~(~_wgslsmith_div_vec2_u32(vec2<u32>(25973u, 10810u), vec2<u32>(u_input.c, arg_0.a.c.x))));
    let var_2 = vec2<u32>(1u, arg_1.a.c.x) & ~reverseBits(~arg_0.a.b.xx >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1.a.b.x, var_1.x), vec2<u32>(3693u, 4294967295u), arg_1.a.b.xx) % vec2<u32>(32u)));
    let var_3 = !(!arg_1.b) || select(var_2.x != u_input.a, false, true);
    return arg_0;
}

fn func_5(arg_0: Struct_5, arg_1: u32) -> Struct_2 {
    var var_0 = arg_0.a.a.a.x;
    var_0 = func_4(func_4(arg_0, Struct_5(arg_0.a, false)), Struct_5(func_2(), arg_0.a.a.a.x < arg_0.a.a.a.x)).a.a.a.x;
    var_0 = -130f;
    var_0 = -1995f;
    var var_1 = Struct_4(Struct_2(Struct_1(arg_0.a.a.a), arg_0.a.b, arg_0.a.b.xz), _wgslsmith_div_i32(0i, min(-40718i, ~_wgslsmith_div_i32(u_input.e.x, 62659i))), vec4<i32>(-2147483647i, -17348i, 2147483647i, 29852i));
    return var_1.a;
}

fn func_1(arg_0: u32, arg_1: f32) -> StorageBuffer {
    let var_0 = Struct_3(!(!vec2<bool>(10200u <= u_input.a, true)), func_5(func_4(Struct_5(func_2(), arg_0 > 4294967295u), Struct_5(Struct_2(Struct_1(vec4<f32>(-1000f, arg_1, arg_1, arg_1)), vec4<u32>(arg_0, 4455u, arg_0, u_input.a), vec2<u32>(4294967295u, 20637u)), true)), ~(~u_input.a & max(arg_0, u_input.a))), (_wgslsmith_f_op_f32(abs(arg_1)) != _wgslsmith_f_op_f32(min(-454f, _wgslsmith_f_op_f32(-arg_1)))) && select(true, true, any(vec4<bool>(false, false, false, false)) & (25692u < arg_0)), true, func_4(Struct_5(func_2(), false), func_4(func_4(Struct_5(Struct_2(Struct_1(vec4<f32>(-1371f, arg_1, arg_1, 1855f)), vec4<u32>(1u, arg_0, 0u, u_input.c), vec2<u32>(u_input.c, arg_0)), true), func_4(Struct_5(Struct_2(Struct_1(vec4<f32>(arg_1, arg_1, arg_1, arg_1)), vec4<u32>(arg_0, 1u, u_input.c, 66269u), vec2<u32>(u_input.c, u_input.c)), true), Struct_5(Struct_2(Struct_1(vec4<f32>(923f, arg_1, arg_1, 1000f)), vec4<u32>(u_input.c, u_input.c, 0u, 66427u), vec2<u32>(4772u, arg_0)), false))), func_4(Struct_5(Struct_2(Struct_1(vec4<f32>(-584f, arg_1, arg_1, -1456f)), vec4<u32>(4294967295u, arg_0, arg_0, 0u), vec2<u32>(38179u, 4294967295u)), true), Struct_5(Struct_2(Struct_1(vec4<f32>(2447f, arg_1, 400f, arg_1)), vec4<u32>(u_input.a, arg_0, u_input.a, 1u), vec2<u32>(u_input.a, arg_0)), true)))).a);
    var var_1 = var_0.b.a;
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(var_1.a))));
    var var_3 = func_5(Struct_5(var_0.e, var_0.d), _wgslsmith_add_u32(u_input.c, var_0.b.b.x)).a.a.x;
    var var_4 = _wgslsmith_mult_u32(24089u, 28411u);
    return StorageBuffer(~(u_input.e.x | ~(u_input.e.x & 46314i)), 1f, -2147483647i, 9415u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), !select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), false));
    let x = u_input.a;
    s_output = func_1(1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -850f))));
}

