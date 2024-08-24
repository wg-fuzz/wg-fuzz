struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> f32 {
    let var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(arg_1.c, _wgslsmith_f_op_f32(exp2(arg_0.a.c)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(arg_0.e.a))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(exp2(arg_0.a.a)), -1252f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, arg_0.c, 1000f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(800f, 2852f, arg_1.a)))))));
    let var_1 = Struct_4(arg_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(806f, -1126f, 950f, arg_0.d.a), vec4<f32>(arg_1.c, arg_0.e.a, -1225f, 695f))) - _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.d.a, arg_0.e.a, 1156f, 900f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(358f, arg_1.c, arg_1.c, 781f))))));
    let var_2 = 2147483647i;
    let var_3 = ~(vec2<i32>(var_1.a.b, 1i) >> (_wgslsmith_mod_vec2_u32(~(vec2<u32>(u_input.b, 4294967295u) >> (vec2<u32>(u_input.b, 12221u) % vec2<u32>(32u))), vec2<u32>(abs(u_input.a), ~4294967295u)) % vec2<u32>(32u)));
    var var_4 = _wgslsmith_mod_vec3_i32(vec3<i32>(-69347i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_3.x, arg_0.b), _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, 12093i), vec2<i32>(arg_0.b, var_3.x)), vec2<i32>(-14181i, 0i))), _wgslsmith_div_i32(arg_0.b, ~_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.b, var_3.x, 16717i, var_2), vec4<i32>(var_3.x, var_3.x, 82250i, var_2)))), vec3<i32>(var_2, (-2147483647i | -var_2) << (1u % 32u), _wgslsmith_mult_i32(15354i, firstLeadingBit(~arg_0.b))));
    return var_0.x;
}

fn func_2() -> f32 {
    let var_0 = true;
    var var_1 = true;
    var var_2 = ~firstTrailingBit(~vec3<u32>(4294967295u, 1u, 17725u | u_input.b));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 1383f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(992f, true, 1000f, vec3<bool>(true, false, var_0)), 54498i, -558f, Struct_1(-1063f, var_0, 643f, vec3<bool>(var_0, true, var_0)), Struct_1(-2266f, var_0, 676f, vec3<bool>(true, var_0, var_0))), Struct_1(-395f, var_0, -614f, vec3<bool>(false, true, var_0)))) + _wgslsmith_f_op_f32(sign(695f)))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(968f + _wgslsmith_f_op_f32(f32(-1f) * -2164f)), 2319f))), -1779f);
    var_1 = !(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3.x), 915f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(var_3.x, 1197f, false)))))) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(var_3.x)))), _wgslsmith_f_op_f32(135f - var_3.x)));
    return var_3.x;
}

fn func_1(arg_0: i32) -> i32 {
    let var_0 = vec4<u32>(1u, u_input.a, 112852u, countOneBits(85086u));
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2408f, 1000f, 984f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-173f, 784f, -1270f)))))), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f + 1556f), 527f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(596f + 594f) * -609f) - -417f), _wgslsmith_div_f32(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(794f, -542f)), -184f))), any(!vec4<bool>(any(vec3<bool>(true, true, true)), true, false, true))));
    var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -162f))), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(269f - var_1.x) - _wgslsmith_f_op_f32(var_1.x + 516f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(570f, 539f, 116f)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -660f, 684f))))), true))));
    var var_2 = arg_0 >> (reverseBits(_wgslsmith_mult_u32(0u, u_input.a ^ _wgslsmith_add_u32(8537u, 41868u))) % 32u);
    let var_3 = countOneBits(~abs(_wgslsmith_dot_vec4_u32(var_0, vec4<u32>(1u, 4294967295u, u_input.a, var_0.x))) & _wgslsmith_dot_vec3_u32(min(abs(vec3<u32>(0u, 34266u, 37370u)), var_0.wzz), var_0.xww));
    return 1i;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: Struct_2) -> Struct_3 {
    var var_0 = arg_2.e;
    var_0 = arg_2.d;
    var var_1 = arg_1;
    var_1 = vec3<i32>((-14437i ^ arg_1.x) ^ -(~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -12742i, 4591i, arg_0.x), vec4<i32>(-31987i, -2147483647i, arg_1.x, arg_1.x))), 17865i, -90476i);
    let var_2 = _wgslsmith_dot_vec2_u32(~countOneBits(_wgslsmith_sub_vec2_u32(~vec2<u32>(85902u, 96168u), vec2<u32>(u_input.b, 0u))), _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(u_input.a << (0u % 32u), 1u), u_input.b), vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(22040u, u_input.b), u_input.b), 47897u)));
    return Struct_3(vec3<i32>(-1i) * -select(firstLeadingBit(arg_1), abs(arg_1), select(var_0.d, vec3<bool>(arg_2.a.d.x, arg_2.e.d.x, arg_2.a.b), vec3<bool>(arg_2.e.d.x, var_0.b, var_0.d.x))), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, var_1.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, var_2, var_2), vec4<u32>(u_input.a, 24961u, 1u, u_input.b)) % 32u), ~1i), vec3<i32>((var_1.x & var_1.x) & -2147483647i, -(-2147483647i ^ var_1.x), -(~(-19904i)))), var_0.d.yy);
}

