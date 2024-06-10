struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: vec2<f32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: f32,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_2) -> bool {
    let var_0 = Struct_5(arg_1, arg_0.d.c, false, Struct_4(vec2<bool>(true, all(vec2<bool>(true, true))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.a, -1905f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.a, 1416f)))), arg_0.b));
    let var_1 = u_input.a;
    var var_2 = vec3<i32>(~arg_0.d.c.d, min(-2147483647i, ~arg_0.a.d), u_input.a.x ^ firstTrailingBit(max(abs(arg_1.d), 32415i)));
    var_2 = _wgslsmith_div_vec3_i32(u_input.b.zww, _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, -61026i, 5545i), -u_input.b.xww), vec3<i32>(var_0.a.d, arg_1.d, arg_0.d.c.d))) | ~(_wgslsmith_add_vec3_i32(u_input.b.yzw, u_input.b.xwy) ^ vec3<i32>(_wgslsmith_mult_i32(1i, var_1.x), arg_1.d & 2147483647i, var_1.x));
    var_2 = u_input.b.yzw;
    return arg_1.d == arg_1.d;
}

fn func_2(arg_0: vec4<u32>) -> Struct_3 {
    let var_0 = true || func_3(Struct_5(Struct_2(_wgslsmith_f_op_f32(step(159f, -1000f)), Struct_1(u_input.c.x, false), Struct_1(0u, true), -13245i), Struct_2(_wgslsmith_f_op_f32(-534f + 1731f), Struct_1(arg_0.x, false), Struct_1(4294967295u, true), _wgslsmith_add_i32(u_input.a.x, u_input.a.x)), true, Struct_4(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), _wgslsmith_f_op_f32(ceil(1740f)), Struct_2(344f, Struct_1(arg_0.x, true), Struct_1(1u, true), 2147483647i))), Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(2220f)), _wgslsmith_f_op_f32(998f - -890f))), Struct_1(1u, true), Struct_1(_wgslsmith_mod_u32(arg_0.x, u_input.c.x), true), u_input.a.x));
    var var_1 = select(select(select(!(!vec4<bool>(var_0, true, var_0, false)), vec4<bool>(true, false, select(false, true, false), select(var_0, false, true)), select(!vec4<bool>(var_0, false, false, var_0), select(vec4<bool>(var_0, false, false, true), vec4<bool>(true, var_0, false, var_0), true), any(vec4<bool>(var_0, var_0, var_0, true)))), select(vec4<bool>(true, var_0, true, var_0), vec4<bool>(any(vec3<bool>(var_0, true, true)), var_0, func_3(Struct_5(Struct_2(191f, Struct_1(u_input.c.x, var_0), Struct_1(2828u, false), u_input.a.x), Struct_2(-1043f, Struct_1(4294967295u, var_0), Struct_1(u_input.c.x, var_0), -35292i), var_0, Struct_4(vec2<bool>(false, var_0), -1000f, Struct_2(1247f, Struct_1(u_input.c.x, true), Struct_1(3275u, var_0), -18611i))), Struct_2(-1163f, Struct_1(u_input.c.x, true), Struct_1(30028u, var_0), u_input.b.x)), var_0), vec4<bool>(all(vec3<bool>(var_0, true, var_0)), true, all(vec4<bool>(true, var_0, false, false)), true)), !var_0), vec4<bool>(any(!(!vec4<bool>(false, var_0, false, false))), any(select(select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, var_0, false), var_0), vec3<bool>(var_0, true, true), any(vec4<bool>(false, true, var_0, false)))), any(select(vec4<bool>(var_0, true, false, true), vec4<bool>(true, var_0, var_0, var_0), !var_0)), true & var_0), true);
    let var_2 = -2147483647i;
    var var_3 = Struct_5(Struct_2(-1070f, Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, 4294967295u), ~arg_0.yx), var_0), Struct_1(~u_input.c.x, true), -(~(-8123i))), Struct_2(_wgslsmith_f_op_f32(select(-1161f, _wgslsmith_f_op_f32(-158f * _wgslsmith_f_op_f32(f32(-1f) * -409f)), var_0)), Struct_1(select(0u, 47207u >> (1u % 32u), var_0), all(!vec4<bool>(var_0, true, var_0, var_0))), Struct_1(arg_0.x, _wgslsmith_f_op_f32(max(-1349f, -856f)) > _wgslsmith_f_op_f32(select(1035f, -1632f, false))), ~(~0i)), var_1.x, Struct_4(var_1.zz, _wgslsmith_f_op_f32(1094f - -1099f), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-636f + 724f) + -749f), Struct_1(_wgslsmith_add_u32(0u, arg_0.x), false), Struct_1(_wgslsmith_sub_u32(u_input.c.x, 69534u), false & var_1.x), 1i)));
    var var_4 = Struct_4(!(!(!vec2<bool>(var_3.d.a.x, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1f), -215f)) - var_3.d.c.a), var_3.b);
    return Struct_3(Struct_1(u_input.c.x, func_3(Struct_5(var_3.a, var_3.d.c, false, var_3.d), var_3.b) | var_3.a.b.b), _wgslsmith_add_u32(var_3.b.c.a, ~(~1u)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.d.b) - 692f), _wgslsmith_f_op_f32(var_3.d.b - var_3.a.a))), vec2<f32>(_wgslsmith_f_op_f32(314f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(var_4.c.a, var_3.b.a))))), var_3.b.a));
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: Struct_2) -> i32 {
    let var_0 = func_2(~vec4<u32>(1u, 4294967295u, u_input.c.x, u_input.c.x));
    var var_1 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-630f + _wgslsmith_f_op_f32(sign(-253f))), _wgslsmith_f_op_f32(round(var_0.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(289f * -1411f) + arg_2.a)), func_2(countOneBits(vec4<u32>(_wgslsmith_div_u32(41894u, 4294967295u), arg_2.c.a, abs(4294967295u), 26704u))).a, Struct_1(arg_2.c.a, (u_input.b.x ^ _wgslsmith_sub_i32(-8971i, arg_1)) >= arg_2.d), -arg_2.d | ~_wgslsmith_mod_i32(_wgslsmith_add_i32(arg_2.d, arg_2.d), -48871i));
    let var_2 = Struct_4(vec2<bool>((1u ^ var_0.b) <= _wgslsmith_mod_u32(_wgslsmith_add_u32(1u, u_input.c.x), 2525u | arg_2.c.a), any(vec2<bool>(all(vec3<bool>(var_0.a.b, true, true)), arg_0 > 1000f))), 695f, Struct_2(arg_2.a, Struct_1(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(var_1.c.a, 0u)), abs(u_input.c)), true), var_1.c, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.a.x), vec2<i32>(arg_1, 11309i)), countOneBits(2147483647i)) << (min(15579u, u_input.c.x) % 32u)));
    let var_3 = select(-_wgslsmith_div_vec4_i32(-vec4<i32>(-52893i, var_2.c.d, 1i, 1i), u_input.b), u_input.b, var_1.c.b);
    var var_4 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(808f, 1387f)) + _wgslsmith_f_op_f32(trunc(-1216f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1074f)))));
    var var_1 = _wgslsmith_dot_vec4_i32(~u_input.b, ~(~u_input.b));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(517f, -219f)), _wgslsmith_f_op_f32(-var_0), var_0, var_0) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(886f, 1329f, -934f, var_0), vec4<f32>(-1695f, -311f, var_0, -630f)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, var_0, 853f)))));
    var var_3 = !select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec3<bool>(false, false, true)) | true, true, all(vec3<bool>(false, true, false)), u_input.b.x <= func_1(1308f, 11990i, Struct_2(1258f, Struct_1(u_input.c.x, true), Struct_1(u_input.c.x, false), 2317i))), select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), false), true), vec4<bool>(true, true, true, true), false));
    var_3 = !(!(!select(!vec4<bool>(true, var_3.x, var_3.x, false), vec4<bool>(var_3.x, true, var_3.x, var_3.x), vec4<bool>(var_3.x, true, false, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(-2546f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(948f, _wgslsmith_f_op_f32(-317f + var_0), func_2(vec4<u32>(22404u, 109831u, 4294967295u, 4294967295u)).c), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0, var_2.x, 584f))) - _wgslsmith_div_vec3_f32(vec3<f32>(var_0, var_0, -326f), var_2.xzy))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(var_2.xxy, _wgslsmith_f_op_vec3_f32(var_2.ywz * var_2.zxz)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(var_2.zzy)) + vec3<f32>(484f, -843f, -312f))))));
}

