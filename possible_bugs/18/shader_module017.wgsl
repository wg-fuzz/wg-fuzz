struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: i32,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<i32>,
    d: bool,
    e: bool,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> f32 {
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1039f)))), -572f));
    let var_0 = Struct_3(Struct_2(vec3<bool>(select(true, false, all(vec4<bool>(true, true, true, true))), all(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true)), any(vec2<bool>(false, false)) & true), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1938f - 833f)), abs(firstTrailingBit(vec3<u32>(83834u, 7873u, u_input.a))), u_input.c.x, -1187f, _wgslsmith_f_op_f32(round(-759f)) <= -2562f)), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(143f, 120f)))), _wgslsmith_mult_vec3_u32(~reverseBits(vec3<u32>(u_input.a, u_input.a, 0u)), ~(vec3<u32>(u_input.a, 4294967295u, u_input.d) << (vec3<u32>(22637u, 81088u, u_input.d) % vec3<u32>(32u)))), -27904i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(423f, -937f)) * _wgslsmith_f_op_f32(abs(247f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1828f) * _wgslsmith_f_op_f32(floor(281f)))), any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), select(true, true, true)))), u_input.c.zw, ~_wgslsmith_dot_vec3_u32(vec3<u32>(76059u, 15958u, u_input.d) ^ vec3<u32>(u_input.d, u_input.a, u_input.d), reverseBits(vec3<u32>(u_input.d, 29018u, u_input.a))) <= 1u, select(any(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false))), u_input.d == u_input.a, _wgslsmith_mult_i32(-1i, max(arg_0, arg_0)) >= ~(~arg_0)));
    let var_1 = vec2<bool>(var_0.d, var_0.a.a.x);
    let var_2 = var_0.a.b;
    let var_3 = var_1;
    return var_0.a.b.a;
}

fn func_2() -> f32 {
    var var_0 = u_input.d;
    var_0 = u_input.a;
    var_0 = _wgslsmith_add_u32(~u_input.d, ~u_input.a);
    var var_1 = true;
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(~u_input.c.x)))) - 837f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(1i)), -2055f))));
    return _wgslsmith_f_op_f32(-379f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-442f + 174f))) - 2252f));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: vec2<u32>, arg_3: i32) -> vec2<f32> {
    global0 = -692f;
    let var_0 = arg_1.x;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(738f * -1669f) + 742f), arg_0.yyw << (countOneBits(arg_0.xwy) % vec3<u32>(32u)), ~u_input.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2080f + -332f))), all(select(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false)), select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, true, true), true), true)));
    global0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(func_2()))));
    var var_2 = !(!vec2<bool>(all(vec3<bool>(true, var_1.e, var_1.e)) == true, true));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1260f, 2437f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.d, var_1.a) - vec2<f32>(-1603f, 403f)) - vec2<f32>(var_1.d, var_1.d))), vec2<bool>(false, any(!vec2<bool>(false, var_2.x))))));
}

