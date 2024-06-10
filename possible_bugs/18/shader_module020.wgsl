struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 25> = array<vec3<f32>, 25>(vec3<f32>(336f, -930f, 1270f), vec3<f32>(-495f, -1167f, -976f), vec3<f32>(631f, 696f, -1000f), vec3<f32>(-622f, -185f, -1000f), vec3<f32>(1544f, -497f, -942f), vec3<f32>(-620f, 673f, -894f), vec3<f32>(821f, -886f, -322f), vec3<f32>(1000f, -1000f, 1258f), vec3<f32>(-1460f, -2147f, 934f), vec3<f32>(1000f, -869f, -878f), vec3<f32>(-1661f, -102f, -1000f), vec3<f32>(354f, 1072f, -915f), vec3<f32>(-375f, -2031f, 1004f), vec3<f32>(550f, -511f, 800f), vec3<f32>(-300f, 735f, -1000f), vec3<f32>(-1188f, 1028f, -182f), vec3<f32>(-1706f, -2829f, -693f), vec3<f32>(1056f, 210f, -972f), vec3<f32>(-615f, 666f, 284f), vec3<f32>(-458f, 1000f, -1341f), vec3<f32>(-815f, -756f, -1784f), vec3<f32>(-814f, -332f, 455f), vec3<f32>(-1628f, -272f, 258f), vec3<f32>(-1000f, -1334f, -751f), vec3<f32>(1124f, 978f, 114f));

var<private> global1: Struct_1;

var<private> global2: bool;

var<private> global3: array<bool, 7> = array<bool, 7>(true, true, false, false, false, true, false);

var<private> global4: vec3<i32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_2) -> vec4<u32> {
    global2 = any(!vec3<bool>(arg_2.a.b, countOneBits(arg_1.x) < arg_1.x, !(!global1.b)));
    var var_0 = vec4<u32>(~(~(min(arg_1.x, arg_1.x) | arg_1.x)), abs(arg_1.x), ~min(~_wgslsmith_dot_vec3_u32(vec3<u32>(34528u, 28366u, 23112u), vec3<u32>(4294967295u, arg_1.x, 85898u)), 1u), ~arg_1.x & countOneBits(~arg_1.x));
    let var_1 = _wgslsmith_sub_vec2_u32(firstLeadingBit(abs(var_0.xy)), ~vec2<u32>(countOneBits(4294967295u), min(0u, var_0.x)));
    let var_2 = global1.a;
    let var_3 = !vec2<bool>(select(true, all(vec4<bool>(true, arg_2.a.b, arg_2.b, global3[_wgslsmith_index_u32(var_0.x, 7u)])), select(all(vec2<bool>(global1.b, false)), any(vec3<bool>(false, global1.b, global1.b)), false)), !arg_2.a.b);
    return abs(~(~(~vec4<u32>(84975u, var_0.x, 52862u, var_0.x))) >> (vec4<u32>(var_1.x, var_1.x << (4294967295u % 32u), ~select(0u, 24988u, false), ~_wgslsmith_sub_u32(arg_1.x, 38781u)) % vec4<u32>(32u)));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(459f - global1.a.x);
    var var_1 = min(vec4<u32>(1u, 4511u, ~52256u, 1u), func_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.c.x * 135f))), ~(~vec2<u32>(1u, 42749u)), arg_1)) << (~(~max(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u))) % vec4<u32>(32u));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.c * global1.c) - _wgslsmith_f_op_vec4_f32(trunc(global1.c))))), true, _wgslsmith_f_op_vec4_f32(floor(arg_1.c)));
    global0 = array<vec3<f32>, 25>();
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-705f)) * _wgslsmith_f_op_f32(var_2.c.x + _wgslsmith_f_op_f32(156f * arg_1.c.x)))));
    return countOneBits(~3035u);
}

