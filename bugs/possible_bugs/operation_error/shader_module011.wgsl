struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec2<i32>) -> bool {
    var var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.b.x))), _wgslsmith_div_f32(-1026f, _wgslsmith_f_op_f32(step(234f, 1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.b.x)) - _wgslsmith_f_op_f32(select(-925f, _wgslsmith_f_op_f32(floor(arg_0.b.x)), select(arg_1.x, false, true))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.b.x)) - arg_0.b.x), 965f, -1431f)));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(806f, arg_0.b.x, arg_0.b.x) * vec3<f32>(arg_0.b.x, var_0.x, arg_0.b.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.x, arg_0.b.x, arg_0.b.x) + vec3<f32>(-1534f, -773f, var_0.x))))))) - vec3<f32>(arg_0.b.x, var_0.x, 321f));
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -508f), -1000f, var_0.x));
    var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(var_1))));
    let var_2 = true;
    return -1000f <= var_1.x;
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_3) -> Struct_1 {
    var var_0 = arg_1;
    var var_1 = _wgslsmith_mult_i32(var_0.a, ~(-2147483647i << (~(u_input.b.x & 65786u) % 32u)));
    var_1 = arg_1.a;
    var var_2 = vec3<u32>(1u, u_input.b.x, (101267u & u_input.b.x) >> (~(~(u_input.b.x & 10724u)) % 32u));
    var_0 = arg_1;
    return Struct_1(min(~(-(~vec3<i32>(u_input.a, arg_1.a, var_0.a))), select(abs(-vec3<i32>(1i, arg_1.a, arg_1.a)), ~firstTrailingBit(vec3<i32>(-2147483647i, var_0.a, 0i)), vec3<bool>(1i >= var_0.a, func_3(Struct_1(vec3<i32>(u_input.a, -13782i, arg_1.a), vec2<f32>(arg_0.x, arg_0.x)), vec4<bool>(false, true, true, true), vec2<i32>(var_0.a, u_input.a)), all(vec2<bool>(true, true))))), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(arg_0.x)))), _wgslsmith_div_f32(arg_0.x, _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(768f * -1188f)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: vec2<f32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-435f, arg_3.x, arg_2.b.x, 1331f), vec4<f32>(arg_0.b.x, arg_3.x, arg_3.x, arg_0.b.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1348f, arg_3.x, -1000f, -233f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.x, arg_0.b.x, -820f, -347f) - vec4<f32>(-122f, arg_0.b.x, 202f, arg_3.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, -779f, arg_3.x, 295f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-760f, arg_3.x, -1012f, 783f) + vec4<f32>(arg_2.b.x, arg_0.b.x, 710f, arg_0.b.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-527f, arg_2.b.x, 1877f, arg_3.x) + vec4<f32>(448f, 215f, -836f, 625f))))));
    let var_1 = Struct_3(arg_2.a.x);
    let var_2 = countOneBits(u_input.b.x);
    let var_3 = vec3<u32>(var_2, abs(var_2), u_input.b.x);
    var var_4 = select(vec4<bool>(false, false, all(select(select(arg_1.zz, arg_1.zz, arg_1.yy), !vec2<bool>(false, arg_1.x), false && arg_1.x)), true), !vec4<bool>(!(!arg_1.x), false, func_3(func_2(vec2<f32>(-117f, arg_3.x), Struct_3(60532i)), select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, false, true, true), arg_1.x), arg_0.a.xz), arg_1.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(1050f)))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.b.x, _wgslsmith_f_op_f32(sign(arg_2.b.x))))));
    return var_1;
}

fn func_5(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: vec4<bool>, arg_3: Struct_2) -> Struct_1 {
    return func_2(arg_1.yz, func_4(arg_3.b, arg_2, func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_3.b.b * vec2<f32>(arg_1.x, -1125f)) + _wgslsmith_f_op_vec2_f32(select(arg_3.b.b, vec2<f32>(arg_3.b.b.x, arg_1.x), vec2<bool>(false, arg_2.x)))), func_4(func_2(vec2<f32>(-1864f, arg_3.b.b.x), arg_0), !vec4<bool>(arg_2.x, arg_2.x, false, true), arg_3.b, arg_1.zz)), arg_1.zw));
}

