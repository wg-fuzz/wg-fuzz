struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: f32,
    d: bool,
    e: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 25> = array<vec4<i32>, 25>(vec4<i32>(37691i, 39417i, -51404i, -37821i), vec4<i32>(i32(-2147483648), -20952i, 40821i, -1i), vec4<i32>(48343i, i32(-2147483648), 1i, -7364i), vec4<i32>(-28714i, 74967i, -2989i, 1222i), vec4<i32>(2147483647i, -57545i, 1i, -33300i), vec4<i32>(i32(-2147483648), -58819i, 0i, 2147483647i), vec4<i32>(8229i, -1i, 0i, 2721i), vec4<i32>(26867i, 0i, -35612i, i32(-2147483648)), vec4<i32>(-23349i, -5127i, -1i, 0i), vec4<i32>(2147483647i, 0i, 1i, i32(-2147483648)), vec4<i32>(-3710i, -39275i, -1i, -32458i), vec4<i32>(-39887i, 9148i, 31552i, -49189i), vec4<i32>(2147483647i, 0i, -46184i, 10785i), vec4<i32>(-14502i, -1i, -1i, -31967i), vec4<i32>(1979i, -88636i, 23523i, 0i), vec4<i32>(i32(-2147483648), -27933i, -18813i, 1i), vec4<i32>(0i, -26292i, -1312i, 44237i), vec4<i32>(0i, 1i, -3828i, 0i), vec4<i32>(-31903i, -69551i, 43459i, 1i), vec4<i32>(35958i, 2147483647i, 68463i, 47466i), vec4<i32>(-51360i, 2147483647i, -7260i, 9647i), vec4<i32>(i32(-2147483648), -8685i, -52463i, 2147483647i), vec4<i32>(-1161i, 0i, 79010i, 0i), vec4<i32>(-51261i, 1i, 287i, 1i), vec4<i32>(-1i, i32(-2147483648), 0i, -1i));

var<private> global1: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(1u, true, vec3<bool>(true, true, false)), Struct_2(4294967295u, false, vec3<bool>(false, false, true)), Struct_2(1u, true, vec3<bool>(true, false, false)), Struct_2(7825u, true, vec3<bool>(true, false, true)), Struct_2(284u, false, vec3<bool>(false, false, false)), Struct_2(0u, false, vec3<bool>(true, true, true)), Struct_2(64864u, false, vec3<bool>(true, false, false)), Struct_2(4294967295u, false, vec3<bool>(false, false, false)), Struct_2(4294967295u, false, vec3<bool>(true, true, true)), Struct_2(0u, false, vec3<bool>(false, true, false)), Struct_2(47906u, false, vec3<bool>(false, false, true)), Struct_2(71u, false, vec3<bool>(false, true, true)), Struct_2(4294967295u, false, vec3<bool>(false, true, true)), Struct_2(4294967295u, false, vec3<bool>(false, false, true)), Struct_2(66269u, false, vec3<bool>(false, false, true)), Struct_2(92798u, true, vec3<bool>(false, false, true)), Struct_2(0u, false, vec3<bool>(false, false, false)), Struct_2(58913u, false, vec3<bool>(true, true, true)), Struct_2(12075u, false, vec3<bool>(false, false, true)), Struct_2(0u, false, vec3<bool>(true, true, true)), Struct_2(11283u, true, vec3<bool>(true, false, false)), Struct_2(4515u, true, vec3<bool>(true, true, false)), Struct_2(1u, true, vec3<bool>(true, false, true)), Struct_2(1u, false, vec3<bool>(true, false, true)), Struct_2(1u, true, vec3<bool>(false, false, false)), Struct_2(1u, true, vec3<bool>(false, true, false)), Struct_2(39913u, false, vec3<bool>(false, false, true)), Struct_2(4294967295u, false, vec3<bool>(true, false, true)), Struct_2(45584u, false, vec3<bool>(true, false, false)), Struct_2(4294967295u, true, vec3<bool>(false, true, true)));

