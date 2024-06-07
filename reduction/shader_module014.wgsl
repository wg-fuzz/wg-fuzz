struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: f32,
    d: bool,
}

struct Struct_4 {
    a: f32,
    b: vec2<bool>,
    c: vec3<f32>,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 9> = array<bool, 9>(true, true, true, true, true, false, false, true, false);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_2) -> vec2<u32> {
    let var_0 = Struct_3(arg_2.c.yx, !select(arg_2.e.c, select(vec4<bool>(global0[_wgslsmith_index_u32(arg_2.a, 9u)], true, false, false), arg_0, global0[_wgslsmith_index_u32(arg_1, 9u)]), true), _wgslsmith_f_op_f32(-arg_2.e.b.x), all(vec3<bool>(!(!arg_2.e.c.x), false, false)));
    global0 = array<bool, 9>();
    global0 = array<bool, 9>();
    var var_1 = max(-(-_wgslsmith_dot_vec4_i32(vec4<i32>(59989i, arg_2.b.x, arg_2.b.x, 1i), vec4<i32>(arg_2.b.x, -1i, u_input.a, 41291i)) | -_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -1i, 12182i, -2448i), vec4<i32>(-1i, u_input.a, 4662i, -14197i))), 11163i);
    var var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(1261f)), _wgslsmith_f_op_f32(trunc(721f))))), _wgslsmith_f_op_f32(ceil(-115f))), vec4<f32>(var_0.c, -253f, var_0.c, 1f), select(vec4<bool>(arg_2.b.x >= _wgslsmith_mod_i32(u_input.a, arg_2.b.x), true, false, reverseBits(arg_1) < _wgslsmith_mult_u32(var_0.a.x, var_0.a.x)), vec4<bool>(global0[_wgslsmith_index_u32(~arg_1, 9u)], global0[_wgslsmith_index_u32(4294967295u, 9u)] | false, false, any(select(var_0.b.xz, arg_0.yw, true))), arg_0.x));
    return vec2<u32>(_wgslsmith_mod_u32(var_0.a.x, ~_wgslsmith_add_u32(var_0.a.x, arg_1) | ~4294967295u), _wgslsmith_mult_u32(~(~37014u), _wgslsmith_add_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(10830u, var_0.a.x, var_0.a.x), arg_2.c), ~var_0.a.x), 68438u)));
}

fn func_2() -> vec2<bool> {
    global0 = array<bool, 9>();
    let var_0 = Struct_3(_wgslsmith_mod_vec2_u32(func_3(select(select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 9u)], global0[_wgslsmith_index_u32(0u, 9u)], true, global0[_wgslsmith_index_u32(1u, 9u)]), vec4<bool>(global0[_wgslsmith_index_u32(1u, 9u)], global0[_wgslsmith_index_u32(21943u, 9u)], false, global0[_wgslsmith_index_u32(4294967295u, 9u)]), false), select(vec4<bool>(global0[_wgslsmith_index_u32(26319u, 9u)], global0[_wgslsmith_index_u32(1u, 9u)], true, global0[_wgslsmith_index_u32(35008u, 9u)]), vec4<bool>(global0[_wgslsmith_index_u32(17850u, 9u)], true, false, global0[_wgslsmith_index_u32(28529u, 9u)]), vec4<bool>(true, false, false, false)), vec4<bool>(true, global0[_wgslsmith_index_u32(7393u, 9u)], true, global0[_wgslsmith_index_u32(98159u, 9u)])), 1u, Struct_2(835u, ~vec2<i32>(0i, u_input.a), ~vec3<u32>(141305u, 0u, 0u), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1202f, -893f))), Struct_1(-1641f, vec4<f32>(-910f, 1598f, 2072f, 1701f), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 9u)], false, true, global0[_wgslsmith_index_u32(1u, 9u)])))), vec2<u32>(17099u, firstLeadingBit(~61980u))), !(!vec4<bool>(!global0[_wgslsmith_index_u32(68426u, 9u)], any(vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 9u)], global0[_wgslsmith_index_u32(4294967295u, 9u)], false)), true, all(vec4<bool>(false, global0[_wgslsmith_index_u32(38892u, 9u)], false, false)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -878f), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-602f, 504f), _wgslsmith_f_op_f32(f32(-1f) * -557f))))), _wgslsmith_f_op_f32(step(-1416f, 1000f)))), true);
    var var_1 = firstTrailingBit(-32014i);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-var_0.c), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.c + var_0.c))), var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-438f + var_0.c)))), _wgslsmith_f_op_f32(var_0.c - 349f)), var_0.b);
    let var_3 = _wgslsmith_div_vec2_i32(select(firstTrailingBit(vec2<i32>(firstLeadingBit(-1i), 0i)), vec2<i32>(-1i) * -vec2<i32>(17475i, 0i), vec2<bool>(true, _wgslsmith_f_op_f32(1859f - var_0.c) == -1892f)), select(countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(-6871i, -44410i), vec2<i32>(u_input.a, -1i))), firstTrailingBit(firstTrailingBit(vec2<i32>(u_input.a, 0i))), (i32(-1i) * -2147483647i) < abs(u_input.a)) ^ vec2<i32>(countOneBits(-46954i), select(~(-11815i), _wgslsmith_clamp_i32(-19654i, 0i, 17003i), var_0.c > -1000f)));
    return vec2<bool>(7964u != _wgslsmith_dot_vec3_u32(abs(~vec3<u32>(4294967295u, 16188u, 4294967295u)), vec3<u32>(var_0.a.x, reverseBits(var_0.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_0.a.x, 30672u, var_0.a.x), vec4<u32>(var_0.a.x, var_0.a.x, 11285u, 0u)))), !global0[_wgslsmith_index_u32(var_0.a.x, 9u)]);
}

