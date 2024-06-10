struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: array<u32, 14>;

var<private> global1: array<vec4<i32>, 11>;

var<private> global2: i32;

var<private> global3: array<i32, 4> = array<i32, 4>(18862i, 38615i, 22695i, -1i);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(1u, 14u)]), 14u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(47879u, 14u)], 14u)], 14u)], 14u)], 14u)], 14u)], 14u)], 14u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 14u)], 14u)]), vec2<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 14u)], 14u)], 14u)], 14u)], 14u)], 14u)], 14u)])) & (33090u << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 14u)], 14u)] % 32u)), 14u)], 14u)], 27431u, abs(~4294967295u)), vec4<u32>(~4294967295u, _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(0u, 14u)], global0[_wgslsmith_index_u32(4021u, 14u)] ^ 4294967295u), reverseBits(0u << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(47797u, 14u)], 14u)] % 32u)), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(42404u, 14u)], 14u)]), 14u)] | global0[_wgslsmith_index_u32(min(0u, 0u), 14u)], 14u)])) << (~min(~(~global0[_wgslsmith_index_u32(54607u, 14u)]), _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(global0[_wgslsmith_index_u32(0u, 14u)], global0[_wgslsmith_index_u32(1u, 14u)], 0u, 33769u)), _wgslsmith_sub_vec4_u32(vec4<u32>(95723u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(35654u, 14u)], 14u)], 31356u, 1u), vec4<u32>(70111u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 14u)], 14u)], global0[_wgslsmith_index_u32(1u, 14u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 14u)], 14u)], 14u)], 14u)], 14u)])))) % 32u);
    let var_1 = vec3<bool>(arg_1.x, true, arg_1.x);
    let var_2 = Struct_1(vec3<u32>(var_0, ~(_wgslsmith_div_u32(var_0, 4294967295u) & 1u), abs(~countOneBits(var_0))), global3[_wgslsmith_index_u32(~(~var_0 | max(var_0, 43860u)) >> (7246u % 32u), 4u)], var_0, ~(1u & ~(~var_0)));
    let var_3 = u_input.a;
    global0 = array<u32, 14>();
    return var_2;
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: bool, arg_3: vec2<u32>) -> u32 {
    let var_0 = func_1(vec2<f32>(-419f, _wgslsmith_f_op_f32(f32(-1f) * -716f)), vec3<bool>(true, false, any(vec3<bool>(any(vec4<bool>(arg_2, arg_2, true, true)), true, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1087f, -2266f, _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-524f - -1096f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(530f, arg_0.x, arg_1.x, -1269f)))))));
    let var_1 = 767f;
    var var_2 = func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.zz + _wgslsmith_div_vec2_f32(vec2<f32>(1096f, var_1), _wgslsmith_f_op_vec2_f32(arg_0.xy - vec2<f32>(var_1, 364f)))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1992f, -324f) * _wgslsmith_f_op_vec2_f32(arg_1.xy * vec2<f32>(arg_0.x, arg_1.x))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(arg_1.yx, arg_0.xy, arg_2)))))), !(!select(!vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(false, false, arg_2), select(vec3<bool>(true, arg_2, arg_2), vec3<bool>(arg_2, true, true), vec3<bool>(false, true, arg_2)))), vec4<f32>(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.x)))), _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(1319f - _wgslsmith_f_op_f32(-565f - arg_0.x))));
    let var_3 = 17004i;
    let var_4 = ~(_wgslsmith_add_vec3_i32(vec3<i32>(var_2.b, var_2.b << (45633u % 32u), -var_2.b), -vec3<i32>(28971i, u_input.a, 6343i) ^ (vec3<i32>(var_0.b, var_0.b, -6981i) & vec3<i32>(global3[_wgslsmith_index_u32(arg_3.x, 4u)], global3[_wgslsmith_index_u32(var_2.a.x, 4u)], 0i))) << (vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 14u)], 14u)], 14u)], arg_3.x, 32637u), var_2.a), ~1u, 0u) % vec3<u32>(32u)));
    return abs(var_2.d);
}

