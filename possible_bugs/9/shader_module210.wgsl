struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<bool> = vec4<bool>(false, false, true, true);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32, arg_1: vec4<bool>) -> vec3<bool> {
    let var_0 = Struct_2(30252i, Struct_1(global0.a));
    let var_1 = _wgslsmith_f_op_f32(-403f - -1240f);
    global0 = var_0.b;
    var var_2 = !(!arg_1);
    global1 = vec4<bool>(!(!select(var_2.x, false, select(global1.x, arg_1.x, true))), !(!arg_1.x), !arg_1.x, any(select(arg_1, !select(vec4<bool>(false, true, global1.x, true), vec4<bool>(global1.x, false, arg_1.x, var_2.x), false), select(!vec4<bool>(false, var_2.x, false, global1.x), vec4<bool>(false, arg_1.x, global1.x, false), arg_1))));
    return vec3<bool>(!any(select(vec2<bool>(var_2.x, arg_1.x), !vec2<bool>(true, var_2.x), select(vec2<bool>(true, arg_1.x), vec2<bool>(arg_1.x, arg_1.x), arg_1.wz))), !(!any(select(vec3<bool>(arg_1.x, true, false), vec3<bool>(false, arg_1.x, global1.x), false))), any(select(!vec4<bool>(global1.x, true, true, true), arg_1, select(arg_1, arg_1, arg_1))) & any(arg_1.zyx));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = 20018u;
    var var_1 = vec2<bool>(!(((u_input.a | 30387i) >= u_input.a) && (_wgslsmith_mod_i32(-2147483647i, arg_2.a.x) <= -1i)), true | (24305u < (~var_0 >> (_wgslsmith_mult_u32(32050u, 0u) % 32u))));
    var_1 = select(!vec2<bool>(all(func_3(50502i, vec4<bool>(global1.x, global1.x, var_1.x, global1.x))), all(vec4<bool>(false, true, true, global1.x))), global1.wz, global1.yy);
    var var_2 = arg_0.a.x;
    var var_3 = Struct_2(_wgslsmith_mod_i32(arg_2.a.x, -_wgslsmith_div_i32(_wgslsmith_div_i32(global0.a.x, arg_2.a.x), arg_2.a.x)), arg_1);
    return arg_0;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-491f - 406f)));
    let var_1 = -23864i;
    global1 = !vec4<bool>(!global1.x, select(true, true, all(vec4<bool>(false, global1.x, false, true))) || (var_0 >= _wgslsmith_f_op_f32(var_0 - 1510f)), global1.x, any(vec3<bool>(select(global1.x, global1.x, true), true, true)));
    var var_2 = Struct_2(-arg_0.a.x, Struct_1(vec2<i32>(1i, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, global0.a.x), arg_0.a), vec2<i32>(global0.a.x, 0i)))));
    let var_3 = global1.x;
    return Struct_1(select(arg_0.a, vec2<i32>(-2147483647i, var_1), global1.x));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = u_input.b;
    var var_1 = ~_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.b, _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(u_input.b, u_input.b)), ~vec2<u32>(1u, u_input.b))), firstTrailingBit(1u ^ u_input.b));
    let var_2 = _wgslsmith_sub_u32(u_input.b, 4294967295u);
    let var_3 = Struct_2(-(~(~1i)), arg_0);
    let var_4 = var_3;
    return func_4(func_2(arg_0, Struct_1(var_3.b.a), arg_0));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_2 {
    global0 = Struct_1(_wgslsmith_sub_vec2_i32(global0.a, -arg_3.a));
    global0 = func_2(Struct_1(arg_0.a), Struct_1((vec2<i32>(-1i) * -arg_3.a) >> ((_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, 50139u), vec2<u32>(38724u, arg_1.x)) & (vec2<u32>(u_input.b, 4294967295u) >> (vec2<u32>(u_input.b, arg_1.x) % vec2<u32>(32u)))) % vec2<u32>(32u))), arg_3);
    global1 = select(arg_2, !vec4<bool>(~global0.a.x >= -arg_0.a.x, false, arg_2.x, _wgslsmith_mult_i32(4388i, global0.a.x) < _wgslsmith_dot_vec4_i32(vec4<i32>(global0.a.x, global0.a.x, -2147483647i, 0i), vec4<i32>(-2147483647i, -1i, 1i, -1i))), true);
    var var_0 = vec2<bool>(!func_3(countOneBits(51784i), select(!vec4<bool>(global1.x, true, true, global1.x), !vec4<bool>(arg_2.x, false, arg_2.x, arg_2.x), select(arg_2, arg_2, arg_2.x))).x, true);
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1086f, 227f)) - -1013f))))));
    return Struct_2(-2147483647i | u_input.a, Struct_1(~global0.a));
}

