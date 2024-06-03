struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec2<bool>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec2<bool>) -> vec3<u32> {
    var var_0 = ~select(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(30115u, 1u, u_input.b.x, u_input.c.x), vec4<u32>(u_input.c.x, arg_1.c.x, u_input.b.x, 17258u))) & _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, 38236u, u_input.c.x, 0u), _wgslsmith_add_vec4_u32(vec4<u32>(110428u, u_input.b.x, 54304u, arg_1.b.x), vec4<u32>(23241u, 16590u, u_input.c.x, u_input.c.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(37872u, 4286u, u_input.c.x, arg_1.c.x), vec4<u32>(arg_1.b.x, 59715u, 28452u, u_input.c.x))), ~vec4<u32>(_wgslsmith_mult_u32(0u, arg_1.c.x), 3465u, u_input.c.x ^ u_input.c.x, arg_1.b.x), select(vec4<bool>(true, arg_2.x, arg_1.a > arg_0, any(vec4<bool>(arg_2.x, arg_2.x, arg_1.d.x, arg_2.x))), !vec4<bool>(arg_2.x, true, false, arg_2.x), true));
    var var_1 = arg_1;
    var_0 = vec4<u32>(firstTrailingBit(~(~min(1u, arg_1.c.x))), u_input.b.x & arg_1.b.x, _wgslsmith_div_u32(u_input.c.x, 11524u), ~50320u);
    let var_2 = arg_1;
    var_0 = vec4<u32>(_wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(0u, u_input.c.x, 52631u, var_2.b.x))), vec4<u32>(20328u, 1u ^ _wgslsmith_add_u32(0u, u_input.b.x), arg_1.b.x, firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b.x, var_0.x, arg_1.b.x, 78970u), vec4<u32>(1u, arg_1.b.x, var_0.x, u_input.c.x))))), 64328u, var_2.b.x, _wgslsmith_clamp_u32(~var_0.x, _wgslsmith_sub_u32(var_2.b.x, reverseBits(var_1.c.x)), ~(~var_0.x)) ^ (~30889u >> (var_2.c.x % 32u)));
    return firstLeadingBit(firstTrailingBit(abs(~var_1.c) ^ var_0.xwz));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: vec2<f32>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(658f * arg_2.x), ~(~vec2<u32>(u_input.c.x, 1u)), _wgslsmith_mult_vec3_u32(func_3(-1000f, Struct_1(arg_2.x, u_input.b, vec3<u32>(31096u, u_input.b.x, u_input.c.x), arg_1.xw, vec4<i32>(10658i, 1i, u_input.a, -2147483647i)), select(arg_1.xz, arg_1.yy, vec2<bool>(false, false))), abs(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c.x, 29597u, 14717u), vec3<u32>(0u, u_input.c.x, 1u)))) | min(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, 22909u, u_input.c.x) << (vec3<u32>(u_input.b.x, 0u, 39653u) % vec3<u32>(32u)), ~vec3<u32>(3535u, 1u, u_input.c.x), select(vec3<u32>(0u, 0u, 0u), vec3<u32>(u_input.c.x, 26997u, 837u), arg_1.x)), vec3<u32>(u_input.b.x, 0u, u_input.c.x) & vec3<u32>(u_input.b.x, u_input.c.x, u_input.c.x)), arg_1.wy, max(vec4<i32>(7897i, u_input.a, reverseBits(2147483647i), _wgslsmith_mod_i32(arg_0.x, 2147483647i)) | vec4<i32>(_wgslsmith_add_i32(u_input.a, -13680i), u_input.a & u_input.a, 2147483647i, arg_0.x), -vec4<i32>(_wgslsmith_add_i32(2147483647i, 0i), 2147483647i, i32(-1i) * -13780i, _wgslsmith_mod_i32(2147483647i, 20883i))));
    let var_1 = u_input.c.x;
    var var_2 = var_0.b;
    var_0 = Struct_1(_wgslsmith_f_op_f32(-1152f + var_0.a), vec2<u32>(~(~abs(52876u)), 4294967295u), ~_wgslsmith_sub_vec3_u32(min(abs(var_0.c), vec3<u32>(var_0.c.x, var_1, 125197u) & vec3<u32>(var_1, var_2.x, 1u)), select(_wgslsmith_mod_vec3_u32(var_0.c, var_0.c), var_0.c, vec3<bool>(arg_1.x, arg_1.x, false))), var_0.d, var_0.e);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_2.x)) - _wgslsmith_f_op_f32(floor(var_0.a))), vec2<u32>(min(56054u, u_input.c.x) << ((max(0u, 10194u) << (u_input.b.x % 32u)) % 32u), 4294967295u | func_3(var_0.a, Struct_1(arg_2.x, vec2<u32>(1u, 14881u), vec3<u32>(3908u, var_2.x, var_1), arg_1.wy, vec4<i32>(-2993i, -12416i, -11931i, arg_0.x)), select(var_0.d, vec2<bool>(arg_1.x, true), var_0.d)).x), vec3<u32>(var_1, var_2.x, var_0.c.x), arg_1.wz, vec4<i32>(countOneBits(~1i), 46613i & _wgslsmith_div_i32(arg_0.x, 0i), _wgslsmith_clamp_i32(arg_0.x, var_0.e.x, firstTrailingBit(arg_0.x)), min(~1i, -u_input.a)) << (vec4<u32>(var_1, _wgslsmith_add_u32(~var_1, ~11272u), var_0.b.x, 0u) % vec4<u32>(32u)));
    return Struct_1(_wgslsmith_f_op_f32(786f * -716f), ~u_input.c | _wgslsmith_mult_vec2_u32(abs(var_3.c.yy), u_input.b), var_3.c, vec2<bool>(false, !var_3.d.x), vec4<i32>(abs(select(min(-18027i, 26147i), min(var_0.e.x, u_input.a), var_3.d.x & var_0.d.x)), -2147483647i, ~1i, i32(-1i) * -1i));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    var var_0 = ~(~arg_2.c);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1.a, arg_1.a, -242f), vec3<f32>(arg_1.a, -522f, -1151f)))))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-462f, -1194f, _wgslsmith_f_op_f32(-arg_1.a))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3, arg_2.a, arg_1.a) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a, arg_2.a, arg_3) + vec3<f32>(-201f, arg_2.a, var_1.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3, 989f, arg_1.a) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1172f, 1219f, arg_1.a)))), _wgslsmith_div_vec3_f32(vec3<f32>(-197f, -326f, _wgslsmith_f_op_f32(f32(-1f) * -101f)), vec3<f32>(1122f, _wgslsmith_f_op_f32(arg_2.a - arg_2.a), _wgslsmith_f_op_f32(601f - arg_2.a))), select(arg_0.xwy, !arg_0.xxz, true))));
    var_0 = vec3<u32>(~_wgslsmith_dot_vec4_u32(max(abs(vec4<u32>(u_input.c.x, 4294967295u, arg_1.b.x, 27046u)), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_2.b.x, 22143u, arg_2.b.x, arg_2.b.x), vec4<u32>(u_input.c.x, u_input.c.x, arg_1.c.x, 83452u))), vec4<u32>(u_input.c.x, arg_2.b.x, arg_1.b.x, arg_2.b.x) ^ firstLeadingBit(vec4<u32>(0u, 151023u, arg_1.c.x, arg_2.c.x))), ~reverseBits(func_3(arg_2.a, arg_2, vec2<bool>(arg_0.x, arg_2.d.x)).x), 0u);
    var var_3 = -23607i;
    return Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a + 215f)))))), ~func_3(462f, Struct_1(_wgslsmith_f_op_f32(trunc(-1405f)), func_2(arg_1.e.xw, vec4<bool>(false, arg_2.d.x, arg_0.x, arg_2.d.x), vec2<f32>(1211f, -888f)).c.yy, arg_1.c & arg_2.c, arg_1.d, _wgslsmith_mod_vec4_i32(vec4<i32>(15859i, u_input.a, u_input.a, 1i), arg_1.e)), select(!arg_1.d, !arg_0.xz, !vec2<bool>(false, arg_1.d.x))).xx, max(~arg_2.c, _wgslsmith_clamp_vec3_u32(~vec3<u32>(var_0.x, arg_1.c.x, 34525u), vec3<u32>(5245u << (arg_2.b.x % 32u), 1u, 11377u), vec3<u32>(var_0.x, ~u_input.b.x, arg_1.b.x))), func_2(func_2(~arg_2.e.xy & select(arg_2.e.xw, arg_2.e.zx, arg_2.d), arg_0, _wgslsmith_f_op_vec2_f32(var_1.xy - _wgslsmith_f_op_vec2_f32(var_1.yz - vec2<f32>(-1163f, var_1.x)))).e.yz, !select(select(vec4<bool>(arg_2.d.x, false, arg_2.d.x, false), vec4<bool>(false, true, arg_2.d.x, true), arg_0.x), arg_0, vec4<bool>(arg_1.d.x, false, arg_0.x, arg_0.x)), vec2<f32>(var_2.x, -116f)).d, vec4<i32>(~arg_2.e.x, -1i, abs(3458i), _wgslsmith_mod_i32(arg_1.e.x, abs(~1i))));
}

