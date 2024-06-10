struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: u32,
    d: bool,
}

struct Struct_3 {
    a: f32,
    b: vec4<u32>,
    c: Struct_2,
    d: u32,
    e: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: bool,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
    c: vec2<f32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: vec2<i32>, arg_3: i32) -> u32 {
    global0 = max(-1i, arg_2.x);
    let var_0 = vec3<bool>(true, true, arg_1.x | (true || (_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.b, 28273i, u_input.b), vec4<i32>(14167i, -29180i, 16452i, arg_3)) >= -45305i)));
    var var_1 = vec4<i32>(arg_2.x, min(arg_2.x, u_input.b), -u_input.b | _wgslsmith_add_i32(1i & ~u_input.b, arg_3), u_input.b);
    global0 = _wgslsmith_div_i32(arg_3, ~(i32(-1i) * -2147483647i)) >> ((abs(u_input.a.x) & (17505u & max(u_input.a.x >> (1u % 32u), u_input.a.x))) % 32u);
    var var_2 = -(arg_2.x & abs(arg_2.x));
    return ~1u;
}

fn func_4(arg_0: vec3<u32>, arg_1: u32) -> i32 {
    global0 = u_input.b;
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(2238f - -2096f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1468f))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-811f))))))));
    var var_1 = var_0.x;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(375f, -984f))))) - var_0.x));
    var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1647f);
    return -5304i;
}

fn func_2(arg_0: vec2<f32>, arg_1: i32, arg_2: bool) -> Struct_5 {
    global0 = i32(-1i) * -func_4(vec3<u32>(1u, func_3(arg_0, vec2<bool>(true, arg_2), vec2<i32>(arg_1, arg_1), u_input.b), countOneBits(0u)), max(~0u, ~u_input.c));
    let var_0 = vec4<i32>(arg_1, func_4(_wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(0u, 26725u, u_input.a.x) ^ vec3<u32>(1u, 1u, 1u)), ~firstLeadingBit(vec3<u32>(u_input.a.x, u_input.a.x, 18636u))), ~(~4294967295u)), arg_1, ~func_4(~(vec3<u32>(u_input.c, 36721u, u_input.a.x) << (vec3<u32>(6856u, 75358u, 4294967295u) % vec3<u32>(32u))), reverseBits(~u_input.a.x)));
    let var_1 = vec2<i32>(49268i, var_0.x);
    let var_2 = Struct_1(min(vec4<u32>(1u << (u_input.a.x % 32u), u_input.a.x, u_input.c, 0u) ^ (~vec4<u32>(1u, u_input.c, 49079u, u_input.c) | ~vec4<u32>(u_input.a.x, 13132u, 1u, 21798u)), ~min(~vec4<u32>(u_input.a.x, 24215u, 4784u, 50345u), ~vec4<u32>(1u, 0u, 1u, 4294967295u))));
    global0 = abs(u_input.b);
    return Struct_5(var_1.x, Struct_2(_wgslsmith_div_vec4_i32(var_0, vec4<i32>(-1i) * -var_0), var_2, _wgslsmith_dot_vec3_u32(~var_2.a.zwz, firstLeadingBit(var_2.a.zwz)), arg_2), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.x, arg_0.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, arg_0.x) - vec2<f32>(arg_0.x, arg_0.x)), var_0.x < -1i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0.x, arg_0.x)))))))), select(vec4<bool>(true | all(vec2<bool>(true, arg_2)), true & arg_2, arg_2, arg_2), !select(!vec4<bool>(arg_2, false, true, arg_2), select(vec4<bool>(arg_2, arg_2, false, arg_2), vec4<bool>(false, false, false, arg_2), false), arg_2 || arg_2), _wgslsmith_f_op_f32(exp2(arg_0.x)) == -542f));
}

fn func_5(arg_0: Struct_5, arg_1: i32) -> vec4<bool> {
    let var_0 = any(vec2<bool>(arg_0.c.x < -947f, false));
    let var_1 = vec2<i32>(u_input.b, _wgslsmith_div_i32(-u_input.b, -11084i) & 29521i);
    var var_2 = _wgslsmith_add_u32(func_2(arg_0.c, u_input.b, !(~arg_1 == _wgslsmith_clamp_i32(var_1.x, arg_0.a, var_1.x))).b.c, 14715u);
    let var_3 = arg_0.c.x;
    var var_4 = func_2(func_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.c), _wgslsmith_f_op_vec2_f32(vec2<f32>(1015f, -780f) - arg_0.c)), _wgslsmith_sub_i32(abs(firstLeadingBit(0i)), _wgslsmith_sub_i32(arg_0.a, _wgslsmith_mod_i32(arg_0.a, -2147483647i))), var_0).c, min(-_wgslsmith_sub_i32(u_input.b, -1i), u_input.b) ^ -2936i, var_0);
    return !vec4<bool>(var_4.b.d || (-var_1.x < ~arg_0.b.a.x), !all(arg_0.d.wx), !(!all(vec4<bool>(var_0, var_4.b.d, false, var_0))), !arg_0.b.d);
}

