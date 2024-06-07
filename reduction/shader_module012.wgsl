struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: i32,
    d: u32,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: u32,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec3<u32>,
    c: vec4<bool>,
    d: vec2<i32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 29> = array<Struct_3, 29>(Struct_3(-1428f, true, 1u, Struct_2(vec4<f32>(177f, -1327f, 1622f, -680f), vec2<bool>(false, false), -1i, 73382u)), Struct_3(588f, true, 29177u, Struct_2(vec4<f32>(945f, 217f, 1538f, 493f), vec2<bool>(false, false), 1i, 1u)), Struct_3(426f, true, 21077u, Struct_2(vec4<f32>(-894f, 735f, 458f, 1287f), vec2<bool>(false, true), -11634i, 0u)), Struct_3(-1000f, true, 30842u, Struct_2(vec4<f32>(-1000f, 158f, -236f, -826f), vec2<bool>(true, false), 0i, 0u)), Struct_3(609f, false, 64187u, Struct_2(vec4<f32>(293f, 1000f, -213f, 638f), vec2<bool>(true, false), 20274i, 4294967295u)), Struct_3(751f, true, 102164u, Struct_2(vec4<f32>(-907f, -1659f, 347f, -742f), vec2<bool>(true, true), i32(-2147483648), 0u)), Struct_3(-281f, false, 29079u, Struct_2(vec4<f32>(416f, -618f, 2167f, 101f), vec2<bool>(true, false), 2147483647i, 0u)), Struct_3(-2583f, true, 1u, Struct_2(vec4<f32>(117f, 977f, 1592f, -663f), vec2<bool>(true, false), i32(-2147483648), 1u)), Struct_3(-490f, true, 1u, Struct_2(vec4<f32>(350f, 559f, 1605f, 875f), vec2<bool>(false, true), 1959i, 65651u)), Struct_3(414f, false, 34596u, Struct_2(vec4<f32>(191f, 1000f, 733f, -1165f), vec2<bool>(false, false), 2147483647i, 0u)), Struct_3(1116f, false, 4294967295u, Struct_2(vec4<f32>(859f, 213f, 1277f, -792f), vec2<bool>(false, false), -1i, 0u)), Struct_3(-1478f, false, 28102u, Struct_2(vec4<f32>(-569f, -1007f, -359f, -1157f), vec2<bool>(true, false), 4457i, 2364u)), Struct_3(-298f, false, 1u, Struct_2(vec4<f32>(578f, -915f, 131f, -357f), vec2<bool>(true, true), 8174i, 39797u)), Struct_3(383f, false, 1u, Struct_2(vec4<f32>(1010f, -987f, 1587f, 581f), vec2<bool>(false, true), 2147483647i, 0u)), Struct_3(495f, false, 24502u, Struct_2(vec4<f32>(1391f, -902f, -804f, 818f), vec2<bool>(false, true), 5845i, 4986u)), Struct_3(567f, true, 1u, Struct_2(vec4<f32>(-185f, 763f, -2654f, 841f), vec2<bool>(true, false), 24453i, 3732u)), Struct_3(-1000f, true, 1u, Struct_2(vec4<f32>(-197f, 1233f, 2108f, -1528f), vec2<bool>(false, true), i32(-2147483648), 30399u)), Struct_3(-277f, true, 107976u, Struct_2(vec4<f32>(-902f, -758f, -193f, 1155f), vec2<bool>(true, false), -1851i, 35530u)), Struct_3(-131f, false, 45456u, Struct_2(vec4<f32>(235f, 663f, -418f, -1000f), vec2<bool>(false, true), 15817i, 46624u)), Struct_3(-242f, false, 92213u, Struct_2(vec4<f32>(1147f, -697f, 275f, 772f), vec2<bool>(false, false), i32(-2147483648), 4294967295u)), Struct_3(1000f, false, 29444u, Struct_2(vec4<f32>(-166f, -2273f, 289f, 257f), vec2<bool>(false, true), 2147483647i, 37641u)), Struct_3(1000f, false, 0u, Struct_2(vec4<f32>(-462f, 561f, 482f, 510f), vec2<bool>(true, false), 0i, 5697u)), Struct_3(828f, true, 1u, Struct_2(vec4<f32>(-268f, -313f, -329f, -1741f), vec2<bool>(true, true), -1i, 1u)), Struct_3(-1000f, true, 1u, Struct_2(vec4<f32>(1059f, -536f, 2832f, 851f), vec2<bool>(false, true), -9357i, 1u)), Struct_3(-1109f, false, 4294967295u, Struct_2(vec4<f32>(-329f, 485f, -296f, 335f), vec2<bool>(true, true), 1i, 0u)), Struct_3(-1438f, false, 36147u, Struct_2(vec4<f32>(-859f, 1741f, -1306f, 1000f), vec2<bool>(true, true), 2147483647i, 1u)), Struct_3(1470f, false, 6658u, Struct_2(vec4<f32>(1605f, 1777f, 588f, -312f), vec2<bool>(false, false), -1i, 10584u)), Struct_3(-312f, false, 0u, Struct_2(vec4<f32>(-649f, -396f, -1125f, -1000f), vec2<bool>(true, false), -64370i, 1938u)), Struct_3(392f, false, 21500u, Struct_2(vec4<f32>(-976f, 1442f, -543f, -476f), vec2<bool>(false, false), -1i, 4294967295u)));

