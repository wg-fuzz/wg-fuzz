struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec3<u32>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 27> = array<bool, 27>(false, true, true, true, true, true, false, true, true, true, true, true, true, true, true, true, true, false, true, false, true, true, false, false, true, false, true);

var<private> global1: array<Struct_1, 9>;

var<private> global2: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(true, vec2<f32>(1873f, 1170f), Struct_2(false, vec4<f32>(158f, -1904f, 196f, 576f), Struct_1(vec4<f32>(1000f, 420f, 805f, 388f), true, vec3<u32>(1u, 0u, 0u), 4294967295u, 1751f))), Struct_3(true, vec2<f32>(409f, -524f), Struct_2(true, vec4<f32>(1100f, -600f, 1000f, -1394f), Struct_1(vec4<f32>(-1000f, 149f, -233f, 1875f), false, vec3<u32>(4294967295u, 0u, 4294967295u), 0u, -436f))), Struct_3(false, vec2<f32>(-471f, -664f), Struct_2(true, vec4<f32>(416f, -1232f, 192f, 439f), Struct_1(vec4<f32>(929f, 1000f, -573f, -1037f), true, vec3<u32>(4294967295u, 0u, 1u), 4294967295u, 132f))), Struct_3(true, vec2<f32>(-279f, 1257f), Struct_2(true, vec4<f32>(-2284f, 403f, -547f, -349f), Struct_1(vec4<f32>(-982f, 1665f, 894f, -1266f), true, vec3<u32>(43634u, 1u, 2303u), 1u, -209f))), Struct_3(true, vec2<f32>(1358f, 1688f), Struct_2(true, vec4<f32>(-358f, -1276f, -436f, 1260f), Struct_1(vec4<f32>(-1000f, 1098f, 1000f, -404f), true, vec3<u32>(2523u, 2190u, 4294967295u), 4203u, 1116f))), Struct_3(true, vec2<f32>(718f, 1511f), Struct_2(false, vec4<f32>(749f, 1790f, 795f, 530f), Struct_1(vec4<f32>(651f, 634f, -1233f, 829f), true, vec3<u32>(17193u, 55945u, 23178u), 11770u, -198f))), Struct_3(true, vec2<f32>(-448f, -284f), Struct_2(false, vec4<f32>(-1763f, 548f, 1668f, 2022f), Struct_1(vec4<f32>(-1275f, -182f, 1655f, -2782f), true, vec3<u32>(1u, 1u, 50565u), 51413u, -771f))), Struct_3(false, vec2<f32>(1207f, -1252f), Struct_2(false, vec4<f32>(-1000f, -110f, -699f, -590f), Struct_1(vec4<f32>(840f, -829f, -1774f, -1518f), true, vec3<u32>(70958u, 5156u, 1u), 1u, -1032f))), Struct_3(false, vec2<f32>(-1000f, 493f), Struct_2(true, vec4<f32>(853f, -667f, -496f, 1513f), Struct_1(vec4<f32>(-459f, -1000f, -414f, -1139f), true, vec3<u32>(48194u, 1155u, 4294967295u), 0u, 1348f))), Struct_3(false, vec2<f32>(-333f, -247f), Struct_2(true, vec4<f32>(-709f, 1342f, 1000f, -580f), Struct_1(vec4<f32>(543f, -393f, -610f, 954f), true, vec3<u32>(87345u, 9571u, 59132u), 7154u, -228f))), Struct_3(false, vec2<f32>(-1763f, 1270f), Struct_2(true, vec4<f32>(801f, -504f, 1000f, -1327f), Struct_1(vec4<f32>(-479f, -1143f, -290f, 962f), false, vec3<u32>(4294967295u, 4294967295u, 0u), 17653u, -1000f))), Struct_3(false, vec2<f32>(598f, 243f), Struct_2(true, vec4<f32>(-648f, 663f, -682f, -993f), Struct_1(vec4<f32>(-642f, 273f, 925f, -1957f), true, vec3<u32>(36129u, 78719u, 21338u), 1u, -203f))), Struct_3(true, vec2<f32>(436f, 726f), Struct_2(true, vec4<f32>(-1267f, -1166f, -175f, -509f), Struct_1(vec4<f32>(617f, -1077f, -1178f, -1115f), true, vec3<u32>(4294967295u, 1u, 0u), 42836u, 1000f))), Struct_3(true, vec2<f32>(-1000f, 943f), Struct_2(false, vec4<f32>(-667f, 2498f, -127f, -661f), Struct_1(vec4<f32>(-908f, -402f, -2026f, 1486f), false, vec3<u32>(1956u, 116626u, 1u), 4294967295u, -834f))), Struct_3(false, vec2<f32>(858f, -280f), Struct_2(true, vec4<f32>(679f, 303f, 1000f, 576f), Struct_1(vec4<f32>(-552f, -1000f, 185f, 1248f), false, vec3<u32>(4294967295u, 1u, 0u), 4294967295u, 1705f))), Struct_3(true, vec2<f32>(-1584f, -1134f), Struct_2(false, vec4<f32>(-1767f, -2195f, 201f, -652f), Struct_1(vec4<f32>(1139f, 1024f, -1000f, -288f), false, vec3<u32>(0u, 0u, 74419u), 26443u, 418f))), Struct_3(true, vec2<f32>(941f, -1809f), Struct_2(false, vec4<f32>(134f, 1198f, -480f, -903f), Struct_1(vec4<f32>(-717f, 685f, 273f, 1480f), true, vec3<u32>(52134u, 51914u, 92640u), 0u, 124f))), Struct_3(false, vec2<f32>(-1000f, -1010f), Struct_2(true, vec4<f32>(151f, 1068f, 1170f, 399f), Struct_1(vec4<f32>(1392f, 658f, 465f, -1579f), false, vec3<u32>(0u, 4294967295u, 1u), 1u, 376f))), Struct_3(false, vec2<f32>(-1222f, -284f), Struct_2(false, vec4<f32>(-1164f, -440f, -1194f, -373f), Struct_1(vec4<f32>(-984f, 1012f, -1000f, 290f), false, vec3<u32>(70581u, 43880u, 107691u), 1u, -982f))), Struct_3(true, vec2<f32>(1138f, -188f), Struct_2(false, vec4<f32>(1199f, -482f, -1389f, 219f), Struct_1(vec4<f32>(-1363f, -1879f, -1000f, -1684f), false, vec3<u32>(3651u, 4294967295u, 36813u), 0u, -2653f))), Struct_3(false, vec2<f32>(2501f, -241f), Struct_2(true, vec4<f32>(1315f, -688f, -566f, -924f), Struct_1(vec4<f32>(529f, -469f, -509f, -542f), true, vec3<u32>(4294967295u, 0u, 4294967295u), 55062u, 1127f))), Struct_3(true, vec2<f32>(666f, -189f), Struct_2(true, vec4<f32>(109f, 1739f, 432f, 735f), Struct_1(vec4<f32>(-1150f, -106f, 614f, -1964f), false, vec3<u32>(33151u, 90784u, 36390u), 15292u, -725f))), Struct_3(true, vec2<f32>(106f, -342f), Struct_2(false, vec4<f32>(-124f, -100f, 817f, -936f), Struct_1(vec4<f32>(679f, 806f, -1383f, -850f), true, vec3<u32>(24241u, 0u, 28781u), 94730u, -1629f))), Struct_3(true, vec2<f32>(709f, -822f), Struct_2(false, vec4<f32>(-1493f, 1115f, -642f, 1283f), Struct_1(vec4<f32>(752f, -1812f, 839f, -1000f), true, vec3<u32>(0u, 4294967295u, 63908u), 4294967295u, 1850f))));

