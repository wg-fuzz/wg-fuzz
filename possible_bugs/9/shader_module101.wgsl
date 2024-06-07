struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2(arg_0: Struct_1) -> f32 {
    let var_0 = 47847u;
    return _wgslsmith_f_op_f32(425f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -141f)))))));
}

fn func_3() -> vec2<u32> {
    let var_0 = u_input.b;
    var var_1 = u_input.a;
    var var_2 = vec3<i32>(-2147483647i, 0i, select(-37930i, u_input.a, false) >> (1u % 32u));
    var var_3 = Struct_1(false, true, var_0.xww, ~vec3<u32>(28607u, _wgslsmith_mod_u32(~0u, _wgslsmith_mod_u32(83340u, 5192u)), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(52110u, 68613u, 1094u, 1u), vec4<u32>(0u, 1u, 15882u, 0u)), vec4<u32>(0u, 1u, 1u, 1u))));
    var_3 = Struct_1(var_3.b, var_3.b, u_input.b.wxw, _wgslsmith_add_vec3_u32(~_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(var_3.d, var_3.d), var_3.d), var_3.d));
    return ~(~vec2<u32>(var_3.d.x, var_3.d.x)) << (_wgslsmith_mult_vec2_u32(var_3.d.zy, ~firstLeadingBit(vec2<u32>(var_3.d.x, var_3.d.x))) % vec2<u32>(32u));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: vec2<u32>, arg_3: Struct_2) -> Struct_2 {
    var var_0 = ~select(_wgslsmith_sub_vec2_i32(arg_3.a.c.yx, vec2<i32>(u_input.a, -10354i)), min(u_input.b.yz, _wgslsmith_div_vec2_i32(vec2<i32>(arg_3.b.x, arg_3.b.x), vec2<i32>(3658i, arg_3.b.x))) >> (arg_2 % vec2<u32>(32u)), (_wgslsmith_f_op_f32(floor(-701f)) >= _wgslsmith_f_op_f32(-arg_1.x)) && !arg_3.e.x);
    var_0 = _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(~(-arg_3.b.x), 1i), _wgslsmith_mod_vec2_i32(u_input.b.yy, arg_3.a.c.xy)), ~u_input.b.yy);
    return arg_3;
}

fn func_1(arg_0: i32) -> i32 {
    let var_0 = func_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(635f, _wgslsmith_div_f32(913f, -404f))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2791f * 712f), _wgslsmith_f_op_f32(-278f - 758f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -658f) - _wgslsmith_f_op_f32(func_2(Struct_1(true, false, vec3<i32>(arg_0, arg_0, 1i), vec3<u32>(4294967295u, 2227u, 16627u)))))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-255f - 1118f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(816f)))), -1000f, 623f), _wgslsmith_sub_vec2_u32(~max(func_3(), vec2<u32>(50865u, 27012u)), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u))), Struct_2(Struct_1(true, true || select(true, false, true), select(abs(vec3<i32>(-11726i, arg_0, arg_0)), u_input.b.yxw ^ u_input.b.yyy, select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false)), vec3<u32>(1u, 1u, 1u)), (vec4<i32>(-1i) * -vec4<i32>(68998i, arg_0, 1i, u_input.a)) ^ -(~u_input.b), ~(~vec2<u32>(28177u, 78103u)), ~vec4<u32>(1u, 1u, 1u, 1u), vec4<bool>(true && any(vec3<bool>(false, false, false)), true, select(true, any(vec3<bool>(true, false, true)), true), !all(vec3<bool>(false, false, true)))));
    let var_1 = func_4(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -122f) + _wgslsmith_f_op_f32(f32(-1f) * -878f)))), -1150f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-559f, -497f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, -172f)) * _wgslsmith_f_op_f32(516f + 1603f)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(147f, -187f, 911f), vec3<f32>(1131f, 671f, 339f))), vec3<f32>(_wgslsmith_f_op_f32(1000f * 1662f), _wgslsmith_f_op_f32(step(840f, 933f)), _wgslsmith_f_op_f32(982f - -1151f)))))), var_0.d.zx, Struct_2(var_0.a, _wgslsmith_sub_vec4_i32(firstLeadingBit(u_input.b), vec4<i32>(-var_0.b.x, arg_0, ~u_input.b.x, _wgslsmith_add_i32(var_0.b.x, 2147483647i))), vec2<u32>(~35107u, ~var_0.c.x) | (var_0.c << (var_0.c % vec2<u32>(32u))), ~vec4<u32>(var_0.a.d.x >> (0u % 32u), ~49130u, ~var_0.d.x, _wgslsmith_mult_u32(1u, var_0.d.x)), func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(668f, -1335f, 478f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-227f, -829f, 456f) + vec3<f32>(-1500f, 712f, -232f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1717f, -119f, 682f)), vec2<u32>(38788u, var_0.c.x) >> (~vec2<u32>(1u, var_0.a.d.x) % vec2<u32>(32u)), func_4(vec3<f32>(-1843f, -874f, -258f), vec3<f32>(-1568f, 1449f, -1000f), ~vec2<u32>(var_0.d.x, var_0.c.x), Struct_2(var_0.a, vec4<i32>(var_0.b.x, 68208i, u_input.b.x, 0i), vec2<u32>(var_0.d.x, 12089u), vec4<u32>(var_0.d.x, var_0.d.x, var_0.a.d.x, var_0.c.x), var_0.e))).e));
    var var_2 = var_0.a;
    var var_3 = 1f;
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-783f, -190f)), -198f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-603f, 1157f) - vec2<f32>(-1425f, 337f)), vec2<f32>(1859f, 254f))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(678f, 1000f), vec2<f32>(-900f, 3029f), var_0.e.xx))))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2461f, -971f))) + vec2<f32>(_wgslsmith_f_op_f32(-471f * 1771f), 818f)));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(-(~func_1(-u_input.b.x)), u_input.a);
    let var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -363f), _wgslsmith_f_op_f32(1115f * -537f), _wgslsmith_f_op_f32(f32(-1f) * -241f), _wgslsmith_f_op_f32(f32(-1f) * -729f))), vec4<f32>(_wgslsmith_f_op_f32(-124f - 579f), -1789f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-448f * 1275f), _wgslsmith_f_op_f32(1368f + -1973f))), _wgslsmith_f_op_f32(f32(-1f) * -263f))))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(41613u, 0u)), vec2<u32>(1u, 1u)), min(vec2<u32>(59240u, 25789u), select(vec2<u32>(43503u, 63627u), vec2<u32>(4294967295u, 89920u), true))));
}

