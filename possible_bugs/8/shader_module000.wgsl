struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> i32 {
    var var_0 = global0.a;
    var_0 = countOneBits(global0.a);
    global0 = Struct_1(_wgslsmith_dot_vec3_i32(u_input.a.yyx, vec3<i32>(global0.a, _wgslsmith_dot_vec2_i32(firstTrailingBit(u_input.a.yy), u_input.a.zw), min(0i, 62729i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.b.x, global0.b.x, -1000f)))) - vec3<f32>(_wgslsmith_f_op_f32(max(global0.b.x, global0.b.x)), global0.b.x, _wgslsmith_f_op_f32(round(global0.b.x))))));
    var var_1 = select(vec4<bool>(all(vec3<bool>(true, false, all(vec2<bool>(false, true)))), all(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false)), false, u_input.e != abs(0u)), !vec4<bool>(abs(51625i) < (18409i | global0.a), true, any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true))), 1i < global0.a), vec4<bool>(any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))) | true, !all(vec3<bool>(true, true, true)), false, !(!any(vec3<bool>(true, true, false)))));
    var_0 = -u_input.d;
    return countOneBits(-u_input.d);
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    global0 = Struct_1(func_3(), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1773f)), _wgslsmith_div_f32(-1466f, -522f)))), global0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.b.x))))));
    global0 = Struct_1(_wgslsmith_mult_i32(1i, i32(-1i) * -2351i) ^ u_input.b, _wgslsmith_f_op_vec3_f32(global0.b * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-838f, global0.b.x, global0.b.x)))));
    let var_0 = true;
    let var_1 = _wgslsmith_add_u32(u_input.c, _wgslsmith_dot_vec2_u32(~abs(~vec2<u32>(87401u, 7691u)), ~((vec2<u32>(u_input.e, u_input.c) ^ vec2<u32>(1u, u_input.c)) & reverseBits(vec2<u32>(u_input.c, u_input.e)))));
    var var_2 = 55937i;
    return Struct_1(arg_0.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(global0.b)) * _wgslsmith_f_op_vec3_f32(floor(global0.b))))));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = !vec2<bool>(!all(vec4<bool>(true, false, false, true)), select(_wgslsmith_f_op_f32(-arg_2.b.x) < _wgslsmith_f_op_f32(max(arg_0.b.x, arg_0.b.x)), true, select(true, true, true) & true));
    let var_1 = u_input.c;
    let var_2 = countOneBits(max(~(~(~vec2<u32>(u_input.c, var_1))), vec2<u32>(var_1 >> (~u_input.c % 32u), (85691u >> (u_input.c % 32u)) << (var_1 % 32u))));
    global0 = arg_2;
    let var_3 = 385f;
    return Struct_1(firstTrailingBit(_wgslsmith_mod_i32(2147483647i, i32(-1i) * -55469i) << (_wgslsmith_div_u32(u_input.c, ~var_2.x) % 32u)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(arg_2.b.x, -922f), _wgslsmith_f_op_f32(ceil(-960f)), _wgslsmith_f_op_f32(-global0.b.x)), _wgslsmith_f_op_vec3_f32(-arg_2.b), !(!select(vec3<bool>(var_0.x, false, false), vec3<bool>(var_0.x, false, false), true)))));
}

