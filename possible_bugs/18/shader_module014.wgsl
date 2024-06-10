struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 13>;

var<private> global1: Struct_2 = Struct_2(1i, Struct_1(false, true, vec4<bool>(true, true, false, false)));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_1) -> vec2<f32> {
    var var_0 = max(vec4<u32>(~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, 38075u, u_input.d, 5567u), max(vec4<u32>(u_input.c.x, 56419u, u_input.b, 29468u), vec4<u32>(18300u, 4294967295u, u_input.d, u_input.c.x))), 1u, min(u_input.c.x, u_input.a.x), _wgslsmith_dot_vec2_u32(~firstTrailingBit(u_input.a), ~(u_input.a << (u_input.a % vec2<u32>(32u))))), _wgslsmith_div_vec4_u32(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 4294967295u, u_input.b, 2887u), vec4<u32>(28369u, u_input.c.x, u_input.d, u_input.c.x))), firstLeadingBit(select(vec4<u32>(28704u, u_input.b, u_input.d, u_input.c.x), min(vec4<u32>(1u, u_input.d, 78619u, 11036u), vec4<u32>(u_input.c.x, u_input.b, 1u, 4294967295u)), global1.b.c))));
    var var_1 = arg_0;
    let var_2 = (var_0.x | var_0.x) | u_input.a.x;
    global1 = Struct_2(-(~(-28112i)) << (_wgslsmith_mult_u32((u_input.a.x | 61579u) | abs(u_input.d), var_2) % 32u), global1.b);
    global1 = Struct_2(2147483647i, global1.b);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 254f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(299f, -901f)))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0, _wgslsmith_f_op_f32(max(-1000f, arg_0)))))) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(443f + 2020f)), arg_0))));
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: vec3<i32>, arg_3: vec2<f32>) -> u32 {
    global1 = Struct_2(-8501i, Struct_1(true, false, vec4<bool>(!arg_0, true, !(u_input.a.x >= 0u), true)));
    var var_0 = _wgslsmith_sub_i32(arg_1, -arg_2.x << (14109u % 32u));
    global0 = array<vec4<f32>, 13>();
    var var_1 = select(select(vec3<bool>(true, false, !select(global1.b.c.x, true, global1.b.b)), global1.b.c.wyz, true), vec3<bool>(any(select(vec2<bool>(global1.b.a, false), !global1.b.c.yz, vec2<bool>(arg_0, arg_0))), arg_0, false), arg_0 != (global1.b.a && all(vec2<bool>(arg_0, arg_0))));
    let var_2 = all(select(vec2<bool>(global1.b.a, !arg_0 && false), select(vec2<bool>(arg_3.x >= arg_3.x, false), var_1.xx, 4294967295u >= u_input.d), global1.b.c.wy));
    return 0u;
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> bool {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-920f - -2751f), _wgslsmith_f_op_f32(f32(-1f) * -252f))) * _wgslsmith_f_op_f32(step(106f, _wgslsmith_f_op_f32(f32(-1f) * -531f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -556f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, -1000f, true)) * _wgslsmith_f_op_f32(trunc(1104f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1001f + -252f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -860f)), -798f))));
    var_0 = vec4<f32>(1f, -1762f, var_0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(332f - 1234f) - _wgslsmith_f_op_f32(round(var_0.x)))))));
    let var_1 = vec2<u32>(func_4(true, _wgslsmith_mod_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(3948i, arg_1.a), vec2<i32>(arg_1.a, arg_1.a)), ~(arg_0 | global1.a)), vec3<i32>(-abs(2147483647i), 8910i, global1.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(var_0.x, vec3<i32>(arg_0, global1.a, global1.a), Struct_1(global1.b.c.x, false, arg_1.b.c))), _wgslsmith_f_op_vec2_f32(-var_0.zw)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.xz) + vec2<f32>(var_0.x, -574f)))), 11927u);
    global0 = array<vec4<f32>, 13>();
    global1 = Struct_2(firstTrailingBit(arg_1.a), global1.b);
    return global1.b.c.x;
}

fn func_1() -> Struct_1 {
    global0 = array<vec4<f32>, 13>();
    let var_0 = !vec2<bool>(global1.b.a && true, true);
    global0 = array<vec4<f32>, 13>();
    let var_1 = Struct_2(-1i, global1.b);
    var var_2 = func_2(abs(global1.a), var_1) & any(global1.b.c.zwx);
    return Struct_1(!global1.b.a, all(!var_0), !vec4<bool>(var_0.x, false, func_2(1i, Struct_2(var_1.a, var_1.b)), all(vec3<bool>(false, false, global1.b.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(abs(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 14494i, 23168i, 1i), vec4<i32>(-1i, 0i, global1.a, 3213i)), vec4<i32>(-1i, global1.a, 5076i, global1.a) >> (vec4<u32>(u_input.c.x, u_input.d, 1u, u_input.c.x) % vec4<u32>(32u))) & 0i), func_1());
    let var_1 = vec4<i32>(min(var_0.a, select(57202i, -2147483647i, true)) >> (max(4294967295u, ~u_input.d << ((u_input.c.x >> (u_input.b % 32u)) % 32u)) % 32u), abs(_wgslsmith_clamp_i32(~_wgslsmith_mult_i32(0i, var_0.a), var_0.a | 0i, -_wgslsmith_div_i32(global1.a, var_0.a))), 36799i, 0i);
    global1 = Struct_2(var_1.x, func_1());
    let var_2 = var_0.b;
    global1 = Struct_2(i32(-1i) * -1i, global1.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(reverseBits(u_input.b), ~reverseBits(u_input.c.x)));
}

