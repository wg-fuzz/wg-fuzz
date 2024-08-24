struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(1u, 735f), Struct_1(96381u, -225f), vec3<f32>(-1140f, 1453f, 1649f));

var<private> global1: array<Struct_1, 7>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<bool>, arg_1: i32, arg_2: vec4<bool>) -> f32 {
    let var_0 = ~u_input.d;
    global0 = Struct_2(Struct_1(u_input.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -865f))))), Struct_1(countOneBits(_wgslsmith_clamp_u32(1u, global0.a.a, u_input.e.x)) & 7671u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.b) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1097f) - _wgslsmith_f_op_f32(trunc(global0.a.b))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.b.b, -743f, global0.b.b)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-188f, 946f, 1073f) - global0.c)) * _wgslsmith_f_op_vec3_f32(trunc(global0.c)))));
    let var_1 = ~(u_input.e.x ^ u_input.e.x);
    global0 = Struct_2(global1[_wgslsmith_index_u32(global0.a.a, 7u)], Struct_1(9852u, -467f), _wgslsmith_f_op_vec3_f32(-global0.c));
    global1 = array<Struct_1, 7>();
    return _wgslsmith_f_op_f32(global0.a.b - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.a.b, 440f))));
}

fn func_2(arg_0: u32, arg_1: vec2<f32>, arg_2: i32) -> Struct_1 {
    var var_0 = Struct_3(_wgslsmith_mult_u32(~13131u, ~u_input.e.x), Struct_1(~(~(~73045u)), global0.c.x));
    global0 = Struct_2(Struct_1(11724u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1320f) + var_0.b.b)), Struct_1(_wgslsmith_add_u32(min(var_0.b.a, _wgslsmith_sub_u32(1u, var_0.a)), ~_wgslsmith_add_u32(u_input.e.x, 16154u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * 1f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1281f, _wgslsmith_f_op_f32(func_3(vec2<bool>(false, false), 0i ^ u_input.a, select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-316f)), 497f)))));
    global0 = Struct_2(Struct_1(min(global0.a.a, _wgslsmith_div_u32(0u, arg_0)), _wgslsmith_f_op_f32(arg_1.x - global0.a.b)), global1[_wgslsmith_index_u32(1u, 7u)], vec3<f32>(-1372f, 378f, -1000f));
    let var_1 = (all(vec2<bool>(any(vec4<bool>(true, false, true, true)), all(vec2<bool>(true, false)))) && true) != !(true || (_wgslsmith_f_op_f32(var_0.b.b * 1804f) < 1093f));
    var_0 = Struct_3(global0.a.a & _wgslsmith_dot_vec4_u32(u_input.e, ~vec4<u32>(35290u, var_0.a, 0u, var_0.b.a)), global1[_wgslsmith_index_u32(72951u, 7u)]);
    return Struct_1(u_input.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -939f), -361f))));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec4<bool>) -> vec2<bool> {
    let var_0 = Struct_3(~(~_wgslsmith_sub_u32(arg_1.b.a, 0u)), func_2(func_2(arg_0 << (firstTrailingBit(u_input.e.x) % 32u), arg_1.c.xy, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, u_input.b, -1i, -6808i), vec4<i32>(-38931i, u_input.c, u_input.b, u_input.a)) ^ u_input.c).a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1397f, 516f), global0.c.yz))), 1i));
    var var_1 = abs(countOneBits(_wgslsmith_add_vec2_i32((vec2<i32>(u_input.a, 20291i) >> (u_input.e.wy % vec2<u32>(32u))) | vec2<i32>(2147483647i, -1i), vec2<i32>(15847i, u_input.a))));
    var var_2 = global1[_wgslsmith_index_u32(~max(_wgslsmith_sub_u32(4294967295u, global0.b.a) >> (global0.a.a % 32u), ~arg_0) & global0.a.a, 7u)];
    global1 = array<Struct_1, 7>();
    let var_3 = var_0;
    return vec2<bool>(true, arg_2.x);
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    global1 = array<Struct_1, 7>();
    global1 = array<Struct_1, 7>();
    let var_0 = _wgslsmith_f_op_f32(-1566f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-994f)), global0.a.b)));
    let var_1 = all(select(func_4(u_input.e.x, Struct_2(func_2(u_input.e.x, global0.c.xy, u_input.d), func_2(42320u, vec2<f32>(arg_0.b, var_0), 0i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1302f, -1194f, var_0))), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false))), func_4(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.e.yz, vec2<u32>(u_input.e.x, global0.a.a)), ~4294967295u), Struct_2(Struct_1(44473u, arg_0.b), global0.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.b, -625f, -1602f))), vec4<bool>(true, true, any(vec2<bool>(false, true)), 7118i >= u_input.c)), !select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(false, true), true)));
    let var_2 = select(vec2<i32>(-11917i ^ u_input.d, u_input.d), min((vec2<i32>(u_input.a, -37910i) ^ vec2<i32>(u_input.d, 1i)) ^ _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.d, u_input.c), vec2<i32>(-2147483647i, u_input.d)), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.b, 2147483647i)), 2147483647i)) & vec2<i32>(u_input.c ^ _wgslsmith_add_i32(u_input.c, 0i), select(u_input.a << (37768u % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, -25932i), vec2<i32>(u_input.d, 4500i)), var_1)), vec2<bool>(true, !var_1));
    return Struct_2(func_2(u_input.e.x, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.c.x, global0.c.x) + -1419f), 476f), -_wgslsmith_mod_i32(0i & var_2.x, -2147483647i)), Struct_1(_wgslsmith_mult_u32(~func_2(global0.a.a, vec2<f32>(arg_0.b, -2016f), var_2.x).a, func_2(firstTrailingBit(global0.a.a), vec2<f32>(-941f, -249f), ~(-1i)).a), 2093f), global0.c);
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec4<i32>) -> Struct_2 {
    return func_1(func_2(1u, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(105f)))), abs(-12539i)));
}

