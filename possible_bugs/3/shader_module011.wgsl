struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec3<i32>,
    d: vec2<f32>,
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = -2147483647i;
    var var_1 = vec3<bool>(false, true, !all(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), 0u < arg_0.c)));
    var var_2 = arg_0;
    var var_3 = 2147483647i;
    let var_4 = abs(vec2<u32>(reverseBits(abs(var_2.c)), _wgslsmith_sub_u32(countOneBits(arg_0.c), ~15066u)) >> (vec2<u32>(~1u, ~(~0u)) % vec2<u32>(32u)));
    return 0i;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: f32, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = 0u;
    let var_1 = vec4<i32>(arg_1.x >> (_wgslsmith_add_u32(reverseBits(16651u), 0u) % 32u), ~(-func_3(Struct_1(arg_1.xxy, -189f, 47213u))), _wgslsmith_dot_vec2_i32(firstTrailingBit(~(arg_1.xy & arg_1.wx)), vec2<i32>(_wgslsmith_clamp_i32(-arg_1.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-23496i, -1i, -55255i), vec3<i32>(arg_1.x, -21387i, u_input.a)), ~arg_1.x), _wgslsmith_dot_vec3_i32(-arg_1.xzy, select(vec3<i32>(arg_1.x, u_input.b, u_input.b), arg_1.zww, vec3<bool>(false, false, true))))), -26598i);
    var var_2 = var_1.x;
    let var_3 = Struct_1(abs(arg_1.zxw), _wgslsmith_f_op_f32(max(-1738f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-1f)))), _wgslsmith_mod_u32(67667u, abs(arg_3.x)));
    let var_4 = var_3;
    return Struct_1(countOneBits(var_1.wyw), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(var_3.b, _wgslsmith_f_op_f32(round(-1530f)), true)))), ~var_4.c);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: u32, arg_3: Struct_1) -> vec3<f32> {
    var var_0 = u_input.b;
    let var_1 = func_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b)) + arg_0.b), -676f, _wgslsmith_f_op_f32(-1173f * arg_0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b + 380f)) * arg_3.b)), max(reverseBits(_wgslsmith_sub_vec4_i32(~vec4<i32>(-2147483647i, -1i, u_input.b, -1i), ~vec4<i32>(arg_3.a.x, -10510i, 86134i, arg_3.a.x))), -(vec4<i32>(-2147483647i, arg_3.a.x, -1i, -14593i) & max(vec4<i32>(u_input.a, -63601i, 1536i, -15865i), vec4<i32>(arg_3.a.x, -2147483647i, arg_3.a.x, -1i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(490f + arg_0.b) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, 1319f, true)) - _wgslsmith_f_op_f32(-arg_3.b)))), arg_1.xy);
    var_0 = arg_0.a.x;
    let var_2 = arg_0;
    var var_3 = var_1;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.b, 839f, -169f), vec3<f32>(arg_3.b, arg_0.b, -748f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.b, var_2.b, 461f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_3.b, var_3.b, -435f), vec3<f32>(var_2.b, arg_0.b, 711f))), _wgslsmith_div_vec3_f32(vec3<f32>(var_1.b, var_3.b, var_3.b), vec3<f32>(arg_0.b, 1213f, var_2.b)), any(vec2<bool>(true, true)))))));
}

fn func_1(arg_0: u32) -> bool {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -948f);
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(318f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * 624f)), -443f) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_4(func_2(vec4<f32>(var_0, -514f, 217f, var_0), vec4<i32>(0i, u_input.a, u_input.a, u_input.a), -220f, vec2<u32>(arg_0, 8881u)), ~vec3<u32>(0u, arg_0, 30840u), ~4613u, Struct_1(vec3<i32>(-2147483647i, u_input.b, 1i), 1246f, 1u))), vec3<f32>(var_0, _wgslsmith_div_f32(600f, 444f), var_0), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)))))));
    var_1 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -558f) - var_1.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(940f, var_0) + _wgslsmith_f_op_f32(var_1.x + 1408f))), _wgslsmith_f_op_f32(ceil(var_1.x)), _wgslsmith_f_op_f32(1448f + 256f))));
    let var_2 = false;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -206f) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))))));
    return any(vec2<bool>(all(select(vec4<bool>(var_2, true, true, false), !vec4<bool>(var_2, var_2, false, var_2), var_2)), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~(~(~countOneBits(11427u))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-167f)), _wgslsmith_f_op_f32(select(-905f, 1192f, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(895f * -1221f) + _wgslsmith_f_op_f32(804f + -286f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-1879f)))), _wgslsmith_f_op_f32(ceil(-963f)))), -1472f);
    var var_2 = -1000f;
    var var_3 = 1160f;
    var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2104f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-441f, -161f))))));
    var var_4 = vec3<bool>(true, any(!select(vec2<bool>(false, var_0), select(vec2<bool>(var_0, false), vec2<bool>(false, var_0), vec2<bool>(false, var_0)), vec2<bool>(true, true))), !((any(vec3<bool>(false, false, false)) & any(vec4<bool>(true, var_0, false, true))) & true));
    let var_5 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1088f, -695f, -1624f, 765f))))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -655f), _wgslsmith_f_op_f32(910f - _wgslsmith_f_op_vec3_f32(func_4(Struct_1(vec3<i32>(u_input.b, u_input.a, u_input.b), -444f, 15655u), vec3<u32>(76126u, 15120u, 20876u), 0u, Struct_1(vec3<i32>(u_input.a, -1i, u_input.a), 2213f, 4294967295u))).x), _wgslsmith_f_op_f32(step(-461f, _wgslsmith_f_op_f32(723f - 1273f))), -786f)) + _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -740f), _wgslsmith_f_op_f32(540f - 1f), _wgslsmith_f_op_f32(max(func_2(vec4<f32>(-328f, -342f, -443f, -1157f), vec4<i32>(-29758i, 0i, u_input.b, u_input.b), -477f, vec2<u32>(0u, 67571u)).b, _wgslsmith_f_op_f32(752f - 132f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -294f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -486f)), 118f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(265f))), -880f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(4294967295u, countOneBits(abs(~1261u))), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(555f - 706f), _wgslsmith_f_op_f32(-var_5.x), _wgslsmith_f_op_f32(-var_5.x), _wgslsmith_f_op_vec3_f32(func_4(Struct_1(vec3<i32>(-1i, 2147483647i, 6994i), var_5.x, 0u), vec3<u32>(16733u, 1u, 0u), 0u, Struct_1(vec3<i32>(u_input.a, u_input.b, 5575i), var_5.x, 0u))).x)), firstLeadingBit(vec4<i32>(u_input.a, 8652i, 1i, abs(-2147483647i))), 124f, ~select(vec2<u32>(0u, 45880u), vec2<u32>(4294967295u, 19331u), var_4.zx) ^ ~(vec2<u32>(4294967295u, 84736u) >> (vec2<u32>(1u, 0u) % vec2<u32>(32u)))).b, firstLeadingBit(~(-(vec3<i32>(u_input.b, -18822i, 59152i) | vec3<i32>(22356i, 0i, u_input.a)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-612f, var_5.x))) + _wgslsmith_f_op_vec2_f32(var_5.wz + var_5.zw)))));
}

