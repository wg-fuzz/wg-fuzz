struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec4<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 15> = array<i32, 15>(0i, -1i, 2147483647i, 7033i, 68242i, 6319i, -1i, i32(-2147483648), -1i, i32(-2147483648), 422i, 21666i, -20967i, -59046i, i32(-2147483648));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: i32, arg_1: vec3<u32>) -> f32 {
    global0 = array<i32, 15>();
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(209f, 338f, 1000f, 451f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1487f, -510f, 1705f, -1082f), vec4<f32>(-1324f, -1000f, -2461f, -1146f), vec4<bool>(false, false, false, true))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -804f, -1000f, -136f))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1339f, -488f, -176f, -1806f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2041f, 454f, -1000f, 814f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(vec4<f32>(838f, 515f, -891f, -1003f) * vec4<f32>(-1463f, -2840f, -491f, 1164f)), vec4<bool>(true, false, true, false))), vec4<bool>(true, true, true, true)))));
    let var_1 = Struct_1(1031f);
    global0 = array<i32, 15>();
    global0 = array<i32, 15>();
    return -1227f;
}

fn func_2(arg_0: vec2<f32>, arg_1: bool, arg_2: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * 286f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(44081u, 15u)], global0[_wgslsmith_index_u32(u_input.d.x, 15u)]), vec3<u32>(1u, 0u, 20611u) >> (vec3<u32>(u_input.d.x, 0u, u_input.a.x) % vec3<u32>(32u))))))));
    var var_1 = !(!(!(4854i <= global0[_wgslsmith_index_u32(~arg_2, 15u)])));
    var var_2 = Struct_2(!(!vec2<bool>(arg_1 && true, all(vec2<bool>(arg_1, arg_1)))), Struct_1(arg_0.x), u_input.c);
    var var_3 = 995f;
    var_0 = -734f;
    return var_2.b;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: Struct_2) -> f32 {
    let var_0 = !arg_2.a.x;
    global0 = array<i32, 15>();
    var var_1 = arg_1.yxx;
    global0 = array<i32, 15>();
    let var_2 = func_2(vec2<f32>(_wgslsmith_f_op_f32(-arg_2.b.a), arg_2.b.a), any(!select(!vec3<bool>(true, false, arg_2.a.x), vec3<bool>(false, var_0, true), true)), u_input.d.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-871f * arg_2.b.a));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<f32>) -> Struct_2 {
    return Struct_2(vec2<bool>(all(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), false)), all(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true), true))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1257f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-262f, arg_1.x)) - _wgslsmith_f_op_f32(f32(-1f) * -626f)))), -_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 0i, -31849i, 2147483647i) << (vec4<u32>(4294967295u, 1u, 4294967295u, 102591u) % vec4<u32>(32u)), vec4<i32>(u_input.c, -39687i, global0[_wgslsmith_index_u32(1u, 15u)], 16287i) << (u_input.d % vec4<u32>(32u))), -15972i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(-731f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec4<f32>(-1649f, -301f, -829f, 1355f), vec4<i32>(u_input.b, u_input.e, -1i, u_input.e), Struct_2(vec2<bool>(false, true), Struct_1(185f), 2147483647i))) * _wgslsmith_f_op_f32(f32(-1f) * -240f)), _wgslsmith_f_op_f32(-904f + _wgslsmith_f_op_f32(step(351f, -1500f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1083f), func_2(vec2<f32>(907f, 334f), true, u_input.a.x).a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(637f, -1469f), vec2<f32>(-849f, 700f)))), true))));
    let var_1 = -(~(var_0.c ^ reverseBits(i32(-1i) * -1063i)));
    global0 = array<i32, 15>();
    let var_2 = ~_wgslsmith_mod_vec3_u32(~u_input.d.zxy, vec3<u32>(4294967295u, ~0u, u_input.a.x));
    var var_3 = -141f;
    var_0 = Struct_2(!select(select(select(var_0.a, var_0.a, var_0.a), var_0.a, var_0.a.x & var_0.a.x), select(vec2<bool>(false, true), vec2<bool>(true, true), !vec2<bool>(var_0.a.x, var_0.a.x)), func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.a, -602f, var_0.b.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1957f, var_0.b.a) - vec2<f32>(var_0.b.a, var_0.b.a))).a), Struct_1(-279f), u_input.e);
    let var_4 = 22835u;
    let var_5 = firstLeadingBit(vec2<i32>(35191i, 1i));
    var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b.a), var_0.b.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.b.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.b.a)) * _wgslsmith_f_op_f32(trunc(919f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, vec2<i32>(var_5.x, -var_0.c), -59015i, ~firstLeadingBit(firstTrailingBit(u_input.d)) ^ vec4<u32>(~u_input.d.x, var_4, _wgslsmith_mult_u32(~20965u, _wgslsmith_div_u32(var_2.x, var_4)), (u_input.a.x ^ 36899u) | _wgslsmith_clamp_u32(4294967295u, u_input.a.x, var_4)), u_input.d);
}

