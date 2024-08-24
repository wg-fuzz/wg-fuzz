struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<i32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: Struct_3,
    d: vec2<u32>,
}

struct Struct_5 {
    a: bool,
    b: vec4<f32>,
    c: Struct_4,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<i32> = vec3<i32>(-21859i, i32(-2147483648), 1674i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<f32>) -> bool {
    var var_0 = false;
    var_0 = all(select(select(select(vec3<bool>(global0.a, global0.a, global0.a), vec3<bool>(false, true, global0.a), global0.a), select(vec3<bool>(global0.a, global0.a, global0.a), vec3<bool>(false, true, global0.a), true), !global0.a), vec3<bool>(global0.a, global0.a, false), global0.a)) | any(!(!vec4<bool>(global0.a, global0.a, global0.a, global0.a)));
    var var_1 = ~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(global0.b.wxx, global0.b.zzw), global0.b.zxx), 0u >> (0u % 32u));
    global0 = Struct_1(false && global0.a, global0.b);
    var var_2 = vec3<bool>(any(vec4<bool>(true, !any(vec4<bool>(true, global0.a, false, false)), false, !(!global0.a))), any(vec3<bool>(true, true, true)), ~1u != global0.b.x);
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(trunc(-1042f)))), arg_0.x)) == _wgslsmith_div_f32(arg_0.x, arg_0.x);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_2) -> f32 {
    global0 = arg_0;
    var var_0 = Struct_1(!func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1361f, arg_2.a, -1874f))), ~_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(global0.b, ~global0.b), arg_2.b));
    var var_1 = Struct_5(arg_0.a, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1.a.x, -569f, -2210f, arg_1.a.x))))))), Struct_4(!all(vec4<bool>(false, arg_0.a, false, true)), Struct_1(global0.a, ~vec4<u32>(var_0.b.x, 0u, var_0.b.x, arg_0.b.x)), Struct_3(arg_1.a, ~arg_1.b), ~vec2<u32>(select(4294967295u, 36640u, arg_0.a), var_0.b.x)), Struct_1(arg_1.b.x == (i32(-1i) * -75845i), var_0.b), ~u_input.b);
    var var_2 = arg_1;
    var var_3 = arg_1.b.x;
    return 1f;
}

fn func_4(arg_0: vec3<f32>, arg_1: bool) -> vec3<i32> {
    return u_input.a;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<f32>) -> bool {
    var var_0 = !select(arg_0.yx, !arg_0.yy, !any(vec2<bool>(false, arg_0.x)) && !global0.a);
    let var_1 = -vec4<i32>(66892i, 2147483647i, ~global1.x, _wgslsmith_dot_vec3_i32(u_input.a, -vec3<i32>(u_input.b, u_input.b, 39343i) | vec3<i32>(24756i, global1.x, -14954i)));
    global1 = func_4(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(Struct_1(global0.a, vec4<u32>(u_input.c.x, 54811u, u_input.c.x, u_input.c.x)), Struct_3(vec3<f32>(arg_1.x, arg_1.x, -1097f), vec4<i32>(-991i, var_1.x, -3683i, global1.x)), Struct_2(arg_1.x, vec4<u32>(4294967295u, 28143u, global0.b.x, 4294967295u), u_input.b, 35431u, Struct_1(var_0.x, vec4<u32>(global0.b.x, global0.b.x, 4294967295u, u_input.c.x))))), 1028f)), arg_1.x, -306f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(max(arg_1.x, arg_1.x)), _wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(-475f * arg_1.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, arg_1.x, arg_1.x)), select(arg_0, vec3<bool>(arg_0.x, global0.a, var_0.x), vec3<bool>(arg_0.x, false, false)))), !any(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, global0.a, true), global0.a)))), false);
    var var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-185f, _wgslsmith_f_op_f32(-1000f + -998f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-685f, 391f)))))));
    var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1063f, 495f, 1125f)), vec3<f32>(-1000f, 1055f, 118f), global0.a))))), abs(max(-abs(vec4<i32>(u_input.a.x, -1068i, -1i, u_input.b)), ~(~vec4<i32>(global1.x, global1.x, global1.x, u_input.b)))));
    var var_1 = Struct_1(any(!(!select(vec2<bool>(global0.a, global0.a), vec2<bool>(false, global0.a), vec2<bool>(global0.a, true)))), _wgslsmith_sub_vec4_u32(~(~global0.b), global0.b));
    var var_2 = vec2<bool>(true, true);
    var_2 = select(select(vec2<bool>(global0.a && var_1.a, var_1.a & (4294967295u >= global0.b.x)), select(vec2<bool>(var_2.x, false), !vec2<bool>(var_2.x, true), any(vec3<bool>(global0.a, false, var_1.a)) | all(vec4<bool>(var_1.a, true, global0.a, false))), true), !(!vec2<bool>(true, func_1(vec3<bool>(true, global0.a, false), vec2<f32>(var_0.a.x, var_0.a.x)))), var_2.x);
    let var_3 = var_0.b;
    let var_4 = Struct_1(!(!var_2.x), ~var_1.b ^ vec4<u32>(_wgslsmith_sub_u32(1u | var_1.b.x, 0u), u_input.c.x, ~18699u, firstLeadingBit(_wgslsmith_sub_u32(global0.b.x, var_1.b.x))));
    let var_5 = Struct_1(any(select(vec4<bool>(true, func_1(vec3<bool>(false, var_4.a, true), vec2<f32>(var_0.a.x, var_0.a.x)), all(vec2<bool>(var_2.x, var_1.a)), false), vec4<bool>(true, false, all(vec4<bool>(global0.a, var_1.a, global0.a, true)), true != var_1.a), !(!vec4<bool>(var_1.a, var_4.a, var_2.x, false)))), vec4<u32>(106037u, ~39676u, 0u, abs(var_4.b.x)) >> (countOneBits(~(~var_4.b)) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(-1i), var_3.xy);
}

