struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec2<f32>,
    d: f32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: vec4<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: bool, arg_3: i32) -> vec3<bool> {
    let var_0 = arg_1.c.x;
    var var_1 = arg_1;
    var_1 = Struct_1((((arg_1.e.x | true) && var_1.a) && true) && true, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.c), var_1.b), vec2<f32>(1321f, _wgslsmith_f_op_f32(abs(1000f))), var_0, var_1.e);
    var var_2 = ~(~(~vec2<u32>(1u, 1u)));
    let var_3 = Struct_2(vec2<u32>(var_2.x, ~reverseBits(31090u)), u_input.a <= 11955i, _wgslsmith_mult_vec4_i32(~vec4<i32>(-40361i, arg_0, arg_3, -29537i) >> (firstLeadingBit(~vec4<u32>(37969u, var_2.x, 6937u, 4294967295u)) % vec4<u32>(32u)), ~(~vec4<i32>(u_input.a, 2147483647i, 2527i, 0i) ^ reverseBits(vec4<i32>(arg_3, u_input.a, u_input.a, u_input.a)))), arg_1, Struct_1(!(any(arg_1.e) == true), vec2<f32>(_wgslsmith_f_op_f32(ceil(var_1.b.x)), 624f), _wgslsmith_f_op_vec2_f32(arg_1.b + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_1.b)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(884f, var_0)))), _wgslsmith_f_op_f32(exp2(var_0)), select(vec3<bool>(!arg_2, arg_2, var_1.c.x >= var_0), select(arg_1.e, arg_1.e, false), !(979f > var_0))));
    return vec3<bool>(all(var_1.e), any(var_3.e.e.xx), any(vec3<bool>(!arg_1.e.x, true, false)) | false);
}

fn func_4(arg_0: vec3<f32>, arg_1: i32, arg_2: vec3<bool>) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(arg_0.yx, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(751f, 1000f)), _wgslsmith_f_op_vec2_f32(-arg_0.yz))))), arg_0.yy)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(max(arg_0.x, 1393f)), -1000f))) * arg_0.zy), select(arg_2.x, func_3(_wgslsmith_mult_i32(arg_1, -arg_1), Struct_1(true, _wgslsmith_f_op_vec2_f32(-arg_0.zy), _wgslsmith_f_op_vec2_f32(max(arg_0.yz, arg_0.xy)), _wgslsmith_f_op_f32(-arg_0.x), !vec3<bool>(arg_2.x, true, true)), 986f == arg_0.x, 2147483647i).x, any(arg_2.yy))));
    var var_1 = Struct_2(vec2<u32>(min(~0u, 31408u), ~reverseBits(~1u)), arg_2.x, vec4<i32>(2147483647i, -1i, _wgslsmith_mod_i32(_wgslsmith_div_i32(_wgslsmith_sub_i32(arg_1, u_input.a), -58900i), -1i), _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a, -2147483647i, -18047i), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_1, u_input.a, 0i), vec3<i32>(u_input.a, -22590i, 1929i))) ^ reverseBits(u_input.a)), Struct_1(true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(674f, 552f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(208f, var_0.x) - vec2<f32>(-1010f, var_0.x))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-450f)) + -1456f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-550f - arg_0.x))), arg_0.x, select(vec3<bool>(true, true, true), arg_2, !func_3(arg_1, Struct_1(false, vec2<f32>(424f, arg_0.x), arg_0.xx, 664f, vec3<bool>(arg_2.x, false, true)), arg_2.x, 2147483647i))), Struct_1(false, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1075f, var_0.x), vec2<f32>(-1782f, -304f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, 685f) + var_0))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(var_0 - vec2<f32>(var_0.x, arg_0.x)))) + _wgslsmith_f_op_vec2_f32(var_0 - _wgslsmith_f_op_vec2_f32(-var_0))), _wgslsmith_f_op_f32(arg_0.x - -1596f), select(!arg_2, vec3<bool>(false, arg_2.x, true), arg_2)));
    var_1 = Struct_2(~_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(var_1.a, var_1.a), vec2<u32>(countOneBits(20728u), var_1.a.x | 24097u)), any(vec3<bool>(false, arg_1 >= 10499i, false)) != all(!vec4<bool>(false, var_1.d.e.x, true, var_1.b)), var_1.c, var_1.e, var_1.d);
    var var_2 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.x, var_0.x, 192f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -264f) + -1295f)))));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_1.d.c.x, -713f, 181f) - vec4<f32>(-920f, var_0.x, -1370f, -231f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(761f, -1098f, var_2.x, 107f)), vec4<f32>(arg_0.x, -223f, 137f, -1000f))));
    return ~vec2<u32>(min(_wgslsmith_sub_u32(4294967295u, var_1.a.x) >> (reverseBits(0u) % 32u), var_1.a.x), _wgslsmith_dot_vec3_u32(abs(countOneBits(vec3<u32>(var_1.a.x, 1u, var_1.a.x))), _wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(4294967295u, 33607u, var_1.a.x)), ~vec3<u32>(var_1.a.x, 45036u, 4294967295u))));
}

