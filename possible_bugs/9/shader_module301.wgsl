struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: u32,
    d: bool,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 2>;

var<private> global1: array<vec3<u32>, 11> = array<vec3<u32>, 11>(vec3<u32>(55357u, 20162u, 1u), vec3<u32>(39482u, 0u, 1u), vec3<u32>(4294967295u, 51340u, 0u), vec3<u32>(50135u, 59175u, 4294967295u), vec3<u32>(35519u, 49909u, 4294967295u), vec3<u32>(1u, 4294967295u, 41292u), vec3<u32>(8235u, 0u, 0u), vec3<u32>(56915u, 4294967295u, 59795u), vec3<u32>(4294967295u, 14309u, 28044u), vec3<u32>(21535u, 1u, 0u), vec3<u32>(4294967295u, 4294967295u, 5774u));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec4<bool>) -> vec2<bool> {
    let var_0 = Struct_4(Struct_2(arg_0.e.zzy, Struct_1(all(!vec4<bool>(arg_0.d, false, true, arg_2.x)), vec2<f32>(498f, 583f), 68221u, true, select(select(vec4<bool>(arg_2.x, true, false, arg_0.d), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, false), arg_0.e), select(arg_2, vec4<bool>(arg_0.d, arg_0.d, false, arg_2.x), vec4<bool>(true, true, true, arg_0.d)), true))));
    var var_1 = _wgslsmith_clamp_vec4_i32(u_input.b, _wgslsmith_div_vec4_i32(u_input.b, firstTrailingBit(vec4<i32>(1i, -75244i, 2147483647i << (var_0.a.b.c % 32u), _wgslsmith_clamp_i32(74863i, u_input.b.x, -45302i)))), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.x, _wgslsmith_mod_i32(1i, ~u_input.b.x), select(arg_1.x, arg_1.x, var_0.a.b.b.x <= -1516f), 14405i), vec4<i32>(-1i) * -(vec4<i32>(arg_1.x, -2147483647i, u_input.b.x, u_input.a.x) | vec4<i32>(arg_1.x, arg_1.x, arg_1.x, u_input.a.x))));
    return var_0.a.b.e.xw;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: i32) -> Struct_1 {
    var var_0 = Struct_1(arg_0.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(609f, -242f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1212f, 1715f)), func_3(Struct_1(arg_0.x, vec2<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 2u)], -560f), u_input.c.x, false, vec4<bool>(true, true, arg_0.x, arg_1.x)), vec3<i32>(arg_2, arg_2, -2147483647i), vec4<bool>(arg_1.x, false, arg_0.x, false)))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1535f, global0[_wgslsmith_index_u32(u_input.c.x, 2u)]) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 2u)], -831f) + vec2<f32>(1000f, -1000f)), vec2<f32>(-463f, global0[_wgslsmith_index_u32(u_input.c.x, 2u)]))))), u_input.c.x & ~(~u_input.c.x), true, vec4<bool>(true, firstTrailingBit(arg_2) == (arg_2 ^ _wgslsmith_dot_vec2_i32(u_input.a, u_input.b.wz)), arg_0.x, 17694u < u_input.c.x));
    global1 = array<vec3<u32>, 11>();
    let var_1 = Struct_4(Struct_2(vec3<bool>(arg_1.x | true, any(var_0.e) | true, all(var_0.e)), Struct_1(!any(vec4<bool>(false, false, arg_0.x, true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, var_0.b.x)), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), u_input.c.zy), 0u), all(var_0.e), !select(vec4<bool>(false, true, arg_1.x, arg_1.x), vec4<bool>(var_0.d, true, arg_1.x, arg_1.x), arg_1.x))));
    global0 = array<f32, 2>();
    let var_2 = var_1.a.b;
    return Struct_1(!func_3(Struct_1(true, _wgslsmith_f_op_vec2_f32(var_0.b - vec2<f32>(var_2.b.x, -1393f)), 8363u << (0u % 32u), !arg_1.x, var_2.e), ~min(u_input.b.wzx, vec3<i32>(-1i, arg_2, -2147483647i)), vec4<bool>(any(arg_0), !arg_0.x, arg_1.x, true)).x, vec2<f32>(_wgslsmith_f_op_f32(sign(2060f)), -202f), 30431u, var_2.d, !select(vec4<bool>(var_2.a, func_3(var_1.a.b, u_input.b.wzx, vec4<bool>(arg_1.x, true, var_0.e.x, false)).x, false, var_0.e.x), vec4<bool>(true, u_input.a.x >= arg_2, var_1.a.b.a, true), all(arg_1.yz)));
}

fn func_1(arg_0: f32, arg_1: vec2<i32>, arg_2: i32) -> bool {
    let var_0 = Struct_2(vec3<bool>(false, !all(vec4<bool>(false, true, false, false)), all(vec3<bool>(true, all(vec2<bool>(true, true)), 1275f <= global0[_wgslsmith_index_u32(22951u, 2u)]))), func_2(vec3<bool>(any(vec3<bool>(true, true, true)), true, true), select(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), any(vec3<bool>(true, true, true))), (arg_1.x | _wgslsmith_dot_vec3_i32(u_input.b.zyz, u_input.b.yyw)) >> (4294967295u % 32u)));
    global0 = array<f32, 2>();
    let var_1 = ~(~(~(~vec2<u32>(var_0.b.c, var_0.b.c) & (u_input.c.zz & u_input.c.yw))));
    global1 = array<vec3<u32>, 11>();
    var var_2 = Struct_4(Struct_2(var_0.a, Struct_1(!(788f >= global0[_wgslsmith_index_u32(u_input.c.x, 2u)]), var_0.b.b, ~1u | reverseBits(var_1.x), select(false, true, true), select(!vec4<bool>(var_0.a.x, var_0.a.x, var_0.b.a, false), vec4<bool>(var_0.b.d, true, var_0.b.d, var_0.a.x), !var_0.b.e))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_1(false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(u_input.c.x, 2u)]))), firstLeadingBit(~max(43159u, 3327u)), !(u_input.a.x >= 2147483647i), vec4<bool>(!all(vec2<bool>(false, true)), true, func_1(_wgslsmith_f_op_f32(-2649f + 134f), select(u_input.b.yx, vec2<i32>(u_input.a.x, u_input.a.x), vec2<bool>(false, true)), _wgslsmith_div_i32(1i, u_input.b.x)), all(vec2<bool>(false, true)))), Struct_2(!vec3<bool>(select(true, false, false), false, u_input.a.x < -2147483647i), Struct_1(false, vec2<f32>(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.c.x, 2u)], -1064f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 2u)])), 37227u, true, vec4<bool>(true, true, true, true))));
    global1 = array<vec3<u32>, 11>();
    global0 = array<f32, 2>();
    global1 = array<vec3<u32>, 11>();
    global1 = array<vec3<u32>, 11>();
    var var_1 = var_0.a.e.x;
    var var_2 = Struct_4(var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.b.x & u_input.b.x), -2147483647i, vec3<u32>(4294967295u, 0u, ~_wgslsmith_add_u32(~1u, u_input.c.x)), ~(~u_input.b.yzz), var_2.a.b.c);
}

