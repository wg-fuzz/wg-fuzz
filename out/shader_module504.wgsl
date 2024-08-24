struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec3<bool>) -> vec3<bool> {
    global0 = array<Struct_1, 15>();
    global0 = array<Struct_1, 15>();
    global0 = array<Struct_1, 15>();
    let var_0 = ~countOneBits(arg_0.x);
    let var_1 = _wgslsmith_mult_vec3_u32(vec3<u32>(~_wgslsmith_dot_vec2_u32(arg_0.yx, ~arg_0.zx), _wgslsmith_dot_vec4_u32(~min(vec4<u32>(var_0, 35251u, arg_0.x, var_0), vec4<u32>(arg_0.x, 0u, var_0, 0u)), vec4<u32>(abs(arg_0.x), _wgslsmith_mod_u32(0u, 28627u), var_0 ^ 1u, 1u)), _wgslsmith_add_u32(_wgslsmith_add_u32(77006u, ~var_0), arg_0.x)), ~arg_0);
    return arg_2;
}

fn func_3(arg_0: u32, arg_1: bool) -> bool {
    return (34689u << (arg_0 % 32u)) <= 1u;
}

fn func_1(arg_0: vec2<u32>) -> vec4<f32> {
    let var_0 = vec3<bool>(~select(arg_0.x, 4294967295u << (arg_0.x % 32u), u_input.b.x >= 2147483647i) >= arg_0.x, func_3(_wgslsmith_mod_u32(~1u, arg_0.x), true && any(func_2(vec3<u32>(arg_0.x, arg_0.x, 4294967295u), global0[_wgslsmith_index_u32(arg_0.x, 15u)], vec3<bool>(false, true, false)))), false);
    global0 = array<Struct_1, 15>();
    global0 = array<Struct_1, 15>();
    global0 = array<Struct_1, 15>();
    var var_1 = !(select(true, false, var_0.x) | var_0.x);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-924f, -707f, -1500f, 1000f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -373f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-128f * -1000f) * _wgslsmith_f_op_f32(select(-507f, 1251f, true))), _wgslsmith_f_op_f32(-2219f - _wgslsmith_f_op_f32(-517f - -802f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1399f, 477f)) * -397f)))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = select(15968u, min(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(1u, 1u, 1u, 1u)), ~(~vec4<u32>(18649u, 81724u, 65983u, 1u))), 45059u), false);
    var var_1 = -(~u_input.d);
    let var_2 = Struct_1(!vec2<bool>(arg_1.a.x, !func_2(vec3<u32>(12789u, 43106u, 48724u), Struct_1(arg_1.a, arg_1.b, arg_1.c, 1000f), vec3<bool>(arg_1.a.x, false, false)).x), abs(~vec2<i32>(-50067i, min(0i, -17833i))), vec2<f32>(_wgslsmith_f_op_f32(max(arg_0.x, arg_1.d)), 1316f), arg_0.x);
    var_0 = _wgslsmith_dot_vec2_u32(~firstTrailingBit(vec2<u32>(abs(1u), 1u)), ~_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(95710u, 0u), vec2<u32>(42791u, 75954u), vec2<u32>(1u, 0u)), ~vec2<u32>(22092u, 1u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), firstLeadingBit(vec2<u32>(1u, 4294967295u)), vec2<u32>(37050u, 4294967295u))));
    var var_3 = any(var_2.a);
    return Struct_1(select(!(!(!vec2<bool>(var_2.a.x, arg_1.a.x))), var_2.a, !(!(!arg_1.a.x))), arg_2.yz, _wgslsmith_f_op_vec2_f32(-arg_1.c), -629f);
}

fn func_5(arg_0: Struct_1) -> bool {
    global0 = array<Struct_1, 15>();
    let var_0 = u_input.b;
    global0 = array<Struct_1, 15>();
    global0 = array<Struct_1, 15>();
    let var_1 = arg_0;
    return var_1.b.x == var_1.b.x;
}

