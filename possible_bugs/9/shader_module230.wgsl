struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: u32,
    b: vec2<bool>,
    c: bool,
    d: Struct_3,
    e: Struct_3,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: vec4<u32>, arg_3: f32) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-123f, _wgslsmith_f_op_f32(step(arg_3, -264f)))) - 936f)));
    global0 = ~arg_2.x;
    var var_1 = select(vec4<bool>(4294967295u < _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.b), vec2<u32>(6215u, arg_2.x)), u_input.e.x <= u_input.e.x, arg_0, false), select(vec4<bool>(true, false, true, true), !select(vec4<bool>(false, arg_0, arg_0, arg_0), !vec4<bool>(false, false, arg_0, false), arg_2.x < u_input.e.x), abs(_wgslsmith_div_u32(29623u, 4294967295u)) != _wgslsmith_sub_u32(arg_2.x, countOneBits(arg_2.x))), !(!vec4<bool>(true, true, true, arg_0)));
    var var_2 = Struct_3(_wgslsmith_mod_vec3_i32(abs(_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1.a.x, u_input.d, 0i), vec3<i32>(u_input.d, u_input.d, 0i), u_input.a.xwx), vec3<i32>(u_input.a.x, 65987i, u_input.c.x) ^ vec3<i32>(arg_1.a.x, 0i, 0i))), u_input.a.wyz));
    var var_3 = arg_1;
    return countOneBits(arg_1.a);
}

fn func_2(arg_0: Struct_4, arg_1: Struct_5) -> Struct_4 {
    let var_0 = Struct_3(-func_3(true, arg_1.c.d, ~min(vec4<u32>(u_input.e.x, arg_1.a.x, 4294967295u, 59313u), arg_1.b.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.e - 573f) * -1414f)));
    let var_1 = ~arg_1.a.yxz;
    let var_2 = Struct_4(~arg_1.c.a, !(!vec2<bool>(any(vec3<bool>(false, false, true)), false == arg_0.c)), abs(_wgslsmith_clamp_i32(i32(-1i) * -16590i, _wgslsmith_dot_vec2_i32(arg_0.e.a.yx, vec2<i32>(var_0.a.x, u_input.a.x)), 12424i)) != -_wgslsmith_mod_i32(-44398i, _wgslsmith_sub_i32(-1i, u_input.c.x)), arg_1.c.e, var_0);
    let var_3 = max(min(max(vec2<i32>(var_2.e.a.x, _wgslsmith_mod_i32(arg_0.d.a.x, 27227i)), vec2<i32>(var_0.a.x, arg_1.b.d.x)), ~countOneBits(_wgslsmith_div_vec2_i32(arg_0.e.a.xx, vec2<i32>(0i, var_0.a.x)))), vec2<i32>(arg_0.d.a.x, ~(-u_input.c.x | _wgslsmith_sub_i32(1i, 1i))));
    var var_4 = arg_1.b;
    return Struct_4(u_input.e.x >> (var_4.c % 32u), arg_1.c.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_1.b.e, -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(655f * -145f))) < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1418f - arg_1.b.e))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_4.e - 735f), _wgslsmith_f_op_f32(-arg_1.b.e))))), var_0, var_2.d);
}

fn func_1(arg_0: Struct_5) -> u32 {
    let var_0 = arg_0.a.yz;
    global0 = 1u;
    global0 = ~(~(~u_input.b) << (arg_0.c.a % 32u));
    var var_1 = func_2(arg_0.c, arg_0);
    var_1 = Struct_4(4294967295u >> (var_0.x % 32u), vec2<bool>(func_2(arg_0.c, arg_0).c || var_1.c, all(vec3<bool>(var_1.b.x, true, var_1.a <= var_1.a))), !var_1.b.x, var_1.d, Struct_3(var_1.d.a));
    return ~_wgslsmith_mult_u32(~8552u, var_1.a);
}

