struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<f32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 16>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: f32, arg_1: vec4<f32>, arg_2: vec3<bool>) -> vec4<f32> {
    global0 = array<vec2<i32>, 16>();
    global0 = array<vec2<i32>, 16>();
    let var_0 = 12997u;
    global0 = array<vec2<i32>, 16>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(arg_0)))))));
    return _wgslsmith_div_vec4_f32(arg_1, vec4<f32>(708f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(1992f))))), 1726f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-396f)) + _wgslsmith_f_op_f32(trunc(var_1.b))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.b)) + 1790f))));
}

fn func_2(arg_0: i32) -> vec3<bool> {
    global0 = array<vec2<i32>, 16>();
    var var_0 = !vec2<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1199f + 630f) - _wgslsmith_f_op_f32(select(-432f, 1190f, false))) > _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-753f, 388f)));
    let var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1071f, 683f, -1128f, 229f), vec4<f32>(536f, 119f, -1000f, -115f)) + _wgslsmith_div_vec4_f32(vec4<f32>(1537f, -871f, 782f, 2144f), vec4<f32>(-1000f, -1408f, 225f, 681f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(404f, 1773f, 915f, -879f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-462f, 1243f, 1383f, -1657f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_div_f32(576f, -906f), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(327f, 439f, 525f, -100f))), !vec3<bool>(false, true, var_0.x)))))));
    var var_2 = Struct_2(global0[_wgslsmith_index_u32(select(~u_input.a, 4294967295u, var_0.x), 16u)], Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1607f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1623f, var_1.x)))), Struct_1(1096f, _wgslsmith_f_op_f32(-var_1.x)));
    global0 = array<vec2<i32>, 16>();
    return select(vec3<bool>(77698u <= u_input.a, (true == var_0.x) & var_0.x, var_0.x), select(select(select(vec3<bool>(true, var_0.x, false), vec3<bool>(true, true, true), true), !select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(true, var_0.x, false)), !all(vec2<bool>(true, false))), !vec3<bool>(true, var_0.x, var_0.x), true), _wgslsmith_sub_u32(1u, abs(_wgslsmith_mult_u32(u_input.d, u_input.d))) < 4294967295u);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: u32) -> Struct_3 {
    let var_0 = true;
    var var_1 = Struct_3(Struct_2(countOneBits(-_wgslsmith_mod_vec2_i32(vec2<i32>(0i, u_input.b.x), vec2<i32>(u_input.b.x, u_input.b.x))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c.a)), arg_2.c.a), arg_2.c), Struct_2(u_input.c.wz, arg_2.b, arg_2.c), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -391f)) * _wgslsmith_f_op_f32(-720f - _wgslsmith_div_f32(arg_2.c.a, 145f))), arg_2.c.a), reverseBits(-_wgslsmith_div_i32(-28689i, -5246i ^ u_input.b.x)));
    var_1 = Struct_3(Struct_2(-(_wgslsmith_mult_vec2_i32(vec2<i32>(var_1.a.a.x, 45724i), u_input.c.xw) ^ -var_1.a.a), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.b.b.b))), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(select(var_1.c.x, var_1.c.x, true)))), var_1.b.b), Struct_2(max(_wgslsmith_sub_vec2_i32(firstLeadingBit(vec2<i32>(u_input.c.x, var_1.b.a.x)), vec2<i32>(arg_2.a.x, 2147483647i) & vec2<i32>(u_input.b.x, 1i)), ~u_input.b), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -476f), _wgslsmith_f_op_f32(var_1.c.x + -865f), all(vec4<bool>(false, false, true, var_0)))), var_1.a.b.b), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(296f, arg_2.b.b)) + _wgslsmith_f_op_f32(1898f - arg_2.b.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b.b * arg_2.b.b) + _wgslsmith_f_op_f32(floor(var_1.a.c.b))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.c)), var_1.a.a.x);
    global0 = array<vec2<i32>, 16>();
    global0 = array<vec2<i32>, 16>();
    return Struct_3(Struct_2(select(~abs(vec2<i32>(var_1.a.a.x, var_1.a.a.x)), vec2<i32>(1i, 1i), vec2<bool>(var_0, var_0)), arg_2.c, Struct_1(_wgslsmith_f_op_f32(-108f * _wgslsmith_div_f32(var_1.b.b.a, -1489f)), var_1.b.b.a)), Struct_2(~arg_2.a, var_1.a.c, var_1.b.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1421f), arg_2.b.a)), -5670i);
}

