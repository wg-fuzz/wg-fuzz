struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<bool, 13>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> bool {
    let var_0 = global0.a.a.xx;
    global1 = array<bool, 13>();
    global0 = Struct_2(Struct_1(vec4<f32>(global0.a.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1800f - -1641f), -356f)), global0.a.a.x, _wgslsmith_f_op_f32(-var_0.x)), ~firstTrailingBit(0u), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-global0.a.c), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(global0.a.a.wyw)), _wgslsmith_div_vec3_f32(global0.a.c, global0.a.a.www))))), u_input.c.xz);
    global1 = array<bool, 13>();
    var var_1 = select(u_input.b, u_input.d.yy, select(vec2<bool>(global1[_wgslsmith_index_u32(~(~4294967295u), 13u)], !global1[_wgslsmith_index_u32(global0.a.b, 13u)] | false), vec2<bool>(!all(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 13u)], global1[_wgslsmith_index_u32(14222u, 13u)], global1[_wgslsmith_index_u32(4294967295u, 13u)])), select(false, var_0.x >= 432f, true)), vec2<bool>(!all(vec3<bool>(false, false, global1[_wgslsmith_index_u32(35419u, 13u)])), !(false || global1[_wgslsmith_index_u32(4294967295u, 13u)]))));
    return global1[_wgslsmith_index_u32(var_1.x, 13u)];
}

fn func_4(arg_0: vec3<bool>, arg_1: i32) -> vec2<i32> {
    let var_0 = global0.a;
    var var_1 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x * global0.a.a.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.c.x - global0.a.a.x), -1679f)), _wgslsmith_f_op_f32(-562f - _wgslsmith_f_op_f32(exp2(global0.a.a.x))), -113f), ~(1u << (reverseBits(u_input.a) % 32u)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.a.c - vec3<f32>(2064f, global0.a.a.x, var_0.a.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.a.x, global0.a.a.x, -152f) + _wgslsmith_f_op_vec3_f32(min(global0.a.c, vec3<f32>(719f, 410f, var_0.c.x))))))), global0.b);
    return -var_1.b;
}

fn func_2() -> vec4<i32> {
    global0 = Struct_2(global0.a, u_input.c.yz);
    var var_0 = select(vec3<bool>(false, !any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, global1[_wgslsmith_index_u32(u_input.d.x, 13u)]), vec4<bool>(global1[_wgslsmith_index_u32(global0.a.b, 13u)], global1[_wgslsmith_index_u32(u_input.d.x, 13u)], false, true))), any(!select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 13u)], global1[_wgslsmith_index_u32(0u, 13u)], global1[_wgslsmith_index_u32(0u, 13u)], true), vec4<bool>(false, global1[_wgslsmith_index_u32(4846u, 13u)], false, global1[_wgslsmith_index_u32(0u, 13u)]), vec4<bool>(false, true, global1[_wgslsmith_index_u32(0u, 13u)], global1[_wgslsmith_index_u32(u_input.d.x, 13u)])))), !vec3<bool>(!global1[_wgslsmith_index_u32(u_input.b.x, 13u)], all(select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 13u)], false, global1[_wgslsmith_index_u32(global0.a.b, 13u)], global1[_wgslsmith_index_u32(u_input.a, 13u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 13u)], global1[_wgslsmith_index_u32(u_input.b.x, 13u)], global1[_wgslsmith_index_u32(9686u, 13u)], true), global1[_wgslsmith_index_u32(4294967295u, 13u)])), select(true, global1[_wgslsmith_index_u32(abs(1u), 13u)], true)), all(vec4<bool>(true, any(!vec3<bool>(global1[_wgslsmith_index_u32(global0.a.b, 13u)], global1[_wgslsmith_index_u32(u_input.d.x, 13u)], global1[_wgslsmith_index_u32(u_input.d.x, 13u)])), all(vec3<bool>(false, global1[_wgslsmith_index_u32(global0.a.b, 13u)], global1[_wgslsmith_index_u32(global0.a.b, 13u)])) & any(vec3<bool>(false, false, global1[_wgslsmith_index_u32(u_input.a, 13u)])), true)));
    var var_1 = Struct_2(global0.a, func_4(select(vec3<bool>(func_3(), global1[_wgslsmith_index_u32(u_input.b.x, 13u)], all(vec4<bool>(true, var_0.x, var_0.x, true))), vec3<bool>(!global1[_wgslsmith_index_u32(global0.a.b, 13u)], false, var_0.x || var_0.x), vec3<bool>(var_0.x, true, true)), -u_input.c.x));
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.a.c.x, global0.a.a.x, global0.a.c.x, global0.a.a.x), vec4<f32>(-641f, 491f, 371f, var_1.a.a.x), true)))), 1u, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, _wgslsmith_f_op_f32(step(-100f, -355f)), _wgslsmith_div_f32(global0.a.a.x, global0.a.a.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(global0.a.a.xxy)) - vec3<f32>(-876f, -140f, var_1.a.c.x)), countOneBits(var_1.a.b) <= max(7034u, u_input.d.x)))), _wgslsmith_mult_vec2_i32(-(~u_input.c.xx), _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(547i, u_input.c.x), var_1.b), _wgslsmith_div_i32(var_1.b.x, u_input.c.x)), min(vec2<i32>(-17761i, 0i), global0.b) & global0.b)));
    var var_2 = max(u_input.d, vec3<u32>(_wgslsmith_dot_vec3_u32(~u_input.d, _wgslsmith_div_vec3_u32(u_input.d, vec3<u32>(6102u, 45332u, 0u))) | ~u_input.a, ~0u, var_1.a.b));
    return _wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, 0i, -2384i, 2147483647i), ~vec4<i32>(var_1.b.x, 4754i, 0i, u_input.c.x), vec4<i32>(var_1.b.x, global0.b.x, global0.b.x, var_1.b.x)), reverseBits(vec4<i32>(var_1.b.x, firstTrailingBit(1i), i32(-1i) * -47612i, -1i) | max(~vec4<i32>(u_input.c.x, u_input.c.x, global0.b.x, -324i), vec4<i32>(u_input.c.x, global0.b.x, -47977i, 2147483647i))));
}

