struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: bool,
    d: Struct_2,
    e: vec2<i32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: u32,
    d: Struct_2,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 27>;

var<private> global1: bool;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2(arg_0: i32) -> bool {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(-1004f)), 114f, 1825f)));
    global0 = array<Struct_5, 27>();
    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.a.x))), var_0.a.x, var_0.a.x) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1535f, var_0.a.x, var_0.a.x))))));
    var var_1 = firstTrailingBit(u_input.b);
    let var_2 = select(!(!vec4<bool>(true, true, true, all(vec4<bool>(true, true, false, false)))), vec4<bool>(-(arg_0 << (1u % 32u)) > ~0i, (~u_input.a.x ^ arg_0) < -2147483647i, true, false), false);
    return all(!var_2.zx);
}

fn func_3(arg_0: bool) -> u32 {
    global0 = array<Struct_5, 27>();
    var var_0 = Struct_1(firstTrailingBit(~firstLeadingBit(select(vec3<u32>(1u, 69723u, 4294967295u), vec3<u32>(56495u, 1u, 62464u), vec3<bool>(false, arg_0, arg_0)))), min(2147483647i, 28445i), select(vec2<u32>(~firstTrailingBit(59258u), _wgslsmith_div_u32(1u, ~1u)), vec2<u32>(reverseBits(~0u), _wgslsmith_dot_vec4_u32(select(vec4<u32>(54175u, 1u, 0u, 4294967295u), vec4<u32>(1u, 4294967295u, 28908u, 10076u), vec4<bool>(true, arg_0, arg_0, true)), vec4<u32>(0u, 4294967295u, 44837u, 1u))), !((i32(-1i) * -2147483647i) >= (u_input.a.x >> (4294967295u % 32u)))));
    let var_1 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -577f), _wgslsmith_f_op_f32(sign(-647f))))), _wgslsmith_f_op_f32(step(-857f, _wgslsmith_f_op_f32(789f - _wgslsmith_f_op_f32(-1000f + 814f))))), Struct_3(!func_2(max(8819i, -2147483647i)), abs(var_0.a.x) >> (~_wgslsmith_mult_u32(var_0.a.x, 109782u) % 32u), true != any(vec4<bool>(false, false, arg_0, arg_0)), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(select(-2033f, -626f, false)), _wgslsmith_f_op_f32(f32(-1f) * -353f), _wgslsmith_f_op_f32(floor(-750f)))), u_input.a.zz), _wgslsmith_dot_vec4_u32(vec4<u32>(74565u, ~0u, ~(~38341u), _wgslsmith_mod_u32(4294967295u, _wgslsmith_add_u32(1u, var_0.a.x))), vec4<u32>(_wgslsmith_div_u32(~var_0.c.x, var_0.c.x), ~_wgslsmith_mod_u32(0u, 9182u), ~abs(var_0.a.x), _wgslsmith_mult_u32(~4294967295u, min(1u, 43752u)))), Struct_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(max(140f, 460f)), -909f, _wgslsmith_f_op_f32(step(-1792f, 1064f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, 802f, 1106f))) - vec3<f32>(-1548f, 1723f, -1000f)), vec3<bool>(true, arg_0, true)))));
    var var_2 = any(select(!(!vec3<bool>(var_1.b.a, true, true)), select(select(vec3<bool>(var_1.b.c, var_1.b.c, true), vec3<bool>(arg_0, false, false), false), vec3<bool>(false, var_1.b.c, true), vec3<bool>(arg_0, arg_0, arg_0)), vec3<bool>(true, true, true))) && false;
    var var_3 = var_1;
    return _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(max(vec3<u32>(61187u ^ var_3.c, 0u, ~var_0.c.x), min(var_0.a, var_0.a) | ~var_0.a), vec3<u32>(~abs(var_3.b.b), _wgslsmith_mod_u32(0u, ~68338u), ~2075u | var_0.a.x)), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(var_0.c.x, 2663u, var_0.a.x, var_3.c) | _wgslsmith_mult_vec4_u32(vec4<u32>(var_1.b.b, 0u, var_0.a.x, 4294967295u), vec4<u32>(var_0.a.x, var_0.c.x, var_1.c, 1u))), _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(select(vec4<u32>(var_1.c, var_1.b.b, 4294967295u, var_3.b.b), vec4<u32>(28743u, 94240u, var_0.a.x, 69161u), vec4<bool>(true, arg_0, false, false)), abs(vec4<u32>(0u, var_3.b.b, var_0.c.x, 1u))), vec4<u32>(var_3.b.b, var_0.a.x, ~var_3.c, ~var_1.c))), ~(~_wgslsmith_sub_u32(firstTrailingBit(var_1.c), 9945u)));
}

