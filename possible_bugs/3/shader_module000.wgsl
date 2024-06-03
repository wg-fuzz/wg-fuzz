struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 13>;

var<private> global1: f32 = -684f;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1) -> vec2<u32> {
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(878f, -1958f)) - _wgslsmith_f_op_f32(abs(1948f))));
    var var_0 = vec4<i32>(arg_2.a | ~(~firstLeadingBit(arg_2.a)), 2147483647i, u_input.a, firstTrailingBit(arg_2.a));
    let var_1 = ~(~u_input.b.xwz);
    let var_2 = _wgslsmith_div_u32(~50071u, var_1.x);
    var var_3 = arg_2;
    return ~u_input.b.wx;
}

fn func_3(arg_0: f32) -> vec3<bool> {
    global0 = array<vec4<f32>, 13>();
    global1 = _wgslsmith_f_op_f32(1319f + -1000f);
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1202f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0)) + -1000f) - -566f))));
    var var_0 = Struct_2(func_1(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0), 1061f)), -623f, -705f, arg_0), Struct_1(-(~u_input.d), _wgslsmith_f_op_f32(-1556f + -761f), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, arg_0) * vec3<f32>(arg_0, 766f, arg_0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -1000f, arg_0))))), Struct_1(72384i, _wgslsmith_f_op_f32(f32(-1f) * -611f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0, 742f, 1153f))) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1108f, arg_0, arg_0)))))), _wgslsmith_mult_vec2_i32(abs(u_input.c.yy), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -25510i), min(u_input.c.yx, u_input.c.yy)), _wgslsmith_div_i32(-1i >> (0u % 32u), -11494i))), Struct_1(u_input.e.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0 + arg_0), arg_0)))), vec3<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(-arg_0))));
    global0 = array<vec4<f32>, 13>();
    return !(!select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), false));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: vec2<u32>, arg_3: Struct_1) -> u32 {
    let var_0 = !select(vec3<bool>(!(!arg_0), arg_2.x != ~arg_2.x, arg_0), select(vec3<bool>(true, arg_0, !arg_0), vec3<bool>(any(vec4<bool>(true, arg_0, true, true)), arg_0, true || arg_0), func_3(_wgslsmith_f_op_f32(sign(-897f)))), any(select(!vec4<bool>(false, arg_0, arg_0, arg_0), !vec4<bool>(false, false, arg_0, arg_0), !arg_0)));
    var var_1 = Struct_2(vec2<u32>(0u, 0u), abs(~u_input.e.zy), Struct_1(max(_wgslsmith_div_i32(firstLeadingBit(-2147483647i), -2147483647i), firstTrailingBit(arg_3.a)), arg_1, vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(arg_3.b, 1675f)), -476f)), arg_1, _wgslsmith_f_op_f32(-arg_1))));
    let var_2 = _wgslsmith_sub_vec3_i32(vec3<i32>(-1i) * -(u_input.c << (vec3<u32>(u_input.b.x, 1u, 4294967295u) % vec3<u32>(32u))), select(_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.c ^ u_input.c, u_input.c, u_input.c | vec3<i32>(-26137i, u_input.e.x, arg_3.a)), _wgslsmith_div_vec3_i32(u_input.e, vec3<i32>(u_input.e.x, u_input.c.x, -1i)), _wgslsmith_div_vec3_i32(u_input.c, vec3<i32>(2147483647i, u_input.e.x, -39175i) << (u_input.b.zxx % vec3<u32>(32u)))), ~u_input.e, false));
    var_1 = Struct_2(vec2<u32>(0u, (0u >> ((u_input.b.x ^ u_input.b.x) % 32u)) & _wgslsmith_div_u32(firstLeadingBit(arg_2.x), ~var_1.a.x)), u_input.c.xz | _wgslsmith_div_vec2_i32(vec2<i32>(47373i, -1i), u_input.c.xz), Struct_1(countOneBits(arg_3.a & ~45525i), _wgslsmith_div_f32(-168f, _wgslsmith_f_op_f32(floor(411f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(var_1.c.c)))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.c.b, arg_1, arg_1))))));
    global0 = array<vec4<f32>, 13>();
    return var_1.a.x;
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: i32) -> Struct_1 {
    var var_0 = u_input.b;
    let var_1 = arg_1.c;
    let var_2 = var_1.b;
    var var_3 = arg_1;
    var var_4 = Struct_2(_wgslsmith_sub_vec2_u32(select(~var_0.wz, var_3.a & var_0.yz, vec2<bool>(true, true)) >> (min(func_1(global0[_wgslsmith_index_u32(var_3.a.x, 13u)], var_3.c, Struct_1(0i, var_3.c.c.x, vec3<f32>(var_1.c.x, var_2, -1000f))), vec2<u32>(33314u, 4294967295u) ^ vec2<u32>(40680u, var_0.x)) % vec2<u32>(32u)), vec2<u32>(abs(11122u), 41489u)), u_input.c.zz, Struct_1(~_wgslsmith_clamp_i32(2147483647i, arg_1.b.x, -2147483647i) & -(~u_input.e.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.c.b)) - -1807f), true | any(vec3<bool>(false, true, false)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_3.c.c), arg_1.c.c, vec3<bool>(false, false, false))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_3.c.c.x, 521f, arg_1.c.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, arg_1.c.b, var_2) + var_3.c.c))))));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-305f - -1231f), 415f)))))));
    var var_0 = func_4(max(u_input.b.x, 1u), Struct_2(vec2<u32>(func_2(true, _wgslsmith_f_op_f32(-577f + 129f), func_1(vec4<f32>(1651f, -423f, -739f, 1000f), Struct_1(-2147483647i, 236f, vec3<f32>(428f, -168f, -1416f)), Struct_1(1i, 267f, vec3<f32>(-724f, 1093f, 573f))), Struct_1(u_input.e.x, 1460f, vec3<f32>(-556f, -1000f, -2573f))), u_input.b.x), ~max(vec2<i32>(27425i, u_input.c.x) << (u_input.b.yx % vec2<u32>(32u)), u_input.c.xy), Struct_1(-u_input.e.x, 341f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1213f, 117f, -418f)) + vec3<f32>(-518f, -248f, 916f)))), ~_wgslsmith_add_i32(~0i, _wgslsmith_dot_vec2_i32(u_input.c.xy | u_input.e.yx, u_input.e.zx)));
    let var_1 = func_4(_wgslsmith_mod_u32(52807u, 11692u), Struct_2(abs(vec2<u32>(_wgslsmith_clamp_u32(18274u, 4294967295u, u_input.b.x), u_input.b.x ^ u_input.b.x)), ~(select(vec2<i32>(u_input.d, var_0.a), vec2<i32>(u_input.d, 2147483647i), false) | u_input.c.xy), Struct_1(var_0.a, _wgslsmith_f_op_f32(1000f + 503f), vec3<f32>(1345f, _wgslsmith_f_op_f32(1160f + var_0.b), _wgslsmith_f_op_f32(-var_0.b)))), abs(~max(u_input.a, -29548i)));
    let var_2 = -_wgslsmith_mult_i32(_wgslsmith_mod_i32(-var_1.a, ~_wgslsmith_div_i32(-19007i, var_1.a)), _wgslsmith_sub_i32(select(~var_0.a, var_0.a, true), var_1.a));
    let var_3 = var_0.c.x;
    var var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer((_wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(var_0.a, -1i, var_1.a, u_input.c.x)), max(vec4<i32>(-9194i, -21348i, -2328i, var_2), vec4<i32>(10359i, var_4.a, var_2, -42894i))) << (reverseBits(~vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 69156u)) % vec4<u32>(32u))) >> (~vec4<u32>(_wgslsmith_sub_u32(0u, u_input.b.x), u_input.b.x, u_input.b.x << (u_input.b.x % 32u), firstLeadingBit(u_input.b.x)) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.b, -922f, var_4.c.x, var_0.b)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(432f, var_1.b, var_1.c.x, -868f)))), vec2<i32>(var_0.a, abs(-2147483647i)) << (vec2<u32>(24671u, u_input.b.x) % vec2<u32>(32u)), ~reverseBits(67222u));
}