fn func_1(arg_0: Struct_1) -> f32 {
    global0 = func_4(Struct_1(abs(~global0.a), vec3<f32>(_wgslsmith_f_op_f32(-1902f * _wgslsmith_f_op_f32(-global0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.b.x))), global0.b.x)), arg_0.a, func_2(~_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.a, 8606i, 0i, -2147483647i), u_input.a)));
    let var_0 = func_2(_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(select(u_input.a, vec4<i32>(-39905i, 1i, -16429i, -511i), vec4<bool>(false, false, true, false)), vec4<i32>(44829i, u_input.a.x, global0.a, arg_0.a)), -(u_input.a | vec4<i32>(u_input.d, -1i, 0i, arg_0.a))) << (~(~vec4<u32>(u_input.e, u_input.c, u_input.c, 0u)) % vec4<u32>(32u)));
    global0 = Struct_1(var_0.a, vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_4(arg_0, -37471i, Struct_1(2147483647i, vec3<f32>(arg_0.b.x, 142f, arg_0.b.x))).b.x - arg_0.b.x))), _wgslsmith_f_op_f32(-804f - func_4(var_0, _wgslsmith_div_i32(1i, -2147483647i), func_4(Struct_1(-2147483647i, vec3<f32>(-1537f, -478f, 1709f)), 48555i, var_0)).b.x), 513f));
    var var_1 = arg_0.b.x;
    var var_2 = arg_0.b.x;
    return 1000f;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    let var_1 = true;
    let var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1137f + _wgslsmith_f_op_f32(max(func_4(arg_0, arg_0.a, arg_0).b.x, _wgslsmith_f_op_f32(-940f * arg_0.b.x)))), 301f), _wgslsmith_f_op_vec2_f32(ceil(global0.b.zy)));
    let var_3 = _wgslsmith_add_i32(-firstTrailingBit(func_2(_wgslsmith_add_vec4_i32(u_input.a, vec4<i32>(52880i, 2147483647i, global0.a, -1i))).a), _wgslsmith_dot_vec4_i32(u_input.a, abs(u_input.a)));
    var var_4 = Struct_1(~(-u_input.b & 1i), _wgslsmith_f_op_vec3_f32(max(var_0.b, var_0.b)));
    return func_4(arg_0, _wgslsmith_mod_i32(-18642i, -2147483647i), func_4(arg_0, _wgslsmith_sub_i32(var_0.a, select(_wgslsmith_add_i32(var_3, 25156i), _wgslsmith_dot_vec3_i32(u_input.a.xyx, u_input.a.yyy), var_1)), Struct_1(-12191i, var_4.b)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(Struct_1(~19155i, vec3<f32>(_wgslsmith_f_op_f32(-1614f - _wgslsmith_f_op_f32(round(global0.b.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(Struct_1(-1i, vec3<f32>(-1000f, -934f, -1017f)))), _wgslsmith_f_op_f32(-global0.b.x)), _wgslsmith_f_op_f32(965f + _wgslsmith_div_f32(-554f, -1461f)))));
    global0 = func_5(func_5(func_4(func_5(func_4(Struct_1(37340i, vec3<f32>(global0.b.x, global0.b.x, global0.b.x)), -5521i, Struct_1(u_input.d, global0.b))), ~global0.a, Struct_1(-35625i, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1018f, global0.b.x, global0.b.x)))))));
    let var_0 = firstTrailingBit(~firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.e, 22623u, 0u), vec3<u32>(20408u, u_input.c, 5629u))));
    global0 = func_4(func_4(func_2(vec4<i32>(global0.a, -global0.a, u_input.d, -u_input.b)), -_wgslsmith_add_i32(u_input.d ^ -1i, -global0.a), func_2(vec4<i32>(u_input.a.x, global0.a, 49634i, ~global0.a))), func_4(func_2(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.a, global0.a, -4424i, u_input.d), vec4<i32>(global0.a, global0.a, -26890i, global0.a), u_input.a)), _wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_div_i32(56337i, global0.a), ~1i), -1i >> (min(4294967295u, u_input.c) % 32u)), func_4(func_2(-u_input.a), ~(-15824i), func_2(u_input.a))).a, Struct_1(-21389i, vec3<f32>(global0.b.x, _wgslsmith_f_op_f32(165f + _wgslsmith_f_op_f32(-global0.b.x)), _wgslsmith_f_op_f32(global0.b.x - _wgslsmith_f_op_f32(f32(-1f) * -139f)))));
    let var_1 = all(select(vec3<bool>(reverseBits(u_input.e) < 0u, true, !any(vec3<bool>(false, false, false))), vec3<bool>(all(select(vec2<bool>(false, false), vec2<bool>(false, true), true)), true, any(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true))), vec3<bool>(true, !(-730f <= global0.b.x), all(vec4<bool>(false, false, false, false)) || true)));
    var var_2 = 1i;
    var var_3 = _wgslsmith_mod_i32(70325i, u_input.b);
    var var_4 = ~(~firstLeadingBit(reverseBits(select(var_0.xy, vec2<u32>(0u, 4294967295u), false))));
    var var_5 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(741f + -567f), _wgslsmith_div_f32(global0.b.x, global0.b.x))) + func_2(reverseBits(firstTrailingBit(vec4<i32>(global0.a, u_input.b, u_input.d, 1i)))).b.yx));
    let x = u_input.a;
    s_output = StorageBuffer(-1795f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_5.x)), _wgslsmith_f_op_f32(global0.b.x + _wgslsmith_f_op_f32(max(global0.b.x, _wgslsmith_div_f32(-287f, 131f))))), countOneBits(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(min(var_0.xz, vec2<u32>(57470u, 113660u)), var_0.xy), reverseBits(countOneBits(31425u)))), vec4<i32>(u_input.d, global0.a, 13665i, ~firstTrailingBit(global0.a)));
}

