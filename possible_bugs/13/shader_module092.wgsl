struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: i32,
    d: f32,
    e: bool,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 31> = array<vec4<u32>, 31>(vec4<u32>(1u, 31243u, 37566u, 6276u), vec4<u32>(4294967295u, 57048u, 1u, 4294967295u), vec4<u32>(0u, 14168u, 4294967295u, 11190u), vec4<u32>(1u, 61126u, 4294967295u, 4294967295u), vec4<u32>(1u, 4294967295u, 4294967295u, 41923u), vec4<u32>(70962u, 101276u, 126845u, 1u), vec4<u32>(42764u, 30123u, 9358u, 65453u), vec4<u32>(79251u, 27360u, 4294967295u, 118790u), vec4<u32>(0u, 31600u, 0u, 3601u), vec4<u32>(0u, 19470u, 47927u, 0u), vec4<u32>(4294967295u, 43376u, 0u, 4294967295u), vec4<u32>(4294967295u, 0u, 1u, 0u), vec4<u32>(35103u, 1u, 35786u, 125384u), vec4<u32>(4294967295u, 86267u, 49520u, 0u), vec4<u32>(69830u, 4294967295u, 49001u, 65559u), vec4<u32>(22148u, 50591u, 30644u, 0u), vec4<u32>(1u, 3401u, 0u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 0u, 1u), vec4<u32>(29086u, 4294967295u, 50903u, 42977u), vec4<u32>(0u, 4294967295u, 1u, 0u), vec4<u32>(57402u, 1u, 69945u, 84308u), vec4<u32>(14790u, 15238u, 2585u, 1u), vec4<u32>(1u, 0u, 45135u, 1u), vec4<u32>(4294967295u, 7559u, 4294967295u, 13028u), vec4<u32>(1u, 57012u, 19096u, 37912u), vec4<u32>(4294967295u, 0u, 33404u, 0u), vec4<u32>(1u, 1u, 0u, 1u), vec4<u32>(4294967295u, 22008u, 43218u, 0u), vec4<u32>(39577u, 1u, 0u, 0u), vec4<u32>(0u, 50710u, 33911u, 54527u), vec4<u32>(1u, 1u, 107421u, 32959u));

var<private> global1: vec4<u32> = vec4<u32>(1u, 0u, 0u, 17211u);