var<private> global3: array<Struct_2, 2>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: vec2<f32>, arg_2: vec4<i32>, arg_3: Struct_3) -> u32 {
    let var_0 = 2147483647i;
    let var_1 = u_input.b.x;
    var var_2 = arg_3.c.c;
    global3 = array<Struct_2, 2>();
    global3 = array<Struct_2, 2>();
    return ~_wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.b.x, 4294967295u) | ~(~arg_3.c.c.d), _wgslsmith_dot_vec3_u32(arg_3.c.c.c, min(vec3<u32>(49295u, 92002u, u_input.b.x), ~var_2.c)));
}

fn func_2(arg_0: u32, arg_1: i32) -> vec3<bool> {
    global1 = array<Struct_1, 9>();
    let var_0 = 43552u;
    global3 = array<Struct_2, 2>();
    var var_1 = _wgslsmith_clamp_vec2_u32(~vec2<u32>(~u_input.b.x & ~arg_0, _wgslsmith_add_u32(var_0, 0u) >> (reverseBits(32095u) % 32u)), ~(~(u_input.b.xy | u_input.b.yz) >> (u_input.b.yy % vec2<u32>(32u))), ~vec2<u32>(func_3(-27405i, vec2<f32>(1184f, 896f), u_input.c, Struct_3(false, vec2<f32>(2119f, 677f), Struct_2(global0[_wgslsmith_index_u32(u_input.b.x, 27u)], vec4<f32>(223f, 1000f, -2269f, 1108f), global1[_wgslsmith_index_u32(59635u, 9u)]))) & ~u_input.b.x, u_input.b.x));
    let var_2 = global1[_wgslsmith_index_u32(u_input.b.x, 9u)];
    return !(!select(vec3<bool>(false | var_2.b, !var_2.b, var_2.b), !vec3<bool>(var_2.b, false, true), select(select(true, false, var_2.b), global0[_wgslsmith_index_u32(arg_0, 27u)] == true, arg_1 >= arg_1)));
}

