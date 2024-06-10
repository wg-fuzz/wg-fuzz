struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: u32,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: i32,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7>;

var<private> global1: vec3<bool> = vec3<bool>(true, true, false);

var<private> global2: array<f32, 10>;

var<private> global3: array<vec4<bool>, 27> = array<vec4<bool>, 27>(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool) -> vec3<bool> {
    var var_0 = _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(97886u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 7u)], 7u)], 7u)]), _wgslsmith_mult_u32(4294967295u, 0u), reverseBits(0u), ~u_input.b.x) >> (_wgslsmith_mult_vec4_u32(min(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 7u)], 7u)], global0[_wgslsmith_index_u32(u_input.d, 7u)]), vec4<u32>(1u, 35104u, u_input.d, 4294967295u)), ~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(29274u, 7u)], 7u)], 11747u, u_input.b.x, 41497u)) % vec4<u32>(32u)), reverseBits(select(firstLeadingBit(vec4<u32>(24028u, global0[_wgslsmith_index_u32(4294967295u, 7u)], u_input.b.x, 10153u)), vec4<u32>(global0[_wgslsmith_index_u32(39660u, 7u)], 73582u, u_input.d, global0[_wgslsmith_index_u32(0u, 7u)]), vec4<bool>(arg_0, false, global1.x, arg_0)))), vec4<u32>(23956u, reverseBits(u_input.d), u_input.d, _wgslsmith_mult_u32(~(~global0[_wgslsmith_index_u32(u_input.d, 7u)]), ~(~44044u))));
    global3 = array<vec4<bool>, 27>();
    global2 = array<f32, 10>();
    var_0 = vec4<u32>(~(reverseBits(80797u) & _wgslsmith_dot_vec4_u32(min(vec4<u32>(1u, u_input.b.x, 0u, u_input.d), vec4<u32>(u_input.d, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(64583u, 7u)], 7u)], global0[_wgslsmith_index_u32(var_0.x, 7u)], 57378u)), _wgslsmith_add_vec4_u32(vec4<u32>(34815u, u_input.d, 52108u, u_input.d), vec4<u32>(u_input.b.x, var_0.x, 60526u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(14346u, 7u)], 7u)], 7u)])))), reverseBits(1u), _wgslsmith_add_u32(firstLeadingBit(~var_0.x | ~var_0.x), 1u), var_0.x);
    global3 = array<vec4<bool>, 27>();
    return !vec3<bool>(global1.x && (u_input.c.x >= _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.c.x, u_input.a, u_input.a), vec4<i32>(u_input.c.x, 1i, 1i, u_input.a))), var_0.x > 0u, global1.x);
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> i32 {
    let var_0 = Struct_1(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.b.x, arg_1.b.c, 1417u), ~vec3<u32>(42742u, arg_1.a.x, arg_1.a.x)) ^ max(~vec3<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 7u)], global0[_wgslsmith_index_u32(u_input.b.x, 7u)], 64794u), abs(vec3<u32>(arg_1.b.c, 4294967295u, 4294967295u))), ~(~(~vec3<u32>(4294967295u, 4294967295u, arg_1.b.c)))), 10u)], !func_3(arg_1.b.e), 19500u, arg_0, arg_1.e);
    let var_1 = _wgslsmith_add_u32(select(firstLeadingBit(4294967295u), ~arg_1.b.c, any(!global1.yz)), ~global0[_wgslsmith_index_u32(((var_0.c >> (var_0.c % 32u)) & ~global0[_wgslsmith_index_u32(4294967295u, 7u)]) ^ var_0.c, 7u)]);
    let var_2 = Struct_2(firstLeadingBit(~arg_1.a), Struct_1(-877f, vec3<bool>(true, firstLeadingBit(0u) < var_0.c, true || any(vec4<bool>(false, var_0.e, false, true))), 43135u, _wgslsmith_mod_i32(_wgslsmith_mult_i32(min(-30173i, -31536i), u_input.a), _wgslsmith_clamp_i32(arg_0 & 18768i, var_0.d, u_input.c.x)), true), var_0.d, _wgslsmith_f_op_f32(-500f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.a * 1108f), _wgslsmith_f_op_f32(-arg_1.b.a))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-133f)))))), global1.x);
    global0 = array<u32, 7>();
    var var_3 = arg_0;
    return _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.c.yz, vec2<i32>(_wgslsmith_clamp_i32(var_0.d, 2147483647i, _wgslsmith_mod_i32(-1i, 1i)), -1i)), select(u_input.c.zz ^ max(u_input.c.xz, vec2<i32>(arg_1.c, arg_1.b.d)), -(u_input.c.zy << (vec2<u32>(9210u, var_2.a.x) % vec2<u32>(32u))), vec2<bool>(!arg_1.b.b.x, true)) & -_wgslsmith_sub_vec2_i32(vec2<i32>(arg_1.c, var_0.d) & u_input.c.xx, vec2<i32>(-36507i, arg_0)));
}

