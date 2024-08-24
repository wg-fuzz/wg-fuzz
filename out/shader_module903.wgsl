struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(-444f, 226f, 244f, 916f));

var<private> global1: array<Struct_1, 5>;

var<private> global2: array<Struct_3, 18> = array<Struct_3, 18>(Struct_3(Struct_1(vec4<f32>(-2279f, 913f, 587f, 1585f))), Struct_3(Struct_1(vec4<f32>(173f, 1469f, -225f, 1000f))), Struct_3(Struct_1(vec4<f32>(199f, -532f, -944f, -230f))), Struct_3(Struct_1(vec4<f32>(781f, -584f, -292f, 376f))), Struct_3(Struct_1(vec4<f32>(-1227f, -386f, 928f, -1381f))), Struct_3(Struct_1(vec4<f32>(1184f, -452f, 512f, -173f))), Struct_3(Struct_1(vec4<f32>(-1236f, 1162f, 270f, 771f))), Struct_3(Struct_1(vec4<f32>(-201f, -696f, 1219f, -809f))), Struct_3(Struct_1(vec4<f32>(-225f, -915f, -333f, -1000f))), Struct_3(Struct_1(vec4<f32>(901f, 449f, -146f, 1181f))), Struct_3(Struct_1(vec4<f32>(1000f, 702f, -2229f, 507f))), Struct_3(Struct_1(vec4<f32>(598f, -311f, 999f, 1000f))), Struct_3(Struct_1(vec4<f32>(238f, 699f, -425f, 1765f))), Struct_3(Struct_1(vec4<f32>(468f, -124f, -249f, -697f))), Struct_3(Struct_1(vec4<f32>(659f, 986f, -1389f, -1000f))), Struct_3(Struct_1(vec4<f32>(-449f, -219f, 563f, -1092f))), Struct_3(Struct_1(vec4<f32>(-1916f, -176f, 359f, 1799f))), Struct_3(Struct_1(vec4<f32>(263f, 384f, -1000f, 1219f))));

var<private> global3: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(Struct_1(vec4<f32>(-279f, -1363f, 1000f, -695f)), vec4<i32>(-876i, 11603i, -13893i, 25542i)), Struct_2(Struct_1(vec4<f32>(-1287f, 117f, 547f, -2411f)), vec4<i32>(20925i, -25021i, 10027i, 67825i)), Struct_2(Struct_1(vec4<f32>(1000f, -269f, -2089f, -1515f)), vec4<i32>(14468i, i32(-2147483648), i32(-2147483648), 1i)), Struct_2(Struct_1(vec4<f32>(-880f, 680f, 633f, -1000f)), vec4<i32>(-59362i, -23856i, 0i, 15077i)), Struct_2(Struct_1(vec4<f32>(-1891f, 953f, -423f, -1024f)), vec4<i32>(29410i, 2147483647i, 1i, 2147483647i)), Struct_2(Struct_1(vec4<f32>(-745f, 1000f, -303f, -668f)), vec4<i32>(-13915i, 0i, 4921i, -7085i)), Struct_2(Struct_1(vec4<f32>(-1285f, -2009f, -685f, -1052f)), vec4<i32>(0i, 0i, -24676i, 0i)), Struct_2(Struct_1(vec4<f32>(1109f, -509f, 669f, 1000f)), vec4<i32>(-19110i, -18305i, 1i, 7421i)), Struct_2(Struct_1(vec4<f32>(391f, -1497f, -200f, 1000f)), vec4<i32>(1i, 8648i, -5600i, 1i)), Struct_2(Struct_1(vec4<f32>(-821f, 357f, -723f, 368f)), vec4<i32>(-29503i, -15312i, -1i, -2364i)), Struct_2(Struct_1(vec4<f32>(190f, -283f, 1184f, -271f)), vec4<i32>(0i, 20446i, 2147483647i, -8661i)), Struct_2(Struct_1(vec4<f32>(1201f, 173f, 483f, 310f)), vec4<i32>(i32(-2147483648), -1i, -12808i, -9142i)), Struct_2(Struct_1(vec4<f32>(144f, 585f, -145f, 976f)), vec4<i32>(0i, i32(-2147483648), 22360i, 1i)), Struct_2(Struct_1(vec4<f32>(-301f, -742f, 883f, 1317f)), vec4<i32>(27742i, 1i, -31988i, i32(-2147483648))), Struct_2(Struct_1(vec4<f32>(1000f, -637f, 1869f, -654f)), vec4<i32>(12700i, 27638i, -22415i, 1i)), Struct_2(Struct_1(vec4<f32>(1000f, 578f, -239f, -632f)), vec4<i32>(-1i, 0i, -45601i, -56665i)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec3<u32>) -> u32 {
    return _wgslsmith_dot_vec2_u32(firstLeadingBit(abs(~vec2<u32>(20049u, 1u))), ~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 76536u), firstTrailingBit(vec2<u32>(u_input.a, u_input.a) >> (vec2<u32>(1u, 23341u) % vec2<u32>(32u)))));
}

