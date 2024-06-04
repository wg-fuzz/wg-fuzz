struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<i32>,
    c: i32,
    d: bool,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>) -> vec2<u32> {
    let var_0 = !vec4<bool>(true, all(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true))), false, !all(vec3<bool>(false, true, true)));
    let var_1 = Struct_3(vec4<bool>(false, false, var_0.x, any(vec4<bool>(true, var_0.x, var_0.x, var_0.x)) || var_0.x), Struct_1(1i, !select(var_0.xzx, !vec3<bool>(var_0.x, var_0.x, var_0.x), !var_0.x), !(!any(vec4<bool>(true, var_0.x, var_0.x, true)))));
    let var_2 = var_1.b.a;
    var var_3 = ~1u;
    global0 = abs(_wgslsmith_mult_i32(var_1.b.a, -1i));
    return _wgslsmith_mod_vec2_u32(~(vec2<u32>(1u, 1u) << (reverseBits(select(vec2<u32>(45044u, 1u), vec2<u32>(4294967295u, 25792u), var_0.yx)) % vec2<u32>(32u))), vec2<u32>(abs(68769u), ~(1u | _wgslsmith_dot_vec3_u32(vec3<u32>(15869u, 100302u, 32800u), vec3<u32>(8887u, 1u, 4294967295u)))));
}

fn func_2(arg_0: Struct_3, arg_1: i32, arg_2: Struct_2) -> vec4<bool> {
    let var_0 = countOneBits(~(~(~u_input.a.zz)) << (vec2<u32>(arg_2.c.x | arg_2.c.x, _wgslsmith_add_u32(arg_2.b, 86358u)) % vec2<u32>(32u)));
    var var_1 = false;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(382f, -761f, 182f, -467f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1292f, -1499f, 1552f, -838f), vec4<f32>(639f, -1381f, 781f, -1093f), false))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-970f, 127f, 1000f, -604f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1031f, -146f, 867f, -763f)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-655f, 1290f, -344f, -1983f))))) * vec4<f32>(1172f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -182f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -586f), _wgslsmith_f_op_f32(abs(-1000f)))))));
    var var_3 = Struct_4(arg_2, ~_wgslsmith_sub_vec3_i32(vec3<i32>(max(u_input.b, u_input.a.x), _wgslsmith_div_i32(2147483647i, arg_0.b.a), -16846i), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, -10628i, 2147483647i), vec3<i32>(arg_1, 30768i, var_0.x))), ~(-(~11150i & _wgslsmith_dot_vec4_i32(u_input.a, u_input.a))), select(all(vec4<bool>(select(false, arg_0.b.b.x, arg_0.a.x), true, true, true)), true, !arg_0.a.x), vec4<f32>(-384f, _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.x)) * _wgslsmith_f_op_f32(-996f + 666f)))));
    var_1 = !arg_0.b.b.x;
    return select(vec4<bool>(arg_0.a.x, ~(~arg_2.b) <= _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(arg_2.c.yw, vec2<u32>(arg_2.b, 64536u)), func_3(vec3<i32>(u_input.b, 11020i, arg_1))), false, select(false, !arg_0.b.b.x, true)), !select(!vec4<bool>(true, var_3.d, false, false), vec4<bool>(!var_3.d, var_3.d | var_3.d, true, arg_0.b.c != var_3.d), vec4<bool>(arg_2.b >= 4294967295u, !var_3.d, !var_3.d, true)), arg_0.a);
}