var<private> global1: array<f32, 29> = array<f32, 29>(571f, 736f, 563f, -913f, -940f, -562f, 394f, -334f, -596f, 1703f, 818f, -1000f, -160f, -1687f, 529f, 878f, -334f, -116f, -789f, 1227f, 302f, 155f, 1181f, 319f, -1142f, -382f, -123f, -121f, -703f);

var<private> global2: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec4<u32>(1u, 47908u, 1u, 4294967295u)), Struct_1(vec4<u32>(1u, 23385u, 0u, 253u)), Struct_1(vec4<u32>(1u, 0u, 1u, 0u)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: Struct_4) -> i32 {
    var var_0 = abs(_wgslsmith_mod_u32(38069u, ~firstLeadingBit(1u)) ^ (0u | u_input.a));
    let var_1 = vec4<bool>(true || all(arg_2.c), arg_2.c.x, true, arg_2.a < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2.a))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.d.a) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-565f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_1.c, 29u)] - 250f), _wgslsmith_f_op_f32(arg_1.a - 455f), arg_2.a))), select(vec2<bool>(var_1.x, !arg_2.c.x & (global1[_wgslsmith_index_u32(0u, 29u)] >= -303f)), select(!(!arg_2.c.zz), var_1.zw, !select(vec2<bool>(arg_1.d.b.x, var_1.x), var_1.yx, var_1.x)), select(arg_2.c.zw, var_1.yy, select(vec2<bool>(var_1.x, arg_1.b), vec2<bool>(false, arg_2.c.x), arg_1.b))), -arg_2.d.x, ~abs(u_input.a));
    let var_3 = Struct_3(_wgslsmith_f_op_f32(sign(433f)), arg_2.c.x, 65870u, arg_1.d);
    global1 = array<f32, 29>();
    return arg_1.d.c;
}

