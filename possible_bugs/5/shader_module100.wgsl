struct Struct_1 {
    a: bool,
    b: bool,
    c: bool,
    d: vec4<bool>,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec2<f32>,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<f32, 28>;

var<private> global2: f32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2) -> bool {
    global1 = array<f32, 28>();
    let var_0 = _wgslsmith_mult_i32(arg_0.d.x, 2147483647i << ((0u << (_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(53311u, 0u), vec2<u32>(1u, arg_0.a)), countOneBits(arg_0.a), ~2214u) % 32u)) % 32u));
    global2 = 2200f;
    var var_1 = 1016f;
    return true;
}

fn func_2() -> f32 {
    let var_0 = !vec2<bool>(true, func_3(Struct_2(countOneBits(0u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(1u, 4823u, 56262u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(43673u, 28u)], 451f) * vec2<f32>(global1[_wgslsmith_index_u32(0u, 28u)], global1[_wgslsmith_index_u32(67297u, 28u)])), abs(vec2<i32>(u_input.a.x, u_input.a.x)), Struct_1(false, true, true, vec4<bool>(false, false, false, true), 50298i))));
    var var_1 = 17599i;
    var var_2 = Struct_1(!(global1[_wgslsmith_index_u32(max(40324u, abs(60186u)), 28u)] < -1280f), false, !any(vec3<bool>(any(vec4<bool>(false, false, var_0.x, var_0.x)), true, var_0.x)), vec4<bool>(true, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(0u, 7608u, 30908u)), 31491u), 28u)] >= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-714f, 1083f, false)), -1180f)), var_0.x && var_0.x, true), _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-25293i, u_input.a.x, -41233i)), -u_input.a));
    var var_3 = Struct_2(~countOneBits(10764u << (1u % 32u)), ~reverseBits(~_wgslsmith_add_u32(48038u, 42036u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(493f, global1[_wgslsmith_index_u32(55865u, 28u)])) + vec2<f32>(global1[_wgslsmith_index_u32(0u, 28u)], global1[_wgslsmith_index_u32(1u, 28u)]))) - vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 28u)]), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(4294967295u, 28u)], 195f))), global1[_wgslsmith_index_u32(countOneBits(~177u), 28u)])), u_input.a.yx, Struct_1(true, false, var_2.c, vec4<bool>(var_2.a, true, true, any(!var_2.d.wxz)), -(8641i << (1u % 32u))));
    var_2 = var_3.e;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(605f * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_3.b, 28u)])) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(2060f)), var_3.c.x)))));
}

fn func_1(arg_0: vec2<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(vec4<u32>(38883u, 12580u, 4294967295u, arg_0.x) ^ vec4<u32>(arg_0.x, 12719u, 51965u, arg_0.x)), firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(26639u, 5084u, 4294967295u, arg_0.x), vec4<u32>(arg_0.x, 16129u, 1u, 1u)))), 28u)] - _wgslsmith_f_op_f32(func_2())));
    var var_1 = Struct_3(vec3<i32>(-1i, u_input.a.x, u_input.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(firstLeadingBit(~62981u), 28u)], _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(65320u, 28u)] + global1[_wgslsmith_index_u32(arg_0.x, 28u)]), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(29692u, 28u)] * -1000f), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_0.x, 28u)] * 195f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_0.x, 28u)])))));
    let var_2 = -2086f;
    var var_3 = vec4<i32>(-2475i, -(u_input.a.x ^ abs(_wgslsmith_add_i32(-1i, -20867i))), max(var_1.a.x, u_input.a.x & _wgslsmith_dot_vec2_i32(u_input.a.yy, vec2<i32>(0i, 67900i))), var_1.a.x);
    let var_4 = true;
    return arg_0.x;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    global0 = -13422i;
    var var_0 = arg_0.d;
    var var_1 = abs(~countOneBits(max(vec2<u32>(14695u, 13591u), vec2<u32>(arg_0.b, 15315u)))) ^ abs(vec2<u32>(~34983u, _wgslsmith_dot_vec4_u32(vec4<u32>(30682u, arg_0.a, 4294967295u, arg_1.a) & vec4<u32>(arg_1.a, 0u, arg_1.b, arg_0.a), min(vec4<u32>(0u, 8280u, arg_0.b, 77749u), vec4<u32>(arg_1.a, arg_0.a, 43489u, arg_1.b)))));
    let var_2 = select(!select(vec3<bool>(false, arg_0.e.d.x, arg_0.e.c || arg_0.e.d.x), !arg_1.e.d.xwx, false), vec3<bool>(arg_0.e.b, arg_1.e.a, true), arg_0.e.d.zyx);
    var var_3 = Struct_2(_wgslsmith_add_u32(_wgslsmith_clamp_u32(~arg_0.a << (1u % 32u), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.b, arg_1.b), vec2<u32>(1u, 1u)), arg_0.b, arg_0.a), select(var_1.x, 0u ^ arg_0.a, var_2.x)), abs(arg_1.a)), arg_1.b, arg_0.c, firstTrailingBit(select(-abs(vec2<i32>(0i, arg_1.d.x)), ~vec2<i32>(arg_1.d.x, 2981i), arg_0.e.e != _wgslsmith_mod_i32(arg_0.d.x, u_input.a.x))), arg_0.e);
    return Struct_1(true | all(arg_1.e.d.ww), var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_3.c.x, 784f)))) > -125f, arg_1.e.d, 0i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_2(func_1(~_wgslsmith_add_vec2_u32(vec2<u32>(1u, 39731u), vec2<u32>(73809u, 1u))), ~1u, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global1[_wgslsmith_index_u32(4294967295u, 28u)])))), vec2<f32>(-748f, _wgslsmith_f_op_f32(step(-1654f, 127f)))), u_input.a.yy, Struct_1(all(vec3<bool>(false, true, false)), any(select(vec2<bool>(false, false), vec2<bool>(false, false), false)), all(vec3<bool>(true, true, true)) || select(true, false, false), vec4<bool>(true, true, true, true), u_input.a.x)), Struct_2(~1u, reverseBits(_wgslsmith_div_u32(58152u, ~14690u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(1u, 28u)], -567f)))), ~vec2<i32>(_wgslsmith_add_i32(u_input.a.x, -1i), select(u_input.a.x, u_input.a.x, false)), Struct_1(any(select(vec2<bool>(false, true), vec2<bool>(false, true), false)), true, all(vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-246f, global1[_wgslsmith_index_u32(1u, 28u)], 1533f, 190f), ~(1u >> ((~3939u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 105380u, 14719u, 26143u), vec4<u32>(4294967295u, 48684u, 6467u, 11117u)) % 32u)) % 32u)), ~(~(~vec3<u32>(38230u, 1u, 4294967295u))), vec4<u32>(_wgslsmith_clamp_u32(~0u, 0u, 27727u) & ~71387u, ~(~(~9234u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(616u, 0u, 8554u, 57767u), vec4<u32>(func_1(vec2<u32>(31418u, 29782u)), _wgslsmith_div_u32(37677u, 4294967295u), 1u, reverseBits(0u))), countOneBits(2705u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 28u)], global1[_wgslsmith_index_u32(26698u, 28u)]))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(54808u, 28u)], global1[_wgslsmith_index_u32(4294967295u, 28u)]))))));
}