var<private> global2: f32 = -860f;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: vec3<f32>) -> bool {
    let var_0 = _wgslsmith_div_vec2_f32(arg_2.xx, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.yy)) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_1.a, 1225f)))))), arg_2.yz, arg_1.b.yx)));
    let var_1 = ~u_input.b.wzz;
    let var_2 = 0u;
    global1 = countOneBits(reverseBits(~vec4<u32>(2472u, u_input.b.x, ~var_2, ~4294967295u)));
    var var_3 = _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.b.x, var_2), _wgslsmith_add_vec2_u32(var_1.zz, vec2<u32>(1u, u_input.b.x)) >> (select(vec2<u32>(u_input.b.x, global1.x), u_input.b.zw, vec2<bool>(true, false)) % vec2<u32>(32u)), vec2<u32>(~15465u, min(u_input.b.x, 1u))), _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(var_1.x, u_input.b.x), firstLeadingBit(vec2<u32>(0u, global1.x))), abs(~u_input.b.yx))), min(_wgslsmith_mod_vec2_u32(u_input.b.zw, max(u_input.b.wx, var_1.zx >> (vec2<u32>(u_input.b.x, global1.x) % vec2<u32>(32u)))), _wgslsmith_add_vec2_u32(vec2<u32>(0u, select(1u, 4294967295u, false)), min(vec2<u32>(u_input.b.x, 4294967295u), _wgslsmith_sub_vec2_u32(u_input.b.zz, vec2<u32>(34840u, 4294967295u))))));
    return true;
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2) -> vec2<f32> {
    var var_0 = false;
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.d, arg_0.d, -2100f, arg_0.d) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(683f, arg_2.d, -1839f, arg_2.d)))))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_2.d - arg_1))), arg_0.d, _wgslsmith_div_f32(arg_0.d, 1700f)))));
    var var_2 = arg_2.b;
    let var_3 = Struct_3(_wgslsmith_f_op_f32(1f * _wgslsmith_div_f32(arg_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d) + var_1.x))), !(!vec3<bool>(var_2.x, arg_2.b.x, all(vec3<bool>(var_2.x, false, arg_2.e)))));
    var_0 = (!arg_2.e && arg_2.b.x) && (false && arg_0.e);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-481f, -824f))));
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: vec2<f32>, arg_3: vec3<i32>) -> u32 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(abs(arg_0.d)), select(select(vec3<bool>(arg_0.e & true, select(arg_0.b.x, arg_0.b.x, false), arg_0.e), vec3<bool>(true, -952f >= arg_0.d, arg_0.c != 60297i), select(arg_0.b.x, any(vec3<bool>(arg_1, false, false)), arg_3.x == arg_0.c)), vec3<bool>(!(!arg_1), arg_0.b.x, true), true));
    let var_1 = arg_0;
    var_0 = Struct_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.d, 1000f)))), var_0.a)), vec3<bool>(_wgslsmith_f_op_f32(floor(680f)) < -279f, all(var_0.b), true));
    var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-328f - _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1107f, -1456f), var_0.a))) - -1569f), select(var_0.b, !select(var_0.b, select(vec3<bool>(false, false, arg_1), var_0.b, vec3<bool>(var_0.b.x, var_1.b.x, false)), select(var_0.b, var_0.b, vec3<bool>(var_1.e, var_1.b.x, var_1.b.x))), select(var_0.b, select(var_0.b, vec3<bool>(var_1.e, var_0.b.x, true), !var_0.b), false)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d)), 602f) + 1060f));
    return u_input.b.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: i32) -> bool {
    var var_0 = 1694f;
    let var_1 = arg_1.zwx;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -569f), -1613f, _wgslsmith_f_op_f32(184f * -346f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-723f))))));
    var var_3 = func_5(Struct_2(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, 69027u, 4294967295u, u_input.b.x), vec4<u32>(11238u, 89382u, global1.x, 0u)), vec2<bool>(true, _wgslsmith_f_op_f32(-341f - 843f) != _wgslsmith_f_op_f32(arg_0.x - arg_0.x)), _wgslsmith_mult_i32(-firstLeadingBit(var_1.x), abs(-19873i)), arg_0.x, any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true)))), true, _wgslsmith_f_op_vec2_f32(func_4(Struct_2(vec4<u32>(~u_input.b.x, 28499u, firstLeadingBit(1u), _wgslsmith_mod_u32(4294967295u, global1.x)), vec2<bool>(true, true), _wgslsmith_div_i32(arg_2, _wgslsmith_sub_i32(34148i, 2147483647i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(165f)) * _wgslsmith_f_op_f32(433f * var_2.x)), func_3(-arg_2, Struct_3(-181f, vec3<bool>(false, true, true)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.x, var_2.x, var_2.x))))), var_2.x, Struct_2(vec4<u32>(~u_input.b.x, u_input.b.x, 0u >> (u_input.b.x % 32u), u_input.b.x), vec2<bool>(true, true), 5511i, var_2.x, true))), var_1 | vec3<i32>(_wgslsmith_div_i32(arg_1.x, 6065i), u_input.d, firstLeadingBit(abs(1i))));
    let var_4 = var_2;
    return true;
}

