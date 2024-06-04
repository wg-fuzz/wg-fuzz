struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec4<bool>,
    d: u32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: u32,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_5 {
    a: vec3<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec2<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: array<i32, 6> = array<i32, 6>(2147483647i, -1i, 2147483647i, 40720i, -108150i, 2147483647i);

var<private> global2: Struct_5 = Struct_5(vec3<u32>(35518u, 4294967295u, 0u), 118291u);

var<private> global3: vec3<bool> = vec3<bool>(false, true, true);

var<private> global4: array<vec3<f32>, 1> = array<vec3<f32>, 1>(vec3<f32>(-248f, 814f, 1534f));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: vec2<u32>, arg_1: f32) -> u32 {
    var var_0 = vec3<bool>(global3.x, !any(vec3<bool>(true, global3.x, 0i >= u_input.a.x)), !any(!select(vec3<bool>(global3.x, false, true), vec3<bool>(global3.x, global3.x, true), vec3<bool>(global3.x, false, global3.x))));
    let var_1 = -57364i;
    var var_2 = Struct_2(-1722i);
    let var_3 = var_0.x;
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1013f + arg_1))), 696f)))), 1290f, -116f);
    return _wgslsmith_mult_u32(firstLeadingBit(abs(_wgslsmith_mult_u32(global2.a.x, arg_0.x))), ~firstTrailingBit(abs(4294967295u))) >> (~abs(arg_0.x) % 32u);
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_4) -> Struct_4 {
    let var_0 = 25176i;
    var var_1 = Struct_1(all(!arg_1.b.c), ~(~_wgslsmith_sub_vec4_u32(arg_1.b.b, ~vec4<u32>(0u, u_input.c, arg_1.b.d, global2.b))), vec4<bool>(false, !(!all(arg_1.b.c.xzw)), true, any(select(vec4<bool>(true, global3.x, true, global3.x), select(vec4<bool>(true, false, arg_1.b.c.x, true), vec4<bool>(true, true, false, arg_0.x), true), any(vec4<bool>(arg_1.b.c.x, true, arg_1.b.c.x, arg_0.x))))), func_3(select(_wgslsmith_mod_vec2_u32(~vec2<u32>(arg_1.b.d, 9417u), _wgslsmith_sub_vec2_u32(arg_1.b.b.zz, vec2<u32>(global2.a.x, u_input.c))), global2.a.xz | ~arg_1.b.b.zz, !arg_0), arg_1.a.x), vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_1.b.e.x, 1i, arg_1.b.e.x), arg_1.b.e) & _wgslsmith_clamp_vec3_i32(u_input.b.wzx, u_input.b.xxw, u_input.b.yzw), u_input.b.xzw >> ((global2.a << (vec3<u32>(48832u, arg_1.b.d, 636u) % vec3<u32>(32u))) % vec3<u32>(32u))), -17707i, firstTrailingBit(26308i)));
    global2 = Struct_5(_wgslsmith_mod_vec3_u32(vec3<u32>(min(1u, _wgslsmith_dot_vec4_u32(arg_1.b.b, vec4<u32>(65884u, 65930u, global2.b, u_input.c))), _wgslsmith_sub_u32(~u_input.c, 1u), 1u), global2.a), 24683u);
    let var_2 = vec2<bool>(false, all(!var_1.c.yyz));
    global4 = array<vec3<f32>, 1>();
    return arg_1;
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: u32) -> Struct_3 {
    global0 = u_input.b.x;
    var var_0 = func_2(!(!select(vec2<bool>(true, true), !vec2<bool>(arg_1.e.c.x, false), arg_1.e.a)), Struct_4(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_1.a)), _wgslsmith_f_op_f32(sign(arg_1.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b - -920f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) * arg_1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -916f))), Struct_1(true, firstTrailingBit(~arg_1.e.b), select(!arg_1.e.c, select(vec4<bool>(false, arg_1.e.c.x, true, true), arg_1.e.c, false), false || arg_1.e.a), global2.a.x, u_input.b.xzw)));
    return Struct_3(_wgslsmith_f_op_f32(abs(-565f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-377f)), _wgslsmith_f_op_f32(f32(-1f) * -1067f))), 1202f)), ~(~((u_input.c & 278u) << (~arg_2 % 32u))), arg_1.d, func_2(arg_1.e.c.zy, Struct_4(vec4<f32>(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(trunc(-1294f)), _wgslsmith_f_op_f32(var_0.a.x + -387f), _wgslsmith_f_op_f32(select(var_0.a.x, var_0.a.x, false))), arg_1.e)).b);
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: i32) -> bool {
    var var_0 = arg_0.a;
    var_0 = arg_0.b;
    let var_1 = arg_0.e.b;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-581f + -984f)) + _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_0.a, -148f), _wgslsmith_f_op_f32(abs(673f)), func_1(1i, arg_0, 22563u).e.c.x)))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1873f + _wgslsmith_div_f32(func_2(arg_0.e.c.xw, Struct_4(vec4<f32>(1000f, 1155f, arg_0.a, -2541f), arg_0.e)).a.x, _wgslsmith_f_op_f32(sign(857f)))), _wgslsmith_f_op_f32(-var_2.x), arg_0.b));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x * -1581f)) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x))), _wgslsmith_f_op_f32(var_3.x - var_3.x));
}

