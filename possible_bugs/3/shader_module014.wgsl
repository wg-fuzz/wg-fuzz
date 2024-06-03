struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_1, 21>;

var<private> global2: array<Struct_1, 9>;

var<private> global3: array<vec3<bool>, 1>;

var<private> global4: u32;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> vec3<i32> {
    var var_0 = vec2<bool>(true, all(vec4<bool>(true, true, true, true)));
    var var_1 = _wgslsmith_add_vec3_u32(~vec3<u32>(1u, 1u, 1u), ~_wgslsmith_mult_vec3_u32(vec3<u32>(7827u >> (0u % 32u), 4294967295u, ~71969u), vec3<u32>(4294967295u, 77408u, 1u) ^ firstTrailingBit(vec3<u32>(0u, 1u, 39436u))));
    var var_2 = -u_input.a;
    let var_3 = Struct_1(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(39907u, 47724u, var_1.x, var_1.x), vec4<u32>(0u, var_1.x, 1u, 14528u))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1063f, _wgslsmith_f_op_f32(max(-596f, -246f))))))), _wgslsmith_div_f32(-518f, _wgslsmith_f_op_f32(625f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 472f))), 1i);
    global3 = array<vec3<bool>, 1>();
    return u_input.b.yzy;
}

fn func_2(arg_0: vec2<f32>) -> f32 {
    global2 = array<Struct_1, 9>();
    var var_0 = ~firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, -1i), ~func_3()));
    var var_1 = _wgslsmith_div_i32(-(i32(-1i) * -1i), ~(-var_0.x));
    var var_2 = global1[_wgslsmith_index_u32(4294967295u, 21u)];
    global1 = array<Struct_1, 21>();
    return _wgslsmith_f_op_f32(f32(-1f) * -780f);
}

fn func_1(arg_0: i32, arg_1: vec4<i32>) -> Struct_1 {
    global3 = array<vec3<bool>, 1>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(333f, 345f), vec2<f32>(481f, -299f))))) + -1852f)));
    global2 = array<Struct_1, 9>();
    let var_1 = 11155i;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0))), 733f, -1484f, 491f);
    return global1[_wgslsmith_index_u32(67189u, 21u)];
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1) -> Struct_1 {
    global4 = firstLeadingBit(firstTrailingBit(abs(arg_1.a.x)));
    var var_0 = ~u_input.b | -_wgslsmith_sub_vec4_i32(max(vec4<i32>(-2147483647i, -1i, u_input.b.x, -55538i), vec4<i32>(2147483647i, -3130i, arg_1.d, u_input.b.x)), ~abs(vec4<i32>(u_input.a, arg_0.x, 47155i, 2419i)));
    let var_1 = Struct_1(firstTrailingBit(arg_1.a ^ vec4<u32>(_wgslsmith_add_u32(0u, arg_1.a.x), 1u, _wgslsmith_div_u32(arg_1.a.x, 1u), 4294967295u)), 1243f, 606f, -25429i);
    var var_2 = select(!select(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.a.x, 4707u, 4294967295u, 53258u), abs(vec4<u32>(arg_1.a.x, arg_1.a.x, 4294967295u, var_1.a.x))), 1u)], vec3<bool>(true, true, true)), !global3[_wgslsmith_index_u32(arg_1.a.x, 1u)], select(global3[_wgslsmith_index_u32(arg_1.a.x, 1u)], global3[_wgslsmith_index_u32(var_1.a.x, 1u)], vec3<bool>(true, any(select(global3[_wgslsmith_index_u32(arg_1.a.x, 1u)], vec3<bool>(false, false, false), false)), true)));
    var var_3 = 843f;
    return Struct_1(firstLeadingBit(vec4<u32>(firstTrailingBit(var_1.a.x), firstLeadingBit(~var_1.a.x), ~var_1.a.x, ~13697u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1149f)))), -846f, -(~var_1.d));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -2111f);
    var var_0 = Struct_1(_wgslsmith_mult_vec4_u32(~vec4<u32>(~0u, 1u, 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 14386u), vec2<u32>(26203u, 944u))), vec4<u32>(~_wgslsmith_mult_u32(56806u, 31466u), _wgslsmith_mult_u32(2251u, _wgslsmith_div_u32(22292u, 1u)), 1u, firstLeadingBit(26712u))), _wgslsmith_f_op_f32(round(-212f)), _wgslsmith_f_op_f32(1f * 1002f), reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(17118i, 0i, u_input.b.x, u_input.a), u_input.b), ~u_input.b.x), (u_input.b.yy | u_input.b.yz) >> (~vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u)))));
    var var_1 = ~u_input.b.zy;
    let var_2 = ~_wgslsmith_add_vec4_i32(u_input.b, ~firstTrailingBit(u_input.b));
    var var_3 = func_4(vec2<i32>(-8186i, var_1.x), func_1(var_2.x, vec4<i32>(i32(-1i) * -38914i, var_1.x, _wgslsmith_clamp_i32(2147483647i, var_1.x | var_1.x, _wgslsmith_clamp_i32(-2147483647i, -1i, var_1.x)), -(~u_input.a))));
    let var_4 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2339f, var_0.c, var_3.c), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1144f, -522f, var_3.c) * vec3<f32>(var_0.c, var_0.c, var_3.b)), vec3<bool>(false, false, false))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.b, 2070f, 1000f) - vec3<f32>(-1244f, 230f, -1779f)), vec3<f32>(-1607f, var_0.c, -1292f))))), 889f);
}