fn func_6(arg_0: u32, arg_1: Struct_3, arg_2: vec4<f32>) -> Struct_2 {
    var var_0 = Struct_1((~(~u_input.b.zz) ^ ~vec2<u32>(u_input.b.x, 109996u)) & ~_wgslsmith_sub_vec2_u32(~vec2<u32>(4294967295u, u_input.b.x), global1.zw));
    var var_1 = vec4<bool>(!((global1.x >> ((arg_0 & 61572u) % 32u)) != 1u), -51679i <= _wgslsmith_div_i32(countOneBits(-8785i), select(-2147483647i, u_input.d, arg_1.b.x)), arg_1.b.x, arg_1.b.x);
    var var_2 = _wgslsmith_f_op_f32(max(1426f, _wgslsmith_f_op_f32(-1289f * _wgslsmith_f_op_f32(abs(971f)))));
    let var_3 = !all(select(!vec4<bool>(false, var_1.x, true, var_1.x), vec4<bool>(true, any(arg_1.b.zx), true, false), false));
    var var_4 = countOneBits(_wgslsmith_mult_vec3_i32(-_wgslsmith_add_vec3_i32(vec3<i32>(-11307i, 2147483647i, u_input.d), vec3<i32>(u_input.d, u_input.d, u_input.a.x)), vec3<i32>(u_input.c.x, -29006i, ~(-10903i)))) | vec3<i32>(0i, -47516i, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.a.xyy, -vec3<i32>(u_input.d, u_input.a.x, u_input.d)), u_input.a.xzy));
    return Struct_2(vec4<u32>(97430u, _wgslsmith_add_u32(~74882u, _wgslsmith_add_u32(func_5(Struct_2(vec4<u32>(4294967295u, global1.x, u_input.b.x, u_input.b.x), vec2<bool>(false, var_1.x), -20194i, arg_2.x, false), true, vec2<f32>(arg_2.x, 1461f), u_input.a.yzw), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global1.x, 0u), vec3<u32>(var_0.a.x, 4294967295u, var_0.a.x)))), min(~global1.x, 0u), u_input.b.x), vec2<bool>(!var_1.x, arg_1.b.x), -1i, arg_2.x, false);
}