fn func_4(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_3) -> vec3<u32> {
    var var_0 = 2147483647i;
    var var_1 = !(!vec4<bool>(true, arg_2.b.b.x, true, all(vec2<bool>(arg_2.b.c, arg_2.a.x))));
    var_0 = select(u_input.b, _wgslsmith_mod_i32(~1i, countOneBits(abs(arg_0)) >> (~52962u % 32u)), !(!(all(vec4<bool>(true, true, false, false)) & arg_2.a.x)));
    global0 = -1197i;
    let var_2 = vec3<u32>(~max(6309u, _wgslsmith_div_u32(1u, ~arg_1.x)), ~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_1.x, arg_1.x) ^ _wgslsmith_div_vec3_u32(vec3<u32>(arg_1.x, arg_1.x, 4294967295u), vec3<u32>(60289u, 1u, arg_1.x)), ~firstTrailingBit(vec3<u32>(arg_1.x, 3495u, arg_1.x))) | arg_1.x);
    return vec3<u32>(abs(max(4294967295u, 0u)), _wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, var_2.x), firstLeadingBit(var_2.yx)), _wgslsmith_add_vec2_u32(min(_wgslsmith_sub_vec2_u32(vec2<u32>(var_2.x, arg_1.x), vec2<u32>(12117u, arg_1.x)), ~vec2<u32>(arg_1.x, arg_1.x)), countOneBits(arg_1))), var_2.x);
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: bool, arg_3: Struct_4) -> Struct_4 {
    global0 = 40272i;
    var var_0 = arg_1.c.x;
    let var_1 = func_4(-(_wgslsmith_mult_i32(-9148i, u_input.b) | abs(64706i)), min(firstLeadingBit(vec2<u32>(arg_1.c.x, arg_1.b) | vec2<u32>(arg_3.a.c.x, 73325u)) & _wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(arg_1.c.x, arg_3.a.b)), arg_1.c.wy), arg_3.a.c.xy), Struct_3(select(func_2(Struct_3(vec4<bool>(false, arg_2, arg_3.d, false), Struct_1(2147483647i, vec3<bool>(arg_3.d, true, arg_3.d), true)), -2147483647i, arg_1), func_2(Struct_3(vec4<bool>(false, false, true, arg_3.d), Struct_1(2194i, vec3<bool>(arg_2, arg_3.d, arg_2), arg_3.d)), 20532i, arg_3.a), arg_2), Struct_1(1i, !(!vec3<bool>(false, arg_2, arg_3.d)), arg_2)));
    var var_2 = _wgslsmith_mult_i32(arg_3.b.x, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(-vec4<i32>(0i, arg_1.a.x, -43729i, -2147483647i), u_input.a), _wgslsmith_mult_vec4_i32(u_input.a & u_input.a, _wgslsmith_div_vec4_i32(vec4<i32>(arg_3.a.a.x, -7934i, 8397i, 39973i), u_input.a)))) << (max(~(0u >> (var_1.x % 32u)), ~firstTrailingBit(~arg_3.a.c.x)) % 32u);
    let var_3 = true;
    return Struct_4(arg_1, abs(abs(u_input.a.zzx)), arg_1.d.x, u_input.a.x >= arg_3.c, arg_3.e);
}

