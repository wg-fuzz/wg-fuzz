struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: f32,
    d: f32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: bool) -> bool {
    var var_0 = vec3<bool>(true, true, !all(!vec3<bool>(arg_0.c.a, true, arg_0.c.e.x)));
    var var_1 = ~_wgslsmith_clamp_vec2_u32(~(_wgslsmith_mult_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, 1u)) & min(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a)), vec2<u32>(countOneBits(0u), min(~2690u, max(u_input.a.x, 1u))), ~select(u_input.a, u_input.a, var_0.zy));
    var_0 = select(!select(!select(vec3<bool>(true, true, arg_2), arg_0.c.e.wxx, arg_0.c.e.xxw), !vec3<bool>(var_0.x, false, arg_0.c.e.x), vec3<bool>(arg_2, all(vec2<bool>(true, true)), var_0.x)), vec3<bool>(var_0.x, any(vec3<bool>(any(vec2<bool>(var_0.x, arg_2)), all(vec4<bool>(var_0.x, true, arg_0.c.e.x, true)), any(var_0.yx))), !(_wgslsmith_clamp_i32(-2147483647i, -2147483647i, 5376i) > _wgslsmith_div_i32(30710i, 2147483647i))), !all(vec3<bool>(true, true, true)) && true);
    global0 = true || all(!vec2<bool>(true, !arg_0.c.e.x));
    let var_2 = _wgslsmith_clamp_vec3_i32(~vec3<i32>(0i, -_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -1775i, 34491i), vec3<i32>(-11359i, 7699i, -1i)), abs(_wgslsmith_clamp_i32(-39i, 1i, 16684i))), abs(countOneBits(countOneBits(vec3<i32>(2147483647i, -2147483647i, 2264i)))) >> (firstTrailingBit(abs(abs(vec3<u32>(u_input.a.x, var_1.x, u_input.a.x)))) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(min(abs(vec3<i32>(-57393i, 1i, -60209i)), vec3<i32>(37917i, 26577i, -1i)), firstTrailingBit(-vec3<i32>(1i, 1i, 7416i))), vec3<i32>(1i, 1i, 1i)));
    return arg_0.c.a;
}

fn func_2(arg_0: vec3<f32>, arg_1: bool, arg_2: u32, arg_3: vec4<i32>) -> u32 {
    let var_0 = _wgslsmith_mod_i32(-2147483647i, 13347i);
    var var_1 = Struct_2(_wgslsmith_mod_u32(arg_2, (firstLeadingBit(arg_2) ^ (1u << (u_input.a.x % 32u))) | (15416u << (1u % 32u))));
    let var_2 = _wgslsmith_f_op_f32(arg_0.x * 1f);
    var_1 = Struct_2(_wgslsmith_mult_u32(1u, ~(u_input.a.x | arg_2)));
    var var_3 = Struct_1(arg_0.x < arg_0.x, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -360f), arg_0.x, 1535f, _wgslsmith_f_op_f32(1f + arg_0.x)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, 736f, var_2, arg_0.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, var_2, -993f)))))), _wgslsmith_f_op_f32(f32(-1f) * -436f), -1697f, !(!vec4<bool>(true, func_3(Struct_3(vec4<f32>(1109f, var_2, 311f, arg_0.x), -1000f, Struct_1(arg_1, vec4<f32>(arg_0.x, arg_0.x, 770f, var_2), -1064f, 426f, vec4<bool>(false, true, arg_1, arg_1))), vec4<f32>(var_2, -627f, 323f, var_2), false), select(arg_1, arg_1, false), func_3(Struct_3(vec4<f32>(var_2, arg_0.x, -990f, var_2), arg_0.x, Struct_1(arg_1, vec4<f32>(-884f, arg_0.x, -1020f, 1974f), arg_0.x, 571f, vec4<bool>(arg_1, arg_1, true, true))), vec4<f32>(1059f, var_2, -1444f, -259f), true))));
    return arg_2;
}

