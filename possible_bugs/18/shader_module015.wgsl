struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: vec4<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: vec3<i32>, arg_3: Struct_1) -> u32 {
    let var_0 = select(select(select(select(vec4<bool>(true, arg_0, arg_1, arg_0), select(vec4<bool>(arg_1, false, false, arg_1), vec4<bool>(arg_1, true, arg_1, arg_0), false), vec4<bool>(arg_1, arg_1, false, arg_0)), vec4<bool>(true, true, u_input.a.x < 1u, arg_1), select(vec4<bool>(true, arg_1, true, false), !vec4<bool>(true, true, arg_1, true), vec4<bool>(true, arg_1, false, true))), !(!select(vec4<bool>(arg_0, false, false, arg_0), vec4<bool>(arg_1, false, true, true), vec4<bool>(false, arg_0, false, arg_0))), !vec4<bool>(true, !arg_1, arg_0, false)), vec4<bool>((true || all(vec3<bool>(arg_1, arg_1, false))) && arg_1, true, false, !(!(!arg_1))), select(select(vec4<bool>(any(vec3<bool>(arg_0, true, arg_1)), !arg_1, true, true), vec4<bool>(false, !arg_0, arg_3.a <= arg_3.a, true), vec4<bool>(all(vec2<bool>(true, true)), true, arg_0, true)), !vec4<bool>(true, false, arg_0, any(vec2<bool>(true, arg_1))), u_input.e.x <= firstLeadingBit(arg_3.a)));
    var var_1 = _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.e, u_input.a), u_input.a);
    var_1 = abs(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(u_input.e.x, u_input.e.x & 20241u), reverseBits(6294u), ~u_input.a.x ^ u_input.b), vec3<u32>(arg_3.a, ~u_input.a.x, select(arg_3.a, firstTrailingBit(arg_3.a), true))));
    let var_2 = Struct_1(1u);
    let var_3 = !(!var_0.xw);
    return var_2.a;
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: f32) -> vec4<bool> {
    var var_0 = arg_1;
    var var_1 = arg_1;
    let var_2 = !vec2<bool>(false != (_wgslsmith_f_op_f32(trunc(arg_2)) > _wgslsmith_f_op_f32(max(602f, arg_2))), any(vec3<bool>(any(vec2<bool>(false, true)), arg_2 > arg_2, arg_1.a > arg_1.a)));
    var_1 = arg_1;
    var_1 = Struct_1(select(~func_3(false, var_2.x, u_input.d.xxx, arg_1), 3438u, select(!var_2.x, false | var_2.x, true)) >> (~(~var_1.a & ~var_0.a) % 32u));
    return !vec4<bool>(all(select(vec4<bool>(var_2.x, false, var_2.x, false), select(vec4<bool>(var_2.x, var_2.x, false, false), vec4<bool>(var_2.x, var_2.x, var_2.x, false), var_2.x), select(vec4<bool>(false, var_2.x, var_2.x, false), vec4<bool>(false, false, true, false), var_2.x))), !(!var_2.x), var_2.x, var_2.x);
}

fn func_4(arg_0: bool, arg_1: vec4<u32>, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_2.yy;
    var var_1 = arg_3;
    var_1 = Struct_1(~arg_1.x >> (~abs(10444u << (u_input.e.x % 32u)) % 32u));
    var var_2 = -u_input.c;
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -505f);
    return arg_3;
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_div_u32(12822u, u_input.a.x));
    return func_4(false, ~vec4<u32>(1u, 4294967295u, _wgslsmith_mod_u32(u_input.b, u_input.b), 0u), vec4<bool>(any(select(func_2(u_input.c.x, Struct_1(16539u), 1560f), select(vec4<bool>(false, true, arg_0.x, arg_0.x), vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), arg_0.x), select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), vec4<bool>(true, true, arg_0.x, false), false))), func_2(~2147483647i, var_0, _wgslsmith_f_op_f32(-1054f + _wgslsmith_f_op_f32(577f - 208f))).x, !all(vec3<bool>(arg_0.x, arg_0.x, true)), any(!select(vec4<bool>(true, arg_0.x, false, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, false, true), false))), var_0);
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(1798f)))) - _wgslsmith_f_op_f32(step(-748f, _wgslsmith_f_op_f32(trunc(-1011f))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 575f) + _wgslsmith_f_op_f32(round(-387f))), _wgslsmith_f_op_f32(floor(-293f)))) + vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-1439f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-531f)) * -1237f))), _wgslsmith_div_f32(-1000f, 2421f)));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(abs(-561f)));
    var var_2 = true;
    var_0 = -2081f;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec2<bool>((-2147483647i >> (_wgslsmith_sub_u32(u_input.e.x, 0u) % 32u)) > -(-41223i & u_input.c.x), !func_5(~u_input.a, func_1(vec2<bool>(false, false), Struct_1(u_input.b)), Struct_1(4294967295u), func_1(vec2<bool>(true, false), Struct_1(u_input.a.x))));
    var var_1 = Struct_1(4294967295u);
    var var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1f, 1f, 1f, 1f))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(693f)))), 250f, _wgslsmith_f_op_f32(f32(-1f) * -668f), 1000f))), vec4<f32>(1f, 1f, 1f, 1f)));
    var var_3 = ~(~(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, 63998i, u_input.c.x, -1i), vec4<i32>(-59870i, -16181i, 14730i, 0i)) << (vec4<u32>(var_1.a, u_input.b, 4294967295u, var_1.a) % vec4<u32>(32u))) >> (~vec4<u32>(~31953u, ~95220u, ~32939u, _wgslsmith_sub_u32(var_1.a, var_1.a)) % vec4<u32>(32u)));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-920f, 291f, var_2.x, 1207f), vec4<f32>(867f, 775f, var_2.x, -465f)) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -776f), -1000f, _wgslsmith_f_op_f32(-1028f + 877f), _wgslsmith_f_op_f32(f32(-1f) * -573f)))));
    var_1 = Struct_1(max(u_input.b << (1u % 32u), _wgslsmith_add_u32(1u, ~_wgslsmith_div_u32(1u, var_1.a))));
    let x = u_input.a;
    s_output = StorageBuffer(-146f, _wgslsmith_div_i32(var_3.x, 23288i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_2.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -418f) - _wgslsmith_f_op_f32(select(var_2.x, var_2.x, any(vec3<bool>(false, true, var_0.x)))))), vec4<u32>(~19547u, var_1.a, func_3(true, true, ~(~vec3<i32>(1i, 2147483647i, u_input.d.x)), func_4(false, firstTrailingBit(vec4<u32>(1161u, var_1.a, 1u, 1u)), func_2(u_input.d.x, Struct_1(var_1.a), -1331f), func_1(var_0, Struct_1(1u)))), u_input.b), _wgslsmith_div_vec3_f32(vec3<f32>(var_2.x, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -351f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, var_2.x)))));
}