fn func_5(arg_0: Struct_1) -> vec3<u32> {
    var var_0 = vec3<bool>(true, arg_0.d.x, false);
    var_0 = select(!select(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, arg_0.d.x), vec3<bool>(true, var_0.x, arg_0.d.x)), select(!vec3<bool>(false, var_0.x, true), vec3<bool>(var_0.x, var_0.x, true), select(vec3<bool>(true, false, var_0.x), vec3<bool>(arg_0.d.x, arg_0.d.x, var_0.x), vec3<bool>(var_0.x, true, true))), !vec3<bool>(arg_0.d.x, true, false)), !vec3<bool>(true, !var_0.x, !(-1000f != arg_0.a)), false);
    var var_1 = ~(~(~_wgslsmith_mod_vec3_u32(~arg_0.c, ~arg_0.c)));
    var var_2 = vec2<u32>(reverseBits(~abs(_wgslsmith_dot_vec3_u32(vec3<u32>(5736u, var_1.x, 0u), vec3<u32>(u_input.c.x, 539u, u_input.b.x)))), _wgslsmith_clamp_u32(func_4(select(!vec4<bool>(var_0.x, true, false, true), select(vec4<bool>(true, var_0.x, arg_0.d.x, false), vec4<bool>(true, arg_0.d.x, false, false), vec4<bool>(true, false, arg_0.d.x, false)), select(vec4<bool>(false, var_0.x, arg_0.d.x, var_0.x), vec4<bool>(true, false, arg_0.d.x, arg_0.d.x), vec4<bool>(arg_0.d.x, false, true, false))), Struct_1(_wgslsmith_f_op_f32(ceil(arg_0.a)), ~arg_0.b, ~arg_0.c, var_0.zx, func_2(vec2<i32>(arg_0.e.x, u_input.a), vec4<bool>(var_0.x, false, arg_0.d.x, false), vec2<f32>(1177f, 448f)).e), func_2(_wgslsmith_sub_vec2_i32(arg_0.e.zz, vec2<i32>(u_input.a, arg_0.e.x)), select(vec4<bool>(var_0.x, false, var_0.x, true), vec4<bool>(arg_0.d.x, true, arg_0.d.x, true), arg_0.d.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(294f, arg_0.a) + vec2<f32>(-336f, -1620f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, arg_0.a))).b.x, ~var_1.x & arg_0.c.x, ~firstLeadingBit(83367u)));
    let var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, _wgslsmith_f_op_f32(arg_0.a * 811f), _wgslsmith_f_op_f32(floor(arg_0.a)), -219f) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(601f, arg_0.a, arg_0.a, -2241f))))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(732f)), arg_0.a), arg_0.a, _wgslsmith_f_op_f32(f32(-1f) * -642f)) - vec4<f32>(arg_0.a, _wgslsmith_f_op_f32(492f + arg_0.a), arg_0.a, -585f))));
    return ~vec3<u32>(59684u, var_2.x, firstTrailingBit(var_2.x));
}