fn func_6(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: f32) -> Struct_2 {
    var var_0 = Struct_2(abs(max(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(27534i, 27275i, u_input.a), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_1.a.x, u_input.a, arg_1.a.x), arg_1.a)))), func_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(arg_1.b, arg_0.xz, true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.zz * arg_0.zz))), Struct_3(arg_1.a.x)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(514f * _wgslsmith_f_op_f32(-arg_0.x)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * var_0.b.b.x) * _wgslsmith_f_op_f32(floor(var_0.b.b.x))) + var_0.b.b.x), 1467f)));
    var var_2 = arg_0.zx;
    var_1 = -118f;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-108f * 954f))))), var_0.b.b.x));
    return Struct_2(_wgslsmith_sub_i32(-_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(u_input.a, 2147483647i, 2147483647i, var_0.a)), ~vec4<i32>(1i, -1i, 0i, arg_1.a.x)), -14756i), var_0.b);
}

fn func_1(arg_0: bool) -> Struct_3 {
    let var_0 = Struct_3(u_input.a);
    var var_1 = func_6(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1098f, -520f, _wgslsmith_f_op_f32(f32(-1f) * -1652f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-496f, -123f, 2071f), vec3<f32>(-492f, 276f, -1553f)) + vec3<f32>(324f, -823f, 1223f))), vec3<f32>(1f, 1f, 1f)), func_5(func_4(func_2(vec2<f32>(400f, 1551f), Struct_3(-1i)), select(select(vec4<bool>(arg_0, false, true, arg_0), vec4<bool>(arg_0, arg_0, true, arg_0), vec4<bool>(true, false, false, true)), vec4<bool>(arg_0, true, arg_0, true), select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(true, false, true, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0))), Struct_1(vec3<i32>(-48518i, 1i, -21179i) >> (u_input.b.ywx % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(785f, -864f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-692f, -1957f), _wgslsmith_f_op_vec2_f32(vec2<f32>(522f, 154f) * vec2<f32>(747f, -1210f)), false & arg_0))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(ceil(176f)), _wgslsmith_div_f32(251f, 982f), _wgslsmith_f_op_f32(f32(-1f) * -1155f), _wgslsmith_f_op_f32(133f * 426f)))), vec4<bool>(-1i > func_2(vec2<f32>(-731f, 666f), var_0).a.x, false, all(!vec3<bool>(arg_0, arg_0, arg_0)), -1169f >= _wgslsmith_f_op_f32(sign(339f))), Struct_2(~(~0i), func_2(vec2<f32>(1134f, 532f), var_0))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1364f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2435f + -109f) - 307f) - _wgslsmith_f_op_f32(f32(-1f) * -1316f))));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(var_1.b.b.x))))), var_1.b.b.x);
    let var_3 = reverseBits(u_input.a);
    let var_4 = Struct_2(var_3, func_5(var_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(865f, -226f, var_2.x, -429f)))))), select(select(vec4<bool>(arg_0, false, true, arg_0), vec4<bool>(arg_0, false, true, arg_0), select(vec4<bool>(true, arg_0, false, true), vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(false, arg_0, true, arg_0))), select(select(vec4<bool>(false, true, arg_0, false), vec4<bool>(false, false, true, arg_0), vec4<bool>(arg_0, true, false, true)), vec4<bool>(true, false, arg_0, true), vec4<bool>(true, arg_0, true, arg_0)), !vec4<bool>(arg_0, true, arg_0, arg_0)), Struct_2(firstTrailingBit(var_1.b.a.x >> (u_input.b.x % 32u)), func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.b.x, var_1.b.b.x)), Struct_3(var_1.b.a.x)))));
    return func_4(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_2.x)), func_4(var_1.b, !vec4<bool>(arg_0, arg_0, false, true), func_6(_wgslsmith_f_op_vec3_f32(vec3<f32>(1024f, var_2.x, var_2.x) + vec3<f32>(410f, 332f, var_2.x)), var_1.b, _wgslsmith_f_op_f32(max(-1621f, -336f))).b, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b.b.x, var_4.b.b.x) - var_2))), select(!(!select(vec4<bool>(arg_0, true, true, arg_0), vec4<bool>(arg_0, arg_0, false, false), vec4<bool>(true, arg_0, arg_0, arg_0))), !(!select(vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(false, true, arg_0, false), false)), !vec4<bool>(var_4.a != 0i, false, false || arg_0, select(arg_0, arg_0, arg_0))), func_2(var_1.b.b, Struct_3(0i)), _wgslsmith_f_op_vec2_f32(-var_2));
}

