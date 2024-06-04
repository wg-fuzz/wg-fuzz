struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: bool,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 14> = array<vec4<f32>, 14>(vec4<f32>(-1154f, -492f, 1239f, 1380f), vec4<f32>(965f, -1593f, 520f, -1000f), vec4<f32>(-1385f, -1959f, -556f, -353f), vec4<f32>(-939f, -1000f, -3023f, -1125f), vec4<f32>(-131f, 1645f, -1513f, -1000f), vec4<f32>(1365f, -505f, -478f, 1000f), vec4<f32>(-431f, -920f, 839f, 1000f), vec4<f32>(1003f, -1000f, -349f, 1415f), vec4<f32>(168f, 452f, 1473f, -1538f), vec4<f32>(-353f, -136f, -623f, -1000f), vec4<f32>(673f, 1713f, -752f, -878f), vec4<f32>(-476f, -597f, 495f, 1061f), vec4<f32>(-1000f, -621f, 493f, 1677f), vec4<f32>(664f, -487f, 289f, -879f));

var<private> global1: array<f32, 10>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_1(arg_0: vec4<u32>, arg_1: u32, arg_2: vec4<f32>) -> f32 {
    global1 = array<f32, 10>();
    return _wgslsmith_f_op_f32(f32(-1f) * -323f);
}

fn func_3() -> u32 {
    global1 = array<f32, 10>();
    let var_0 = Struct_1(_wgslsmith_mult_vec4_u32(reverseBits(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.e.x, 0u, 0u, u_input.c.x), u_input.e, vec4<u32>(u_input.b, 30656u, 63006u, 0u))), u_input.e), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(28217u, 10u)], global1[_wgslsmith_index_u32(u_input.e.x, 10u)])), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b, 10u)]), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c.x, 10u)] * global1[_wgslsmith_index_u32(u_input.c.x, 10u)])) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1[_wgslsmith_index_u32(0u, 10u)], 1050f, global1[_wgslsmith_index_u32(u_input.b, 10u)]), vec3<f32>(global1[_wgslsmith_index_u32(35600u, 10u)], global1[_wgslsmith_index_u32(37903u, 10u)], global1[_wgslsmith_index_u32(0u, 10u)]), true))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(622f, global1[_wgslsmith_index_u32(u_input.e.x, 10u)], -128f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(0u, 10u)], global1[_wgslsmith_index_u32(u_input.c.x, 10u)], global1[_wgslsmith_index_u32(4294967295u, 10u)]), vec3<f32>(208f, -1000f, global1[_wgslsmith_index_u32(u_input.c.x, 10u)]))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b)));
    var var_2 = _wgslsmith_f_op_f32(387f * 877f);
    var var_3 = select(~_wgslsmith_sub_vec4_u32(~(~vec4<u32>(46572u, u_input.c.x, 10608u, 4294967295u)), select(var_0.a, vec4<u32>(var_0.a.x, u_input.c.x, 18096u, 16683u), vec4<bool>(true, true, true, false)) << (~vec4<u32>(u_input.c.x, 0u, u_input.b, u_input.e.x) % vec4<u32>(32u))), u_input.e, true);
    return 24769u;
}

fn func_2(arg_0: f32) -> Struct_2 {
    var var_0 = vec4<u32>(func_3(), ~select(27584u, u_input.e.x, true), ~109u, u_input.c.x);
    var var_1 = vec3<i32>(-44263i, -_wgslsmith_mult_i32(~1i, u_input.d), (abs(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, 8353i, 1i), vec3<i32>(0i, u_input.a, -1i))) ^ 0i) | _wgslsmith_div_i32(firstLeadingBit(-2147483647i), u_input.a));
    var var_2 = _wgslsmith_div_i32(i32(-1i) * -2147483647i, 39717i);
    var_1 = (vec3<i32>(_wgslsmith_sub_i32(abs(u_input.d), 2147483647i >> (1u % 32u)), -75085i, 1i) & vec3<i32>(0i, u_input.d, ~0i)) << (vec3<u32>(u_input.c.x, u_input.b, 1u) % vec3<u32>(32u));
    global0 = array<vec4<f32>, 14>();
    return Struct_2(var_0.x, vec3<u32>(~(~firstTrailingBit(15115u)), 0u, 0u), true, Struct_1(u_input.e, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(u_input.b >> (u_input.b % 32u), 10u)], _wgslsmith_div_f32(319f, global1[_wgslsmith_index_u32(var_0.x, 10u)]), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(var_0.x, 10u)], -1117f)))), all(select(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(false, true), true))));
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> bool {
    var var_0 = ~(~(~1u)) > func_3();
    global1 = array<f32, 10>();
    var var_1 = vec2<i32>(-abs(_wgslsmith_sub_i32(u_input.a, u_input.d)), -39698i);
    var var_2 = vec4<bool>(arg_0.c & false, _wgslsmith_f_op_f32(-490f - 541f) < _wgslsmith_f_op_f32(arg_0.d.b.x + global1[_wgslsmith_index_u32(arg_0.a, 10u)]), true, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -962f), _wgslsmith_f_op_f32(arg_1 - 131f))) < arg_1);
    var_1 = vec2<i32>(var_1.x, 1i);
    return all(var_2.xxx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1551f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1(vec4<u32>(u_input.e.x, 4294967295u, 22032u, 53179u), u_input.e.x, global0[_wgslsmith_index_u32(4294967295u, 14u)])), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.c.x, 10u)], -1775f))) - global1[_wgslsmith_index_u32(firstLeadingBit(u_input.b) | max(u_input.b, 9430u), 10u)]), 600f));
    global1 = array<f32, 10>();
    global0 = array<vec4<f32>, 14>();
    var var_1 = !select(func_4(func_2(_wgslsmith_f_op_f32(-2522f - var_0)), -1262f), any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), false), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true)), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), false))), !all(vec2<bool>(true, false)));
    let var_2 = _wgslsmith_f_op_f32(-var_0);
    var var_3 = -max(select(min(vec2<i32>(u_input.a, 2147483647i), vec2<i32>(-1i, 5832i)), vec2<i32>(-41525i, -1i) ^ vec2<i32>(u_input.a, 0i), false) | vec2<i32>(1i, 0i & u_input.a), ~max(vec2<i32>(u_input.a, u_input.d), vec2<i32>(u_input.d, -2058i)) ^ _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(u_input.a, u_input.d)), countOneBits(vec2<i32>(u_input.a, u_input.a))));
    var_1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(10479u, u_input.b & 16530u, ~35805u), u_input.b)), vec4<i32>(1i, reverseBits(u_input.a), _wgslsmith_sub_i32(_wgslsmith_mod_i32(-var_3.x, _wgslsmith_add_i32(var_3.x, 4220i)), 23548i & _wgslsmith_clamp_i32(var_3.x, 16941i, 0i)), max(45965i, var_3.x)), var_3.x);
}

