struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: bool,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: vec3<i32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<i32>,
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

var<private> global0: vec2<u32> = vec2<u32>(0u, 4294967295u);

var<private> global1: vec3<f32> = vec3<f32>(-686f, -860f, 1083f);

var<private> global2: bool;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_1) -> vec3<f32> {
    let var_0 = vec2<bool>(select(all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))), any(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false))), all(vec2<bool>(true, true))), all(!(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), false))));
    global2 = false;
    var var_1 = u_input.d.ywz;
    var_1 = vec3<i32>(-firstLeadingBit(-45128i), u_input.e.x, arg_0.e) | _wgslsmith_add_vec3_i32(~(vec3<i32>(-1i) * -u_input.e), u_input.e);
    global2 = var_0.x;
    return _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1.x, arg_0.d, 1000f), vec3<f32>(arg_0.d, _wgslsmith_f_op_f32(max(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1287f, arg_0.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-576f, 352f)), -1000f, !var_0.x)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1776f, arg_0.d))))));
}

fn func_2() -> vec4<u32> {
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(1324f)))), _wgslsmith_f_op_f32(f32(-1f) * -791f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-129f - -1396f))))) * _wgslsmith_f_op_vec3_f32(func_3(Struct_1(abs(vec2<u32>(4294967295u, 61530u)), 0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - 1646f)), global1.x, max(_wgslsmith_mod_i32(-44841i, u_input.b), -u_input.e.x)))));
    var var_0 = Struct_4(firstTrailingBit(max(abs(245u), 93064u)), Struct_1(~(~vec2<u32>(0u, global0.x)), global0.x, 1092f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), select(-max(59586i, u_input.d.x), _wgslsmith_add_i32(0i, countOneBits(u_input.e.x)), 0i <= _wgslsmith_mult_i32(u_input.e.x, u_input.e.x))), u_input.d.xzx, _wgslsmith_f_op_f32(sign(global1.x)));
    var_0 = Struct_4(~(~(~global0.x) >> (_wgslsmith_dot_vec2_u32(~var_0.b.a, vec2<u32>(var_0.a, 4294967295u)) % 32u)), Struct_1(~vec2<u32>(global0.x ^ 77754u, u_input.c), ~var_0.b.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(var_0.b)).x - -289f), var_0.b.d, ((i32(-1i) * -5301i) >> (firstTrailingBit(0u) % 32u)) & -_wgslsmith_div_i32(u_input.d.x, 1i)), _wgslsmith_mod_vec3_i32(u_input.e & ~(u_input.e & vec3<i32>(-30373i, 1i, u_input.d.x)), countOneBits(~_wgslsmith_sub_vec3_i32(u_input.d.ywz, vec3<i32>(-5817i, 0i, 11749i)))), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -309f))) + -370f)));
    global0 = select(_wgslsmith_add_vec2_u32(var_0.b.a, ~var_0.b.a), ~(var_0.b.a ^ vec2<u32>(_wgslsmith_mult_u32(13199u, global0.x), ~u_input.c)), !vec2<bool>(_wgslsmith_f_op_f32(global1.x - -1000f) != -2376f, !select(false, false, true)));
    var var_1 = Struct_2(var_0.b.e, _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(~u_input.d, _wgslsmith_add_vec4_i32(vec4<i32>(42765i, var_0.b.e, 1i, u_input.d.x), vec4<i32>(var_0.b.e, 30590i, 0i, var_0.b.e))), ~u_input.d, vec4<i32>(var_0.c.x, var_0.b.e | 32814i, -2147483647i, _wgslsmith_dot_vec2_i32(var_0.c.xz, vec2<i32>(var_0.c.x, var_0.b.e)))) & ((~vec4<i32>(2147483647i, var_0.c.x, -19429i, var_0.c.x) >> (min(vec4<u32>(4294967295u, u_input.a, 4073u, u_input.c), vec4<u32>(0u, u_input.a, 5291u, 4294967295u)) % vec4<u32>(32u))) & abs(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.c.x, var_0.c.x, -47031i, 0i), vec4<i32>(var_0.c.x, var_0.c.x, var_0.b.e, 3736i)))));
    return reverseBits(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(11060u, firstLeadingBit(global0.x), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a, 33609u, 31183u), vec3<u32>(global0.x, global0.x, u_input.c)), ~10281u), ~(~vec4<u32>(u_input.c, var_0.b.a.x, 42425u, 78149u))), ~(~global0.x), global0.x, ~u_input.a));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_1, arg_2: f32, arg_3: Struct_3) -> Struct_3 {
    var var_0 = _wgslsmith_sub_vec4_i32(-u_input.d >> (_wgslsmith_mult_vec4_u32(~func_2(), abs(vec4<u32>(arg_0.b.a.x, arg_1.a.x, arg_0.b.a.x, 23341u) << (vec4<u32>(u_input.c, u_input.c, 1u, 8580u) % vec4<u32>(32u)))) % vec4<u32>(32u)), u_input.d);
    global0 = ~(~vec2<u32>(arg_1.b, select(u_input.c, arg_1.a.x, arg_3.a.x) & _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, global0.x), arg_1.a)));
    var var_1 = arg_0.b;
    var_1 = arg_1;
    let var_2 = Struct_2(1i, vec4<i32>(var_0.x, ~_wgslsmith_mult_i32(~37918i, firstLeadingBit(arg_1.e)), 1i, -2147483647i >> (_wgslsmith_add_u32(59843u, global0.x) % 32u)));
    return arg_3;
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: f32) -> u32 {
    let var_0 = abs(-_wgslsmith_mult_i32(-(~1i), reverseBits(u_input.d.x)));
    var var_1 = ~vec3<u32>(abs(33983u | _wgslsmith_clamp_u32(global0.x, 0u, 17283u)), u_input.c, global0.x);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global1.xy, _wgslsmith_f_op_vec2_f32(-global1.zx), all(arg_1.a.zz))));
    var var_3 = var_0;
    let var_4 = vec4<bool>(arg_1.c, arg_0, any(select(!(!arg_1.a), arg_1.a, ~u_input.a < ~global0.x)), arg_0);
    return _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, ~var_1.x, global0.x), ~max(vec3<u32>(0u, 0u, 0u) >> (vec3<u32>(26801u, var_1.x, 0u) % vec3<u32>(32u)), vec3<u32>(global0.x & var_1.x, _wgslsmith_add_u32(u_input.a, 4294967295u), abs(1u))));
}