fn func_7(arg_0: Struct_3, arg_1: Struct_1) -> Struct_2 {
    var var_0 = arg_0;
    var var_1 = func_5(arg_0, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1959f, _wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.b.x, 912f)) - func_6(vec3<f32>(arg_1.b.x, arg_1.b.x, arg_1.b.x), Struct_1(arg_1.a, arg_1.b), arg_1.b.x).b.b.x), -1000f))), vec4<bool>(!all(vec2<bool>(true, false)), true & !select(false, false, false), true, !all(vec2<bool>(true, true))), func_6(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.b.x, arg_1.b.x, arg_1.b.x), vec3<f32>(-1164f, arg_1.b.x, arg_1.b.x))), vec3<f32>(arg_1.b.x, _wgslsmith_f_op_f32(-arg_1.b.x), -353f), vec3<bool>(true, true, true))), arg_1, _wgslsmith_f_op_f32(arg_1.b.x - _wgslsmith_f_op_f32(f32(-1f) * -517f))));
    var_1 = arg_1;
    var var_2 = _wgslsmith_clamp_vec2_i32(vec2<i32>(i32(-1i) * -arg_1.a.x, _wgslsmith_sub_i32(abs(~arg_1.a.x), var_1.a.x)), ~func_6(vec3<f32>(-431f, -388f, -1949f), Struct_1(-vec3<i32>(u_input.a, 0i, 860i), _wgslsmith_f_op_vec2_f32(exp2(arg_1.b))), _wgslsmith_f_op_f32(round(1000f))).b.a.zy, vec2<i32>(countOneBits(-arg_0.a), _wgslsmith_add_i32(func_4(arg_1, vec4<bool>(false, false, true, false), arg_1, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b.x, var_1.b.x))).a, var_1.a.x)));
    var_0 = func_1(true);
    return Struct_2(0i, Struct_1(func_6(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b.x, -1219f, arg_1.b.x) * vec3<f32>(500f, -896f, -762f)) - _wgslsmith_div_vec3_f32(vec3<f32>(1436f, arg_1.b.x, var_1.b.x), vec3<f32>(486f, 1003f, -638f))), func_6(vec3<f32>(-1492f, -1139f, -115f), arg_1, _wgslsmith_f_op_f32(-636f * -910f)).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.x * 483f))).b.a, arg_1.b));
}

fn func_8(arg_0: bool, arg_1: i32, arg_2: Struct_2, arg_3: f32) -> Struct_1 {
    var var_0 = arg_2;
    var var_1 = arg_2.b;
    var var_2 = Struct_2(-22965i, var_0.b);
    var_0 = arg_2;
    var_1 = func_7(Struct_3(-55159i), func_2(func_7(func_4(func_6(vec3<f32>(arg_2.b.b.x, var_1.b.x, 843f), arg_2.b, 1273f).b, !vec4<bool>(true, false, arg_0, arg_0), func_2(var_2.b.b, Struct_3(-2147483647i)), vec2<f32>(692f, -493f)), Struct_1(vec3<i32>(31215i, -23928i, var_0.a), vec2<f32>(var_0.b.b.x, var_2.b.b.x))).b.b, func_1(false))).b;
    return Struct_1(vec3<i32>(var_1.a.x, -var_0.b.a.x, var_0.a), vec2<f32>(550f, _wgslsmith_div_f32(arg_3, -562f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~29835i;
    var_0 = _wgslsmith_mult_i32(_wgslsmith_mod_i32(-(u_input.a << (~u_input.b.x % 32u)), -1i), 0i);
    let var_1 = func_8(true, -68050i, func_7(func_1(true), Struct_1(~vec3<i32>(u_input.a, 2147483647i, u_input.a) << (~u_input.b.yyw % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1020f, 1412f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1138f, -513f))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(884f + _wgslsmith_f_op_f32(-var_1.b.x))))), _wgslsmith_f_op_f32(trunc(-666f)));
    var var_3 = var_1.a.x;
    let var_4 = 308f;
    let var_5 = abs(u_input.b.zx) >> (vec2<u32>(firstTrailingBit(4294967295u), countOneBits(u_input.b.x)) % vec2<u32>(32u));
    var_0 = _wgslsmith_mult_i32(u_input.a, u_input.a);
    let var_6 = !select(select(vec2<bool>(true, true), vec2<bool>(func_3(var_1, vec4<bool>(false, true, true, true), var_1.a.zx), var_5.x <= var_5.x), true), !(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false))), vec2<bool>(true | (u_input.b.x != u_input.b.x), !select(true, true, false)));
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_mod_vec3_u32(u_input.b.wzy, ~vec3<u32>(4294967295u, u_input.b.x, var_5.x)), u_input.b.wzx) >> (~u_input.b.wxy % vec3<u32>(32u)));
}

