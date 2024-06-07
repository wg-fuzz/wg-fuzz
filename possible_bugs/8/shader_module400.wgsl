struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec4<bool> {
    var var_0 = Struct_3(Struct_1(all(vec4<bool>(true, true, true, true)), true, vec4<u32>(u_input.b.x, u_input.b.x, 1u, ~u_input.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-198f, _wgslsmith_f_op_f32(748f - -702f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -824f) - _wgslsmith_f_op_f32(-420f * 185f))), Struct_1(true, true, u_input.b), countOneBits(~(vec3<u32>(13576u, 1u, u_input.b.x) << (u_input.b.xxx % vec3<u32>(32u)))), Struct_1(true, _wgslsmith_dot_vec2_u32(~u_input.b.yz, select(u_input.b.zw, u_input.b.zw, false)) >= ~_wgslsmith_clamp_u32(4294967295u, u_input.b.x, 1u), ~(~(vec4<u32>(u_input.a, 0u, u_input.a, 1973u) | vec4<u32>(0u, 45760u, 23342u, u_input.b.x)))));
    var var_1 = _wgslsmith_sub_i32(1i, abs(21312i));
    var_1 = 3994i;
    let var_2 = ~17668u;
    var var_3 = !all(vec2<bool>(select(var_0.a.a, all(vec2<bool>(true, var_0.e.a)), true), var_0.a.b));
    return vec4<bool>(var_0.a.b, all(select(!(!vec3<bool>(var_0.c.a, true, var_0.c.a)), !(!vec3<bool>(false, var_0.c.a, var_0.c.a)), select(true, true, true))), true, var_0.a.a);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> u32 {
    let var_0 = vec3<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(-2147483647i, -9577i), _wgslsmith_sub_i32(-1i, 2147483647i)), vec2<i32>(-1i, -888i)), 2147483647i, _wgslsmith_mult_i32(1i, -43096i));
    var var_1 = arg_1;
    var var_2 = select(!vec4<bool>(false, all(vec3<bool>(true, arg_0.a.b, false)), var_1.a.a, false), select(!vec4<bool>(true, arg_0.a.b, arg_2.a == false, true), select(vec4<bool>(true, arg_2.c.x > arg_1.a.c.x, true, false), !select(vec4<bool>(true, var_1.a.b, arg_1.a.a, true), vec4<bool>(false, false, false, true), vec4<bool>(arg_2.a, arg_1.a.a, false, true)), !func_3()), vec4<bool>(!all(vec4<bool>(true, var_1.a.a, true, true)), false, false, arg_0.a.b)), all(func_3().xzy));
    let var_3 = vec2<bool>(!arg_1.a.a, var_0.x > -1i);
    var var_4 = !var_2.xxz;
    return u_input.b.x;
}