fn func_1(arg_0: vec2<u32>, arg_1: bool, arg_2: vec2<i32>, arg_3: i32) -> f32 {
    let var_0 = 29746u;
    global0 = array<vec2<i32>, 16>();
    let var_1 = func_4(select(!vec3<bool>(true, any(vec2<bool>(false, false)), true), !func_2(_wgslsmith_dot_vec4_i32(vec4<i32>(40742i, -1i, u_input.c.x, arg_2.x), u_input.c)), func_2(_wgslsmith_clamp_i32(arg_3, _wgslsmith_div_i32(5579i, u_input.b.x), firstTrailingBit(u_input.c.x)))), select(min(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, arg_0.x, 0u, u_input.a), vec4<u32>(11984u, arg_0.x, arg_0.x, var_0)), min(vec4<u32>(var_0, 44603u, 24829u, arg_0.x), vec4<u32>(var_0, 61723u, 4294967295u, arg_0.x))), ~(~vec4<u32>(u_input.a, u_input.d, var_0, arg_0.x)), all(vec2<bool>(true, arg_1))) ^ ~_wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(2843u, 1u, var_0, 59676u)), _wgslsmith_div_vec4_u32(vec4<u32>(arg_0.x, var_0, 0u, 4643u), vec4<u32>(76529u, var_0, arg_0.x, 4294967295u))), Struct_2(_wgslsmith_div_vec2_i32(max(min(u_input.b, vec2<i32>(0i, arg_3)), arg_2 | arg_2), vec2<i32>(-2147483647i, u_input.b.x)), Struct_1(_wgslsmith_f_op_vec4_f32(func_3(1f, vec4<f32>(1160f, -851f, -887f, -645f), !vec3<bool>(false, arg_1, true))).x, 1f), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-867f, 263f))), -237f)), _wgslsmith_dot_vec4_u32(select(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, var_0, var_0, u_input.d), vec4<u32>(var_0, 4294967295u, 1u, 20486u) & vec4<u32>(4294967295u, 4294967295u, var_0, var_0)), ~(~vec4<u32>(4294967295u, u_input.d, 4294967295u, arg_0.x)), select(select(vec4<bool>(arg_1, true, false, false), vec4<bool>(arg_1, false, false, true), vec4<bool>(false, arg_1, false, arg_1)), select(vec4<bool>(arg_1, arg_1, true, false), vec4<bool>(arg_1, true, false, true), arg_1), !vec4<bool>(arg_1, false, arg_1, arg_1))), countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0, 64739u, 4294967295u, u_input.a), vec4<u32>(arg_0.x, 4294967295u, var_0, 0u), ~vec4<u32>(85130u, 0u, u_input.d, u_input.a)))));
    let var_2 = vec4<u32>(~21745u, abs(1u), u_input.d, var_0);
    var var_3 = firstLeadingBit(5232i);
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(120f + 256f), _wgslsmith_f_op_f32(trunc(1226f)))) + _wgslsmith_f_op_f32(-var_1.b.c.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.c.b + var_1.b.b.a) * _wgslsmith_f_op_f32(ceil(390f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(351f, -1938f))), _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d, u_input.d), vec2<u32>(u_input.d, 19921u)), true, abs(vec2<i32>(-7363i, 0i)), -12574i << (u_input.a % 32u)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(918f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1174f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(var_0.b - var_0.a)))), 176f);
}

