struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: u32,
    d: f32,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 8> = array<vec4<f32>, 8>(vec4<f32>(-162f, 1000f, 771f, -722f), vec4<f32>(-1743f, -1432f, -813f, 1084f), vec4<f32>(-836f, 1857f, -1000f, -2038f), vec4<f32>(513f, 1829f, 1238f, 283f), vec4<f32>(1637f, 462f, -1162f, -1659f), vec4<f32>(-1000f, 740f, 847f, 1000f), vec4<f32>(594f, 1000f, -206f, -385f), vec4<f32>(-1638f, -2131f, 762f, 673f));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<u32>, arg_1: u32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-797f, -1000f, -818f)))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1396f, _wgslsmith_f_op_f32(round(-611f)), -572f)));
    global0 = array<vec4<f32>, 8>();
    let var_1 = 0u;
    var var_2 = Struct_2(abs(~(~1u)), countOneBits(~(~(arg_1 ^ var_1))), var_1, -(~(-min(vec3<i32>(u_input.a, 16341i, u_input.a), vec3<i32>(-49272i, u_input.a, u_input.a)))));
    global0 = array<vec4<f32>, 8>();
    return _wgslsmith_sub_u32(var_1, arg_0.x) & (~arg_0.x ^ var_1);
}

fn func_2() -> bool {
    global0 = array<vec4<f32>, 8>();
    global0 = array<vec4<f32>, 8>();
    var var_0 = Struct_2(abs(_wgslsmith_clamp_u32(~func_3(vec2<u32>(47498u, 24865u), 23105u), abs(abs(16306u)), min(~4294967295u, firstLeadingBit(36093u)))), abs(~((11913u << (0u % 32u)) & _wgslsmith_clamp_u32(48402u, 9002u, 24652u))), ~_wgslsmith_sub_u32(1u, _wgslsmith_clamp_u32(reverseBits(30310u), ~4294967295u, _wgslsmith_clamp_u32(40879u, 1u, 1u))), vec3<i32>(u_input.a, _wgslsmith_add_i32(min(-6403i, -6961i), 0i), 87229i));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(1653f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(185f - 1f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1146f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-579f, -1000f)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-343f)))));
    var var_2 = Struct_4(_wgslsmith_clamp_u32(reverseBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, var_0.a, 1u), vec3<u32>(48026u, var_0.c, 4294967295u))), 3951u, var_0.b), all(vec4<bool>(false, true, ~var_0.a < _wgslsmith_mod_u32(4294967295u, 1u), all(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.x, var_1.x)) - 1f)) + _wgslsmith_div_f32(-758f, var_1.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(trunc(-2219f))) - _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(290f + _wgslsmith_f_op_f32(var_1.x + 543f)), false)));
    return true;
}

fn func_1(arg_0: Struct_4, arg_1: vec4<u32>) -> Struct_4 {
    global0 = array<vec4<f32>, 8>();
    var var_0 = u_input.a;
    let var_1 = vec4<bool>(func_2() | false, !any(!(!vec2<bool>(arg_0.b, arg_0.b))), true, all(!select(!vec4<bool>(arg_0.b, false, arg_0.b, arg_0.b), vec4<bool>(true, true, false, false), select(vec4<bool>(arg_0.b, false, arg_0.b, false), vec4<bool>(false, false, true, true), vec4<bool>(true, arg_0.b, arg_0.b, false)))));
    let var_2 = Struct_4(arg_1.x, !any(!var_1.xyy), 2072f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-891f)))));
    global0 = array<vec4<f32>, 8>();
    return Struct_4(arg_0.a, var_2.b, 1624f, var_2.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 8>();
    var var_0 = func_1(Struct_4(select(~(~1u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(3413u, 29090u)) & ~4294967295u, u_input.a != _wgslsmith_add_i32(u_input.a, 1i)), all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1000f, 1003f)), 155f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1797f, -139f))), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, 1u, ~(~4294967295u)), firstLeadingBit(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(84142u, 1u, 3881u, 15445u), vec4<u32>(4294967295u, 4294967295u, 1u, 1u)), _wgslsmith_div_u32(29519u, 8543u), 1u, max(19155u, 1u)))));
    var_0 = Struct_4(~(~var_0.a), false, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(select(var_0.c, -691f, !var_0.b))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)), var_0.c)));
    let var_1 = -vec4<i32>(u_input.a << (~(~var_0.a) % 32u), 1i, ~select(-27074i >> (var_0.a % 32u), 0i, any(vec3<bool>(true, true, true))), u_input.a >> (var_0.a % 32u));
    var var_2 = select(all(vec3<bool>(any(vec3<bool>(var_0.b, true, false)), all(!vec3<bool>(var_0.b, true, true)), !(!var_0.b))), !var_0.b | true, true);
    var_2 = false | any(vec4<bool>((false | var_0.b) | true, false, var_0.b, var_0.b));
    let var_3 = -(~firstTrailingBit(vec3<i32>(~(-87416i), -var_1.x, _wgslsmith_dot_vec3_i32(var_1.wxz, var_1.xwz))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1, vec2<i32>(abs(-13286i & _wgslsmith_mult_i32(u_input.a, 2147483647i)), var_1.x));
}

