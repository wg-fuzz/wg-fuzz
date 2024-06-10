struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: i32,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec4<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: i32) -> vec3<bool> {
    let var_0 = all(vec3<bool>(!(!(true || arg_2.b.x)), true, any(vec3<bool>(any(vec3<bool>(true, arg_0, false)), arg_0 | arg_0, select(false, arg_2.b.x, arg_2.b.x)))));
    let var_1 = -33318i;
    var var_2 = min(_wgslsmith_sub_vec4_i32(arg_1, firstLeadingBit(_wgslsmith_div_vec4_i32(arg_1, arg_1) | -arg_1)), vec4<i32>(~(~(-arg_2.c)), -(~arg_1.x), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-23078i, -1i, arg_2.c), arg_1.xxy), select(~arg_1.wyx, vec3<i32>(0i, arg_3, arg_2.c), vec3<bool>(true, arg_2.b.x, var_0))), arg_3));
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_2.a.x, arg_2.a.x, 646f, arg_2.d), vec4<f32>(arg_2.d, -498f, -1954f, 552f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1548f, -188f, arg_2.d, 1026f))), vec4<f32>(_wgslsmith_f_op_f32(round(1218f)), arg_2.a.x, 1036f, 759f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_2.d, _wgslsmith_f_op_f32(1697f * -1241f), -1839f, -1179f))));
    var_2 = _wgslsmith_div_vec4_i32(arg_1 | arg_1, arg_1);
    return !vec3<bool>(arg_2.b.x, true, any(!select(vec4<bool>(var_0, arg_2.b.x, arg_2.b.x, true), vec4<bool>(true, true, false, arg_0), vec4<bool>(var_0, arg_2.b.x, arg_2.b.x, arg_2.b.x))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec3<bool>) -> i32 {
    let var_0 = -1082f;
    var var_1 = arg_1;
    var_1 = Struct_1(var_1.a, func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x * 1007f) - _wgslsmith_f_op_f32(abs(arg_1.a.x))) < _wgslsmith_f_op_f32(-var_1.a.x), max(vec4<i32>(~arg_1.c, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, var_1.e, var_1.c), vec3<i32>(-1i, arg_1.e, -25852i)), 4859i, var_1.e), vec4<i32>(var_1.e, -34761i, var_1.c, var_1.c)), Struct_1(arg_1.a, arg_1.b, ~arg_1.c, _wgslsmith_f_op_f32(select(var_0, _wgslsmith_f_op_f32(min(var_1.a.x, -1020f)), false)), arg_1.c << (_wgslsmith_mod_u32(1u, 1u) % 32u)), 60954i).zx, arg_1.c, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_1.a.x, 944f))))), var_1.d)), -1i);
    let var_2 = arg_1;
    var_1 = var_2;
    return -25661i;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-310f + 675f), -503f, -680f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1157f, 787f, 995f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-704f, 1412f, -769f) - vec3<f32>(-382f, 107f, 1177f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(523f, -1280f, 1398f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(498f, 157f, 1563f))))), !vec2<bool>(any(vec3<bool>(true, true, true)), all(vec4<bool>(true, true, true, true))), _wgslsmith_add_i32(-25538i, -(~countOneBits(1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-657f, _wgslsmith_f_op_f32(max(1000f, -677f)), false))))), 1i);
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1269f, var_0.a.x, _wgslsmith_f_op_f32(var_0.d * _wgslsmith_f_op_f32(var_0.a.x + var_0.a.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a))), vec2<bool>(var_0.b.x != ((205f > var_0.d) || var_0.b.x), var_0.b.x), var_0.c, _wgslsmith_div_f32(-1183f, _wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_f_op_f32(-2707f - var_0.d))), 1i);
    let var_1 = 2147483647i;
    let var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1143f), _wgslsmith_f_op_f32(step(-188f, var_0.d))) * _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(var_0.a.x * var_0.d)))), -1000f, _wgslsmith_f_op_f32(1307f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)))), select(var_0.b, vec2<bool>(_wgslsmith_div_f32(3255f, var_0.d) != -914f, any(!vec4<bool>(var_0.b.x, var_0.b.x, false, true))), true), var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-472f + _wgslsmith_f_op_f32(-var_0.a.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.a.x)) - 1656f)), func_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(290f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.a.x, var_0.d, true)) - _wgslsmith_div_f32(var_0.a.x, var_0.d)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(var_0.d))))), Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-var_0.a))), select(var_0.b, vec2<bool>(false, var_0.b.x), select(var_0.b, vec2<bool>(var_0.b.x, false), var_0.b.x)), ~0i, 1905f, 1i), select(func_3(true, vec4<i32>(var_1, var_1, var_1, var_0.e), Struct_1(vec3<f32>(var_0.d, var_0.d, -1019f), var_0.b, var_0.e, var_0.d, -40941i), -var_0.e), select(!vec3<bool>(var_0.b.x, var_0.b.x, true), func_3(true, vec4<i32>(var_1, var_1, var_1, -1i), Struct_1(var_0.a, vec2<bool>(var_0.b.x, false), var_1, var_0.d, 2147483647i), var_1), !vec3<bool>(var_0.b.x, false, false)), false)));
    var var_3 = true;
    return Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.d, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.a.x * var_2.a.x))), var_2.d)), var_0.b, func_4(var_0.a, Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.a), var_0.b, -12854i, _wgslsmith_f_op_f32(trunc(var_0.a.x)), var_1), !select(vec3<bool>(true, var_0.b.x, var_0.b.x), func_3(false, vec4<i32>(var_2.e, 2147483647i, var_2.e, 0i), var_2, var_0.c), !vec3<bool>(true, var_2.b.x, false))), _wgslsmith_f_op_f32(abs(-1000f)), var_2.c);
}

