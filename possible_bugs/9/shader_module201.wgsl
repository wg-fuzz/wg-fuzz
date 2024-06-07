struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec4<u32>(117046u, 43835u, 67084u, 4294967295u), vec2<i32>(2147483647i, 1i), -623f), Struct_1(vec4<u32>(6229u, 30981u, 77763u, 0u), vec2<i32>(2147483647i, 24934i), 1351f), Struct_1(vec4<u32>(45892u, 4294967295u, 40728u, 14740u), vec2<i32>(16666i, 2147483647i), 290f));

var<private> global1: Struct_1 = Struct_1(vec4<u32>(46919u, 1u, 0u, 4294967295u), vec2<i32>(2147483647i, 0i), 548f);

var<private> global2: u32 = 4294967295u;

var<private> global3: array<vec3<u32>, 5>;

var<private> global4: vec4<i32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> bool {
    return !(!any(vec3<bool>(true, true, true))) | true;
}

fn func_3(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    var var_0 = select(~(~min(vec4<i32>(1i, 1i, 22522i, global1.b.x), vec4<i32>(global4.x, arg_3.b.x, -2147483647i, global4.x))) | firstTrailingBit(_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(16379i, arg_3.b.x, -1i, global1.b.x), vec4<i32>(3187i, 11357i, arg_3.b.x, -1i), vec4<i32>(17456i, 1i, arg_2.b.x, 10701i)), -vec4<i32>(u_input.a, global4.x, u_input.a, -49824i), vec4<i32>(-2147483647i, global1.b.x, 28182i, 11507i) << (arg_2.a % vec4<u32>(32u)))), ~(~min(vec4<i32>(-2147483647i, 1i, arg_3.b.x, global4.x), select(vec4<i32>(arg_2.b.x, 0i, 1i, arg_2.b.x), vec4<i32>(-55922i, global1.b.x, -58206i, 1i), vec4<bool>(false, arg_0.x, true, arg_0.x)))), func_2());
    let var_1 = _wgslsmith_clamp_vec2_u32(select(vec2<u32>(arg_1, global1.a.x), arg_3.a.zy, select(!vec2<bool>(arg_0.x, true), !arg_0, arg_0)) ^ (global1.a.wx | vec2<u32>(91041u, firstTrailingBit(arg_1))), arg_3.a.xw, vec2<u32>(4294967295u | global1.a.x, ~global1.a.x));
    var var_2 = global0[_wgslsmith_index_u32(arg_1, 3u)];
    let var_3 = vec2<i32>(-global4.x, firstLeadingBit(-arg_2.b.x));
    global1 = Struct_1(arg_3.a ^ _wgslsmith_mult_vec4_u32(~arg_2.a, arg_2.a), vec2<i32>(arg_3.b.x & var_0.x, u_input.a), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-178f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1383f), -265f, true)))))));
    return abs(_wgslsmith_mod_u32(~34191u, 58976u)) <= select(min(~_wgslsmith_sub_u32(4294967295u, 38488u), u_input.b), _wgslsmith_div_u32((arg_3.a.x & 16967u) | ~arg_2.a.x, 1u), arg_0.x);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = select(arg_2.x, false && arg_2.x, !(_wgslsmith_f_op_f32(arg_1.c - _wgslsmith_f_op_f32(-366f * -103f)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.c)))));
    var_0 = ~u_input.b <= ((~_wgslsmith_mod_u32(45408u, u_input.b) ^ 4294967295u) & 1u);
    let var_1 = Struct_1(~vec4<u32>(u_input.b, ~1u, 0u, ~reverseBits(global1.a.x)), arg_0.zy, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-194f * arg_1.c)), global1.c) + -1194f));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(183f - arg_1.c), _wgslsmith_f_op_f32(-var_1.c)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.c, -928f) + _wgslsmith_f_op_f32(round(886f)))), arg_1.c)), global1.c, arg_1.c, var_1.c);
    let var_3 = vec3<bool>(arg_2.x, any(arg_2) && true, arg_2.x);
    return global0[_wgslsmith_index_u32(firstLeadingBit(~(~global1.a.x)), 3u)];
}