fn func_6(arg_0: Struct_2) -> vec3<f32> {
    var var_0 = ~abs(vec4<i32>(0i, u_input.c, countOneBits(u_input.b), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, u_input.b), vec2<i32>(-15337i, -3683i))) >> (~u_input.e % vec4<u32>(32u)));
    global0 = func_5(~1u, func_5(arg_0.b.a, arg_0, Struct_3(abs(27559u), arg_0.b), ~countOneBits(~vec4<i32>(var_0.x, 176i, -8286i, u_input.b))), Struct_3(4294967295u, Struct_1(func_2(_wgslsmith_dot_vec3_u32(vec3<u32>(48396u, global0.a.a, arg_0.a.a), u_input.e.xzy), arg_0.c.zy, -45705i).a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-274f, 262f) - global0.c.x))), ~reverseBits((vec4<i32>(var_0.x, -44535i, u_input.b, 4360i) << (vec4<u32>(global0.b.a, arg_0.a.a, arg_0.b.a, u_input.e.x) % vec4<u32>(32u))) & vec4<i32>(var_0.x, 1i, u_input.b, 29890i)));
    var_0 = vec4<i32>(min(_wgslsmith_dot_vec3_i32(countOneBits(var_0.www), vec3<i32>(-12424i, 1i, u_input.c)) << (func_5(1u, Struct_2(arg_0.a, arg_0.b, arg_0.c), Struct_3(global0.a.a, arg_0.b), select(vec4<i32>(-10582i, 3729i, 0i, var_0.x), vec4<i32>(var_0.x, 0i, var_0.x, 1i), vec4<bool>(false, true, false, false))).a.a % 32u), -_wgslsmith_sub_i32(~var_0.x, u_input.d ^ -1i)), ~max(-9309i, -58434i) << (0u % 32u), u_input.d | firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, var_0.x), vec2<i32>(0i, u_input.d))), _wgslsmith_mod_i32(u_input.a, _wgslsmith_clamp_i32(max(u_input.d, u_input.d), _wgslsmith_dot_vec4_i32(vec4<i32>(6747i, u_input.d, 49731i, var_0.x), vec4<i32>(var_0.x, 1i, u_input.a, u_input.a)) & (-32849i & u_input.a), -46939i)));
    let var_1 = select(select(!(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false)), select(vec3<bool>(func_4(global0.b.a, Struct_2(Struct_1(global0.b.a, 1050f), Struct_1(u_input.e.x, global0.a.b), vec3<f32>(arg_0.a.b, 468f, 230f)), vec4<bool>(true, false, false, true)).x, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), global0.b.a <= 3288u), true), select(vec3<bool>(func_4(u_input.e.x, arg_0, vec4<bool>(true, true, true, true)).x, false, any(vec3<bool>(false, false, false))), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false))))), select(vec3<bool>(any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), false)), all(vec2<bool>(true, true)), _wgslsmith_dot_vec2_u32(u_input.e.xx, u_input.e.xx) == u_input.e.x), vec3<bool>(func_4(arg_0.a.a, Struct_2(Struct_1(1u, -250f), global0.b, arg_0.c), vec4<bool>(true, true, false, false)).x & true, any(vec4<bool>(false, false, false, false)), false), !select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), vec3<bool>(false, false, true), func_4(18835u, Struct_2(arg_0.b, arg_0.a, global0.c), vec4<bool>(true, true, false, false)).x)), false);
    var var_2 = Struct_3(u_input.e.x, Struct_1(max(abs(u_input.e.x), 4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x))));
    return _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.b.b, -900f, global0.b.b), _wgslsmith_f_op_vec3_f32(arg_0.c - vec3<f32>(-1027f, var_2.b.b, var_2.b.b)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.c * vec3<f32>(-1807f, global0.c.x, global0.c.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.x, 699f, var_2.b.b) * arg_0.c)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.c.yx), vec2<f32>(242f, global0.c.x)) - global0.c.zy));
    let var_1 = -782f;
    var var_2 = vec4<bool>(any(vec4<bool>(866f < _wgslsmith_f_op_f32(trunc(var_1)), true, any(select(vec2<bool>(true, false), vec2<bool>(true, true), false)), true)), all(vec2<bool>(true, false)), true, false);
    let var_3 = _wgslsmith_f_op_vec3_f32(func_6(func_5(~(global0.b.a | global0.b.a), func_1(global1[_wgslsmith_index_u32(51896u >> (firstTrailingBit(0u) % 32u), 7u)]), Struct_3(u_input.e.x, func_1(global0.b).b), -abs(vec4<i32>(-2147483647i, u_input.a, u_input.d, -50247i) | vec4<i32>(u_input.c, u_input.a, u_input.a, u_input.b)))));
    let var_4 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-1083f))));
    let var_5 = Struct_3(_wgslsmith_add_u32(u_input.e.x, firstLeadingBit(23386u)), Struct_1(~u_input.e.x, var_3.x));
    var var_6 = ~_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(0u, 16014u, 4294967295u) << (u_input.e.xyz % vec3<u32>(32u)), ~vec3<u32>(149331u, var_5.a, var_5.a)), ~countOneBits(u_input.e.yyx >> (vec3<u32>(u_input.e.x, u_input.e.x, global0.a.a) % vec3<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_div_vec2_u32(firstTrailingBit(var_6.yy), u_input.e.yx), -reverseBits(vec3<i32>(u_input.b, u_input.d, u_input.b) << ((vec3<u32>(1u, 4294967295u, 6935u) >> (vec3<u32>(9396u, 1u, var_5.a) % vec3<u32>(32u))) % vec3<u32>(32u))), firstTrailingBit(select(max(abs(vec4<i32>(-26431i, u_input.b, -81061i, u_input.b)), vec4<i32>(u_input.a, 29963i, u_input.c, u_input.a)), -(vec4<i32>(-45858i, u_input.b, u_input.a, u_input.d) & vec4<i32>(-1i, u_input.c, -1i, u_input.d)), vec4<bool>(true, true, !var_2.x, u_input.c != -2147483647i))));
}