fn func_7(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: Struct_2) -> Struct_1 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_2.x, arg_3.d)) + arg_2.x) + arg_2.x)), !vec3<bool>(func_3(37210i, Struct_3(arg_2.x, vec3<bool>(false, true, false)), vec3<f32>(arg_2.x, 1366f, 2159f)), arg_0.e, arg_3.e));
    var var_1 = arg_0.d;
    let var_2 = -reverseBits(15258i);
    var var_3 = func_6(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(arg_1.a.x, global1.x, 59721u, 112546u)), select(global0[_wgslsmith_index_u32(u_input.b.x, 31u)], global0[_wgslsmith_index_u32(96643u, 31u)], vec4<bool>(true, arg_0.e, true, arg_0.b.x))), func_6(firstLeadingBit(36767u), var_0, _wgslsmith_f_op_vec4_f32(-vec4<f32>(494f, arg_2.x, 684f, -1000f))).a) ^ (abs(_wgslsmith_dot_vec2_u32(arg_0.a.zw, vec2<u32>(arg_0.a.x, arg_1.a.x))) | global1.x), Struct_3(-2183f, select(!(!var_0.b), vec3<bool>(func_6(4294967295u, Struct_3(180f, var_0.b), vec4<f32>(arg_2.x, arg_0.d, arg_0.d, 1000f)).e, !arg_3.b.x, true), !arg_0.e)), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.d), arg_3.d)), arg_2.x, arg_3.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_4(arg_0, arg_3.d, Struct_2(vec4<u32>(global1.x, 0u, arg_0.a.x, global1.x), vec2<bool>(true, arg_3.e), 0i, 421f, arg_3.e))).x))).a.x;
    var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2.x), arg_0.d));
    return arg_1;
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: Struct_3, arg_3: Struct_3) -> Struct_1 {
    var var_0 = func_7(func_6(1u, Struct_3(1022f, vec3<bool>(select(arg_2.b.x, false, false), false, func_2(vec3<f32>(arg_3.a, -350f, -190f), u_input.a, arg_0))), _wgslsmith_div_vec4_f32(vec4<f32>(arg_2.a, _wgslsmith_f_op_f32(floor(998f)), _wgslsmith_f_op_f32(-arg_3.a), 3222f), _wgslsmith_f_op_vec4_f32(vec4<f32>(429f, -2785f, 490f, -107f) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_2.a, arg_3.a, -287f, arg_2.a), vec4<f32>(arg_2.a, arg_3.a, arg_2.a, arg_3.a)))))), Struct_1(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 11653u, u_input.b.x, 4294967295u), vec4<u32>(0u, 6263u, u_input.b.x, 1u) >> (vec4<u32>(23372u, arg_1, 4294967295u, arg_1) % vec4<u32>(32u))), ~u_input.b.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(203f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a))) * _wgslsmith_f_op_vec2_f32(func_4(Struct_2(u_input.b, vec2<bool>(false, arg_2.b.x), max(0i, arg_0), -251f, arg_3.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_3.a)) - 1f), Struct_2(_wgslsmith_sub_vec4_u32(vec4<u32>(global1.x, u_input.b.x, 108144u, 93938u), vec4<u32>(arg_1, u_input.b.x, u_input.b.x, 1u)), vec2<bool>(true, true), arg_0, arg_2.a, true)))), Struct_2(~u_input.b >> (vec4<u32>(u_input.b.x, 0u, _wgslsmith_sub_u32(u_input.b.x, 0u), ~global1.x) % vec4<u32>(32u)), vec2<bool>(_wgslsmith_sub_u32(u_input.b.x, global1.x) != abs(arg_1), !arg_3.b.x), _wgslsmith_mod_i32(56461i, i32(-1i) * -arg_0), -1973f, (!arg_3.b.x | all(arg_3.b.yy)) == true));
    global2 = 1090f;
    global1 = global0[_wgslsmith_index_u32(43486u, 31u)] << (u_input.b % vec4<u32>(32u));
    global2 = 216f;
    let var_1 = vec4<i32>(arg_0, _wgslsmith_mod_i32(-6863i << ((u_input.b.x << (u_input.b.x % 32u)) % 32u), _wgslsmith_sub_i32(42913i | u_input.d, arg_0)) | reverseBits(arg_0), ~u_input.a.x, i32(-1i) * -(~(-87912i)));
    return func_7(func_6(max(global1.x, ~(var_0.a.x >> (66243u % 32u))), Struct_3(-1173f, vec3<bool>(any(vec4<bool>(false, arg_3.b.x, arg_3.b.x, true)), arg_2.b.x, false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(1936f, -998f, arg_2.a, arg_2.a) + vec4<f32>(-1000f, arg_3.a, arg_3.a, 871f)))))), func_7(func_6(var_0.a.x, arg_2, vec4<f32>(_wgslsmith_f_op_f32(sign(arg_3.a)), _wgslsmith_f_op_f32(floor(-981f)), _wgslsmith_f_op_f32(-arg_2.a), _wgslsmith_f_op_f32(-arg_2.a))), Struct_1(~u_input.b.wy), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(691f, arg_3.a)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1167f, arg_3.a))))), Struct_2(vec4<u32>(reverseBits(global1.x), ~global1.x, 1u, 0u), select(select(vec2<bool>(true, arg_3.b.x), arg_3.b.zy, vec2<bool>(arg_3.b.x, true)), func_6(arg_1, arg_2, vec4<f32>(-940f, 1248f, arg_3.a, arg_3.a)).b, arg_2.b.x), func_6(_wgslsmith_sub_u32(4294967295u, global1.x), arg_3, _wgslsmith_div_vec4_f32(vec4<f32>(arg_3.a, 463f, 592f, -553f), vec4<f32>(arg_3.a, arg_3.a, arg_2.a, arg_2.a))).c, -1129f, true)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_2.a, arg_2.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.a, arg_3.a))) * vec2<f32>(arg_3.a, -622f)))), func_6(func_5(func_6(arg_1, arg_2, vec4<f32>(815f, arg_2.a, 306f, arg_2.a)), !arg_3.b.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-561f, -108f)), vec3<i32>(-2147483647i, 6184i, var_1.x)) >> (var_0.a.x % 32u), Struct_3(_wgslsmith_f_op_f32(-arg_3.a), arg_2.b), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_2.a, -836f, _wgslsmith_f_op_f32(min(1000f, 686f)), -1000f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(369f, 1089f, arg_2.a, 875f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.a, 970f, -810f, arg_2.a) - vec4<f32>(arg_3.a, arg_2.a, arg_2.a, -2226f)), !vec4<bool>(arg_3.b.x, arg_3.b.x, true, true)))))));
}

