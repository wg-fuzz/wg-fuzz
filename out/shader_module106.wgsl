struct Struct_1 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
}

struct Struct_5 {
    a: vec4<u32>,
    b: u32,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -38718i;

var<private> global1: Struct_2;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1) -> u32 {
    global0 = -26182i;
    var var_0 = select(select(select(!select(global1.c.b, vec3<bool>(global1.a, global1.d.b.x, arg_0.a.d.b.x), vec3<bool>(global1.a, true, true)), vec3<bool>(all(arg_0.a.c.b.zx), true, arg_1.b.x), vec3<bool>(global1.c.b.x, u_input.b > arg_0.c.a, arg_0.a.d.b.x == global1.d.b.x)), arg_1.b, !select(select(vec3<bool>(false, true, arg_1.b.x), vec3<bool>(false, true, arg_1.b.x), vec3<bool>(arg_0.a.d.b.x, true, true)), vec3<bool>(global1.c.b.x, arg_0.a.d.b.x, false), false | arg_0.a.d.b.x)), arg_1.b, !(_wgslsmith_clamp_u32(1u << (arg_1.a % 32u), global1.c.a, _wgslsmith_sub_u32(59923u, 14036u)) >= 4294967295u));
    var_0 = vec3<bool>(!(26146u != ~(27798u ^ arg_1.a)), any(vec3<bool>(arg_0.a.c.b.x, !all(vec3<bool>(var_0.x, true, false)), true)), !(!all(select(vec4<bool>(true, true, true, var_0.x), vec4<bool>(global1.a, var_0.x, true, var_0.x), vec4<bool>(global1.a, false, arg_0.c.b.x, var_0.x)))));
    var var_1 = abs(~1u);
    global1 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1183f)), 1000f) != _wgslsmith_f_op_f32(trunc(global1.b.x)), vec4<f32>(_wgslsmith_f_op_f32(ceil(-493f)), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1452f + _wgslsmith_f_op_f32(round(-281f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.a.b.x * 202f)))), Struct_1(arg_1.a, arg_0.a.d.b), arg_0.c);
    return 1634u;
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    var var_0 = Struct_5(min(vec4<u32>(68661u, firstTrailingBit(u_input.b ^ 16938u), func_3(Struct_4(Struct_2(true, vec4<f32>(544f, global1.b.x, 423f, -347f), Struct_1(u_input.b, vec3<bool>(false, global1.a, false)), Struct_1(u_input.b, global1.d.b)), 0u, Struct_1(71027u, global1.c.b)), Struct_1(0u, global1.c.b)), ~1u << (max(global1.d.a, u_input.b) % 32u)), vec4<u32>(0u, _wgslsmith_mod_u32(~u_input.b, ~global1.c.a), ~1u, _wgslsmith_div_u32(6054u >> (global1.c.a % 32u), ~u_input.b))), 47733u, global1.d, abs(_wgslsmith_add_i32(1i, -2147483647i)));
    var_0 = Struct_5(~var_0.a, u_input.b, global1.d, max(46328i, -u_input.a) | _wgslsmith_add_i32(u_input.a, ~_wgslsmith_dot_vec3_i32(vec3<i32>(-18866i, 9000i, 1454i), vec3<i32>(22517i, var_0.d, var_0.d))));
    global0 = u_input.a >> (func_3(Struct_4(Struct_2(false, vec4<f32>(arg_0.x, global1.b.x, arg_0.x, arg_0.x), var_0.c, Struct_1(4294967295u, vec3<bool>(false, true, var_0.c.b.x))), func_3(Struct_4(Struct_2(var_0.c.b.x, vec4<f32>(-1275f, arg_0.x, -144f, global1.b.x), Struct_1(0u, var_0.c.b), global1.c), global1.c.a, global1.c), global1.d) >> (~global1.c.a % 32u), global1.c), Struct_1(~1u, !var_0.c.b)) % 32u);
    var_0 = Struct_5(_wgslsmith_add_vec4_u32(~(~vec4<u32>(var_0.c.a, 1u, 36880u, var_0.c.a) & vec4<u32>(35341u, var_0.a.x, 63490u, global1.d.a)), abs(~vec4<u32>(4294967295u, u_input.b, var_0.a.x, 2279u) & var_0.a)), var_0.c.a, global1.d, reverseBits(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(25973i, u_input.a), false), ~vec2<i32>(-32772i, 64433i)), max(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, var_0.d), vec2<i32>(var_0.d, u_input.a)), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, 2147483647i), vec2<i32>(-2147483647i, 19541i))))));
    var var_1 = _wgslsmith_mult_u32(14593u, _wgslsmith_add_u32(2248u, u_input.b));
    return Struct_1(~global1.d.a, !select(var_0.c.b, select(global1.c.b, global1.d.b, vec3<bool>(true, true, true)), false));
}

