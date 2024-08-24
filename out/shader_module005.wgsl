struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<bool>(false, false, true));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: i32, arg_3: Struct_3) -> vec4<f32> {
    let var_0 = _wgslsmith_dot_vec3_i32(u_input.a.yyx, -select(vec3<i32>(firstTrailingBit(47451i), _wgslsmith_add_i32(u_input.a.x, 2147483647i), 176i), vec3<i32>(-6346i, ~0i, arg_2), global0.a));
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.b), _wgslsmith_f_op_vec4_f32(-arg_1.b));
}

fn func_2(arg_0: f32) -> Struct_2 {
    return Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.b, -1i), _wgslsmith_mult_vec3_i32(u_input.a.www, u_input.a.xwz)) >= u_input.b, Struct_1(u_input.a.yy, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(vec2<i32>(u_input.a.x, u_input.a.x), Struct_1(vec2<i32>(-5893i, -12222i), vec4<f32>(arg_0, arg_0, -107f, arg_0), 15133u), abs(12836i), Struct_3(global0.a))) - vec4<f32>(_wgslsmith_f_op_f32(max(arg_0, 504f)), arg_0, -1153f, arg_0)), 1u));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_3, arg_2: vec2<i32>, arg_3: f32) -> u32 {
    var var_0 = _wgslsmith_dot_vec3_i32(abs(-_wgslsmith_sub_vec3_i32(-vec3<i32>(arg_2.x, 1i, 57824i), abs(vec3<i32>(3872i, u_input.b, arg_2.x)))), u_input.a.xxx);
    var_0 = arg_2.x;
    let var_1 = func_2(arg_3);
    let var_2 = max(u_input.a.x, u_input.a.x) | u_input.a.x;
    var var_3 = !select(vec3<bool>(arg_1.a.x, arg_0.a.a.x, any(vec2<bool>(true, true))), !(!arg_1.a), select(global0.a, !arg_1.a, !any(vec4<bool>(false, arg_0.a.a.x, var_1.a, arg_1.a.x))));
    return reverseBits(32031u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(u_input.a.xw, vec2<i32>(_wgslsmith_add_i32(-1i | u_input.b, _wgslsmith_sub_i32(u_input.a.x, 1i)), -46693i), global0.a.x), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-2194f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(1679f)))), -1787f, _wgslsmith_f_op_f32(f32(-1f) * -1789f)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-638f, 389f, -352f, -324f)) * vec4<f32>(731f, 1339f, -1185f, 328f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(400f, 1641f, -1594f, -1610f)) + vec4<f32>(-364f, 1020f, -977f, 1134f))))), _wgslsmith_dot_vec4_u32(vec4<u32>(func_1(Struct_4(Struct_3(global0.a)), Struct_3(global0.a), _wgslsmith_div_vec2_i32(u_input.a.zz, u_input.a.yy), _wgslsmith_f_op_f32(select(1210f, -1000f, global0.a.x))), abs(1u), 4294967295u, ~(~4294967295u)), ~(~(~vec4<u32>(1918u, 4294967295u, 70089u, 44626u)))));
    var_0 = Struct_1(-vec2<i32>(5968i, firstTrailingBit(1i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.x, var_0.b.x)), -1631f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1483f + var_0.b.x))), -600f)), 4294967295u);
    var var_1 = func_2(var_0.b.x).b;
    var_1 = func_2(-191f).b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(func_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b.x, -1413f) * 1084f)).b.a.x, _wgslsmith_mult_i32(-2147483647i, _wgslsmith_div_i32(var_0.a.x, u_input.a.x))), vec4<u32>(var_0.c, 46553u, ~(~(~51405u)), var_1.c), ~min(var_0.c, 0u << (var_1.c % 32u)) & var_1.c, vec3<i32>(select(1i, _wgslsmith_div_i32(_wgslsmith_add_i32(1i, var_1.a.x), var_0.a.x), global0.a.x | !global0.a.x), 1i, _wgslsmith_clamp_i32(_wgslsmith_add_i32(-17343i, ~var_1.a.x), reverseBits(u_input.b) << (~1u % 32u), ~(~20516i))), u_input.a);
}

