struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<bool>, arg_2: bool) -> u32 {
    let var_0 = !(!select(vec2<bool>(arg_1.x, select(false, true, arg_1.x)), select(select(arg_1.xx, vec2<bool>(false, arg_1.x), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(arg_1.x, true), arg_1.x), !arg_1.yx), arg_1.xy));
    var var_1 = select(vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x), !vec4<bool>(!select(false, var_0.x, arg_1.x), select(true, true, true), true, arg_1.x), select(!vec4<bool>(true, any(vec2<bool>(var_0.x, arg_2)), false, true), vec4<bool>(false, true, arg_2, true || arg_2), select(!(!vec4<bool>(true, false, arg_1.x, var_0.x)), !select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(true, true, true, true), vec4<bool>(false, false, arg_2, false)), !var_0.x)));
    return select(~(~_wgslsmith_mult_u32(firstLeadingBit(u_input.b), u_input.a << (1u % 32u))), _wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.b, u_input.b), _wgslsmith_add_u32(select(u_input.a, 38829u, select(var_1.x, false, false)), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.b, u_input.a, u_input.a), vec4<u32>(1u, 22526u, u_input.b, 762u)), ~vec4<u32>(38026u, u_input.a, u_input.a, u_input.b)))), false);
}

fn func_2(arg_0: vec4<i32>) -> vec2<i32> {
    var var_0 = Struct_1(vec4<u32>(u_input.b, 4294967295u, 65533u, 19089u) | _wgslsmith_mult_vec4_u32(vec4<u32>(83898u, 14154u, u_input.a, func_3(arg_0.yzz, vec3<bool>(true, false, true), false)), firstLeadingBit(vec4<u32>(1u, u_input.b, 0u, u_input.b)) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, u_input.a, 43867u, u_input.a), vec4<u32>(1u, 51834u, u_input.b, 4294967295u), vec4<u32>(u_input.a, 0u, u_input.a, 4294967295u)) % vec4<u32>(32u))), arg_0.yz);
    let var_1 = Struct_1(~(~reverseBits(vec4<u32>(var_0.a.x, var_0.a.x, 0u, u_input.a)) & _wgslsmith_mod_vec4_u32(var_0.a, ~vec4<u32>(74415u, var_0.a.x, 19364u, 0u))), abs(select(arg_0.zz, -_wgslsmith_mult_vec2_i32(arg_0.zx, var_0.b), true)));
    var var_2 = var_1;
    let var_3 = var_1;
    let var_4 = select(arg_0, arg_0, !((~0i | var_2.b.x) > abs(-61992i)));
    return var_1.b;
}

fn func_1() -> StorageBuffer {
    var var_0 = Struct_1(vec4<u32>(u_input.a, min(9508u, abs(u_input.b)) & u_input.a, u_input.a, _wgslsmith_add_u32(u_input.a, u_input.b)), func_2(vec4<i32>(~_wgslsmith_add_i32(-1i, 0i), 72867i, abs(61342i), 0i)));
    let var_1 = Struct_1(~vec4<u32>(19828u, var_0.a.x, var_0.a.x, min(var_0.a.x, 1u | var_0.a.x)), vec2<i32>(var_0.b.x, max(-var_0.b.x, abs(var_0.b.x))));
    var_0 = Struct_1(vec4<u32>(u_input.b, var_1.a.x, 5852u, ~(~u_input.b) >> (_wgslsmith_div_u32(var_0.a.x, reverseBits(1u)) % 32u)), vec2<i32>(_wgslsmith_mult_i32(-30619i, 1i), var_0.b.x ^ 2147483647i));
    let var_2 = _wgslsmith_sub_vec4_u32(vec4<u32>(1u, _wgslsmith_mod_u32(var_0.a.x, var_0.a.x << (firstLeadingBit(var_1.a.x) % 32u)), 409u, 4294967295u), var_1.a);
    var_0 = var_1;
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1295f, 1000f), _wgslsmith_div_vec2_f32(vec2<f32>(-380f, -439f), vec2<f32>(-1994f, 135f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1681f)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1000f, 1764f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec4<bool>(any(vec2<bool>(true, false)) || select(false, true, false), any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))), true && any(vec2<bool>(false, false)), false), vec4<bool>(true, true, true, (29463u | u_input.a) > u_input.b), true);
    var var_1 = 2147483647i;
    let x = u_input.a;
    s_output = func_1();
}

