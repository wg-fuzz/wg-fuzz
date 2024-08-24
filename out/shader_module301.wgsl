struct Struct_1 {
    a: bool,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

var<private> global1: array<f32, 4> = array<f32, 4>(-393f, 242f, -1754f, 264f);

var<private> global2: Struct_1;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> bool {
    global2 = Struct_1(global2.a, vec2<bool>(any(select(select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(global0.x, true, true), global2.a), !vec3<bool>(global2.a, global0.x, global2.b.x), vec3<bool>(global2.b.x, global2.a, false))), any(!(!vec3<bool>(global2.a, global0.x, global2.a)))));
    var var_0 = u_input.b ^ _wgslsmith_add_i32(~u_input.c.x, 41759i);
    global1 = array<f32, 4>();
    var var_1 = ~u_input.a.x;
    var var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(6157u, 4u)], 577f, global1[_wgslsmith_index_u32(u_input.e, 4u)]), vec3<f32>(165f, 366f, global1[_wgslsmith_index_u32(u_input.a.x, 4u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(u_input.e, 4u)], global1[_wgslsmith_index_u32(u_input.a.x, 4u)], -1000f) + vec3<f32>(-993f, global1[_wgslsmith_index_u32(0u, 4u)], -816f)))))))));
    return ~(~1u) != reverseBits(_wgslsmith_mult_u32(0u | _wgslsmith_dot_vec4_u32(u_input.a, u_input.a), abs(39005u)));
}

fn func_2(arg_0: vec2<u32>) -> vec4<f32> {
    global2 = Struct_1(true, global2.b);
    var var_0 = !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(func_3(abs(u_input.d.x)), true, any(!vec2<bool>(global2.b.x, true)), func_3(-2147483647i)));
    let var_1 = u_input.a.zyy;
    var_0 = select(!vec4<bool>(!global0.x, func_3(u_input.c.x), true, any(vec3<bool>(true, global2.a, true))), !select(select(select(vec4<bool>(true, true, true, false), vec4<bool>(var_0.x, false, false, true), vec4<bool>(false, false, global2.b.x, false)), vec4<bool>(false, false, var_0.x, false), !vec4<bool>(var_0.x, global0.x, true, true)), select(vec4<bool>(var_0.x, true, false, var_0.x), select(vec4<bool>(global0.x, true, var_0.x, var_0.x), vec4<bool>(false, global2.b.x, var_0.x, global0.x), global0.x), false), select(!vec4<bool>(true, false, true, global0.x), vec4<bool>(true, true, true, true), var_0.x)), any(select(global2.b, !vec2<bool>(false, global0.x), true)));
    global1 = array<f32, 4>();
    return vec4<f32>(global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~8357u, u_input.a.x), 4u)], 1644f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 4u)] + -865f), _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(~4294967295u, 4u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -142f) - _wgslsmith_f_op_f32(select(1000f, 1000f, true)))), _wgslsmith_sub_i32(u_input.b << (u_input.e % 32u), u_input.b) >= (u_input.d.x << (u_input.e % 32u)))));
}

fn func_4(arg_0: vec4<f32>) -> Struct_2 {
    let var_0 = u_input.e;
    global0 = vec2<bool>(true, !select(false, u_input.c.x <= countOneBits(u_input.d.x), true));
    let var_1 = ~u_input.c.x;
    let var_2 = Struct_1(true, select(!vec2<bool>(u_input.d.x == var_1, !global2.a), !global2.b, !select(!global2.b, vec2<bool>(global0.x, global0.x), true)));
    var var_3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0) - vec4<f32>(_wgslsmith_f_op_f32(sign(arg_0.x)), -1171f, -105f, -1391f)), _wgslsmith_f_op_vec4_f32(-arg_0)));
    return Struct_2(vec3<u32>(select(~_wgslsmith_div_u32(54103u, var_0), countOneBits(abs(var_0)), false), var_0, _wgslsmith_add_u32(~1u >> (~var_0 % 32u), 1u)), arg_0, var_2, var_2);
}

fn func_1(arg_0: i32) -> bool {
    global0 = vec2<bool>(60796u == ~u_input.e, global0.x);
    let var_0 = ~_wgslsmith_mod_vec4_u32(u_input.a, abs(firstTrailingBit(u_input.a))) >> (_wgslsmith_add_vec4_u32(vec4<u32>(~18216u, _wgslsmith_div_u32(63373u, u_input.e), ~1u, abs(~1000u)), u_input.a) % vec4<u32>(32u));
    let var_1 = func_4(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(func_2(u_input.a.wy)), vec4<f32>(global1[_wgslsmith_index_u32(1u, 4u)], _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(4294967295u, 4u)])))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 4u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(0u, 4u)], global1[_wgslsmith_index_u32(9453u, 4u)], false)))))));
    global0 = func_4(var_1.b).d.b;
    let var_2 = var_1;
    return global2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(u_input.b);
    global2 = Struct_1(all(vec4<bool>(true, false, true, all(vec3<bool>(true, global0.x, true)))), select(func_4(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1[_wgslsmith_index_u32(u_input.e, 4u)], global1[_wgslsmith_index_u32(u_input.a.x, 4u)], 668f, 625f), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 4u)], 1178f, global1[_wgslsmith_index_u32(u_input.a.x, 4u)], global1[_wgslsmith_index_u32(0u, 4u)]) + vec4<f32>(global1[_wgslsmith_index_u32(43568u, 4u)], global1[_wgslsmith_index_u32(4294967295u, 4u)], -1426f, global1[_wgslsmith_index_u32(u_input.e, 4u)]))))).c.b, !vec2<bool>(u_input.e < u_input.e, true), vec2<bool>(any(func_4(vec4<f32>(global1[_wgslsmith_index_u32(1u, 4u)], global1[_wgslsmith_index_u32(1u, 4u)], -313f, global1[_wgslsmith_index_u32(4294967295u, 4u)])).d.b), all(vec3<bool>(false, false, true)))));
    global2 = Struct_1(global0.x, global2.b);
    var var_1 = u_input.a.x;
    let var_2 = u_input.a.yw;
    var var_3 = vec2<i32>(u_input.d.x, _wgslsmith_add_i32(20977i, -2147483647i));
    let var_4 = 1u;
    var var_5 = select(select(!vec3<bool>(true, global2.b.x, all(vec2<bool>(global2.b.x, false))), vec3<bool>(!(global0.x & false), true, u_input.b == -u_input.c.x), true), select(!(!select(vec3<bool>(global2.b.x, false, global0.x), vec3<bool>(var_0, true, false), true)), vec3<bool>(true | func_1(0i), true, !(!global2.b.x)), !all(vec3<bool>(var_0, false, true))), true);
    let x = u_input.a;
    s_output = StorageBuffer(~(firstLeadingBit(-u_input.d) & -(vec3<i32>(12639i, 1i, 1i) ^ u_input.d)), -10900i, var_2.x, global1[_wgslsmith_index_u32(u_input.a.x, 4u)], ~(_wgslsmith_add_vec2_u32(vec2<u32>(2230u, var_4), vec2<u32>(u_input.e, u_input.e) & u_input.a.xx) >> (func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1399f, -1914f, 332f, -788f))).a.xx % vec2<u32>(32u))));
}

