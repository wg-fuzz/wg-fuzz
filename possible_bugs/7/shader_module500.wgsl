struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8> = array<u32, 8>(55078u, 49384u, 4294967295u, 0u, 60736u, 4294967295u, 4294967295u, 4294967295u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: vec3<bool>, arg_2: u32) -> f32 {
    let var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1473f))), arg_0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0 + arg_0))), _wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0 + arg_0)))))), firstLeadingBit(reverseBits(vec3<u32>(0u, ~arg_2, ~0u))), vec2<u32>(1u, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.b, u_input.b, global0[_wgslsmith_index_u32(arg_2, 8u)]), vec3<u32>(global0[_wgslsmith_index_u32(arg_2, 8u)], u_input.b, arg_2) & vec3<u32>(4294967295u, u_input.b, u_input.b)), vec3<u32>(arg_2, arg_2, 1u) >> (~vec3<u32>(arg_2, global0[_wgslsmith_index_u32(11996u, 8u)], u_input.b) % vec3<u32>(32u))), 8u)]));
    global0 = array<u32, 8>();
    return 1235f;
}

fn func_2(arg_0: vec4<u32>) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-193f))), 577f)) + _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1315f, -1630f)), _wgslsmith_f_op_f32(sign(1213f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(-307f, vec3<bool>(false, true, false), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(10u, 8u)], 8u)]))))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-2388f + _wgslsmith_f_op_f32(floor(-130f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1823f + 1000f), -376f)), -1101f)))), firstLeadingBit(vec3<u32>(abs(1u), min(~global0[_wgslsmith_index_u32(0u, 8u)], 0u), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(arg_0, arg_0), vec4<u32>(1u, arg_0.x, 1u, 60935u) >> (vec4<u32>(arg_0.x, u_input.b, 1u, 69590u) % vec4<u32>(32u))))), vec2<u32>(1u, 12313u));
    global0 = array<u32, 8>();
    let var_1 = vec4<u32>(11735u, 2705u, ~92444u, reverseBits(global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~9543u, 0u, 17869u), 8u)]));
    global0 = array<u32, 8>();
    return ~u_input.a.x;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_mod_vec4_i32(select(vec4<i32>(-5854i, 10406i, _wgslsmith_div_i32(2147483647i, _wgslsmith_sub_i32(-6081i, u_input.a.x)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a.x, -79864i, 2147483647i), vec4<i32>(u_input.a.x, u_input.a.x, 24687i, u_input.a.x))), -vec4<i32>(1i, -2147483647i, 1i, max(3472i, u_input.a.x)), vec4<bool>(false, _wgslsmith_f_op_f32(240f + 1094f) <= _wgslsmith_f_op_f32(round(163f)), false, true)), vec4<i32>(_wgslsmith_div_i32(-func_2(vec4<u32>(112822u, 54412u, 5639u, 29749u)), -2147483647i), _wgslsmith_dot_vec3_i32(~(vec3<i32>(2147483647i, -1i, -1i) ^ vec3<i32>(u_input.a.x, -23053i, u_input.a.x)), -select(vec3<i32>(-27280i, 0i, -1i), vec3<i32>(u_input.a.x, u_input.a.x, 1i), vec3<bool>(false, false, false))), min(u_input.a.x, u_input.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(~u_input.a.x, 1i), -u_input.a)));
    var var_1 = _wgslsmith_f_op_f32(abs(-436f));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1444f), _wgslsmith_f_op_f32(-287f + _wgslsmith_f_op_f32(sign(1000f)))))));
    var var_3 = _wgslsmith_dot_vec2_i32(-(~countOneBits(var_0.zz ^ var_0.zz)), _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(u_input.a.x, _wgslsmith_dot_vec2_i32(var_0.yz, var_0.xw)), var_0.x), ~vec2<i32>(-20378i, -13980i | var_0.x)));
    let var_4 = all(select(!vec4<bool>(all(vec3<bool>(true, true, true)), false, true, true), vec4<bool>(true, any(vec4<bool>(true, true, true, true)), u_input.a.x == 0i, !(u_input.a.x != 14482i)), vec4<bool>(!select(true, false, false), u_input.a.x != ~var_0.x, true, true)));
    return Struct_1(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-1353f - -113f)), select(vec3<bool>(false, true, var_4), select(vec3<bool>(true, var_4, true), vec3<bool>(false, var_4, var_4), vec3<bool>(var_4, true, var_4)), var_4 | true), u_input.b << (4294967295u % 32u))) + _wgslsmith_f_op_f32(-454f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(1733f)), _wgslsmith_f_op_f32(round(-909f)))))), abs(~(~(~vec3<u32>(u_input.b, 4294967295u, global0[_wgslsmith_index_u32(46451u, 8u)])))), _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(9972u, u_input.b), min(vec2<u32>(0u, u_input.b), vec2<u32>(6589u, 0u))), select(~vec2<u32>(u_input.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 8u)], 8u)], 8u)], 8u)]), ~vec2<u32>(1u, u_input.b), vec2<bool>(false, var_4))), vec2<u32>(1u, ~global0[_wgslsmith_index_u32(1u, 8u)]) << (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = vec3<i32>(~_wgslsmith_mult_i32(~firstLeadingBit(u_input.a.x), 1i), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(firstTrailingBit(abs(vec3<i32>(2147483647i, u_input.a.x, -2147483647i))), min(_wgslsmith_add_vec3_i32(vec3<i32>(1i, u_input.a.x, u_input.a.x), vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x)), vec3<i32>(11881i, -31206i, u_input.a.x)), _wgslsmith_div_vec3_i32(vec3<i32>(27864i, u_input.a.x, 4328i) >> (vec3<u32>(24502u, 4294967295u, 60452u) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, -2147483647i, 20774i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(2147483647i, u_input.a.x, -2147483647i)))), vec3<i32>(-_wgslsmith_div_i32(u_input.a.x, 16249i), 0i, select(-1i, 3666i, true) << (u_input.b % 32u))), ~(-48066i));
    var var_2 = ~vec4<u32>(~var_0.d.x, _wgslsmith_dot_vec3_u32(min(_wgslsmith_mod_vec3_u32(vec3<u32>(4405u, 19176u, global0[_wgslsmith_index_u32(9430u, 8u)]), var_0.c), vec3<u32>(28089u, u_input.b, global0[_wgslsmith_index_u32(39659u, 8u)])), ~abs(var_0.c)), 0u, abs(1u));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_0.b, -168f, var_0.a)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2347f, var_0.a, 1141f, var_0.b))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_0.a, 675f, 375f) + vec4<f32>(-922f, var_0.a, var_0.a, 1929f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.b, 534f, -326f, var_0.b), vec4<f32>(var_0.a, 1000f, 2230f, var_0.b))), true))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(403f, _wgslsmith_f_op_f32(2120f * -542f), _wgslsmith_f_op_f32(ceil(-479f)), 211f))));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))));
    let var_5 = -reverseBits(countOneBits(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, -1i, var_1.x, u_input.a.x), vec4<i32>(u_input.a.x, 21062i, u_input.a.x, -2147483647i), vec4<i32>(1i, 1i, var_1.x, u_input.a.x)), vec4<i32>(u_input.a.x, -1i, -1i, var_1.x) & vec4<i32>(u_input.a.x, u_input.a.x, var_1.x, 0i))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(abs(19728i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_4, var_4))), var_3.ww, vec4<u32>(u_input.b, u_input.b, var_2.x, ~var_0.c.x) >> (select(~min(vec4<u32>(0u, 80960u, 8177u, 1u), vec4<u32>(var_0.c.x, 3672u, 0u, 1u)), select(vec4<u32>(0u, 1u, 4294967295u, 29802u), vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_2.x, 8u)], 8u)], 61637u, 13003u) ^ vec4<u32>(global0[_wgslsmith_index_u32(var_2.x, 8u)], 111473u, global0[_wgslsmith_index_u32(u_input.b, 8u)], global0[_wgslsmith_index_u32(var_2.x, 8u)]), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false))), var_2.x >= var_2.x) % vec4<u32>(32u)));
}

