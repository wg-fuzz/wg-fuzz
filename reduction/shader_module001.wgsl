struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    let var_0 = any(vec4<bool>(arg_2.a, !any(vec2<bool>(arg_1.a, arg_1.a)) == true, false, false));
    let var_1 = -reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(~(-11989i), i32(-1i) * -2147483647i, 810i, arg_0.x), select(vec4<i32>(arg_0.x, -20498i, -10187i, 22652i), arg_0, vec4<bool>(true, true, true, false)) << (~vec4<u32>(u_input.b, 1u, 65602u, 22643u) % vec4<u32>(32u))));
    var var_2 = Struct_2(arg_2, vec4<u32>(_wgslsmith_mult_u32(u_input.b >> (12617u % 32u), firstLeadingBit(countOneBits(0u))), max(44918u, u_input.b), _wgslsmith_div_u32(64154u >> (~u_input.c.x % 32u), ~_wgslsmith_div_u32(2219u, 4294967295u)), u_input.c.x), !(!var_0));
    var var_3 = u_input.c.zx;
    var_2 = Struct_2(Struct_1(false), _wgslsmith_sub_vec4_u32(var_2.b, _wgslsmith_div_vec4_u32(select(_wgslsmith_mult_vec4_u32(var_2.b, var_2.b), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.b.x, 0u, var_2.b.x, 4294967295u), var_2.b, vec4<u32>(u_input.c.x, 1u, u_input.b, 0u)), !arg_1.a), ~vec4<u32>(var_3.x, 1u, var_3.x, 0u) ^ var_2.b)), false);
    return 2849i;
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: u32) -> f32 {
    let var_0 = -1651f;
    var var_1 = _wgslsmith_sub_i32(~u_input.a, 1i) >> (_wgslsmith_add_u32(countOneBits(~arg_1.b.x), ~(_wgslsmith_div_u32(arg_3, arg_3) | ~1u)) % 32u);
    var var_2 = arg_0;
    var_1 = _wgslsmith_clamp_i32(~firstLeadingBit(73130i), ~u_input.a, _wgslsmith_add_i32(firstTrailingBit(_wgslsmith_mod_i32(u_input.a, 2147483647i)), _wgslsmith_mod_i32(func_3(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(-1i, 1i, 1i, -2147483647i)), Struct_1(false), Struct_1(arg_2.x)), -select(-1i, u_input.a, arg_2.x))));
    var var_3 = u_input.a;
    return _wgslsmith_f_op_f32(max(var_0, _wgslsmith_f_op_f32(611f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0, _wgslsmith_div_f32(var_0, 341f)))))));
}

