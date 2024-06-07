struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.b.x)) - _wgslsmith_f_op_f32(1641f + _wgslsmith_f_op_f32(abs(1000f))));
}

fn func_2(arg_0: Struct_1) -> vec3<i32> {
    let var_0 = Struct_1(arg_0.a, vec4<u32>(4294967295u ^ u_input.a, firstTrailingBit(arg_0.b.x), firstLeadingBit(~u_input.a), u_input.a), vec3<f32>(_wgslsmith_f_op_f32(-arg_0.c.x), arg_0.c.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(true, Struct_2(vec3<u32>(8230u, 41234u, 1u), vec2<f32>(arg_0.d, -1210f))))))), _wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_mod_u32(abs(_wgslsmith_sub_u32(reverseBits(4274u), ~u_input.a)), u_input.a));
    var var_1 = u_input.a;
    var var_2 = u_input.a;
    var var_3 = vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-216f))) < var_0.c.x, true);
    var var_4 = ~(~abs(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.b.x, 0u, 30844u), reverseBits(var_0.b.wyz))));
    return firstTrailingBit(_wgslsmith_clamp_vec3_i32(reverseBits(select(vec3<i32>(-3540i, arg_0.a, -6678i), vec3<i32>(26110i, arg_0.a, -2147483647i), vec3<bool>(false, false, var_3.x))), _wgslsmith_add_vec3_i32(vec3<i32>(9965i, 0i, arg_0.a), vec3<i32>(0i, arg_0.a, var_0.a)) | _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.a, 16166i, -1i), vec3<i32>(0i, -26184i, arg_0.a)), vec3<i32>(arg_0.a, -67871i, ~arg_0.a)) & ~_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.a, arg_0.a, var_0.a), reverseBits(vec3<i32>(0i, arg_0.a, 0i)), ~vec3<i32>(arg_0.a, 16920i, -39599i)));
}

fn func_4(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = Struct_1(arg_0 | -_wgslsmith_div_i32(_wgslsmith_mult_i32(0i, arg_1.x), arg_1.x & -15272i), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(~0u, ~u_input.a, select(u_input.a, 29655u, false), firstTrailingBit(4294967295u)), abs(vec4<u32>(201u, u_input.a, 36094u, 51245u)) ^ vec4<u32>(arg_2.a.x, 40945u, 4294967295u, 4294967295u)), firstTrailingBit(vec4<u32>(u_input.a << (arg_2.a.x % 32u), _wgslsmith_mult_u32(4294967295u, u_input.a), select(3715u, 1u, true), 7989u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1286f, arg_2.b.x, 592f), _wgslsmith_div_vec3_f32(vec3<f32>(arg_2.b.x, arg_2.b.x, arg_2.b.x), vec3<f32>(-221f, arg_2.b.x, arg_2.b.x)), true)) - vec3<f32>(arg_2.b.x, -234f, _wgslsmith_f_op_f32(-144f - -437f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1000f, -853f, arg_2.b.x), vec3<f32>(-1036f, 1000f, 2153f))))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(195f, arg_2.b.x, -408f), vec3<f32>(arg_2.b.x, -654f, -508f), vec3<bool>(false, false, true))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1740f, arg_2.b.x, !(1078f <= arg_2.b.x)))), ~54253u);
    let var_1 = _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(960f, _wgslsmith_f_op_f32(exp2(arg_2.b.x))))));
    var_0 = Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(arg_0, -2147483647i, 2147483647i, 1i)), vec4<i32>(arg_1.x, arg_1.x, arg_1.x, 19050i)), vec4<i32>(_wgslsmith_mult_i32(var_0.a, var_0.a), _wgslsmith_sub_i32(var_0.a, var_0.a), countOneBits(var_0.a), ~arg_1.x)), -(~vec4<i32>(var_0.a, -44925i, -26260i, var_0.a))), ~var_0.b, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.c.x - var_1)))), _wgslsmith_f_op_f32(-var_0.d), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-198f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(938f)))))), -121f, _wgslsmith_dot_vec2_u32(arg_2.a.yy, firstLeadingBit(vec2<u32>(~var_0.e, firstTrailingBit(0u)))));
    var_0 = Struct_1(-13421i, max(vec4<u32>(35988u, u_input.a, ~var_0.b.x, ~_wgslsmith_sub_u32(4294967295u, 4294967295u)), vec4<u32>(44683u, u_input.a, ~(4294967295u >> (u_input.a % 32u)), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.a.x, u_input.a, 13504u, 1u), ~vec4<u32>(0u, u_input.a, 1u, 0u)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1365f)), -494f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 + arg_2.b.x) * 1497f)), vec3<f32>(_wgslsmith_f_op_f32(arg_2.b.x - -868f), var_0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -946f))), arg_2.b.x, 1u);
    var var_2 = arg_2.a.x;
    return Struct_1(var_0.a, ~var_0.b, var_0.c, 2487f, _wgslsmith_mod_u32(_wgslsmith_mod_u32(~arg_2.a.x, 4294967295u), 1u));
}