fn func_1(arg_0: i32, arg_1: vec4<u32>) -> vec2<bool> {
    var var_0 = 1i;
    global2 = abs(_wgslsmith_dot_vec2_u32(arg_1.xx, ~vec2<u32>(39488u, arg_1.x)));
    var var_1 = func_4(_wgslsmith_add_vec3_i32(min(vec3<i32>(u_input.a << (10558u % 32u), max(u_input.a, arg_0), ~global1.b.x), global4.zyw), -vec3<i32>(7050i, -27282i, global4.x)), Struct_1(min(arg_1, _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 0u, 41366u, 29904u), vec4<u32>(global1.a.x, arg_1.x, 17786u, 4294967295u))), ~vec2<i32>(arg_0, 47347i) >> (firstLeadingBit(max(vec2<u32>(1u, u_input.b), global1.a.yz)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(-1120f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c)))), select(!vec4<bool>(true, func_2(), true, true), vec4<bool>(true, true, true, true), vec4<bool>(func_3(vec2<bool>(true, true), _wgslsmith_sub_u32(108951u, global1.a.x), global0[_wgslsmith_index_u32(u_input.b, 3u)], global0[_wgslsmith_index_u32(~43260u, 3u)]), false, true, _wgslsmith_f_op_f32(-global1.c) < global1.c)));
    var_1 = global0[_wgslsmith_index_u32(61633u, 3u)];
    return vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c + global1.c)) * 598f) < _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-505f + global1.c)))), false);
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>) -> vec3<i32> {
    let var_0 = Struct_1(_wgslsmith_add_vec4_u32(~_wgslsmith_clamp_vec4_u32(min(arg_0.a, arg_0.a), _wgslsmith_sub_vec4_u32(global1.a, vec4<u32>(u_input.b, 4294967295u, 1u, 1u)), vec4<u32>(67007u, 0u, 48002u, 25394u)), select(~arg_0.a | vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u), ~vec4<u32>(arg_0.a.x, u_input.b, arg_0.a.x, 22382u), all(!vec4<bool>(arg_1.x, true, arg_1.x, false)))), select(max(global4.zy, ~vec2<i32>(0i, u_input.a)), -arg_0.b, func_2()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    let var_1 = vec4<u32>(_wgslsmith_mult_u32(~arg_0.a.x, select(~u_input.b, u_input.b, !arg_1.x)), 2546u, 1u, _wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(global1.a.x, 10627u, arg_0.a.x, var_0.a.x), vec4<u32>(global1.a.x, 1u, 126674u, global1.a.x)), vec4<u32>(_wgslsmith_mod_u32(9103u, 39612u), 4294967295u, _wgslsmith_add_u32(1u, var_0.a.x), ~1u))) | ~(var_0.a << (~min(vec4<u32>(0u, 1181u, var_0.a.x, u_input.b), var_0.a) % vec4<u32>(32u)));
    var var_2 = firstLeadingBit(vec4<i32>(-1i, i32(-1i) * -11497i, -4892i, _wgslsmith_mod_i32(-19372i, ~(~(-10305i)))));
    global4 = ~vec4<i32>(func_4(global4.xzz, func_4(var_2.xww, Struct_1(var_1, vec2<i32>(u_input.a, global4.x), -764f), vec4<bool>(arg_1.x, arg_1.x, false, true)), select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, false, arg_1.x, true), true)).b.x ^ _wgslsmith_div_i32(select(-19200i, global1.b.x, arg_1.x), ~(-1i)), var_0.b.x, 38734i, 46047i);
    var var_3 = var_0;
    return vec3<i32>(arg_0.b.x, ~var_0.b.x, 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, func_5(global0[_wgslsmith_index_u32(~78950u, 3u)], select(func_1(u_input.a, select(global1.a, global1.a, vec4<bool>(false, false, true, true))), vec2<bool>(true, true), select(func_1(global1.b.x, vec4<u32>(global1.a.x, 38693u, u_input.b, u_input.b)), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), true))), _wgslsmith_dot_vec2_i32(global4.xy, select(select(vec2<i32>(-3022i, u_input.a) >> (global1.a.yw % vec2<u32>(32u)), select(global1.b, global1.b, vec2<bool>(true, false)), true), ~_wgslsmith_div_vec2_i32(global1.b, vec2<i32>(global4.x, global1.b.x)), true)), ~vec4<i32>(firstTrailingBit(0i), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(15399i, u_input.a, global4.x), global4.ywx), u_input.a), func_4(global4.zwy, func_4(vec3<i32>(global1.b.x, 26081i, -45420i), global0[_wgslsmith_index_u32(global1.a.x, 3u)], vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true)).b.x, u_input.a), vec2<i32>(u_input.a, ~u_input.a));
}

