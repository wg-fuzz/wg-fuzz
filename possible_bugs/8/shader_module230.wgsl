struct Struct_1 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<bool, 7> = array<bool, 7>(false, true, false, true, true, true, false);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: f32) -> vec3<i32> {
    global1 = array<bool, 7>();
    global0 = ~abs(u_input.b) & ~(max(vec4<u32>(4294967295u, u_input.c, 51820u, 1u), u_input.b) >> (vec4<u32>(arg_0.x & u_input.b.x, ~10969u, 7946u, select(1u, 24797u, true)) % vec4<u32>(32u)));
    var var_0 = _wgslsmith_div_vec2_i32(max(select(select(~vec2<i32>(0i, -17787i), vec2<i32>(-24090i, u_input.d), false & arg_1.b), vec2<i32>(countOneBits(arg_1.a), u_input.e), select(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 7u)], false), !vec2<bool>(global1[_wgslsmith_index_u32(1u, 7u)], false), vec2<bool>(global1[_wgslsmith_index_u32(0u, 7u)], arg_1.b))), vec2<i32>(0i, arg_1.a)), select(~vec2<i32>(1487i, -10006i) ^ -(vec2<i32>(arg_1.a, arg_1.a) << (vec2<u32>(35643u, 15058u) % vec2<u32>(32u))), vec2<i32>(1i, -1i), vec2<bool>(true, arg_1.b)));
    var var_1 = min(vec2<i32>(-1i) * -vec2<i32>(var_0.x, 2147483647i), -_wgslsmith_sub_vec2_i32(firstLeadingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.e, 0i), vec2<i32>(36324i, var_0.x))), _wgslsmith_sub_vec2_i32(vec2<i32>(-76419i, 1i), vec2<i32>(arg_1.a, 0i) >> (vec2<u32>(17279u, 61263u) % vec2<u32>(32u)))));
    var var_2 = ~arg_0.x;
    return abs(-(vec3<i32>(var_0.x, abs(var_0.x), -1i) >> (~_wgslsmith_sub_vec3_u32(global0.wxw, global0.wyz) % vec3<u32>(32u))));
}

fn func_2() -> vec3<i32> {
    let var_0 = Struct_1(_wgslsmith_div_i32(1i, ~u_input.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -714f))) != _wgslsmith_f_op_f32(625f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1068f)), _wgslsmith_f_op_f32(f32(-1f) * -275f))));
    global1 = array<bool, 7>();
    global1 = array<bool, 7>();
    global0 = abs(u_input.b);
    var var_1 = _wgslsmith_mod_u32(firstLeadingBit(1u), 10007u);
    return ~func_3(countOneBits(global0.yy | u_input.b.yx) ^ ~vec2<u32>(73428u, 45728u), Struct_1(~(-1i), !(!var_0.b)), -481f);
}

fn func_1(arg_0: vec2<f32>, arg_1: u32, arg_2: u32) -> Struct_1 {
    global1 = array<bool, 7>();
    var var_0 = select(_wgslsmith_mult_vec3_i32(func_2(), firstTrailingBit(select(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.d, u_input.e, u_input.e), vec3<i32>(25038i, u_input.d, u_input.d)), func_2(), !vec3<bool>(global1[_wgslsmith_index_u32(1u, 7u)], global1[_wgslsmith_index_u32(global0.x, 7u)], true)))), _wgslsmith_mod_vec3_i32(func_3(global0.zx, Struct_1(-1i >> (arg_1 % 32u), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_clamp_vec3_i32((vec3<i32>(u_input.e, 2147483647i, u_input.d) >> (u_input.b.zyx % vec3<u32>(32u))) ^ (vec3<i32>(-2147483647i, u_input.e, u_input.d) >> (vec3<u32>(arg_2, arg_1, 0u) % vec3<u32>(32u))), abs(~vec3<i32>(u_input.d, u_input.d, 1i)), _wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(-6266i, u_input.e, u_input.d)), vec3<i32>(u_input.e, 2147483647i, u_input.e)))), !vec3<bool>(true, any(!vec4<bool>(true, global1[_wgslsmith_index_u32(50458u, 7u)], global1[_wgslsmith_index_u32(4294967295u, 7u)], false)), _wgslsmith_f_op_f32(-arg_0.x) < _wgslsmith_f_op_f32(arg_0.x - 1643f)));
    let var_1 = Struct_1(u_input.d, global1[_wgslsmith_index_u32(34496u, 7u)] & global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.b, reverseBits(u_input.b)), 7u)]);
    var var_2 = ~3700u;
    global0 = ~vec4<u32>(min(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(88554u, arg_2, 4294967295u, u_input.c)), reverseBits(0u)), ~select(43731u, ~28994u, -2147483647i != var_1.a), arg_1, ~global0.x);
    return Struct_1(countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a, -1i, var_0.x) | vec3<i32>(2147483647i, u_input.d, var_1.a), _wgslsmith_sub_vec3_i32(func_2(), vec3<i32>(u_input.d, 34437i, -11241i) ^ vec3<i32>(var_0.x, 0i, var_1.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1123f) + -1421f) * _wgslsmith_f_op_f32(-982f - arg_0.x)) > _wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1203f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -206f, -442f, 477f) - vec4<f32>(752f, -1025f, 1428f, -999f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1507f, 1159f, 298f, 392f) * vec4<f32>(-1833f, 397f, -1675f, 1724f)), vec4<f32>(1000f, 1000f, -1593f, 1794f))), global1[_wgslsmith_index_u32(0u, 7u)])), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-777f, 483f, 131f, -111f)))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-158f, -400f, -2434f, 365f))), vec4<f32>(-1615f, 236f, -1124f, -1366f)))))));
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, -370f, global1[_wgslsmith_index_u32(u_input.c, 7u)])))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-354f)), var_0.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -198f) + var_0.x), var_0.x)))));
    var var_2 = func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_1 - -2453f), 507f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.x, 822f))) - vec2<f32>(var_0.x, -1792f)))), ~(~0u ^ u_input.b.x), 16096u);
    let var_3 = Struct_1(max(var_2.a, -u_input.e), !(!(!any(vec2<bool>(global1[_wgslsmith_index_u32(12185u, 7u)], global1[_wgslsmith_index_u32(global0.x, 7u)])))));
    var var_4 = vec2<u32>(~(~min(firstLeadingBit(global0.x), global0.x)), _wgslsmith_mult_u32(u_input.a, 14903u));
    let var_5 = ~(-abs((vec3<i32>(var_2.a, 1i, var_3.a) & vec3<i32>(var_2.a, u_input.e, var_2.a)) | vec3<i32>(var_3.a, var_2.a, -57132i)));
    let x = u_input.a;
    s_output = StorageBuffer(select(func_1(var_0.yw, max(u_input.b.x, u_input.c), 1u).a | 47111i, -2147483647i, !(!func_1(vec2<f32>(1173f, var_1), 4294967295u, 84063u).b)), u_input.b, 1i & var_3.a);
}

