struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: u32,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: f32) -> i32 {
    return abs(arg_2.a);
}

fn func_2() -> vec2<i32> {
    let var_0 = ~u_input.b.yy;
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(1310f, 1000f) - vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-117f)), 393f, all(vec2<bool>(true, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(868f)))))));
    var var_2 = true;
    let var_3 = Struct_2(Struct_1(19417i, vec3<bool>(true, true, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -1000f, 623f, -699f) - vec4<f32>(240f, var_1.x, var_1.x, var_1.x))))))), Struct_1(_wgslsmith_mod_i32(67213i, select(18765i >> (var_0.x % 32u), _wgslsmith_add_i32(u_input.a.x, u_input.a.x), any(vec2<bool>(true, true)))), vec3<bool>(true, true, true)));
    var_2 = all(!vec3<bool>(!(var_3.a.b.x && var_3.c.b.x), all(select(vec4<bool>(var_3.c.b.x, true, var_3.a.b.x, true), vec4<bool>(true, true, true, var_3.c.b.x), vec4<bool>(true, var_3.a.b.x, var_3.a.b.x, var_3.a.b.x))), var_3.c.b.x));
    return vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, var_3.a.a), vec2<i32>(-19020i, u_input.a.x)), max(var_3.c.a, _wgslsmith_add_i32(-16361i ^ u_input.a.x, var_3.c.a)));
}

fn func_3(arg_0: vec2<i32>, arg_1: u32, arg_2: vec4<bool>, arg_3: Struct_3) -> i32 {
    let var_0 = _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(i32(-1i) * -2147483647i, select(32681i, u_input.a.x, true), 55062i) >> (vec3<u32>(u_input.c.x, ~4294967295u, 24757u << (arg_1 % 32u)) % vec3<u32>(32u))), _wgslsmith_mod_vec3_i32(u_input.a, _wgslsmith_sub_vec3_i32(arg_3.c, vec3<i32>(arg_0.x, arg_3.c.x, arg_3.b.x))) & ~u_input.a);
    var var_1 = Struct_4(~vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(u_input.c.x, 9743u, u_input.c.x)), arg_1, 0u, 72991u) ^ vec4<u32>(u_input.b.x, select(_wgslsmith_add_u32(arg_3.d, 15927u), 3702u, arg_2.x), u_input.b.x, firstTrailingBit(firstLeadingBit(arg_3.d))));
    var var_2 = arg_0.x;
    var_2 = abs(-9236i);
    var_1 = Struct_4(var_1.a);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(min(~vec4<i32>(u_input.a.x, 3685i, -2147483647i, -2147483647i), vec4<i32>(1i, u_input.a.x, i32(-1i) * -44754i, -u_input.a.x)) | -countOneBits(firstLeadingBit(vec4<i32>(u_input.a.x, 1i, u_input.a.x, u_input.a.x))));
    var_0 = vec4<i32>(var_0.x, var_0.x, max(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(27283i, u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(0i, 20061i, u_input.a.x, var_0.x), vec4<i32>(var_0.x, -23519i, 11274i, var_0.x)), vec4<i32>(u_input.a.x, -12880i, 0i, u_input.a.x))), select(55833i, -var_0.x, true)), _wgslsmith_clamp_i32(-1i, u_input.a.x, _wgslsmith_mult_i32(var_0.x, func_1(vec2<u32>(4294967295u, u_input.c.x) ^ u_input.c.xx, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1731f, 684f) * vec2<f32>(1312f, -744f)), Struct_1(var_0.x, vec3<bool>(false, false, true)), _wgslsmith_f_op_f32(858f - -610f)))));
    let var_1 = -_wgslsmith_div_vec2_i32(abs(vec2<i32>(73420i, -2147483647i)), func_2());
    var var_2 = abs(vec4<i32>(u_input.a.x, -13066i, min(-6336i, func_3(vec2<i32>(var_1.x, var_1.x), ~u_input.b.x, select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), false), Struct_3(vec3<f32>(852f, 1489f, 1572f), vec4<i32>(var_1.x, var_1.x, -1i, u_input.a.x), u_input.a, u_input.c.x))), -var_0.x));
    let var_3 = var_1;
    let var_4 = Struct_1(_wgslsmith_mod_i32(func_2().x, -var_3.x), vec3<bool>(true, all(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), false)), true));
    var_2 = ~(vec4<i32>(var_3.x, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, var_4.a, 33911i), var_2.wzy), -var_3.x, ~(-30673i)) ^ (vec4<i32>(-1i) * -(vec4<i32>(-1i, -1i, var_2.x, var_0.x) & vec4<i32>(2147483647i, var_0.x, 77657i, -41394i))));
    var var_5 = 184f;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.zz, _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(0i, 0i, -50105i, var_1.x), vec4<i32>(var_2.x, -36865i, var_0.x, 27529i)), 27905i, var_3.x, -28747i), ~(vec4<i32>(-1i) * -vec4<i32>(2147483647i, -31068i, 2147483647i, -8297i))), _wgslsmith_dot_vec4_u32(max(~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, u_input.b.x, u_input.b.x), vec4<u32>(17190u, 48580u, u_input.b.x, u_input.b.x)), ~reverseBits(vec4<u32>(u_input.c.x, 32678u, u_input.b.x, 4294967295u))), ~vec4<u32>(u_input.b.x, 4294967295u >> (u_input.b.x % 32u), 0u, 4294967295u)), ~(~abs(~u_input.b.x)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1204f, 965f, 782f, 307f), vec4<f32>(809f, -1316f, -151f, 375f)))), vec4<f32>(-2108f, 2127f, _wgslsmith_f_op_f32(-1734f * _wgslsmith_f_op_f32(abs(-436f))), 799f))));
}

