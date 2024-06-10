struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<f32>,
    d: vec3<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 1>;

var<private> global1: array<u32, 4>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec3<f32> {
    let var_0 = select(select(select(select(select(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 1u)], false, global0[_wgslsmith_index_u32(41192u, 1u)]), vec3<bool>(true, false, false), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 4u)], 4u)], 4u)], 1u)]), vec3<bool>(true, true, true), 7596u < u_input.c), select(!vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 1u)], true, global0[_wgslsmith_index_u32(u_input.b.x, 1u)]), !vec3<bool>(global0[_wgslsmith_index_u32(35988u, 1u)], true, true), select(vec3<bool>(true, false, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 4u)], 1u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 1u)], true, false), global0[_wgslsmith_index_u32(1u, 1u)])), vec3<bool>(true, true, true)), !(!(!vec3<bool>(global0[_wgslsmith_index_u32(51934u, 1u)], false, global0[_wgslsmith_index_u32(u_input.b.x, 1u)]))), vec3<bool>(true, all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 1u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 4u)], 1u)])), true)), !vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 1u)], true, !global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(31720u, 4u)], 4u)] >> (u_input.b.x % 32u), 1u)]), !global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 4u)], 1u)]);
    var var_1 = var_0.zy;
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-869f, _wgslsmith_f_op_f32(select(190f, 279f, any(vec4<bool>(true, false, var_0.x, false)))), -2066f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(1105f, 996f, 1137f), vec3<f32>(1030f, 2011f, 2274f)), vec3<f32>(631f, 1199f, 285f)))), vec3<bool>(var_1.x, false, ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 4u)], 4u)] > _wgslsmith_div_u32(global1[_wgslsmith_index_u32(4294967295u, 4u)], 55358u)))));
    let var_3 = 30187u;
    let var_4 = var_2;
    return vec3<f32>(342f, var_2.a.x, _wgslsmith_f_op_f32(var_2.a.x * var_4.a.x));
}

fn func_2() -> Struct_1 {
    global1 = array<u32, 4>();
    return Struct_1(_wgslsmith_f_op_vec3_f32(func_3()));
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = arg_1;
    var var_1 = func_2();
    let var_2 = Struct_1(var_1.a);
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(reverseBits(_wgslsmith_mod_u32(firstTrailingBit(4294967295u), select(1u, u_input.c, true))), firstTrailingBit(u_input.b.x)) & ~firstTrailingBit(~(24896u & global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(2560u, 4u)], 4u)], 4u)], 4u)], 4u)])), 1u)];
    let var_4 = _wgslsmith_sub_vec4_u32(vec4<u32>(~1u, global1[_wgslsmith_index_u32(~(4294967295u << ((global1[_wgslsmith_index_u32(7438u, 4u)] ^ u_input.b.x) % 32u)), 4u)], ~(~global1[_wgslsmith_index_u32(_wgslsmith_div_u32(48988u, 4294967295u), 4u)]), abs(74372u)), vec4<u32>(global1[_wgslsmith_index_u32(20278u, 4u)], 1u, global1[_wgslsmith_index_u32(~1u, 4u)], _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(abs(global1[_wgslsmith_index_u32(38916u, 4u)]) << (_wgslsmith_div_u32(u_input.c, 12867u) % 32u), 4u)], u_input.d)));
    return func_2();
}

fn func_1(arg_0: i32, arg_1: i32) -> u32 {
    let var_0 = func_4(_wgslsmith_sub_i32(0i, -(~arg_0)), func_2());
    var var_1 = vec4<i32>(arg_0, u_input.e.x, 2147483647i, 0i);
    let var_2 = vec2<bool>(false, arg_0 != abs((i32(-1i) * -57997i) ^ (arg_1 ^ 21525i)));
    global1 = array<u32, 4>();
    var var_3 = _wgslsmith_add_i32(firstTrailingBit(var_1.x), -2147483647i) <= u_input.e.x;
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    var_0 = firstLeadingBit(22867u);
    global0 = array<bool, 1>();
    global1 = array<u32, 4>();
    var_0 = abs(80677u);
    global1 = array<u32, 4>();
    let var_1 = ~max(vec2<i32>(reverseBits(max(14360i, u_input.e.x)), -2147483647i), select(max(_wgslsmith_mult_vec2_i32(u_input.e, u_input.e), u_input.e), u_input.e, vec2<bool>(global0[_wgslsmith_index_u32(u_input.d & 4294967295u, 1u)], false || global0[_wgslsmith_index_u32(0u, 1u)])));
    let var_2 = _wgslsmith_sub_u32(func_1(~(u_input.e.x >> (u_input.a % 32u)), u_input.e.x), 0u);
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(firstLeadingBit(global1[_wgslsmith_index_u32(57168u, 4u)] ^ var_2) >> (~44947u % 32u), abs(_wgslsmith_div_u32(~51738u, ~86739u)), 1u, ~var_2), vec4<u32>(55061u, ~var_2, _wgslsmith_dot_vec2_u32(~max(u_input.b.wz, u_input.b.wx), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.d, 0u), firstLeadingBit(u_input.b.yx))), _wgslsmith_div_u32(var_2, ~global1[_wgslsmith_index_u32(0u, 4u)]) >> (1u % 32u))), 1u)];
    let x = u_input.a;
    s_output = StorageBuffer(max(~(~u_input.b) | _wgslsmith_mult_vec4_u32(abs(u_input.b), vec4<u32>(var_2, var_2, var_2, 0u)), ~vec4<u32>(global1[_wgslsmith_index_u32(u_input.a, 4u)] >> (19994u % 32u), firstLeadingBit(global1[_wgslsmith_index_u32(1u, 4u)]), _wgslsmith_mult_u32(39640u, u_input.c), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_2, 4u)], 4u)] ^ global1[_wgslsmith_index_u32(4294967295u, 4u)])), ~(-var_1.x), vec4<f32>(-597f, -342f, -1129f, 1247f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-688f * -289f), 1020f, _wgslsmith_f_op_f32(-1000f * -1117f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1858f, 568f))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1423f, -588f, 387f, 523f)))))));
}

