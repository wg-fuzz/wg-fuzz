struct Struct_1 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: vec4<bool>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: f32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: f32 = -1551f;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = select(vec2<bool>(select(select(true, false, !arg_2.a.a), ~u_input.b >= 58131i, true), !all(select(vec4<bool>(false, false, true, arg_2.a.a), vec4<bool>(arg_3.a, arg_2.a.a, false, arg_3.a), vec4<bool>(true, arg_3.a, arg_3.a, false)))), select(select(vec2<bool>(u_input.a >= u_input.a, false), vec2<bool>(true, arg_3.a), vec2<bool>(true, true)), vec2<bool>(!all(vec2<bool>(arg_2.a.a, false)), true), select(select(select(vec2<bool>(arg_3.a, true), vec2<bool>(false, false), vec2<bool>(arg_2.a.a, true)), vec2<bool>(false, arg_2.a.a), false), !select(vec2<bool>(false, arg_3.a), vec2<bool>(false, arg_3.a), arg_3.a), select(!vec2<bool>(true, arg_3.a), vec2<bool>(arg_2.a.a, true), !vec2<bool>(arg_2.a.a, arg_2.a.a)))), select(select(vec2<bool>(true, true), vec2<bool>(arg_3.a, u_input.a < 46772u), vec2<bool>(false, any(vec2<bool>(arg_3.a, arg_3.a)))), vec2<bool>(arg_2.a.a, any(vec4<bool>(arg_3.a, true, arg_2.a.a, arg_3.a))), select(vec2<bool>(arg_1.x == arg_1.x, false), !select(vec2<bool>(arg_2.a.a, true), vec2<bool>(arg_3.a, true), vec2<bool>(true, false)), !all(vec2<bool>(true, arg_2.a.a)))));
    return !(!(!vec3<bool>(true, var_0.x, arg_2.a.a)));
}

fn func_2() -> bool {
    var var_0 = Struct_1(!(2147483647i > u_input.b), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.x)) + global0.x), 137f, global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1272f, global0.x))) + 1448f)));
    let var_1 = ~u_input.a;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(var_0.b.x - -459f)))));
    var var_2 = Struct_2(~vec3<u32>(reverseBits(14836u) << (_wgslsmith_clamp_u32(1u, u_input.a, 29609u) % 32u), min(~4294967295u, ~1u), 89226u), !select(select(vec2<bool>(false, var_0.a), !vec2<bool>(true, var_0.a), vec2<bool>(true, true)), select(select(vec2<bool>(false, var_0.a), vec2<bool>(var_0.a, var_0.a), var_0.a), !vec2<bool>(var_0.a, var_0.a), true), !all(vec2<bool>(var_0.a, false))), select(vec4<bool>(var_1 >= 4294967295u, true, select(false, true, false) || true, any(func_3(18609i, vec3<i32>(13245i, -8504i, u_input.c), Struct_3(Struct_1(false, vec4<f32>(-1295f, var_0.b.x, global0.x, var_0.b.x))), Struct_1(false, vec4<f32>(407f, var_0.b.x, var_0.b.x, -1294f))))), vec4<bool>(!var_0.a, true, true, !(2076f >= var_0.b.x)), vec4<bool>(!select(var_0.a, false, true), select(!var_0.a, !var_0.a, var_0.a | false), true, var_0.a)), Struct_1(true, vec4<f32>(_wgslsmith_f_op_f32(sign(global0.x)), 1f, 817f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))), var_1);
    let var_3 = !(!(!var_0.a));
    return var_3;
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: bool) -> Struct_3 {
    global1 = 1000f;
    let var_0 = vec4<bool>(true & arg_1.x, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.a, 4294967295u), _wgslsmith_add_u32(~0u, u_input.a >> (u_input.a % 32u)), abs(max(u_input.a, u_input.a))) > _wgslsmith_div_u32(u_input.a, u_input.a ^ 4294967295u), arg_2, !arg_2);
    var var_1 = Struct_1(func_2(), vec4<f32>(-652f, -1921f, -1000f, _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(trunc(arg_0.x)))));
    let var_2 = vec2<u32>(20156u ^ ~min(~u_input.a, 49990u), ~u_input.a);
    var_1 = Struct_1(!var_1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_1.b, vec4<f32>(-550f, 1000f, global0.x, -805f), vec4<bool>(false, var_1.a, true, false))), _wgslsmith_f_op_vec4_f32(-var_1.b)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(2071f, -134f, arg_0.x, 139f) - vec4<f32>(global0.x, 815f, 537f, 758f)) + vec4<f32>(arg_0.x, 934f, var_1.b.x, -604f)))));
    return Struct_3(Struct_1(true, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.b.x)) * -683f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) + var_1.b.x), 1458f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1782f + 1175f))))));
}

