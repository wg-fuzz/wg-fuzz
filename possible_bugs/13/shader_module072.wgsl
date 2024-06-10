struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<f32>,
    d: vec2<i32>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(~(~0u), -588f, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -141f)), 280f, 238f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1049f)))))), vec2<i32>((~1i & min(u_input.a.x, -31455i)) ^ u_input.a.x, u_input.a.x), u_input.a.x);
    let var_1 = vec4<u32>(11447u, 46437u, countOneBits(_wgslsmith_clamp_u32(~_wgslsmith_clamp_u32(4294967295u, var_0.a, var_0.a), ~var_0.a, ~4294967295u)), var_0.a);
    var var_2 = select(vec3<bool>((countOneBits(var_1.x) >> (4294967295u % 32u)) <= var_0.a, any(vec3<bool>(true, true, true)), any(vec2<bool>(true, true))), select(vec3<bool>(true, true, true), !select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), false), vec3<bool>(any(vec2<bool>(true, true)), false, any(vec2<bool>(false, false)))), !select(vec3<bool>(all(vec2<bool>(false, false)), any(vec4<bool>(true, false, true, true)), true), vec3<bool>(any(vec4<bool>(true, true, false, true)), true, true), false || (var_0.b == var_0.c.x)));
    var_2 = !(!(!select(!vec3<bool>(false, var_2.x, var_2.x), vec3<bool>(true, var_2.x, false), var_2.x)));
    let var_3 = _wgslsmith_add_vec3_u32(vec3<u32>(var_1.x, 4294967295u, var_1.x), vec3<u32>(((var_0.a | var_0.a) ^ var_0.a) & 1u, countOneBits(var_0.a), var_1.x));
    return _wgslsmith_f_op_f32(920f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.b))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(660f * 1000f), _wgslsmith_f_op_f32(min(var_0.b, -1655f)))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -668f)) + _wgslsmith_f_op_f32(-var_0.b))));
}

fn func_2(arg_0: f32, arg_1: vec3<u32>) -> u32 {
    var var_0 = Struct_1(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0)) * _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(f32(-1f) * -1035f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 135f, arg_0, _wgslsmith_div_f32(104f, arg_0)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 353f, -600f, -1359f)))) + vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(arg_0)))), -1279f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), -730f)), _wgslsmith_sub_vec2_i32(vec2<i32>(-9911i, _wgslsmith_mult_i32(u_input.a.x, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x))), _wgslsmith_clamp_vec2_i32(u_input.a.wx, ~vec2<i32>(2147483647i, u_input.a.x), reverseBits(vec2<i32>(-4162i, 14257i)))), u_input.a.x & _wgslsmith_div_i32(2147483647i, _wgslsmith_sub_i32(_wgslsmith_div_i32(23568i, -29403i), 53457i)));
    var var_1 = Struct_1(_wgslsmith_sub_u32(70775u, ~(arg_1.x | ~70009u)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(var_0.b, _wgslsmith_f_op_f32(-arg_0))))), var_0.c, firstLeadingBit(vec2<i32>(-32510i, u_input.a.x)), abs(var_0.e >> ((var_0.a ^ _wgslsmith_mod_u32(var_0.a, 26515u)) % 32u)));
    let var_2 = select(~var_1.a >= _wgslsmith_clamp_u32(~(35648u ^ var_1.a), ~var_0.a, var_1.a), !(any(vec4<bool>(true, false, true, false)) == true), !all(vec4<bool>(arg_1.x != var_0.a, any(vec2<bool>(false, true)), all(vec4<bool>(false, true, true, true)), var_0.d.x != -2147483647i)));
    var_0 = Struct_1(~(var_0.a << (countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, arg_1.x, 6657u, arg_1.x), vec4<u32>(4294967295u, 1u, arg_1.x, var_1.a))) % 32u)), arg_0, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(floor(arg_0))), _wgslsmith_f_op_f32(trunc(var_1.b)), 682f, _wgslsmith_f_op_f32(-arg_0))), vec2<i32>(firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.a.x, var_1.d.x, var_0.e) ^ u_input.a, u_input.a)), (-17761i << (_wgslsmith_add_u32(var_1.a, 0u) % 32u)) ^ u_input.a.x), reverseBits(_wgslsmith_div_i32(i32(-1i) * -37083i, 18229i)));
    let var_3 = ~vec2<i32>(_wgslsmith_mod_i32(~(-25180i), var_0.e & -36285i), var_0.d.x);
    return ~(~var_0.a) | 37324u;
}