fn func_5(arg_0: i32, arg_1: Struct_3) -> Struct_2 {
    var var_0 = global0.a;
    let var_1 = global0.a;
    let var_2 = global0.a;
    global1 = array<bool, 13>();
    var var_3 = global0.a.c;
    return Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(min(var_2.a, var_1.a)), u_input.b.x, _wgslsmith_f_op_vec3_f32(-var_2.a.www)), u_input.c.xz);
}

fn func_1(arg_0: vec2<f32>) -> i32 {
    global1 = array<bool, 13>();
    global0 = func_5(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 25945i), vec4<i32>(-33385i, 1i, global0.b.x, u_input.c.x)), vec4<i32>(global0.b.x, u_input.c.x, u_input.c.x, 1i)) ^ 2147483647i, ~global0.b.x), Struct_3(func_2(), true));
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(arg_0.x)), arg_0.x)), func_5(-u_input.c.x, Struct_3(vec4<i32>(18117i, u_input.c.x, global0.b.x, 75011i), global1[_wgslsmith_index_u32(u_input.d.x, 13u)])).a.a.x)), -151f, true))));
    global1 = array<bool, 13>();
    global0 = func_5(~(-48142i), Struct_3(vec4<i32>(_wgslsmith_mod_i32(0i, u_input.c.x), global0.b.x, _wgslsmith_mod_i32(global0.b.x, global0.b.x), 0i) | _wgslsmith_clamp_vec4_i32(vec4<i32>(44128i, global0.b.x, 2147483647i, global0.b.x), vec4<i32>(-10631i, -1i, 1i, global0.b.x), -vec4<i32>(-2147483647i, 2147483647i, u_input.c.x, 55608i)), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(24893u, 0u), 13u)]));
    return 70145i;
}

fn func_6(arg_0: vec3<f32>, arg_1: u32, arg_2: i32) -> Struct_1 {
    var var_0 = global0.a;
    let var_1 = func_5(_wgslsmith_sub_i32(u_input.c.x, 2009i), Struct_3(vec4<i32>(-82459i, -2147483647i, ~(-2147483647i), -firstLeadingBit(u_input.c.x)), true || any(!vec4<bool>(false, global1[_wgslsmith_index_u32(25369u, 13u)], global1[_wgslsmith_index_u32(var_0.b, 13u)], true))));
    let var_2 = Struct_2(func_5(-2147483647i, Struct_3(vec4<i32>(-60563i, -31202i, _wgslsmith_mod_i32(var_1.b.x, 0i), u_input.c.x), true)).a, func_2().xy);
    let var_3 = _wgslsmith_dot_vec4_u32(vec4<u32>(1548u, abs(10393u), ~firstLeadingBit(var_1.a.b) >> (_wgslsmith_clamp_u32(4936u, _wgslsmith_mult_u32(arg_1, var_1.a.b), _wgslsmith_mult_u32(var_0.b, global0.a.b)) % 32u), global0.a.b), ~_wgslsmith_sub_vec4_u32(vec4<u32>(min(var_2.a.b, var_0.b), _wgslsmith_sub_u32(var_2.a.b, 1u), abs(0u), var_1.a.b), ~firstLeadingBit(vec4<u32>(4294967295u, 4294967295u, global0.a.b, global0.a.b))));
    global0 = Struct_2(global0.a, _wgslsmith_mult_vec2_i32(var_1.b, firstTrailingBit(vec2<i32>(30916i, ~1i))));
    return func_5(-35506i, Struct_3(reverseBits(firstTrailingBit(~vec4<i32>(56069i, var_2.b.x, var_2.b.x, arg_2))), true)).a;
}

