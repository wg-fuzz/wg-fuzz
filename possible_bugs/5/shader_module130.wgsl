struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: bool,
    d: vec2<i32>,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: f32,
    d: i32,
    e: vec3<u32>,
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = vec2<u32>(~1u, ~arg_0.a >> (~4294967295u % 32u));
    let var_1 = -_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_div_i32(arg_0.e, 28607i), arg_0.d.x), _wgslsmith_mod_vec2_i32(arg_0.d ^ vec2<i32>(-3556i, -1i), select(vec2<i32>(arg_0.d.x, arg_0.d.x), vec2<i32>(arg_0.e, 0i), true))), vec2<i32>(-1i) * -arg_0.d);
    var var_2 = firstTrailingBit(vec3<i32>(0i, _wgslsmith_add_i32(-16689i, arg_0.e ^ select(var_1.x, var_1.x, arg_0.c)), countOneBits(90721i)));
    var var_3 = select(!vec4<bool>(all(vec2<bool>(false, arg_0.c)), true, arg_0.c, true), select(select(select(!vec4<bool>(arg_0.c, false, false, arg_0.c), !vec4<bool>(false, false, false, arg_0.c), vec4<bool>(true, true, true, arg_0.c)), select(select(vec4<bool>(true, arg_0.c, false, arg_0.c), vec4<bool>(true, true, false, true), false), vec4<bool>(true, false, arg_0.c, true), false && arg_0.c), !(!arg_0.c)), vec4<bool>(true, any(vec4<bool>(true, true, true, false)), true, any(!vec2<bool>(arg_0.c, false))), select(select(vec4<bool>(arg_0.c, false, true, arg_0.c), select(vec4<bool>(arg_0.c, true, arg_0.c, arg_0.c), vec4<bool>(arg_0.c, true, arg_0.c, arg_0.c), vec4<bool>(arg_0.c, false, arg_0.c, arg_0.c)), true), vec4<bool>(any(vec2<bool>(true, arg_0.c)), !arg_0.c, arg_0.c, true), !select(vec4<bool>(arg_0.c, false, true, true), vec4<bool>(arg_0.c, true, arg_0.c, false), vec4<bool>(false, true, arg_0.c, true)))), false & (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(620f))) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_0.b.x, -1684f)), _wgslsmith_f_op_f32(f32(-1f) * -1014f))));
    var var_4 = ~abs(~(abs(vec3<u32>(arg_0.a, 4294967295u, 4294967295u)) | abs(vec3<u32>(0u, 10722u, arg_0.a))));
    return var_0.x;
}

fn func_2(arg_0: i32, arg_1: vec3<f32>) -> Struct_1 {
    let var_0 = Struct_4(Struct_1(firstLeadingBit(~func_3(Struct_1(u_input.a, vec4<f32>(arg_1.x, 208f, -745f, arg_1.x), false, vec2<i32>(-1i, -43762i), arg_0))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_1.x + -1474f), 1205f, -888f, _wgslsmith_f_op_f32(select(317f, arg_1.x, false))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, -1355f, -575f, arg_1.x) * vec4<f32>(arg_1.x, 2171f, -1280f, 433f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-943f, -469f, arg_1.x, arg_1.x))), 1u != u_input.a))), all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true))), _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, -3528i), vec2<i32>(arg_0, arg_0)), _wgslsmith_mod_i32(-2147483647i, -1i)), _wgslsmith_add_vec2_i32(max(vec2<i32>(-2147483647i, arg_0), vec2<i32>(arg_0, arg_0)), vec2<i32>(-2147483647i, 1i)), ~vec2<i32>(arg_0, 2147483647i)), arg_0));
    var var_1 = -1406f;
    let var_2 = ~vec2<u32>(32680u, ~1u);
    let var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.b.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.a.b.x)))))));
    var_1 = 1f;
    return var_0.a;
}

