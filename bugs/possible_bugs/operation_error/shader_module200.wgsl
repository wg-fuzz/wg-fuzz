struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec4<bool>,
    d: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-626f, 199f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.b.x), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(592f))), arg_1.b.x)));
    var var_1 = arg_3;
    var var_2 = Struct_2(var_0.zxy, any(!select(!arg_3.c.wz, arg_1.c.yw, arg_3.c.x)));
    var var_3 = var_2.a.x;
    return !arg_3.c.yw;
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: Struct_3, arg_3: f32) -> vec2<i32> {
    var var_0 = global0.x;
    let var_1 = arg_2.b.d != 4294967295u;
    var var_2 = u_input.a.x;
    let var_3 = _wgslsmith_mult_i32(-1i, ~countOneBits(-arg_2.b.a)) & (arg_1 | -2897i);
    let var_4 = arg_2.b;
    return select(vec2<i32>(~firstTrailingBit(firstLeadingBit(arg_2.b.a)), -16426i), -vec2<i32>(-36901i, -(u_input.a.x & arg_2.b.a)), !(!var_1));
}

fn func_1(arg_0: u32, arg_1: vec4<i32>, arg_2: i32) -> f32 {
    global0 = vec2<f32>(_wgslsmith_div_f32(global0.x, global0.x), _wgslsmith_f_op_f32(f32(-1f) * -375f));
    let var_0 = vec2<bool>(false & any(!func_2(vec2<i32>(arg_2, arg_1.x), Struct_1(-2147483647i, vec2<f32>(-1512f, global0.x), vec4<bool>(false, false, true, false), 0u), vec3<f32>(447f, global0.x, -1064f), Struct_1(0i, vec2<f32>(global0.x, -1134f), vec4<bool>(false, false, false, true), 14608u))), func_2(func_3(select(arg_0, 36751u, select(true, false, false)), countOneBits(arg_1.x & arg_1.x), Struct_3(vec2<bool>(true, true), Struct_1(-21909i, vec2<f32>(global0.x, global0.x), vec4<bool>(false, false, false, true), arg_0), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false)), global0.x), Struct_1(u_input.a.x, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.x, 1197f), _wgslsmith_f_op_vec2_f32(vec2<f32>(149f, global0.x) + vec2<f32>(global0.x, global0.x)))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), ~arg_0), vec3<f32>(_wgslsmith_f_op_f32(min(global0.x, -627f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(709f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1238f, global0.x)), global0.x)), Struct_1(-1i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-193f, global0.x), vec2<f32>(-1012f, -688f), vec2<bool>(false, false))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x))), vec4<bool>(true, true, true, true), 28426u)).x);
    global0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 397f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 326f))))))));
    let var_1 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(global0.x)), 1343f)))), _wgslsmith_f_op_f32(step(492f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(299f - global0.x)))), 1428f), true);
    let var_2 = 1u;
    return 602f;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(min(reverseBits(vec4<i32>(1i, -73490i, i32(-1i) * -13083i, u_input.a.x & u_input.a.x)), u_input.a), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(836f - -521f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.x, global0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-523f * global0.x) + _wgslsmith_f_op_f32(937f + global0.x))), _wgslsmith_f_op_f32(305f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(21912u, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), -2147483647i)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(global0.x)), _wgslsmith_f_op_f32(sign(318f)), u_input.a.x > u_input.a.x))))), u_input.a.x, 15524u);
}

