struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec3<f32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
}

struct Struct_4 {
    a: bool,
    b: vec4<u32>,
    c: Struct_1,
    d: u32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<f32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec3<u32>, 2> = array<vec3<u32>, 2>(vec3<u32>(11340u, 10409u, 0u), vec3<u32>(4294967295u, 4294967295u, 1u));

var<private> global2: array<vec2<f32>, 7>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(201f * -1058f))))) - -722f);
    var var_1 = u_input.c.x;
    let var_2 = select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(false, false), select(false, true, false)), select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), true)), true)), vec2<bool>(false, true), vec2<bool>(any(vec3<bool>(any(vec2<bool>(false, true)), true, true)), !(!all(vec2<bool>(true, true)))));
    var var_3 = vec2<u32>(reverseBits(~(~1u)), ~1u);
    var_3 = _wgslsmith_sub_vec2_u32(vec2<u32>(reverseBits(~var_3.x), _wgslsmith_dot_vec2_u32(~vec2<u32>(var_3.x, var_3.x), min(vec2<u32>(40471u, 4294967295u), vec2<u32>(16086u, var_3.x)))) & vec2<u32>(var_3.x, var_3.x), vec2<u32>(~(~12671u), ~var_3.x));
    return 58890u ^ max(0u, ~var_3.x >> (_wgslsmith_mult_u32(var_3.x, var_3.x) % 32u));
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: Struct_2, arg_3: bool) -> vec3<f32> {
    let var_0 = true;
    var var_1 = _wgslsmith_clamp_u32(arg_0, arg_2.b, func_3(vec2<i32>(abs(countOneBits(-11280i)), ~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.d, 14246i, 0i), vec3<i32>(-34004i, u_input.d, 0i)))));
    let var_2 = Struct_5(Struct_1(-_wgslsmith_clamp_i32(_wgslsmith_mult_i32(0i, 21807i), 9777i, _wgslsmith_clamp_i32(arg_2.d, arg_2.d, 12152i)), ~vec2<u32>(arg_2.b, 71659u) ^ countOneBits(~vec2<u32>(0u, 52909u)), reverseBits(arg_2.b), (~arg_0 ^ (arg_0 & arg_2.b)) & arg_0, select(select(vec3<bool>(false, arg_3, arg_3), select(vec3<bool>(arg_3, var_0, arg_3), vec3<bool>(false, true, false), vec3<bool>(false, false, arg_3)), vec3<bool>(arg_3, arg_3, false)), vec3<bool>(true, all(vec2<bool>(var_0, true)), !var_0), arg_2.c.x > _wgslsmith_f_op_f32(f32(-1f) * -518f))), Struct_2(-1i, func_3(vec2<i32>(-u_input.d, 1i >> (1u % 32u))), _wgslsmith_div_vec3_f32(arg_2.c, _wgslsmith_f_op_vec3_f32(-arg_2.c)), 2147483647i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.c.xz)), Struct_3(Struct_2(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(11129i, 1i, 2147483647i), ~30472i), (arg_2.b & arg_1) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, 32191u, 0u, 25454u), vec4<u32>(arg_2.b, arg_2.b, 17740u, 56027u)), _wgslsmith_f_op_vec3_f32(abs(arg_2.c)), abs(0i)), arg_2.c));
    var_1 = firstTrailingBit(39664u);
    let var_3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(958f, var_2.b.c.x) + _wgslsmith_f_op_f32(arg_2.c.x * var_2.b.c.x)), 1508f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1316f * 835f) * 1f), var_2.c.x), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(arg_2.c.x - 470f), _wgslsmith_div_f32(arg_2.c.x, arg_2.c.x), var_2.d.b.x, _wgslsmith_f_op_f32(var_2.b.c.x * arg_2.c.x)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(243f, -551f, arg_2.c.x, arg_2.c.x))), vec4<f32>(arg_2.c.x, -905f, var_2.c.x, arg_2.c.x))))), select(select(vec4<bool>(var_2.a.e.x, var_2.a.e.x, false, false), vec4<bool>(false, true, arg_3, var_0), arg_3), vec4<bool>(var_2.a.e.x, !arg_3, true, all(var_2.a.e.xy)), var_0)))));
    return _wgslsmith_f_op_vec3_f32(ceil(var_3.yyw));
}