fn func_5(arg_0: bool, arg_1: Struct_4, arg_2: vec4<f32>) -> Struct_1 {
    global0 = ~(~firstTrailingBit(u_input.a.x)) >> (30419u % 32u);
    var var_0 = Struct_1(abs(countOneBits(func_1(arg_2.x, Struct_2(vec3<i32>(2147483647i, 2147483647i, arg_1.c), arg_1.a.c.x, vec4<u32>(4294967295u, arg_1.a.b, arg_1.a.c.x, 0u), vec2<i32>(u_input.b, -15648i)), true, func_1(arg_1.e.x, arg_1.a, arg_1.d, arg_1)).a.d.x)), select(vec3<bool>(true, !arg_1.d, _wgslsmith_f_op_f32(arg_1.e.x + arg_1.e.x) < -538f), !(!func_2(Struct_3(vec4<bool>(true, arg_1.d, false, arg_0), Struct_1(arg_1.a.d.x, vec3<bool>(arg_1.d, true, false), false)), -1635i, Struct_2(arg_1.b, 4294967295u, vec4<u32>(1u, 30425u, 26216u, arg_1.a.b), arg_1.b.xy)).zww), true), !arg_1.d);
    var var_1 = Struct_3(vec4<bool>(any(func_2(Struct_3(vec4<bool>(arg_0, var_0.b.x, var_0.b.x, arg_1.d), Struct_1(18799i, vec3<bool>(arg_0, true, true), true)), var_0.a, arg_1.a)), true, arg_0, all(!vec4<bool>(true, var_0.b.x, arg_1.d, false))), Struct_1(var_0.a, !(!(!vec3<bool>(var_0.b.x, false, arg_0))), !any(vec3<bool>(false, arg_0, false))));
    let var_2 = Struct_4(func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(782f * arg_2.x), -1104f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-218f - arg_1.e.x))), func_1(-1491f, func_1(_wgslsmith_div_f32(arg_2.x, -2545f), arg_1.a, var_0.b.x, arg_1).a, false, func_1(_wgslsmith_f_op_f32(ceil(arg_2.x)), arg_1.a, true, func_1(275f, Struct_2(arg_1.a.a, 42742u, vec4<u32>(arg_1.a.b, 1u, arg_1.a.b, arg_1.a.c.x), vec2<i32>(u_input.a.x, 2147483647i)), var_1.b.c, arg_1))).a, true, func_1(_wgslsmith_f_op_f32(arg_2.x - -1000f), arg_1.a, true, Struct_4(Struct_2(arg_1.a.a, arg_1.a.c.x, vec4<u32>(0u, arg_1.a.c.x, arg_1.a.c.x, arg_1.a.b), arg_1.b.zy), func_1(-820f, Struct_2(u_input.a.zwx, arg_1.a.c.x, arg_1.a.c, arg_1.b.zz), false, Struct_4(Struct_2(u_input.a.wyw, arg_1.a.c.x, arg_1.a.c, vec2<i32>(-1i, 1i)), vec3<i32>(u_input.b, -1i, -2147483647i), var_0.a, false, arg_1.e)).b, -6541i, !arg_1.d, _wgslsmith_div_vec4_f32(vec4<f32>(arg_2.x, arg_1.e.x, 521f, -509f), vec4<f32>(-823f, 628f, 144f, 1000f))))).a, _wgslsmith_clamp_vec3_i32(select(-(~vec3<i32>(u_input.b, arg_1.b.x, var_0.a)), vec3<i32>(2147483647i, var_1.b.a ^ 0i, _wgslsmith_dot_vec4_i32(u_input.a, u_input.a)), arg_1.a.c.x < 13633u), ~max(max(arg_1.b, vec3<i32>(-6218i, arg_1.c, var_0.a)), vec3<i32>(-42671i, u_input.a.x, -4647i) >> (vec3<u32>(arg_1.a.b, 4294967295u, 1u) % vec3<u32>(32u))), min(vec3<i32>(arg_1.a.d.x, 6075i, 2147483647i), firstTrailingBit(vec3<i32>(2147483647i, var_0.a, u_input.a.x))) | arg_1.a.a), 28965i, 14578i >= firstTrailingBit(22573i >> (firstLeadingBit(arg_1.a.c.x) % 32u)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1306f)), _wgslsmith_div_f32(arg_1.e.x, 747f), _wgslsmith_f_op_f32(ceil(504f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.e.x + _wgslsmith_f_op_f32(f32(-1f) * -523f)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_1.e.x, arg_1.e.x))))));
    var var_3 = var_2.b;
    return Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.a, vec4<i32>(arg_1.a.a.x, 0i, var_2.c, arg_1.b.x), _wgslsmith_div_vec4_i32(vec4<i32>(var_0.a, -2147483647i, -7271i, u_input.b), u_input.a)), abs(-vec4<i32>(-3078i, var_3.x, 16026i, arg_1.c))) | reverseBits(-1i), !(!vec3<bool>(false, all(vec2<bool>(arg_0, arg_1.d)), var_0.b.x)), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(true, func_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-1405f)), -1000f)), Struct_2(vec3<i32>(1i, _wgslsmith_clamp_i32(44965i, u_input.a.x, u_input.a.x), firstTrailingBit(u_input.b)), 1u, ~(~vec4<u32>(52198u, 4294967295u, 0u, 1u)), ~(vec2<i32>(u_input.a.x, u_input.b) << (vec2<u32>(0u, 0u) % vec2<u32>(32u)))), true, Struct_4(Struct_2(u_input.a.www, ~1u, firstLeadingBit(vec4<u32>(0u, 0u, 1u, 1u)), vec2<i32>(-423i, 1i)), _wgslsmith_clamp_vec3_i32(abs(u_input.a.xxx), u_input.a.xww, _wgslsmith_mod_vec3_i32(u_input.a.xxw, vec3<i32>(84093i, u_input.b, u_input.a.x))), 14328i, true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1195f, -1864f, -1076f, -366f))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1117f, -1776f, -345f, -1482f), vec4<f32>(474f, 108f, 551f, -527f), true))))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(sign(-254f)), 148f, _wgslsmith_f_op_f32(f32(-1f) * -1015f), -1440f))));
    var var_1 = func_1(1113f, Struct_2(-(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b, var_0.a, u_input.b)) & u_input.a.wwz), reverseBits(4294967295u), ~countOneBits(vec4<u32>(1u, 0u, 13312u, 1u)) >> (vec4<u32>(~4294967295u, _wgslsmith_add_u32(4294967295u, 0u), min(4294967295u, 4294967295u), func_3(vec3<i32>(8342i, var_0.a, 0i)).x) % vec4<u32>(32u)), _wgslsmith_sub_vec2_i32(min(-vec2<i32>(var_0.a, 2147483647i), _wgslsmith_sub_vec2_i32(u_input.a.yw, vec2<i32>(2147483647i, u_input.b))), u_input.a.xy)), var_0.b.x && ((1929u > func_4(-2147483647i, vec2<u32>(12188u, 23719u), Struct_3(vec4<bool>(var_0.c, var_0.c, var_0.b.x, true), Struct_1(u_input.b, vec3<bool>(false, var_0.b.x, var_0.c), var_0.b.x))).x) || var_0.b.x), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1338f) + 1190f)), Struct_2(_wgslsmith_div_vec3_i32(u_input.a.zwz | vec3<i32>(var_0.a, var_0.a, -2147483647i), u_input.a.wxz), 42466u, _wgslsmith_div_vec4_u32(vec4<u32>(23855u, 80590u, 0u, 46462u), vec4<u32>(1u, 60217u, 51985u, 8757u)) | func_1(-1000f, Struct_2(u_input.a.wwy, 1u, vec4<u32>(1u, 7628u, 1u, 1u), vec2<i32>(u_input.a.x, var_0.a)), var_0.b.x, Struct_4(Struct_2(u_input.a.zxx, 4294967295u, vec4<u32>(40858u, 1u, 54063u, 23556u), vec2<i32>(-2147483647i, -9253i)), vec3<i32>(var_0.a, -49245i, -25348i), var_0.a, var_0.b.x, vec4<f32>(-313f, -1196f, -561f, -1073f))).a.c, vec2<i32>(-13101i, 2147483647i) | max(u_input.a.wx, u_input.a.xz)), all(select(vec3<bool>(var_0.b.x, var_0.c, false), !vec3<bool>(var_0.c, true, false), func_5(false, Struct_4(Struct_2(u_input.a.xxx, 4294967295u, vec4<u32>(3885u, 11829u, 0u, 4294967295u), u_input.a.yz), vec3<i32>(var_0.a, 2147483647i, u_input.a.x), -2147483647i, var_0.b.x, vec4<f32>(-1000f, -1000f, 703f, 2722f)), vec4<f32>(-777f, -1098f, -2073f, 131f)).b)), Struct_4(func_1(_wgslsmith_f_op_f32(max(-650f, -1217f)), Struct_2(u_input.a.xzy, 4294967295u, vec4<u32>(8678u, 0u, 29919u, 1u), vec2<i32>(var_0.a, -20611i)), !var_0.b.x, Struct_4(Struct_2(vec3<i32>(var_0.a, var_0.a, -2147483647i), 4294967295u, vec4<u32>(4294967295u, 1u, 1u, 1u), u_input.a.yy), vec3<i32>(10354i, u_input.b, var_0.a), 0i, false, vec4<f32>(-1122f, 497f, 1000f, -1142f))).a, _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.a.ywx, vec3<i32>(var_0.a, -8534i, var_0.a)), max(vec3<i32>(var_0.a, u_input.a.x, 2147483647i), u_input.a.ywz)), _wgslsmith_mult_i32(26894i, u_input.a.x) >> (_wgslsmith_mod_u32(17434u, 1118u) % 32u), true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-486f, -309f, -1409f, -969f)))));
    let var_2 = func_1(var_1.e.x, func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -983f)))), var_1.a, var_1.d, Struct_4(Struct_2(u_input.a.xwx, _wgslsmith_div_u32(0u, var_1.a.c.x), var_1.a.c, vec2<i32>(-45990i, u_input.b)), firstTrailingBit(vec3<i32>(var_0.a, var_0.a, 5768i)), -_wgslsmith_dot_vec2_i32(var_1.a.a.yz, var_1.b.xx), var_1.e.x <= _wgslsmith_f_op_f32(-var_1.e.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-635f, var_1.e.x, var_1.e.x, 1000f) * var_1.e) + var_1.e))).a, 6523u <= _wgslsmith_add_u32(_wgslsmith_sub_u32(var_1.a.c.x, var_1.a.b), ~var_1.a.b), Struct_4(func_1(_wgslsmith_f_op_f32(f32(-1f) * -762f), var_1.a, !func_2(Struct_3(vec4<bool>(true, true, var_1.d, true), var_0), u_input.b, Struct_2(var_1.b, 2892u, var_1.a.c, vec2<i32>(var_1.a.a.x, -2147483647i))).x, func_1(_wgslsmith_div_f32(295f, var_1.e.x), func_1(var_1.e.x, var_1.a, var_1.d, Struct_4(Struct_2(u_input.a.zxx, 120712u, vec4<u32>(var_1.a.b, 10089u, 0u, 1u), vec2<i32>(u_input.a.x, -21875i)), vec3<i32>(-37559i, var_1.a.d.x, -7255i), u_input.b, var_0.b.x, var_1.e)).a, var_0.c, func_1(var_1.e.x, var_1.a, false, Struct_4(Struct_2(var_1.a.a, var_1.a.c.x, vec4<u32>(var_1.a.b, 36158u, 13877u, var_1.a.c.x), vec2<i32>(0i, u_input.a.x)), vec3<i32>(-1i, u_input.a.x, -2147483647i), var_1.a.a.x, false, var_1.e)))).a, var_1.a.a, max(i32(-1i) * -var_0.a, var_1.a.a.x), all(var_0.b.yx), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(abs(var_1.e.x)), _wgslsmith_f_op_f32(845f - var_1.e.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 1f))))).a.b;
    var var_3 = (~var_2 ^ _wgslsmith_sub_u32(~var_2, func_4(select(var_1.b.x, 19378i, var_1.d), var_1.a.c.yy, Struct_3(vec4<bool>(true, false, var_0.b.x, var_0.b.x), var_0)).x)) << (~0u % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.e.wz);
}

