struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: f32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_3,
    c: Struct_2,
    d: vec3<i32>,
    e: f32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec4<f32>(448f, -340f, 799f, 262f), Struct_3(vec2<f32>(-537f, 1000f), Struct_1(false, 529f, -664f, true)), Struct_2(-699f, false, -269f), vec3<i32>(2147483647i, 1i, 0i), -1231f);

var<private> global1: i32 = 2147483647i;

var<private> global2: array<vec4<bool>, 30>;

var<private> global3: array<Struct_3, 25> = array<Struct_3, 25>(Struct_3(vec2<f32>(-1388f, 1000f), Struct_1(false, -888f, -706f, false)), Struct_3(vec2<f32>(-623f, -137f), Struct_1(true, 1880f, -2111f, true)), Struct_3(vec2<f32>(745f, 660f), Struct_1(true, -1000f, -1000f, false)), Struct_3(vec2<f32>(123f, -1000f), Struct_1(true, -423f, -987f, false)), Struct_3(vec2<f32>(848f, 783f), Struct_1(false, 1000f, -767f, true)), Struct_3(vec2<f32>(-256f, -1290f), Struct_1(true, -553f, -1361f, true)), Struct_3(vec2<f32>(-1000f, -510f), Struct_1(false, 1061f, -1239f, false)), Struct_3(vec2<f32>(-345f, 1044f), Struct_1(true, -1161f, 1322f, true)), Struct_3(vec2<f32>(1000f, 151f), Struct_1(false, 2125f, -1951f, true)), Struct_3(vec2<f32>(1261f, 1547f), Struct_1(true, -439f, -342f, false)), Struct_3(vec2<f32>(1552f, -1347f), Struct_1(true, 471f, 1161f, false)), Struct_3(vec2<f32>(-803f, -1095f), Struct_1(false, 1075f, -545f, true)), Struct_3(vec2<f32>(-605f, -2359f), Struct_1(true, -551f, 331f, false)), Struct_3(vec2<f32>(339f, 1000f), Struct_1(true, -776f, -276f, false)), Struct_3(vec2<f32>(369f, 1174f), Struct_1(true, -305f, -1027f, false)), Struct_3(vec2<f32>(-394f, -475f), Struct_1(false, -1332f, -2316f, false)), Struct_3(vec2<f32>(-176f, -382f), Struct_1(true, 785f, 437f, true)), Struct_3(vec2<f32>(880f, -1259f), Struct_1(true, 927f, -441f, false)), Struct_3(vec2<f32>(-717f, 1000f), Struct_1(false, -1965f, -1352f, false)), Struct_3(vec2<f32>(-129f, -1000f), Struct_1(true, 432f, -561f, false)), Struct_3(vec2<f32>(333f, -822f), Struct_1(false, 470f, -1309f, false)), Struct_3(vec2<f32>(1000f, -461f), Struct_1(false, 185f, 364f, true)), Struct_3(vec2<f32>(1308f, 641f), Struct_1(true, 1495f, -123f, false)), Struct_3(vec2<f32>(-190f, -641f), Struct_1(false, -622f, -1000f, false)), Struct_3(vec2<f32>(-139f, 1191f), Struct_1(true, 1708f, 1402f, false)));