fn func_1() -> vec3<f32> {
    let var_0 = select(func_2(), func_2(), !any(!select(vec4<bool>(true, global0[_wgslsmith_index_u32(19826u, 9u)], true, global0[_wgslsmith_index_u32(65946u, 9u)]), vec4<bool>(global0[_wgslsmith_index_u32(15584u, 9u)], true, global0[_wgslsmith_index_u32(16012u, 9u)], global0[_wgslsmith_index_u32(0u, 9u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 9u)], false, global0[_wgslsmith_index_u32(21771u, 9u)]))));
    let var_1 = -1242f;
    global0 = array<bool, 9>();
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, 1027f, var_1) * vec3<f32>(var_1, -722f, var_1)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(688f, var_1, var_1)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1, -352f, var_1), vec3<f32>(var_1, 634f, var_1), vec3<bool>(global0[_wgslsmith_index_u32(23883u, 9u)], global0[_wgslsmith_index_u32(53721u, 9u)], true))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(388f, var_1, var_1)))))));
    var_2 = vec3<f32>(var_2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -878f) + _wgslsmith_div_f32(485f, _wgslsmith_f_op_f32(-var_2.x)))), var_2.x);
    return vec3<f32>(_wgslsmith_f_op_f32(var_1 - var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_2.x)) + _wgslsmith_f_op_f32(min(var_2.x, -1291f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f)))), _wgslsmith_f_op_f32(var_2.x - 413f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec3<u32>(1u, 1u, 1u);
    let var_1 = Struct_4(_wgslsmith_f_op_f32(957f * -1194f), !vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.x, var_0.x), 9u)], false), _wgslsmith_f_op_vec3_f32(func_1()), Struct_2(4294967295u, -select(select(vec2<i32>(0i, -5150i), vec2<i32>(0i, -1i), vec2<bool>(global0[_wgslsmith_index_u32(var_0.x, 9u)], global0[_wgslsmith_index_u32(13427u, 9u)])), vec2<i32>(44547i, u_input.a) << (var_0.xy % vec2<u32>(32u)), select(vec2<bool>(true, true), vec2<bool>(false, global0[_wgslsmith_index_u32(1841u, 9u)]), false)), vec3<u32>(0u, ~var_0.x, var_0.x), vec2<f32>(1262f, _wgslsmith_f_op_f32(trunc(1f))), Struct_1(_wgslsmith_f_op_vec3_f32(func_1()).x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(870f, -1202f, -884f, -295f)))), select(!vec4<bool>(false, global0[_wgslsmith_index_u32(var_0.x, 9u)], false, global0[_wgslsmith_index_u32(53064u, 9u)]), !vec4<bool>(global0[_wgslsmith_index_u32(var_0.x, 9u)], false, true, false), vec4<bool>(true, true, global0[_wgslsmith_index_u32(var_0.x, 9u)], global0[_wgslsmith_index_u32(28723u, 9u)])))), 0u);
    let var_2 = Struct_1(var_1.d.d.x, vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec3_f32(func_1()).x, _wgslsmith_f_op_f32(f32(-1f) * -678f))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.c.x, -660f), _wgslsmith_f_op_f32(f32(-1f) * -699f)), var_1.a)), -1605f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - 540f), _wgslsmith_f_op_f32(max(var_1.c.x, -1598f))))), !select(select(!var_1.d.e.c, !vec4<bool>(var_1.b.x, global0[_wgslsmith_index_u32(0u, 9u)], var_1.b.x, false), var_1.d.e.c), select(!vec4<bool>(global0[_wgslsmith_index_u32(var_1.d.c.x, 9u)], false, global0[_wgslsmith_index_u32(28121u, 9u)], true), var_1.d.e.c, vec4<bool>(false, false, var_1.d.e.c.x, true)), true));
    var var_3 = Struct_2(~max(0u, var_0.x), var_1.d.b, countOneBits(~vec3<u32>(4294967295u, firstTrailingBit(var_0.x), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 66747u), vec2<u32>(31813u, var_1.e)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.b.xz - _wgslsmith_f_op_vec3_f32(func_1()).yy)), var_2);
    var var_4 = _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(-10435i, var_1.d.b.x, var_1.d.b.x, var_3.b.x) & vec4<i32>(u_input.a, var_3.b.x, var_1.d.b.x, var_3.b.x), abs(vec4<i32>(var_1.d.b.x, var_3.b.x, var_3.b.x, var_1.d.b.x))), reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 28411i, var_3.b.x, 2147483647i), vec4<i32>(var_3.b.x, var_3.b.x, -19018i, u_input.a))) ^ ~(-vec4<i32>(var_3.b.x, -2988i, 1i, u_input.a))), reverseBits(~_wgslsmith_div_vec4_i32(vec4<i32>(var_1.d.b.x, var_1.d.b.x, 42833i, var_3.b.x), ~vec4<i32>(1i, var_1.d.b.x, var_1.d.b.x, 17392i))));
    var var_5 = var_2.b;
    var_3 = var_1.d;
    var var_6 = var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(_wgslsmith_mod_u32(17636u, var_1.e), ~1u << (var_3.c.x % 32u), ~(~var_1.e)), countOneBits(firstLeadingBit(~_wgslsmith_sub_u32(0u, var_1.e))), -50915i, _wgslsmith_clamp_u32(var_3.c.x, var_1.e, 1u), _wgslsmith_clamp_vec4_i32(firstTrailingBit(~vec4<i32>(-53841i, -1i, var_1.d.b.x, 44168i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(14605i, var_3.b.x, _wgslsmith_mod_i32(u_input.a, var_3.b.x), var_1.d.b.x), vec4<i32>(_wgslsmith_mult_i32(var_3.b.x, var_1.d.b.x), var_3.b.x, ~443i, -19591i), select(vec4<i32>(u_input.a, 2147483647i, 59373i, 4646i), reverseBits(vec4<i32>(var_1.d.b.x, var_3.b.x, var_1.d.b.x, u_input.a)), select(vec4<bool>(true, var_3.e.c.x, false, false), vec4<bool>(var_1.d.e.c.x, false, true, false), vec4<bool>(true, var_3.e.c.x, false, true)))), _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(min(vec4<i32>(var_1.d.b.x, -8296i, -51103i, 23624i), vec4<i32>(-45467i, 1i, u_input.a, -50430i)), abs(vec4<i32>(var_1.d.b.x, 1i, var_3.b.x, var_3.b.x))), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, var_3.b.x, var_1.d.b.x, u_input.a) | vec4<i32>(var_3.b.x, -22297i, var_3.b.x, -28226i), abs(vec4<i32>(-27331i, var_1.d.b.x, var_1.d.b.x, var_1.d.b.x))), vec4<i32>(_wgslsmith_mult_i32(2147483647i, var_1.d.b.x), -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, var_3.b.x, var_3.b.x, var_1.d.b.x), vec4<i32>(var_1.d.b.x, var_3.b.x, -2147483647i, 1i)), u_input.a))));
}

