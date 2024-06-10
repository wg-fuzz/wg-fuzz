struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec3<f32>) -> bool {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-830f, 656f, 742f, global0.x), vec4<f32>(global0.x, 921f, global0.x, global0.x)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-816f, 509f, -2259f, -332f), vec4<f32>(1938f, 423f, arg_0.x, -980f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1212f, -158f, -1000f, arg_0.x)))), false)));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-254f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(global0.x, global0.x, false)))))));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-764f - _wgslsmith_f_op_f32(trunc(265f))))), 804f, _wgslsmith_f_op_f32(trunc(1150f)), _wgslsmith_f_op_f32(arg_0.x * arg_0.x));
    let var_1 = u_input.a.x;
    var var_2 = ~(~(~select(vec4<u32>(1u, 4294967295u, 4294967295u, 0u), vec4<u32>(18662u, 79046u, 1u, 37729u), true) & firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u))));
    return !(_wgslsmith_mod_u32(_wgslsmith_div_u32(var_2.x, ~11952u), _wgslsmith_mod_u32(abs(var_2.x), _wgslsmith_mult_u32(var_2.x, 1u))) > ~var_2.x);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: Struct_1) -> vec4<f32> {
    global0 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(arg_2.b.x - arg_1.x)) + -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -317f)), -1104f)));
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(442f, arg_3.b.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.x)), _wgslsmith_f_op_f32(round(arg_2.b.x)), arg_2.c.x)), arg_3.b.x) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-248f, 1000f, arg_1.x, 814f)), arg_3.b) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_2.b)))));
    let var_0 = _wgslsmith_add_vec2_u32(~(~vec2<u32>(0u, arg_2.a) ^ ~(~vec2<u32>(28631u, 1u))), (max(~vec2<u32>(arg_3.a, 38514u), ~vec2<u32>(arg_2.a, arg_2.a)) ^ _wgslsmith_div_vec2_u32(firstTrailingBit(vec2<u32>(4294967295u, 2578u)), ~vec2<u32>(arg_3.a, 4294967295u))) & select(vec2<u32>(arg_2.a | arg_2.a, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_3.a, arg_3.a), vec2<u32>(4294967295u, 0u))), ~vec2<u32>(arg_3.a, 4294967295u), false));
    let var_1 = !(u_input.a.x < -u_input.a.x);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1589f - -646f)))))), _wgslsmith_f_op_f32(-global0.x));
    return arg_2.b;
}