fn func_6(arg_0: vec3<f32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = any(vec2<bool>(arg_1.d.x, arg_1.d.x));
    var var_1 = Struct_1(arg_0.x, vec2<u32>(~_wgslsmith_mult_u32(29451u & arg_1.b.x, 1u), 1u), reverseBits(~(func_4(vec4<bool>(var_0, arg_1.d.x, var_0, false), arg_1, Struct_1(1414f, vec2<u32>(u_input.c.x, 1u), vec3<u32>(0u, u_input.b.x, u_input.c.x), arg_1.d, arg_1.e), arg_0.x).c >> (vec3<u32>(u_input.c.x, arg_1.b.x, 97972u) % vec3<u32>(32u)))), !(!arg_1.d), arg_1.e);
    let var_2 = !arg_1.d;
    return arg_1;
}

fn func_1() -> vec4<i32> {
    let var_0 = true;
    var var_1 = func_6(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1086f, 247f, 944f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -131f, 205f) - _wgslsmith_div_vec3_f32(vec3<f32>(199f, 1131f, -661f), vec3<f32>(-338f, 540f, 1000f))))), Struct_1(_wgslsmith_f_op_f32(step(-314f, -506f)), vec2<u32>(~0u, 1u) ^ vec2<u32>(1u, u_input.b.x), func_5(func_4(select(vec4<bool>(var_0, var_0, false, var_0), vec4<bool>(false, false, false, var_0), var_0), Struct_1(-442f, vec2<u32>(21632u, 1u), vec3<u32>(u_input.c.x, 48189u, 59386u), vec2<bool>(false, false), vec4<i32>(u_input.a, u_input.a, 1i, u_input.a)), func_2(vec2<i32>(u_input.a, -87738i), vec4<bool>(false, var_0, true, true), vec2<f32>(1970f, 3902f)), _wgslsmith_f_op_f32(trunc(-711f)))), select(!vec2<bool>(var_0, false), !func_4(vec4<bool>(var_0, var_0, true, true), Struct_1(-624f, vec2<u32>(45485u, 10355u), vec3<u32>(77737u, u_input.b.x, u_input.b.x), vec2<bool>(true, true), vec4<i32>(u_input.a, -2147483647i, u_input.a, 2147483647i)), Struct_1(-1000f, u_input.b, vec3<u32>(u_input.c.x, u_input.b.x, 47267u), vec2<bool>(var_0, false), vec4<i32>(-41224i, -17950i, -2147483647i, u_input.a)), -581f).d, !all(vec3<bool>(true, var_0, var_0))), ~vec4<i32>(41405i, 27629i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.a, -23316i), vec3<i32>(u_input.a, 6432i, u_input.a)), _wgslsmith_sub_i32(u_input.a, 1i))));
    var var_2 = select(select(!vec3<bool>(true, true, func_6(vec3<f32>(-955f, -485f, -500f), Struct_1(var_1.a, u_input.b, var_1.c, vec2<bool>(true, true), var_1.e)).d.x), vec3<bool>(true, true, var_1.a >= 294f), func_2(~select(var_1.e.wy, var_1.e.yx, var_1.d.x), !vec4<bool>(var_1.d.x, false, true, false), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, var_1.a) * vec2<f32>(-1107f, -2289f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1403f, -1267f) - vec2<f32>(var_1.a, 667f)), func_4(vec4<bool>(false, var_1.d.x, var_1.d.x, true), Struct_1(-787f, vec2<u32>(36922u, 1u), var_1.c, vec2<bool>(false, var_1.d.x), vec4<i32>(-2147483647i, u_input.a, -10675i, u_input.a)), Struct_1(var_1.a, var_1.b, var_1.c, var_1.d, var_1.e), 1075f).d.x))).d.x), vec3<bool>(select(!var_0, var_1.d.x, var_0), _wgslsmith_div_f32(-1563f, _wgslsmith_f_op_f32(1077f + var_1.a)) == -274f, any(select(!vec4<bool>(var_1.d.x, var_1.d.x, true, var_0), vec4<bool>(false, var_1.d.x, true, false), func_4(vec4<bool>(var_1.d.x, var_1.d.x, true, var_1.d.x), Struct_1(var_1.a, u_input.b, vec3<u32>(38250u, 28618u, 1u), vec2<bool>(var_1.d.x, false), var_1.e), Struct_1(var_1.a, vec2<u32>(39825u, 20700u), vec3<u32>(u_input.b.x, u_input.b.x, u_input.c.x), vec2<bool>(var_0, var_1.d.x), vec4<i32>(-36571i, u_input.a, -4103i, 52451i)), 2437f).d.x))), select(vec3<bool>(func_4(!vec4<bool>(var_0, false, false, true), func_2(var_1.e.xx, vec4<bool>(var_1.d.x, false, var_0, true), vec2<f32>(var_1.a, 1729f)), Struct_1(var_1.a, u_input.b, vec3<u32>(21340u, u_input.c.x, 1u), var_1.d, vec4<i32>(var_1.e.x, var_1.e.x, 63407i, u_input.a)), _wgslsmith_f_op_f32(-var_1.a)).d.x, var_1.d.x, !func_2(vec2<i32>(var_1.e.x, var_1.e.x), vec4<bool>(var_0, true, var_0, var_1.d.x), vec2<f32>(var_1.a, var_1.a)).d.x), select(select(vec3<bool>(var_1.d.x, var_0, var_0), !vec3<bool>(true, var_0, false), false), vec3<bool>(false, true, any(vec3<bool>(false, var_0, var_0))), !vec3<bool>(true, var_0, false)), select(select(!vec3<bool>(var_0, var_0, true), select(vec3<bool>(false, var_1.d.x, var_1.d.x), vec3<bool>(false, var_1.d.x, true), var_1.d.x), 82505u != var_1.b.x), select(vec3<bool>(var_1.d.x, true, var_1.d.x), vec3<bool>(var_0, var_0, var_0), true), var_1.d.x)));
    let var_3 = func_3(-806f, Struct_1(var_1.a, firstLeadingBit(~(var_1.c.xy << (u_input.c % vec2<u32>(32u)))), var_1.c, !vec2<bool>(true, all(var_1.d)), var_1.e), func_4(vec4<bool>(func_4(vec4<bool>(false, var_2.x, var_2.x, var_0), Struct_1(-1000f, vec2<u32>(14460u, 0u), var_1.c, vec2<bool>(false, false), var_1.e), func_2(vec2<i32>(var_1.e.x, u_input.a), vec4<bool>(true, var_2.x, var_0, false), vec2<f32>(1452f, var_1.a)), _wgslsmith_f_op_f32(var_1.a - var_1.a)).d.x, !var_2.x, all(vec3<bool>(var_1.d.x, var_1.d.x, var_2.x)), ~var_1.e.x < ~(-1i)), func_2(var_1.e.ww, select(vec4<bool>(var_2.x, var_0, var_1.d.x, var_0), select(vec4<bool>(var_2.x, var_0, var_1.d.x, false), vec4<bool>(false, var_2.x, var_1.d.x, true), var_1.d.x), vec4<bool>(var_2.x, var_0, var_1.d.x, var_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, var_1.a))), Struct_1(_wgslsmith_f_op_f32(-963f * 605f), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, var_1.c.x), u_input.b) | vec2<u32>(var_1.b.x, var_1.b.x), vec3<u32>(~u_input.b.x, u_input.b.x, 1u), vec2<bool>(true, true), var_1.e), 199f).d).x;
    var var_4 = vec3<bool>(func_4(select(!vec4<bool>(true, var_2.x, false, false), vec4<bool>(func_2(vec2<i32>(var_1.e.x, var_1.e.x), vec4<bool>(true, var_1.d.x, true, var_0), vec2<f32>(var_1.a, var_1.a)).d.x, 43454i < var_1.e.x, true, true), !select(vec4<bool>(false, false, var_2.x, var_1.d.x), vec4<bool>(var_2.x, var_1.d.x, false, var_0), vec4<bool>(var_0, var_0, var_0, var_1.d.x))), func_2(vec2<i32>(func_2(vec2<i32>(33500i, u_input.a), vec4<bool>(false, var_1.d.x, var_2.x, false), vec2<f32>(1170f, 124f)).e.x, func_6(vec3<f32>(var_1.a, var_1.a, var_1.a), Struct_1(-615f, var_1.c.xz, vec3<u32>(var_3, 0u, var_1.b.x), var_1.d, var_1.e)).e.x), !(!vec4<bool>(true, var_2.x, var_2.x, true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(669f, 513f))), func_6(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, -369f, -1100f)))), Struct_1(func_2(vec2<i32>(var_1.e.x, var_1.e.x), vec4<bool>(var_2.x, var_1.d.x, var_2.x, false), vec2<f32>(var_1.a, 356f)).a, ~vec2<u32>(24685u, 1u), var_1.c, func_6(vec3<f32>(var_1.a, var_1.a, var_1.a), Struct_1(var_1.a, u_input.c, vec3<u32>(4294967295u, var_1.c.x, 1u), var_2.yy, vec4<i32>(7134i, var_1.e.x, -4344i, u_input.a))).d, firstTrailingBit(vec4<i32>(-1i, 17463i, 34181i, -1692i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) + _wgslsmith_f_op_f32(f32(-1f) * -842f)) * var_1.a)).d.x, true, false);
    return -var_1.e;
}

