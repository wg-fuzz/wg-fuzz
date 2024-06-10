struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<f32>,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-1i, 84219i, 22856i);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec3<bool>) -> vec3<i32> {
    global0 = vec3<i32>(reverseBits(-28130i), -43770i, -(u_input.b.x | ~(~(-2147483647i))));
    global0 = -firstLeadingBit(min(vec3<i32>(-2345i, _wgslsmith_div_i32(0i, global0.x), -1i ^ global0.x), ~vec3<i32>(global0.x, global0.x, u_input.d)));
    let var_0 = ~(~1u >> (u_input.e.x % 32u));
    let var_1 = Struct_1(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.e.x, arg_0, _wgslsmith_mod_u32(u_input.e.x, firstTrailingBit(4294967295u))), abs(71141u)), 4294967295u, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1.c.x)) - 1f), 173f, 835f, _wgslsmith_f_op_f32(-arg_1.c.x)))));
    var var_2 = false;
    return abs(abs(-(~(-vec3<i32>(2147483647i, 39737i, global0.x)))));
}

fn func_4(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_1, arg_3: vec3<i32>) -> u32 {
    var var_0 = Struct_1(0u, u_input.e.x, _wgslsmith_f_op_vec4_f32(arg_2.c - _wgslsmith_f_op_vec4_f32(ceil(arg_2.c))));
    let var_1 = Struct_1(~var_0.a, arg_1, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(-868f)), arg_2.c.x, arg_2.c.x, _wgslsmith_f_op_f32(-1470f * _wgslsmith_f_op_f32(f32(-1f) * -1621f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, var_0.c.x, var_0.c.x, -461f)) + arg_2.c) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_2.c + vec4<f32>(-1274f, 1622f, arg_2.c.x, 1546f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1218f, -104f, 896f, -1000f))))));
    let var_2 = var_1.c.ywx;
    var var_3 = vec3<bool>(all(select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false)), vec4<bool>(true, false, false, true), true), vec4<bool>(true, true, true, true), false)), all(select(vec3<bool>(-793f >= var_0.c.x, true, all(vec2<bool>(true, true))), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), false))), true);
    let var_4 = _wgslsmith_clamp_vec2_u32(u_input.e.xw, ~u_input.c, select(max(~u_input.c, u_input.e.xx), u_input.e.zw, true));
    return _wgslsmith_mod_u32(~_wgslsmith_mod_u32(var_4.x, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 1u, arg_2.b, var_0.b), u_input.e), ~u_input.e)), select(0u, ~(~arg_2.a), var_3.x));
}

fn func_2(arg_0: Struct_1) -> vec3<i32> {
    var var_0 = Struct_1((arg_0.a << ((1u | ~u_input.e.x) % 32u)) << (abs(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, arg_0.b, 69899u, 1u), u_input.e, vec4<u32>(u_input.e.x, arg_0.a, 24978u, 19679u)), ~vec4<u32>(22585u, u_input.e.x, u_input.c.x, 4345u))) % 32u), 0u, arg_0.c);
    var var_1 = Struct_1(~func_4(vec3<i32>(_wgslsmith_mult_i32(35550i, -32960i), -20392i, ~u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b, u_input.c.x, arg_0.a), vec3<u32>(var_0.b, u_input.e.x, arg_0.a) ^ vec3<u32>(arg_0.b, var_0.a, 4294967295u)), arg_0, func_3(0u, Struct_1(0u, 1u, vec4<f32>(2064f, var_0.c.x, var_0.c.x, 1251f)), vec3<bool>(true, true, true))), select(0u, 57624u, any(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true)))), vec4<f32>(-437f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)), -1628f), _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -164f)))));
    let var_2 = ~vec3<i32>(~1i, u_input.d, u_input.b.x);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(var_1.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.x + _wgslsmith_f_op_f32(-var_1.c.x))), !(!select(false, true, false)))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(767f, 333f)) + var_0.c.x))));
    var_1 = arg_0;
    return ~vec3<i32>(global0.x, -2147483647i, -func_3(25858u, Struct_1(1u, var_1.a, arg_0.c), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true))).x);
}