fn func_2() -> vec3<u32> {
    let var_0 = vec4<i32>(func_3(~(~1u), global0[_wgslsmith_index_u32(firstTrailingBit(63726u), 29u)], Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(493f - 354f) * global1[_wgslsmith_index_u32(4294967295u, 29u)]), reverseBits(vec3<u32>(u_input.c, 25012u, 73714u)), vec4<bool>(true, true, true, true), countOneBits(vec2<i32>(u_input.e, u_input.e) << (vec2<u32>(u_input.c, 1u) % vec2<u32>(32u))), u_input.e << (_wgslsmith_div_u32(1u, u_input.c) % 32u))), 2147483647i, -max(30104i, -(~u_input.d)), -u_input.d);
    var var_1 = global2[_wgslsmith_index_u32(4294967295u, 3u)];
    var_1 = global2[_wgslsmith_index_u32(var_1.a.x, 3u)];
    let var_2 = vec3<bool>(true, any(vec4<bool>(u_input.e <= _wgslsmith_sub_i32(-2147483647i, -1i), all(vec4<bool>(false, true, false, true)) & any(vec3<bool>(true, true, false)), any(vec2<bool>(true, true)), false)), true);
    let var_3 = !(!select(var_1.a.x > max(1u, 27213u), false, false));
    return firstTrailingBit(_wgslsmith_clamp_vec3_u32(~_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.a.x, var_1.a.x, 67056u), vec3<u32>(9220u, 0u, 1u)), var_1.a.zxz & vec3<u32>(var_1.a.x, 0u, 0u), ~var_1.a.yxx), vec3<u32>(reverseBits(reverseBits(10684u)), 38098u, ~0u), firstLeadingBit(countOneBits(var_1.a.yxw))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_1) -> bool {
    let var_0 = -17011i;
    let var_1 = _wgslsmith_sub_u32(max(~(~arg_2.d), arg_3.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(7595u, 1u, arg_1.a.x, arg_3.a.x), arg_3.a), select(vec4<u32>(u_input.c, 33856u, 22357u, arg_1.a.x), arg_1.a, vec4<bool>(arg_2.b.x, true, arg_0.c.x, false))), func_2().x), ~reverseBits(arg_0.b.xy)));
    global0 = array<Struct_3, 29>();
    var var_2 = Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(arg_2.a, arg_2.a, any(arg_0.c))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_2.a + _wgslsmith_f_op_vec4_f32(arg_2.a * vec4<f32>(-505f, -842f, global1[_wgslsmith_index_u32(4294967295u, 29u)], arg_2.a.x))) - arg_2.a)), !select(vec2<bool>(false, !arg_0.c.x), vec2<bool>(any(vec2<bool>(true, arg_0.c.x)), 1i >= arg_0.e), true), -28196i, (_wgslsmith_mod_u32(_wgslsmith_add_u32(16666u, 8805u), firstLeadingBit(0u)) | _wgslsmith_mod_u32(u_input.c & 4294967295u, 5341u | u_input.c)) ^ firstLeadingBit(arg_2.d));
    var var_3 = Struct_3(_wgslsmith_f_op_f32(-1000f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(arg_3.a.x, 1010u), 29u)])), true | var_2.b.x, ~1u, Struct_2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(351f, var_2.a.x, 299f, -1000f) - vec4<f32>(var_2.a.x, 366f, -400f, 1000f)))))), vec2<bool>(~23097u >= _wgslsmith_mod_u32(var_1, 19257u), false), 0i, _wgslsmith_clamp_u32(select(_wgslsmith_dot_vec4_u32(arg_1.a, vec4<u32>(4294967295u, 1u, u_input.c, 1u)), ~arg_2.d, all(arg_0.c.xxy)), select(_wgslsmith_add_u32(0u, 15865u), ~12321u, any(vec2<bool>(arg_2.b.x, var_2.b.x))), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(arg_1.a, vec4<u32>(5684u, arg_1.a.x, 35543u, arg_3.a.x)), vec4<u32>(50156u, 39497u, 36945u, 68330u)))));
    return false;
}