fn func_4(arg_0: vec3<bool>) -> Struct_2 {
    var var_0 = ~vec4<u32>(~1u, 0u, _wgslsmith_sub_u32(312u, u_input.b.x) >> (_wgslsmith_dot_vec3_u32(~u_input.b, _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 1u), vec3<u32>(1u, u_input.b.x, u_input.b.x))) % 32u), ~u_input.b.x);
    let var_1 = countOneBits(_wgslsmith_div_vec4_u32(firstLeadingBit(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b.x, 0u, u_input.b.x, 63204u), vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.b.x))), vec4<u32>(func_3(u_input.c.x, vec2<f32>(-1000f, -1571f), vec4<i32>(u_input.c.x, 12442i, u_input.c.x, 1i), Struct_3(false, vec2<f32>(-1682f, -1127f), global3[_wgslsmith_index_u32(0u, 2u)])) << (u_input.b.x % 32u), 16329u, abs(u_input.b.x), _wgslsmith_mult_u32(~u_input.b.x, var_0.x))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(798f, 744f, global0[_wgslsmith_index_u32(4294967295u, 27u)] | arg_0.x)), 852f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -125f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1173f * _wgslsmith_f_op_f32(min(-1143f, -2796f))))));
    var_0 = countOneBits(vec4<u32>(4294967295u >> (var_0.x % 32u), _wgslsmith_dot_vec2_u32(var_1.wy, vec2<u32>(27958u, 4294967295u)), 1u, ~u_input.b.x) ^ vec4<u32>(81949u, var_1.x, ~39566u, var_0.x)) & ~(((var_1 & vec4<u32>(74923u, 5239u, var_0.x, 0u)) ^ (vec4<u32>(2841u, var_1.x, var_1.x, var_0.x) | vec4<u32>(var_1.x, 0u, var_1.x, 0u))) >> (var_1 % vec4<u32>(32u)));
    var var_3 = _wgslsmith_f_op_f32(max(var_2, _wgslsmith_f_op_f32(select(var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1300f, var_2, arg_0.x))), true))));
    return global3[_wgslsmith_index_u32(~var_0.x, 2u)];
}

