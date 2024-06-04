struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1() -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-446f))))))));
}

fn func_3(arg_0: Struct_1) -> vec3<i32> {
    return ~min(countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-16739i, u_input.a, u_input.a))), countOneBits(firstLeadingBit(vec3<i32>(u_input.a, -12619i, u_input.a)))) << ((vec3<u32>(~arg_0.b, arg_0.a.x, min(_wgslsmith_mult_u32(arg_0.a.x, arg_0.a.x), select(arg_0.b, 45045u, true))) & _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_div_u32(arg_0.a.x, 4294967295u), arg_0.b, _wgslsmith_mod_u32(4294967295u, arg_0.b)), (vec3<u32>(29799u, arg_0.a.x, 1u) & vec3<u32>(20277u, arg_0.a.x, 61106u)) & ~vec3<u32>(arg_0.b, 1u, 1u), vec3<u32>(23964u, 1u, 1u) & select(vec3<u32>(9990u, 1u, 4588u), vec3<u32>(1911u, 49834u, 1u), false))) % vec3<u32>(32u));
}

fn func_4(arg_0: vec3<i32>) -> vec2<u32> {
    let var_0 = Struct_2(Struct_1(min(~(~vec2<u32>(12828u, 36080u)), vec2<u32>(1u, 1u)), abs(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 16696u, 57406u, 64429u), vec4<u32>(0u, 1u, 1u, 0u)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1069f, 634f)), 1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1336f + -971f))))), -456f);
    let var_1 = vec3<i32>(37115i, 27102i, 1i);
    let var_2 = select(vec2<bool>(!any(vec2<bool>(true, true)), !(_wgslsmith_f_op_f32(f32(-1f) * -1053f) >= _wgslsmith_f_op_f32(var_0.a.c.x + var_0.a.c.x))), !vec2<bool>(select(true, false, var_0.a.a.x >= var_0.a.a.x), any(vec4<bool>(true, true, true, true))), vec2<bool>(!(true || any(vec3<bool>(false, true, true))), false));
    let var_3 = Struct_3(vec3<bool>(var_2.x, var_2.x, true && !var_2.x), var_0.a, Struct_1(var_0.a.a, var_0.a.a.x, _wgslsmith_f_op_vec3_f32(-var_0.a.c)));
    var var_4 = Struct_1(_wgslsmith_div_vec2_u32((~vec2<u32>(var_3.c.b, var_3.c.a.x) >> (vec2<u32>(var_0.a.a.x, 4294967295u) % vec2<u32>(32u))) << ((var_3.b.a | vec2<u32>(11621u, var_3.b.b)) % vec2<u32>(32u)), vec2<u32>(0u, (19161u & var_0.a.a.x) ^ 1u)), 1u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.c.c.x, var_0.a.c.x, _wgslsmith_f_op_f32(f32(-1f) * -836f))));
    return ~(~_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.a.b, 36227u) | vec2<u32>(1u, 43294u), _wgslsmith_sub_vec2_u32(vec2<u32>(var_4.a.x, var_0.a.a.x), vec2<u32>(var_4.a.x, 0u))), vec2<u32>(var_0.a.b, var_4.b) ^ abs(vec2<u32>(0u, 92785u)), _wgslsmith_mult_vec2_u32(~vec2<u32>(46735u, var_0.a.a.x), ~vec2<u32>(var_3.c.a.x, var_4.b))));
}

fn func_2(arg_0: u32) -> bool {
    var var_0 = Struct_1(vec2<u32>(1u, ~arg_0), 0u, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(296f, -540f, 591f), vec3<f32>(1617f, 1000f, 386f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1357f, 296f, 1329f)))))));
    var_0 = Struct_1(select(var_0.a >> (func_4(func_3(Struct_1(vec2<u32>(arg_0, var_0.a.x), 1u, vec3<f32>(var_0.c.x, -848f, var_0.c.x)))) % vec2<u32>(32u)), var_0.a, any(vec2<bool>(true, true))), _wgslsmith_mult_u32(57556u, var_0.a.x), vec3<f32>(-313f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(135f - 205f), -558f)))), _wgslsmith_f_op_f32(1f * -1621f)));
    let var_1 = Struct_2(Struct_1(~reverseBits(_wgslsmith_sub_vec2_u32(var_0.a, vec2<u32>(var_0.b, 4294967295u))), arg_0, var_0.c), -1082f);
    var_0 = Struct_1(select(vec2<u32>(39105u, 1u), var_1.a.a, any(vec4<bool>(true, true, true, true))), ~(~2649u), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0.c.x)), _wgslsmith_f_op_f32(trunc(var_1.a.c.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.a.c.x, -530f))) * var_0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.b, -1000f), _wgslsmith_f_op_f32(var_1.a.c.x * -2252f)))));
    let var_2 = 206f;
    return all(!vec2<bool>(any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true))), true));
}