fn func_6(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = ~max(~vec2<i32>(1i, _wgslsmith_add_i32(33824i, 20973i)), global0.a);
    let var_1 = arg_2;
    let var_2 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2388f), -1267f, -819f), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1579f - _wgslsmith_f_op_f32(abs(1628f))) + -216f), _wgslsmith_f_op_f32(f32(-1f) * -361f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -832f)), -341f)))));
    var var_3 = Struct_2(20908i, Struct_1(vec2<i32>(-36837i, arg_0.b.a.x)));
    global1 = !vec4<bool>(global1.x, true, all(select(select(vec4<bool>(global1.x, false, global1.x, false), vec4<bool>(false, global1.x, global1.x, false), global1.x), !vec4<bool>(global1.x, true, true, global1.x), select(vec4<bool>(global1.x, true, global1.x, true), vec4<bool>(global1.x, true, global1.x, global1.x), global1.x))), true);
    return Struct_1(~(~(vec2<i32>(var_0.x, 9636i) << (~vec2<u32>(u_input.b, 0u) % vec2<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !select(!(!vec4<bool>(global1.x, global1.x, global1.x, global1.x)), vec4<bool>(!(true & global1.x), true, true, false), !all(select(global1.wy, global1.zx, false)));
    global0 = Struct_1(global0.a);
    global0 = func_6(func_5(func_1(Struct_1(~vec2<i32>(-1i, 2147483647i))), ~vec2<u32>(select(1u, u_input.b, global1.x), 44407u), select(vec4<bool>(false, !global1.x, func_3(-11821i, vec4<bool>(global1.x, global1.x, global1.x, global1.x)).x, global0.a.x != global0.a.x), !vec4<bool>(global1.x, false, true, true), false), func_4(Struct_1(abs(global0.a)))), vec4<i32>(-1i) * -vec4<i32>(1i, global0.a.x << (u_input.b % 32u), _wgslsmith_add_i32(2147483647i, global0.a.x), -1i >> (u_input.b % 32u)), Struct_1(-vec2<i32>(u_input.a, global0.a.x) & select(vec2<i32>(-22237i, u_input.a), global0.a, !vec2<bool>(true, global1.x))));
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(1000f, 1995f, 1785f, -347f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1358f, 834f, -2331f, 327f)))), !vec4<bool>(global1.x, global1.x, global1.x, global1.x))) + vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-1000f, -219f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -477f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -442f) + 3628f), _wgslsmith_div_f32(-764f, _wgslsmith_f_op_f32(min(990f, -1000f)))))));
    var var_1 = select(true, global1.x, !global1.x);
    var var_2 = func_5(func_4(Struct_1(global0.a)), _wgslsmith_mult_vec2_u32(vec2<u32>(0u | _wgslsmith_add_u32(u_input.b, 76556u), abs(~52994u)), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(u_input.b, firstLeadingBit(1u)))), !select(vec4<bool>(any(vec4<bool>(global1.x, global1.x, global1.x, true)), true, true, false), vec4<bool>(any(global1.zxw), global1.x & global1.x, !global1.x, global1.x), select(37318i == global0.a.x, global1.x, true)), func_1(Struct_1(select(global0.a << (vec2<u32>(1u, u_input.b) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(global0.a, vec2<i32>(u_input.a, global0.a.x)), !global1.x)))).b;
    let var_3 = func_5(Struct_1(~_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(var_2.a, vec2<i32>(0i, 9868i)), vec2<i32>(71095i, global0.a.x))), ~_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, u_input.b), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(1u, u_input.b))), _wgslsmith_clamp_vec2_u32(~vec2<u32>(3090u, 0u), vec2<u32>(u_input.b, 30777u), ~vec2<u32>(4294967295u, u_input.b))), vec4<bool>(!(!global1.x), global1.x, true, (u_input.b << (u_input.b % 32u)) < reverseBits(~u_input.b)), func_4(func_1(Struct_1(global0.a))));
    var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1017f, var_0.x), _wgslsmith_f_op_f32(-var_0.x))), var_0.x), -440f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-252f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * 982f) - var_0.x))), vec4<f32>(562f, _wgslsmith_f_op_f32(-var_0.x), -1131f, _wgslsmith_f_op_f32(round(var_0.x))));
    let var_4 = -2147483647i ^ func_4(var_3.b).a.x;
    let x = u_input.a;
    s_output = StorageBuffer(func_5(func_5(Struct_1(_wgslsmith_mod_vec2_i32(var_3.b.a, vec2<i32>(-11284i, u_input.a))), firstLeadingBit(vec2<u32>(25410u, 56036u) << (vec2<u32>(u_input.b, 67298u) % vec2<u32>(32u))), vec4<bool>(true, var_0.x == -1000f, true, all(global1.wzx)), func_4(var_3.b)).b, vec2<u32>(67420u, ~u_input.b), vec4<bool>(true, global1.x, var_3.b.a.x <= (i32(-1i) * -1i), true), Struct_1(~(~var_3.b.a))).b.a, _wgslsmith_mod_u32(~_wgslsmith_add_u32(_wgslsmith_div_u32(40970u, u_input.b), _wgslsmith_mod_u32(u_input.b, u_input.b)), u_input.b), ~vec3<i32>(select(var_4 ^ var_4, ~var_3.b.a.x, !global1.x), -11896i, u_input.a), vec3<u32>(81214u, _wgslsmith_dot_vec3_u32(~reverseBits(vec3<u32>(u_input.b, 2968u, u_input.b)), select(vec3<u32>(u_input.b, u_input.b, 31874u), reverseBits(vec3<u32>(0u, u_input.b, u_input.b)), any(vec2<bool>(global1.x, false)))), u_input.b), _wgslsmith_f_op_f32(var_0.x - 905f));
}