fn func_2() -> Struct_1 {
    var var_0 = ~_wgslsmith_mult_vec4_u32(vec4<u32>(func_3(~vec3<u32>(u_input.a, 0u, u_input.a)), ~(~u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(3642u, u_input.a, u_input.a, u_input.a), ~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.a, 0u, u_input.a), firstLeadingBit(vec4<u32>(u_input.a, u_input.a, 66687u, 11745u)))), countOneBits(abs(vec4<u32>(u_input.a, 24776u, u_input.a, u_input.a))));
    let var_1 = vec4<f32>(-1463f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1178f + -1048f))), _wgslsmith_f_op_f32(-global0.a.x), 226f);
    global3 = array<Struct_2, 16>();
    let var_2 = u_input.b;
    global0 = global1[_wgslsmith_index_u32(var_0.x, 5u)];
    return global1[_wgslsmith_index_u32(u_input.a, 5u)];
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_2) -> u32 {
    let var_0 = global2[_wgslsmith_index_u32(~u_input.a, 18u)];
    global3 = array<Struct_2, 16>();
    let var_1 = Struct_3(func_2());
    var var_2 = global2[_wgslsmith_index_u32(~u_input.a, 18u)];
    var var_3 = vec4<u32>(min(1u, 13468u << (_wgslsmith_add_u32(u_input.a, _wgslsmith_div_u32(u_input.a, u_input.a)) % 32u)), u_input.a, 0u, u_input.a);
    return 4294967295u;
}

fn func_4(arg_0: vec4<i32>, arg_1: i32, arg_2: i32) -> Struct_2 {
    var var_0 = !select(vec3<bool>(true, any(vec4<bool>(false, true, true, true)) || all(vec3<bool>(false, true, true)), true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), true);
    let var_1 = _wgslsmith_mult_i32(u_input.b, -(i32(-1i) * -3674i));
    var_0 = select(select(select(select(!vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, true, var_0.x), var_0.x), !vec3<bool>(var_0.x, false, var_0.x), arg_2 > 1i), !vec3<bool>(u_input.a == 4294967295u, true, false), vec3<bool>(any(!vec4<bool>(false, true, false, var_0.x)), true, func_2().a.x != _wgslsmith_f_op_f32(min(1000f, global0.a.x)))), select(vec3<bool>(~72665u > u_input.a, true, false), vec3<bool>(var_0.x, !(!var_0.x), !(!var_0.x)), any(select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), !vec4<bool>(false, false, true, var_0.x), !vec4<bool>(var_0.x, var_0.x, false, var_0.x)))), select(select(select(!vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.x && var_0.x), select(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, false, false), var_0.x), !vec3<bool>(var_0.x, false, true), -887f == global0.a.x), vec3<bool>(true == var_0.x, true, all(vec3<bool>(false, false, false)))), vec3<bool>(var_0.x, var_0.x, var_0.x), true));
    var_0 = !vec3<bool>(var_0.x, true, false);
    var var_2 = func_2();
    return Struct_2(Struct_1(vec4<f32>(var_2.a.x, _wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_div_f32(_wgslsmith_div_f32(global0.a.x, -1244f), 706f), _wgslsmith_f_op_f32(f32(-1f) * -1738f))), -(~(~(-arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(~(~vec4<i32>(20075i, 26068i, 2147483647i, u_input.b)) << (select(max(firstLeadingBit(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), vec4<u32>(4294967295u, u_input.a, 1u, u_input.a)), vec4<u32>(func_1(vec3<f32>(global0.a.x, 222f, global0.a.x), Struct_2(global1[_wgslsmith_index_u32(u_input.a, 5u)], vec4<i32>(62730i, u_input.b, u_input.b, 5459i)), Struct_2(global1[_wgslsmith_index_u32(u_input.a, 5u)], vec4<i32>(-38722i, u_input.b, 1i, -41642i))), u_input.a, 52660u, 0u), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)) % vec4<u32>(32u)), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(1i, 1i), -(~vec2<i32>(u_input.b, -2147483647i))), u_input.b), _wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.b, 1i), _wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -1i, 2147483647i), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, u_input.b), -vec2<i32>(-27590i, u_input.b)))));
    let var_1 = vec4<u32>(firstLeadingBit(~u_input.a), ~firstLeadingBit(~0u), _wgslsmith_div_u32(~u_input.a >> (func_1(var_0.a.a.wyw, var_0, Struct_2(global1[_wgslsmith_index_u32(4294967295u, 5u)], var_0.b)) % 32u), 34738u), ~1926u) ^ max(vec4<u32>(0u, select(65434u, ~u_input.a, true), ~4294967295u, min(0u, u_input.a) ^ ~u_input.a), vec4<u32>(~_wgslsmith_mult_u32(u_input.a, u_input.a), 1u, ~reverseBits(u_input.a), 4294967295u));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-2114f, var_0.a.a.x)) + global0.a.x), _wgslsmith_f_op_f32(global0.a.x + -1432f), -429f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(819f * _wgslsmith_f_op_f32(trunc(-202f))) + global0.a.x)));
    global2 = array<Struct_3, 18>();
    var var_3 = select(!vec2<bool>(var_1.x >= _wgslsmith_dot_vec3_u32(var_1.yyy, vec3<u32>(var_1.x, u_input.a, u_input.a)), !all(vec3<bool>(false, true, true))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, false), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), true))), (var_1.x ^ 1u) >= 4294967295u);
    let var_4 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~4294967295u, abs(select(u_input.a, var_1.x, all(vec2<bool>(var_3.x, var_3.x))))), 18u)];
    let x = u_input.a;
    s_output = StorageBuffer(~(-var_0.b.xzz), ~firstTrailingBit(var_1.yww), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(452f)) * 1000f), var_0.b.wwx);
}