fn func_1(arg_0: u32, arg_1: Struct_3, arg_2: f32, arg_3: bool) -> Struct_3 {
    global4 = ~_wgslsmith_sub_vec3_i32(vec3<i32>(~5876i, _wgslsmith_sub_i32(0i | u_input.a, u_input.a), ~(-2147483647i) << (_wgslsmith_mod_u32(arg_0, 3187u) % 32u)), vec3<i32>(-2147483647i, -firstLeadingBit(2147483647i), -_wgslsmith_mod_i32(60887i, -60i)));
    let var_0 = vec4<bool>(global3[_wgslsmith_index_u32(arg_1.b, 7u)], arg_1.c.b, !all(select(!vec4<bool>(global1.b, true, global1.b, global1.b), vec4<bool>(true, true, arg_3, arg_3), !global3[_wgslsmith_index_u32(1u, 7u)])), true);
    var var_1 = ~_wgslsmith_clamp_vec3_u32(~vec3<u32>(func_2(vec3<i32>(global4.x, 0i, 53892i), arg_1.e), ~9088u, arg_1.b), vec3<u32>(47418u << (arg_0 % 32u), ~arg_0, 73676u ^ arg_0) << (_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(arg_0, 0u, 4294967295u), vec3<u32>(arg_1.b, 0u, arg_0)), vec3<u32>(arg_1.b, 1u, 1u)) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(arg_0, arg_0, 1u)) >> (vec3<u32>(0u, arg_1.b, arg_1.b) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(arg_1.b, 4294967295u, 37814u)), reverseBits(vec3<u32>(4294967295u, arg_1.b, arg_0)))));
    var var_2 = arg_1.e.a;
    let var_3 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.c.a.x))), global1.a.x) * vec2<f32>(1f, _wgslsmith_f_op_f32(floor(-1288f))))));
    return arg_1;
}

fn func_4(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: Struct_1) -> vec3<bool> {
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -879f), arg_0.c.c.x, global1.a.x, arg_2.a.x)))), !(!select(!global3[_wgslsmith_index_u32(72276u, 7u)], true, true)), _wgslsmith_f_op_vec4_f32(-global1.c));
    var var_0 = abs(arg_1.x);
    global0 = array<vec3<f32>, 25>();
    let var_1 = (~select(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.b, 23179u), vec2<u32>(4294967295u, arg_0.b)), vec2<u32>(18178u, arg_0.b), select(vec2<bool>(true, false), vec2<bool>(global1.b, true), vec2<bool>(arg_2.b, arg_2.b))) | reverseBits(vec2<u32>(~arg_0.b, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b, arg_0.b, arg_0.b, 1u), vec4<u32>(arg_0.b, arg_0.b, arg_0.b, 73160u))))) << ((_wgslsmith_div_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(46893u, 1u), vec2<u32>(arg_0.b, 1u)), ~vec2<u32>(arg_0.b, 0u)) & ~(reverseBits(vec2<u32>(arg_0.b, 0u)) << (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u)))) % vec2<u32>(32u));
    let var_2 = vec3<f32>(func_1(~func_2(arg_1, Struct_2(Struct_1(global1.a, arg_2.b, arg_2.c), arg_2.b, global1.c)), arg_0, _wgslsmith_div_f32(arg_0.c.a.x, _wgslsmith_div_f32(537f, _wgslsmith_div_f32(arg_0.c.a.x, arg_2.a.x))), !(!arg_2.b)).c.c.x, arg_0.c.a.x, -1365f);
    return select(vec3<bool>(global3[_wgslsmith_index_u32(var_1.x, 7u)], arg_0.c.b, all(vec3<bool>(all(vec2<bool>(arg_0.e.b, false)), all(vec3<bool>(true, arg_0.e.b, arg_2.b)), arg_0.e.b))), select(select(vec3<bool>(!global1.b, arg_2.b, true), vec3<bool>(all(vec2<bool>(false, arg_0.a)), true, true), true), select(vec3<bool>(!arg_2.b, any(vec2<bool>(arg_2.b, global3[_wgslsmith_index_u32(var_1.x, 7u)])), all(vec4<bool>(true, false, true, global1.b))), select(vec3<bool>(true, true, true), !vec3<bool>(global3[_wgslsmith_index_u32(1u, 7u)], false, false), vec3<bool>(global1.b, global3[_wgslsmith_index_u32(0u, 7u)], true)), vec3<bool>(any(vec3<bool>(arg_2.b, true, arg_2.b)), !arg_0.c.b, !arg_2.b)), any(vec2<bool>(true, true))), all(!vec4<bool>(false, arg_0.d || arg_0.d, false, false)));
}

