struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: i32 = i32(-2147483648);

var<private> global2: array<vec4<f32>, 25>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> i32 {
    let var_0 = !any(vec2<bool>(!all(vec2<bool>(true, false)), true));
    var var_1 = _wgslsmith_clamp_i32(-2147483647i, _wgslsmith_clamp_i32(-(~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 0i, 72026i, -1i), vec4<i32>(1i, 0i, -2147483647i, 1170i))), -(i32(-1i) * -2147483647i), -_wgslsmith_div_i32(1i, 2147483647i)), abs(1i));
    global2 = array<vec4<f32>, 25>();
    var var_2 = vec4<i32>(1i, -19659i, _wgslsmith_mod_i32(_wgslsmith_sub_i32(min(_wgslsmith_div_i32(20458i, 2147483647i), 0i), min(max(1i, 38385i), _wgslsmith_clamp_i32(-39027i, -1i, -52571i))), 1i), -2147483647i);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(515f)));
    return 25074i;
}

fn func_2(arg_0: vec4<f32>) -> bool {
    global1 = _wgslsmith_sub_i32(func_3(u_input.a), 1i);
    global1 = abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -(~vec2<i32>(1i, -7412i)), vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(3512i, -1i), -2147483647i), 1i ^ select(-2147483647i, -2147483647i, true))));
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1289f))), _wgslsmith_sub_vec2_i32(-((vec2<i32>(2147483647i, 3546i) >> (vec2<u32>(0u, u_input.a) % vec2<u32>(32u))) | vec2<i32>(48686i, 1i)), vec2<i32>(1i << (u_input.a % 32u), i32(-1i) * -7709i)), _wgslsmith_mult_vec3_u32(select(vec3<u32>(0u, u_input.a, u_input.a), select(vec3<u32>(44283u, u_input.a, u_input.a), vec3<u32>(7369u, 8923u, 30211u), vec3<bool>(false, true, true)), vec3<bool>(false, false, false)), _wgslsmith_sub_vec3_u32(~vec3<u32>(41249u, 134037u, u_input.a), abs(vec3<u32>(26623u, 0u, 1u)))) ^ ~vec3<u32>(u_input.a, _wgslsmith_sub_u32(u_input.a, 8290u), _wgslsmith_div_u32(0u, 30297u)), all(vec4<bool>(false, !any(vec2<bool>(true, true)), true || any(vec2<bool>(true, true)), !any(vec3<bool>(true, true, true)))));
    var var_1 = Struct_1(var_0.a, -var_0.b, _wgslsmith_mod_vec3_u32(firstLeadingBit(countOneBits(max(var_0.c, vec3<u32>(25280u, 23311u, 1u)))), var_0.c), all(vec3<bool>(false, all(vec3<bool>(var_0.d, true, true)), true)));
    global1 = -(var_0.b.x >> (19722u % 32u));
    return all(select(vec2<bool>(true, true), select(!(!vec2<bool>(false, var_0.d)), select(select(vec2<bool>(var_1.d, false), vec2<bool>(false, var_0.d), var_0.d), !vec2<bool>(true, var_0.d), !var_0.d), any(vec2<bool>(var_1.d, true))), vec2<bool>(!any(vec4<bool>(var_0.d, true, var_1.d, var_0.d)), var_1.d)));
}

fn func_1() -> Struct_1 {
    global0 = false;
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -771f), 1f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1372f, 444f) + vec2<f32>(-1670f, -382f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -374f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1003f, 630f) + vec2<f32>(663f, -734f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1564f, -1229f))), vec2<f32>(-156f, _wgslsmith_f_op_f32(step(-679f, 432f)))))), true & select(all(vec2<bool>(true, true)), !func_2(vec4<f32>(-741f, -971f, -2395f, -282f)), true)));
    global1 = 2147483647i;
    var var_1 = !(!vec2<bool>(true, func_2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, var_0.x, -1000f, 1636f))))));
    var var_2 = (-72970i | _wgslsmith_mod_i32(~(-1i), _wgslsmith_dot_vec2_i32(~vec2<i32>(-1i, -69089i), vec2<i32>(31654i, -2147483647i)))) == _wgslsmith_mod_i32(select(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-6703i, -1i), vec2<i32>(2147483647i, -2790i), vec2<i32>(0i, -2147483647i)), vec2<i32>(1i, 1i)), -2147483647i, true), -(i32(-1i) * -42414i));
    return Struct_1(_wgslsmith_f_op_f32(-var_0.x), vec2<i32>(~(-32586i), abs(-1i)), _wgslsmith_mult_vec3_u32(vec3<u32>(~u_input.a, abs(0u), ~(~0u)), vec3<u32>(~1u, ~select(u_input.a, 1u, var_1.x), u_input.a << (~82504u % 32u))), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global1 = -30961i | abs(_wgslsmith_add_i32(_wgslsmith_mult_i32(var_0.b.x, -5753i), ~var_0.b.x) | select(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.x, var_0.b.x, var_0.b.x, -1i), vec4<i32>(var_0.b.x, var_0.b.x, -2147483647i, var_0.b.x)), -24385i, true));
    let var_1 = func_1();
    var var_2 = 465f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a - var_1.a) + _wgslsmith_div_f32(var_0.a, 522f)));
    var var_3 = !(!vec3<bool>(~var_1.b.x <= 0i, !all(vec4<bool>(false, false, var_0.d, true)), true & var_0.d));
    var_2 = any(select(select(!vec2<bool>(var_0.d, true), var_3.zy, vec2<bool>(true, true)), vec2<bool>(var_1.d, any(select(var_3.zy, var_3.yy, var_3.xz))), func_1().d));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_1.c.x, ~(~var_0.c.x & _wgslsmith_dot_vec2_u32(var_1.c.zx, var_1.c.zz)), 1u));
}

