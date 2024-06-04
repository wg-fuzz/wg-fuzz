struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec3<i32>,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 18> = array<i32, 18>(49405i, 3230i, -8990i, i32(-2147483648), 0i, 3272i, 0i, -21456i, i32(-2147483648), 2147483647i, 0i, 0i, 11126i, -1i, -1i, 24533i, -12664i, -1i);

var<private> global1: Struct_1 = Struct_1(vec3<u32>(28191u, 1u, 0u), true, vec3<i32>(2147483647i, 23882i, -26153i), false, -111f);

var<private> global2: f32 = -1272f;

var<private> global3: bool;

var<private> global4: vec3<i32> = vec3<i32>(-22253i, 2147483647i, -19999i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: f32) -> u32 {
    var var_0 = global1.a.yy;
    var var_1 = Struct_1(global1.a, any(vec2<bool>(!arg_1, -global1.c.x >= -1i)), ~firstLeadingBit(global1.c), arg_0.b, -1197f);
    let var_2 = ~arg_0.a.x;
    var_0 = global1.a.yx;
    global4 = ~_wgslsmith_mod_vec3_i32(vec3<i32>(~(-40726i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.c.x, -16924i, global4.x, arg_0.c.x), vec4<i32>(-2147483647i, u_input.b, global4.x, 43086i)), i32(-1i) * -global4.x), -(max(var_1.c, vec3<i32>(arg_0.c.x, 1i, u_input.b)) << (select(arg_0.a, vec3<u32>(4294967295u, 1u, u_input.c.x), var_1.d) % vec3<u32>(32u))));
    return 49291u;
}

fn func_2() -> Struct_1 {
    global0 = array<i32, 18>();
    let var_0 = ~(-global4.zz);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(1092f, global1.e)), global1.e)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-1343f)))));
    let var_2 = Struct_1(global1.a, false, vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(global1.a.x, 18u)], -2147483647i, 3084i, global1.c.x), _wgslsmith_div_vec4_i32(vec4<i32>(34992i, global4.x, global1.c.x, -35126i), vec4<i32>(-1i, var_0.x, u_input.b, -19096i))), global1.c.x & (var_0.x ^ u_input.b)), -global1.c.x & -2147483647i, u_input.a.x), true, _wgslsmith_f_op_f32(-var_1.x));
    var var_3 = select(!(!vec2<bool>(select(global1.d, false, var_2.d), true)), vec2<bool>(select(!any(vec2<bool>(global1.d, var_2.d)), all(!vec3<bool>(true, global1.b, global1.b)), !global1.b || any(vec4<bool>(true, global1.b, false, false))), true), select(!select(select(vec2<bool>(global1.d, global1.b), vec2<bool>(var_2.d, false), vec2<bool>(false, global1.b)), !vec2<bool>(false, global1.d), !vec2<bool>(false, global1.d)), vec2<bool>(var_2.d, !(!var_2.d)), true));
    return Struct_1(vec3<u32>(var_2.a.x, 10791u | firstLeadingBit(global1.a.x), global1.a.x), select(~_wgslsmith_div_u32(7458u, var_2.a.x) >= _wgslsmith_add_u32(func_3(Struct_1(vec3<u32>(4294967295u, 3489u, 1u), var_3.x, vec3<i32>(var_0.x, 0i, global0[_wgslsmith_index_u32(global1.a.x, 18u)]), false, global1.e), false, -2447f), _wgslsmith_sub_u32(global1.a.x, global1.a.x)), global1.b, any(!(!vec3<bool>(true, false, var_2.b)))), var_2.c, max(1u, firstTrailingBit(~0u)) < countOneBits(18394u), _wgslsmith_f_op_f32(global1.e - _wgslsmith_f_op_f32(-558f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f + -672f))))));
}

fn func_1(arg_0: vec3<i32>, arg_1: u32) -> Struct_1 {
    let var_0 = func_2();
    var var_1 = Struct_1(vec3<u32>(global1.a.x, var_0.a.x | u_input.c.x, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, global1.a.x, 0u, 23811u), vec4<u32>(arg_1, var_0.a.x, u_input.c.x, global1.a.x)), vec4<u32>(var_0.a.x, 0u, var_0.a.x, 1u) << (vec4<u32>(u_input.c.x, global1.a.x, arg_1, arg_1) % vec4<u32>(32u)))) >> (vec3<u32>(max(~77845u, var_0.a.x & 1u), global1.a.x, reverseBits(arg_1)) % vec3<u32>(32u)), global1.b, abs(arg_0 ^ -vec3<i32>(var_0.c.x, 4997i, global4.x)), !all(select(!vec2<bool>(global1.b, var_0.b), !vec2<bool>(false, global1.d), var_0.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.e, global1.e)) + var_0.e));
    let var_2 = var_1.d;
    global0 = array<i32, 18>();
    let var_3 = ~func_2().c.yx;
    return func_2();
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<f32>) -> Struct_1 {
    var var_0 = u_input.b;
    var var_1 = func_1(vec3<i32>(global1.c.x, _wgslsmith_clamp_i32(-(global1.c.x >> (31899u % 32u)), i32(-1i) * -16009i, 2147483647i), _wgslsmith_div_i32(global1.c.x >> (0u % 32u), global1.c.x)), arg_0.a.x);
    return arg_2;
}

