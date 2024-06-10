struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec2<f32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: f32,
    e: Struct_1,
}

struct Struct_5 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, false);

var<private> global1: vec2<bool>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec4<i32> {
    var var_0 = global1.x;
    let var_1 = Struct_2(true, Struct_1(_wgslsmith_f_op_f32(floor(1000f)), select(!vec3<bool>(global0.x, true, global1.x), select(vec3<bool>(global0.x, true, global1.x), !vec3<bool>(global1.x, false, global1.x), !vec3<bool>(false, global0.x, false)), select(vec3<bool>(false, global0.x, false), vec3<bool>(true, global0.x, false), !vec3<bool>(global1.x, global0.x, global1.x))), vec2<f32>(-2019f, -1602f), vec2<u32>(_wgslsmith_sub_u32(min(u_input.d.x, 57512u), u_input.d.x), u_input.b & u_input.b)), firstLeadingBit(~(-(vec4<i32>(-1i, 2147483647i, 1i, u_input.e.x) & vec4<i32>(u_input.e.x, -10365i, -1i, 44132i)))));
    return ~firstTrailingBit(~_wgslsmith_clamp_vec4_i32(-var_1.c, abs(var_1.c), ~var_1.c));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(!global1.x, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(548f, -780f)) + -1000f) - _wgslsmith_f_op_f32(668f + -226f)), vec3<bool>(global0.x, !global0.x, global0.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(256f, 449f), vec2<f32>(-1776f, 100f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1525f, -1000f))), u_input.d.xy), func_3());
    var var_1 = Struct_5(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(var_0.b.c.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1127f))), 1473f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -727f) - var_0.b.c.x) - 976f)));
    let var_2 = u_input.e;
    let var_3 = Struct_3(Struct_2(any(select(vec4<bool>(false, var_0.a, true, var_0.b.b.x), vec4<bool>(global0.x, global1.x, global0.x, var_0.b.b.x), var_0.b.b.x)) != var_0.a, var_0.b, ~vec4<i32>(_wgslsmith_dot_vec4_i32(var_0.c, var_0.c), var_2.x, select(-6076i, -28839i, var_0.a), 1i)), select(vec4<bool>(true, true, var_0.b.b.x, var_0.a), !vec4<bool>(true, true, all(global0.xx), global0.x), vec4<bool>(true, !global1.x, global0.x, all(!var_0.b.b))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(930f)) - 262f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.b.c.x)))), select(vec3<bool>(true, !var_0.b.b.x, all(var_0.b.b)), var_0.b.b, _wgslsmith_f_op_f32(round(var_0.b.c.x)) < _wgslsmith_f_op_f32(var_0.b.a + 1000f)), var_1.a.yz, abs(vec2<u32>(~1u, var_0.b.d.x))));
    let var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.c.a), -1108f);
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-156f)), -596f, !var_0.a))), !(!(!(!var_3.c.b))), var_1.a.yx, vec2<u32>(4294967295u, ~max(~4294967295u, _wgslsmith_add_u32(47268u, 2753u))));
}