fn func_7(arg_0: bool, arg_1: vec4<i32>, arg_2: vec3<u32>, arg_3: Struct_1) -> vec4<u32> {
    let var_0 = reverseBits(arg_1.x) & u_input.a;
    var var_1 = vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a))) == _wgslsmith_div_f32(func_6(_wgslsmith_f_op_vec3_f32(-vec3<f32>(503f, arg_3.a, 135f)), Struct_1(-1316f, vec2<u32>(u_input.c.x, 6132u), vec3<u32>(arg_2.x, arg_2.x, 67759u), arg_3.d, arg_3.e)).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.a + 1000f) - _wgslsmith_f_op_f32(-arg_3.a))), !(!(!(!arg_0))), arg_0, arg_3.d.x);
    var var_2 = func_2(abs(func_2(-arg_3.e.zw, vec4<bool>(!arg_0, any(vec4<bool>(arg_3.d.x, true, true, arg_0)), arg_3.d.x || false, func_4(vec4<bool>(false, var_1.x, arg_3.d.x, false), arg_3, arg_3, 204f).d.x), vec2<f32>(_wgslsmith_f_op_f32(min(2418f, arg_3.a)), _wgslsmith_f_op_f32(arg_3.a * arg_3.a))).e.zy), select(select(vec4<bool>(var_1.x, all(vec4<bool>(var_1.x, arg_3.d.x, false, false)), true || var_1.x, true), !(!vec4<bool>(true, arg_0, false, arg_3.d.x)), vec4<bool>(false, var_1.x, any(vec3<bool>(arg_0, false, true)), !arg_0)), vec4<bool>(var_1.x, func_6(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.a, -366f, 311f)), Struct_1(arg_3.a, u_input.c, vec3<u32>(arg_3.c.x, arg_3.b.x, 14824u), var_1.zx, vec4<i32>(u_input.a, var_0, var_0, u_input.a))).d.x, true, true), arg_0), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_3.a, 524f))))))));
    return max(reverseBits(abs(vec4<u32>(func_3(arg_3.a, Struct_1(184f, arg_3.b, vec3<u32>(52561u, 4294967295u, 1u), var_1.yx, vec4<i32>(var_2.e.x, u_input.a, -2147483647i, arg_3.e.x)), var_2.d).x, _wgslsmith_div_u32(10406u, arg_3.b.x), _wgslsmith_mult_u32(1u, 1130u), 0u))), ~reverseBits(vec4<u32>(_wgslsmith_mult_u32(var_2.b.x, 0u), firstTrailingBit(43788u), func_4(vec4<bool>(arg_0, arg_3.d.x, arg_3.d.x, var_2.d.x), Struct_1(1155f, var_2.b, vec3<u32>(1u, 1u, 4294967295u), var_2.d, arg_1), arg_3, var_2.a).c.x, u_input.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_mod_u32(abs(u_input.c.x), u_input.c.x);
    var_0 = (_wgslsmith_sub_u32(~u_input.b.x, 9338u) & ~0u) ^ 4294967295u;
    var_0 = u_input.b.x;
    var_0 = 1u;
    var_0 = min(40604u, u_input.b.x);
    var_0 = _wgslsmith_dot_vec4_u32(func_7(true, -_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, -9019i, -14604i, u_input.a), vec4<i32>(-36992i, -2147483647i, -14026i, 1i)), -vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), vec3<u32>(u_input.c.x, ~u_input.b.x, ~min(u_input.c.x, u_input.c.x)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(240f))), ~vec2<u32>(u_input.b.x, 36666u), vec3<u32>(_wgslsmith_mult_u32(28397u, 0u), _wgslsmith_dot_vec4_u32(vec4<u32>(73942u, 1u, 23243u, 0u), vec4<u32>(25999u, u_input.c.x, u_input.b.x, u_input.b.x)), 103045u << (u_input.b.x % 32u)), select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(true, true), select(false, true, false)), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, -47454i, u_input.a, u_input.a), func_1()))), firstTrailingBit(~(~abs(vec4<u32>(u_input.c.x, 127638u, u_input.c.x, 0u)))));
    let var_1 = func_4(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec4<bool>(true, false, false, true))), vec4<bool>(true, true, true, true), !all(vec4<bool>(false, false, false, false))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1544f + -581f) * -2472f), u_input.b, ~firstLeadingBit(~vec3<u32>(u_input.c.x, u_input.b.x, u_input.c.x)), !vec2<bool>(all(vec3<bool>(false, false, false)), true), -vec4<i32>(u_input.a, u_input.a, -u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -1i), vec2<i32>(u_input.a, 2466i)))), func_2(_wgslsmith_mod_vec2_i32(~(~vec2<i32>(u_input.a, u_input.a)), vec2<i32>(-2147483647i, 5056i) & -vec2<i32>(53121i, u_input.a)), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false)), false), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(222f, 2168f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1731f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(vec4<u32>(countOneBits(4294967295u), 1u, var_1.b.x, u_input.b.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-395f, _wgslsmith_f_op_f32(var_1.a + 1524f), _wgslsmith_f_op_f32(f32(-1f) * -614f), _wgslsmith_f_op_f32(1570f * var_1.a)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_1.a, -793f, var_1.a) + vec4<f32>(var_1.a, -198f, var_1.a, -274f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.a, var_1.a, var_1.a, var_1.a))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.a, 426f, 479f, var_1.a), vec4<f32>(-1000f, -1403f, var_1.a, 883f), vec4<bool>(var_1.d.x, true, false, true))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, var_1.a, var_1.a, var_1.a) - vec4<f32>(var_1.a, -231f, 682f, -812f))), var_1.d.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(var_1.a)), _wgslsmith_div_f32(-207f, var_1.a), 329f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(485f, var_1.a, func_2(var_1.e.yw, vec4<bool>(false, true, true, true), vec2<f32>(-860f, 1000f)).a))));
}