fn func_5(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_3, arg_3: vec2<f32>) -> StorageBuffer {
    let var_0 = vec3<u32>(firstTrailingBit(abs(1u)), _wgslsmith_div_u32(1u, u_input.b), ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.b) >> (vec2<u32>(14727u, arg_1.x) % vec2<u32>(32u)), ~arg_1));
    let var_1 = vec4<u32>(arg_1.x, firstTrailingBit(u_input.b), 83044u, u_input.b);
    var var_2 = arg_2;
    var var_3 = var_2.b.zz;
    var var_4 = Struct_4(Struct_2(Struct_1(1083f, arg_3.x <= _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(round(-2227f)), !select(vec3<bool>(arg_2.c.x, false, var_2.c.x), vec3<bool>(arg_2.c.x, false, false), vec3<bool>(false, true, false))), _wgslsmith_div_i32(-2147483647i, -(-1i >> (var_0.x % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(arg_3.x, arg_3.x, arg_2.c.x))))), Struct_1(-795f, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(181f - arg_3.x)), vec3<bool>(arg_2.c.x, any(vec3<bool>(arg_2.c.x, false, arg_2.c.x)), var_0.x == u_input.a)), Struct_1(1000f, all(var_2.c), -969f, !select(vec3<bool>(var_2.c.x, true, true), vec3<bool>(true, arg_2.c.x, false), vec3<bool>(false, false, true)))), vec4<f32>(arg_3.x, arg_3.x, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(sign(arg_3.x))), arg_3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(arg_3.x, true, 1000f, vec3<bool>(arg_2.c.x, arg_2.c.x, false)), var_3.x, -1634f, Struct_1(arg_3.x, false, -1845f, vec3<bool>(true, var_2.c.x, arg_2.c.x)), Struct_1(arg_3.x, arg_2.c.x, arg_3.x, vec3<bool>(false, var_2.c.x, var_2.c.x))), Struct_1(-597f, arg_2.c.x, 187f, vec3<bool>(true, false, true)))))));
    return StorageBuffer(_wgslsmith_mod_vec2_u32(vec2<u32>(~45612u << (_wgslsmith_dot_vec3_u32(vec3<u32>(40399u, var_1.x, 12866u), var_1.wyw) % 32u), 1u), arg_1), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.b.x)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_4.b.x * var_4.b.x), 104f)), _wgslsmith_f_op_f32(sign(var_4.a.d.a)), _wgslsmith_f_op_f32(f32(-1f) * -152f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1324f)) + _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-835f * arg_3.x)))), ~min(~(~vec4<u32>(arg_1.x, 1384u, u_input.a, arg_1.x)), vec4<u32>(var_1.x, arg_1.x, 48091u, arg_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(i32(-1i) * -1i, vec2<u32>(81092u, select(_wgslsmith_add_u32(0u, ~u_input.b), u_input.a, true)), func_4(select(vec4<i32>(func_1(0i), ~(-1i), firstLeadingBit(2147483647i), 1i), vec4<i32>(_wgslsmith_div_i32(-2147483647i, 1i), 11020i, ~(-1i), _wgslsmith_clamp_i32(19584i, 1i, 3607i)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), any(vec2<bool>(false, true)))), max(vec3<i32>(2147483647i, ~0i, _wgslsmith_mod_i32(35575i, -30124i)), vec3<i32>(i32(-1i) * -22489i, max(0i, 1i), 26798i)), Struct_2(Struct_1(_wgslsmith_f_op_f32(298f + -1559f), false, -498f, vec3<bool>(true, false, true)), -_wgslsmith_dot_vec2_i32(vec2<i32>(21223i, -1i), vec2<i32>(-9757i, -1i)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2()))), Struct_1(506f, true, 457f, select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true)), Struct_1(1f, true, -902f, vec3<bool>(true, true, true)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - 1170f), 112f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1550f + -425f), -2553f))));
}