fn func_2(arg_0: vec2<f32>) -> bool {
    global0 = _wgslsmith_f_op_vec4_f32(func_4(vec2<bool>(all(vec3<bool>(true, true, true)), func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, 721f, arg_0.x) + global0.zzy)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0 + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global0.yw, vec2<f32>(469f, 412f)) - _wgslsmith_f_op_vec2_f32(exp2(arg_0))))), Struct_1(4294967295u, vec4<f32>(arg_0.x, arg_0.x, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(315f, -822f)))), vec4<bool>(true, _wgslsmith_dot_vec2_u32(vec2<u32>(54253u, 25920u), vec2<u32>(22621u, 0u)) < firstTrailingBit(37937u), true, true)), Struct_1(_wgslsmith_mult_u32(48061u, ~(~60910u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1181f, global0.x, _wgslsmith_div_f32(global0.x, arg_0.x), _wgslsmith_f_op_f32(step(global0.x, global0.x)))), !select(vec4<bool>(false, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), true), vec4<bool>(true, true, true, true)))));
    let var_0 = Struct_1(countOneBits(reverseBits(~abs(4294967295u))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.x, -607f, arg_0.x, 2416f))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, 939f, -818f, -525f), vec4<f32>(491f, 192f, arg_0.x, -151f)))))), !select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), false));
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-508f, _wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_div_f32(_wgslsmith_div_f32(-1707f, arg_0.x), _wgslsmith_f_op_f32(select(arg_0.x, 257f, var_0.c.x)))), -627f, var_0.b.x) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -906f), -353f)) * -728f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(sign(-722f))));
    global0 = var_0.b;
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(var_0.b, var_0.b)));
    return true;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec4<u32> {
    let var_0 = arg_1;
    var var_1 = arg_0.c.x;
    let var_2 = func_3(var_0.b.zzz);
    let var_3 = arg_1;
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(arg_0.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-3214f, global0.x, 799f, var_0.b.x)), !var_0.c)), vec4<f32>(_wgslsmith_f_op_f32(1122f * -649f), _wgslsmith_f_op_f32(f32(-1f) * -118f), -280f, _wgslsmith_f_op_f32(-arg_0.b.x))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.b.x, _wgslsmith_f_op_f32(ceil(arg_2.b.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1320f))) - _wgslsmith_f_op_vec4_f32(var_3.b * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, arg_0.b.x, var_3.b.x, arg_1.b.x), vec4<f32>(990f, arg_2.b.x, 352f, -1054f)), _wgslsmith_f_op_vec4_f32(var_0.b * var_0.b))))));
    return max(~(~firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(7236u, 49310u, 0u, var_0.a), vec4<u32>(49343u, arg_0.a, 1583u, 1u)))), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(arg_1.a, var_3.a, var_0.a, 0u)), vec4<u32>(var_3.a, 26677u, 29402u, arg_2.a)), countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 0u, arg_0.a, 1u), vec4<u32>(arg_1.a, arg_0.a, 0u, var_3.a)))) ^ max(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 11061u, arg_2.a, 4294967295u), vec4<u32>(arg_2.a, var_3.a, 0u, arg_2.a)), ~vec4<u32>(63526u, arg_1.a, arg_1.a, var_3.a)), vec4<u32>(firstLeadingBit(22004u), ~1u, arg_0.a, 61242u)));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<i32>) -> vec4<f32> {
    let var_0 = ~func_5(arg_2, Struct_1(1u, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1498f, arg_2.b.x, 2144f, 1083f) - arg_2.b), vec4<bool>(arg_2.c.x != arg_1.c.x, func_2(global0.yx), true, arg_2.c.x)), arg_1);
    var var_1 = arg_1.c;
    var_1 = !select(vec4<bool>(arg_2.c.x, func_3(_wgslsmith_f_op_vec3_f32(arg_1.b.xwz * vec3<f32>(global0.x, global0.x, arg_2.b.x))), func_2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.x, -566f), vec2<f32>(arg_2.b.x, arg_2.b.x)))), true), !select(arg_2.c, vec4<bool>(false, true, false, false), arg_1.c), (max(10551i, 1i) != arg_0) || (arg_0 >= -arg_3.x));
    var_1 = select(vec4<bool>(all(var_1.xx), all(!(!vec2<bool>(var_1.x, arg_2.c.x))), all(select(var_1.zzy, select(vec3<bool>(false, false, var_1.x), vec3<bool>(arg_1.c.x, true, arg_1.c.x), true), !vec3<bool>(var_1.x, true, true))), false), !select(vec4<bool>(arg_1.c.x && false, any(var_1.xwy), any(vec4<bool>(true, true, false, arg_2.c.x)), arg_2.c.x), select(select(arg_1.c, arg_2.c, vec4<bool>(true, false, arg_1.c.x, arg_2.c.x)), vec4<bool>(true, false, var_1.x, true), !arg_2.c.x), false), func_3(_wgslsmith_f_op_vec3_f32(arg_1.b.xyz * _wgslsmith_f_op_vec3_f32(select(global0.yww, vec3<f32>(704f, arg_1.b.x, 1000f), arg_1.c.x)))) | true);
    var_1 = select(select(arg_1.c, arg_2.c, arg_2.c.x), arg_2.c, arg_2.c.x);
    return _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1159f))), arg_1.b.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.x, arg_1.b.x))), global0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -929f), global0.x, global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-848f * -1288f) + _wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(u_input.a.x, Struct_1(0u, vec4<f32>(-1000f, global0.x, global0.x, global0.x), vec4<bool>(false, true, true, false)), Struct_1(63783u, vec4<f32>(-1000f, 478f, global0.x, global0.x), vec4<bool>(false, false, false, true)), vec4<i32>(u_input.a.x, u_input.a.x, 38719i, 27261i))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -541f, 1422f, 1000f)))), _wgslsmith_div_vec4_f32(vec4<f32>(global0.x, _wgslsmith_f_op_f32(1087f + -241f), _wgslsmith_f_op_f32(-712f * global0.x), _wgslsmith_f_op_f32(round(-1000f))), vec4<f32>(-1827f, global0.x, _wgslsmith_f_op_f32(round(global0.x)), -1000f))))));
    var var_0 = 12220u;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1395f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.x))), 834f, 403f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.x, 746f, global0.x, 720f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1542f, global0.x, -1445f, 1261f)))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-326f + _wgslsmith_div_f32(global0.x, global0.x)) * global0.x), global0.x, global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-139f)))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.x))))));
    var var_2 = _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(func_5(Struct_1(2406u, vec4<f32>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(true, true, true, true)), Struct_1(31438u, vec4<f32>(-1127f, global0.x, global0.x, -215f), vec4<bool>(true, true, true, true)), Struct_1(1u, vec4<f32>(var_1.x, -532f, 2252f, var_1.x), vec4<bool>(true, false, false, false))).wyx, countOneBits(~vec3<u32>(2606u, 4294967295u, 4294967295u))), _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 1u), max(vec3<u32>(0u, 25135u, 59672u), vec3<u32>(94967u, 18934u, 0u))), vec3<u32>(1u, 1u, ~0u))), ~(~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(109592u, 1u, 1u), vec3<u32>(14178u, 28161u, 4294967295u)), 4294967295u, 1u)));
    let var_3 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-var_1.x)))))));
    var var_4 = var_1.yw;
    var_2 = ~abs(~(~_wgslsmith_add_u32(1u, 1u)));
    let var_5 = u_input.a.x;
    var var_6 = Struct_1(1u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-508f, global0.x, -1000f, -896f))) * _wgslsmith_f_op_vec4_f32(func_4(vec2<bool>(true, true), vec2<f32>(var_1.x, var_4.x), Struct_1(0u, vec4<f32>(1252f, 1375f, var_1.x, var_4.x), vec4<bool>(true, true, true, true)), Struct_1(75120u, vec4<f32>(-974f, var_4.x, 384f, -864f), vec4<bool>(false, true, true, false)))))), vec4<bool>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -435f))) != _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(1347f)), _wgslsmith_f_op_f32(-global0.x))), all(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true)), !(u_input.a.x > 40447i), true));
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_f_op_vec4_f32(-var_6.b), 1i, _wgslsmith_f_op_f32(select(-616f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(447f * _wgslsmith_f_op_f32(ceil(var_6.b.x))))), false)));
}