var<private> global4: array<Struct_4, 14> = array<Struct_4, 14>(Struct_4(vec4<f32>(356f, 1191f, 250f, -1000f), Struct_3(vec2<f32>(-1587f, 561f), Struct_1(false, 142f, -756f, false)), Struct_2(639f, true, 207f), vec3<i32>(52467i, 1i, -33679i), -771f), Struct_4(vec4<f32>(-342f, 1010f, -100f, -534f), Struct_3(vec2<f32>(-1037f, -180f), Struct_1(false, -515f, 1774f, true)), Struct_2(-1211f, false, -390f), vec3<i32>(-6829i, -13681i, -1i), 334f), Struct_4(vec4<f32>(-983f, 2085f, 911f, -1319f), Struct_3(vec2<f32>(-157f, -549f), Struct_1(false, 1418f, 1091f, true)), Struct_2(-456f, false, 617f), vec3<i32>(i32(-2147483648), 2147483647i, 2147483647i), -593f), Struct_4(vec4<f32>(254f, 1000f, 657f, 843f), Struct_3(vec2<f32>(-1722f, 142f), Struct_1(true, -1000f, 1000f, true)), Struct_2(-1369f, true, -1322f), vec3<i32>(-4725i, -1i, 2147483647i), -362f), Struct_4(vec4<f32>(-629f, 605f, 515f, -1171f), Struct_3(vec2<f32>(743f, 178f), Struct_1(true, -1190f, -1000f, true)), Struct_2(292f, true, -166f), vec3<i32>(1i, -22019i, -42219i), 442f), Struct_4(vec4<f32>(959f, -1389f, 1179f, -164f), Struct_3(vec2<f32>(-477f, 1807f), Struct_1(false, 681f, 629f, true)), Struct_2(-1000f, true, 186f), vec3<i32>(i32(-2147483648), 15553i, 0i), 1000f), Struct_4(vec4<f32>(805f, -1000f, 1000f, -902f), Struct_3(vec2<f32>(-1516f, 1139f), Struct_1(true, 634f, -1190f, true)), Struct_2(486f, true, 255f), vec3<i32>(-1i, 22723i, 50256i), 757f), Struct_4(vec4<f32>(461f, 559f, 546f, 1000f), Struct_3(vec2<f32>(591f, 1131f), Struct_1(true, -1323f, -2444f, true)), Struct_2(557f, false, 150f), vec3<i32>(1i, -24926i, 0i), 1618f), Struct_4(vec4<f32>(-606f, -896f, -1042f, -1000f), Struct_3(vec2<f32>(1404f, -780f), Struct_1(true, 1355f, -130f, false)), Struct_2(1673f, true, -332f), vec3<i32>(73988i, -21649i, 2147483647i), -1277f), Struct_4(vec4<f32>(542f, -611f, 1804f, 535f), Struct_3(vec2<f32>(-915f, -1000f), Struct_1(true, -1000f, -1192f, true)), Struct_2(-1248f, false, 1405f), vec3<i32>(-1i, -66718i, 0i), -703f), Struct_4(vec4<f32>(216f, 564f, -1164f, 190f), Struct_3(vec2<f32>(204f, 512f), Struct_1(true, -664f, 507f, true)), Struct_2(110f, true, 1000f), vec3<i32>(-10859i, 25209i, i32(-2147483648)), -744f), Struct_4(vec4<f32>(419f, -376f, -720f, -767f), Struct_3(vec2<f32>(-899f, -444f), Struct_1(false, -1098f, 440f, true)), Struct_2(-319f, true, 427f), vec3<i32>(70915i, 20621i, -31445i), -1000f), Struct_4(vec4<f32>(347f, -1097f, -112f, 675f), Struct_3(vec2<f32>(502f, 864f), Struct_1(true, 328f, -147f, false)), Struct_2(806f, false, 1504f), vec3<i32>(-11778i, i32(-2147483648), 42263i), 360f), Struct_4(vec4<f32>(-1297f, -1342f, 827f, 1000f), Struct_3(vec2<f32>(-1544f, -454f), Struct_1(true, 1531f, -1248f, false)), Struct_2(1830f, true, -1647f), vec3<i32>(832i, 1i, 2147483647i), 286f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: vec3<u32>) -> u32 {
    global1 = global0.d.x;
    var var_0 = Struct_1(!any(vec3<bool>(all(vec3<bool>(global0.c.b, global0.c.b, global0.c.b)), !global0.b.b.d, true)), _wgslsmith_f_op_f32(sign(1695f)), -392f, all(vec4<bool>(any(vec3<bool>(true, global0.c.b, global0.c.b)), true, global0.c.b && false, global0.b.b.d)) && (arg_1.x >= min(_wgslsmith_sub_u32(75842u, u_input.b), min(62421u, arg_1.x))));
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.c.c * global0.a.x), global0.b.b.b))))));
    let var_2 = !global2[_wgslsmith_index_u32(arg_1.x, 30u)];
    var var_3 = ~(~arg_1.x) & firstTrailingBit(0u);
    return arg_1.x;
}