fn func_5(arg_0: Struct_3, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = vec3<f32>(1098f, -106f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.b.x)))));
    global0 = arg_0.a.b.zyx;
    var var_1 = arg_0;
    let var_2 = true;
    var_1 = Struct_3(var_1.a);
    return func_4(arg_0.a.b, !(!select(vec3<bool>(true, true, true), !vec3<bool>(arg_0.a.a, var_1.a.a, false), vec3<bool>(true, arg_0.a.a, arg_0.a.a))), 2147483647i >= _wgslsmith_add_i32(u_input.b, u_input.b)).a;
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: i32, arg_3: vec2<u32>) -> vec4<bool> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-824f, arg_0.b.x) * global0.x), arg_0.b.x);
    var var_1 = func_5(func_4(_wgslsmith_f_op_vec4_f32(-arg_0.b), vec3<bool>(!(!arg_0.a), all(vec2<bool>(arg_0.a, arg_0.a)), !func_2()), select(true, all(!vec4<bool>(false, arg_0.a, arg_0.a, arg_0.a)), true)), ~firstTrailingBit(~countOneBits(arg_3)));
    var_0 = arg_0.b.zw;
    global1 = arg_0.b.x;
    global0 = _wgslsmith_f_op_vec3_f32(-func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(arg_0.b)), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_div_f32(1000f, arg_0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -573f), _wgslsmith_f_op_f32(var_0.x + arg_0.b.x))), select(vec3<bool>(arg_0.a & arg_0.a, arg_0.a, true), select(!vec3<bool>(arg_0.a, arg_0.a, false), select(vec3<bool>(arg_0.a, false, false), vec3<bool>(arg_0.a, true, arg_0.a), false), var_1.b.x != 803f), select(func_3(-24662i, vec3<i32>(12660i, -2620i, u_input.c), Struct_3(Struct_1(true, vec4<f32>(2202f, 812f, var_0.x, 1741f))), Struct_1(false, var_1.b)), vec3<bool>(true, false, var_1.a), vec3<bool>(true, var_1.a, true))), true).a.b.zyx);
    return !vec4<bool>(arg_0.a, func_4(arg_0.b, !(!vec3<bool>(arg_0.a, arg_0.a, false)), var_1.a).a.a, arg_0.a, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1000f;
    let var_1 = !select(func_1(Struct_1(true, _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, -617f, 489f) - vec4<f32>(-1000f, global0.x, 120f, 638f))), 4294967295u, ~u_input.b >> (~u_input.a % 32u), ~vec2<u32>(43197u, 13696u)), select(vec4<bool>(true, true, false, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true))), all(vec4<bool>(true, true, true, true))), all(!func_1(Struct_1(true, vec4<f32>(181f, global0.x, 1710f, 584f)), u_input.a, 34719i, vec2<u32>(u_input.a, 0u))));
    var var_2 = Struct_2(vec3<u32>(firstTrailingBit(_wgslsmith_mod_u32(~u_input.a, u_input.a)), firstTrailingBit(reverseBits(u_input.a ^ u_input.a)), 66837u), !(!vec2<bool>(true, any(var_1))), !vec4<bool>(false, false | (true & var_1.x), true, all(var_1)), Struct_1(false, vec4<f32>(115f, _wgslsmith_f_op_f32(min(270f, global0.x)), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(max(1639f, _wgslsmith_f_op_f32(-global0.x))))), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1u), max(vec3<u32>(u_input.a, 1u, 4294967295u), vec3<u32>(32247u, 0u, 1u))), vec3<u32>(~u_input.a, _wgslsmith_div_u32(u_input.a, 4294967295u), u_input.a)), ~(~19460u >> (abs(u_input.a) % 32u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, u_input.a), vec4<u32>(35539u, 0u, 0u, u_input.a)) | 12508u));
    var_2 = Struct_2(abs(~vec3<u32>(countOneBits(var_2.e), var_2.a.x, u_input.a)), select(var_1.yx, func_3(~_wgslsmith_div_i32(u_input.c, -2147483647i), vec3<i32>(1i, -6859i, _wgslsmith_div_i32(u_input.b, u_input.c)), func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.d.b.x, -1919f, 542f, -833f)), vec3<bool>(true, false, var_2.b.x), any(var_2.c)), func_5(Struct_3(Struct_1(false, var_2.d.b)), var_2.a.yy)).xx, vec2<bool>(func_3(_wgslsmith_clamp_i32(u_input.b, -43680i, -8593i), vec3<i32>(u_input.c, u_input.b, u_input.b) & vec3<i32>(u_input.b, u_input.b, 29626i), Struct_3(var_2.d), Struct_1(var_2.d.a, vec4<f32>(632f, 506f, -1378f, -265f))).x, func_5(Struct_3(Struct_1(var_2.c.x, var_2.d.b)), ~vec2<u32>(var_2.a.x, u_input.a)).a)), vec4<bool>(var_2.c.x, true, func_1(var_2.d, reverseBits(37753u), u_input.b, min(var_2.a.yz | vec2<u32>(u_input.a, var_2.e), reverseBits(vec2<u32>(4294967295u, 36651u)))).x, func_3((i32(-1i) * -54523i) >> (reverseBits(var_2.e) % 32u), ~vec3<i32>(u_input.b, u_input.b, u_input.b), func_4(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.d.b.x, 1518f, var_2.d.b.x, 1000f), vec4<f32>(-268f, -284f, 464f, 277f)), var_1.ywy, true), func_5(func_4(vec4<f32>(1000f, -762f, -2002f, global0.x), var_1.xwy, var_2.d.a), max(vec2<u32>(4294967295u, u_input.a), vec2<u32>(4294967295u, 77224u)))).x), func_4(vec4<f32>(_wgslsmith_f_op_f32(func_5(Struct_3(var_2.d), var_2.a.yy).b.x + _wgslsmith_f_op_f32(f32(-1f) * -798f)), var_2.d.b.x, -323f, global0.x), func_1(var_2.d, 1u, -(~u_input.c), var_2.a.xy).www, func_3(u_input.c, vec3<i32>(2147483647i, firstLeadingBit(u_input.c), 1i), func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1451f, var_2.d.b.x, var_2.d.b.x, 203f)), !var_2.c.yxz, var_2.d.a), var_2.d).x).a, ~_wgslsmith_add_u32(var_2.a.x, ~(~14178u)));
    var var_3 = ~(~u_input.a ^ var_2.e);
    var_3 = 1u;
    var_0 = _wgslsmith_f_op_f32(133f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1063f)) - var_2.d.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(-1131f, _wgslsmith_f_op_f32(-1920f * global0.x), var_2.a.x, max(vec3<i32>(u_input.c, _wgslsmith_mod_i32(~u_input.c, u_input.b), ~(-2147483647i)), ~abs(-vec3<i32>(u_input.c, u_input.b, u_input.c))), max(u_input.a, u_input.a));
}