fn func_1(arg_0: f32, arg_1: vec3<f32>, arg_2: vec2<f32>) -> Struct_1 {
    var var_0 = vec2<u32>(func_2(Struct_2(Struct_1(true, all(vec4<bool>(true, true, true, false)), ~vec4<u32>(0u, u_input.a, u_input.a, u_input.b.x))), Struct_2(Struct_1(true, true, vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 4294967295u))), Struct_1(true, true, ~vec4<u32>(u_input.b.x, u_input.a, 22966u, u_input.b.x))), u_input.a);
    let var_1 = Struct_2(Struct_1((_wgslsmith_f_op_f32(step(arg_0, 2115f)) != 175f) || true, any(select(vec2<bool>(true, false), func_3().ww, true)), vec4<u32>(10297u, _wgslsmith_add_u32(7956u, u_input.b.x), ~0u, ~4294967295u >> (firstLeadingBit(18562u) % 32u))));
    let var_2 = Struct_3(Struct_1(true, true, ~(~u_input.b)), 1000f, Struct_1(!all(vec3<bool>(var_1.a.b, var_1.a.b, var_1.a.a)) & var_1.a.a, !all(select(vec3<bool>(true, var_1.a.a, false), vec3<bool>(true, false, true), vec3<bool>(true, var_1.a.a, var_1.a.b))), abs(vec4<u32>(34677u, 0u, 1u, ~var_0.x))), min(_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.b.wxw, vec3<u32>(var_0.x, var_0.x, 0u)), max(u_input.b.zxw, vec3<u32>(var_1.a.c.x, u_input.b.x, var_1.a.c.x))), vec3<u32>(48928u | var_0.x, var_1.a.c.x & var_1.a.c.x, ~u_input.a)) << (~var_1.a.c.wwy % vec3<u32>(32u)), Struct_1(all(select(select(vec2<bool>(var_1.a.b, var_1.a.b), vec2<bool>(var_1.a.a, true), var_1.a.b), vec2<bool>(var_1.a.b, var_1.a.b), var_1.a.a)), any(vec2<bool>(var_1.a.b, !var_1.a.a)), ~(~u_input.b ^ ~vec4<u32>(u_input.b.x, 38350u, var_0.x, 1u))));
    let var_3 = var_1.a.c & (countOneBits(vec4<u32>(~var_1.a.c.x, _wgslsmith_mult_u32(var_1.a.c.x, var_1.a.c.x), 0u, ~1u)) >> (vec4<u32>(68108u, u_input.a, ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, u_input.a), vec2<u32>(var_1.a.c.x, u_input.b.x)), 0u) % vec4<u32>(32u)));
    return Struct_1(any(vec2<bool>(true, false && (var_2.e.b | var_1.a.b))), true, vec4<u32>(4294967295u, 56284u, countOneBits(firstTrailingBit(select(var_2.c.c.x, 1u, false))), ~1u));
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: bool, arg_3: vec4<bool>) -> Struct_1 {
    let var_0 = 45439u | countOneBits((0u >> (~u_input.b.x % 32u)) << (_wgslsmith_add_u32(_wgslsmith_sub_u32(28737u, 7017u), abs(u_input.a)) % 32u));
    let var_1 = any(arg_3);
    let var_2 = -46200i;
    var var_3 = arg_1.c;
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(168f, arg_1.b)), 1166f, _wgslsmith_f_op_f32(-1308f + arg_1.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-654f, 405f, 1623f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b, 1000f, 323f)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b, arg_1.b, -1085f) - _wgslsmith_div_vec3_f32(vec3<f32>(arg_1.b, arg_1.b, arg_1.b), vec3<f32>(arg_1.b, -1038f, arg_1.b))))));
    return func_1(-930f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(arg_1.b, -1461f), 462f, _wgslsmith_f_op_f32(exp2(var_4.x))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.x, 324f, -2167f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b, -407f, var_4.x))))), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(arg_1.b)))), arg_1.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1529f, -1048f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-613f, -378f) - _wgslsmith_div_vec2_f32(vec2<f32>(-946f, -832f), vec2<f32>(108f, -705f)))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(573f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1111f)))));
    let var_1 = func_4(false, Struct_3(Struct_1(true, true, u_input.b), 2733f, func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(479f, -1000f, var_0.x)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_0)), _wgslsmith_f_op_vec2_f32(-var_0))), u_input.b.wyw, func_1(-1029f, _wgslsmith_f_op_vec3_f32(vec3<f32>(-743f, -426f, var_0.x) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 1778f, 2633f) * vec3<f32>(-1397f, var_0.x, -577f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0)))), true & (-1000f == _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(531f, var_0.x))))), select(vec4<bool>(true, false, true, any(vec2<bool>(false, false))), vec4<bool>(true, true, true, true), !select(true, true, true)));
    let var_2 = Struct_2(var_1);
    let var_3 = func_4(false, Struct_3(Struct_1(false, true || select(false, var_2.a.a, false), var_2.a.c), 1242f, Struct_1(var_1.b, var_2.a.b, ~(~var_2.a.c)), abs(_wgslsmith_clamp_vec3_u32(u_input.b.wzw, select(vec3<u32>(56077u, var_2.a.c.x, 0u), var_2.a.c.zwz, vec3<bool>(true, true, var_2.a.a)), vec3<u32>(0u, 32303u, 1u))), func_1(var_0.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2126f, 188f, -1223f) - vec3<f32>(414f, -229f, -546f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 344f, var_0.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 193f)) + _wgslsmith_f_op_vec2_f32(var_0 + var_0)))), _wgslsmith_mod_u32(u_input.a, u_input.a) != var_1.c.x, vec4<bool>(var_2.a.a, func_4(11548i >= _wgslsmith_dot_vec3_i32(vec3<i32>(-35902i, 2147483647i, 18834i), vec3<i32>(-2147483647i, -2147483647i, 2147483647i)), Struct_3(var_2.a, _wgslsmith_f_op_f32(1474f - var_0.x), Struct_1(var_2.a.b, true, vec4<u32>(59205u, 61634u, var_2.a.c.x, var_1.c.x)), var_1.c.wzy, func_1(451f, vec3<f32>(var_0.x, var_0.x, 749f), var_0)), false, !(!vec4<bool>(var_1.b, true, var_1.b, var_1.a))).a, var_2.a.a, all(vec3<bool>(var_0.x > -623f, true, !var_1.b))));
    let var_4 = _wgslsmith_mod_vec4_i32(~vec4<i32>(abs(-2147483647i), _wgslsmith_clamp_i32(45511i, 1i, 28916i) | 1i, ~31187i, ~(~(-1i))), ~vec4<i32>(~0i, countOneBits(1i), 0i, -38997i));
    var var_5 = _wgslsmith_clamp_i32(select(~(_wgslsmith_dot_vec4_i32(vec4<i32>(-12738i, -1i, var_4.x, -1i), vec4<i32>(-19479i, var_4.x, -25007i, var_4.x)) | ~var_4.x), var_4.x, var_2.a.a), 0i ^ var_4.x, 30245i);
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_dot_vec2_i32(var_4.wy, _wgslsmith_mod_vec2_i32(~(vec2<i32>(var_4.x, var_4.x) << (var_1.c.wy % vec2<u32>(32u))), var_4.wy)), var_3.c.x);
}

