struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
    d: vec2<i32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec2<i32>;

var<private> global2: vec3<f32> = vec3<f32>(334f, 1087f, 1744f);

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: bool, arg_1: vec2<bool>, arg_2: Struct_1) -> vec4<f32> {
    let var_0 = u_input.c.yz;
    var var_1 = !vec4<bool>(true, -941f < _wgslsmith_f_op_f32(sign(global0.e.x)), arg_1.x, false);
    var_1 = vec4<bool>(true, true, (i32(-1i) * -(arg_2.d.x << (var_0.x % 32u))) > -11868i, !((_wgslsmith_add_i32(global1.x, global0.d.x) | 29799i) < _wgslsmith_clamp_i32(i32(-1i) * -6226i, ~global1.x, 1i)));
    let var_2 = global1.x;
    let var_3 = arg_2;
    return _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.e.x, 481f, -1042f, 2067f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.e.x, 166f, global2.x, global0.e.x)))))));
}

fn func_2(arg_0: vec3<bool>, arg_1: u32, arg_2: vec3<bool>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    let var_1 = _wgslsmith_f_op_vec4_f32(func_3(arg_3.d.x != _wgslsmith_mod_i32(countOneBits(_wgslsmith_div_i32(u_input.b.x, 2147483647i)), 1i), vec2<bool>(arg_3.a, arg_3.a), Struct_1(arg_3.b, true, -u_input.b.x, _wgslsmith_div_vec2_i32(vec2<i32>(58241i << (u_input.c.x % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, global0.d.x, -14889i), u_input.b.yxy)), (arg_3.d >> (vec2<u32>(19854u, 0u) % vec2<u32>(32u))) | u_input.b.zy), global0.e)));
    let var_2 = -min(_wgslsmith_clamp_vec2_i32(-global0.d, firstLeadingBit(arg_3.d), vec2<i32>(1i, -828i)), u_input.b.zy);
    var var_3 = Struct_1(true, true, ~_wgslsmith_mult_i32((var_2.x ^ -7803i) >> (101361u % 32u), _wgslsmith_sub_i32(firstTrailingBit(17451i), var_2.x >> (20869u % 32u))), -select(-global0.d, _wgslsmith_clamp_vec2_i32(var_2, vec2<i32>(15774i, u_input.b.x), var_2), arg_3.b) << (~vec2<u32>(_wgslsmith_div_u32(30761u, arg_1), _wgslsmith_add_u32(u_input.a.x, 4294967295u)) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(global2.x)), _wgslsmith_f_op_f32(select(global0.e.x, global2.x, true)), _wgslsmith_f_op_f32(round(-2388f)))))));
    var var_4 = vec2<u32>(~arg_1, ~_wgslsmith_sub_u32(9899u, firstTrailingBit(4294967295u) & _wgslsmith_div_u32(65258u, 59130u)));
    return arg_3;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1) -> vec3<f32> {
    var var_0 = Struct_1(all(vec4<bool>(!global0.a, any(select(vec4<bool>(arg_1.a, false, true, true), vec4<bool>(arg_1.b, false, false, true), arg_1.a)), all(!vec4<bool>(true, global0.b, false, global0.b)), !all(vec4<bool>(false, true, arg_1.a, arg_1.b)))), false, -31058i, u_input.b.zz, _wgslsmith_f_op_vec3_f32(ceil(func_2(!vec3<bool>(arg_1.a, true, false), 39491u, !vec3<bool>(arg_1.a, arg_1.a, false), arg_1).e)));
    let var_1 = !(!global0.b);
    global1 = arg_1.d;
    let var_2 = func_2(!select(!(!vec3<bool>(arg_1.b, arg_1.a, var_0.a)), vec3<bool>(!global0.a, any(vec4<bool>(false, var_0.a, var_1, false)), select(arg_1.b, false, arg_1.a)), !any(vec3<bool>(var_0.b, var_1, false))), firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x | u_input.a.x, 33017u & u_input.c.x, u_input.a.x << (15439u % 32u)), u_input.a)), select(vec3<bool>(true, false, true), vec3<bool>(!any(vec4<bool>(arg_1.a, var_1, var_1, false)), false & any(vec4<bool>(var_1, var_0.a, false, true)), true), vec3<bool>(select(var_0.b, all(vec3<bool>(arg_1.b, true, var_0.a)), !var_1), func_2(vec3<bool>(true, var_0.b, global0.a), 0u, vec3<bool>(var_0.b, var_0.b, var_1), arg_1).a | all(vec4<bool>(global0.b, false, global0.a, true)), true)), Struct_1(select(false, 1000f <= _wgslsmith_f_op_f32(ceil(var_0.e.x)), !(var_0.d.x != global1.x)), var_1, arg_1.c, vec2<i32>(var_0.d.x, 1i), arg_0.xxy));
    var var_3 = var_0.d.x;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec4_f32(func_3(arg_1.a, vec2<bool>(var_0.b, true), Struct_1(true, global0.b, 25856i, vec2<i32>(2147483647i, var_2.d.x), arg_0.wxx))).zwx))) * var_0.e) * global0.e);
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    global0 = func_2(vec3<bool>(true, true, true), 1u, vec3<bool>(true, any(select(!vec2<bool>(false, global0.b), vec2<bool>(true, true), select(vec2<bool>(arg_1.b, false), vec2<bool>(global0.b, global0.b), vec2<bool>(true, arg_1.b)))), true), arg_2);
    var var_0 = global0.a;
    let var_1 = Struct_1(!(global0.b | !global0.a), true, firstLeadingBit(global1.x), ~min(arg_2.d, ~vec2<i32>(global0.d.x, global1.x)), _wgslsmith_f_op_vec3_f32(sign(arg_2.e)));
    var var_2 = Struct_1(!(!(!(u_input.b.x <= -34655i))), all(select(!vec2<bool>(true, arg_1.b), vec2<bool>(any(vec2<bool>(var_1.a, global0.b)), true), func_2(vec3<bool>(false, arg_2.b, false), 59254u, !vec3<bool>(arg_2.b, arg_1.a, arg_1.b), func_2(vec3<bool>(arg_1.b, false, arg_1.a), 11463u, vec3<bool>(false, arg_1.a, arg_1.a), arg_2)).b)), ~(-2147483647i), -vec2<i32>(max(0i, -u_input.b.x), -45233i ^ ~arg_2.d.x), global0.e);
    var_0 = !((_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.e.x, global2.x)) == 1000f) || any(select(vec3<bool>(true, true, true), !vec3<bool>(global0.b, global0.b, arg_2.a), var_2.a)));
    return ~_wgslsmith_mult_u32(~u_input.a.x, 0u >> (abs(arg_0 | 49931u) % 32u));
}