fn func_2(arg_0: f32) -> Struct_2 {
    global2 = array<vec2<f32>, 7>();
    global0 = 1u;
    var var_0 = Struct_5(Struct_1(-273i, ~vec2<u32>(~71843u, ~0u), firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 32751u), vec2<u32>(19128u, 1u)) & ~16341u), firstLeadingBit(10083u), vec3<bool>(_wgslsmith_f_op_f32(-arg_0) < -957f, all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false)), true)), Struct_2(~reverseBits(abs(0i)), ~_wgslsmith_clamp_u32(0u, 4294967295u, 1u), _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_mult_u32(func_3(u_input.c.yz), 1u), 29746u, Struct_2(i32(-1i) * -1i, ~1u, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(749f, 765f, arg_0))), 1i), true)), min(-2147483647i, abs(0i))), _wgslsmith_div_vec2_f32(global2[_wgslsmith_index_u32(40679u, 7u)], vec2<f32>(468f, arg_0)), Struct_3(Struct_2(17486i, 51495u, vec3<f32>(arg_0, _wgslsmith_f_op_f32(arg_0 * 747f), arg_0), -select(u_input.d, -2715i, true)), vec3<f32>(arg_0, _wgslsmith_f_op_f32(-435f + arg_0), 397f)));
    var_0 = Struct_5(var_0.a, var_0.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.c + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(526f, arg_0)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(var_0.a.c, 7u)]))), var_0.d);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-312f)));
    return Struct_2(min(-5021i, 2147483647i), _wgslsmith_dot_vec2_u32(~(~var_0.a.b) ^ (vec2<u32>(0u, var_0.b.b) | ~vec2<u32>(var_0.a.d, 4710u)), _wgslsmith_div_vec2_u32(abs(select(vec2<u32>(1u, 4294967295u), vec2<u32>(var_0.a.c, 26940u), var_0.a.e.yx)), vec2<u32>(_wgslsmith_dot_vec2_u32(var_0.a.b, var_0.a.b), 1u))), vec3<f32>(var_0.b.c.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-var_1), var_0.a.e.x)))), arg_0), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(var_0.d.a.d, 780i), max(var_0.a.a, _wgslsmith_sub_i32(63908i, 0i)), -17277i), vec3<i32>(var_0.a.a, 0i, var_0.a.a)));
}

fn func_5(arg_0: Struct_2) -> u32 {
    var var_0 = 1u;
    var var_1 = Struct_5(Struct_1(2147483647i, _wgslsmith_mult_vec2_u32(abs(vec2<u32>(arg_0.b, 22150u)), vec2<u32>(arg_0.b, arg_0.b) & vec2<u32>(arg_0.b, arg_0.b)), 16876u, ~14469u, !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false), arg_0.b > arg_0.b)), arg_0, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(820f - 1800f)), _wgslsmith_f_op_f32(-arg_0.c.x)), arg_0.c.x), Struct_3(arg_0, arg_0.c));
    var var_2 = select(true, var_1.d.a.c.x < 1544f, ~var_1.d.a.a >= var_1.a.a);
    global0 = ~arg_0.b;
    var_2 = false;
    return ~var_1.a.b.x;
}

fn func_1() -> i32 {
    let var_0 = ~u_input.c.x;
    let var_1 = Struct_4(false, vec4<u32>(func_5(func_2(-1063f)), ~(~1u), min(1u, 1u), 1u), Struct_1(_wgslsmith_mod_i32(~_wgslsmith_mod_i32(var_0, var_0), 1i), firstTrailingBit(vec2<u32>(31480u, ~84379u)), 14039u, 1u, vec3<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false)), true, any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true)))), firstTrailingBit(countOneBits(1u)));
    global2 = array<vec2<f32>, 7>();
    let var_2 = var_1.a;
    let var_3 = -vec4<i32>(u_input.c.x, var_1.c.a, -(_wgslsmith_dot_vec3_i32(u_input.b.wzx, u_input.c) >> (select(var_1.b.x, var_1.c.d, var_1.c.e.x) % 32u)), -(~(~u_input.b.x)));
    return var_3.x;
}

fn func_6(arg_0: i32, arg_1: vec3<i32>, arg_2: u32, arg_3: vec4<u32>) -> StorageBuffer {
    let var_0 = -(~(vec4<i32>(~arg_0, ~u_input.d, max(4566i, arg_1.x), ~arg_0) >> (arg_3 % vec4<u32>(32u))));
    global2 = array<vec2<f32>, 7>();
    let var_1 = vec3<bool>(true, select(select(false, true, true), true, true) | true, true);
    global0 = _wgslsmith_add_u32(arg_2, _wgslsmith_mod_u32(1u, select(1u, arg_3.x, false)));
    let var_2 = false;
    return StorageBuffer(u_input.b, u_input.a, arg_3.zw, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-462f, 1119f, 118f) + vec3<f32>(-934f, 257f, -1091f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-2048f, 1234f, -224f) + vec3<f32>(-1480f, 647f, -1086f))) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-507f, -481f, 146f))))), ~select(firstTrailingBit(arg_3.wx), arg_3.zw, !vec2<bool>(var_2, var_2)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.zz;
    let x = u_input.a;
    s_output = func_6(func_1(), vec3<i32>(-1i) * -u_input.c, ~4294967295u, vec4<u32>(abs(~abs(65117u)), 1u, _wgslsmith_add_u32(0u, ~1u), 4294967295u));
}

