struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: bool,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 26>;

var<private> global1: array<vec2<f32>, 29> = array<vec2<f32>, 29>(vec2<f32>(745f, -506f), vec2<f32>(1383f, 1310f), vec2<f32>(-830f, 1963f), vec2<f32>(417f, -334f), vec2<f32>(-498f, 975f), vec2<f32>(1560f, -476f), vec2<f32>(1000f, -870f), vec2<f32>(1466f, 529f), vec2<f32>(-579f, -1150f), vec2<f32>(-1000f, 2060f), vec2<f32>(-1020f, -611f), vec2<f32>(168f, -3489f), vec2<f32>(191f, 2399f), vec2<f32>(2023f, -1689f), vec2<f32>(1191f, 607f), vec2<f32>(-1505f, -1440f), vec2<f32>(-1189f, -1115f), vec2<f32>(-1000f, -472f), vec2<f32>(-423f, 1170f), vec2<f32>(177f, -475f), vec2<f32>(161f, -823f), vec2<f32>(-287f, 1000f), vec2<f32>(592f, 1988f), vec2<f32>(1114f, 553f), vec2<f32>(-1467f, -926f), vec2<f32>(-1149f, 2543f), vec2<f32>(-420f, -679f), vec2<f32>(648f, 1003f), vec2<f32>(-448f, -862f));

var<private> global2: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(vec4<i32>(1i, 56272i, i32(-2147483648), 6809i), false, false, Struct_1(-434f, vec4<f32>(-156f, 1486f, 773f, 147f), false, 1i, 1u)), Struct_2(vec4<i32>(28576i, 107072i, 5514i, 1i), false, false, Struct_1(2047f, vec4<f32>(618f, -2762f, -1000f, 698f), true, -1i, 19162u)), Struct_2(vec4<i32>(-3383i, -22518i, -33525i, -15196i), true, false, Struct_1(-1000f, vec4<f32>(-710f, 473f, -1409f, 1611f), false, -1i, 0u)), Struct_2(vec4<i32>(54899i, i32(-2147483648), -5322i, 0i), true, true, Struct_1(-447f, vec4<f32>(992f, 498f, 1020f, 312f), true, -32560i, 0u)), Struct_2(vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), 1i), true, true, Struct_1(1000f, vec4<f32>(-628f, -1635f, -141f, -799f), true, 29724i, 17307u)), Struct_2(vec4<i32>(23528i, -23976i, -1i, 2147483647i), true, false, Struct_1(-1000f, vec4<f32>(-1411f, 1493f, -812f, -278f), false, i32(-2147483648), 26437u)), Struct_2(vec4<i32>(0i, -1i, 0i, 2147483647i), false, true, Struct_1(1715f, vec4<f32>(-1645f, 807f, -374f, -1000f), false, 0i, 9132u)), Struct_2(vec4<i32>(4827i, 0i, 8979i, 6662i), true, false, Struct_1(886f, vec4<f32>(1724f, -339f, 569f, 252f), true, 0i, 4294967295u)), Struct_2(vec4<i32>(-42844i, 0i, -1i, -1i), true, true, Struct_1(648f, vec4<f32>(1599f, -277f, 605f, 2324f), false, i32(-2147483648), 4294967295u)), Struct_2(vec4<i32>(1i, -43623i, 824i, -13745i), false, true, Struct_1(1428f, vec4<f32>(-158f, 183f, 1502f, 363f), false, -1i, 757u)), Struct_2(vec4<i32>(-12614i, -116883i, 9819i, 2147483647i), false, false, Struct_1(401f, vec4<f32>(128f, 1172f, 202f, -312f), true, 1i, 37866u)));

var<private> global3: vec4<i32>;

