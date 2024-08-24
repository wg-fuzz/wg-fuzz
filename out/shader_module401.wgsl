struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: vec3<i32>) -> u32 {
    let var_0 = Struct_1(61292u);
    let var_1 = ~vec3<i32>(0i ^ u_input.a, -32281i, ~(~(-1i ^ u_input.a)));
    return 4294967295u;
}

fn func_3(arg_0: vec4<i32>) -> i32 {
    let var_0 = Struct_1(1u);
    let var_1 = ~abs(max(u_input.c.xyx & u_input.c.wyy, vec3<u32>(abs(37754u), 3506u, firstLeadingBit(0u))));
    let var_2 = var_0;
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -355f);
    return -18661i;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: Struct_1) -> bool {
    var var_0 = ~(~u_input.b.x);
    let var_1 = vec2<bool>(true, true);
    var var_2 = u_input.c.wx;
    var_0 = 1u;
    var_0 = _wgslsmith_clamp_u32(u_input.c.x, func_1(max(-vec3<i32>(-1i, -1i, 25764i), vec3<i32>(-1i) * -vec3<i32>(u_input.a, 4728i, 1i))), 44578u);
    return 1124f > _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2.x)))));
}

fn func_2() -> Struct_1 {
    let var_0 = false;
    let var_1 = func_4(firstLeadingBit(-func_3(-vec4<i32>(1i, u_input.a, u_input.a, u_input.a))), Struct_1(26792u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1424f, -326f) * vec2<f32>(122f, -300f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(768f, -172f) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(752f, -102f), vec2<f32>(322f, 315f), vec2<bool>(var_0, var_0))))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1653f, -218f)))))), Struct_1(4294967295u | (_wgslsmith_mult_u32(u_input.b.x, 0u) | u_input.b.x)));
    let var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(51964i, ~abs(u_input.a), -38575i, 59333i) ^ vec4<i32>(u_input.a, select(-1i, _wgslsmith_mult_i32(u_input.a, u_input.a), true), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, -68616i, u_input.a), vec4<i32>(2147483647i, 2147483647i, u_input.a, u_input.a)), vec4<i32>(u_input.a, u_input.a, u_input.a, 2147483647i) | vec4<i32>(-53545i, u_input.a, u_input.a, u_input.a)), abs(-2974i)), firstLeadingBit(~select(vec4<i32>(-3111i, -39474i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, 32439i, u_input.a), select(vec4<bool>(false, var_1, var_0, true), vec4<bool>(var_1, false, true, false), vec4<bool>(var_1, true, false, true)))));
    var var_3 = Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>((u_input.c.x | u_input.b.x) << (~u_input.c.x % 32u), ~(~1u), abs(firstTrailingBit(u_input.b.x))), vec3<u32>(_wgslsmith_mod_u32(~1u, ~1u), _wgslsmith_mult_u32(0u, ~u_input.b.x), u_input.b.x)));
    var_3 = Struct_1(4294967295u);
    return Struct_1(1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~u_input.b.x);
    var var_1 = Struct_1(var_0.a);
    var var_2 = var_0;
    var var_3 = Struct_1(firstTrailingBit(_wgslsmith_div_u32(func_1(vec3<i32>(24231i, u_input.a, 1i) >> (u_input.c.xwz % vec3<u32>(32u))), var_1.a ^ ~0u)));
    var var_4 = func_2();
    var_3 = func_2();
    let var_5 = _wgslsmith_div_vec2_u32(vec2<u32>(var_4.a, func_2().a), vec2<u32>(0u, _wgslsmith_mod_u32(var_2.a, _wgslsmith_dot_vec4_u32(u_input.c, u_input.c) | min(47588u, var_3.a))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~45614u)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-321f * -695f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -555f) - _wgslsmith_f_op_f32(-1f))), ~u_input.c.zwy, 1i);
}

