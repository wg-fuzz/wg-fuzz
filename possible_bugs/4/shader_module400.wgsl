struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: vec4<u32>,
    d: i32,
    e: vec2<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec4<f32>,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec2<i32> {
    var var_0 = max(vec2<i32>(select(0i, 0i, true) & 8553i, abs(i32(-1i) * -32759i)), _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, 1i), vec2<i32>(18583i, 2147483647i)), -vec2<i32>(2147483647i, -1i)), ~select(vec2<i32>(2147483647i, 24431i), vec2<i32>(-10489i, 2147483647i), true))) >> (max(max(_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.b, 17646u) | vec2<u32>(36899u, u_input.b)), firstTrailingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 1u)))), vec2<u32>(0u, firstLeadingBit(~0u))) % vec2<u32>(32u));
    var var_1 = 4294967295u;
    var var_2 = _wgslsmith_mod_vec3_i32(firstTrailingBit(_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.x, var_0.x, -4522i), vec3<i32>(var_0.x, -1i, var_0.x)), abs(vec3<i32>(var_0.x, -65479i, var_0.x)), firstLeadingBit(vec3<i32>(-14080i, 24727i, -58761i))) | (_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.x, -19146i, 2147483647i), vec3<i32>(63694i, var_0.x, var_0.x)) & (vec3<i32>(1i, 0i, var_0.x) << (vec3<u32>(21150u, 4294967295u, u_input.b) % vec3<u32>(32u))))), vec3<i32>(abs(_wgslsmith_clamp_i32(var_0.x, 2147483647i, var_0.x)), abs(reverseBits(-3573i)) | _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, 19594i, var_0.x), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.x, var_0.x, -2147483647i), vec3<i32>(-51388i, var_0.x, var_0.x), vec3<i32>(var_0.x, 2147483647i, 41210i))), -35878i));
    var_1 = ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.a, ~u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.b, u_input.b), vec4<u32>(1u, 32541u, 1u, 25060u))), select(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.a), vec3<u32>(u_input.a, 38539u, u_input.a)), max(vec3<u32>(20623u, u_input.a, 27453u), vec3<u32>(u_input.b, u_input.a, 4294967295u)), true)));
    var_2 = vec3<i32>(var_2.x, ~_wgslsmith_mult_i32(max(_wgslsmith_add_i32(-1i, var_2.x), abs(0i)), 1i), ~var_2.x);
    return vec2<i32>(-1i, -(~min(var_2.x, var_2.x) ^ reverseBits(-1i)));
}

