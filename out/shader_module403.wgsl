struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
    c: vec3<i32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: f32,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 30> = array<vec2<i32>, 30>(vec2<i32>(0i, 0i), vec2<i32>(-18192i, 1i), vec2<i32>(55508i, i32(-2147483648)), vec2<i32>(0i, -1i), vec2<i32>(17970i, -9619i), vec2<i32>(2147483647i, -9078i), vec2<i32>(-16123i, -1941i), vec2<i32>(-13672i, -1i), vec2<i32>(-21533i, -10664i), vec2<i32>(-15619i, 2147483647i), vec2<i32>(-31884i, 1i), vec2<i32>(0i, 13748i), vec2<i32>(9776i, 0i), vec2<i32>(55241i, 0i), vec2<i32>(-19445i, 1i), vec2<i32>(3092i, 36045i), vec2<i32>(45384i, 16299i), vec2<i32>(43066i, 0i), vec2<i32>(0i, -7373i), vec2<i32>(1i, 2147483647i), vec2<i32>(0i, -25766i), vec2<i32>(0i, -47555i), vec2<i32>(0i, 1i), vec2<i32>(-7321i, 0i), vec2<i32>(-8024i, -19623i), vec2<i32>(40740i, -15078i), vec2<i32>(1i, 12878i), vec2<i32>(1i, -37290i), vec2<i32>(2147483647i, -24379i), vec2<i32>(41876i, -40593i));

var<private> global1: vec3<bool> = vec3<bool>(true, true, false);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32) -> vec3<bool> {
    var var_0 = 2147483647i;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-756f * -557f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-209f, 1334f))))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -386f), -1000f, _wgslsmith_f_op_f32(-484f - var_1), var_1);
    var var_3 = var_2.wxy;
    var var_4 = select(select(vec4<bool>(!global1.x, false, any(!vec3<bool>(global1.x, false, global1.x)), any(vec2<bool>(false, false))), !select(select(vec4<bool>(global1.x, global1.x, true, global1.x), vec4<bool>(false, global1.x, true, global1.x), vec4<bool>(true, false, false, global1.x)), !vec4<bool>(false, false, global1.x, true), select(vec4<bool>(false, true, true, global1.x), vec4<bool>(global1.x, false, global1.x, true), vec4<bool>(global1.x, global1.x, false, global1.x))), false | select(!global1.x, all(vec4<bool>(false, global1.x, false, false)), global1.x)), vec4<bool>(!((global1.x && true) && global1.x), true != all(!global1.yz), false || global1.x, any(select(vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(true, global1.x, global1.x), vec3<bool>(false, true, global1.x))) || true), arg_0 < u_input.a.x);
    return !(!var_4.zwy);
}

fn func_2(arg_0: u32, arg_1: vec3<u32>, arg_2: bool) -> vec4<bool> {
    global1 = func_3(u_input.a.x);
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(673f, 534f))))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-866f, var_0, var_0) * vec3<f32>(-1482f, var_0, var_0)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(2661f, 1012f, var_0) + vec3<f32>(1276f, var_0, var_0)), vec3<f32>(var_0, var_0, 444f))))))));
    let var_2 = _wgslsmith_clamp_vec3_u32(u_input.b.yww, ~vec3<u32>(_wgslsmith_div_u32(4294967295u, 4294967295u), abs(arg_1.x), 54650u), vec3<u32>(~(~arg_1.x), arg_0, ~arg_1.x)) | vec3<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(1991u, 58896u), _wgslsmith_dot_vec2_u32(u_input.b.wy, vec2<u32>(arg_1.x, arg_1.x))) & u_input.b.x, arg_0, _wgslsmith_mult_u32(~arg_0, abs(arg_0)) & 0u);
    var var_3 = Struct_1(!select(!vec4<bool>(false, global1.x, arg_2, true), !(!vec4<bool>(false, false, arg_2, arg_2)), vec4<bool>(global1.x, arg_2, !arg_2, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-271f - var_0)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0))) + var_1.x))));
    return var_3.a;
}

fn func_1(arg_0: bool) -> bool {
    var var_0 = Struct_1(func_2(min(u_input.b.x, u_input.b.x), vec3<u32>(~reverseBits(u_input.b.x), max(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 27100u, u_input.b.x), u_input.b.zyz), _wgslsmith_mult_u32(u_input.b.x, u_input.b.x)), 4294967295u), arg_0), -459f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1469f - 804f), -1297f))))));
    let var_1 = !(false & all(vec4<bool>(any(vec3<bool>(global1.x, true, true)), arg_0, true, true)));
    let var_2 = Struct_1(select(vec4<bool>(arg_0 && false, all(var_0.a.zzy) | arg_0, -2147483647i >= _wgslsmith_add_i32(26352i, u_input.a.x), (u_input.b.x | u_input.b.x) <= _wgslsmith_add_u32(u_input.b.x, 53100u)), select(vec4<bool>(global1.x && true, true, global1.x && false, true), select(var_0.a, var_0.a, vec4<bool>(true, true, var_1, var_0.a.x)), !arg_0), var_0.a), 796f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.b)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-770f)))))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.b, _wgslsmith_f_op_f32(-var_0.b)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -703f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.b))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(2347f, var_2.b) * _wgslsmith_f_op_f32(-var_2.c)))));
    global1 = func_3(1i);
    return !(!(!var_2.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 30>();
    let var_0 = u_input.b.x;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1110f);
    global1 = vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-456f, 148f) - _wgslsmith_f_op_f32(-1592f * -453f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-429f, -953f)), 185f, false))) > 1f, func_1(false || global1.x), any(func_2(9477u, vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, var_0), vec3<u32>(var_0, u_input.b.x, 51766u)), 35793u, max(var_0, 13105u)), global1.x).wx));
    var var_2 = false;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(400f + -1911f)) * _wgslsmith_f_op_f32(f32(-1f) * -422f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-583f, _wgslsmith_f_op_f32(f32(-1f) * -1170f))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f * 1307f)))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -387f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1987f, -1817f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(972f - -2009f), _wgslsmith_f_op_f32(-656f + -1045f))))), _wgslsmith_f_op_f32(-374f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1359f, -639f)))), vec2<u32>(4294967295u, u_input.b.x));
}