fn func_5(arg_0: f32, arg_1: Struct_1) -> vec3<f32> {
    global4 = arg_1.c;
    global3 = global1.d;
    global1 = func_2();
    global4 = vec3<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 18u)], 2147483647i, func_2().c.x);
    global2 = -406f;
    return vec3<f32>(_wgslsmith_f_op_f32(-740f + -1004f), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.e)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<bool>(global1.b, true, true, !all(!vec4<bool>(false, global1.d, global1.d, false))), vec4<bool>(true, false, global1.b, true), !(true == global1.b));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(443f, global1.e, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.e)))) * _wgslsmith_f_op_vec3_f32(func_5(-1174f, func_4(Struct_1(vec3<u32>(global1.a.x, 1u, 96016u), global1.b, global1.c, false, global1.e), func_1(global1.c, 1u), func_1(global1.c, global1.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1336f, 455f, global1.e, 481f)))))));
    var var_2 = abs(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 0i) >> (~u_input.c % vec2<u32>(32u)), select(global1.c.yx, vec2<i32>(2147483647i, global4.x), global1.d)), abs(-49159i)));
    global0 = array<i32, 18>();
    var_2 = func_4(func_4(Struct_1(global1.a, true, global1.c >> (global1.a % vec3<u32>(32u)), func_4(Struct_1(vec3<u32>(18513u, u_input.c.x, 23687u), var_0.x, vec3<i32>(global0[_wgslsmith_index_u32(global1.a.x, 18u)], 77379i, global0[_wgslsmith_index_u32(1u, 18u)]), true, -1145f), Struct_1(global1.a, false, global1.c, global1.d, var_1.x), Struct_1(global1.a, var_0.x, global1.c, var_0.x, global1.e), vec4<f32>(global1.e, -408f, -184f, -1055f)).b, _wgslsmith_f_op_f32(f32(-1f) * -254f)), func_1(min(vec3<i32>(u_input.b, -1i, global4.x), vec3<i32>(u_input.a.x, 2147483647i, global1.c.x)), u_input.c.x), Struct_1(~global1.a, global1.b, -vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 18u)], 2147483647i, 0i), false, _wgslsmith_div_f32(var_1.x, 1000f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.x, global1.e, 1000f, var_1.x), vec4<f32>(global1.e, 361f, 1000f, global1.e))))), Struct_1(~vec3<u32>(1u, 1u, u_input.c.x), !all(var_0.yz), firstTrailingBit(vec3<i32>(-2147483647i, global4.x, -1i)), !func_1(vec3<i32>(u_input.b, -1i, -1i), 4294967295u).b, _wgslsmith_f_op_vec3_f32(func_5(_wgslsmith_f_op_f32(max(-1427f, 695f)), Struct_1(vec3<u32>(global1.a.x, 1u, global1.a.x), global1.b, global1.c, false, global1.e))).x), func_2(), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(910f, global1.e, global1.e, global1.e) * vec4<f32>(-189f, -1115f, global1.e, var_1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-467f, var_1.x, -238f, -1141f) + vec4<f32>(-697f, var_1.x, 1987f, -126f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.e, 172f, -1414f, -890f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -249f, -1229f, var_1.x))))))).c.x >> (_wgslsmith_div_u32(_wgslsmith_sub_u32(~global1.a.x | _wgslsmith_add_u32(3081u, u_input.c.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(global1.a.x, u_input.c.x, u_input.c.x, global1.a.x), vec4<u32>(u_input.c.x, 4294967295u, global1.a.x, global1.a.x))), 4294967295u) % 32u);
    let var_3 = select(var_0.zxz, var_0.yxw, false);
    let var_4 = 1u;
    global1 = Struct_1(~vec3<u32>(0u, reverseBits(1u), global1.a.x), false && !(any(vec2<bool>(true, false)) | (var_3.x | false)), min(vec3<i32>(-15832i, 0i, firstLeadingBit(-23612i)), global1.c), var_3.x, -507f);
    global1 = func_1(global1.c, _wgslsmith_mod_u32(~countOneBits(_wgslsmith_div_u32(var_4, var_4)), _wgslsmith_mod_u32(~4769u >> ((0u | u_input.c.x) % 32u), var_4)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(func_4(Struct_1(vec3<u32>(29587u, 4294967295u, 51316u), false & var_0.x, global1.c, 2147483647i <= global1.c.x, var_1.x), Struct_1(vec3<u32>(4294967295u, 41913u, 4294967295u), var_3.x, max(vec3<i32>(2147483647i, global1.c.x, u_input.a.x), global1.c), var_0.x, _wgslsmith_f_op_f32(678f + -1000f)), Struct_1(firstLeadingBit(global1.a), true, ~vec3<i32>(global0[_wgslsmith_index_u32(4016u, 18u)], -31391i, u_input.b), !var_0.x, -184f), vec4<f32>(_wgslsmith_f_op_f32(global1.e * -751f), _wgslsmith_f_op_f32(-var_1.x), 731f, _wgslsmith_f_op_f32(round(1000f)))).e)), 34665u, abs(-vec4<i32>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(120352u, 5719u), 18u)], global1.c.x, global1.c.x, ~global4.x)), max(select(-48193i, ~u_input.a.x, all(!vec2<bool>(var_3.x, var_0.x))), max(0i, -(~global1.c.x))));
}