var<private> global2: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec2<i32>(2147483647i, 2147483647i), vec4<bool>(true, false, true, false), true), Struct_1(vec2<i32>(-59828i, 25467i), vec4<bool>(false, false, true, true), true), Struct_1(vec2<i32>(-1i, -1i), vec4<bool>(false, true, false, true), true), Struct_1(vec2<i32>(-13015i, -4739i), vec4<bool>(false, false, true, true), false), Struct_1(vec2<i32>(0i, -1i), vec4<bool>(true, false, false, true), false), Struct_1(vec2<i32>(-21989i, -1i), vec4<bool>(true, true, false, true), false), Struct_1(vec2<i32>(-27892i, i32(-2147483648)), vec4<bool>(true, true, true, false), false), Struct_1(vec2<i32>(i32(-2147483648), 1i), vec4<bool>(true, true, false, true), true), Struct_1(vec2<i32>(-1i, i32(-2147483648)), vec4<bool>(false, true, false, false), false), Struct_1(vec2<i32>(21087i, 8060i), vec4<bool>(false, true, false, false), false), Struct_1(vec2<i32>(1i, 0i), vec4<bool>(true, false, true, true), false), Struct_1(vec2<i32>(-13035i, -35959i), vec4<bool>(false, false, false, true), false), Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), vec4<bool>(true, true, true, false), true), Struct_1(vec2<i32>(-3341i, 75619i), vec4<bool>(false, true, true, false), true), Struct_1(vec2<i32>(63889i, 11580i), vec4<bool>(false, true, true, false), true), Struct_1(vec2<i32>(1i, 1i), vec4<bool>(true, true, true, false), false), Struct_1(vec2<i32>(35338i, -2003i), vec4<bool>(true, false, false, false), true), Struct_1(vec2<i32>(-1i, 43832i), vec4<bool>(true, false, true, true), false), Struct_1(vec2<i32>(-1i, -42267i), vec4<bool>(true, true, false, true), false), Struct_1(vec2<i32>(1i, i32(-2147483648)), vec4<bool>(true, false, true, false), false), Struct_1(vec2<i32>(23113i, 2147483647i), vec4<bool>(true, false, false, true), false), Struct_1(vec2<i32>(-1559i, 0i), vec4<bool>(true, false, true, true), false), Struct_1(vec2<i32>(-1i, 0i), vec4<bool>(false, true, false, true), true), Struct_1(vec2<i32>(0i, -1i), vec4<bool>(false, false, true, true), false), Struct_1(vec2<i32>(0i, 1i), vec4<bool>(true, false, false, false), true));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: vec2<u32>) -> bool {
    let var_0 = ~vec2<u32>(u_input.c, arg_3.x);
    return false;
}

fn func_2() -> Struct_3 {
    let var_0 = select(!select(select(vec4<bool>(false, false, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true)), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, any(vec3<bool>(true, true, true)), true, true), vec4<bool>(true, true, func_3(global2[_wgslsmith_index_u32(~(0u >> (u_input.d.x % 32u)), 25u)], vec3<bool>(true, u_input.b.x <= u_input.e.x, all(vec3<bool>(false, true, false))), Struct_2(firstLeadingBit(u_input.a), true, select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false))), u_input.d), false));
    global0 = array<vec4<i32>, 25>();
    global2 = array<Struct_1, 25>();
    let var_1 = Struct_3(global1[_wgslsmith_index_u32(min(min(~90462u >> (_wgslsmith_mult_u32(u_input.a, 9883u) % 32u), 4294967295u), abs(51076u)), 30u)], _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1094f, 1202f) * vec2<f32>(-273f, -762f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1804f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-708f, 592f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-116f, 379f) + vec2<f32>(2335f, -419f)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-1000f, 772f)))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(368f, -265f) - _wgslsmith_f_op_f32(351f * -1209f))))), true, !(reverseBits(u_input.b.x) < -2147483647i));
    let var_2 = var_1;
    return Struct_3(global1[_wgslsmith_index_u32(var_1.a.a, 30u)], _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(var_2.b, var_2.b), var_1.b))), vec2<f32>(-1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1612f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1f + var_2.b.x), var_2.b.x)), false, all(!(!(!vec4<bool>(false, var_1.d, var_2.a.b, var_2.a.b)))));
}

