struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: vec3<bool>,
    d: vec2<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    let var_0 = Struct_3(Struct_2(Struct_1(reverseBits(select(26990i, -14551i, true)), false), Struct_1(select(7105i, _wgslsmith_sub_i32(0i, 30411i), select(true, true, true)), !any(vec3<bool>(true, false, false)))), (vec2<i32>(1i, 1i) >> (firstLeadingBit(~vec2<u32>(u_input.a.x, u_input.a.x)) % vec2<u32>(32u))) & _wgslsmith_clamp_vec2_i32(firstLeadingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(45326i, 2147483647i), vec2<i32>(-1i, -6633i), vec2<i32>(-2147483647i, -46571i))), countOneBits(vec2<i32>(2156i, -2147483647i) << (u_input.a % vec2<u32>(32u))), _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, 17857i), vec2<i32>(-11318i, -1i)), vec2<i32>(1i, 1i))), vec3<bool>(select(true, false, true), true, false), vec2<f32>(_wgslsmith_f_op_f32(trunc(-1607f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-580f))) - -1233f)), Struct_1(min(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -49453i), vec2<i32>(-1i, 2147483647i)), -1i) & -32150i, true));
    var var_1 = Struct_1(_wgslsmith_sub_i32(-(var_0.b.x & var_0.a.a.a), ~_wgslsmith_sub_i32(_wgslsmith_div_i32(var_0.e.a, 0i), abs(var_0.e.a))), !(!(!var_0.c.x)) || all(!select(vec4<bool>(false, var_0.e.b, true, var_0.c.x), vec4<bool>(false, true, false, var_0.e.b), vec4<bool>(var_0.e.b, var_0.a.b.b, var_0.c.x, var_0.e.b))));
    var_1 = Struct_1(_wgslsmith_dot_vec4_i32(-(~vec4<i32>(-16842i, 26423i, var_1.a, 2147483647i)), _wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(var_0.b.x, 34657i, 27183i, 13649i) & vec4<i32>(var_0.a.a.a, var_1.a, var_0.e.a, -6561i)), vec4<i32>(var_1.a, 0i, 0i, var_0.a.a.a) & abs(vec4<i32>(var_1.a, var_0.a.a.a, var_1.a, var_0.b.x)))), !var_0.c.x);
    let var_2 = vec4<bool>(!any(vec3<bool>(all(var_0.c), true, !var_1.b)), false, var_0.c.x, var_0.c.x);
    return 33881i;
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: bool) -> i32 {
    var var_0 = Struct_3(Struct_2(Struct_1(-24732i, true), Struct_1(arg_0, arg_2)), select((-vec2<i32>(arg_0, arg_0) ^ (vec2<i32>(arg_0, arg_0) >> (vec2<u32>(58152u, 1u) % vec2<u32>(32u)))) >> (vec2<u32>(u_input.a.x >> (u_input.a.x % 32u), 0u) % vec2<u32>(32u)), abs(firstTrailingBit(select(vec2<i32>(arg_0, -37950i), vec2<i32>(-30604i, arg_0), arg_2))), arg_1), !select(select(select(vec3<bool>(arg_2, arg_1, true), vec3<bool>(arg_1, true, false), true), vec3<bool>(arg_1, true, arg_1), select(vec3<bool>(arg_2, arg_2, arg_1), vec3<bool>(arg_1, true, arg_1), arg_2)), !(!vec3<bool>(arg_1, true, arg_2)), false), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-737f, -647f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(860f, -1313f)), select(vec2<bool>(arg_2, false), vec2<bool>(arg_2, arg_2), false))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(-542f, 1734f), vec2<f32>(1477f, -153f)))))), Struct_1(arg_0, true));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(639f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(918f * var_0.d.x) + _wgslsmith_f_op_f32(var_0.d.x - 290f)))));
    let var_2 = ~(~vec2<u32>(~0u, _wgslsmith_mult_u32(0u, u_input.a.x)) >> (vec2<u32>(56788u, ~u_input.a.x) % vec2<u32>(32u)));
    var var_3 = ~arg_0;
    var var_4 = var_0.a;
    return _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(~vec3<i32>(i32(-1i) * -1i, countOneBits(var_0.a.b.a), _wgslsmith_sub_i32(var_0.e.a, -1i)), vec3<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(var_4.a.a, var_4.a.a, -103242i), vec3<i32>(2147483647i, -45094i, -21579i)), arg_0, _wgslsmith_div_i32(max(-2564i, 63460i), _wgslsmith_dot_vec3_i32(vec3<i32>(17437i, 31074i, arg_0), vec3<i32>(var_0.b.x, var_4.b.a, 2147483647i)))), -_wgslsmith_clamp_vec3_i32(-vec3<i32>(arg_0, 2147483647i, 0i), vec3<i32>(var_0.a.b.a, var_4.a.a, 11439i) ^ vec3<i32>(var_0.e.a, 2147483647i, arg_0), vec3<i32>(var_0.a.b.a, -2147483647i, var_0.e.a))), vec3<i32>(arg_0, arg_0, _wgslsmith_dot_vec4_i32(-select(vec4<i32>(16355i, var_0.e.a, arg_0, 0i), vec4<i32>(296i, 10958i, -19721i, arg_0), var_0.c.x), ~(-vec4<i32>(-2147483647i, var_0.a.a.a, var_0.a.a.a, arg_0)))));
}

