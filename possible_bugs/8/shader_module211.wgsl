struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 881f;

var<private> global1: Struct_1 = Struct_1(i32(-2147483648));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: Struct_1, arg_3: vec2<bool>) -> vec4<u32> {
    let var_0 = arg_0.b;
    let var_1 = arg_0;
    let var_2 = -1317f;
    global1 = Struct_1(_wgslsmith_div_i32(abs(_wgslsmith_clamp_i32(~arg_2.a, arg_2.a, _wgslsmith_div_i32(1i, global1.a))), -42338i));
    global1 = Struct_1(u_input.a);
    return _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, _wgslsmith_mult_u32(78266u, (4294967295u & u_input.c.x) >> (abs(0u) % 32u)), arg_1, var_1.b.b.x), vec4<u32>(reverseBits(27573u), u_input.b, abs(1u), _wgslsmith_mod_u32(abs(_wgslsmith_mod_u32(arg_1, arg_0.b.b.x)), max(~var_0.b.x, ~arg_0.b.b.x))));
}

fn func_2() -> i32 {
    let var_0 = true;
    global1 = Struct_1(_wgslsmith_sub_i32(u_input.a, -807i));
    var var_1 = _wgslsmith_add_vec4_u32(~countOneBits(func_3(Struct_3(vec3<f32>(415f, 968f, 1578f), Struct_2(u_input.d, vec2<u32>(62743u, 4294967295u), vec2<f32>(-511f, 953f))), u_input.b, Struct_1(global1.a), !vec2<bool>(var_0, var_0))), vec4<u32>(1u, u_input.b, ~_wgslsmith_sub_u32(u_input.c.x, 41562u), ~u_input.c.x));
    let var_2 = -u_input.a;
    var var_3 = !select(!(!(!vec4<bool>(var_0, false, true, false))), vec4<bool>(var_0, true, select(var_0 & var_0, var_0, any(vec4<bool>(var_0, var_0, var_0, true))), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1395f + 640f)) != _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(773f * 1000f))));
    return -(~global1.a ^ (var_2 ^ u_input.a));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: Struct_1) -> Struct_3 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(863f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -668f))));
    var var_0 = _wgslsmith_f_op_f32(746f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + 552f) * -338f) - _wgslsmith_f_op_f32(step(arg_0.x, -1748f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -339f)) + _wgslsmith_f_op_f32(-arg_0.x)))));
    var var_1 = _wgslsmith_clamp_i32(arg_2.a, _wgslsmith_sub_i32(~func_2(), abs(countOneBits(2147483647i))), u_input.a) | -4813i;
    var var_2 = -global1.a;
    return Struct_3(vec3<f32>(1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(arg_0.x, arg_0.x)), -370f)), _wgslsmith_f_op_f32(min(400f, _wgslsmith_f_op_f32(round(172f))))), Struct_2(29012u, _wgslsmith_sub_vec2_u32(~abs(u_input.c.zz), u_input.c.zy), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(arg_0.zx, vec2<f32>(-537f, 268f)))))));
}

fn func_4(arg_0: Struct_3) -> u32 {
    global1 = Struct_1(1i);
    var var_0 = Struct_1(-1i);
    var var_1 = any(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(all(vec4<bool>(true, false, true, false)), true, all(vec4<bool>(false, false, true, true)), arg_0.b.b.x <= u_input.d), (arg_0.b.a < 4294967295u) & any(vec3<bool>(true, false, false))), vec4<bool>(true, true, true, true), select(vec4<bool>(all(vec2<bool>(false, true)), all(vec3<bool>(false, true, true)), true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    let var_2 = _wgslsmith_f_op_f32(max(arg_0.b.c.x, _wgslsmith_f_op_f32(-arg_0.a.x)));
    var var_3 = u_input.b;
    return arg_0.b.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(u_input.a);
    var var_0 = _wgslsmith_f_op_f32(891f - 1158f);
    var var_1 = u_input.b;
    let var_2 = Struct_2(u_input.d | (func_4(func_1(vec3<f32>(-1830f, 280f, 387f), vec4<bool>(true, true, true, true), Struct_1(-2147483647i))) << (~_wgslsmith_mult_u32(45007u, 1u) % 32u)), ~_wgslsmith_mod_vec2_u32(~(u_input.c.zz >> (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u))), abs(~u_input.c.xz)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(976f, -160f) * vec2<f32>(-1888f, 1448f)) - vec2<f32>(501f, 1000f)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(130f, 672f) + vec2<f32>(492f, -804f)))))) + vec2<f32>(-1714f, _wgslsmith_f_op_f32(-238f + _wgslsmith_f_op_f32(1079f * 701f)))));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -212f);
    var_1 = func_4(Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.c.x, var_2.c.x, var_2.c.x), vec3<f32>(-574f, var_2.c.x, var_2.c.x), vec3<bool>(true, true, true))), _wgslsmith_div_vec3_f32(vec3<f32>(var_2.c.x, 507f, var_2.c.x), vec3<f32>(var_2.c.x, var_2.c.x, var_2.c.x)))), Struct_2(~23174u, var_2.b, var_2.c)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~4294967295u >> (~(~var_2.a) % 32u), 1u), _wgslsmith_f_op_f32(round(-658f)), -511f);
}

