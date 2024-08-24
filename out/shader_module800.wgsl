struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: vec4<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -322f;

var<private> global1: array<i32, 15> = array<i32, 15>(-1i, i32(-2147483648), 0i, 1i, -54292i, 37064i, -8921i, 12737i, 43056i, 34923i, 12629i, -5946i, 16100i, 2147483647i, 2147483647i);

var<private> global2: vec2<f32>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: vec4<bool>) -> vec2<u32> {
    let var_0 = Struct_4(Struct_1(0u, max(~vec3<u32>(16437u, 15978u, 4294967295u), vec3<u32>(1u, 1u, 1u)) | select(~vec3<u32>(34112u, 6117u, 21883u), vec3<u32>(1u, 1u, 1u), select(vec3<bool>(true, arg_1.x, arg_1.x), vec3<bool>(true, arg_1.x, arg_1.x), true)), 2147483647i, vec3<f32>(global2.x, -656f, -673f)), Struct_1(_wgslsmith_mod_u32(abs(~1u), 27007u), firstTrailingBit(vec3<u32>(1u, 1u, 1u)), -_wgslsmith_clamp_i32(-arg_0, 0i, countOneBits(3771i)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1599f, global2.x, global2.x))))))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(sign(var_0.b.d.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.d.x - 2270f) * _wgslsmith_f_op_f32(-global2.x)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-332f + -936f) * _wgslsmith_f_op_f32(-global2.x)), -1200f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a.d.xz) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, var_0.a.d.x) + _wgslsmith_f_op_vec2_f32(-var_0.a.d.xz)))));
    var var_2 = Struct_2(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.a, 49391u, _wgslsmith_div_u32(var_0.a.b.x, _wgslsmith_add_u32(var_0.b.a, 16381u))), var_0.b.b), var_0.b, Struct_1(~var_0.b.a, max(reverseBits(vec3<u32>(var_0.b.a, 42893u, var_0.b.b.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, var_0.b.b.x, 4294967295u) << (var_0.b.b % vec3<u32>(32u)), ~var_0.b.b, var_0.b.b)), -18666i, _wgslsmith_f_op_vec3_f32(var_0.a.d * var_0.a.d)), _wgslsmith_clamp_u32(_wgslsmith_add_u32(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.b.b.x, 1u, var_0.b.b.x), vec4<u32>(var_0.a.a, var_0.a.a, var_0.a.b.x, 1u))), ~21944u), abs(select(var_0.b.b.x, 112201u, 2055f == var_1.x)), 23395u), _wgslsmith_mult_vec4_u32(vec4<u32>(reverseBits(0u), var_0.a.a, ~1u, var_0.a.a), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(38434u, 1u, 4294967295u, 0u), vec4<u32>(30657u, 1u, var_0.b.b.x, var_0.a.b.x)))));
    var var_3 = false;
    return vec2<u32>(var_2.e.x, var_0.a.a);
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_2(_wgslsmith_mod_u32(17374u, _wgslsmith_dot_vec2_u32(func_3(max(1i, 2147483647i), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true))), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), func_3(global1[_wgslsmith_index_u32(66101u, 15u)], vec4<bool>(false, true, true, true))))), Struct_1(reverseBits(~max(1u, 4294967295u)), vec3<u32>(1u, 1u, 1u), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(min(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(1u, 0u), vec2<u32>(1u, 40735u)), vec2<u32>(4294967295u, 28666u)), vec2<u32>(1u, 1u)), 15u)], vec3<f32>(global2.x, _wgslsmith_f_op_f32(round(354f)), _wgslsmith_f_op_f32(select(-2715f, _wgslsmith_f_op_f32(trunc(global2.x)), true)))), Struct_1(~(_wgslsmith_clamp_u32(82735u, 16225u, 4294967295u) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(67253u, 0u, 10657u), vec3<u32>(7662u, 35056u, 4318u)) % 32u)), vec3<u32>(1u, countOneBits(_wgslsmith_mod_u32(4817u, 1u)), 1u), _wgslsmith_dot_vec2_i32(~abs(vec2<i32>(0i, 37532i)), vec2<i32>(u_input.a, u_input.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(722f, global2.x, global2.x) - vec3<f32>(global2.x, -241f, global2.x))))), 1u, ~(~vec4<u32>(~0u, 1u, ~4294967295u, _wgslsmith_mult_u32(23322u, 39086u))));
    var var_1 = Struct_2(~(~_wgslsmith_dot_vec4_u32(max(var_0.e, var_0.e), vec4<u32>(var_0.e.x, 11953u, var_0.a, 37700u))), Struct_1(var_0.d, ~countOneBits(~vec3<u32>(var_0.a, 2970u, var_0.b.b.x)), min(global1[_wgslsmith_index_u32(4294967295u & var_0.d, 15u)], _wgslsmith_clamp_i32(-2147483647i, u_input.a, var_0.c.c)) | max(-var_0.b.c, _wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(1u, 15u)], global1[_wgslsmith_index_u32(2533u, 15u)], -29343i, 1i), vec4<i32>(var_0.b.c, 1i, var_0.c.c, var_0.c.c))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_0.c.d), _wgslsmith_f_op_vec3_f32(sign(var_0.c.d)), true))))), var_0.c, 1u, var_0.e);
    global1 = array<i32, 15>();
    global1 = array<i32, 15>();
    global1 = array<i32, 15>();
    return Struct_3(firstLeadingBit(select(_wgslsmith_clamp_vec2_u32(max(vec2<u32>(var_0.d, 0u), vec2<u32>(var_1.a, 22444u)), vec2<u32>(13643u, var_0.a), ~vec2<u32>(var_1.a, 5389u)), var_0.c.b.yx, select(select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(true, true), vec2<bool>(true, true)))));
}