fn func_2(arg_0: vec2<bool>) -> Struct_2 {
    var var_0 = _wgslsmith_dot_vec3_i32(-vec3<i32>(~(~9370i), 1i, -1i), vec3<i32>(_wgslsmith_mult_i32(countOneBits(max(-1582i, -70835i)), -1i), 2147483647i | _wgslsmith_clamp_i32(~1i, 1i, -2147483647i), func_4(func_3(), !(!arg_0.x), true)));
    var_0 = _wgslsmith_add_i32(func_3(), reverseBits(-7157i));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1030f + -406f) + _wgslsmith_f_op_f32(round(-760f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(565f)) - _wgslsmith_f_op_f32(2699f + 326f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-476f - 592f)))))), 816f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-795f + _wgslsmith_f_op_f32(f32(-1f) * -1057f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -977f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(1116f, 121f)))))), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.x, 1137f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1411f))))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(var_1.x))))))), _wgslsmith_div_f32(1775f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(642f, var_1.x)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-696f + var_1.x))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.x), -1617f)), var_1.x)), _wgslsmith_f_op_f32(-var_1.x));
    var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_1.x, var_1.x))), _wgslsmith_f_op_f32(-var_1.x), 1948f, var_1.x) - vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1168f) + _wgslsmith_f_op_f32(-var_1.x)), var_1.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-var_1.x), -1015f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 910f, 1174f, -1000f) + vec4<f32>(-971f, 310f, -519f, var_1.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 1000f, var_1.x, var_1.x) - vec4<f32>(-1645f, 1871f, -205f, 1917f)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 318f, var_1.x, 1049f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -1069f, -107f, var_1.x) * vec4<f32>(985f, 1212f, -1702f, var_1.x)))))));
    return Struct_2(Struct_1(~2147483647i, true), Struct_1(-1i, arg_0.x || false));
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = any(arg_2);
    let var_1 = vec4<bool>(true, arg_0.b.b, true, true);
    var_0 = var_1.x;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1434f, 149f)), _wgslsmith_f_op_f32(-1000f - -835f)) * 556f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1214f))) + -516f))));
    var var_3 = -1566f;
    return Struct_1(~((_wgslsmith_dot_vec3_i32(vec3<i32>(0i, arg_1, 34869i), vec3<i32>(arg_1, 26591i, arg_0.b.a)) ^ _wgslsmith_div_i32(-10584i, arg_1)) & select(arg_0.a.a, _wgslsmith_sub_i32(arg_1, 38101i), arg_0.b.b)), true);
}

fn func_1(arg_0: vec4<bool>) -> StorageBuffer {
    var var_0 = func_5(func_2(!(!vec2<bool>(false, arg_0.x))), -2147483647i, vec2<bool>(true, true));
    let var_1 = Struct_1(var_0.a, true);
    var var_2 = Struct_3(func_2(select(arg_0.zz, select(vec2<bool>(true, true), vec2<bool>(true, true), true), arg_0.ww)), firstLeadingBit(vec2<i32>(func_4(-66985i, any(vec4<bool>(false, var_0.b, false, true)), func_2(arg_0.xy).b.b), 1i)), !select(select(select(arg_0.yyw, arg_0.wwx, vec3<bool>(var_1.b, true, arg_0.x)), !arg_0.wzx, var_0.b), vec3<bool>(true, any(arg_0), true), all(!arg_0.ww)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, -320f) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -879f), _wgslsmith_div_f32(-490f, 1000f))))), Struct_1(~(-16755i | var_1.a), true));
    let var_3 = select(~(~vec4<u32>(0u, 0u, 4294967295u, u_input.a.x)), _wgslsmith_clamp_vec4_u32(~(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 22101u) >> (vec4<u32>(u_input.a.x, u_input.a.x, 62669u, u_input.a.x) % vec4<u32>(32u))), abs(vec4<u32>(0u, 70845u, 69684u, 11852u)) | vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x), vec4<u32>(reverseBits(u_input.a.x), 10769u, 4294967295u, u_input.a.x ^ 0u)), true) >> (vec4<u32>(u_input.a.x, min(_wgslsmith_mult_u32(u_input.a.x, ~u_input.a.x), 66593u), ~4294967295u, firstTrailingBit(~abs(u_input.a.x))) % vec4<u32>(32u));
    var var_4 = -(~func_3());
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_2.d.x, var_2.d.x, 492f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-127f, var_2.d.x, var_2.d.x))))))), ~_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_1.a, -8125i, var_2.b.x), vec3<i32>(-22344i, -58986i, var_0.a)), vec3<i32>(-2147483647i, var_2.a.b.a, var_1.a) >> (vec3<u32>(0u, u_input.a.x, var_3.x) % vec3<u32>(32u))), _wgslsmith_mult_vec3_i32(select(vec3<i32>(var_1.a, -6048i, 0i), vec3<i32>(-2147483647i, 0i, var_2.a.a.a), vec3<bool>(true, var_2.a.b.b, var_1.b)), -vec3<i32>(var_2.a.b.a, var_2.b.x, var_1.a)), firstLeadingBit(vec3<i32>(var_0.a, var_1.a, 2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(~_wgslsmith_div_u32(97741u, _wgslsmith_add_u32(u_input.a.x, u_input.a.x))));
    let x = u_input.a;
    s_output = func_1(!vec4<bool>(select(true, true, true), !all(vec3<bool>(false, true, true)), true, any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)))));
}