fn func_2(arg_0: u32) -> Struct_2 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -300f, -1000f, 1087f)))), vec4<f32>(_wgslsmith_f_op_f32(step(147f, -637f)), 138f, 1410f, _wgslsmith_f_op_f32(select(874f, 657f, true))))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1139f, 741f, 290f, -337f), vec4<f32>(1519f, 588f, -1723f, 270f), vec4<bool>(true, true, true, false))))))), Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1055f * -362f))), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-535f, 411f, true)), _wgslsmith_f_op_f32(select(-1276f, 952f, true)))), _wgslsmith_div_f32(-310f, -218f), _wgslsmith_f_op_f32(f32(-1f) * -1055f)), vec4<u32>(~122918u, u_input.a, 4294967295u, u_input.a), -(i32(-1i) * -39918i), ~vec2<i32>(1i, 1i) ^ func_3()));
    var var_1 = Struct_2(var_0.a.x, vec3<f32>(-609f, _wgslsmith_f_op_f32(ceil(var_0.a.x)), _wgslsmith_div_f32(-265f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(sign(1486f))))), var_0.b.c, var_0.b.d, vec2<i32>(var_0.b.e.x, -23115i));
    var var_2 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, ~u_input.b, arg_0, _wgslsmith_add_u32(_wgslsmith_mult_u32(arg_0, 4294967295u), _wgslsmith_mod_u32(var_0.b.c.x, u_input.b))), var_0.b.c);
    var var_3 = all(select(!vec2<bool>(true, all(vec3<bool>(true, false, true))), select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(true, false), true), true), !(!(var_1.b.x < -1897f))));
    let var_4 = vec4<u32>(70141u, 1u, abs(arg_0), abs(countOneBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(25446u, 1u, u_input.b), var_1.c.xxy))));
    return var_0.b;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: f32) -> vec4<i32> {
    var var_0 = func_2(u_input.b);
    var_0 = func_2(var_0.c.x);
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_2, var_0.b.x)) * 1f), _wgslsmith_f_op_f32(f32(-1f) * -1228f)));
    var var_2 = 1000f;
    var var_3 = Struct_2(_wgslsmith_f_op_f32(-299f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -615f) - 1240f))), vec3<f32>(_wgslsmith_f_op_f32(abs(arg_2)), _wgslsmith_f_op_f32(-var_0.b.x), var_0.b.x), _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(var_0.c, vec4<u32>(_wgslsmith_dot_vec3_u32(var_0.c.yxx, var_0.c.zyz), _wgslsmith_add_u32(var_0.c.x, u_input.b), 0u, ~18976u)), ~(~firstLeadingBit(vec4<u32>(var_0.c.x, u_input.a, u_input.b, u_input.b))), ~(~(vec4<u32>(36137u, 17907u, u_input.a, 0u) ^ vec4<u32>(var_0.c.x, 19476u, u_input.b, u_input.a)))), ~countOneBits(-func_2(14078u).e.x), _wgslsmith_mult_vec2_i32(~firstLeadingBit(reverseBits(vec2<i32>(-71765i, -33985i))), arg_0.xx >> (var_0.c.zy % vec2<u32>(32u))));
    return _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, ~arg_0.x & arg_1.x, _wgslsmith_clamp_i32(~(arg_1.x & arg_0.x), _wgslsmith_clamp_i32(var_3.d, ~(-70794i), arg_0.x), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.e.x, -10601i, 18990i, arg_0.x), vec4<i32>(arg_1.x, arg_1.x, -2147483647i, arg_0.x)), vec4<i32>(arg_1.x, arg_0.x, var_3.d, -1i))), ~_wgslsmith_mult_i32(-29687i, var_3.d)), min(vec4<i32>(-37083i, ~countOneBits(1i), 16399i, 41520i), vec4<i32>(arg_1.x, firstLeadingBit(arg_0.x) << ((var_0.c.x ^ var_0.c.x) % 32u), 1632i, firstLeadingBit(_wgslsmith_div_i32(var_0.d, var_3.d)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(sign(635f)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(563f, -160f, -407f), vec3<f32>(1484f, -1350f, 1427f))) * _wgslsmith_div_vec3_f32(vec3<f32>(-1035f, -890f, 269f), vec3<f32>(-1686f, -1265f, -1177f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1524f, -881f, 313f))) - vec3<f32>(-1416f, -1794f, -140f))))), select(_wgslsmith_add_vec4_u32(~(~vec4<u32>(u_input.b, u_input.a, 11598u, 2482u)), ~(~vec4<u32>(u_input.b, u_input.b, 1u, 1u))), ~_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a, 4294967295u, 31411u, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.a, 39005u) << (vec4<u32>(u_input.a, u_input.a, u_input.b, 4021u) % vec4<u32>(32u))), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), all(vec3<bool>(true, false, true))), vec4<bool>(true, false, false, any(vec3<bool>(false, true, true))), true | all(vec3<bool>(false, false, true)))), -2147483647i, _wgslsmith_div_vec2_i32(-firstLeadingBit(countOneBits(vec2<i32>(55058i, 34263i))), _wgslsmith_mult_vec2_i32(vec2<i32>(firstTrailingBit(34482i), 35677i), abs(_wgslsmith_add_vec2_i32(vec2<i32>(8699i, 29033i), vec2<i32>(1i, -16343i))))));
    let var_1 = var_0;
    let var_2 = _wgslsmith_div_f32(var_1.b.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)) * var_0.b.x))));
    let var_3 = var_1.e;
    var var_4 = vec4<i32>(select(~_wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_1.e.x, 0i, 12956i) ^ vec4<i32>(var_3.x, var_1.e.x, 28216i, -2147483647i), vec4<i32>(-28604i, 27588i, var_0.e.x, var_0.d)), -2147483647i, all(vec4<bool>(any(vec2<bool>(true, true)), true, all(vec2<bool>(true, false)), true))), var_3.x, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(func_1(_wgslsmith_add_vec3_i32(vec3<i32>(-36554i, -1i, var_1.d), vec3<i32>(var_0.e.x, -11651i, var_3.x)), ~vec2<i32>(5145i, var_1.e.x), -505f), reverseBits(select(vec4<i32>(var_1.d, -1i, 0i, 5712i), vec4<i32>(59060i, var_0.d, -29287i, var_3.x), vec4<bool>(false, true, false, false)))), ~vec4<i32>(var_3.x, _wgslsmith_sub_i32(var_1.d, 1i), _wgslsmith_mult_i32(var_0.d, 1i), var_1.e.x)), _wgslsmith_sub_i32(-15452i, -5725i));
    let var_5 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2, 614f, 2734f, -432f), vec4<f32>(var_2, 1290f, var_1.b.x, var_2)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(342f, 128f, var_1.a, 1060f), vec4<f32>(var_1.b.x, -161f, 2441f, 832f), true)))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2, 1621f, -821f, 3420f)))))));
    let var_6 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_5.yw)));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec4<u32>(reverseBits(2149u), ~var_0.c.x, var_1.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 78513u), _wgslsmith_mult_vec3_u32(var_0.c.xxw, var_0.c.zzy)))), _wgslsmith_f_op_f32(step(var_2, _wgslsmith_f_op_f32(exp2(var_2)))), _wgslsmith_f_op_vec4_f32(-var_5), vec4<u32>(0u, ~(~_wgslsmith_sub_u32(4294967295u, var_1.c.x)), 1u, max(0u, u_input.b)), _wgslsmith_sub_i32(-13807i, _wgslsmith_mult_i32(~(~31337i), 28899i)));
}