fn func_1(arg_0: vec3<u32>) -> vec3<bool> {
    global1 = select(!select(!select(vec3<bool>(global1.x, false, false), vec3<bool>(global1.x, true, global1.x), global1.x), vec3<bool>(all(vec3<bool>(false, false, global1.x)), true, global1.x), global1.x), select(vec3<bool>(global1.x, any(global1.zz), (global2[_wgslsmith_index_u32(67812u, 10u)] != 229f) == any(vec2<bool>(true, global1.x))), !vec3<bool>(true && global1.x, 0u >= u_input.d, false), (func_2(u_input.c.x, Struct_2(vec2<u32>(60842u, arg_0.x), Struct_1(-1000f, vec3<bool>(false, global1.x, true), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 7u)], 7u)], u_input.a, true), u_input.c.x, 446f, global1.x)) >= u_input.c.x) | any(global3[_wgslsmith_index_u32(0u, 27u)])), func_3(false));
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32((abs(4294967295u) << (~global0[_wgslsmith_index_u32(59694u, 7u)] % 32u)) | 1u, 10u)]), !vec3<bool>(all(!vec2<bool>(true, global1.x)), any(global1.yx), any(vec2<bool>(true, global1.x))), arg_0.x, _wgslsmith_mult_i32(-u_input.c.x, -40300i), true);
    global3 = array<vec4<bool>, 27>();
    global0 = array<u32, 7>();
    var var_1 = Struct_2(vec2<u32>(~(~1u), ~(71532u | u_input.b.x) << (arg_0.x % 32u)), Struct_1(-888f, var_0.b, 0u, -26247i, true), -(_wgslsmith_mult_i32(~var_0.d, firstLeadingBit(1i)) ^ u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~4294967295u | select(var_0.c, u_input.b.x, true), 10u)] * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-778f, 412f)))), var_0.b.x == !(any(global3[_wgslsmith_index_u32(0u, 27u)]) && false));
    return vec3<bool>(var_0.e, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.a))) == _wgslsmith_f_op_f32(abs(var_1.b.a)), any(select(global3[_wgslsmith_index_u32(4294967295u, 27u)], vec4<bool>(all(global1.xy), true, 229f >= global2[_wgslsmith_index_u32(36195u, 10u)], global1.x), global3[_wgslsmith_index_u32(~4294967295u, 27u)])));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(~_wgslsmith_add_vec2_u32(~vec2<u32>(global0[_wgslsmith_index_u32(0u, 7u)], u_input.b.x), u_input.b), Struct_1(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(50861u, 10u)] - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(4294967295u, 10u)])))), !select(func_1(vec3<u32>(u_input.b.x, 62043u, 4294967295u)), !vec3<bool>(false, global1.x, global1.x), vec3<bool>(global1.x, global1.x, global1.x)), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(firstTrailingBit(40357u), 47702u, u_input.d) << (_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 41205u, 0u), ~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4334u, 7u)], 7u)], u_input.d, 1u)) % 32u), 7u)], func_2(~1i << ((u_input.d & global0[_wgslsmith_index_u32(u_input.b.x, 7u)]) % 32u), Struct_2(abs(vec2<u32>(1u, global0[_wgslsmith_index_u32(1u, 7u)])), Struct_1(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d, 7u)], 7u)], 10u)], vec3<bool>(true, false, global1.x), u_input.d, -4741i, global1.x), abs(0i), _wgslsmith_div_f32(785f, global2[_wgslsmith_index_u32(1u, 10u)]), true)), true), select(_wgslsmith_clamp_i32(-u_input.c.x, ~7196i, ~u_input.c.x) & -11290i, max(-u_input.c.x << (18408u % 32u), u_input.a & 0i), !select(true, u_input.a == u_input.a, 936f != global2[_wgslsmith_index_u32(8158u, 10u)])), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(91454u, 10u)], global2[_wgslsmith_index_u32(1u, 10u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b.x, 10u)])))))), false);
    global2 = array<f32, 10>();
    let var_1 = _wgslsmith_f_op_f32(trunc(var_0.b.a));
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(1417f)))) + _wgslsmith_f_op_f32(sign(var_0.d)))));
    let var_3 = Struct_1(326f, !(!vec3<bool>(select(global1.x, false, global1.x), false, var_0.e)), 4294967295u << (~_wgslsmith_mult_u32(1u, global0[_wgslsmith_index_u32(abs(var_0.a.x), 7u)]) % 32u), u_input.c.x, (-22139i << (_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, var_0.a.x, u_input.b.x, 1u), ~vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 7u)], 1u, 1u, var_0.b.c)) % 32u)) < _wgslsmith_mult_i32(func_2(1i, Struct_2(u_input.b, var_0.b, -4101i, var_1, var_0.b.e)), select(1840i, 0i, true)));
    let var_4 = -770f;
    global1 = !func_1(~firstLeadingBit(vec3<u32>(global0[_wgslsmith_index_u32(18544u, 7u)], u_input.d, 0u)) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(2773u, u_input.d, var_3.c), vec3<u32>(u_input.d, var_0.a.x, 17300u)) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_u32(min(1u, min(var_3.c, var_3.c)), 1u), _wgslsmith_f_op_f32(-327f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2))))), ~reverseBits(global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_mod_u32(1601u, u_input.b.x)), 7u)]), abs(var_3.c));
}

