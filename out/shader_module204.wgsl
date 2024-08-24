struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 14>;

var<private> global1: array<Struct_1, 27>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<f32>, arg_1: f32, arg_2: vec3<bool>, arg_3: vec3<bool>) -> u32 {
    var var_0 = Struct_1(-abs(vec3<i32>(firstTrailingBit(2147483647i), 31142i, -1i)), u_input.c, -1000f);
    var var_1 = global1[_wgslsmith_index_u32(~u_input.e.x, 27u)];
    var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.b, 31236u), 27u)];
    global1 = array<Struct_1, 27>();
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(arg_0, _wgslsmith_f_op_vec4_f32(max(arg_0, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1698f, -186f, arg_0.x, 746f))))))));
    return var_0.b;
}

fn func_2(arg_0: i32, arg_1: vec2<i32>, arg_2: u32, arg_3: vec3<bool>) -> i32 {
    var var_0 = u_input.e.xy;
    var_0 = ~u_input.e.xy >> (max(vec2<u32>(min(~57997u, ~1u), ~select(var_0.x, arg_2, true)), _wgslsmith_sub_vec2_u32(select(vec2<u32>(9245u, 26631u), u_input.e.yy, arg_3.x) << (u_input.e.yy % vec2<u32>(32u)), vec2<u32>(func_3(vec4<f32>(global0[_wgslsmith_index_u32(0u, 14u)], 191f, -503f, global0[_wgslsmith_index_u32(u_input.b, 14u)]), 357f, arg_3, vec3<bool>(arg_3.x, false, false)), u_input.c & u_input.c))) % vec2<u32>(32u));
    global1 = array<Struct_1, 27>();
    let var_1 = vec3<bool>(true | arg_3.x, any(vec2<bool>(!arg_3.x, !arg_3.x && select(arg_3.x, true, true))), _wgslsmith_clamp_i32(-_wgslsmith_clamp_i32(0i, -2147483647i, 2968i), -_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -10890i, arg_0), vec3<i32>(-6266i, arg_0, u_input.a)), -_wgslsmith_div_i32(2385i, u_input.a)) == arg_0);
    var var_2 = global0[_wgslsmith_index_u32(~23829u, 14u)];
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec3<bool>, arg_3: vec2<bool>) -> Struct_1 {
    global1 = array<Struct_1, 27>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0[_wgslsmith_index_u32(min(_wgslsmith_clamp_u32(1u, 4294967295u, u_input.b), _wgslsmith_mult_u32(34767u, arg_0.b)), 14u)], _wgslsmith_f_op_f32(max(-2087f, _wgslsmith_f_op_f32(f32(-1f) * -2481f))), -496f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(648f, global0[_wgslsmith_index_u32(56205u, 14u)], global0[_wgslsmith_index_u32(arg_0.b, 14u)])))))))));
    let var_1 = _wgslsmith_f_op_f32(-673f - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(79618u, 14u)])) > 187f;
    global0 = array<f32, 14>();
    global1 = array<Struct_1, 27>();
    return Struct_1(vec3<i32>(func_2(i32(-1i) * -arg_1, vec2<i32>(arg_1, abs(0i)), _wgslsmith_clamp_u32(8626u, 0u, u_input.b), select(select(arg_2, arg_2, arg_2), select(arg_2, vec3<bool>(arg_2.x, true, var_1), arg_2), vec3<bool>(true, true, true))), -(~(-arg_1)), -1i), 15227u, 630f);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    global0 = array<f32, 14>();
    var var_0 = func_4(arg_2, firstTrailingBit(-25631i), !(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), true)), vec2<bool>(all(!select(vec2<bool>(false, true), vec2<bool>(false, true), true)), !(func_2(106619i, vec2<i32>(arg_3, arg_1.a.x), arg_1.b, vec3<bool>(true, true, false)) > arg_2.a.x)));
    var var_1 = func_4(arg_0, _wgslsmith_mult_i32(arg_1.a.x, 0i), !vec3<bool>(1i <= func_4(Struct_1(vec3<i32>(13034i, -23710i, -18420i), u_input.b, -670f), var_0.a.x, vec3<bool>(false, false, false), vec2<bool>(true, true)).a.x, !(2147483647i != var_0.a.x), true), vec2<bool>(!any(select(vec2<bool>(false, false), vec2<bool>(true, true), true)), (~53397i << ((var_0.b | arg_0.b) % 32u)) <= ~(-6043i)));
    var_1 = func_4(Struct_1(arg_0.a, ~var_1.b, var_0.c), arg_3, vec3<bool>(any(vec4<bool>(any(vec2<bool>(false, false)), any(vec4<bool>(false, false, false, false)), true, true)), false, false), select(!select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), false), vec2<bool>(true, all(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false)))), !(!select(vec2<bool>(true, true), vec2<bool>(false, false), false))));
    var var_2 = vec2<u32>(~(~abs(0u)), ~(arg_0.b | (_wgslsmith_mod_u32(39803u, 1u) << (_wgslsmith_clamp_u32(var_0.b, var_1.b, 11243u) % 32u))));
    return func_4(arg_0, ~var_0.a.x, select(!vec3<bool>(false, all(vec4<bool>(false, true, true, false)), any(vec3<bool>(true, true, false))), select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), true), select(any(vec4<bool>(true, true, false, true)), arg_0.c < -281f, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true))), _wgslsmith_f_op_f32(-arg_2.c) != _wgslsmith_f_op_f32(var_0.c * arg_1.c))), !vec2<bool>(any(vec3<bool>(true, true, true)), true || all(vec4<bool>(true, false, true, false))));
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: vec3<i32>) -> f32 {
    global1 = array<Struct_1, 27>();
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c, _wgslsmith_f_op_f32(f32(-1f) * -748f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c, _wgslsmith_f_op_f32(arg_0.c - _wgslsmith_div_f32(arg_0.c, 1000f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(361f, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, arg_0.b), 14u)]) * vec2<f32>(_wgslsmith_f_op_f32(floor(arg_0.c)), _wgslsmith_div_f32(344f, global0[_wgslsmith_index_u32(arg_0.b, 14u)])))));
    let var_1 = 2147483647i;
    var_0 = vec2<f32>(global0[_wgslsmith_index_u32(arg_0.b, 14u)], _wgslsmith_f_op_f32(1706f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1166f - _wgslsmith_f_op_f32(-arg_0.c)))));
    let var_2 = select(!select(vec2<bool>(true, true), vec2<bool>(true, true), !any(vec4<bool>(false, false, true, true))), !vec2<bool>(true, !all(vec3<bool>(false, false, true))), !all(vec2<bool>(all(vec2<bool>(true, true)), arg_2.x <= -14022i)));
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(48421u, 27u)];
    global0 = array<f32, 14>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(func_1(Struct_1(vec3<i32>(-73941i, 15723i, -1i), 4091u, 791f), global1[_wgslsmith_index_u32(u_input.d, 27u)], global1[_wgslsmith_index_u32(1u, 27u)], _wgslsmith_mod_i32(var_0.a.x, 31588i)), 24377u, var_0.a)) + 1223f) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(62529u, 22011u), 14u)] - _wgslsmith_div_f32(2126f, global0[_wgslsmith_index_u32(28818u, 14u)])) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1453f - -639f) + global0[_wgslsmith_index_u32(func_4(Struct_1(var_0.a, var_0.b, var_0.c), -1i, vec3<bool>(true, true, false), vec2<bool>(true, true)).b, 14u)])) * var_0.c);
    var var_2 = vec2<i32>(-_wgslsmith_mod_i32(i32(-1i) * -2147483647i, abs(var_0.a.x)), u_input.a) | vec2<i32>(u_input.a, var_0.a.x);
    let var_3 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.d, 14u)], global0[_wgslsmith_index_u32(3561u, 14u)]))))))));
    global0 = array<f32, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(-794f);
}