fn func_1() -> Struct_2 {
    var var_0 = func_2();
    let var_1 = 942i;
    var var_2 = max(~(-2147483647i), _wgslsmith_sub_i32(i32(-1i) * -24123i, -_wgslsmith_sub_i32(-7456i, u_input.e.x))) | -60139i;
    let var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.a)));
    var var_4 = !(!(!(!(!vec4<bool>(false, global0.x, var_0.b.x, var_0.b.x)))));
    return Struct_2(!(var_1 < ~reverseBits(-40483i)), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -499f), var_0.c.x)), vec3<bool>(false, var_4.x, var_0.b.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3, var_3) * var_0.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3, 251f)), true))), min(~_wgslsmith_sub_vec2_u32(u_input.d.ww, var_0.d), vec2<u32>(1u, 51322u))), _wgslsmith_add_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.e.x, -1i, 0i, u_input.a), vec4<i32>(u_input.a, 1473i, u_input.e.x, var_1)), countOneBits(vec4<i32>(-42627i, u_input.e.x, -2147483647i, var_1))) << (u_input.d % vec4<u32>(32u)));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.b.a, _wgslsmith_div_f32(arg_1.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1236f - arg_1.b.a))), any(vec2<bool>(true, true)))));
    var var_1 = u_input.e.x;
    var_1 = -2147483647i;
    let var_2 = arg_1.c.x;
    global1 = !vec2<bool>(all(!arg_0.wx), all(arg_1.b.b.xz));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -120f))) * 822f), !arg_1.b.b, arg_1.b.c, arg_1.b.d);
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_4 {
    global0 = func_2().b;
    global0 = !func_4(vec4<bool>(false, false, !any(vec4<bool>(global1.x, arg_1.b.x, true, false)), any(vec2<bool>(false, true)) & arg_1.b.x), func_1(), func_2().b.x).b;
    var var_0 = Struct_5(vec3<f32>(_wgslsmith_f_op_f32(arg_1.a + arg_1.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a - -689f) * _wgslsmith_f_op_f32(-arg_1.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(503f * _wgslsmith_f_op_f32(exp2(arg_1.a))))));
    let var_1 = arg_1.a;
    var var_2 = Struct_2(false, Struct_1(_wgslsmith_f_op_f32(func_2().c.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), func_2().b, _wgslsmith_f_op_vec2_f32(ceil(var_0.a.xz)), vec2<u32>(abs(~arg_1.d.x), 45456u | u_input.d.x)), vec4<i32>(_wgslsmith_mult_i32(1i, func_3().x), i32(-1i) * -2147483647i, -27373i, reverseBits(arg_0.x)) & _wgslsmith_add_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(36355i, arg_0.x, -2785i, -2147483647i), vec4<i32>(u_input.e.x, 1i, 7200i, 59803i)), vec4<i32>(i32(-1i) * -22801i, u_input.a, -2147483647i, _wgslsmith_sub_i32(757i, arg_0.x))));
    return Struct_4(u_input.d.x, var_0.a, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(select(vec2<i32>(0i, var_2.c.x), vec2<i32>(-2147483647i, -29358i), arg_1.b.yx), firstLeadingBit(vec2<i32>(2147483647i, -2147483647i))) | _wgslsmith_add_vec2_i32(vec2<i32>(23499i, u_input.a) << (vec2<u32>(43508u, arg_1.d.x) % vec2<u32>(32u)), abs(var_2.c.wx)), _wgslsmith_sub_vec2_i32(arg_0, -(~vec2<i32>(arg_0.x, 0i)))), 1224f, func_4(!select(!vec4<bool>(arg_1.b.x, arg_1.b.x, global1.x, true), vec4<bool>(true, global0.x, false, arg_1.b.x), vec4<bool>(false, global0.x, global0.x, global1.x)), func_1(), func_1().b.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(u_input.e, func_4(!vec4<bool>(false, true, true, global0.x), func_1(), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-2019f * 1409f))) < -848f), ~u_input.d);
    var var_1 = Struct_2(func_2().b.x || !all(select(vec4<bool>(var_0.e.b.x, false, false, false), vec4<bool>(var_0.e.b.x, false, var_0.e.b.x, global0.x), vec4<bool>(true, false, global0.x, global1.x))), func_5(vec2<i32>(~34731i, 2147483647i), var_0.e, u_input.d).e, func_1().c);
    var var_2 = Struct_3(Struct_2(false, func_5(vec2<i32>(_wgslsmith_sub_i32(u_input.a, var_1.c.x), _wgslsmith_add_i32(1i, -38177i)), Struct_1(_wgslsmith_f_op_f32(var_1.b.a - var_0.e.c.x), !var_0.e.b, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1820f, var_0.b.x))), ~vec2<u32>(var_0.e.d.x, var_1.b.d.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 19479u, u_input.b, 19919u), u_input.d, ~u_input.d)).e, var_1.c), select(select(!select(vec4<bool>(true, global0.x, var_1.a, false), vec4<bool>(false, false, global1.x, global0.x), vec4<bool>(true, global0.x, true, global0.x)), !(!vec4<bool>(global0.x, var_1.b.b.x, global0.x, global1.x)), vec4<bool>(true, true, true, true)), vec4<bool>(!func_1().b.b.x, true, (u_input.d.x <= 4294967295u) == (var_1.b.c.x == -1060f), global0.x), select(vec4<bool>(any(vec4<bool>(false, global0.x, global0.x, var_1.b.b.x)), true, !var_1.a, global1.x), !vec4<bool>(true, global0.x, true, false), select(select(vec4<bool>(global0.x, true, false, global1.x), vec4<bool>(global1.x, false, var_0.e.b.x, global1.x), vec4<bool>(global0.x, var_1.a, global1.x, var_1.b.b.x)), !vec4<bool>(global0.x, true, true, true), true))), func_4(!(!(!vec4<bool>(var_0.e.b.x, false, global1.x, false))), Struct_2(any(!vec4<bool>(false, var_1.a, true, false)), var_0.e, -select(vec4<i32>(var_0.c, -1i, -57824i, -2147483647i), var_1.c, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))) < _wgslsmith_f_op_f32(1385f * var_1.b.c.x)));
    global0 = select(func_2().b, !(!vec3<bool>(var_1.a, false, true)), func_5(func_1().c.xy, Struct_1(375f, var_1.b.b, vec2<f32>(func_5(vec2<i32>(1i, var_1.c.x), var_1.b, vec4<u32>(41754u, 0u, 0u, var_1.b.d.x)).b.x, _wgslsmith_div_f32(-408f, -567f)), var_1.b.d), vec4<u32>(34572u, _wgslsmith_mult_u32(u_input.b, _wgslsmith_mult_u32(93069u, u_input.d.x)), var_2.a.b.d.x, 0u)).e.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(func_1().b.c, _wgslsmith_f_op_vec2_f32(floor(var_2.c.c))))), u_input.d.wzx, vec4<i32>(-(1i ^ func_1().c.x), _wgslsmith_mod_i32(var_1.c.x, var_0.c), _wgslsmith_mod_i32(-1i, var_1.c.x), _wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.a, -2147483647i), select(var_0.c, func_3().x, true))));
}