fn func_2() -> i32 {
    var var_0 = ~func_3(vec3<f32>(-818f, _wgslsmith_f_op_f32(f32(-1f) * -353f), -1250f), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -664f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(904f + 877f))), true, vec2<u32>(36271u, 17963u));
    global0 = array<u32, 14>();
    let var_1 = ~abs(vec4<i32>(-global3[_wgslsmith_index_u32(1u, 4u)], _wgslsmith_dot_vec2_i32(~vec2<i32>(global3[_wgslsmith_index_u32(926u, 4u)], -1i), _wgslsmith_clamp_vec2_i32(vec2<i32>(3951i, 5473i), vec2<i32>(2147483647i, -2147483647i), vec2<i32>(-1i, global3[_wgslsmith_index_u32(7874u, 4u)]))), _wgslsmith_dot_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 14u)], 14u)], 14u)], 4u)], -34456i, -12889i, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(34776u, 14u)], 14u)], 4u)]), min(global1[_wgslsmith_index_u32(11922u, 11u)], vec4<i32>(u_input.a, -1i, u_input.a, 32637i))), -u_input.a));
    var_0 = global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~(firstLeadingBit(_wgslsmith_sub_u32(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(88389u, 14u)], 14u)], 14u)], 14u)])) | global0[_wgslsmith_index_u32(~func_1(vec2<f32>(241f, 879f), vec3<bool>(true, true, false), vec4<f32>(1213f, -1084f, -464f, -1116f)).c, 14u)]), countOneBits(1u)), 14u)], 14u)];
    var var_2 = 1i;
    return u_input.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> vec3<u32> {
    global1 = array<vec4<i32>, 11>();
    let var_0 = func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(380f, _wgslsmith_f_op_f32(ceil(639f))), _wgslsmith_f_op_f32(abs(-2325f)))), !(!vec3<bool>(all(vec4<bool>(false, true, true, true)), select(true, true, false), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(min(-550f, 1606f)), -504f, -548f, _wgslsmith_f_op_f32(f32(-1f) * -1449f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1442f, -457f, -1082f, -1176f) + vec4<f32>(-1568f, 763f, 1306f, 1114f)))))));
    global2 = 96973i;
    let var_1 = select(select(select(vec2<bool>(true, 1u != global0[_wgslsmith_index_u32(51285u, 14u)]), select(select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(true, true), true), any(vec2<bool>(false, true))), vec2<bool>(select(false, true, any(vec4<bool>(false, true, true, true))), true), !(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)))), vec2<bool>(!(firstTrailingBit(var_0.c) > var_0.d), false), true);
    let var_2 = arg_1;
    return vec3<u32>(var_2.d, ~min(min(1u, arg_0.c), global0[_wgslsmith_index_u32(var_2.a.x, 14u)]), 93320u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec3<u32>(32780u, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(max(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(93633u, 14u)], 14u)], 14u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(22507u, 14u)], 14u)], 14u)] | global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(26050u, 14u)], 14u)], 14u)]), ~(~1u)), 14u)], ~(~105232u & _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(4294967295u, 14u)], 0u))), max(1i, i32(-1i) * -12445i), _wgslsmith_mult_u32(firstLeadingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 14u)] & global0[_wgslsmith_index_u32(4294967295u, 14u)], 14u)], 14u)], 14u)]) >> (_wgslsmith_add_u32(17651u, 0u) % 32u), global0[_wgslsmith_index_u32(0u, 14u)]), min(62521u, global0[_wgslsmith_index_u32(~(~(~global0[_wgslsmith_index_u32(0u, 14u)])), 14u)]));
    var var_1 = Struct_1(func_4(Struct_1(_wgslsmith_mult_vec3_u32(vec3<u32>(7417u, var_0.d, 4294967295u), vec3<u32>(52030u, 0u, var_0.a.x)) ^ _wgslsmith_div_vec3_u32(vec3<u32>(1u, global0[_wgslsmith_index_u32(7235u, 14u)], 0u), var_0.a), -2147483647i, 15209u, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.c, 0u), 14u)]), func_1(_wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(385f, -696f)))), vec3<bool>(true, any(vec3<bool>(false, false, true)), true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1106f, -1151f, 866f, 681f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(515f, 792f, 1726f, 804f) - vec4<f32>(-662f, 851f, 1809f, 619f)))), _wgslsmith_mult_i32(-func_2(), i32(-1i) * -1i)), -2147483647i, _wgslsmith_div_u32(~_wgslsmith_div_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 14u)], 14u)], global0[_wgslsmith_index_u32(~34678u, 14u)]), var_0.c & global0[_wgslsmith_index_u32(1u, 14u)]), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), var_0.a.zz), 14u)]);
    var var_2 = Struct_1(_wgslsmith_clamp_vec3_u32(var_0.a, var_0.a, vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 0u, 26289u, var_0.d), vec4<u32>(30972u, 1u, var_1.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.a.x, 14u)], 14u)], 14u)])), vec4<u32>(19574u, var_0.a.x, var_0.d, 1u)), 43590u, 0u)), 2147483647i << (_wgslsmith_div_u32(~var_0.d, var_1.d) % 32u), func_4(func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1997f, -122f))) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-718f, 1448f), vec2<f32>(2091f, 659f)))), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(475f, 936f, 1347f, -962f))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1076f, -2304f, -424f, 997f))))), func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1417f, -201f), vec2<f32>(-1434f, 827f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-941f, -1223f))), vec3<bool>(true, true, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(762f, 2016f, 917f, -536f)))), ~func_2()).x, abs(26684u));
    global1 = array<vec4<i32>, 11>();
    global2 = 1i;
    let var_3 = _wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(~var_1.a.yx, vec2<u32>(4294967295u, 1u)), ~(~46995u));
    let var_4 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -877f), _wgslsmith_f_op_f32(trunc(1226f)), true))), _wgslsmith_f_op_f32(floor(-729f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-111f, -1094f) - -769f)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_div_f32(1292f, 315f), 1f)))), any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false)), var_0.b < min(3248i, 5429i)))));
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(select(func_1(vec2<f32>(1097f, var_4.x), vec3<bool>(true, false, true), var_4).a.xz, var_2.a.zx, select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)))));
}

