struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
    c: f32,
    d: vec3<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<i32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 11>;

var<private> global1: vec4<i32> = vec4<i32>(-60632i, 2147483647i, 0i, 4627i);

var<private> global2: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(Struct_1(vec3<i32>(-9789i, -1i, i32(-2147483648))), Struct_1(vec3<i32>(5925i, 2147483647i, 0i)), vec4<f32>(-1000f, -1285f, -954f, -328f), vec3<bool>(false, true, true)), Struct_2(Struct_1(vec3<i32>(-36558i, 2147483647i, 2147483647i)), Struct_1(vec3<i32>(0i, 19878i, -22335i)), vec4<f32>(957f, -1587f, 214f, 1426f), vec3<bool>(true, false, false)), Struct_2(Struct_1(vec3<i32>(-37211i, -1i, 8263i)), Struct_1(vec3<i32>(2147483647i, 35460i, 0i)), vec4<f32>(-120f, -1028f, -1392f, 1000f), vec3<bool>(false, true, false)), Struct_2(Struct_1(vec3<i32>(0i, 0i, 10615i)), Struct_1(vec3<i32>(-31044i, 12218i, 26088i)), vec4<f32>(-2188f, -735f, -936f, -288f), vec3<bool>(true, false, false)), Struct_2(Struct_1(vec3<i32>(32261i, 0i, 0i)), Struct_1(vec3<i32>(25297i, -8560i, 0i)), vec4<f32>(-1000f, 212f, -1462f, 554f), vec3<bool>(true, true, true)), Struct_2(Struct_1(vec3<i32>(2147483647i, 1i, i32(-2147483648))), Struct_1(vec3<i32>(13884i, 2147483647i, -21498i)), vec4<f32>(778f, 134f, 427f, 287f), vec3<bool>(false, true, true)), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), -45411i)), Struct_1(vec3<i32>(1i, 0i, 4207i)), vec4<f32>(901f, -161f, -451f, 371f), vec3<bool>(false, false, false)), Struct_2(Struct_1(vec3<i32>(-3887i, -7926i, i32(-2147483648))), Struct_1(vec3<i32>(i32(-2147483648), -1i, 10480i)), vec4<f32>(1163f, 210f, -1151f, -199f), vec3<bool>(true, false, true)), Struct_2(Struct_1(vec3<i32>(-14107i, 2147483647i, 3211i)), Struct_1(vec3<i32>(i32(-2147483648), -1i, 2147483647i)), vec4<f32>(232f, 183f, -547f, -1322f), vec3<bool>(false, false, false)), Struct_2(Struct_1(vec3<i32>(10811i, 2147483647i, -12890i)), Struct_1(vec3<i32>(-73436i, 70545i, i32(-2147483648))), vec4<f32>(-579f, -1603f, 1159f, 917f), vec3<bool>(true, false, false)), Struct_2(Struct_1(vec3<i32>(-1i, -7924i, -1i)), Struct_1(vec3<i32>(i32(-2147483648), 0i, -1i)), vec4<f32>(-1000f, 1000f, -478f, -1551f), vec3<bool>(true, true, true)), Struct_2(Struct_1(vec3<i32>(5678i, 67001i, -77707i)), Struct_1(vec3<i32>(0i, 59350i, 2147483647i)), vec4<f32>(-290f, -1231f, -1624f, 1551f), vec3<bool>(true, false, false)), Struct_2(Struct_1(vec3<i32>(-30376i, 20172i, -1i)), Struct_1(vec3<i32>(i32(-2147483648), -1i, -21250i)), vec4<f32>(600f, 520f, -306f, -1008f), vec3<bool>(true, true, true)), Struct_2(Struct_1(vec3<i32>(2147483647i, 18586i, 50874i)), Struct_1(vec3<i32>(0i, 40871i, 20083i)), vec4<f32>(-590f, 1000f, 193f, -913f), vec3<bool>(false, false, false)), Struct_2(Struct_1(vec3<i32>(1i, -10695i, -8145i)), Struct_1(vec3<i32>(-44650i, -1i, 8861i)), vec4<f32>(977f, 309f, -789f, 186f), vec3<bool>(true, false, true)), Struct_2(Struct_1(vec3<i32>(1i, i32(-2147483648), 1i)), Struct_1(vec3<i32>(-31656i, -50363i, -1i)), vec4<f32>(-1000f, -599f, 473f, -653f), vec3<bool>(true, true, true)), Struct_2(Struct_1(vec3<i32>(-19437i, i32(-2147483648), 48815i)), Struct_1(vec3<i32>(2147483647i, -1i, -1i)), vec4<f32>(1368f, 1329f, -1000f, -1509f), vec3<bool>(false, false, true)), Struct_2(Struct_1(vec3<i32>(-1i, 570i, 1i)), Struct_1(vec3<i32>(-60339i, 7989i, 44615i)), vec4<f32>(-238f, -1880f, 432f, -627f), vec3<bool>(true, true, true)), Struct_2(Struct_1(vec3<i32>(1i, 2147483647i, 0i)), Struct_1(vec3<i32>(31862i, -1i, 0i)), vec4<f32>(716f, -1456f, -598f, -812f), vec3<bool>(true, false, false)), Struct_2(Struct_1(vec3<i32>(-21384i, -1i, 0i)), Struct_1(vec3<i32>(1i, 17615i, -10162i)), vec4<f32>(506f, 292f, 994f, -1000f), vec3<bool>(true, true, false)));

