struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: bool,
    d: vec3<bool>,
    e: u32,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_3,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> u32 {
    let var_0 = arg_1;
    var var_1 = Struct_1(arg_1.a ^ (vec4<u32>(1u, 11813u, ~var_0.a.x, var_0.a.x) | vec4<u32>(9120u, ~1u, var_0.a.x, 1u | arg_1.a.x)));
    var_1 = Struct_1(_wgslsmith_add_vec4_u32(~(~vec4<u32>(77028u, 4294967295u, var_0.a.x, 0u)), select(vec4<u32>(arg_1.a.x, abs(3612u), var_0.a.x, 1u), (var_0.a << (vec4<u32>(1u, var_1.a.x, 4294967295u, 4294967295u) % vec4<u32>(32u))) & ~vec4<u32>(arg_1.a.x, var_0.a.x, 4294967295u, var_0.a.x), select(!vec4<bool>(false, true, true, arg_0), !vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(arg_0, true, false, false)))));
    var var_2 = u_input.a;
    let var_3 = Struct_2(_wgslsmith_div_u32(var_1.a.x, 1u >> (abs(var_1.a.x) % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-331f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(807f - 527f))), -1518f))), arg_0, select(select(vec3<bool>(arg_0, var_1.a.x <= 79678u, u_input.b.x >= 19033i), !(!vec3<bool>(false, arg_0, true)), false), vec3<bool>(true, arg_0, false), vec3<bool>((arg_0 != true) || all(vec2<bool>(arg_0, false)), !all(vec4<bool>(false, true, arg_0, arg_0)), true)), _wgslsmith_clamp_u32(var_1.a.x >> (arg_1.a.x % 32u), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(var_0.a | var_1.a, vec4<u32>(16626u, var_0.a.x, var_0.a.x, 20098u) ^ vec4<u32>(var_1.a.x, var_1.a.x, 1u, arg_1.a.x)), select(~914u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 56153u), vec3<u32>(4294967295u, arg_1.a.x, var_0.a.x)), !arg_0)), _wgslsmith_mult_u32(~5358u, var_0.a.x)));
    return var_1.a.x;
}

