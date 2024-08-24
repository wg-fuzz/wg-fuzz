struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: f32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<vec3<i32>, 32>;

var<private> global2: array<Struct_3, 26>;

var<private> global3: bool = true;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<bool>, arg_2: vec3<f32>, arg_3: Struct_3) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_2.x + arg_3.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(311f, global0.x)))), _wgslsmith_f_op_vec2_f32(-arg_2.zy))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-arg_2.yz))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1451f), _wgslsmith_f_op_f32(global0.x + -337f)))));
    return ~1u;
}

fn func_2(arg_0: Struct_2) -> vec2<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1189f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-417f + 1134f)) - global0.x)), 2094u);
    let var_1 = vec3<u32>(abs(func_3(~vec4<u32>(6073u, 103210u, 75452u, 0u), vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1811f, 145f, var_0.a)))), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(arg_0.a.b, 4294967295u), var_0.b << (1u % 32u)), 26u)])), max(_wgslsmith_div_u32(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(12205u, 97960u, 0u, 4294967295u), vec4<u32>(98820u, 10089u, arg_0.a.b, arg_0.a.b))), _wgslsmith_add_u32(~34790u, reverseBits(var_0.b))), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(var_0.b, var_0.b, 40557u)), vec3<u32>(8292u | var_0.b, _wgslsmith_div_u32(4294967295u, 30417u), 24107u ^ var_0.b))), reverseBits(func_3(vec4<u32>(arg_0.a.b, arg_0.a.b, 1u, var_0.b), vec2<bool>(any(vec3<bool>(false, false, true)), true), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1776f, -1713f, -2028f) - vec3<f32>(var_0.a, 682f, global0.x)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-298f, -330f, var_0.a)))), Struct_3(~vec2<u32>(49973u, 977u), _wgslsmith_div_i32(-31069i, -18563i), ~1u, -1040f, vec2<bool>(true, false)))));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(trunc(global0.x)), -265f);
    var var_2 = u_input.a;
    global3 = any(!(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false))) & (all(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true), true)) || (_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), var_0.a) == _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.a.a)))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, 1857f))))), vec2<f32>(_wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(-1351f - -1269f)), global0.x), vec2<bool>(all(vec3<bool>(true, true, true)), true))) + vec2<f32>(235f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1354f - arg_0.a.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a * -994f) * -352f))));
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_3(countOneBits(vec2<u32>(1u, 1u)), 66332i, _wgslsmith_dot_vec2_u32(vec2<u32>(30450u, 1u), abs(max(vec2<u32>(46948u, 1u), ~vec2<u32>(170225u, 4294967295u)))), _wgslsmith_f_op_f32(min(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.x * global0.x)))))), vec2<bool>(true, any(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), false))));
    let var_1 = countOneBits(1u << (var_0.c % 32u));
    global0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(158f, -1803f), vec2<f32>(var_0.d, var_0.d))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1175f, 1811f))))), _wgslsmith_f_op_vec2_f32(func_2(Struct_2(Struct_1(var_0.d, min(42883u, 4294967295u)))))));
    global2 = array<Struct_3, 26>();
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1012f)) - -901f), ~(var_0.a.x | abs(32494u)));
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1011f)) - var_0.d), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(6073u, 1u, var_1, 36921u) | vec4<u32>(23624u, 1u, var_0.c, var_1), firstLeadingBit(vec4<u32>(var_1, var_1, var_1, var_1))), var_0.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_3, 26>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-425f * 1050f));
    let var_1 = func_1();
    var var_2 = 61799u;
    global1 = array<vec3<i32>, 32>();
    var var_3 = global2[_wgslsmith_index_u32(~0u, 26u)];
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}