var<private> global3: bool;

var<private> global4: array<Struct_1, 7>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: u32, arg_1: vec4<bool>, arg_2: bool, arg_3: Struct_4) -> vec2<u32> {
    global4 = array<Struct_1, 7>();
    var var_0 = arg_3.c.b;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_3.c.d.x)));
    var var_2 = -_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, _wgslsmith_div_i32(2147483647i, -29894i), 1i, ~arg_3.a.a.a.x), ~vec4<i32>(global1.x, global1.x, arg_3.b.x, -50707i)), vec4<i32>(~arg_3.b.x, global1.x << (95915u % 32u), arg_3.b.x, _wgslsmith_sub_i32(-504i, arg_3.a.b.a.x)) & select(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 11301i, 1i, -2147483647i), vec4<i32>(global1.x, u_input.a, arg_3.c.a, 16961i)), ~vec4<i32>(global1.x, 0i, -12244i, u_input.a), !arg_1));
    global3 = arg_3.a.d.x;
    return (~vec2<u32>(arg_0 >> (1u % 32u), ~0u) << (~max(max(vec2<u32>(arg_0, 1u), vec2<u32>(4294967295u, 0u)), vec2<u32>(1u, arg_0) | vec2<u32>(11456u, arg_0)) % vec2<u32>(32u))) | (_wgslsmith_div_vec2_u32(~firstTrailingBit(vec2<u32>(45540u, 0u)), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0, 39911u), vec2<u32>(arg_0, arg_0), vec2<u32>(arg_0, 117741u))) << (((abs(vec2<u32>(arg_0, 4294967295u)) ^ reverseBits(vec2<u32>(arg_0, 1885u))) ^ _wgslsmith_div_vec2_u32(~vec2<u32>(arg_0, arg_0), vec2<u32>(arg_0, 0u))) % vec2<u32>(32u)));
}

fn func_2(arg_0: vec4<i32>, arg_1: i32, arg_2: f32) -> Struct_4 {
    let var_0 = 0u;
    let var_1 = !vec3<bool>(true, min(var_0, firstLeadingBit(var_0)) > 4294967295u, !all(!vec2<bool>(global0[_wgslsmith_index_u32(1u, 11u)], true)));
    var var_2 = Struct_3(arg_1 << (var_0 % 32u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-609f, -271f, _wgslsmith_div_f32(461f, 610f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(450f, -989f, arg_2)), vec3<bool>(global0[_wgslsmith_index_u32(~45753u, 11u)], any(vec3<bool>(true, global0[_wgslsmith_index_u32(var_0, 11u)], global0[_wgslsmith_index_u32(var_0, 11u)])), true))) + vec3<f32>(-648f, arg_2, _wgslsmith_f_op_f32(-1929f - _wgslsmith_f_op_f32(-741f + -1011f)))), arg_2, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(764f, -1234f, 1376f), vec3<f32>(539f, arg_2, -914f))))) * vec3<f32>(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2)) - arg_2), arg_2)));
    global3 = !(var_2.b.x <= var_2.c);
    global4 = array<Struct_1, 7>();
    return Struct_4(Struct_2(global4[_wgslsmith_index_u32(var_0 ^ var_0, 7u)], global4[_wgslsmith_index_u32(firstLeadingBit(var_0), 7u)], _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-496f, arg_2, 458f, var_2.d.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1380f, 261f, arg_2, 767f)))))), vec3<bool>(all(select(vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, true, true, true), false)), false, !global0[_wgslsmith_index_u32(1u, 11u)])), countOneBits(-arg_0.zy >> (func_3(select(4294967295u, var_0, var_1.x), vec4<bool>(false, global0[_wgslsmith_index_u32(var_0, 11u)], global0[_wgslsmith_index_u32(83803u, 11u)], false), var_2.c > 127f, Struct_4(Struct_2(Struct_1(global1.xyy), Struct_1(global1.zwx), vec4<f32>(1299f, 137f, var_2.c, 1000f), var_1), arg_0.yx, Struct_3(u_input.a, var_2.b, 128f, var_2.d))) % vec2<u32>(32u))), Struct_3(_wgslsmith_dot_vec2_i32(max(_wgslsmith_mult_vec2_i32(global1.zw, arg_0.zy), global1.zz), vec2<i32>(u_input.a, global1.x) & max(vec2<i32>(1i, -1i), arg_0.yz)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1601f, arg_2, -1422f) + var_2.b), var_2.d.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-var_2.b))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_2.b), vec3<f32>(var_2.d.x, 375f, 173f), false)))));
}

