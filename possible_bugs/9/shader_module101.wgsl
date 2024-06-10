struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30>;

var<private> global1: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec3<i32>(-29238i, -70980i, i32(-2147483648)), vec4<u32>(4294967295u, 18501u, 41554u, 4294967295u), -557f, true), Struct_1(vec3<i32>(-1i, 0i, 0i), vec4<u32>(6591u, 1u, 0u, 1u), 2181f, false), Struct_1(vec3<i32>(-15617i, 33423i, 0i), vec4<u32>(22846u, 4294967295u, 4294967295u, 0u), -544f, false), Struct_1(vec3<i32>(1i, 78309i, 0i), vec4<u32>(1u, 22393u, 17440u, 0u), -1112f, true), Struct_1(vec3<i32>(55936i, -29474i, 58879i), vec4<u32>(1u, 0u, 26271u, 19345u), -414f, true), Struct_1(vec3<i32>(-1179i, 0i, 0i), vec4<u32>(4294967295u, 4294967295u, 30317u, 1u), 468f, false), Struct_1(vec3<i32>(2147483647i, -14742i, -58808i), vec4<u32>(0u, 15923u, 1u, 4294967295u), 860f, false), Struct_1(vec3<i32>(32200i, -68412i, -1i), vec4<u32>(113882u, 17643u, 4294967295u, 38177u), 1000f, true), Struct_1(vec3<i32>(i32(-2147483648), -56218i, 0i), vec4<u32>(4294967295u, 557u, 4294967295u, 4294967295u), 1391f, false), Struct_1(vec3<i32>(-1i, -38580i, 2147483647i), vec4<u32>(88523u, 1u, 1u, 16535u), 2209f, false), Struct_1(vec3<i32>(-1i, 0i, 5881i), vec4<u32>(4294967295u, 11160u, 61107u, 0u), 731f, true), Struct_1(vec3<i32>(2147483647i, -36971i, i32(-2147483648)), vec4<u32>(0u, 49458u, 0u, 4294967295u), 2202f, false), Struct_1(vec3<i32>(35447i, 69906i, 2147483647i), vec4<u32>(4294967295u, 0u, 73187u, 1u), 639f, true), Struct_1(vec3<i32>(-15168i, -1808i, 26298i), vec4<u32>(45414u, 125157u, 50050u, 29075u), 519f, true), Struct_1(vec3<i32>(1i, 9363i, 1i), vec4<u32>(5150u, 0u, 119040u, 4294967295u), -1727f, false), Struct_1(vec3<i32>(-709i, 41078i, i32(-2147483648)), vec4<u32>(0u, 4294967295u, 8844u, 26222u), 1000f, true), Struct_1(vec3<i32>(10433i, 43619i, -1i), vec4<u32>(38710u, 29902u, 51269u, 4294967295u), 2144f, false), Struct_1(vec3<i32>(-1i, 2147483647i, 24796i), vec4<u32>(4294967295u, 105791u, 38882u, 1054u), -884f, true), Struct_1(vec3<i32>(8860i, -56136i, 2147483647i), vec4<u32>(0u, 27510u, 0u, 0u), 919f, true), Struct_1(vec3<i32>(59785i, i32(-2147483648), -1i), vec4<u32>(0u, 30872u, 4294967295u, 59955u), 708f, false), Struct_1(vec3<i32>(i32(-2147483648), 9748i, -1i), vec4<u32>(18380u, 21611u, 4294967295u, 1u), 1353f, true), Struct_1(vec3<i32>(-58920i, -55405i, 57535i), vec4<u32>(118309u, 0u, 1u, 51170u), -1200f, true), Struct_1(vec3<i32>(-11441i, -1i, i32(-2147483648)), vec4<u32>(0u, 0u, 4294967295u, 10451u), 2349f, false), Struct_1(vec3<i32>(-41198i, -1i, -5316i), vec4<u32>(59821u, 1u, 0u, 23878u), 2050f, true), Struct_1(vec3<i32>(i32(-2147483648), 24837i, i32(-2147483648)), vec4<u32>(66758u, 54046u, 1u, 0u), 822f, true), Struct_1(vec3<i32>(-23980i, 1i, 2147483647i), vec4<u32>(1u, 4294967295u, 0u, 1u), 343f, false), Struct_1(vec3<i32>(-37460i, 43518i, -19491i), vec4<u32>(4294967295u, 4294967295u, 14317u, 62286u), 959f, false), Struct_1(vec3<i32>(1i, -52648i, 51649i), vec4<u32>(5375u, 0u, 4294967295u, 0u), -1564f, true));

var<private> global2: i32 = 40881i;

var<private> global3: vec3<u32>;

