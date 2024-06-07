struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec4<bool>,
    d: bool,
    e: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec3<bool>,
    c: vec3<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: f32,
    d: vec3<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_4, arg_1: f32) -> bool {
    let var_0 = arg_0.d;
    var var_1 = Struct_3(vec3<bool>(var_0.a.x, all(vec2<bool>(arg_0.b.x, true)), false), u_input.c, Struct_1(arg_0.d.a));
    var var_2 = _wgslsmith_mult_u32(~(~(~1u)), u_input.b);
    var var_3 = arg_1;
    var_2 = 31570u;
    return !any(var_1.a);
}

fn func_2(arg_0: bool, arg_1: vec4<u32>, arg_2: i32) -> vec2<i32> {
    let var_0 = select(arg_1.yy, ~(~arg_1.zz), (4294967295u & arg_1.x) > 31108u);
    let var_1 = Struct_3(vec3<bool>(arg_0, !arg_0, !arg_0), ~1i, Struct_1(vec2<bool>(true, func_3(Struct_4(10895i, vec3<bool>(arg_0, false, arg_0), vec3<i32>(15696i, 1i, u_input.c), Struct_1(vec2<bool>(true, false))), 216f) == true)));
    var var_2 = Struct_2(var_1.c, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(364f, -361f, 697f, 737f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-920f, 220f, 1000f, -1655f))) - vec4<f32>(_wgslsmith_f_op_f32(ceil(-553f)), _wgslsmith_f_op_f32(f32(-1f) * -2255f), -1000f, _wgslsmith_f_op_f32(trunc(838f)))))), select(select(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, arg_0), vec4<bool>(false, arg_0, arg_0, true)), vec4<bool>(true, true, true, true), !any(vec4<bool>(var_1.c.a.x, arg_0, var_1.c.a.x, var_1.c.a.x))), select(!vec4<bool>(true, arg_0, var_1.a.x, var_1.c.a.x), !select(vec4<bool>(false, arg_0, arg_0, false), vec4<bool>(var_1.c.a.x, true, var_1.a.x, true), arg_0), !vec4<bool>(arg_0, false, false, var_1.a.x)), select(vec4<bool>(true, var_1.a.x, var_1.a.x, 4294967295u >= u_input.b), !select(vec4<bool>(true, arg_0, false, arg_0), vec4<bool>(var_1.c.a.x, arg_0, false, arg_0), true), vec4<bool>(arg_0, true & var_1.c.a.x, var_1.c.a.x, arg_0))), !(!all(select(var_1.a, vec3<bool>(false, false, true), vec3<bool>(var_1.a.x, var_1.a.x, arg_0)))), countOneBits(var_0.x));
    var var_3 = Struct_4(u_input.c, vec3<bool>(var_1.c.a.x, any(select(var_2.c.yyx, var_1.a, vec3<bool>(false, false, true))) && false, var_2.c.x), vec3<i32>(-u_input.c, min(~0i, _wgslsmith_mod_i32(arg_2, -2147483647i)), firstLeadingBit(-2147483647i)) ^ reverseBits(vec3<i32>(arg_2, var_1.b, u_input.a.x) >> (~vec3<u32>(27872u, u_input.b, var_0.x) % vec3<u32>(32u))), var_2.a);
    let var_4 = _wgslsmith_dot_vec2_i32(vec2<i32>(-42267i, select(-47421i, 2147483647i, true) ^ ~var_3.c.x), select(var_3.c.xz, _wgslsmith_sub_vec2_i32(-u_input.a, var_3.c.xz | vec2<i32>(var_1.b, -11817i)), true)) ^ abs(43672i);
    return var_3.c.zx;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<u32>) -> f32 {
    let var_0 = func_2(!(!(!all(vec4<bool>(true, true, false, true)))), countOneBits(~reverseBits(~vec4<u32>(4294967295u, u_input.b, u_input.b, arg_1.x))), firstTrailingBit(u_input.c));
    var var_1 = ~abs(abs(min(vec3<i32>(var_0.x, u_input.a.x, var_0.x) & vec3<i32>(u_input.c, 2147483647i, 1i), ~vec3<i32>(var_0.x, -39691i, var_0.x))));
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -949f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-611f, -919f))))), 2022f, 436f) * vec4<f32>(-728f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.x)) - arg_0.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1363f * _wgslsmith_f_op_f32(select(-845f, 1114f, true))))), arg_0.x));
    var var_3 = vec4<i32>(max(_wgslsmith_sub_i32(10396i, var_1.x), -var_0.x), -var_1.x, -1i, var_0.x << (((arg_1.x ^ _wgslsmith_clamp_u32(u_input.b, u_input.b, 24994u)) & ~min(u_input.b, arg_1.x)) % 32u));
    var var_4 = vec4<u32>(arg_1.x, ~_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, 13480u), ~arg_1.zy) ^ (4294967295u | u_input.b), arg_1.x, _wgslsmith_add_u32(1u, arg_1.x));
    return _wgslsmith_f_op_f32(floor(var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(countOneBits(0u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b, 81720u) >> (vec3<u32>(4294967295u, u_input.b, u_input.b) % vec3<u32>(32u)), vec3<u32>(56881u, 0u, u_input.b) >> (vec3<u32>(u_input.b, u_input.b, 1u) % vec3<u32>(32u))), u_input.b) | countOneBits(vec3<u32>(u_input.b, ~(u_input.b & u_input.b), _wgslsmith_mod_u32(u_input.b | u_input.b, 43870u >> (u_input.b % 32u))));
    var var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(-241f, -140f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -833f), _wgslsmith_f_op_f32(func_1(vec3<f32>(1000f, 1043f, 720f), var_0)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-254f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1621f - -1497f), -1161f)), -1819f) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-912f, 910f, -1406f), vec3<f32>(518f, -323f, -253f), false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-912f, 851f, -480f)))))));
    let var_2 = select(!select(vec3<bool>(true, all(vec2<bool>(false, false)), true), vec3<bool>(52120i < u_input.a.x, any(vec2<bool>(true, false)), var_0.x < 35857u), vec3<bool>(true, true, true)), !select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(false, true, all(vec4<bool>(false, false, false, true))), !(u_input.c <= 1i)), var_1.x > _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(func_1(vec3<f32>(822f, var_1.x, var_1.x), var_0))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(var_1.x, var_1.x)), _wgslsmith_f_op_f32(select(-694f, var_1.x, true)))))));
    let var_3 = select(select(select(!select(vec4<bool>(var_2.x, true, var_2.x, true), vec4<bool>(var_2.x, true, var_2.x, false), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x)), select(!vec4<bool>(false, var_2.x, false, true), vec4<bool>(var_2.x, var_2.x, true, true), select(vec4<bool>(var_2.x, var_2.x, var_2.x, false), vec4<bool>(true, false, var_2.x, false), var_2.x)), _wgslsmith_dot_vec2_u32(var_0.zy, vec2<u32>(1u, 56200u)) < 0u), vec4<bool>(!all(vec2<bool>(false, var_2.x)), true, false, !func_3(Struct_4(u_input.c, var_2, vec3<i32>(-61813i, u_input.a.x, u_input.c), Struct_1(var_2.yz)), -1514f)), true), select(select(select(vec4<bool>(var_2.x, false, var_2.x, true), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), -1266f < var_1.x), select(select(vec4<bool>(false, false, var_2.x, var_2.x), vec4<bool>(false, var_2.x, var_2.x, true), var_2.x), select(vec4<bool>(true, var_2.x, false, var_2.x), vec4<bool>(var_2.x, var_2.x, true, true), true), all(vec3<bool>(var_2.x, false, var_2.x))), false), vec4<bool>(var_2.x, false, !var_2.x, select(true, !var_2.x, var_2.x && var_2.x)), !select(select(vec4<bool>(false, true, var_2.x, var_2.x), vec4<bool>(var_2.x, var_2.x, var_2.x, false), vec4<bool>(var_2.x, var_2.x, false, false)), !vec4<bool>(true, false, var_2.x, false), var_2.x)), true);
    var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1465f, -1473f, -808f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1643f, 986f, var_1.x), vec3<f32>(var_1.x, var_1.x, -1469f), true))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-269f, -2966f, var_1.x))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-722f, _wgslsmith_f_op_f32(step(-158f, 1695f)), var_1.x) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-263f, -1129f, -676f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-650f, 123f, var_1.x))))));
    let var_4 = vec3<bool>(_wgslsmith_clamp_i32(_wgslsmith_div_i32(u_input.c, ~0i), firstTrailingBit(~(-2147483647i)), ~u_input.a.x) > -15336i, !var_2.x & true, !func_3(Struct_4(u_input.c, vec3<bool>(true, true, true), vec3<i32>(u_input.c, 9208i, -321i) ^ vec3<i32>(35804i, 0i, u_input.c), Struct_1(vec2<bool>(var_3.x, false))), _wgslsmith_f_op_f32(ceil(var_1.x))));
    var var_5 = var_0.zy;
    var var_6 = -(~u_input.a.x);
    var_1 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-170f + var_1.x) + _wgslsmith_f_op_f32(-680f * _wgslsmith_f_op_f32(trunc(var_1.x)))), var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<u32>(~4294967295u, 32848u)) & vec2<u32>(max(var_0.x, 4294967295u), var_0.x), ~_wgslsmith_mult_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(var_5.x, 58631u, var_5.x, 1u), vec4<u32>(0u, var_5.x, 104447u, var_0.x)), firstTrailingBit(~vec4<u32>(0u, 4724u, u_input.b, var_0.x))), 2775f, vec3<i32>(_wgslsmith_add_i32(u_input.c, ~firstTrailingBit(u_input.a.x)), _wgslsmith_clamp_i32(2147483647i, _wgslsmith_sub_i32(u_input.c, _wgslsmith_add_i32(u_input.c, u_input.c)), _wgslsmith_div_i32(-u_input.a.x, 1i & u_input.c)), _wgslsmith_sub_i32(0i, firstTrailingBit(-u_input.a.x))), vec3<i32>(u_input.a.x, -_wgslsmith_clamp_i32(u_input.c, u_input.c, ~u_input.c), u_input.c));
}