fn func_5(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_2, arg_3: vec4<u32>) -> vec3<bool> {
    global0 = array<bool, 27>();
    var var_0 = any(vec4<bool>(true, 4294967295u >= reverseBits(arg_3.x << (arg_3.x % 32u)), true, u_input.a.x >= 17969i));
    var var_1 = Struct_3(false, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2.b.x, arg_1, global0[_wgslsmith_index_u32(arg_3.x, 27u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(203f)))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(arg_2.c.a.xx)), arg_2.c.a.zy, !(!vec2<bool>(arg_2.c.b, arg_2.a))))), func_4(!vec3<bool>(any(vec4<bool>(true, arg_2.a, arg_2.a, arg_2.c.b)), select(global0[_wgslsmith_index_u32(arg_0.x, 27u)], arg_2.c.b, global0[_wgslsmith_index_u32(24404u, 27u)]), true)));
    global2 = array<Struct_3, 24>();
    let var_2 = -1541f;
    return select(func_2(~_wgslsmith_div_u32(~21342u, 16908u), ~_wgslsmith_sub_i32(-u_input.c.x, 0i)), select(vec3<bool>(!arg_2.a, true, any(!vec4<bool>(global0[_wgslsmith_index_u32(9820u, 27u)], true, arg_2.a, global0[_wgslsmith_index_u32(arg_0.x, 27u)]))), !vec3<bool>(!global0[_wgslsmith_index_u32(1u, 27u)], true, true), !(!(!arg_2.a))), vec3<bool>(!global0[_wgslsmith_index_u32(126770u >> (arg_0.x % 32u), 27u)], any(select(select(vec3<bool>(false, false, true), vec3<bool>(var_1.c.a, false, false), vec3<bool>(var_1.a, true, true)), select(vec3<bool>(true, var_1.a, arg_2.a), vec3<bool>(global0[_wgslsmith_index_u32(arg_3.x, 27u)], false, true), var_1.c.a), !vec3<bool>(arg_2.c.b, arg_2.a, global0[_wgslsmith_index_u32(69233u, 27u)]))), false));
}

fn func_1() -> Struct_1 {
    let var_0 = u_input.b.x;
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.b, countOneBits(~vec3<u32>(var_0, 0u, u_input.b.x))), vec3<u32>(_wgslsmith_add_u32(4294967295u, ~u_input.b.x), abs(var_0 & u_input.b.x) ^ 43100u, abs(0u))), 24u)];
    let var_2 = select(!func_5(u_input.b.xz, 1378f, func_4(func_2(0u, -1i)), _wgslsmith_add_vec4_u32(abs(vec4<u32>(u_input.b.x, 5719u, var_1.c.c.c.x, var_0)), _wgslsmith_add_vec4_u32(vec4<u32>(var_0, 23760u, 9906u, var_0), vec4<u32>(var_0, u_input.b.x, var_1.c.c.c.x, 34960u)))), !vec3<bool>(all(select(vec4<bool>(false, global0[_wgslsmith_index_u32(77094u, 27u)], false, true), vec4<bool>(var_1.a, var_1.c.a, var_1.a, global0[_wgslsmith_index_u32(var_0, 27u)]), vec4<bool>(global0[_wgslsmith_index_u32(36444u, 27u)], var_1.a, global0[_wgslsmith_index_u32(var_0, 27u)], false))), any(vec4<bool>(false, false, true, var_1.a)), global0[_wgslsmith_index_u32(u_input.b.x, 27u)]), func_2(var_1.c.c.c.x, u_input.c.x << (_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(5800u, 13369u)), max(u_input.b.zz, u_input.b.xy)) % 32u)).x);
    var var_3 = abs(u_input.b);
    global3 = array<Struct_2, 2>();
    return var_1.c.c;
}