fn func_4(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_2, arg_3: Struct_3) -> Struct_4 {
    var var_0 = -56436i;
    global0 = 29194u;
    var var_1 = _wgslsmith_sub_u32(~abs(~select(arg_0.x, 4294967295u, true)), u_input.b);
    let var_2 = Struct_5(vec4<u32>(~_wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.e.x, 1u)), vec2<u32>(0u, 10134u)), arg_0.x, select(~select(0u, 1u, true), ~4294967295u, true), arg_2.a), Struct_1(vec4<u32>(_wgslsmith_mult_u32(u_input.e.x, 18822u), ~(~arg_2.a), func_1(Struct_5(arg_0, Struct_1(arg_0, -58889i, u_input.e.x, arg_3.a, -483f), Struct_4(4294967295u, vec2<bool>(false, true), false, arg_3, Struct_3(vec3<i32>(u_input.d, -1i, u_input.c.x))))), u_input.e.x), reverseBits(113567i), _wgslsmith_clamp_u32(arg_0.x, func_2(func_2(Struct_4(59880u, vec2<bool>(false, true), false, arg_3, arg_3), Struct_5(vec4<u32>(arg_2.a, 44028u, 54590u, 4294967295u), Struct_1(vec4<u32>(u_input.b, arg_0.x, arg_0.x, 27959u), 15326i, 93648u, arg_3.a, -1038f), Struct_4(4294967295u, vec2<bool>(true, true), false, Struct_3(vec3<i32>(-2147483647i, u_input.d, 2147483647i)), Struct_3(vec3<i32>(-1i, 1i, arg_2.b.x))))), Struct_5(arg_0, Struct_1(vec4<u32>(0u, u_input.b, 4294967295u, 70548u), -30560i, 1u, arg_3.a, -974f), Struct_4(arg_2.a, vec2<bool>(false, false), false, Struct_3(arg_2.b), arg_3))).a, ~(~arg_0.x)), vec3<i32>(-1i) * -(~u_input.a.wwx), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-674f, 1385f)) * _wgslsmith_f_op_f32(step(1180f, 349f))), -1057f))), Struct_4(arg_2.a, !select(vec2<bool>(false, false), vec2<bool>(true, true), true), select(func_2(Struct_4(arg_2.a, vec2<bool>(false, true), false, arg_3, Struct_3(vec3<i32>(u_input.c.x, arg_2.b.x, arg_3.a.x))), Struct_5(arg_0, Struct_1(arg_0, -2147483647i, 1u, arg_3.a, 235f), Struct_4(arg_2.a, vec2<bool>(true, true), true, Struct_3(arg_3.a), Struct_3(vec3<i32>(arg_1, arg_3.a.x, u_input.a.x))))).c, all(vec4<bool>(false, true, true, true)), 3211f == _wgslsmith_f_op_f32(round(1000f))), arg_3, Struct_3(-_wgslsmith_mult_vec3_i32(arg_2.b, vec3<i32>(arg_1, arg_1, -30838i)))));
    let var_3 = var_2.c.c;
    return Struct_4(38548u, !var_2.c.b, select(true, select(false, any(vec3<bool>(false, false, false)), !var_2.c.c), 1i > func_3(true, var_2.c.e, vec4<u32>(0u, u_input.b, 0u, arg_2.a), var_2.b.e).x) || false, Struct_3(arg_3.a), var_2.c.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec4<u32>(u_input.b, ~_wgslsmith_sub_u32(firstLeadingBit(0u), _wgslsmith_mult_u32(u_input.b, u_input.e.x)), abs(1u) | _wgslsmith_add_u32(~309u, func_1(Struct_5(vec4<u32>(4999u, u_input.b, 0u, u_input.b), Struct_1(vec4<u32>(4294967295u, u_input.b, u_input.e.x, 1u), 0i, 0u, u_input.a.xzw, -1842f), Struct_4(u_input.e.x, vec2<bool>(true, true), false, Struct_3(vec3<i32>(30033i, -11604i, 5866i)), Struct_3(u_input.a.xwx))))), ~min(76587u, min(u_input.b, 35832u))), min(firstLeadingBit(-_wgslsmith_add_i32(-1i, 25268i)), _wgslsmith_div_i32(~u_input.d & min(7730i, 26945i), -8245i)), Struct_2(_wgslsmith_mod_u32(144383u, ~func_1(Struct_5(vec4<u32>(u_input.b, 1u, u_input.b, u_input.e.x), Struct_1(vec4<u32>(u_input.b, u_input.b, u_input.b, 6739u), -49620i, 1u, vec3<i32>(u_input.d, -38623i, -2147483647i), 1640f), Struct_4(u_input.b, vec2<bool>(true, true), true, Struct_3(vec3<i32>(u_input.a.x, u_input.c.x, 0i)), Struct_3(u_input.a.yyz))))), -(~u_input.a.zwz)), Struct_3(u_input.a.wyx));
    let var_1 = 1337f;
    let var_2 = ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_div_u32(u_input.e.x, 0u), 0u, _wgslsmith_div_u32(1u, u_input.b), abs(u_input.b)), _wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(u_input.b, 9935u, 0u, 0u)), ~vec4<u32>(3739u, 26421u, var_0.a, 4294967295u))));
    let var_3 = _wgslsmith_dot_vec4_i32(-min(vec4<i32>(u_input.c.x, 0i, var_0.e.a.x, 1909i), abs(vec4<i32>(1i, var_0.e.a.x, 2147483647i, u_input.c.x))) >> (firstTrailingBit(~var_2) % vec4<u32>(32u)), abs(vec4<i32>(-1i, -firstLeadingBit(var_0.e.a.x), min(var_0.e.a.x, abs(1i)), -2147483647i)));
    var var_4 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(var_1, var_1, -397f), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1, var_1, 1079f), vec3<f32>(var_1, 769f, var_1)))))))), vec3<f32>(_wgslsmith_f_op_f32(abs(837f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) + _wgslsmith_f_op_f32(trunc(-1552f)))), -163f), vec3<bool>(var_0.c, true, !(!(!var_0.b.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, _wgslsmith_add_i32(~abs(var_0.d.a.x) | u_input.c.x, -2147483647i), var_2, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1324f, -1753f, _wgslsmith_div_f32(var_1, -1177f)) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(977f, -2042f, var_1) * vec3<f32>(var_1, var_4.x, var_4.x)))))));
}