fn func_2() -> vec3<u32> {
    var var_0 = vec4<i32>(0i ^ ~(countOneBits(u_input.c) >> ((34209u & u_input.b) % 32u)), min(-reverseBits(global0.d.x), ~3460i), -1581i, -13206i << (select(_wgslsmith_clamp_u32(u_input.b, u_input.b, 1u) >> ((u_input.b | 44849u) % 32u), _wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.b, u_input.b), ~u_input.b), global0.b.b.a) % 32u));
    global2 = array<vec4<bool>, 30>();
    let var_1 = _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 22311u, func_3(var_0.x, vec3<u32>(u_input.b, u_input.b, 1u)), u_input.b), abs(~vec4<u32>(105646u, u_input.b, 4294967295u, 4294967295u))), _wgslsmith_mod_vec4_u32(vec4<u32>(~u_input.b, 1u, ~1u, reverseBits(u_input.b)), ~select(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(4294967295u, 53572u, u_input.b, 1u), global0.b.b.d))) >> (abs(firstTrailingBit(vec4<u32>(~0u, u_input.b, 100491u, abs(24449u)))) % vec4<u32>(32u));
    var_0 = ~(-abs(u_input.a));
    let var_2 = abs(~u_input.c) < 42642i;
    return ~(~var_1.yxx);
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: f32, arg_3: Struct_2) -> vec4<f32> {
    var var_0 = vec3<u32>(min(u_input.b, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(9863u, 0u, u_input.b)), func_2())), func_2().x, ~_wgslsmith_mod_u32(_wgslsmith_mult_u32(0u, 1u), ~arg_1) | select(abs(~arg_1), abs(arg_0) << ((u_input.b & 4294967295u) % 32u), global0.b.b.a));
    var var_1 = global0.b.b;
    global3 = array<Struct_3, 25>();
    var var_2 = Struct_1(arg_3.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(312f, arg_3.a)), true);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-891f, arg_2, 1770f, var_2.b) - vec4<f32>(global0.c.c, var_2.b, 1315f, -789f))))) * _wgslsmith_f_op_vec4_f32(exp2(global0.a)));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: vec4<u32>, arg_3: vec4<f32>) -> StorageBuffer {
    var var_0 = arg_2.zww;
    var var_1 = global0.c.a;
    global0 = Struct_4(_wgslsmith_div_vec4_f32(vec4<f32>(global0.c.a, _wgslsmith_f_op_f32(max(arg_1.b.b.b, _wgslsmith_div_f32(1028f, global0.c.c))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -887f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(global0.c.a)), 800f, !arg_1.c.b))), vec4<f32>(2212f, 220f, _wgslsmith_f_op_f32(exp2(global0.a.x)), global0.c.a)), Struct_3(arg_1.b.a, arg_1.b.b), global0.c, (arg_0 << (min(~vec3<u32>(4294967295u, u_input.b, 34403u), _wgslsmith_div_vec3_u32(vec3<u32>(1424u, 4294967295u, 0u), vec3<u32>(42188u, 0u, u_input.b))) % vec3<u32>(32u))) ^ vec3<i32>(-1i, countOneBits(~global0.d.x), 0i), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.e), arg_3.x, !arg_1.b.b.a)))));
    var var_2 = !arg_1.b.b.a;
    let var_3 = Struct_5(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.c.a), _wgslsmith_f_op_f32(global0.c.c - -1959f))) * arg_1.c.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -358f))), -1303f), arg_3.zyy, global0.d.x);
    return StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, global0.e, arg_3.x) + _wgslsmith_f_op_vec3_f32(-arg_3.yxz)))), vec3<f32>(-1308f, 435f, global0.c.c)), _wgslsmith_sub_i32(1i, global0.d.x) | arg_1.d.x, ~vec3<i32>(global0.d.x, _wgslsmith_add_i32(var_3.c & 2147483647i, -1i), ~(-1i)), ~(~countOneBits(var_0.yy | vec2<u32>(u_input.b, 21291u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    let x = u_input.a;
    s_output = func_4(~firstLeadingBit(firstLeadingBit(_wgslsmith_mod_vec3_i32(global0.d, global0.d))), global4[_wgslsmith_index_u32(u_input.b, 14u)], ~(~vec4<u32>(min(u_input.b, 0u), ~u_input.b, abs(118080u), ~u_input.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.e, -133f, global0.c.c, -1334f) * _wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_add_u32(u_input.b, ~u_input.b), ~0u, -616f, global0.c))));
}