fn func_1(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_1) -> vec4<u32> {
    global0 = arg_2;
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-556f, global0.e.x, !select(false, arg_2.a, arg_2.a))));
    let var_1 = true & !(!all(vec3<bool>(false, false, arg_2.b)));
    var var_2 = arg_2;
    var var_3 = 67725i << (u_input.c.x % 32u);
    return vec4<u32>(arg_0, ~arg_0, func_5(~u_input.a.x, Struct_1(all(vec3<bool>(arg_2.b, global0.a, var_1)), true, arg_1.x, -(var_2.d ^ arg_1.yx), _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.e.x, -1861f, var_0, -882f))), func_2(vec3<bool>(var_1, var_1, var_2.a), 18481u, vec3<bool>(global0.b, false, true), Struct_1(arg_2.a, true, arg_2.d.x, vec2<i32>(-2147483647i, -25731i), arg_2.e))))), arg_2), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(_wgslsmith_div_i32(global0.c, u_input.b.x), global1.x, reverseBits(1i), ((~(-10984i) & (global0.d.x >> (37221u % 32u))) & ~u_input.b.x) ^ u_input.b.x);
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.e + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global0.e), global0.e, true)))));
    var var_1 = u_input.a.x;
    let var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.a.x, firstTrailingBit(16961u), 1u), ~func_1(_wgslsmith_mult_u32(44299u, u_input.a.x), vec4<i32>(0i, var_0.x, var_0.x, var_0.x), Struct_1(global0.b, global0.b, -24683i, global0.d, vec3<f32>(global2.x, -610f, -1223f)))) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(func_5(u_input.a.x, Struct_1(global0.b, true, var_0.x, vec2<i32>(global0.d.x, global1.x), vec3<f32>(global0.e.x, -241f, global2.x)), Struct_1(global0.a, true, -37830i, vec2<i32>(-2147483647i, u_input.b.x), vec3<f32>(global0.e.x, -762f, 231f))), ~u_input.c.x) | vec2<u32>(36334u, abs(u_input.c.x)), _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a.xy, _wgslsmith_div_vec2_u32(u_input.c.xx, vec2<u32>(57788u, 0u))), u_input.c.xx));
    let var_3 = _wgslsmith_f_op_f32(trunc(global2.x));
    global0 = Struct_1(true, all(select(vec4<bool>(global0.b, true, global0.a, false), select(vec4<bool>(global0.a, global0.b, true, false), !vec4<bool>(global0.a, false, false, global0.b), select(vec4<bool>(global0.b, false, global0.a, global0.a), vec4<bool>(true, true, global0.a, true), vec4<bool>(false, global0.b, false, global0.b))), false)), select(-min(-2147483647i, 1i), 1i, var_3 >= 1000f), vec2<i32>(-1i) * -select(-u_input.b.xw, ~global0.d, select(vec2<bool>(false, global0.b), vec2<bool>(global0.b, true), vec2<bool>(global0.a, global0.b))), _wgslsmith_f_op_vec3_f32(global0.e - _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1036f, global2.x, 1000f), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-2291f, 1000f, 1362f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.e * vec3<f32>(var_3, 1000f, var_3))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, 1033f))), vec2<u32>(~_wgslsmith_div_u32(11951u, 1u), u_input.a.x) & u_input.a.zz, _wgslsmith_sub_vec2_i32(~min(var_0.zz, max(var_0.yw, global0.d)), -reverseBits(u_input.b.xw)), min(_wgslsmith_dot_vec4_i32(-u_input.b, vec4<i32>(firstLeadingBit(-12301i), var_0.x, u_input.b.x, _wgslsmith_mult_i32(0i, global1.x))), firstLeadingBit(-21140i)));
}