fn func_6(arg_0: bool, arg_1: bool, arg_2: vec3<bool>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = -(~(~(-vec3<i32>(arg_3.b.x, arg_3.b.x, 45793i))));
    global0 = array<Struct_1, 15>();
    let var_1 = Struct_1(vec2<bool>(arg_0, func_2(~vec3<u32>(1u, 1u, 1u), Struct_1(!vec2<bool>(true, arg_0), _wgslsmith_mult_vec2_i32(arg_3.b, var_0.xx), _wgslsmith_f_op_vec2_f32(vec2<f32>(-341f, arg_3.d) * vec2<f32>(942f, arg_3.c.x)), 1452f), vec3<bool>(true, true, !arg_1)).x), func_4(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(arg_3.d, arg_3.d, -1073f, 2018f), vec4<f32>(264f, 1712f, -1000f, arg_3.d)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_3.c.x, -892f, arg_3.c.x, arg_3.d), vec4<f32>(arg_3.d, arg_3.c.x, arg_3.c.x, arg_3.d)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.c.x, arg_3.d, 1000f, arg_3.c.x) * vec4<f32>(arg_3.c.x, arg_3.c.x, -187f, 2020f))))), func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.c.x, -935f, -1184f, arg_3.c.x) + vec4<f32>(-936f, arg_3.d, 391f, arg_3.c.x)) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_3.d, arg_3.d, arg_3.d, arg_3.c.x)))), global0[_wgslsmith_index_u32(select(_wgslsmith_dot_vec2_u32(vec2<u32>(34513u, 4294967295u), vec2<u32>(19736u, 20988u)), countOneBits(1u), false), 15u)], ~vec3<i32>(u_input.c.x, var_0.x, var_0.x)), firstTrailingBit(abs(vec3<i32>(var_0.x, u_input.b.x, u_input.c.x)) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)))).b, vec2<f32>(1498f, _wgslsmith_f_op_f32(f32(-1f) * -928f)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(945f * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1011f)))), _wgslsmith_f_op_f32(-923f - arg_3.c.x)));
    let var_2 = true;
    global0 = array<Struct_1, 15>();
    return Struct_1(arg_3.a, _wgslsmith_sub_vec2_i32(vec2<i32>(abs(-1i), 65116i) ^ vec2<i32>(_wgslsmith_sub_i32(var_1.b.x, 1i), 0i | var_1.b.x), u_input.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(arg_3.c.x + 1772f), arg_3.d)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -408f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(func_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-980f, 425f, -1000f, 578f) - vec4<f32>(107f, 1622f, 468f, 468f)), _wgslsmith_f_op_vec4_f32(func_1(vec2<u32>(1u, 45421u))), true)), global0[_wgslsmith_index_u32(73382u, 15u)], u_input.d.zxz)), any(select(vec2<bool>(false, false), vec2<bool>(true, true), true)) & false, func_2(vec3<u32>(firstLeadingBit(reverseBits(0u)), ~0u >> (0u % 32u), ~75057u), global0[_wgslsmith_index_u32(~6284u, 15u)], vec3<bool>(select(u_input.c.x, 2147483647i, true) > ~22799i, any(vec3<bool>(false, false, false)), any(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false))))), Struct_1(vec2<bool>(any(vec3<bool>(true, true, true)), true), vec2<i32>(u_input.c.x, u_input.d.x), _wgslsmith_f_op_vec4_f32(func_1(~vec2<u32>(4294967295u, 1u))).zx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(984f + -309f))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-444f + -132f))))));
    let var_1 = func_3(1u, !(!var_0.a.x));
    global0 = array<Struct_1, 15>();
    var var_2 = -1867f;
    let var_3 = vec2<i32>(i32(-1i) * -6059i, select(1i, _wgslsmith_mult_i32(-u_input.c.x, var_0.b.x) << (_wgslsmith_mod_u32(abs(9467u), ~8270u) % 32u), var_0.c.x <= func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-915f, -613f, -371f, var_0.c.x)), func_4(vec4<f32>(-678f, 435f, var_0.c.x, -270f), global0[_wgslsmith_index_u32(23399u, 15u)], vec3<i32>(u_input.b.x, 9150i, u_input.d.x)), ~u_input.d.xyz).d));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, vec4<u32>(1u, _wgslsmith_add_u32(0u, 1u), 0u, 1u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.c.x, 990f, 140f))), vec3<f32>(-1517f, var_0.c.x, var_0.d)))))));
}