fn func_5(arg_0: vec3<f32>, arg_1: vec3<bool>) -> vec4<bool> {
    var var_0 = _wgslsmith_clamp_vec4_u32(select(~(~(~vec4<u32>(77266u, 4294967295u, 56584u, 0u))), min(vec4<u32>(1u, 1u, 1u, 1u), ~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 30771u, 1u, 41347u), vec4<u32>(10653u, 71611u, 10934u, 27043u))), vec4<bool>(true, global3[_wgslsmith_index_u32(firstTrailingBit(1u), 7u)], arg_1.x | false, true)), ~(~min(vec4<u32>(4294967295u, 7858u, 4294967295u, 1u), vec4<u32>(65878u, 5890u, 14125u, 1u))) ^ (abs(vec4<u32>(0u, 83544u, 25833u, 5800u)) & select(_wgslsmith_add_vec4_u32(vec4<u32>(20847u, 29086u, 0u, 15190u), vec4<u32>(21118u, 0u, 1u, 66461u)), _wgslsmith_div_vec4_u32(vec4<u32>(57354u, 21060u, 4294967295u, 1u), vec4<u32>(4294967295u, 1u, 88584u, 21463u)), !vec4<bool>(false, global1.b, true, true))), vec4<u32>(1u, 1u, 1u, 1u));
    let var_1 = global1.b;
    global2 = false;
    let var_2 = func_1(_wgslsmith_div_u32(var_0.x, ~(~(~var_0.x))), func_1(reverseBits(_wgslsmith_div_u32(_wgslsmith_div_u32(4294967295u, var_0.x), ~var_0.x)), Struct_3(true != (arg_0.x != global1.a.x), 72090u, func_1(_wgslsmith_sub_u32(var_0.x, 18609u), Struct_3(global3[_wgslsmith_index_u32(var_0.x, 7u)], 12836u, Struct_1(global1.a, false, global1.c), global1.b, Struct_2(Struct_1(global1.c, arg_1.x, vec4<f32>(-782f, -721f, 658f, arg_0.x)), false, global1.c)), -1394f, true).e.a, false, Struct_2(Struct_1(vec4<f32>(arg_0.x, -1905f, -594f, arg_0.x), true, vec4<f32>(-1602f, arg_0.x, 559f, arg_0.x)), global3[_wgslsmith_index_u32(35368u, 7u)], vec4<f32>(-2026f, global1.a.x, arg_0.x, 1218f))), arg_0.x, !global3[_wgslsmith_index_u32(abs(var_0.x), 7u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))), all(vec3<bool>(true, func_1(var_0.x & var_0.x, func_1(var_0.x, Struct_3(true, var_0.x, Struct_1(global1.c, arg_1.x, global1.c), global1.b, Struct_2(Struct_1(vec4<f32>(global1.c.x, global1.a.x, arg_0.x, -687f), false, vec4<f32>(224f, -129f, global1.a.x, arg_0.x)), false, global1.a)), arg_0.x, true), _wgslsmith_f_op_f32(floor(-555f)), global1.b && false).c.b, global1.b))).e;
    let var_3 = func_1(14835u, Struct_3(true, 70792u, var_2.a, var_2.b, func_1(var_0.x & ~var_0.x, Struct_3(false, ~10865u, func_1(1u, Struct_3(global3[_wgslsmith_index_u32(0u, 7u)], var_0.x, var_2.a, true, var_2), var_2.c.x, false).e.a, select(var_2.a.b, var_2.b, true), func_1(var_0.x, Struct_3(false, var_0.x, Struct_1(global1.a, false, vec4<f32>(-114f, global1.a.x, global1.a.x, -1040f)), false, var_2), 1305f, false).e), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.c.x))), var_2.b | (global3[_wgslsmith_index_u32(4294967295u, 7u)] || true)).e), -239f, select(any(vec4<bool>(false, global3[_wgslsmith_index_u32(var_0.x, 7u)], false, false)) & !all(vec4<bool>(var_2.a.b, arg_1.x, false, true)), !(!(u_input.a == global4.x)), true)).e.a;
    return select(!(!vec4<bool>(var_3.b, false, any(vec4<bool>(global1.b, var_3.b, true, var_3.b)), var_3.b)), select(vec4<bool>(var_3.b, all(vec4<bool>(true, global3[_wgslsmith_index_u32(29044u, 7u)], true, var_2.a.b)), false, (49216i != global4.x) | global3[_wgslsmith_index_u32(~var_0.x, 7u)]), !vec4<bool>(select(global3[_wgslsmith_index_u32(1u, 7u)], false, false), true, true, all(vec2<bool>(false, false))), true), vec4<bool>(true, true, true, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec4<bool>(true, false, false, false), func_5(vec3<f32>(-912f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(224f + 495f)), _wgslsmith_div_f32(global1.c.x, global1.a.x)), select(vec3<bool>(all(vec3<bool>(global1.b, false, false)), false, all(vec4<bool>(false, false, global3[_wgslsmith_index_u32(4294967295u, 7u)], global1.b))), !select(vec3<bool>(true, false, global1.b), vec3<bool>(global1.b, true, false), vec3<bool>(global1.b, false, true)), func_4(func_1(4294967295u, Struct_3(true, 1u, Struct_1(global1.a, global3[_wgslsmith_index_u32(4294967295u, 7u)], global1.a), global1.b, Struct_2(Struct_1(vec4<f32>(1293f, -485f, global1.a.x, global1.c.x), global3[_wgslsmith_index_u32(16725u, 7u)], global1.a), global1.b, vec4<f32>(global1.a.x, 429f, global1.c.x, global1.c.x))), -212f, global3[_wgslsmith_index_u32(0u, 7u)]), reverseBits(vec3<i32>(global4.x, -2970i, 2147483647i)), Struct_1(vec4<f32>(1000f, global1.a.x, global1.c.x, global1.a.x), global3[_wgslsmith_index_u32(24745u, 7u)], vec4<f32>(-1812f, 753f, global1.a.x, global1.c.x))))), func_1(4294967295u, Struct_3(!(u_input.a >= 24564i), _wgslsmith_add_u32(~54394u, 50044u), Struct_1(global1.c, !global1.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, 504f, -1906f, -181f))), global3[_wgslsmith_index_u32(~1u, 7u)], func_1(4294967295u, func_1(1u, Struct_3(false, 1734u, Struct_1(vec4<f32>(104f, -2315f, 901f, global1.c.x), global3[_wgslsmith_index_u32(11583u, 7u)], global1.c), global3[_wgslsmith_index_u32(1u, 7u)], Struct_2(Struct_1(global1.c, false, vec4<f32>(-567f, global1.a.x, 947f, 1308f)), false, vec4<f32>(1000f, global1.c.x, global1.c.x, global1.c.x))), 489f, global3[_wgslsmith_index_u32(1u, 7u)]), -911f, true).e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(656f - _wgslsmith_f_op_f32(-global1.c.x)) - 1308f), false).e.b);
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global1.c.x, -947f, global1.a.x)) - vec4<f32>(-397f, 496f, -1000f, _wgslsmith_f_op_f32(-global1.c.x))), !(any(var_0.zyw) & (-1i > u_input.a)), _wgslsmith_f_op_vec4_f32(ceil(global1.a))), !all(vec2<bool>(all(vec3<bool>(global1.b, var_0.x, global3[_wgslsmith_index_u32(1u, 7u)])), var_0.x)), vec4<f32>(_wgslsmith_f_op_f32(-global1.a.x), 781f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) + _wgslsmith_f_op_f32(min(global1.a.x, global1.a.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -150f) - _wgslsmith_f_op_f32(f32(-1f) * -1140f))))));
    var var_2 = ~countOneBits(_wgslsmith_dot_vec3_i32(select(vec3<i32>(global4.x, -3255i, -53837i), vec3<i32>(0i, u_input.a, -2147483647i), var_0.zxz), vec3<i32>(u_input.a, u_input.a, 31725i) << (vec3<u32>(1u, 75571u, 0u) % vec3<u32>(32u)))) >= (-_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(global4.x, 44727i, -2147483647i, 1i)), min(vec4<i32>(-25163i, 2147483647i, 1i, -58777i), vec4<i32>(u_input.a, -51649i, u_input.a, 0i))) << (~1u % 32u));
    var var_3 = firstTrailingBit(~(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 11538u, 1u), vec3<u32>(4294967295u, 18918u, 1u), vec3<u32>(4294967295u, 1375u, 0u)) | func_3(global1.c.x, vec2<u32>(4294967295u, 1u), Struct_2(Struct_1(vec4<f32>(global1.c.x, 1328f, 339f, -239f), true, vec4<f32>(global1.c.x, var_1.a.c.x, var_1.a.a.x, global1.c.x)), false, global1.c)).zzw)) << (~vec3<u32>(1u ^ func_2(vec3<i32>(1i, 1i, u_input.a), Struct_2(Struct_1(vec4<f32>(var_1.a.a.x, global1.c.x, var_1.c.x, 527f), true, vec4<f32>(1714f, global1.c.x, var_1.a.a.x, 243f)), false, global1.a)), _wgslsmith_dot_vec2_u32(min(vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 5484u)), abs(vec2<u32>(3736u, 51267u))), func_3(-1000f, ~vec2<u32>(30649u, 4294967295u), func_1(0u, Struct_3(false, 0u, var_1.a, global1.b, Struct_2(Struct_1(global1.c, true, vec4<f32>(-304f, global1.c.x, 800f, 1441f)), true, var_1.a.a)), 1268f, false).e).x) % vec3<u32>(32u));
    var var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.c)))), !(!(!(var_0.x && global1.b))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(global1.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.c)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.c.x, var_1.c.x, global1.a.x, global1.c.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, select(reverseBits(vec4<i32>(-1i, u_input.a, global4.x, u_input.a)), abs(vec4<i32>(u_input.a, 6581i, u_input.a, -1i)), vec4<bool>(!global3[_wgslsmith_index_u32(26661u, 7u)], var_4.b, false, var_0.x)) << (_wgslsmith_sub_vec4_u32(select(vec4<u32>(0u, var_3.x, 4294967295u, var_3.x) >> (vec4<u32>(0u, var_3.x, 74284u, 1u) % vec4<u32>(32u)), vec4<u32>(var_3.x, var_3.x, var_3.x, var_3.x) >> (vec4<u32>(var_3.x, var_3.x, 0u, var_3.x) % vec4<u32>(32u)), !global1.b), select(_wgslsmith_clamp_vec4_u32(vec4<u32>(26775u, var_3.x, var_3.x, 102934u), vec4<u32>(4294967295u, 0u, 0u, var_3.x), vec4<u32>(var_3.x, var_3.x, var_3.x, 5916u)), vec4<u32>(var_3.x, 0u, var_3.x, 1u) ^ vec4<u32>(var_3.x, 4294967295u, var_3.x, var_3.x), func_5(vec3<f32>(1128f, -1024f, 1963f), vec3<bool>(true, global1.b, false)).x)) % vec4<u32>(32u)), select(countOneBits(~(vec3<u32>(var_3.x, 4294967295u, var_3.x) & vec3<u32>(var_3.x, var_3.x, 4294967295u))), vec3<u32>(var_3.x, 0u, ~countOneBits(var_3.x)), (firstTrailingBit(var_3.x) > var_3.x) || (var_4.b && func_1(var_3.x, Struct_3(var_0.x, 16950u, Struct_1(vec4<f32>(global1.c.x, -661f, global1.c.x, global1.a.x), var_0.x, global1.c), var_1.a.b, Struct_2(var_1.a, false, vec4<f32>(global1.a.x, global1.c.x, 701f, var_1.c.x))), var_4.c.x, true).a)), vec2<u32>(var_3.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_3.x, var_3.x, var_3.x), vec3<u32>(76907u, var_3.x, var_3.x)) | _wgslsmith_add_vec3_u32(vec3<u32>(var_3.x, 1u, var_3.x), vec3<u32>(58004u, var_3.x, 42313u)), vec3<u32>(0u ^ var_3.x, var_3.x, firstLeadingBit(var_3.x)))), ~_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(0i, u_input.a), 36612i >> (var_3.x % 32u), -1i), vec3<i32>(39205i, 15932i, 92887i) << (~vec3<u32>(var_3.x, 1u, 15047u) % vec3<u32>(32u))));
}