fn func_1() -> Struct_1 {
    var var_0 = 828f == _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2(false, Struct_2(Struct_1(false), vec4<u32>(u_input.c.x, 1u, u_input.c.x, u_input.b), true), vec2<bool>(false, false), 4294967295u)))))));
    let var_1 = Struct_2(Struct_1(~u_input.a >= -2147483647i), ~(~(select(vec4<u32>(1u, 0u, u_input.b, u_input.c.x), vec4<u32>(u_input.b, 4943u, u_input.b, 4294967295u), false) >> (firstLeadingBit(vec4<u32>(33259u, u_input.b, 4294967295u, u_input.b)) % vec4<u32>(32u)))), !((~u_input.b ^ _wgslsmith_dot_vec2_u32(u_input.c.zy, u_input.c.yz)) == _wgslsmith_mod_u32(28477u ^ u_input.c.x, u_input.b | u_input.c.x)));
    var var_2 = func_3(-select(select(-vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), ~vec4<i32>(u_input.a, 1i, u_input.a, u_input.a), vec4<bool>(var_1.c, false, var_1.a.a, false)), vec4<i32>(-2147483647i, 16372i, u_input.a, 28063i) ^ vec4<i32>(u_input.a, u_input.a, u_input.a, 24358i), true), var_1.a, var_1.a);
    let var_3 = var_1.a;
    var var_4 = var_1.b.x;
    return var_3;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>) -> Struct_2 {
    let var_0 = 1392f;
    var var_1 = _wgslsmith_mod_vec3_i32(firstTrailingBit(~abs(~vec3<i32>(u_input.a, u_input.a, -10846i))), vec3<i32>(u_input.a, _wgslsmith_div_i32(40346i, select(u_input.a, u_input.a, arg_0.a) ^ u_input.a), u_input.a));
    let var_2 = arg_0;
    var var_3 = 2147483647i;
    let var_4 = false;
    return Struct_2(arg_0, select(vec4<u32>(u_input.c.x, 1u, ~u_input.c.x, ~4294967295u), max(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 34213u, 4294967295u, u_input.c.x), vec4<u32>(83812u, 44207u, u_input.b, 168864u)), ~vec4<u32>(0u, 4294967295u, u_input.b, u_input.b)), false) ^ vec4<u32>(_wgslsmith_add_u32(u_input.b, 4949u), select(53599u, u_input.c.x, var_4), _wgslsmith_dot_vec3_u32(u_input.c, ~vec3<u32>(66576u, 58660u, 1u)), u_input.c.x), false);
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: u32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-arg_0.x);
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -914f);
    let var_1 = arg_0.x;
    var var_2 = select(!vec2<bool>(false, true | arg_1.c), vec2<bool>(!(_wgslsmith_f_op_f32(562f + 315f) < _wgslsmith_f_op_f32(step(var_1, var_1))), arg_1.a.a), arg_1.c);
    var_0 = _wgslsmith_f_op_f32(-arg_0.x);
    return Struct_2(Struct_1(!any(vec4<bool>(true, true, true, true))), countOneBits((arg_1.b & vec4<u32>(u_input.b, arg_2.x, arg_2.x, arg_2.x)) << (abs(vec4<u32>(1u, arg_2.x, arg_2.x, 54552u)) % vec4<u32>(32u))) | vec4<u32>(~(~u_input.b), _wgslsmith_clamp_u32(u_input.b, u_input.b >> (arg_3 % 32u), func_4(Struct_1(false), vec4<f32>(1000f, -798f, arg_0.x, 850f)).b.x), u_input.c.x, arg_1.b.x), !(all(select(vec4<bool>(false, true, false, arg_1.a.a), vec4<bool>(var_2.x, true, var_2.x, arg_1.a.a), vec4<bool>(var_2.x, arg_1.a.a, false, arg_1.a.a))) || true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(943f, -498f, 2714f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(220f, 254f, -540f), vec3<f32>(-798f, 502f, 334f), true)))))), func_4(func_1(), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(691f, 1700f, -1204f, 1301f) - vec4<f32>(-941f, 736f, 1205f, 552f))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-621f, 1000f, 1000f, 1192f)))))), u_input.c.yy, 0u | (u_input.b >> (~(~u_input.b) % 32u)));
    let var_1 = _wgslsmith_sub_i32(u_input.a, -(i32(-1i) * -1i));
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f));
    var_0 = func_5(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1901f, var_2.x, var_2.x)))))))), Struct_2(var_0.a, vec4<u32>(4294967295u, ~_wgslsmith_mod_u32(64469u, u_input.b), 46398u, 21705u), ((45103i | var_1) == ~1i) & true), min(firstTrailingBit(var_0.b.yx), ~u_input.c.yy), ~firstTrailingBit(~_wgslsmith_sub_u32(118688u, 0u)));
    var_0 = func_5(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(var_2.x)), -450f, _wgslsmith_f_op_f32(var_2.x - var_2.x)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1326f, var_2.x, -536f), vec3<f32>(var_2.x, var_2.x, -1392f)))))), func_4(func_1(), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_2.x - var_2.x), 400f, 1133f, _wgslsmith_f_op_f32(sign(var_2.x))))), firstLeadingBit(vec2<u32>(4294967295u, _wgslsmith_add_u32(var_0.b.x, var_0.b.x)) | countOneBits(~u_input.c.zz)), ~(~(~1u ^ var_0.b.x)));
    var_0 = func_4(var_0.a, vec4<f32>(-1009f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -634f), _wgslsmith_f_op_f32(exp2(var_2.x))), _wgslsmith_div_f32(1172f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(214f - 2860f))), 1382f));
    let var_3 = func_4(func_4(func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-764f, 671f, 1483f) - vec3<f32>(var_2.x, -452f, var_2.x))), Struct_2(Struct_1(true), func_5(vec3<f32>(var_2.x, -290f, var_2.x), Struct_2(var_0.a, var_0.b, var_0.a.a), vec2<u32>(11444u, 1446u), var_0.b.x).b, true), ~abs(vec2<u32>(55128u, var_0.b.x)), 48060u).a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, 356f, var_2.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-553f, var_2.x, var_2.x, 287f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-402f, var_2.x, var_2.x, -739f))))).a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(931f, var_2.x, -1062f, var_2.x)))))));
    var var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(383f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1031f, var_2.x), _wgslsmith_f_op_f32(round(var_2.x)))), _wgslsmith_f_op_f32(func_2(var_3.c, Struct_2(var_0.a, vec4<u32>(u_input.b, 35489u, u_input.b, var_3.b.x), true), select(vec2<bool>(var_0.c, false), vec2<bool>(var_3.c, false), false), u_input.c.x))))));
    var_4 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1462f, var_4.x))) * _wgslsmith_f_op_vec2_f32(-var_2)))), var_2, var_0.a.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1629f))), ~(~u_input.a));
}