fn func_2() -> bool {
    var var_0 = Struct_2(_wgslsmith_clamp_vec2_u32(max(func_4(vec3<f32>(-1476f, 578f, -1427f), u_input.a, func_3(-15141i, Struct_1(true, vec2<f32>(852f, -1428f), vec2<f32>(1567f, -860f), 932f, vec3<bool>(true, true, true)), true, u_input.a)), select(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 59603u), vec2<u32>(1u, 8165u)), vec2<u32>(83590u, 30139u), func_3(u_input.a, Struct_1(true, vec2<f32>(-1907f, 1890f), vec2<f32>(1000f, 484f), -617f, vec3<bool>(false, true, true)), true, 4182i).xz)), vec2<u32>(0u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(4102u, 53982u, 0u), vec3<u32>(12318u, 0u, 39671u))), ~firstTrailingBit(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 1u)))), true, vec4<i32>(-(~(-33744i)), _wgslsmith_div_i32(countOneBits(1i), _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-42002i, u_input.a, -95474i)), vec3<i32>(u_input.a, u_input.a, u_input.a))), select(-2147483647i, u_input.a, ~u_input.a < 1i), min(-2147483647i, _wgslsmith_sub_i32(25735i, _wgslsmith_mod_i32(u_input.a, u_input.a)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(665f))) <= _wgslsmith_f_op_f32(floor(741f)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1757f)) - _wgslsmith_f_op_f32(f32(-1f) * -798f)), -134f), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -898f), -324f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-382f, -121f), vec2<f32>(-889f, -985f)) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-822f, -350f), vec2<f32>(195f, 341f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(733f * -1331f)) * 1f), !vec3<bool>(true, true, any(vec3<bool>(false, false, true)))), Struct_1(any(vec3<bool>(true, true, true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(1000f, 364f), 707f)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-506f, 628f) * vec2<f32>(-658f, -218f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -354f) * _wgslsmith_f_op_f32(1287f - -1000f))), select(func_3(-21558i, Struct_1(true, vec2<f32>(1323f, -2184f), vec2<f32>(-166f, -270f), 401f, vec3<bool>(false, false, true)), true, -2147483647i), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), !select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true)))));
    var_0 = Struct_2(func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.d.d, var_0.d.d, var_0.d.b.x), vec3<f32>(var_0.d.b.x, -404f, var_0.e.d), var_0.e.e.x)), vec3<f32>(2070f, -2231f, var_0.e.b.x))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-376f, 759f, -321f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.d, -1986f, -339f) * vec3<f32>(-993f, 263f, var_0.d.c.x)))), 14284i, vec3<bool>(!(var_0.a.x == var_0.a.x), var_0.e.a, true)), !all(vec4<bool>(true, any(vec4<bool>(var_0.e.e.x, true, var_0.d.e.x, true)), true, all(var_0.e.e.zz))), var_0.c, Struct_1(any(vec2<bool>(false, any(var_0.e.e))), _wgslsmith_f_op_vec2_f32(max(var_0.e.c, vec2<f32>(var_0.e.c.x, -332f))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1370f, var_0.d.d)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d.b.x, -657f) - var_0.d.c)))), 1476f, vec3<bool>(var_0.e.e.x, all(vec2<bool>(var_0.e.a, false)) != var_0.e.a, false)), var_0.e);
    let var_1 = ~min(~var_0.c.x, ~(-2147483647i >> (0u % 32u))) >> (_wgslsmith_clamp_u32(var_0.a.x, 19363u, var_0.a.x) % 32u);
    var var_2 = vec4<i32>(firstLeadingBit(var_0.c.x) ^ (var_1 >> (~select(32820u, 4294967295u, var_0.d.a) % 32u)), _wgslsmith_div_i32(_wgslsmith_sub_i32(~(var_1 << (var_0.a.x % 32u)), _wgslsmith_dot_vec2_i32(var_0.c.ww, var_0.c.ww)), ~u_input.a), abs(-abs(_wgslsmith_dot_vec4_i32(var_0.c, var_0.c))), -1i);
    var var_3 = ~0u > _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.x, 43824u, var_0.a.x), ~vec3<u32>(~10958u, 44971u, 5299u));
    return u_input.a <= 0i;
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: vec4<f32>, arg_3: i32) -> f32 {
    let var_0 = vec4<bool>(arg_0, true, (abs(arg_1) & abs(1u)) <= _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, arg_1), vec3<u32>(0u, 135632u, 93357u)) ^ firstTrailingBit(vec3<u32>(arg_1, arg_1, 4294967295u)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 27913u, arg_1), vec3<u32>(arg_1, arg_1, 34329u))), arg_0);
    let var_1 = select(var_0, !vec4<bool>(func_2(), -u_input.a <= u_input.a, any(var_0.yzx), false), (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-248f - arg_2.x) - _wgslsmith_f_op_f32(max(arg_2.x, -1913f))) <= arg_2.x) && arg_0);
    let var_2 = _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, ~_wgslsmith_dot_vec3_i32(~vec3<i32>(22619i, -4665i, -38829i), abs(vec3<i32>(arg_3, u_input.a, arg_3))), ~min(_wgslsmith_sub_i32(1i, 21301i), u_input.a)), max(reverseBits(~countOneBits(vec3<i32>(u_input.a, 0i, -2147483647i))), _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_div_i32(6432i, arg_3), 26534i, -1i), ~_wgslsmith_mult_vec3_i32(vec3<i32>(arg_3, 300i, 2147483647i), vec3<i32>(37527i, arg_3, u_input.a)))));
    var var_3 = -7662i;
    var var_4 = Struct_2(firstTrailingBit(max(countOneBits(vec2<u32>(3793u, arg_1)), func_4(arg_2.wzy, 2147483647i, vec3<bool>(var_0.x, var_0.x, false))) ^ ~(vec2<u32>(arg_1, arg_1) ^ vec2<u32>(1u, 10216u))), !var_0.x, ~firstTrailingBit(reverseBits(vec4<i32>(2147483647i, 0i, arg_3, var_2.x))) | vec4<i32>(abs(_wgslsmith_add_i32(0i, 0i)), -_wgslsmith_dot_vec4_i32(vec4<i32>(-18598i, var_2.x, -2147483647i, var_2.x), vec4<i32>(61154i, 1i, 16723i, -1i)), arg_3, _wgslsmith_dot_vec3_i32(var_2, max(var_2, var_2))), Struct_1(true, _wgslsmith_f_op_vec2_f32(select(arg_2.yz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1485f, -307f)), !var_0.xx)), vec2<f32>(_wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(floor(1672f))), _wgslsmith_f_op_f32(trunc(-2115f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - arg_2.x))), vec3<bool>(false, true, arg_0)), Struct_1(var_1.x, arg_2.zy, vec2<f32>(368f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -619f)))), _wgslsmith_f_op_f32(arg_2.x - arg_2.x), var_0.zyw));
    return 507f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -264f) + _wgslsmith_f_op_f32(floor(-3197f))), 614f), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(256f)))), -184f), false)));
    let var_1 = Struct_1(false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1803f, _wgslsmith_f_op_f32(sign(var_0.x))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - -1154f)), -1915f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(131f * _wgslsmith_f_op_f32(func_1(true, 1u, vec4<f32>(var_0.x, 1119f, -858f, var_0.x), u_input.a)))))), vec3<bool>(true, false, all(vec3<bool>(all(vec3<bool>(false, false, true)), true, any(vec2<bool>(true, true))))));
    let var_2 = _wgslsmith_div_f32(var_1.c.x, _wgslsmith_f_op_f32(-var_1.d));
    var var_3 = -_wgslsmith_dot_vec3_i32(min(vec3<i32>(1i, -u_input.a, firstLeadingBit(12740i)), -(vec3<i32>(7039i, u_input.a, u_input.a) | vec3<i32>(u_input.a, u_input.a, 19908i))), select(firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, 1i, -79017i), vec3<i32>(u_input.a, u_input.a, 18734i))), vec3<i32>(u_input.a, ~u_input.a, -u_input.a), true));
    var var_4 = Struct_1(!all(var_1.e.zz), _wgslsmith_f_op_vec2_f32(var_1.c - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-254f, -366f) + vec2<f32>(979f, -1242f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-414f, var_0.x), var_0) - var_0))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0 * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-429f, var_0.x)))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(-549f, -603f), var_0))), vec2<f32>(1000f, var_0.x)))), 1000f, !func_3(_wgslsmith_div_i32(u_input.a, u_input.a) & -72104i, Struct_1(var_1.e.x, vec2<f32>(var_1.c.x, 703f), _wgslsmith_div_vec2_f32(vec2<f32>(var_2, var_0.x), var_0), _wgslsmith_f_op_f32(sign(var_0.x)), !var_1.e), !all(vec3<bool>(var_1.a, var_1.e.x, false)), u_input.a >> (83347u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_div_u32(~func_4(vec3<f32>(1000f, var_4.b.x, var_1.b.x), -19167i, vec3<bool>(false, var_1.e.x, var_4.a)).x, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(0u, 12323u, 49707u, 1u)), reverseBits(vec4<u32>(62385u, 737u, 4449u, 122187u)))), abs(countOneBits(15128u)), abs(firstLeadingBit(0u))), ~vec2<u32>(1u, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(69366u, 57750u, 1255u, 0u), vec4<u32>(1u, 9009u, 4294967295u, 0u)), reverseBits(4294967295u))));
}

