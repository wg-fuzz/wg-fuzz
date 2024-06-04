struct Struct_1 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
    c: f32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 31> = array<f32, 31>(1022f, 362f, 665f, 322f, 2441f, -805f, -736f, 137f, 264f, 1521f, -2675f, 711f, -751f, -1000f, 2127f, -166f, 200f, 510f, -1940f, 750f, -306f, 726f, 918f, 255f, -1265f, 992f, 126f, 400f, -735f, -1033f, -241f);

var<private> global1: array<f32, 25>;

var<private> global2: array<bool, 22>;

var<private> global3: vec4<f32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool) -> f32 {
    var var_0 = Struct_2(_wgslsmith_dot_vec2_u32(~select(u_input.c.xy, vec2<u32>(0u, u_input.b), vec2<bool>(arg_0, true)), u_input.c.xx) > 1u, vec3<u32>(~(u_input.a.x & u_input.b) ^ max(u_input.a.x, _wgslsmith_add_u32(51546u, u_input.a.x)), _wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, _wgslsmith_sub_u32(u_input.b, u_input.b)), min(9955u, _wgslsmith_clamp_u32(32456u, 99685u, 0u))), _wgslsmith_add_u32(4294967295u, ~abs(u_input.c.x))), -1270f, vec3<f32>(_wgslsmith_f_op_f32(-1f), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var var_1 = _wgslsmith_sub_vec2_u32(~u_input.c.zx, var_0.b.zx);
    let var_2 = u_input.c;
    global1 = array<f32, 25>();
    var var_3 = Struct_1(any(!vec3<bool>(global3.x < 408f, true, true)), ~_wgslsmith_add_vec3_i32(vec3<i32>(-1i, -2147483647i, 2147483647i), select(vec3<i32>(0i, -121777i, 0i), vec3<i32>(0i, 1i, -2505i), vec3<bool>(false, var_0.a, global2[_wgslsmith_index_u32(u_input.c.x, 22u)]))) << (~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, var_2.x, var_2.x), vec3<u32>(var_1.x, 1u, 0u)) % vec3<u32>(32u)));
    return _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(var_1.x, 31u)], _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(238f))), -258f, !(u_input.b <= var_0.b.x) && false))));
}

fn func_2(arg_0: f32) -> vec4<f32> {
    var var_0 = 1u;
    let var_1 = _wgslsmith_add_u32(9818u, firstTrailingBit(~50270u)) << (max(4294967295u, 1u) % 32u);
    var_0 = ~var_1 << (93858u % 32u);
    var_0 = var_1;
    global3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-940f, -597f, -991f, global3.x) - vec4<f32>(global0[_wgslsmith_index_u32(71877u, 31u)], -495f, 1022f, -1432f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 31u)], global0[_wgslsmith_index_u32(u_input.c.x, 31u)], 231f, -1785f) + vec4<f32>(1590f, arg_0, 1640f, arg_0)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(2118f, global0[_wgslsmith_index_u32(u_input.c.x, 31u)], -753f, -938f) + vec4<f32>(global1[_wgslsmith_index_u32(14323u, 25u)], -1879f, -1711f, -429f))), select(!vec4<bool>(global2[_wgslsmith_index_u32(34418u, 22u)], global2[_wgslsmith_index_u32(0u, 22u)], true, global2[_wgslsmith_index_u32(u_input.c.x, 22u)]), !vec4<bool>(true, true, global2[_wgslsmith_index_u32(1u, 22u)], true), !vec4<bool>(global2[_wgslsmith_index_u32(33373u, 22u)], global2[_wgslsmith_index_u32(var_1, 22u)], true, true))))), vec4<f32>(_wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-821f * -369f))), global3.x, global3.x, global3.x)));
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(-955f)), global1[_wgslsmith_index_u32(11939u >> (select(var_1, u_input.b, true) % 32u), 25u)], _wgslsmith_f_op_f32(f32(-1f) * -858f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b, 31u)] - global0[_wgslsmith_index_u32(u_input.b, 31u)]))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(676f, 481f, global0[_wgslsmith_index_u32(1u, 31u)], 947f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-116f, global3.x, -955f, 350f) - vec4<f32>(1065f, arg_0, global3.x, -1000f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(643f, arg_0, 1440f, global0[_wgslsmith_index_u32(53049u, 31u)]), vec4<f32>(-180f, 1307f, global1[_wgslsmith_index_u32(4294967295u, 25u)], 365f)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1503f + _wgslsmith_f_op_f32(-global3.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(true)), -786f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.x), global1[_wgslsmith_index_u32(1u, 25u)]), global3.x)), true));
}

fn func_1() -> StorageBuffer {
    global3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(~8359u, 25u)], -1051f) * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 31u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~u_input.a.x, 31u)])), -1421f, global3.x) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 31u)], 531f, global0[_wgslsmith_index_u32(70210u, 31u)], global1[_wgslsmith_index_u32(5616u, 25u)]) * vec4<f32>(global3.x, -1089f, 1115f, -1000f)) - _wgslsmith_f_op_vec4_f32(func_2(1174f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-458f, global0[_wgslsmith_index_u32(4294967295u, 31u)], global0[_wgslsmith_index_u32(1u, 31u)], global1[_wgslsmith_index_u32(u_input.a.x, 25u)]) * vec4<f32>(1000f, -973f, 903f, 345f)) + vec4<f32>(381f, -239f, 644f, global1[_wgslsmith_index_u32(14118u, 25u)])))))));
    var var_0 = vec3<f32>(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 1u, 1u), vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)) & u_input.b), abs(_wgslsmith_add_u32(2046u, 98932u))), 25u)], -1625f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -296f) * -920f));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(4294967295u, 31u)], global0[_wgslsmith_index_u32(min(~(u_input.a.x << (u_input.b % 32u)), u_input.b), 31u)])), _wgslsmith_f_op_f32(step(-828f, _wgslsmith_f_op_f32(393f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))), _wgslsmith_f_op_f32(-global3.x));
    var var_1 = true;
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global3.x), 503f)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~1u, 25u)] * global3.x), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~4294967295u, 31u)] * var_0.x), var_0.x)));
    return StorageBuffer(_wgslsmith_sub_u32(_wgslsmith_mod_u32(min(1u, u_input.b), 505u ^ u_input.c.x) & _wgslsmith_dot_vec4_u32(~vec4<u32>(45399u, 0u, 0u, u_input.c.x), firstTrailingBit(vec4<u32>(1u, 1u, 46625u, u_input.b))), 0u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(4294967295u, 22u)];
    global2 = array<bool, 22>();
    let x = u_input.a;
    s_output = func_1();
}