fn func_1() -> Struct_3 {
    global2 = array<Struct_2, 20>();
    let var_0 = vec4<f32>(342f, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-562f - 462f) - -2092f), 1260f)), 769f);
    var var_1 = func_2(-select(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(-32484i, u_input.a, 1i, global1.x)), vec4<i32>(-23930i, global1.x, -46533i, global1.x), min(vec4<i32>(2147483647i, 2147483647i, 69086i, 39173i), vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.a))), vec4<i32>(u_input.a, ~(-1i), -6227i, -15377i), !vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(1u, 11u)])), global1.x, _wgslsmith_f_op_f32(-var_0.x));
    let var_2 = Struct_2(Struct_1(var_1.a.b.a | -countOneBits(var_1.a.b.a)), global4[_wgslsmith_index_u32(0u, 7u)], var_1.a.c, func_2(vec4<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(-40034i, u_input.a, u_input.a), ~var_1.a.a.a), _wgslsmith_mult_i32(-1i, func_2(vec4<i32>(u_input.a, var_1.b.x, global1.x, global1.x), global1.x, 1000f).c.a), ~(u_input.a | 1i), _wgslsmith_sub_i32(func_2(vec4<i32>(global1.x, -2147483647i, global1.x, 0i), 6547i, var_0.x).b.x, -var_1.b.x)), -u_input.a, _wgslsmith_f_op_f32(f32(-1f) * -1952f)).a.d);
    var var_3 = global2[_wgslsmith_index_u32(select(~(~firstTrailingBit(_wgslsmith_sub_u32(4294967295u, 6816u))), ~abs(firstLeadingBit(~4294967295u)), any(!vec4<bool>(!var_2.d.x, true, all(vec3<bool>(global0[_wgslsmith_index_u32(13457u, 11u)], false, var_2.d.x)), any(var_2.d)))), 20u)];
    return Struct_3(~_wgslsmith_add_i32(-8645i, 2147483647i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(591f, -1134f, var_1.c.b.x), _wgslsmith_f_op_vec3_f32(var_1.a.c.yyw + var_3.c.yxw)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_3.c.x, var_0.x)))), func_2(-vec4<i32>(u_input.a, var_2.a.a.x, u_input.a, 1i), _wgslsmith_dot_vec3_i32(global1.zyx, var_2.b.a), 1000f).a.d)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(func_2(vec4<i32>(-2147483647i, u_input.a, -13870i, 15467i), u_input.a, var_3.c.x).a.c.x, var_0.x, -1613f))), _wgslsmith_f_op_f32(-var_2.c.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_1.a.c.x * -1617f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(258f * -347f)), _wgslsmith_f_op_f32(var_0.x + -1327f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(134f, var_2.c.x, var_0.x), var_2.c.xxx)) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(var_1.a.c.zyy)), _wgslsmith_f_op_vec3_f32(-var_2.c.www), false)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = func_2(countOneBits(vec4<i32>(1i, ~_wgslsmith_dot_vec2_i32(global1.xw, global1.xz), -_wgslsmith_dot_vec3_i32(vec3<i32>(-1916i, 0i, -15620i), global1.zxw), ~u_input.a)), 0i, func_1().b.x);
    var var_2 = _wgslsmith_sub_u32(78174u, func_3(~select(abs(0u), _wgslsmith_dot_vec3_u32(vec3<u32>(23348u, 0u, 0u), vec3<u32>(19311u, 9397u, 80411u)), true), vec4<bool>(all(!vec4<bool>(var_1.a.d.x, var_1.a.d.x, global0[_wgslsmith_index_u32(4050u, 11u)], true)), var_1.a.d.x, false, true & select(var_1.a.d.x, var_1.a.d.x, false)), !(!(!var_1.a.d.x)), var_1).x);
    let var_3 = var_1.a.c.zyy;
    let var_4 = func_2(firstTrailingBit(~min(vec4<i32>(u_input.a, var_1.b.x, u_input.a, -78394i), ~vec4<i32>(-2147483647i, -1i, var_1.c.a, global1.x))), ~(-42596i), -1000f).a;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.a);
}