fn func_1(arg_0: bool) -> bool {
    let var_0 = Struct_4(func_2(0i, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1090f, -559f, -1277f)) - _wgslsmith_div_vec3_f32(vec3<f32>(-341f, 499f, -839f), vec3<f32>(-431f, 2175f, -649f))), vec3<f32>(_wgslsmith_f_op_f32(step(815f, -880f)), _wgslsmith_f_op_f32(round(-519f)), 398f))));
    var var_1 = !(any(vec2<bool>(true, true)) || false);
    var var_2 = var_0.a.b;
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1990f), _wgslsmith_f_op_f32(round(var_0.a.b.x)));
    var_1 = all(!(!(!vec4<bool>(var_0.a.c, true, var_0.a.c, arg_0))));
    return !((-2147483647i != _wgslsmith_clamp_i32(abs(0i), max(-2959i, var_0.a.e), var_0.a.e)) & any(!(!vec2<bool>(true, arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~49550u, vec4<f32>(1102f, _wgslsmith_f_op_f32(f32(-1f) * -305f), -1355f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-319f, _wgslsmith_f_op_f32(abs(-517f)))))), any(vec3<bool>(true, true, true)), vec2<i32>(1i, 1i), _wgslsmith_sub_i32(-1576i, abs(_wgslsmith_mod_i32(_wgslsmith_sub_i32(-1i, -1i), 14175i))));
    let var_1 = Struct_2(~var_0.e, Struct_1(~var_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.b), vec4<f32>(var_0.b.x, var_0.b.x, 120f, -810f))), var_0.c, ~var_0.d, var_0.d.x), any(!(!select(vec3<bool>(true, false, var_0.c), vec3<bool>(true, var_0.c, false), true))), Struct_1(4294967295u, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b.x, var_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -2376f), var_0.b.x), var_0.b, vec4<bool>(var_0.c & var_0.c, var_0.c, true, func_1(false)))), all(vec2<bool>(true, true)), var_0.d, -_wgslsmith_mod_i32(i32(-1i) * -1i, func_2(var_0.e, var_0.b.xwx).d.x)), true);
    var var_2 = Struct_4(var_1.d);
    let var_3 = var_1.d.e;
    var_2 = Struct_4(func_2(i32(-1i) * -25829i, vec3<f32>(var_1.b.b.x, var_1.d.b.x, _wgslsmith_f_op_f32(953f * -784f))));
    var_0 = Struct_1(~firstTrailingBit(11620u), _wgslsmith_f_op_vec4_f32(var_2.a.b + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1065f)) * _wgslsmith_f_op_f32(max(var_1.d.b.x, -1089f))), -1302f, var_0.b.x, _wgslsmith_f_op_f32(func_2(var_2.a.d.x, vec3<f32>(var_2.a.b.x, var_2.a.b.x, var_2.a.b.x)).b.x * _wgslsmith_f_op_f32(-var_2.a.b.x)))), !(func_2(var_2.a.d.x, vec3<f32>(var_1.b.b.x, 358f, var_0.b.x)).b.x != _wgslsmith_f_op_f32(floor(1263f))), _wgslsmith_div_vec2_i32(firstLeadingBit(abs(var_0.d) ^ select(var_2.a.d, var_1.b.d, var_1.e)), var_1.d.d), firstLeadingBit(_wgslsmith_sub_i32(~_wgslsmith_clamp_i32(-37391i, -1i, var_2.a.e), reverseBits(-1i))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(min(-vec3<i32>(var_2.a.e, var_0.d.x, var_2.a.e), vec3<i32>(-var_1.a, 1i, var_2.a.e << (var_1.b.a % 32u)))), var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-168f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.b.b.x * -588f), _wgslsmith_f_op_f32(-var_2.a.b.x))))), _wgslsmith_div_i32(0i, 1i) >> (_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(6383u, 1u), ~vec2<u32>(u_input.a, var_1.d.a)), min(abs(1u), 1u)) % 32u), ~(~_wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, var_0.a, 1u), vec3<u32>(var_1.d.a, 4294967295u, var_0.a) & vec3<u32>(81720u, 57785u, 4294967295u))));
}