fn func_1() -> Struct_5 {
    let var_0 = Struct_2(false, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.x) + -225f) - global1.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-451f - -1000f) * _wgslsmith_f_op_f32(exp2(global1.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.x) - _wgslsmith_f_op_f32(select(global1.b.x, global1.b.x, false)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1091f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-240f, global1.b.x))))), global1.b.x), global1.c, func_2(vec2<f32>(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.b.x), 749f))));
    let var_1 = global1.c.a | ~min(func_3(Struct_4(var_0, u_input.b, var_0.d), global1.c), ~global1.d.a);
    global1 = Struct_2(var_0.d.b.x, _wgslsmith_f_op_vec4_f32(global1.b - vec4<f32>(var_0.b.x, global1.b.x, _wgslsmith_f_op_f32(ceil(279f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global1.b.x)), _wgslsmith_f_op_f32(global1.b.x + global1.b.x)))), func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_0.b.x))), var_0.c);
    var var_2 = countOneBits(min(-(~vec2<i32>(u_input.a, u_input.a)), vec2<i32>(-29295i, u_input.a))) >> (~((vec2<u32>(global1.d.a, 0u) | _wgslsmith_mod_vec2_u32(vec2<u32>(52546u, global1.d.a), vec2<u32>(global1.d.a, 8937u))) & reverseBits(countOneBits(vec2<u32>(global1.c.a, 4294967295u)))) % vec2<u32>(32u));
    return Struct_5(max(_wgslsmith_mult_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 65756u, global1.c.a, 55223u), vec4<u32>(0u, global1.c.a, global1.c.a, var_0.d.a), vec4<u32>(17750u, u_input.b, var_0.c.a, 29886u)), vec4<u32>(u_input.b, ~37021u, 9140u, 1u)), vec4<u32>((32285u & var_1) >> (abs(var_0.c.a) % 32u), 0u, 0u, ~abs(global1.d.a))), _wgslsmith_sub_u32(min(1u, firstTrailingBit(~var_0.c.a)), var_0.c.a), Struct_1(var_1, !(!(!vec3<bool>(global1.a, true, false)))), _wgslsmith_dot_vec3_i32(vec3<i32>(-_wgslsmith_mult_i32(var_2.x, 15870i), _wgslsmith_mod_i32(~40359i, -var_2.x), 84520i), ~vec3<i32>(u_input.a, u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, 2147483647i), vec3<i32>(1i, u_input.a, var_2.x)))));
}

fn func_4(arg_0: Struct_5) -> f32 {
    var var_0 = global1.b.xw;
    global0 = u_input.a;
    var var_1 = Struct_4(Struct_2(any(vec4<bool>(global1.d.b.x, global1.d.b.x | arg_0.c.b.x, false, global1.c.b.x)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x + -104f), _wgslsmith_f_op_f32(f32(-1f) * -511f), _wgslsmith_f_op_f32(sign(var_0.x))))), Struct_1(~_wgslsmith_dot_vec3_u32(arg_0.a.zzy, arg_0.a.yww), vec3<bool>(all(vec3<bool>(true, true, true)), all(vec3<bool>(true, true, true)), true)), global1.c), 1u, Struct_1(u_input.b, vec3<bool>(true, false, global1.c.a > func_2(vec2<f32>(-751f, 804f)).a)));
    let var_2 = ~var_1.b;
    var_1 = Struct_4(var_1.a, abs(max(4294967295u, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, var_1.b), arg_0.a.yz ^ vec2<u32>(arg_0.b, var_1.a.d.a)))), func_2(_wgslsmith_f_op_vec2_f32(select(global1.b.wz, _wgslsmith_f_op_vec2_f32(max(var_1.a.b.zy, _wgslsmith_f_op_vec2_f32(-var_1.a.b.yw))), vec2<bool>(var_1.a.a, false)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(-var_1.a.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    var var_1 = _wgslsmith_f_op_f32(func_4(func_1()));
    var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_4(Struct_5(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(4294967295u, 9314u, global1.d.a, 18114u)), vec4<u32>(u_input.b, u_input.b, global1.c.a, 12200u)), ~(1u ^ u_input.b), Struct_1(func_2(vec2<f32>(global1.b.x, global1.b.x)).a, global1.c.b), var_0))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(1559f)))), global1.d.b.x));
    var_1 = 339f;
    let var_2 = Struct_3(_wgslsmith_f_op_f32(func_4(func_1())));
    global1 = Struct_2(global1.d.b.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-454f)) * _wgslsmith_f_op_f32(-var_2.a)), _wgslsmith_f_op_f32(f32(-1f) * -884f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a - global1.b.x)), _wgslsmith_f_op_f32(var_2.a - var_2.a)) - global1.b), func_2(_wgslsmith_f_op_vec2_f32(global1.b.yw - _wgslsmith_f_op_vec2_f32(global1.b.yw - _wgslsmith_f_op_vec2_f32(-global1.b.zx)))), Struct_1(global1.d.a, vec3<bool>(true, global1.d.b.x & any(vec3<bool>(false, true, global1.a)), !global1.a)));
    var var_3 = -1i;
    var var_4 = -2279f;
    let var_5 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~0u, _wgslsmith_f_op_vec3_f32(trunc(global1.b.yyx)), max(~(~1u), ~reverseBits(var_5.a.x << (4294967295u % 32u))), reverseBits(var_5.a.yz));
}