fn func_1() -> i32 {
    var var_0 = u_input.a;
    var var_1 = func_4(2147483647i, (vec3<i32>(-1i) * -func_2(Struct_1(1i, vec4<u32>(16536u, u_input.a, 11460u, 20569u), vec3<f32>(-796f, -908f, 1000f), 1831f, u_input.a))) >> (vec3<u32>(abs(u_input.a), ~(~1u), ~(11185u & u_input.a)) % vec3<u32>(32u)), Struct_2(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(abs(vec3<u32>(u_input.a, 33820u, 1u)), vec3<u32>(4294967295u, u_input.a, u_input.a)), _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a, 41054u, u_input.a), countOneBits(vec3<u32>(u_input.a, 79465u, u_input.a)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, -203f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(130f, -897f)), select(vec2<bool>(false, false), vec2<bool>(false, false), true)))))));
    var var_2 = reverseBits(~(-func_2(Struct_1(var_1.a, vec4<u32>(32606u, 22972u, var_1.b.x, u_input.a), vec3<f32>(-992f, 135f, var_1.c.x), 524f, u_input.a)))) >> (~(~(vec3<u32>(1u, var_1.e, 0u) << (vec3<u32>(9525u, u_input.a, 0u) % vec3<u32>(32u)))) % vec3<u32>(32u));
    var var_3 = _wgslsmith_mod_i32(1i, var_1.a);
    var_0 = ~_wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.a & 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(79110u, var_1.e, 57877u), var_1.b.zyy)), 80723u) ^ 4294967295u;
    return -13385i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), abs(max(vec4<i32>(-12150i, -2147483647i, 0i, -2147483647i), vec4<i32>(-71595i, -6127i, -33414i, -1i)))), reverseBits(abs(vec4<i32>(-12560i, 2147483647i, -28169i, 11850i))) & (-vec4<i32>(16218i, -1i, -30517i, 2667i) | (vec4<i32>(-1i, -1820i, -1i, -2147483647i) << (vec4<u32>(4294967295u, 41648u, u_input.a, u_input.a) % vec4<u32>(32u))))));
    var_0 = vec4<i32>(max(min(abs(var_0.x), var_0.x), 2147483647i), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, var_0.x, 3540i, var_0.x), vec4<i32>(var_0.x, -1i, 2147483647i, 1i)) >> ((vec4<u32>(40105u, 63643u, 1u, 0u) ^ vec4<u32>(u_input.a, 28213u, 14858u, u_input.a)) % vec4<u32>(32u)), vec4<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, 0i, var_0.x, var_0.x), vec4<i32>(var_0.x, var_0.x, -2147483647i, var_0.x)), _wgslsmith_dot_vec3_i32(var_0.wxw, var_0.zzz), 74162i << (u_input.a % 32u))), -(_wgslsmith_clamp_i32(-36235i, var_0.x, var_0.x) >> (u_input.a % 32u)), var_0.x) & select(~vec4<i32>(-27837i, abs(17681i), var_0.x, -2147483647i), vec4<i32>(var_0.x, 1i, ~2147483647i, _wgslsmith_dot_vec4_i32(max(vec4<i32>(var_0.x, var_0.x, 0i, var_0.x), vec4<i32>(-18750i, var_0.x, var_0.x, 0i)), -vec4<i32>(43459i, -16010i, var_0.x, var_0.x))), vec4<bool>(all(vec4<bool>(true, true, true, true)), true, any(vec3<bool>(true, true, false)), false));
    var_0 = vec4<i32>(-1i) * -(vec4<i32>(_wgslsmith_add_i32(-11166i, var_0.x), var_0.x | 17677i, var_0.x, -var_0.x) ^ abs(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<i32>(3189i, -1i, var_0.x, var_0.x))));
    var_0 = vec4<i32>(abs(var_0.x), reverseBits(69681i), func_1(), firstLeadingBit(17687i));
    let var_1 = false;
    var var_2 = Struct_2(vec3<u32>(countOneBits(~firstLeadingBit(u_input.a)), 4294967295u, _wgslsmith_dot_vec3_u32(firstLeadingBit(~vec3<u32>(4294967295u, u_input.a, 1u)), ~vec3<u32>(46561u, 60440u, u_input.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(-851f, 1743f)), 1215f), vec2<f32>(_wgslsmith_f_op_f32(trunc(-114f)), -482f))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(reverseBits(vec4<u32>(u_input.a, firstLeadingBit(u_input.a), u_input.a << (22117u % 32u), min(4294967295u, 0u)))), vec3<u32>(~u_input.a, u_input.a, 0u) & ~(~vec3<u32>(0u, 43018u, var_2.a.x)));
}