fn func_4(arg_0: vec2<f32>) -> f32 {
    var var_0 = Struct_4(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(u_input.c, select(u_input.c, vec4<i32>(-1i, u_input.c.x, u_input.c.x, u_input.b.x), false)), ~u_input.c.x) << (~_wgslsmith_clamp_u32(u_input.d, 0u, u_input.d) % 32u), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(841f + _wgslsmith_f_op_f32(-540f * 1038f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(1000f + arg_0.x)))), _wgslsmith_div_vec3_u32(vec3<u32>(0u, 4294967295u, u_input.d), ~vec3<u32>(u_input.a, 21627u, u_input.a)) ^ ~firstTrailingBit(vec3<u32>(u_input.d, 0u, 35091u)), _wgslsmith_dot_vec3_i32(~(vec3<i32>(u_input.c.x, -4509i, 0i) << (vec3<u32>(84254u, 1u, 18455u) % vec3<u32>(32u))), u_input.b), _wgslsmith_f_op_f32(min(-1294f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1524f * -1296f))))), false), firstLeadingBit(u_input.c.x) == -49093i, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, ~6079u, min(11834u, u_input.d)), vec3<u32>(_wgslsmith_add_u32(6790u, 1u), _wgslsmith_mult_u32(u_input.d, 43091u), u_input.a)), i32(-1i) * -1i, _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_div_f32(arg_0.x, -879f))), false));
    var var_1 = ~(select(~reverseBits(vec2<u32>(var_0.b.b.x, 4294967295u)), var_0.d.b.zx, vec2<bool>(var_0.d.e, true)) ^ firstTrailingBit(var_0.d.b.xy));
    var var_2 = Struct_4(var_0.b.c, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2245f, _wgslsmith_f_op_f32(trunc(629f))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.d.d * -702f)))), ~var_0.d.b, -_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(2147483647i, -37505i, var_0.d.c, var_0.b.c)) | u_input.c.x, -429f, all(vec2<bool>(true, true))), true, var_0.b);
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(round(-1250f)), arg_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))))), 1428f);
    var_3 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 1000f, 754f, 3046f))));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1112f * -1000f) * _wgslsmith_f_op_f32(step(-1000f, arg_0.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1((vec4<u32>(1u, u_input.d, 10921u, 4294967295u) ^ vec4<u32>(u_input.a, 76761u, 4294967295u, u_input.a)) >> (reverseBits(vec4<u32>(u_input.d, u_input.d, 4294967295u, u_input.d)) % vec4<u32>(32u)), -u_input.b.xz, vec2<u32>(firstLeadingBit(0u), ~u_input.d), 1i)))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -168f))))) * -1823f);
    var var_0 = countOneBits(firstTrailingBit(firstTrailingBit(_wgslsmith_mult_vec2_i32(u_input.c.xx, u_input.b.xy))) ^ -firstTrailingBit(vec2<i32>(1i, 1i)));
    var var_1 = vec3<bool>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(vec2<f32>(-1717f, 541f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(vec2<f32>(1000f, -1561f))) + _wgslsmith_f_op_f32(-353f + 1568f)))) >= _wgslsmith_f_op_f32(min(-1266f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-422f, 1000f) - _wgslsmith_f_op_f32(func_4(vec2<f32>(-1292f, -839f)))))), true, true);
    global0 = _wgslsmith_f_op_f32(func_2());
    let var_2 = select(!select(select(select(vec4<bool>(true, var_1.x, false, true), vec4<bool>(var_1.x, true, var_1.x, true), var_1.x), select(vec4<bool>(var_1.x, var_1.x, true, false), vec4<bool>(true, var_1.x, var_1.x, false), false), any(vec3<bool>(var_1.x, true, true))), vec4<bool>(any(vec2<bool>(false, true)), var_1.x, true, var_1.x), select(select(vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec4<bool>(false, true, var_1.x, false), vec4<bool>(true, true, true, var_1.x)), vec4<bool>(var_1.x, false, false, var_1.x), select(vec4<bool>(false, true, var_1.x, true), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), var_1.x))), !vec4<bool>(all(vec4<bool>(var_1.x, var_1.x, true, false)), true, ~u_input.d != u_input.a, var_1.x), select(!(!vec4<bool>(var_1.x, false, false, var_1.x)), vec4<bool>(true, false, true, all(!vec3<bool>(var_1.x, var_1.x, var_1.x))), select(vec4<bool>(true, false, true, true), select(select(vec4<bool>(true, var_1.x, false, var_1.x), vec4<bool>(false, var_1.x, true, false), var_1.x), select(vec4<bool>(false, var_1.x, false, var_1.x), vec4<bool>(false, true, var_1.x, true), var_1.x), !vec4<bool>(true, var_1.x, false, var_1.x)), var_1.x)));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-815f * -558f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-1251f)), _wgslsmith_f_op_f32(f32(-1f) * -336f))) + _wgslsmith_f_op_f32(min(-1635f, -243f)))));
    global0 = _wgslsmith_f_op_f32(func_2());
    let x = u_input.a;
    s_output = StorageBuffer(-(~u_input.b.xy), vec2<f32>(_wgslsmith_f_op_f32(747f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(var_0.x)) - 1565f)), _wgslsmith_f_op_f32(179f + _wgslsmith_f_op_f32(sign(1086f)))));
}