fn func_7(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_3) -> Struct_2 {
    let var_0 = vec3<i32>(global0.b.x, u_input.c.x, ~u_input.c.x);
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(select(global0.a.a, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-542f, arg_0.a.x, -1228f, global0.a.c.x), global0.a.a)), global1[_wgslsmith_index_u32(arg_1.x, 13u)])), _wgslsmith_mult_u32(arg_0.b | u_input.d.x, 0u & arg_0.b) >> (~abs(4294967295u) % 32u), arg_0.c), vec2<i32>(max(-23196i, select(min(-1952i, 2147483647i), -var_0.x, true)), global0.b.x));
    global0 = func_5(countOneBits(reverseBits(var_0.x)), Struct_3(abs(vec4<i32>(global0.b.x ^ 1i, 1i, 8650i, _wgslsmith_mod_i32(arg_2.a.x, var_0.x))), any(vec2<bool>(true, true))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(arg_0.c.x - _wgslsmith_f_op_f32(global0.a.a.x * _wgslsmith_f_op_f32(arg_0.a.x + 979f))), _wgslsmith_f_op_f32(203f * _wgslsmith_f_op_f32(floor(1022f))), 637f);
    global1 = array<bool, 13>();
    return Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global0.a.a, arg_0.a)) - global0.a.a), 4294967295u, arg_0.c), _wgslsmith_add_vec2_i32(vec2<i32>(func_5(firstTrailingBit(global0.b.x), arg_2).b.x, 1i), var_0.yx << (_wgslsmith_mod_vec2_u32(u_input.b, ~arg_1.xz) % vec2<u32>(32u))));
}

