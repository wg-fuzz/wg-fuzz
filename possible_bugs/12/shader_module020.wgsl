struct Struct_1 {
    a: vec2<u32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec2<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = u_input.b.x;
    let var_1 = Struct_1(vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, var_0, u_input.c.x, u_input.c.x), u_input.b), max(50553u, u_input.b.x) | ~3704u) & u_input.b.wz, ~(~(~13946u)));
    return var_1;
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec3<i32>, arg_3: i32) -> vec4<u32> {
    var var_0 = Struct_1(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(arg_0.b, 43471u, arg_0.a.x), ~4294967295u), _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.b, u_input.b.x), arg_0.a), ~vec2<u32>(u_input.b.x, 0u))), _wgslsmith_dot_vec4_u32((vec4<u32>(u_input.c.x, 12830u, 4868u, 4294967295u) >> (u_input.b % vec4<u32>(32u))) ^ select(vec4<u32>(1u, 52300u, 26438u, u_input.c.x), u_input.b, arg_1), _wgslsmith_clamp_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, 0u, 1u, arg_0.b), vec4<u32>(19464u, 73143u, 6334u, arg_0.b)))), 0u);
    var var_1 = func_2(arg_1);
    var var_2 = !vec3<bool>(true, ~_wgslsmith_mod_i32(24194i, 2147483647i) <= u_input.d.x, false);
    var_2 = !vec3<bool>(~var_0.a.x >= (68475u & ~arg_0.a.x), arg_1, arg_1);
    var var_3 = arg_0;
    return select(vec4<u32>(countOneBits(4294967295u), 73882u, u_input.b.x, ~u_input.c.x), _wgslsmith_mult_vec4_u32(u_input.b, firstLeadingBit(u_input.b) >> ((~vec4<u32>(1u, 8500u, 25301u, 4294967295u) ^ u_input.b) % vec4<u32>(32u))), vec4<bool>(u_input.a <= arg_3, true & !(!var_2.x), arg_1 & all(select(vec3<bool>(false, true, arg_1), vec3<bool>(false, false, var_2.x), false)), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.xyz;
    var var_1 = ~vec4<u32>(~(~(~u_input.b.x)), u_input.c.x, var_0.x, min(u_input.b.x & 0u, ~_wgslsmith_div_u32(62628u, var_0.x)));
    var var_2 = u_input.d.wx;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, ~_wgslsmith_mod_u32(firstTrailingBit(u_input.b.x), var_1.x), firstTrailingBit(abs(u_input.a)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -2121f), _wgslsmith_add_vec4_u32(~((u_input.b >> (u_input.b % vec4<u32>(32u))) << (_wgslsmith_mod_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, 21332u, 0u, u_input.c.x)) % vec4<u32>(32u))), ~func_1(Struct_1(u_input.c, var_0.x), select(false, true, true), u_input.e.wwz, i32(-1i) * -1i)));
}