var<private> global4: array<bool, 17>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: bool) -> bool {
    var var_0 = -2147483647i;
    var_0 = arg_1.a.x;
    let var_1 = arg_1.a.yz | -arg_0;
    return global4[_wgslsmith_index_u32(arg_1.b.x, 17u)];
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: vec3<f32>, arg_3: i32) -> f32 {
    global0 = array<u32, 30>();
    var var_0 = Struct_1(-min(vec3<i32>(arg_3, arg_3, 38439i), vec3<i32>(arg_3, u_input.a.x, -31794i)) & _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, reverseBits(-2147483647i)), vec3<i32>(arg_3, _wgslsmith_dot_vec2_i32(vec2<i32>(21028i, 1i), u_input.a), -38132i)), vec4<u32>(arg_1.x, ~(~(~global0[_wgslsmith_index_u32(arg_1.x, 30u)])), 7288u, global3.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_2.x)), -1000f)), func_3(_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(14489i, u_input.a.x), _wgslsmith_mult_i32(-13745i, u_input.a.x)), vec2<i32>(53475i, u_input.a.x)), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(arg_1.x, 30u)]), 30u)], 28u)], 609f < arg_2.x));
    var var_1 = Struct_1(firstLeadingBit(vec3<i32>(~u_input.a.x, min(var_0.a.x, 0i), -4028i)), vec4<u32>(~firstLeadingBit(4294967295u), 0u, (arg_1.x | 24943u) & ((global3.x & 95851u) ^ global3.x), ~arg_1.x), var_0.c, var_0.d);
    global2 = var_1.a.x;
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, var_0.c, 741f, arg_2.x)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(357f, 1889f, var_0.c, -1033f), vec4<f32>(-283f, 394f, -1056f, -1000f)))), vec4<f32>(-507f, _wgslsmith_div_f32(2248f, 1274f), _wgslsmith_f_op_f32(trunc(924f)), 1637f), !(64234u >= arg_1.x)))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(850f))), 219f, _wgslsmith_f_op_f32(-140f + -618f)), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_2.x, -953f)) - 2230f), arg_2.x, _wgslsmith_f_op_f32(ceil(1081f)))), var_0.c < _wgslsmith_f_op_f32(arg_2.x * 1124f)));
    return 1324f;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: bool, arg_3: Struct_1) -> f32 {
    global0 = array<u32, 30>();
    var var_0 = vec4<bool>(!(!(1140f != _wgslsmith_f_op_f32(max(2794f, arg_3.c)))), false, false, arg_3.c < _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(arg_0.c)), _wgslsmith_f_op_f32(-1100f - _wgslsmith_f_op_f32(-arg_3.c)))));
    let var_1 = var_0.zxz;
    let var_2 = arg_0;
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_2(select(!vec4<bool>(false, arg_2, global4[_wgslsmith_index_u32(var_2.b.x, 17u)], false), vec4<bool>(true, true, var_2.d, true), !vec4<bool>(arg_2, var_0.x, arg_3.d, arg_2)), max(max(arg_0.b.xwz, vec3<u32>(0u, global3.x, arg_0.b.x)), ~vec3<u32>(global0[_wgslsmith_index_u32(109782u, 30u)], global3.x, global0[_wgslsmith_index_u32(arg_0.b.x, 30u)])), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.c, arg_0.c, arg_3.c), vec3<f32>(arg_0.c, arg_0.c, 978f))), _wgslsmith_dot_vec4_i32(vec4<i32>(24883i, 1i, u_input.a.x, u_input.a.x) & vec4<i32>(arg_1.x, arg_0.a.x, u_input.a.x, 17936i), ~vec4<i32>(0i, var_2.a.x, -1i, arg_1.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_3.c, -2834f))), _wgslsmith_f_op_f32(f32(-1f) * -366f)), -1000f) * vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -676f), _wgslsmith_f_op_f32(-arg_3.c))), arg_3.c)), _wgslsmith_f_op_f32(-857f - 372f), _wgslsmith_f_op_f32(var_2.c - arg_3.c)));
    return -2548f;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<bool, 17>();
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(21539u, global0[_wgslsmith_index_u32(38591u, 30u)]), 30u)];
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(1u, 28u)], vec3<i32>(2147483647i, u_input.a.x, -33245i), global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3.x, 30u)], 17u)], global1[_wgslsmith_index_u32(global3.x, 28u)]))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-957f, -1120f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -712f) - 480f))), -933f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_2 = vec2<i32>(u_input.a.x, ~(-u_input.a.x));
    var var_3 = var_1.x;
    global3 = _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global3.yz >> (vec2<u32>(1u, global0[_wgslsmith_index_u32(1u, 30u)]) % vec2<u32>(32u)), global3.xx), 30u)], ~firstLeadingBit(46540u)), ~global3.x, global3.x), min(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 30u)], 79315u, global3.x), vec3<u32>(global3.x, global3.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(34340u, 30u)], 30u)]), vec3<u32>(global0[_wgslsmith_index_u32(30430u, 30u)], 56278u, 50280u)), vec3<u32>(global0[_wgslsmith_index_u32(global3.x, 30u)], global3.x, global3.x) | vec3<u32>(global0[_wgslsmith_index_u32(0u, 30u)], global3.x, global3.x)), min(vec3<u32>(global3.x, global3.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3.x, 30u)], 30u)]), vec3<u32>(0u, 13299u, 17023u)) & ~vec3<u32>(0u, global0[_wgslsmith_index_u32(global3.x, 30u)], global0[_wgslsmith_index_u32(0u, 30u)])), vec3<u32>(29333u, global3.x, global0[_wgslsmith_index_u32(1u, 30u)] >> (_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(42207u, 30u)], global0[_wgslsmith_index_u32(0u, 30u)]) % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, ~firstLeadingBit(vec4<u32>(_wgslsmith_div_u32(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3.x, 30u)], 30u)]), global3.x, 28820u, 28383u)));
}

