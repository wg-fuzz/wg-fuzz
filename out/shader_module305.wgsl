struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: f32,
    d: vec4<u32>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: vec3<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(~u_input.c.x, ~(~vec2<u32>(_wgslsmith_mod_u32(1u, 718u), reverseBits(0u))), 580f, ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, u_input.b, 1u, 1u), u_input.c) & max(~(~vec4<u32>(4294967295u, u_input.b, u_input.b, 4294967295u)), abs(vec4<u32>(0u, u_input.b, u_input.b, 1u))), select(~21073u, 0u, !select(u_input.d.x <= 1497i, u_input.a.x < u_input.d.x, true)));
    let var_1 = var_0.c;
    let var_2 = var_0;
    return ~(~(firstTrailingBit(1u) | _wgslsmith_add_u32(18266u, select(u_input.b, u_input.c.x, false))));
}

fn func_2(arg_0: i32, arg_1: vec4<bool>, arg_2: vec2<f32>) -> u32 {
    let var_0 = u_input.b;
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(298f + _wgslsmith_div_f32(arg_2.x, -1000f)))));
    return ~(~func_3()) >> (max(abs(firstLeadingBit(1u)), 4294967295u | (_wgslsmith_div_u32(0u, u_input.c.x) | (4294967295u ^ var_0))) % 32u);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = true;
    var_0 = all(vec3<bool>(true, u_input.d.x >= (-10473i >> (arg_1.a % 32u)), select(true, false, true) || (func_2(-1i, vec4<bool>(true, false, false, false), vec2<f32>(arg_0.c, arg_0.c)) >= 1u)));
    let var_1 = arg_0;
    var var_2 = _wgslsmith_div_f32(-911f, _wgslsmith_div_f32(348f, arg_1.c));
    let var_3 = Struct_1(~0u, vec2<u32>(arg_0.e, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(1u, 7449u, var_1.e, 0u)), vec4<u32>(~1u, ~12629u, 28368u, ~0u))), -459f, vec4<u32>(select(u_input.b, func_3(), all(vec4<bool>(false, false, true, true))), max(var_1.d.x, arg_1.a), firstTrailingBit(_wgslsmith_div_u32(1u, u_input.c.x)), ~_wgslsmith_div_u32(select(48073u, arg_0.d.x, true), var_1.e >> (arg_0.d.x % 32u))), 19817u);
    return ~func_3();
}

fn func_4(arg_0: vec4<u32>, arg_1: u32) -> StorageBuffer {
    var var_0 = Struct_1(u_input.c.x, select(select(min(_wgslsmith_mult_vec2_u32(arg_0.zy, u_input.c.zx), vec2<u32>(arg_1, u_input.c.x)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c.x, 2885u), u_input.c.xz), 0i == _wgslsmith_sub_i32(u_input.d.x, -1i)), select(reverseBits(vec2<u32>(15260u, u_input.c.x) ^ vec2<u32>(4294967295u, u_input.b)), (arg_0.wx & vec2<u32>(arg_0.x, u_input.c.x)) << (~u_input.c.ww % vec2<u32>(32u)), true), arg_0.x == _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(arg_0, u_input.c), abs(u_input.c))), _wgslsmith_f_op_f32(max(-1000f, -587f)), vec4<u32>(abs(1u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, 6940u), vec2<u32>(1u, 26759u)), 4294967295u, _wgslsmith_dot_vec2_u32(u_input.c.xz, abs(vec2<u32>(1u, u_input.b)))) & (vec4<u32>(0u, ~0u, arg_0.x, 1u << (u_input.c.x % 32u)) & firstLeadingBit(u_input.c)), select(abs(arg_1), arg_1, all(vec4<bool>(true, true, true, true))));
    let var_1 = Struct_1(~u_input.c.x, _wgslsmith_clamp_vec2_u32((var_0.d.ww & var_0.b) << ((~arg_0.wz >> (~arg_0.yw % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<u32>(~_wgslsmith_mod_u32(0u, arg_1), 1u), ~(~(~vec2<u32>(u_input.b, 0u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(505f, 330f)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c, _wgslsmith_f_op_f32(f32(-1f) * -671f)) - -105f)), ~abs(vec4<u32>(arg_0.x & arg_1, arg_1, var_0.b.x >> (1u % 32u), reverseBits(u_input.c.x))), 0u);
    let var_2 = vec3<u32>(9302u, func_2(39922i << ((var_1.e ^ u_input.b) % 32u), select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true)), vec4<bool>(true, false, true, false), true), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.c, -2979f), vec2<f32>(var_1.c, 489f)))) & arg_0.x, func_1(Struct_1(~abs(var_1.d.x), select(vec2<u32>(0u, 4294967295u), vec2<u32>(74503u, 1u), vec2<bool>(true, true)) & (vec2<u32>(arg_1, 4294967295u) << (arg_0.xw % vec2<u32>(32u))), -255f, select(var_1.d, arg_0, vec4<bool>(false, true, true, true)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(17665u, 1u, u_input.b, u_input.b), u_input.c) % vec4<u32>(32u)), _wgslsmith_dot_vec4_u32(var_1.d, u_input.c) << (abs(var_1.e) % 32u)), Struct_1(firstTrailingBit(~var_1.a), _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(u_input.c.wz, vec2<u32>(137382u, 49950u)), var_0.d.wx), _wgslsmith_f_op_f32(f32(-1f) * -439f), var_0.d, 0u)));
    return StorageBuffer(~(~func_3()), 36257i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-856f, _wgslsmith_f_op_f32(var_1.c * -963f))) * 120f)), ~vec3<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(arg_0.yxw, vec3<u32>(var_0.d.x, var_1.a, arg_0.x)), 1u), arg_0.x, ~_wgslsmith_mult_u32(var_2.x, 4294967295u)), var_0.d.zw);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(vec4<u32>(0u, ~func_1(Struct_1(u_input.c.x, vec2<u32>(9188u, u_input.c.x), -505f, u_input.c, u_input.c.x), Struct_1(125383u, u_input.c.xz, -796f, vec4<u32>(u_input.c.x, 4294967295u, u_input.b, u_input.c.x), 11506u)), u_input.c.x, u_input.c.x), _wgslsmith_mod_u32(_wgslsmith_div_u32(countOneBits(~1u), (u_input.b ^ 21735u) & (u_input.b | 28739u)), 83948u));
}