fn func_1(arg_0: u32, arg_1: f32) -> vec4<i32> {
    var var_0 = Struct_2(~(func_2(vec3<f32>(arg_1, arg_1, 788f), true, _wgslsmith_add_u32(arg_0, arg_0), ~vec4<i32>(-1i, 0i, -1i, -1i)) << (~(arg_0 ^ arg_0) % 32u)));
    let var_1 = _wgslsmith_mod_i32(56180i & ((i32(-1i) * -1i) >> (u_input.a.x % 32u)), countOneBits(1i)) >> (1u % 32u);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1))));
    let var_3 = firstLeadingBit(vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(var_1, -2147483647i), _wgslsmith_sub_i32(var_1, 38332i), var_1 ^ -1i), -min(-47927i, 1i), _wgslsmith_dot_vec3_i32(-vec3<i32>(var_1, var_1, 2147483647i), vec3<i32>(0i, var_1, var_1)), -1i)) >> (firstLeadingBit(~firstTrailingBit(vec4<u32>(90377u, u_input.a.x, u_input.a.x, arg_0))) % vec4<u32>(32u));
    let var_4 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(arg_1)))), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(max(-165f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)))), _wgslsmith_f_op_f32(-1605f - arg_1)), -109f, Struct_1(true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-666f, arg_1, -1576f, -2156f) + vec4<f32>(var_2, arg_1, 870f, var_2)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1933f, var_2, arg_1, -302f)))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1011f, var_2, var_2, 843f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -349f)), _wgslsmith_f_op_f32(-1487f + _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(501f, arg_1), 165f))), vec4<bool>(true, true, true, true)));
    return (~select(~vec4<i32>(4400i, 54547i, 2220i, var_3.x), vec4<i32>(var_3.x, 1i, var_3.x, -30214i), select(vec4<bool>(var_4.c.a, false, true, var_4.c.a), var_4.c.e, true)) | var_3) ^ (-vec4<i32>(countOneBits(var_1), var_1, 1i, -28402i | var_1) << (~vec4<u32>(arg_0, ~arg_0, arg_0, firstLeadingBit(12539u)) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(u_input.a.x);
    var_0 = Struct_2(4294967295u);
    let var_1 = _wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(i32(-1i) * -30779i, _wgslsmith_dot_vec4_i32(vec4<i32>(6698i, 2410i, 1i, 4237i), func_1(1u, 1085f)), countOneBits(-24686i))), vec3<i32>(-7924i, ~(_wgslsmith_clamp_i32(33283i, 9119i, 41187i) >> ((u_input.a.x << (1875u % 32u)) % 32u)), _wgslsmith_clamp_i32(~select(2147483647i, 15634i, true), -12264i, firstTrailingBit(2147483647i >> (var_0.a % 32u)))), ~vec3<i32>(2147483647i << (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, u_input.a.x), vec3<u32>(1u, u_input.a.x, var_0.a)) % 32u), ~(-1i), _wgslsmith_dot_vec3_i32(~vec3<i32>(2147483647i, -21656i, -2147483647i), vec3<i32>(22142i, 2147483647i, 1i))));
    global0 = all(select(select(vec3<bool>(all(vec3<bool>(false, true, false)), func_3(Struct_3(vec4<f32>(296f, 1093f, 1891f, -993f), 668f, Struct_1(false, vec4<f32>(1058f, 585f, -1000f, -836f), 1048f, 722f, vec4<bool>(false, false, true, false))), vec4<f32>(-502f, -649f, 1661f, 555f), true), true), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true))), vec3<bool>(true, true, true)), true));
    var_0 = Struct_2(u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(135f - _wgslsmith_f_op_f32(trunc(-523f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-110f - -1283f) * 427f)))), _wgslsmith_add_i32(var_1.x, var_1.x), var_1.x, _wgslsmith_add_vec3_i32(-vec3<i32>(i32(-1i) * -39286i, var_1.x, ~var_1.x), ~firstTrailingBit(countOneBits(var_1))));
}