fn func_1() -> vec3<f32> {
    var var_0 = ~0u;
    var_0 = 4294967295u;
    var var_1 = func_2();
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(var_1.a)), vec2<bool>(true, select(true, select(true, any(vec4<bool>(var_1.b.x, var_1.b.x, var_1.b.x, var_1.b.x)), false), var_1.b.x)), 56553i, _wgslsmith_f_op_f32(round(var_1.d)), var_1.e);
    var var_2 = vec4<u32>(u_input.b.x, 0u, u_input.b.x, _wgslsmith_div_u32(firstLeadingBit(~4294967295u) >> (u_input.b.x % 32u), ~min(28851u, ~u_input.a)));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-func_2().a) + var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -225f), -709f, _wgslsmith_f_op_f32(-462f * 967f)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(func_1()))))), select(!func_3(true, firstLeadingBit(vec4<i32>(1i, -2147483647i, -1i, 0i)), Struct_1(vec3<f32>(279f, -1000f, 614f), vec2<bool>(true, false), -2147483647i, 603f, 1i), i32(-1i) * -38468i).yx, func_3(any(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false)), ~vec4<i32>(1i, -5331i, 1i, 40835i) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.a, 1u, u_input.a), vec4<u32>(0u, u_input.a, u_input.a, u_input.b.x)) % vec4<u32>(32u)), func_2(), 1i).zz, false), _wgslsmith_mult_i32(_wgslsmith_mod_i32(1i, ~1i >> (0u % 32u)), -11657i), 514f, -(~(-1i & _wgslsmith_clamp_i32(11113i, -8819i, -2147483647i))));
    var var_1 = vec4<u32>(u_input.b.x, abs(u_input.b.x), 57895u, ~min(_wgslsmith_div_u32(~u_input.b.x, ~0u), u_input.b.x));
    var var_2 = -reverseBits(firstLeadingBit(~(-33969i))) & var_0.c;
    var var_3 = func_3(true, _wgslsmith_add_vec4_i32(vec4<i32>(func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d, var_0.d, var_0.a.x)), var_0, func_3(true, vec4<i32>(var_0.c, -13648i, var_0.c, var_0.e), var_0, var_0.e)), _wgslsmith_dot_vec4_i32(min(vec4<i32>(var_0.c, 0i, var_0.e, var_0.c), vec4<i32>(var_0.e, var_0.c, var_0.e, var_0.c)), vec4<i32>(29146i, var_0.c, 62767i, var_0.e)), 1i, select(~12884i, -var_0.c, false)), max(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(1i, var_0.e, -2436i, 2147483647i), vec4<i32>(var_0.c, -31917i, var_0.c, -37309i)), -vec4<i32>(-36671i, -2147483647i, -32688i, var_0.e)), vec4<i32>(func_2().e, var_0.c, _wgslsmith_add_i32(var_0.e, var_0.e), _wgslsmith_dot_vec2_i32(vec2<i32>(39509i, -2147483647i), vec2<i32>(var_0.c, var_0.e))))), Struct_1(var_0.a, var_0.b, var_0.c, var_0.d, var_0.e >> (_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, var_1.x), u_input.b.yz) % 32u)), var_0.e).x;
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -407f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x * -259f) + _wgslsmith_f_op_f32(985f + 877f)), 1f)), func_2().b, i32(-1i) * -abs(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.e, var_0.e, 1i, -2147483647i), vec4<i32>(64357i, var_0.c, var_0.e, 1i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-599f - -653f)), 1049f)) * _wgslsmith_div_f32(var_0.a.x, 288f)), _wgslsmith_mult_i32(var_0.e, -1i));
    let var_5 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, countOneBits(~var_1.xy), _wgslsmith_dot_vec4_u32(select(~vec4<u32>(var_1.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(~u_input.b.x, _wgslsmith_div_u32(7553u, 4294967295u), 4294967295u, var_1.x), var_0.b.x), select(~(~vec4<u32>(4294967295u, var_1.x, var_1.x, u_input.b.x)), ~select(vec4<u32>(u_input.a, u_input.b.x, u_input.b.x, 4294967295u), vec4<u32>(20537u, u_input.a, u_input.a, 1u), false), true)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(var_5.d))))), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.d) + _wgslsmith_f_op_f32(abs(var_5.a.x)))), var_0.d, var_4.d), vec3<u32>(_wgslsmith_clamp_u32(6094u, reverseBits(max(63367u, var_1.x)), var_1.x), ~(var_1.x >> (var_1.x % 32u)) ^ var_1.x, u_input.a ^ ~(u_input.a ^ var_1.x)));
}