fn func_4(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = vec2<u32>(4294967295u, ~4294967295u);
    var_0 = abs(max(abs(~_wgslsmith_div_vec2_u32(arg_0, vec2<u32>(var_0.x, 29219u))), arg_0));
    var var_1 = _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.x, firstLeadingBit(4294967295u)), min(_wgslsmith_div_vec2_u32(abs(min(arg_0, vec2<u32>(4294967295u, 67315u))), _wgslsmith_div_vec2_u32(vec2<u32>(43908u, 1u) >> (arg_0 % vec2<u32>(32u)), countOneBits(vec2<u32>(arg_0.x, arg_0.x)))), arg_0));
    var var_2 = Struct_1(~9590u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1254f))) - _wgslsmith_f_op_f32(floor(-145f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1139f, 705f, -464f, -159f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-214f, -275f, 1892f, 1000f))))), u_input.a.zz, 1i);
    var var_3 = Struct_1(var_2.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1589f * _wgslsmith_f_op_f32(trunc(var_2.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-458f * var_2.b)))))), vec4<f32>(var_2.c.x, _wgslsmith_f_op_f32(-1000f - var_2.c.x), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_2.b, _wgslsmith_f_op_f32(sign(1503f))), -1000f, true)), var_2.b), u_input.a.zy, var_2.d.x);
    return Struct_1(_wgslsmith_add_u32(reverseBits(arg_0.x), var_1.x), 720f, _wgslsmith_f_op_vec4_f32(ceil(var_3.c)), vec2<i32>(var_3.d.x, ~18594i), i32(-1i) * -var_2.d.x);
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(vec2<u32>(min(func_2(_wgslsmith_f_op_f32(floor(-589f)), ~vec3<u32>(4294967295u, 54806u, 4294967295u)), 0u), _wgslsmith_dot_vec2_u32(select(vec2<u32>(14115u, 1u), vec2<u32>(0u, 1u), vec2<bool>(false, false)), vec2<u32>(abs(1u), 1u))));
    var var_1 = firstTrailingBit(_wgslsmith_mult_u32(75500u, func_2(_wgslsmith_f_op_f32(591f + 221f), abs(vec3<u32>(1u, 55758u, 9248u)))) & _wgslsmith_sub_u32(var_0.a, min(~80245u, var_0.a ^ var_0.a)));
    let var_2 = _wgslsmith_mod_vec3_i32(abs(vec3<i32>(firstLeadingBit(-24556i), u_input.a.x, _wgslsmith_mod_i32(_wgslsmith_mod_i32(-2147483647i, var_0.e), -u_input.a.x))), u_input.a.yyx);
    let var_3 = vec4<bool>(any(!vec3<bool>(true, any(vec3<bool>(false, true, false)), false)), false, true, false);
    var_1 = _wgslsmith_div_u32(~abs(~func_2(-1776f, vec3<u32>(var_0.a, var_0.a, var_0.a))), _wgslsmith_mod_u32(_wgslsmith_sub_u32(37213u, 1u), var_0.a));
    return func_4(_wgslsmith_mult_vec2_u32(vec2<u32>(83512u, var_0.a), ~(vec2<u32>(4294967295u, 83725u) & vec2<u32>(1u, var_0.a)) | ~(~vec2<u32>(13546u, 4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = func_1();
    let var_2 = vec2<bool>(all(vec2<bool>(all(vec3<bool>(true, true, false)), true & all(vec4<bool>(false, true, false, true)))), false);
    let var_3 = func_4(select(~select(firstLeadingBit(vec2<u32>(1u, 0u)), vec2<u32>(var_1.a, var_0.a) << (vec2<u32>(var_1.a, var_0.a) % vec2<u32>(32u)), true), _wgslsmith_mult_vec2_u32(max(vec2<u32>(var_0.a, 4294967295u) << (vec2<u32>(0u, var_0.a) % vec2<u32>(32u)), vec2<u32>(40511u, var_1.a) | vec2<u32>(var_0.a, var_0.a)), vec2<u32>(func_4(vec2<u32>(var_0.a, 0u)).a, ~4294967295u)), true));
    var var_4 = -u_input.a;
    var_0 = func_1();
    let var_5 = true;
    let var_6 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(590f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.x * var_1.c.x) + var_0.c.x))), _wgslsmith_f_op_f32(min(var_0.c.x, -1000f)), ~countOneBits(~(~var_6.d)), select(~_wgslsmith_mod_vec2_u32(~vec2<u32>(4294967295u, var_6.a), vec2<u32>(4294967295u, 0u)), vec2<u32>(~func_1().a, select(var_3.a, var_3.a, any(vec3<bool>(var_5, true, true)))), !(!var_2.x)));
}