fn func_5(arg_0: u32, arg_1: vec4<u32>, arg_2: u32) -> i32 {
    return _wgslsmith_sub_i32(~(-28606i), 1i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(357f - -2223f), global1.x)))), _wgslsmith_f_op_f32(abs(1275f)), global1.x);
    let var_0 = vec3<i32>(_wgslsmith_sub_i32(func_5(_wgslsmith_mod_u32(u_input.c, global0.x << (1u % 32u)), vec4<u32>(global0.x & global0.x, countOneBits(1014u), u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, 2986u, u_input.a), vec4<u32>(u_input.a, 1u, 46035u, u_input.c))), func_4(false, func_1(Struct_4(51357u, Struct_1(vec2<u32>(u_input.c, 35720u), 76606u, 585f, global1.x, u_input.d.x), vec3<i32>(-1i, 64504i, -2147483647i), -261f), Struct_1(vec2<u32>(u_input.a, u_input.c), 102264u, 643f, 1304f, u_input.b), -1178f, Struct_3(vec4<bool>(false, true, true, false), global1.xx, true)), global1.x)), 25054i), _wgslsmith_dot_vec4_i32(~vec4<i32>(1i ^ u_input.e.x, u_input.b ^ u_input.e.x, select(34406i, 1i, false), 10118i), u_input.d), ~_wgslsmith_sub_i32(-firstTrailingBit(21312i), max(u_input.e.x, 1i)));
    let var_1 = vec2<u32>(1u, ~_wgslsmith_mult_u32(u_input.c, select(u_input.a, func_2().x, all(vec3<bool>(false, true, false)))));
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1921f, global1.x, global1.x) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2247f, 1000f, -1102f))))));
    global0 = _wgslsmith_add_vec2_u32(vec2<u32>(~(~(global0.x & 17192u)), ~(~global0.x)), select(vec2<u32>(103896u, 69606u), func_2().yx, all(!func_1(Struct_4(var_1.x, Struct_1(vec2<u32>(var_1.x, var_1.x), var_1.x, -184f, global1.x, 76281i), var_0, global1.x), Struct_1(var_1, 59735u, global1.x, global1.x, -1i), global1.x, Struct_3(vec4<bool>(true, true, true, true), vec2<f32>(640f, 1726f), true)).a.zzw)));
    var var_2 = func_1(Struct_4(215u, Struct_1(~vec2<u32>(global0.x, u_input.a), var_1.x, _wgslsmith_f_op_vec3_f32(func_3(Struct_1(var_1, var_1.x, global1.x, global1.x, var_0.x))).x, _wgslsmith_f_op_f32(floor(-2296f)), select(-61195i, var_0.x, any(vec4<bool>(false, true, true, true)))), vec3<i32>(var_0.x, _wgslsmith_add_i32(var_0.x, _wgslsmith_add_i32(-2147483647i, u_input.d.x)), reverseBits(-1063i << (global0.x % 32u))), 531f), Struct_1(~max(vec2<u32>(4569u, 30094u), var_1), var_1.x, _wgslsmith_div_f32(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * global1.x) * _wgslsmith_f_op_f32(global1.x - global1.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.x + _wgslsmith_div_f32(-1890f, global1.x)))), -(~firstTrailingBit(var_0.x))), _wgslsmith_f_op_f32(select(global1.x, 1136f, false)), func_1(Struct_4(~1u, Struct_1(max(var_1, vec2<u32>(u_input.a, var_1.x)), u_input.c, _wgslsmith_f_op_f32(global1.x + global1.x), _wgslsmith_f_op_f32(global1.x - global1.x), -1i), max(vec3<i32>(var_0.x, -4855i, 1i), ~vec3<i32>(var_0.x, var_0.x, 2147483647i)), global1.x), Struct_1(~var_1 << (var_1 % vec2<u32>(32u)), u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.x))), -1599f, _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(u_input.b, u_input.b, 0i, -59070i)), vec4<i32>(u_input.b, u_input.e.x, 63269i, u_input.e.x))), 130f, func_1(Struct_4(min(u_input.c, 1u), Struct_1(vec2<u32>(1u, 4294967295u), 11908u, global1.x, -1183f, -1i), ~vec3<i32>(u_input.d.x, var_0.x, var_0.x), global1.x), Struct_1(vec2<u32>(12164u, 1150u), 17426u, _wgslsmith_f_op_f32(round(1321f)), global1.x, ~var_0.x), 588f, Struct_3(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), false), vec2<f32>(693f, -856f), true))));
    var var_3 = _wgslsmith_mult_u32(u_input.c, 0u);
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, (~firstTrailingBit(vec4<u32>(4294967295u, 4294967295u, 15619u, var_1.x)) | abs(~vec4<u32>(0u, global0.x, u_input.c, global0.x))) | countOneBits(select(vec4<u32>(19693u, global0.x, 0u, u_input.a), vec4<u32>(var_1.x, global0.x, var_1.x, 0u), var_2.a.x) >> (~vec4<u32>(u_input.c, 0u, global0.x, 40672u) % vec4<u32>(32u))));
}