fn func_5(arg_0: bool, arg_1: vec4<f32>, arg_2: bool, arg_3: vec4<bool>) -> Struct_3 {
    var var_0 = arg_1;
    let var_1 = false;
    let var_2 = ~_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, _wgslsmith_mult_i32(_wgslsmith_mod_i32(54942i, u_input.a), 45700i), -(~u_input.a), u_input.a), firstLeadingBit(vec4<i32>(u_input.a, ~2147483647i, u_input.a, u_input.a)));
    var_0 = arg_1;
    var var_3 = Struct_1(_wgslsmith_add_vec2_u32(~(~reverseBits(vec2<u32>(16860u, 1u))), ~reverseBits(vec2<u32>(8033u, 4294967295u)) << (max(select(vec2<u32>(4294967295u, 40567u), vec2<u32>(68524u, 4486u), arg_3.zz), max(vec2<u32>(2948u, 15546u), vec2<u32>(5396u, 4294967295u))) % vec2<u32>(32u))), _wgslsmith_dot_vec3_u32(vec3<u32>(20089u, _wgslsmith_dot_vec4_u32(vec4<u32>(12795u, 1430u, 65019u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 1u, 1u)), ~65458u) | vec3<u32>(42185u, 1u, max(28166u, 11164u)), countOneBits(vec3<u32>(45724u, 0u, 4294967295u) ^ _wgslsmith_clamp_vec3_u32(vec3<u32>(17506u, 37327u, 7754u), vec3<u32>(57599u, 20910u, 1u), vec3<u32>(4294967295u, 92202u, 21420u)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(-1366f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), arg_1.x));
    return Struct_3(!arg_3.xzx, Struct_1(var_3.a, var_3.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(var_3.c, vec3<f32>(var_3.c.x, var_0.x, var_0.x)), _wgslsmith_f_op_vec3_f32(select(arg_1.xyy, vec3<f32>(var_3.c.x, var_3.c.x, var_0.x), false)), vec3<bool>(var_1, arg_0, var_1))))), Struct_1(var_3.a, 4294967295u, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(var_3.c, vec3<f32>(-1424f, -680f, var_0.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(true, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-679f, 705f, _wgslsmith_f_op_f32(f32(-1f) * -426f), _wgslsmith_f_op_f32(500f - -274f)) - vec4<f32>(1f, 1f, 1f, 1f)), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(957f - -472f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(125f + 1000f)), _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(floor(-1851f))), vec4<bool>(true, false, true, any(vec3<bool>(true, true, true))))), any(vec3<bool>(true, true, true)) || (u_input.a >= -32214i), vec4<bool>(all(vec3<bool>(any(vec2<bool>(false, false)), true, func_2(60403u))), true, false, !select(true, true, any(vec3<bool>(true, false, true)))));
    var var_1 = 1i;
    var var_2 = var_0.b.a;
    var var_3 = Struct_1(func_4(~(-max(vec3<i32>(u_input.a, u_input.a, 2147483647i), vec3<i32>(1i, 2147483647i, u_input.a)))), var_2.x, var_0.b.c);
    var var_4 = !select(vec3<bool>(var_0.a.x, max(u_input.a, -1728i) > ~(-2147483647i), !(!var_0.a.x)), !vec3<bool>(false, 11192u >= var_3.a.x, true), vec3<bool>(var_0.a.x, (u_input.a << (var_2.x % 32u)) != 2147483647i, all(!vec4<bool>(true, var_0.a.x, false, var_0.a.x))));
    let var_5 = (-select(max(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a)), ~vec2<i32>(-4458i, u_input.a), var_0.a.x) << (~(var_3.a | ~var_3.a) % vec2<u32>(32u))) ^ vec2<i32>(u_input.a, (~u_input.a & -u_input.a) | u_input.a);
    let var_6 = Struct_2(func_5(all(!var_0.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(-281f, 274f, true)), -703f, var_0.c.c.x, _wgslsmith_f_op_f32(f32(-1f) * -445f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.c.c.x, -163f, var_3.c.x, var_3.c.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1962f, var_3.c.x, -533f, var_0.b.c.x)))), func_5(var_0.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.c.x, 1451f, var_0.b.c.x, var_0.b.c.x))), false, vec4<bool>(func_5(var_0.a.x, vec4<f32>(-848f, var_0.b.c.x, var_0.c.c.x, -534f), var_0.a.x, vec4<bool>(false, false, false, false)).a.x, true, all(var_0.a), !var_0.a.x)).a.x, !(!select(vec4<bool>(var_0.a.x, var_4.x, true, true), vec4<bool>(true, var_0.a.x, false, false), false))).c, 1610f);
    var_2 = vec2<u32>(select(_wgslsmith_mod_u32(4294967295u, var_6.a.a.x & 64263u), firstLeadingBit(1u), any(select(vec4<bool>(true, false, var_0.a.x, false), vec4<bool>(false, var_4.x, var_0.a.x, false), vec4<bool>(true, var_0.a.x, false, var_4.x)))) ^ _wgslsmith_mult_u32(var_6.a.b, ~_wgslsmith_mod_u32(0u, var_6.a.b)), var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_sub_i32(u_input.a, -1i), u_input.a, u_input.a), var_5.x);
}