fn func_6(arg_0: u32, arg_1: f32, arg_2: Struct_2) -> i32 {
    var var_0 = Struct_4(global1[_wgslsmith_index_u32(0u, 9u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))), ~u_input.c.x, firstTrailingBit(_wgslsmith_clamp_u32(arg_0, ~arg_2.c.d, 4294967295u)), func_4(vec3<bool>(func_4(func_2(0u, u_input.c.x)).a, global0[_wgslsmith_index_u32(~arg_0, 27u)], true)).c.b);
    var var_1 = arg_1;
    var_1 = 372f;
    let var_2 = -923f;
    var var_3 = Struct_2(all(vec2<bool>(arg_2.c.b, true)), var_0.a.a, func_1());
    return firstLeadingBit(47796i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(func_6(4906u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -260f)), Struct_2(global0[_wgslsmith_index_u32(reverseBits(1u), 27u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-289f, -1000f, -644f, 331f), vec4<f32>(1389f, 721f, 1117f, 542f))), func_1())), -16809i);
    var var_1 = !vec2<bool>(!global0[_wgslsmith_index_u32(u_input.b.x >> (56512u % 32u), 27u)], false);
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(944f, -1000f, -285f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1326f)) * -245f))), !any(vec3<bool>(select(true, true, var_1.x), global0[_wgslsmith_index_u32(u_input.b.x << (u_input.b.x % 32u), 27u)], func_5(u_input.b.zx, 717f, Struct_2(global0[_wgslsmith_index_u32(u_input.b.x, 27u)], vec4<f32>(-2590f, -1885f, 507f, -171f), Struct_1(vec4<f32>(1049f, -514f, -883f, 514f), var_1.x, u_input.b, u_input.b.x, 1348f)), vec4<u32>(9708u, u_input.b.x, 40407u, u_input.b.x)).x)), u_input.b, countOneBits(_wgslsmith_mod_u32(min(~8263u, ~u_input.b.x), u_input.b.x)), -1547f);
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.x, var_2.a.x, 2128f, var_2.a.x) + vec4<f32>(-1146f, var_2.a.x, 2112f, var_2.e)), vec4<f32>(var_2.a.x, 764f, 569f, -821f), func_2(u_input.b.x, var_0).x)))), all(!(!func_2(u_input.b.x, u_input.c.x).zx)), _wgslsmith_add_vec3_u32(vec3<u32>(~0u, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(var_2.c.zz, vec2<u32>(86503u, 46128u)), var_2.d), _wgslsmith_mult_u32(~0u, u_input.b.x)), _wgslsmith_mod_vec3_u32(min(~vec3<u32>(u_input.b.x, var_2.c.x, u_input.b.x), ~vec3<u32>(var_2.d, 59051u, u_input.b.x)), ~vec3<u32>(u_input.b.x, var_2.c.x, 0u) & vec3<u32>(var_2.c.x, u_input.b.x, 4294967295u))), 4294967295u, var_2.a.x);
    var var_4 = _wgslsmith_add_i32(var_0, _wgslsmith_dot_vec3_i32(firstLeadingBit((u_input.c.yyz ^ vec3<i32>(0i, -1i, -59651i)) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(68728u, 19329u, 94346u), var_3.c) % vec3<u32>(32u))), u_input.c.zww));
    var var_5 = Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(min(var_3.a, vec4<f32>(_wgslsmith_f_op_f32(max(-951f, 746f)), _wgslsmith_f_op_f32(-258f + -1389f), _wgslsmith_f_op_f32(select(1277f, var_2.a.x, var_1.x)), _wgslsmith_f_op_f32(exp2(var_3.e))))), all(select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(1u, 27u)], false), !vec4<bool>(true, false, var_1.x, global0[_wgslsmith_index_u32(u_input.b.x, 27u)]), global0[_wgslsmith_index_u32(~48103u, 27u)])), ~firstTrailingBit(var_2.c), firstLeadingBit(abs(abs(u_input.b.x))), _wgslsmith_f_op_f32(var_3.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -647f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.e))), var_2.e)), _wgslsmith_add_i32(37575i, var_0), _wgslsmith_clamp_u32(var_3.c.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(95570u, u_input.b.x), var_3.c.yy), select(var_3.d, ~(~39887u), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.b.x, 4294967295u), 92860u), 27u)])), var_2.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.zyy, u_input.b >> (~var_2.c % vec3<u32>(32u)), var_3.a);
}