fn func_1() -> Struct_4 {
    let var_0 = !(!all(func_5(func_2(vec2<f32>(-1000f, -1056f), 2147483647i, true), firstTrailingBit(10462i))));
    var var_1 = _wgslsmith_f_op_f32(trunc(-512f));
    let var_2 = vec2<bool>(func_5(Struct_5(~1i, func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(590f, 454f) * vec2<f32>(1755f, 646f)), u_input.b, all(vec4<bool>(true, false, var_0, var_0))).b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-566f, 670f), vec2<f32>(704f, 905f), vec2<bool>(true, false)))), func_5(func_2(vec2<f32>(1184f, -1000f), u_input.b, false), u_input.b | u_input.b)), abs(i32(-1i) * -u_input.b)).x, select(func_5(func_2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-579f, -411f), vec2<f32>(1262f, -354f))), -u_input.b, var_0), ~(~u_input.b)).x, var_0, !(1i <= min(u_input.b, 0i))));
    var var_3 = Struct_4(func_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(663f, 150f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1437f, 1592f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(558f, -161f)) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(413f, 758f), vec2<f32>(-1083f, -415f)))))), firstLeadingBit(~_wgslsmith_div_i32(15501i, u_input.b)), true).b.b, u_input.c, countOneBits(-abs(u_input.b << (8190u % 32u))), !all(!select(vec4<bool>(var_2.x, var_0, var_2.x, var_2.x), vec4<bool>(true, false, true, false), var_2.x)));
    var var_4 = Struct_4(var_3.a, u_input.c & var_3.b, var_3.c, min(var_3.a.a.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 11779u, u_input.a.x), var_3.a.a.yzz)) < 17401u);
    return Struct_4(Struct_1(vec4<u32>(11873u, 23314u, _wgslsmith_mult_u32(var_4.a.a.x, 10510u), 14468u)), _wgslsmith_dot_vec3_u32(~(~firstTrailingBit(vec3<u32>(u_input.a.x, 23652u, u_input.c))), min(var_4.a.a.yxx, var_4.a.a.xxz)), u_input.b, var_4.d);
}

fn func_6(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = max(arg_0.a.a.zz, select(abs(~(vec2<u32>(u_input.a.x, arg_0.a.a.x) ^ arg_0.a.a.yx)), u_input.a, func_5(Struct_5(-2147483647i, func_2(vec2<f32>(arg_1.x, -282f), 1i, false).b, _wgslsmith_f_op_vec2_f32(vec2<f32>(128f, arg_1.x) * arg_1.xy), select(vec4<bool>(arg_0.d, false, true, arg_0.d), vec4<bool>(true, arg_0.d, false, true), vec4<bool>(true, true, false, arg_0.d))), ~(~u_input.b)).xz));
    var var_1 = func_5(func_2(_wgslsmith_f_op_vec2_f32(-arg_1.zy), ~reverseBits(max(arg_2.x, -1i)), true), func_2(arg_1.zy, ~u_input.b, !(!arg_0.d & arg_0.d)).a).x;
    var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(vec2<f32>(1110f, arg_1.x), u_input.b, arg_0.d).c.x + _wgslsmith_f_op_f32(162f + arg_1.x)), -645f)))) != _wgslsmith_f_op_f32(arg_1.x - -309f);
    let var_2 = (_wgslsmith_sub_u32(~abs(arg_0.a.a.x), select(func_3(arg_1.yz, vec2<bool>(arg_0.d, false), arg_2, arg_2.x), firstLeadingBit(var_0.x), arg_0.d & true)) << ((~39806u >> (((1u ^ var_0.x) << (arg_0.b % 32u)) % 32u)) % 32u)) == ~0u;
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_1(), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-281f * 301f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -352f)), _wgslsmith_f_op_f32(min(-1225f, _wgslsmith_f_op_f32(max(-1137f, -270f)))))), vec2<i32>(u_input.b, countOneBits(countOneBits(-1i))));
    var var_1 = u_input.b;
    var_1 = u_input.b;
    global0 = abs(-func_4(func_6(Struct_4(Struct_1(var_0.a), 0u, u_input.b, true), vec3<f32>(-2458f, 1048f, 1028f), vec2<i32>(22871i, -2147483647i)).a.zyw, var_0.a.x)) ^ firstTrailingBit(~_wgslsmith_mult_i32(max(u_input.b, u_input.b), 54394i));
    let var_2 = 1i;
    let var_3 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(round(-698f)), -1952f, _wgslsmith_f_op_f32(-175f * 139f))));
    var var_4 = vec2<i32>(1i, func_1().c);
    var_0 = func_6(func_1(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-628f, -524f, 781f))) + _wgslsmith_f_op_vec3_f32(var_3 - var_3)))), vec2<i32>(~(~32288i & _wgslsmith_div_i32(-49158i, var_4.x)), func_4(~(~var_0.a.wxw), ~(~var_0.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~89608u, select(~(vec2<u32>(u_input.c, var_0.a.x) >> (_wgslsmith_add_vec2_u32(u_input.a, var_0.a.xy) % vec2<u32>(32u))), select(~vec2<u32>(u_input.a.x, 55347u), abs(_wgslsmith_sub_vec2_u32(var_0.a.ww, vec2<u32>(4294967295u, 1u))), vec2<bool>(true, true)), vec2<bool>(all(vec4<bool>(true, true, true, true)), true)), var_0.a.zy, vec4<i32>(_wgslsmith_div_i32(-7468i, func_1().c), _wgslsmith_add_i32(-54597i, -43625i), u_input.b, func_1().c));
}