fn func_8(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: f32, arg_3: Struct_2) -> Struct_3 {
    var var_0 = vec4<u32>(_wgslsmith_mult_u32(~u_input.a, 1u), _wgslsmith_sub_u32(~1u, arg_3.a.b), ~(~_wgslsmith_mod_u32(19193u, 1u)), 42451u);
    let var_1 = global0.a.a.wx;
    global1 = array<bool, 13>();
    var var_2 = vec3<bool>(any(select(!select(vec4<bool>(global1[_wgslsmith_index_u32(arg_3.a.b, 13u)], true, true, true), vec4<bool>(false, global1[_wgslsmith_index_u32(arg_0.x, 13u)], true, false), true), select(!vec4<bool>(global1[_wgslsmith_index_u32(arg_3.a.b, 13u)], true, true, global1[_wgslsmith_index_u32(4294967295u, 13u)]), !vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 13u)], false, global1[_wgslsmith_index_u32(32800u, 13u)], global1[_wgslsmith_index_u32(arg_0.x, 13u)]), true), func_3())), !global1[_wgslsmith_index_u32(~u_input.a, 13u)], global1[_wgslsmith_index_u32(arg_3.a.b, 13u)]);
    var_2 = select(select(!select(vec3<bool>(true, true, false), !vec3<bool>(var_2.x, global1[_wgslsmith_index_u32(42u, 13u)], false), global1[_wgslsmith_index_u32(4294967295u, 13u)] | true), !vec3<bool>(false, func_3(), false), false), select(vec3<bool>(select(false, true, global1[_wgslsmith_index_u32(14715u, 13u)]), true, false), !(!(!vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 13u)], global1[_wgslsmith_index_u32(19316u, 13u)], global1[_wgslsmith_index_u32(16099u, 13u)]))), select(select(!vec3<bool>(false, global1[_wgslsmith_index_u32(0u, 13u)], global1[_wgslsmith_index_u32(u_input.a, 13u)]), !vec3<bool>(false, var_2.x, true), func_3()), !vec3<bool>(true, false, var_2.x), all(var_2.xz))), select(!vec3<bool>(var_2.x, false, var_2.x || true), select(!(!vec3<bool>(var_2.x, false, global1[_wgslsmith_index_u32(u_input.b.x, 13u)])), select(!vec3<bool>(var_2.x, var_2.x, true), select(vec3<bool>(global1[_wgslsmith_index_u32(41074u, 13u)], false, true), vec3<bool>(true, false, true), false), any(vec3<bool>(true, var_2.x, var_2.x))), select(select(vec3<bool>(var_2.x, true, false), vec3<bool>(true, var_2.x, false), vec3<bool>(true, var_2.x, false)), select(vec3<bool>(var_2.x, var_2.x, false), vec3<bool>(false, true, var_2.x), global1[_wgslsmith_index_u32(4294967295u, 13u)]), vec3<bool>(global1[_wgslsmith_index_u32(102255u, 13u)], true, global1[_wgslsmith_index_u32(u_input.b.x, 13u)]))), vec3<bool>(any(vec4<bool>(true, false, global1[_wgslsmith_index_u32(arg_3.a.b, 13u)], true)), true, all(vec2<bool>(global1[_wgslsmith_index_u32(21430u, 13u)], false)))));
    return Struct_3(abs(-vec4<i32>(_wgslsmith_sub_i32(2147483647i, global0.b.x), min(global0.b.x, u_input.c.x), i32(-1i) * -22206i, -1i)), !(!all(vec4<bool>(false, true, true, true)) && true));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 13>();
    var var_0 = func_8(vec3<u32>(min(global0.a.b, 32633u), 1u, 68817u), u_input.c, _wgslsmith_f_op_f32(612f - _wgslsmith_f_op_f32(global0.a.a.x - global0.a.c.x)), func_7(func_6(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.a.c * global0.a.c)), global0.a.b, func_1(global0.a.a.zz)), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(global0.a.b, 1u, u_input.a, global0.a.b)), ~vec4<u32>(u_input.a, global0.a.b, 24607u, 0u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.d.x, 1u, 17619u), vec4<u32>(4294967295u, global0.a.b, 1u, u_input.d.x))), Struct_3(vec4<i32>(global0.b.x, i32(-1i) * -44799i, u_input.c.x, 2147483647i), true)));
    var var_1 = func_8(~_wgslsmith_mod_vec3_u32(vec3<u32>(~global0.a.b, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.a.b, 1u, 26664u, u_input.a), vec4<u32>(global0.a.b, 52726u, 18965u, 4294967295u)), abs(33205u)), u_input.d), abs(vec3<i32>(u_input.c.x, ~41601i, _wgslsmith_mult_i32(u_input.c.x, 0i))), 1000f, func_7(global0.a, vec4<u32>(u_input.d.x, global0.a.b, ~(global0.a.b << (global0.a.b % 32u)), firstLeadingBit(~u_input.a)), func_8(~abs(u_input.d), vec3<i32>(i32(-1i) * -2147483647i, -69722i, 21703i >> (1u % 32u)), _wgslsmith_div_f32(_wgslsmith_div_f32(global0.a.a.x, 230f), _wgslsmith_f_op_f32(-global0.a.c.x)), func_5(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.c.x), vec2<i32>(var_0.a.x, 25881i)), func_8(u_input.d, var_0.a.xzw, global0.a.c.x, Struct_2(Struct_1(global0.a.a, 56104u, vec3<f32>(-923f, 1572f, 819f)), vec2<i32>(63365i, var_0.a.x)))))));
    var_1 = func_8(max(firstLeadingBit(~_wgslsmith_add_vec3_u32(vec3<u32>(global0.a.b, 9950u, 10350u), u_input.d)), ~vec3<u32>(~32338u, global0.a.b, _wgslsmith_mod_u32(u_input.b.x, global0.a.b))), var_0.a.yxw, -311f, Struct_2(func_7(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1141f, global0.a.a.x, 616f, global0.a.a.x) + vec4<f32>(global0.a.c.x, global0.a.c.x, -651f, global0.a.c.x)), global0.a.b | 21612u, global0.a.c), ~(~vec4<u32>(5027u, u_input.b.x, 99718u, u_input.a)), func_8(~vec3<u32>(0u, 12459u, 1u), -var_0.a.yzx, _wgslsmith_f_op_f32(-1000f - -263f), Struct_2(Struct_1(global0.a.a, 19700u, global0.a.c), vec2<i32>(0i, var_0.a.x)))).a, global0.b));
    global1 = array<bool, 13>();
    var var_2 = Struct_3(-(-vec4<i32>(var_0.a.x, -1i, 13150i, global0.b.x) ^ abs(firstTrailingBit(vec4<i32>(global0.b.x, var_1.a.x, 31182i, -45364i)))), var_1.b | var_1.b);
    var_1 = Struct_3(var_2.a, true);
    let var_3 = Struct_3(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(abs(var_2.a), vec4<i32>(global0.b.x, 2147483647i, u_input.c.x, 67824i)) ^ ~vec4<i32>(0i, u_input.c.x, 0i, -14054i), func_2()), var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(global0.a.b, 14187u, ~(1u << (u_input.b.x % 32u))) ^ _wgslsmith_clamp_vec3_u32(u_input.d, vec3<u32>(34324u, _wgslsmith_div_u32(u_input.b.x, 1u), func_7(global0.a, vec4<u32>(4294967295u, u_input.a, 4294967295u, 4294967295u), var_3).a.b), vec3<u32>(_wgslsmith_div_u32(global0.a.b, u_input.b.x), 4294967295u, 40580u)), var_3.a.x);
}