fn func_1(arg_0: Struct_3) -> bool {
    var var_0 = select(select(vec4<bool>(arg_0.c, func_2(firstTrailingBit(arg_0.e.x)), any(!vec3<bool>(arg_0.c, true, false)), true), vec4<bool>(_wgslsmith_add_u32(59414u, 7250u) < _wgslsmith_mult_u32(arg_0.b, 0u), true, true, func_3(false) > (33754u | arg_0.b)), true), select(select(select(vec4<bool>(false, arg_0.c, true, arg_0.c), select(vec4<bool>(arg_0.c, arg_0.a, false, false), vec4<bool>(true, arg_0.c, arg_0.c, false), vec4<bool>(arg_0.a, false, arg_0.c, arg_0.a)), vec4<bool>(arg_0.c, arg_0.a, true, arg_0.c)), !select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, arg_0.c, true), vec4<bool>(arg_0.a, true, true, arg_0.c)), vec4<bool>(arg_0.c, true, true, all(vec4<bool>(true, arg_0.a, arg_0.a, false)))), select(select(vec4<bool>(arg_0.c, true, true, arg_0.c), select(vec4<bool>(false, true, true, arg_0.a), vec4<bool>(true, false, arg_0.a, arg_0.c), vec4<bool>(arg_0.a, arg_0.c, arg_0.c, false)), false || arg_0.a), !select(vec4<bool>(true, false, arg_0.a, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, arg_0.c, arg_0.c)), !select(vec4<bool>(false, false, arg_0.c, arg_0.a), vec4<bool>(arg_0.c, arg_0.a, arg_0.a, false), arg_0.c)), vec4<bool>(false, true, arg_0.a, arg_0.a)), vec4<bool>(arg_0.a, false, all(!vec4<bool>(arg_0.a, true, arg_0.c, true)), arg_0.d.a.x <= 1514f));
    var_0 = !select(vec4<bool>(var_0.x, arg_0.a, var_0.x, any(vec4<bool>(var_0.x, false, true, var_0.x))), !(!select(vec4<bool>(arg_0.c, var_0.x, false, var_0.x), vec4<bool>(true, var_0.x, false, arg_0.a), vec4<bool>(var_0.x, false, var_0.x, var_0.x))), vec4<bool>(false, !var_0.x, !(arg_0.a | true), true));
    var var_1 = Struct_3(((false && (arg_0.b != 4294967295u)) != !(u_input.a.x != 10082i)) || arg_0.a, _wgslsmith_mod_u32(arg_0.b, 18307u), true, arg_0.d, ~u_input.a.zx);
    global1 = select(false, all(!select(select(vec2<bool>(true, false), vec2<bool>(false, arg_0.c), vec2<bool>(var_0.x, var_1.a)), var_0.xy, !var_1.a)), all(select(!select(vec4<bool>(true, var_1.a, true, true), vec4<bool>(false, false, arg_0.c, false), var_0.x), vec4<bool>(var_0.x == var_1.c, false, true || arg_0.a, arg_0.c), true)));
    let var_2 = arg_0;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = (!func_1(Struct_3(true, 23206u, true, Struct_2(vec3<f32>(-1423f, -305f, 1448f)), u_input.a.xw)) && (func_1(Struct_3(false, 1u, false, Struct_2(vec3<f32>(-1072f, -1580f, 400f)), u_input.a.xw)) | true)) | true;
    let var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(1685f, 2063f) - vec2<f32>(795f, -1055f)), vec2<f32>(-111f, -562f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1000f, -858f), vec2<f32>(-827f, 369f)))))));
    var var_1 = vec3<bool>(true, all(select(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), false);
    global1 = var_1.x;
    var var_2 = var_1.x;
    global1 = any(!(!(!select(var_1.zy, vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, var_1.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(926f, 414f, var_0.x, var_0.x))), vec4<f32>(var_0.x, 1550f, var_0.x, var_0.x))))), firstTrailingBit(vec3<u32>(reverseBits(1u), min(1u, ~100678u), reverseBits(1u))), var_0, vec2<u32>(~(~0u), 0u & _wgslsmith_clamp_u32(0u, 11158u, 1u)) & ~reverseBits(select(vec2<u32>(10127u, 0u), vec2<u32>(651u, 63105u), var_1.yx)));
}

