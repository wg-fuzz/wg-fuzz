struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: bool,
    d: vec3<i32>,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 6>;

var<private> global1: array<vec4<u32>, 11>;

var<private> global2: array<vec4<bool>, 27> = array<vec4<bool>, 27>(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true));

var<private> global3: array<bool, 1> = array<bool, 1>(true);

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1f)))));
    var var_1 = abs(4294967295u);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(var_0 + -875f), 552f, _wgslsmith_f_op_f32(var_0 - var_0)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0, var_0, 491f), vec3<f32>(-973f, var_0, var_0)))), vec3<bool>(global3[_wgslsmith_index_u32(0u ^ arg_0.x, 1u)], any(global2[_wgslsmith_index_u32(7658u, 27u)]), true)))) + vec3<f32>(_wgslsmith_f_op_f32(ceil(var_0)), 2157f, -1821f));
    global3 = array<bool, 1>();
    var var_3 = arg_0.x | ~(~arg_0.x);
    return Struct_1(27759i, vec3<u32>(arg_0.x, arg_0.x, 19651u), false, u_input.b.xzx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-675f, _wgslsmith_f_op_f32(step(-605f, var_0))))));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(abs(~abs(1u)), 6u)] * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(28558u, 8561u), 6u)]) * global0[_wgslsmith_index_u32(72353u, 6u)]), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1236f, -502f)) - global0[_wgslsmith_index_u32(~1u, 6u)])));
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(countOneBits(global1[_wgslsmith_index_u32(~82104u, 11u)]), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~1u, 4294967295u), 11u)]), vec4<u32>(2052u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(29734u, 4294967295u, 19192u), vec3<u32>(48953u, 9060u, 4294967295u)), 31409u, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(5660u, 105822u, 1u, 69059u), ~global1[_wgslsmith_index_u32(4294967295u, 11u)]), 0u))), 27u)];
    global2 = array<vec4<bool>, 27>();
    var var_2 = Struct_1(-54216i, vec3<u32>(19318u, 1u, ~(~1u)), true, _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, ~u_input.a.x & 29945i), vec3<i32>(u_input.a.x, countOneBits(-23824i), 1i << (_wgslsmith_dot_vec2_u32(vec2<u32>(46659u, 0u), vec2<u32>(2412u, 0u)) % 32u))), _wgslsmith_f_op_f32(ceil(-350f)));
    var var_3 = ~vec3<i32>(~u_input.b.x ^ ~(var_2.a & u_input.a.x), _wgslsmith_dot_vec2_i32(u_input.a.xx, vec2<i32>(u_input.a.x, select(-13057i, 1i, var_2.c))), min(~var_2.a, ~_wgslsmith_add_i32(35531i, u_input.b.x)));
    return func_2(vec2<u32>(var_2.b.x, var_2.b.x));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>) -> bool {
    var var_0 = arg_0;
    var_0 = arg_0;
    var_0 = Struct_2(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_1().e) - _wgslsmith_f_op_f32(var_0.b + arg_0.b)));
    let var_1 = var_0.b;
    var var_2 = u_input.a.wy;
    return any(select(select(!vec3<bool>(arg_0.a, global3[_wgslsmith_index_u32(4294967295u, 1u)], false), !vec3<bool>(false, global3[_wgslsmith_index_u32(37608u, 1u)], false), vec3<bool>(global3[_wgslsmith_index_u32(64315u, 1u)], true, false)), arg_1.yxy, false)) & true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global2 = array<vec4<bool>, 27>();
    global1 = array<vec4<u32>, 11>();
    let var_1 = true;
    global0 = array<vec2<f32>, 6>();
    let var_2 = true;
    global1 = array<vec4<u32>, 11>();
    var var_3 = Struct_3(select(vec2<bool>(!any(vec4<bool>(var_0.c, var_0.c, true, var_1)), true), select(vec2<bool>(func_3(Struct_2(var_2, -1000f), global2[_wgslsmith_index_u32(var_0.b.x, 27u)]), !var_2), vec2<bool>(0u == var_0.b.x, true), !var_2), !(var_0.c || false)), Struct_1(-func_2(~var_0.b.xy).d.x, ~vec3<u32>(51354u, 30936u, 34551u), (23911u <= _wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(4294967295u, 11u)], vec4<u32>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x))) & true, vec3<i32>(-42082i, var_0.a, abs(-4832i)), _wgslsmith_f_op_f32(sign(var_0.e))), func_1());
    global2 = array<vec4<bool>, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_dot_vec2_i32(-(~vec2<i32>(u_input.a.x, var_3.c.a)), abs(_wgslsmith_add_vec2_i32(vec2<i32>(var_3.c.a, -30857i), vec2<i32>(10024i, 1i)))), _wgslsmith_clamp_i32(var_3.b.a, ~countOneBits(u_input.b.x), 0i)), _wgslsmith_div_u32(_wgslsmith_add_u32(var_3.b.b.x, 30326u), select(_wgslsmith_mod_u32(~30198u, 0u << (var_3.b.b.x % 32u)), (17451u & var_3.c.b.x) & 0u, var_0.c)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_3.b.e, _wgslsmith_f_op_f32(-var_3.c.e), _wgslsmith_f_op_f32(676f * var_3.c.e)))))));
}