fn func_1(arg_0: vec3<i32>, arg_1: bool, arg_2: Struct_2) -> Struct_2 {
    let var_0 = func_2();
    let var_1 = Struct_4(var_0.a, func_2().d, Struct_1(vec2<i32>(-(~(-21945i)), -1i), !(!(!vec4<bool>(true, arg_1, false, true))), var_0.a.c.x), max(u_input.d, firstTrailingBit(~(u_input.d | vec2<u32>(u_input.a, arg_2.a)))));
    let var_2 = 1066f;
    let var_3 = !any(func_2().a.c);
    let var_4 = _wgslsmith_f_op_f32(1387f * _wgslsmith_div_f32(414f, 1905f));
    return func_2().a;
}

fn func_4(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: vec3<f32>) -> u32 {
    var var_0 = _wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(1u, 25u)], _wgslsmith_sub_vec4_i32(vec4<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e.x, u_input.b.x), vec2<i32>(-2147483647i, u_input.e.x)), reverseBits(22032i), _wgslsmith_mod_i32(-u_input.e.x, _wgslsmith_div_i32(-36605i, -23254i)), u_input.e.x), abs(-_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, u_input.e.x, 2147483647i, u_input.e.x), vec4<i32>(28485i, u_input.e.x, 18047i, 32707i)))));
    var var_1 = firstLeadingBit(u_input.c) > firstLeadingBit(~(~arg_0.a.a) | ~1u);
    let var_2 = func_2().a.a;
    global1 = array<Struct_2, 30>();
    global0 = array<vec4<i32>, 25>();
    return arg_0.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(global1[_wgslsmith_index_u32(11470u ^ func_4(Struct_3(func_1(vec3<i32>(u_input.e.x, 13873i, u_input.b.x), true, Struct_2(17174u, true, vec3<bool>(false, true, false))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-373f, -918f))), -1140f, true, u_input.a < 4294967295u), vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(677f, 581f, 250f), vec3<f32>(-1135f, 448f, -555f)))), 30u)], vec2<f32>(_wgslsmith_f_op_f32(-539f - _wgslsmith_f_op_f32(f32(-1f) * -1317f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(654f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(742f + 1000f), _wgslsmith_f_op_f32(round(3935f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(127f - 995f)))), true, func_3(global2[_wgslsmith_index_u32(u_input.a, 25u)], vec3<bool>(true, true, true), Struct_2(~28111u ^ u_input.c, true, !func_1(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), true, global1[_wgslsmith_index_u32(u_input.d.x, 30u)]).c), ~u_input.d));
    var var_1 = func_2().a;
    global1 = array<Struct_2, 30>();
    global0 = array<vec4<i32>, 25>();
    var_1 = var_0.a;
    var_1 = func_1(-abs(min(u_input.e, _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.e.x, u_input.e.x, -2147483647i), u_input.b.zxy, vec3<i32>(2147483647i, u_input.b.x, 1i)))), !(u_input.d.x != 42049u), func_2().a);
    let x = u_input.a;
    s_output = StorageBuffer(abs(select(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.c), vec2<u32>(43153u, 17115u)), _wgslsmith_add_u32(1521u >> (1u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(66093u, 19229u, var_0.a.a, 0u), vec4<u32>(var_1.a, u_input.a, 79539u, 41492u))), true)), vec4<u32>(36183u, ~(var_0.a.a >> (0u % 32u)), min(_wgslsmith_dot_vec2_u32(vec2<u32>(123089u, u_input.a) | u_input.d, ~u_input.d), _wgslsmith_clamp_u32(u_input.c >> (var_0.a.a % 32u), 50747u, u_input.d.x)), _wgslsmith_clamp_u32(~firstTrailingBit(var_1.a), var_0.a.a, ~var_1.a)));
}