fn func_5(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: vec3<bool>) -> Struct_4 {
    let var_0 = func_1(u_input.b.x, Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-294f, -1000f)) * _wgslsmith_f_op_f32(-1137f + _wgslsmith_f_op_f32(ceil(-261f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(576f, 620f))) - _wgslsmith_f_op_f32(f32(-1f) * -1483f)), 1u, func_1(0i, func_1(_wgslsmith_mult_i32(1i, global1[_wgslsmith_index_u32(arg_1.x, 6u)]), Struct_3(836f, -441f, u_input.c, Struct_2(global1[_wgslsmith_index_u32(20117u, 6u)]), Struct_1(global3.x, vec4<u32>(1u, arg_1.x, global2.a.x, u_input.c), vec4<bool>(global3.x, false, arg_2.x, global3.x), arg_1.x, u_input.b.yzw)), global2.b), 19284u).d, func_1(abs(global1[_wgslsmith_index_u32(abs(4294967295u), 6u)]), func_1(func_2(vec2<bool>(global3.x, global3.x), Struct_4(vec4<f32>(476f, 501f, 578f, 1000f), Struct_1(false, vec4<u32>(arg_1.x, u_input.c, 1u, arg_1.x), vec4<bool>(false, true, arg_2.x, true), 0u, vec3<i32>(global1[_wgslsmith_index_u32(arg_1.x, 6u)], u_input.b.x, u_input.b.x)))).b.e.x, Struct_3(834f, 2069f, 0u, Struct_2(-1i), Struct_1(false, vec4<u32>(u_input.c, 25391u, 33699u, global2.b), vec4<bool>(true, false, global3.x, false), 0u, vec3<i32>(arg_0.x, 0i, 71305i))), 1855u | global2.b), _wgslsmith_add_u32(1u, arg_1.x << (71088u % 32u))).e), global2.b).e;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(868f, -866f))));
    global4 = array<vec3<f32>, 1>();
    global3 = arg_2;
    var var_2 = Struct_5(func_1(_wgslsmith_add_i32(arg_0.x, ~global1[_wgslsmith_index_u32(~8923u, 6u)]), func_1(global1[_wgslsmith_index_u32(1u, 6u)], Struct_3(_wgslsmith_div_f32(var_1, var_1), var_1, arg_1.x, Struct_2(arg_0.x), var_0), ~min(1u, 69530u)), ~8670u).e.b.yzz, func_2(vec2<bool>(any(!var_0.c), true && !global3.x), func_2(func_2(!vec2<bool>(false, arg_2.x), func_2(var_0.c.zz, Struct_4(vec4<f32>(var_1, var_1, -928f, var_1), Struct_1(global3.x, vec4<u32>(4294967295u, var_0.b.x, 17850u, 1u), var_0.c, var_0.b.x, var_0.e)))).b.c.yw, func_2(var_0.c.zy, Struct_4(vec4<f32>(-1025f, 1093f, 443f, -265f), Struct_1(global3.x, vec4<u32>(arg_1.x, arg_1.x, 0u, arg_1.x), vec4<bool>(false, true, true, arg_2.x), 0u, var_0.e))))).b.d);
    return Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(var_1, 496f, true)), var_1, _wgslsmith_div_f32(-169f, var_1), var_1) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, 1386f, var_1))) + vec4<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(select(-2713f, _wgslsmith_f_op_f32(min(var_1, var_1)), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(282f + 1821f) + -1310f), -2079f)), func_2(!func_2(func_2(global3.yz, Struct_4(vec4<f32>(-1014f, 811f, -1040f, var_1), Struct_1(false, vec4<u32>(var_0.b.x, 2729u, 28828u, 0u), vec4<bool>(global3.x, arg_2.x, arg_2.x, true), 0u, u_input.b.xyw))).b.c.xw, func_2(vec2<bool>(false, true), Struct_4(vec4<f32>(var_1, -512f, var_1, var_1), Struct_1(true, vec4<u32>(44651u, global2.b, u_input.c, arg_1.x), vec4<bool>(var_0.a, var_0.c.x, false, arg_2.x), 4294967295u, arg_0)))).b.c.yw, func_2(!func_2(var_0.c.wx, Struct_4(vec4<f32>(1739f, var_1, 927f, var_1), var_0)).b.c.yw, Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, -1000f, -529f)), var_0))).b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(firstLeadingBit(u_input.b.yxw << (global2.a % vec3<u32>(32u))), firstLeadingBit(vec3<u32>(u_input.c, ~1u, 0u) & _wgslsmith_sub_vec3_u32(vec3<u32>(71222u, u_input.c, global2.a.x), firstTrailingBit(vec3<u32>(3403u, 43381u, global2.a.x)))), vec3<bool>(global3.x, !any(select(global3.yx, global3.yx, global3.zy)), func_4(func_1(global1[_wgslsmith_index_u32(global2.b, 6u)], Struct_3(-1494f, 2151f, 54540u, Struct_2(0i), Struct_1(global3.x, vec4<u32>(global2.a.x, global2.b, global2.a.x, u_input.c), vec4<bool>(false, true, false, global3.x), 1u, vec3<i32>(global1[_wgslsmith_index_u32(20580u, 6u)], u_input.a.x, -33993i))), 19488u << (1u % 32u)), 1u, 1i)));
    var var_1 = var_0.b;
    var_1 = Struct_1(var_1.a, _wgslsmith_mult_vec4_u32(~_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.c, 42351u, 72621u, 97917u), firstLeadingBit(vec4<u32>(118625u, global2.a.x, var_1.b.x, 57028u))), select(vec4<u32>(var_1.d, u_input.c << (1u % 32u), _wgslsmith_mult_u32(40786u, var_0.b.d), _wgslsmith_mod_u32(35261u, u_input.c)), vec4<u32>(30205u, var_1.d, ~var_1.b.x, _wgslsmith_mult_u32(33531u, 0u)), !vec4<bool>(true, true, var_1.c.x, true))), var_1.c, ~var_1.b.x, vec3<i32>(-33553i, -4589i, 0i));
    let var_2 = _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(-global1[_wgslsmith_index_u32(u_input.c, 6u)], var_0.b.e.x << (u_input.c % 32u)), u_input.b.zw), ~global1[_wgslsmith_index_u32(~(var_0.b.b.x >> (global2.b % 32u)) ^ abs(var_1.b.x), 6u)]);
    var var_3 = var_1.b.zxz;
    var_3 = vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 21169u, _wgslsmith_add_u32(var_0.b.d, u_input.c), global2.b), var_0.b.b), ~(~0u), ~func_2(!var_1.c.zx, var_0).b.d);
    global0 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(~var_3.x, firstLeadingBit(~0u)), var_1.b, _wgslsmith_mult_vec4_i32(u_input.b, _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(u_input.b, abs(vec4<i32>(var_1.e.x, var_0.b.e.x, -18046i, u_input.b.x))), ~min(u_input.b, u_input.b))), var_0.a.xz, _wgslsmith_div_vec2_i32(var_0.b.e.zy >> (~_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, var_3.x), vec2<u32>(46108u, 4294967295u)) % vec2<u32>(32u)), select(firstLeadingBit(~var_1.e.xy), firstLeadingBit(select(vec2<i32>(8263i, -2147483647i), vec2<i32>(var_0.b.e.x, var_0.b.e.x), global3.xx)), !(!global3.xz))));
}