fn func_2(arg_0: vec2<f32>) -> Struct_2 {
    let var_0 = -15663i;
    let var_1 = true;
    let var_2 = Struct_3(false, var_0 >> (func_3(!var_1 | true, Struct_1(vec4<u32>(1u, 1u, 1u, 1u))) % 32u), ~select(~_wgslsmith_div_vec3_u32(vec3<u32>(0u, 1u, 100796u), vec3<u32>(66596u, 1u, 22952u)), vec3<u32>(4294967295u, _wgslsmith_div_u32(1u, 4294967295u), ~91710u), _wgslsmith_f_op_f32(-arg_0.x) != _wgslsmith_div_f32(-1000f, arg_0.x)));
    var var_3 = Struct_1(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(var_2.c.x, var_2.c.x, var_2.c.x, var_2.c.x)), vec4<u32>(1u, 0u, 18521u, var_2.c.x), vec4<u32>(34856u, var_2.c.x, var_2.c.x, 0u) | vec4<u32>(2473u, 15509u, var_2.c.x, var_2.c.x)) << (_wgslsmith_mult_vec4_u32(max(vec4<u32>(4294967295u, 42973u, var_2.c.x, var_2.c.x), vec4<u32>(var_2.c.x, var_2.c.x, 21230u, var_2.c.x)), ~vec4<u32>(0u, var_2.c.x, 1u, 13780u)) % vec4<u32>(32u)), ~(~vec4<u32>(var_2.c.x, var_2.c.x, 24096u, var_2.c.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(var_2.c.x, var_2.c.x, var_2.c.x, var_2.c.x) | ~vec4<u32>(var_2.c.x, 51497u, var_2.c.x, 52432u), vec4<u32>(min(var_2.c.x, 9169u), 18247u, select(80519u, var_2.c.x, false), 79567u))));
    var_3 = Struct_1(min(vec4<u32>(var_3.a.x, 1u, 39549u, reverseBits(_wgslsmith_mult_u32(var_2.c.x, var_3.a.x))), vec4<u32>(var_3.a.x, _wgslsmith_clamp_u32(var_2.c.x << (58048u % 32u), 28443u, var_3.a.x), var_3.a.x << (select(4338u, var_2.c.x, var_2.a) % 32u), var_3.a.x)));
    return Struct_2(~(~func_3(all(vec3<bool>(var_1, false, var_1)), Struct_1(var_3.a))), arg_0.x, var_2.a, !select(vec3<bool>(false, select(var_2.a, false, var_1), var_2.a), !vec3<bool>(var_2.a, var_1, var_1), vec3<bool>(true, true, true)), _wgslsmith_add_u32(max(var_3.a.x, var_2.c.x), countOneBits(1u) & max(_wgslsmith_dot_vec4_u32(var_3.a, vec4<u32>(var_3.a.x, var_3.a.x, 62944u, var_3.a.x)), 23571u)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32, arg_3: vec3<u32>) -> Struct_3 {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, 1661f, -922f, 216f)), _wgslsmith_div_vec4_f32(vec4<f32>(-637f, 145f, var_0.b, arg_0.b), vec4<f32>(arg_1.b, -1000f, 781f, arg_1.b)))), vec4<f32>(-1156f, _wgslsmith_f_op_f32(-var_0.b), -426f, 944f), !select(vec4<bool>(true, true, arg_1.d.x, false), vec4<bool>(false, false, true, arg_0.c), vec4<bool>(var_0.d.x, arg_0.c, true, true))))))));
    let var_2 = all(func_2(var_1.wy).d);
    var_0 = func_2(vec2<f32>(_wgslsmith_f_op_f32(arg_0.b + _wgslsmith_f_op_f32(311f - _wgslsmith_f_op_f32(956f + var_1.x))), _wgslsmith_div_f32(-772f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.b))))));
    var_0 = arg_1;
    return Struct_3(u_input.a == -2147483647i, 1i, _wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.e, ~max(arg_3.x, 1u), ~1u), ~(~abs(vec3<u32>(0u, var_0.e, var_0.e))), _wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(arg_3.x, arg_1.e, 14161u)), min(arg_3, vec3<u32>(4294967295u, arg_1.e, 4294967295u)))));
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_4(func_4(func_2(vec2<f32>(-206f, _wgslsmith_f_op_f32(f32(-1f) * -593f))), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(544f, -1321f)))), u_input.a, abs(vec3<u32>(1u, 1u, 1u))), Struct_3(func_2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(-845f, 292f), vec2<f32>(1408f, -604f))))).d.x, _wgslsmith_div_i32(1i, u_input.a), abs(_wgslsmith_add_vec3_u32(func_4(Struct_2(4294967295u, -798f, true, vec3<bool>(true, true, false), 24120u), Struct_2(69965u, -204f, false, vec3<bool>(true, false, false), 4294967295u), u_input.b.x, vec3<u32>(4294967295u, 4294967295u, 4294967295u)).c, vec3<u32>(1u, 1u, 1u)))), Struct_3(false, 0i, abs(vec3<u32>(0u, 36612u, abs(4294967295u)))), Struct_1(vec4<u32>(~53514u, 12894u, ~(~12028u), 0u)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1642f, 574f))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-1414f))))));
    let var_2 = vec2<bool>(true, false);
    var var_3 = Struct_4(var_0.a, var_0.c, var_0.c, Struct_1(abs(~(~var_0.d.a))));
    var_3 = Struct_4(Struct_3(!var_2.x, u_input.b.x ^ ~1i, vec3<u32>(4294967295u << (~var_0.b.c.x % 32u), 2109u, var_0.b.c.x)), Struct_3(var_2.x, -var_0.c.b, vec3<u32>(42292u, ~(var_0.a.c.x >> (var_0.b.c.x % 32u)), var_0.b.c.x)), var_0.b, var_3.d);
    return Struct_2(var_0.a.c.x & ~var_0.c.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 815f))).b - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1419f, -900f))) * _wgslsmith_f_op_f32(-556f - -997f)), (_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-1628f + 1000f)) < _wgslsmith_f_op_f32(round(-830f))) || any(select(select(var_2, vec2<bool>(false, var_0.a.a), var_2), func_2(vec2<f32>(-760f, 1654f)).d.yz, !var_3.a.a)), !(!select(vec3<bool>(true, true, true), vec3<bool>(true, var_0.a.a, true), select(vec3<bool>(false, var_3.a.a, var_0.a.a), vec3<bool>(var_2.x, var_3.a.a, var_3.b.a), vec3<bool>(var_0.a.a, var_0.c.a, var_2.x)))), var_0.c.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1000f;
    let var_1 = _wgslsmith_add_u32(_wgslsmith_clamp_u32(firstLeadingBit(3563u), ~_wgslsmith_add_u32(1u, _wgslsmith_mult_u32(61149u, 23438u)), _wgslsmith_add_u32(7940u, 0u)), 0u);
    let var_2 = 85651u;
    var var_3 = -637f;
    let var_4 = func_1();
    var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-921f, _wgslsmith_f_op_f32(max(var_4.b, -1853f)))))), 594f)));
    var var_5 = var_2;
    var var_6 = select(-select(_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.b.x, u_input.a), vec3<i32>(2147483647i, -4407i, 1i)), select(vec3<i32>(u_input.b.x, 2147483647i, 0i), vec3<i32>(-2147483647i, u_input.a, 0i), false)), vec3<i32>(u_input.a, ~u_input.b.x, u_input.b.x), func_2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1000f, -494f), vec2<f32>(var_4.b, -360f)))).d), -max(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -1i, u_input.a, -591i), vec4<i32>(u_input.b.x, -13875i, -1i, 1i)), -1i, _wgslsmith_div_i32(u_input.b.x, -1i)), firstLeadingBit(vec3<i32>(u_input.b.x, u_input.a, 2147483647i)) ^ vec3<i32>(u_input.b.x, 0i, u_input.a)), vec3<bool>(!(all(var_4.d.yx) || func_4(Struct_2(0u, var_4.b, var_4.d.x, var_4.d, var_2), var_4, u_input.a, vec3<u32>(1142u, var_2, 4294967295u)).a), func_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(142f, -315f) + vec2<f32>(1866f, -1788f)), vec2<f32>(var_4.b, var_4.b)))).c, true));
    let var_7 = abs(_wgslsmith_dot_vec3_i32(firstLeadingBit(~abs(vec3<i32>(u_input.a, 0i, var_6.x))), firstLeadingBit(vec3<i32>(2147483647i, -22201i, 2147483647i)) & vec3<i32>(-var_6.x, -var_6.x, var_6.x)));
    let x = u_input.a;
    s_output = StorageBuffer(102021u, ~4294967295u | ~var_1, -(~_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, var_6.x, u_input.a), vec3<i32>(-578i, u_input.b.x, var_6.x), vec3<i32>(2147483647i, 37105i, 54284i)), vec3<i32>(6891i, 1971i, 1i))), 548f, _wgslsmith_clamp_u32(var_1, var_4.e, var_1));
}