fn func_1() -> vec4<bool> {
    var var_0 = vec4<bool>(true, func_4(Struct_4(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, 4294967295u), 29u)] * global1[_wgslsmith_index_u32(~5168u, 29u)]), func_2(), select(vec4<bool>(true, false, false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false)), u_input.a != u_input.a), max(vec2<i32>(u_input.e, 1132i), _wgslsmith_mod_vec2_i32(vec2<i32>(31917i, u_input.e), vec2<i32>(5818i, 56780i))), ~u_input.d & -u_input.e), global2[_wgslsmith_index_u32(max(~1u, u_input.a), 3u)], Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 29u)], global1[_wgslsmith_index_u32(4294967295u, 29u)], -427f, 498f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.c, 29u)], global1[_wgslsmith_index_u32(u_input.a, 29u)], global1[_wgslsmith_index_u32(41234u, 29u)], 223f))), select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(false, false), vec2<bool>(true, true)), abs(u_input.b), 1u), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(7130u, u_input.a), ~60571u) | (u_input.a ^ u_input.c), 3u)]), false, reverseBits(_wgslsmith_add_i32(0i, _wgslsmith_add_i32(-75380i, u_input.e))) == 6303i);
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1[_wgslsmith_index_u32(1u, 29u)], global1[_wgslsmith_index_u32(u_input.a, 29u)], global1[_wgslsmith_index_u32(44210u, 29u)], 617f)))) * vec4<f32>(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(0u), 10335u), 29u)], global1[_wgslsmith_index_u32(~reverseBits(u_input.c), 29u)], 485f, global1[_wgslsmith_index_u32(1u, 29u)])), vec2<bool>(false, !var_0.x), -1i, ~(~_wgslsmith_add_u32(~u_input.a, ~u_input.c)));
    let var_2 = var_0.wwz;
    var var_3 = global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(41003u, _wgslsmith_sub_u32(4294967295u, firstTrailingBit(0u)), 26622u), 3u)];
    var var_4 = var_1;
    return vec4<bool>(false && var_2.x, var_1.b.x, true | select(var_4.b.x, false, !(!var_0.x)), var_1.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    global1 = array<f32, 29>();
    let var_1 = vec3<bool>(any(select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false)), func_1(), true), vec4<bool>(true, true, true, all(vec2<bool>(true, false))), vec4<bool>(all(vec3<bool>(false, false, false)), true, true, true))), func_4(Struct_4(global1[_wgslsmith_index_u32(u_input.c, 29u)], select(vec3<u32>(0u, 34313u, 83269u), max(vec3<u32>(u_input.a, 1u, u_input.c), vec3<u32>(4294967295u, 0u, u_input.c)), false), vec4<bool>(true, true, true, true), max(select(vec2<i32>(u_input.d, 2147483647i), vec2<i32>(1i, 45860i), vec2<bool>(false, false)), -vec2<i32>(1i, u_input.b)), -1i), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~u_input.a >> (u_input.c % 32u), u_input.a), 3u)], Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1[_wgslsmith_index_u32(60816u, 29u)], global1[_wgslsmith_index_u32(41648u, 29u)], global1[_wgslsmith_index_u32(32630u, 29u)], global1[_wgslsmith_index_u32(u_input.c, 29u)]))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.c, 29u)], -789f, -1000f, 1000f))), vec2<bool>(true, true), firstLeadingBit(-17787i), 5236u & max(u_input.a, 28142u)), global2[_wgslsmith_index_u32(u_input.c, 3u)]), !all(vec3<bool>(true, true, true)) & true);
    var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-161f - global1[_wgslsmith_index_u32(1u, 29u)]) - global1[_wgslsmith_index_u32(~u_input.c, 29u)]), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(select(u_input.a, u_input.a, var_1.x), 29u)] - _wgslsmith_f_op_f32(f32(-1f) * -140f)))))) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(10455u, 29u)] - _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(4294967295u, 29u)], global1[_wgslsmith_index_u32(31353u, 29u)], true))) - _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(~58522u, 29u)], _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(u_input.c, 29u)], -192f, true))))), _wgslsmith_f_op_f32(f32(-1f) * -2549f));
    var var_2 = vec4<bool>(any(select(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, var_1.x, false, false), false), vec4<bool>(true, 1642f == global1[_wgslsmith_index_u32(u_input.a, 29u)], var_1.x, true), var_1.x)), _wgslsmith_mod_i32(firstLeadingBit(_wgslsmith_add_i32(-35782i, u_input.b)), -(~u_input.b)) != _wgslsmith_dot_vec2_i32(select(vec2<i32>(u_input.e, u_input.e), -vec2<i32>(-25487i, -6489i), all(vec3<bool>(true, var_1.x, true))), ~(~vec2<i32>(11573i, u_input.b))), false, true);
    global1 = array<f32, 29>();
    let var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(770f + -1715f), global1[_wgslsmith_index_u32(96117u, 29u)], -1069f, -531f)), vec2<bool>(any(vec3<bool>(!var_2.x, false, var_1.x)), ((u_input.a | u_input.a) < countOneBits(4294967295u)) && var_2.x), -2147483647i, 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(1u, 29u)], var_3.a.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_3.a.x, 319f)))))));
}