fn func_1(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_1) -> Struct_1 {
    global0 = vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(-min(vec3<i32>(global0.x, u_input.d, 2147483647i), vec3<i32>(40507i, -2147483647i, u_input.b.x)), ~vec3<i32>(global0.x, global0.x, global0.x));
    global0 = -func_2(Struct_1(100986u, 20403u, vec4<f32>(_wgslsmith_f_op_f32(arg_2.c.x + arg_2.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1091f), 1473f, 534f)));
    let var_0 = arg_2;
    let var_1 = arg_2.c.zwz;
    global0 = countOneBits(_wgslsmith_mod_vec3_i32(~(vec3<i32>(-1i, 15385i, 39792i) << (vec3<u32>(u_input.c.x, arg_2.b, 4294967295u) % vec3<u32>(32u))) | firstTrailingBit(-vec3<i32>(global0.x, global0.x, 1i)), vec3<i32>(2147483647i, u_input.a, 2147483647i)));
    return Struct_1(u_input.c.x, countOneBits(~arg_2.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(var_0.c))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    global0 = -firstTrailingBit(select(vec3<i32>(-global0.x, 2147483647i, ~1i), func_3(0u ^ arg_2.b, Struct_1(25721u, u_input.e.x, vec4<f32>(340f, arg_1.c.x, 1000f, -1219f)), vec3<bool>(false, true, true)), vec3<bool>(true, true, true)));
    var var_0 = -33204i;
    global0 = min(func_3(max(26902u, 179u), Struct_1(arg_2.a, u_input.c.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.x, -315f, -421f, 701f)) + arg_2.c)), !select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), arg_0.c.x <= arg_2.c.x)), -(~vec3<i32>(i32(-1i) * -1i, 13822i, func_3(arg_1.a, Struct_1(arg_0.a, arg_2.a, vec4<f32>(arg_2.c.x, arg_0.c.x, -362f, arg_2.c.x)), vec3<bool>(true, false, true)).x)));
    var_0 = u_input.a;
    var_0 = _wgslsmith_mod_i32(_wgslsmith_add_i32(func_2(arg_2).x, abs(8426i)), global0.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(abs(-455f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<i32>(-(global0.x ^ _wgslsmith_add_i32(u_input.b.x & global0.x, ~global0.x)), max(u_input.d, u_input.d), global0.x);
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -315f) * _wgslsmith_f_op_f32(-1181f + _wgslsmith_f_op_f32(1000f + -1530f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(Struct_1(u_input.e.x, u_input.e.x, vec4<f32>(-845f, -230f, 201f, 595f)), func_1(u_input.e.x, vec3<bool>(true, true, true), Struct_1(1u, 1u, vec4<f32>(-623f, 1000f, 644f, 530f))), func_1(75657u, vec3<bool>(true, true, true), Struct_1(u_input.c.x, 94950u, vec4<f32>(549f, 838f, -307f, -421f))))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(623f, 1000f)))), _wgslsmith_f_op_vec2_f32(-func_1(u_input.e.x, vec3<bool>(false, true, false), Struct_1(22489u, 0u, vec4<f32>(1723f, -1000f, -455f, -416f))).c.xx)) - vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-1429f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-558f))))));
    let var_1 = all(vec3<bool>(u_input.d >= reverseBits(-40706i), false, (~u_input.e.x << (~u_input.e.x % 32u)) >= ~max(0u, 33731u)));
    let var_2 = var_0;
    global0 = ~abs(firstTrailingBit(-firstTrailingBit(vec3<i32>(0i, -42376i, -23672i))));
    let var_3 = all(!vec3<bool>(true & var_1, false, all(!vec2<bool>(false, var_1))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(_wgslsmith_mod_u32(u_input.e.x, u_input.e.x), _wgslsmith_add_u32(u_input.c.x, u_input.c.x), u_input.e.x) >> (min(~u_input.e.xwy, select(u_input.e.xxy, vec3<u32>(1u, u_input.c.x, 70906u), var_3) >> (vec3<u32>(u_input.c.x, 17119u, 1u) % vec3<u32>(32u))) % vec3<u32>(32u)), ~max(global0.yx, -u_input.b), _wgslsmith_f_op_vec4_f32(-func_1(u_input.e.x, !vec3<bool>(var_1, true, true), Struct_1(39652u, abs(4294967295u), vec4<f32>(var_0.x, 1293f, -1000f, -1000f))).c), -_wgslsmith_mod_i32(-14601i, 2147483647i), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(160f - 2470f), var_0.x, var_2.x, var_2.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -511f, var_2.x, 3226f) + vec4<f32>(736f, -1533f, var_2.x, 1039f)))))));
}