fn func_8(arg_0: f32, arg_1: Struct_1) -> vec2<u32> {
    global2 = arg_0;
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), vec3<bool>(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(1i, u_input.d, -2147483647i, u_input.c.x)), u_input.a) > u_input.a.x, true, any(vec4<bool>(true, true, true, true))));
    let var_1 = _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(var_0.a + arg_0));
    var var_2 = Struct_3(1316f, vec3<bool>(false, false, !(!any(var_0.b.yz))));
    global0 = array<vec4<u32>, 31>();
    return ~abs(global1.yz);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(788f - 1f))));
    var var_0 = Struct_1(func_8(523f, func_1(u_input.a.x, _wgslsmith_add_u32(u_input.b.x, ~1u), Struct_3(_wgslsmith_f_op_f32(189f * -991f), vec3<bool>(false, true, false)), Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1000f), vec3<bool>(false, false, false)))));
    var_0 = func_1(~_wgslsmith_mod_i32(countOneBits(abs(u_input.d)), min(select(-1i, u_input.c.x, true), u_input.a.x)), 0u, Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2039f)), select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true))), vec3<bool>(false, true, global1.x >= var_0.a.x), vec3<bool>(true, true, true))), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1621f)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -477f), -838f))), vec3<bool>(false, all(vec4<bool>(false, true, false, true)), func_2(vec3<f32>(-1156f, 1063f, -143f), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.d, u_input.a.x, u_input.c.x, u_input.a.x), vec4<i32>(u_input.d, 1i, u_input.c.x, u_input.d)), -u_input.d))));
    var_0 = Struct_1(global1.zx);
    var var_1 = true;
    var_0 = Struct_1(~var_0.a);
    global1 = min(~u_input.b | vec4<u32>(4294967295u, u_input.b.x, abs(1u), _wgslsmith_clamp_u32(global1.x ^ var_0.a.x, func_5(Struct_2(vec4<u32>(var_0.a.x, var_0.a.x, 1u, var_0.a.x), vec2<bool>(true, true), u_input.d, -1226f, true), false, vec2<f32>(874f, -1526f), vec3<i32>(-18845i, u_input.d, -40912i)), ~u_input.b.x)), firstLeadingBit(select(abs(global0[_wgslsmith_index_u32(max(19006u, var_0.a.x), 31u)]), min(vec4<u32>(0u, u_input.b.x, u_input.b.x, 33039u), vec4<u32>(global1.x, u_input.b.x, 55875u, 38066u)), vec4<bool>(true, true, true, true))));
    let var_2 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(552f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-631f)) - -1940f) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(325f, 1028f, true)), -673f)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(616f, 185f, 1084f), vec3<f32>(-1972f, -2047f, 102f), vec3<bool>(true, true, true))), vec3<f32>(-1024f, -2084f, -858f))) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1558f, -934f, -489f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2, ~vec3<u32>(1u, _wgslsmith_add_u32(reverseBits(7400u), var_0.a.x), 4294967295u), 766f);
}