var<private> global4: array<Struct_2, 18>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(arg_0.d.b.zzz, arg_0.d.b.zzz)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d.b.x, arg_0.d.a, -1293f)))));
    let var_1 = arg_0.d;
    global3 = vec4<i32>(~(i32(-1i) * -(-14085i >> (arg_1 % 32u))), -max(2147483647i, 65722i), var_1.d, _wgslsmith_dot_vec4_i32(reverseBits(-vec4<i32>(arg_0.a.x, var_1.d, arg_0.a.x, global3.x)), _wgslsmith_add_vec4_i32(-abs(vec4<i32>(var_1.d, 2147483647i, var_1.d, -21081i)), _wgslsmith_div_vec4_i32(vec4<i32>(global3.x, 0i, 46124i, global3.x), select(vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 26u)], -8698i, global3.x, var_1.d), vec4<i32>(-7647i, var_1.d, var_1.d, -1i), vec4<bool>(false, var_1.c, arg_0.b, var_1.c))))));
    global4 = array<Struct_2, 18>();
    global3 = vec4<i32>(~(~global3.x), global0[_wgslsmith_index_u32(var_1.e, 26u)], arg_0.d.d, reverseBits(_wgslsmith_div_i32(2147483647i, -1i)));
    return _wgslsmith_add_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(abs(global3.x), _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(0u, 26u)], -1i), 26864i), ~global3.zyy), -7279i);
}

fn func_2() -> f32 {
    global0 = array<i32, 26>();
    global3 = reverseBits(~(-(~firstLeadingBit(vec4<i32>(global3.x, -31124i, -15488i, global0[_wgslsmith_index_u32(u_input.a, 26u)])))));
    let var_0 = ~_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(global3.x, global3.x), func_3(global4[_wgslsmith_index_u32(0u, 18u)], 0u)), abs(global0[_wgslsmith_index_u32(u_input.a, 26u)]) >> (abs(0u) % 32u), (0i << (u_input.a % 32u)) >> (~u_input.a % 32u)), global3.xzx);
    global0 = array<i32, 26>();
    let var_1 = global4[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, 0u), 18u)];
    return -1723f;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>) -> i32 {
    var var_0 = arg_0.c;
    global0 = array<i32, 26>();
    var var_1 = select(vec2<bool>(false | (arg_0.c || (false || arg_0.c)), _wgslsmith_f_op_f32(func_2()) != _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -290f)))), vec2<bool>(all(!select(vec2<bool>(false, true), vec2<bool>(arg_0.c, arg_0.c), vec2<bool>(true, false))), false), false);
    var var_2 = arg_0;
    var var_3 = global2[_wgslsmith_index_u32(~var_2.e, 11u)];
    return 70488i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 26>();
    var var_0 = -8223i;
    global3 = firstTrailingBit(vec4<i32>(~1i, -(~_wgslsmith_dot_vec2_i32(global3.wy, vec2<i32>(-26578i, 2147483647i))), -1i, -28758i));
    let var_1 = u_input.a;
    global0 = array<i32, 26>();
    var var_2 = false;
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(abs(global3.x >> (29660u % 32u)), global3.x, global3.x), ~_wgslsmith_sub_u32(min(var_1, ~9030u), u_input.a), vec4<i32>(global0[_wgslsmith_index_u32(41289u, 26u)], reverseBits(func_1(Struct_1(-490f, vec4<f32>(233f, 1633f, -1124f, -891f), true, 2147483647i, u_input.a), _wgslsmith_sub_vec2_i32(vec2<i32>(35377i, global0[_wgslsmith_index_u32(u_input.a, 26u)]), global3.yy))), _wgslsmith_div_i32(func_1(Struct_1(661f, vec4<f32>(-630f, -395f, -1198f, 756f), false, 45595i, 66926u), _wgslsmith_div_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 26u)], 2147483647i), global3.zx)), ~(-1i) << (0u % 32u)), -_wgslsmith_dot_vec4_i32(vec4<i32>(-11248i, -10921i, -1i, -1511i), -vec4<i32>(global3.x, global0[_wgslsmith_index_u32(30484u, 26u)], -1i, global3.x))), vec4<i32>(0i, -global3.x, max(~global0[_wgslsmith_index_u32(17173u, 26u)], -20088i), 0i));
}