fn func_1() -> u32 {
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -430f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-402f, 605f) + vec2<f32>(1933f, -363f)) + vec2<f32>(243f, global2.x)), any(vec2<bool>(true, true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, 1000f) - vec2<f32>(-1002f, -176f)), _wgslsmith_div_vec2_f32(vec2<f32>(global2.x, global2.x), vec2<f32>(-451f, 392f)), false))))));
    let var_0 = _wgslsmith_add_i32(min(u_input.a ^ ~17482i, _wgslsmith_add_i32(2147483647i, ~u_input.a)) & _wgslsmith_mod_i32(-2147483647i, firstTrailingBit(~global1[_wgslsmith_index_u32(0u, 15u)])), 1i);
    global1 = array<i32, 15>();
    let var_1 = func_2();
    let var_2 = any(select(vec4<bool>(true, false, global2.x >= _wgslsmith_f_op_f32(select(2203f, -264f, true)), !any(vec2<bool>(true, true))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), any(vec4<bool>(true, true, true, true))), true));
    return ~(~var_1.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(~(~(~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 13513u), vec2<u32>(4294967295u, 4294967295u)))));
    global2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x + 387f) - _wgslsmith_f_op_f32(global2.x + -402f)))), 1796f);
    var var_1 = _wgslsmith_div_u32(~_wgslsmith_mod_u32(var_0.a.x, func_1()), countOneBits(min(var_0.a.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 35798u, 1u), vec3<u32>(var_0.a.x, 1u, var_0.a.x)))));
    let var_2 = Struct_2(22651u, Struct_1(var_0.a.x, _wgslsmith_div_vec3_u32(vec3<u32>(~30471u, var_0.a.x, var_0.a.x), vec3<u32>(var_0.a.x, min(var_0.a.x, var_0.a.x), _wgslsmith_mult_u32(52516u, 1u))), global1[_wgslsmith_index_u32(0u, 15u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(198f, global2.x, global2.x))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global2.x, 1034f) - vec3<f32>(1225f, -781f, global2.x))))), Struct_1(0u, _wgslsmith_mod_vec3_u32(~firstTrailingBit(vec3<u32>(var_0.a.x, var_0.a.x, 45085u)), max(vec3<u32>(var_0.a.x, var_0.a.x, 50394u), ~vec3<u32>(4294967295u, var_0.a.x, 1u))), u_input.a, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, global2.x)), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1505f, global2.x))))), var_0.a.x, _wgslsmith_div_vec4_u32(~(~vec4<u32>(var_0.a.x, var_0.a.x, 4294967295u, var_0.a.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(~var_0.a.x, func_1(), func_3(u_input.a, vec4<bool>(false, false, false, false)).x, var_0.a.x | 1u), max(max(vec4<u32>(49623u, var_0.a.x, var_0.a.x, var_0.a.x), vec4<u32>(4294967295u, 4655u, var_0.a.x, 1u)), vec4<u32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x)))));
    let var_3 = var_2;
    global1 = array<i32, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(var_2.c.d, var_3.c.d)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b.d.x, global2.x, 1977f)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_3.b.d.x, var_3.c.d.x, var_3.b.d.x))))) + vec3<f32>(var_2.b.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(608f - -1002f)), global2.x)));
}

