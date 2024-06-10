struct Struct_1 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: Struct_1,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1667f;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_1(~min(select(vec3<u32>(u_input.b.x, 8135u, 1u) << (u_input.b % vec3<u32>(32u)), ~u_input.b, all(vec4<bool>(false, true, false, false))), vec3<u32>(1u, u_input.b.x, u_input.b.x) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(30398u, u_input.b.x, u_input.b.x), u_input.b) % vec3<u32>(32u))), _wgslsmith_div_vec4_i32(u_input.a, _wgslsmith_mod_vec4_i32(vec4<i32>(~u_input.a.x, u_input.a.x, -5735i >> (u_input.b.x % 32u), -17i), select(-u_input.a, u_input.a, true))), !select(select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), vec3<bool>(true, true, false)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)));
    return Struct_2(-1000f, _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.a, firstTrailingBit(_wgslsmith_mult_vec4_i32(var_0.b, var_0.b))), var_0.b));
}

fn func_3() -> i32 {
    var var_0 = !vec2<bool>(u_input.a.x >= _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, u_input.a.x), vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, 1i)), u_input.a.x), true);
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(-1364f, -1276f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(766f - 733f))))) - _wgslsmith_f_op_f32(step(-986f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1264f - 598f))))), -2002f));
    let var_1 = u_input.b.x;
    let var_2 = Struct_3(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, ~(-u_input.a.x), -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(35064i, -34488i, 2147483647i, -2147483647i) << (vec4<u32>(var_1, 1u, var_1, 42219u) % vec4<u32>(32u)), ~vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, u_input.a.x))), -select(-vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), u_input.a & vec4<i32>(u_input.a.x, -33178i, u_input.a.x, -34815i), var_0.x)), max(~vec3<u32>(var_1, select(1u, var_1, var_0.x), var_1 >> (84163u % 32u)), vec3<u32>(var_1, abs(64765u), 1u)), _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(u_input.a.x, 0i, u_input.a.x)), vec3<i32>(u_input.a.x, func_2().b.x, _wgslsmith_sub_i32(-1i, u_input.a.x))), vec3<i32>(max(u_input.a.x, func_2().b.x), u_input.a.x, max(abs(1i), ~(-23182i)))), Struct_1(u_input.b, u_input.a, select(select(select(vec3<bool>(var_0.x, true, true), vec3<bool>(var_0.x, false, var_0.x), var_0.x), !vec3<bool>(var_0.x, var_0.x, false), !vec3<bool>(var_0.x, true, var_0.x)), select(vec3<bool>(true, var_0.x, true), !vec3<bool>(true, true, var_0.x), select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(true, var_0.x, var_0.x))), vec3<bool>(true, false, false))), -_wgslsmith_sub_vec2_i32(u_input.a.wz ^ firstLeadingBit(u_input.a.ww), vec2<i32>(~0i, min(u_input.a.x, -27857i))));
    global0 = _wgslsmith_f_op_f32(381f * -437f);
    return select(-firstLeadingBit(var_2.e.x), -(u_input.a.x << (56800u % 32u)), var_0.x);
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: i32) -> Struct_3 {
    var var_0 = func_2();
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -486f) + 293f);
    var var_1 = ~(select(vec4<u32>(arg_0, 49446u, u_input.b.x, u_input.b.x), select(vec4<u32>(u_input.b.x, 1u, u_input.b.x, 1u), vec4<u32>(0u, 146245u, 21151u, u_input.b.x), true) << (vec4<u32>(1u, arg_0, u_input.b.x, arg_0) % vec4<u32>(32u)), select(vec4<bool>(false, true, true, arg_1), vec4<bool>(true, false, true, false), !vec4<bool>(arg_1, false, true, true))) << (~(~(~vec4<u32>(arg_0, 3435u, arg_0, arg_0))) % vec4<u32>(32u)));
    var_0 = func_2();
    global0 = var_0.a;
    return Struct_3(_wgslsmith_clamp_vec4_i32(~(_wgslsmith_div_vec4_i32(var_0.b, u_input.a) & var_0.b), ~vec4<i32>(-arg_2, ~10077i, 50512i, arg_2), -(vec4<i32>(2147483647i, u_input.a.x, -85757i, arg_2) & vec4<i32>(11868i, 2147483647i, u_input.a.x, arg_2))), vec3<u32>(1u, 4294967295u, 42329u), -max(var_0.b.yzw, -reverseBits(vec3<i32>(u_input.a.x, u_input.a.x, var_0.b.x))), Struct_1(u_input.b, vec4<i32>(_wgslsmith_sub_i32(var_0.b.x, _wgslsmith_add_i32(0i, var_0.b.x)), -func_3(), ~abs(-2147483647i), ~(-u_input.a.x)), vec3<bool>(!any(vec3<bool>(arg_1, arg_1, arg_1)), true, !select(arg_1, arg_1, false))), vec2<i32>(1i, reverseBits(func_3())));
}

fn func_4(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_3) -> f32 {
    let var_0 = func_1(abs(_wgslsmith_add_u32(69804u, 8464u)), true, arg_2.a.x);
    let var_1 = select(u_input.a.x, u_input.a.x, all(vec3<bool>(true, true, true)));
    global0 = func_2().a;
    var var_2 = func_2();
    var_2 = func_2();
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a))), arg_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1029f, -294f, 129f), vec3<f32>(-433f, 1000f, 1264f)) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1455f, 1701f, 1733f))))))), min(82782u, firstTrailingBit(u_input.b.x)), func_1(u_input.b.x, false, ~(u_input.a.x >> (~4294967295u % 32u)))));
    var var_1 = !select(vec4<bool>(_wgslsmith_dot_vec2_i32(u_input.a.yw, vec2<i32>(u_input.a.x, -1i)) <= u_input.a.x, ~u_input.b.x > u_input.b.x, true, _wgslsmith_f_op_f32(ceil(-499f)) <= _wgslsmith_f_op_f32(-1163f - -576f)), vec4<bool>(false, -u_input.a.x <= firstLeadingBit(-27575i), true, false), select(vec4<bool>(all(vec2<bool>(true, false)), true, true, 60009i != u_input.a.x), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), true), true));
    var var_2 = (~u_input.a.x >= (i32(-1i) * -(~u_input.a.x))) | true;
    let var_3 = _wgslsmith_f_op_f32(step(func_2().a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-495f - _wgslsmith_f_op_f32(f32(-1f) * -529f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-519f, _wgslsmith_f_op_f32(-496f - -792f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1672f, 829f)), _wgslsmith_f_op_f32(func_4(vec3<f32>(1788f, 1817f, 303f), u_input.b.x, Struct_3(u_input.a, u_input.b, vec3<i32>(-11577i, -26927i, u_input.a.x), Struct_1(u_input.b, u_input.a, vec3<bool>(true, true, var_1.x)), vec2<i32>(1i, u_input.a.x)))))))));
    var var_4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(762f, var_3, -148f, -681f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1331f, var_3, -280f, var_3), vec4<f32>(153f, var_3, -287f, var_3))))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_3), -2451f, func_2().a, var_3)));
    var var_5 = var_1.x;
    let var_6 = abs(vec2<u32>(~(~u_input.b.x), 0u) << ((vec2<u32>(u_input.b.x, u_input.b.x) & ~u_input.b.zz) % vec2<u32>(32u)));
    let var_7 = func_1(~67946u, true, abs(-2147483647i)).d;
    let x = u_input.a;
    s_output = StorageBuffer(func_2().a, 55538u);
}

