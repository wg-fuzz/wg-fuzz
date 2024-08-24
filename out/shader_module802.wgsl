struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: vec3<f32>,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 15> = array<vec4<bool>, 15>(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true));

var<private> global1: Struct_3;

var<private> global2: u32;

var<private> global3: Struct_4;

var<private> global4: Struct_3 = Struct_3(-2001f, 23402u, vec3<f32>(-374f, -129f, 124f), vec4<i32>(-33535i, 1i, -18795i, -1i), Struct_1(1u, vec2<i32>(-13151i, -19736i)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: vec3<i32>) -> Struct_2 {
    var var_0 = global4.e;
    global1 = Struct_3(-167f, global4.b, global1.c, abs(-(-global1.d ^ firstTrailingBit(vec4<i32>(2147483647i, -2147483647i, global4.d.x, -53676i)))), global1.e);
    var var_1 = vec2<u32>(4294967295u, global4.b) & min(vec2<u32>(~var_0.a, global1.e.a), max(vec2<u32>(21342u, firstLeadingBit(global4.e.a)), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 63637u, 17051u), vec3<u32>(46450u, global1.e.a, global4.b)), firstTrailingBit(1u))));
    var_0 = Struct_1(1u, select(global4.e.b, vec2<i32>(-(~u_input.a.x), (i32(-1i) * -43513i) >> (u_input.b % 32u)), select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true))));
    let var_2 = Struct_2(~vec4<i32>(_wgslsmith_mod_i32(2147483647i, u_input.a.x), 0i >> (1u % 32u), -2147483647i, _wgslsmith_mult_i32(var_0.b.x, -25841i)) << ((abs(vec4<u32>(global1.b, 4294967295u, u_input.b, global4.e.a) & vec4<u32>(27656u, 1u, var_0.a, u_input.b)) | ~vec4<u32>(u_input.b, var_1.x, var_0.a, u_input.b)) % vec4<u32>(32u)), global1.e);
    return Struct_2(_wgslsmith_clamp_vec4_i32(abs(var_2.a), _wgslsmith_mod_vec4_i32(var_2.a, max(vec4<i32>(u_input.a.x, var_0.b.x, -3047i, 8697i), var_2.a) << (~vec4<u32>(19894u, var_1.x, 4294967295u, var_2.b.a) % vec4<u32>(32u))), -vec4<i32>(-1i, -global3.b.x, _wgslsmith_div_i32(u_input.a.x, 34745i), _wgslsmith_div_i32(2147483647i, u_input.a.x))), Struct_1(var_2.b.a, u_input.a));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec4<u32>) -> i32 {
    let var_0 = ~u_input.b;
    var var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(global1.c, global1.c), _wgslsmith_f_op_vec3_f32(step(global1.c, vec3<f32>(173f, global3.a.x, global1.a)))))), global1.d.yzw << (arg_2.wxx % vec3<u32>(32u)));
    var var_2 = min(-_wgslsmith_dot_vec4_i32(global4.d, vec4<i32>(-53533i, 23164i, -2147483647i, func_2(vec3<i32>(1i, -35713i, global1.d.x)).a.x)), arg_1.b.b.x);
    global1 = Struct_3(774f, 28388u, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1706f, 1658f, var_1.a.x) - var_1.a)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global3.a.x, global4.c.x, global4.a))))))), -((~arg_1.a | vec4<i32>(-7965i, 1i, global4.e.b.x, 28311i)) ^ (-global1.d >> (_wgslsmith_add_vec4_u32(arg_2, arg_2) % vec4<u32>(32u)))), func_2(vec3<i32>(_wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_clamp_i32(var_1.b.x, u_input.a.x, global1.d.x), -51701i), _wgslsmith_sub_i32(~1i, select(0i, global4.d.x, true)), 2262i)).b);
    var var_3 = _wgslsmith_sub_i32(_wgslsmith_add_i32(1i, 3103i), global4.d.x);
    return ~(-(global3.b.x ^ reverseBits(var_1.b.x)));
}

fn func_4(arg_0: i32) -> Struct_3 {
    global4 = Struct_3(-462f, _wgslsmith_div_u32(9756u, firstTrailingBit(global4.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-961f, global1.a, global1.c.x) - global3.a) * _wgslsmith_div_vec3_f32(vec3<f32>(415f, 1000f, 1359f), vec3<f32>(global3.a.x, global4.c.x, 1122f)))))), vec4<i32>(global1.e.b.x, min(global4.e.b.x, global3.b.x), global1.e.b.x, max(_wgslsmith_mod_i32(-4523i, -5495i) << (~4294967295u % 32u), abs(func_3(vec3<bool>(false, true, true), Struct_2(global1.d, Struct_1(4294967295u, vec2<i32>(global1.e.b.x, global1.d.x))), vec4<u32>(global1.e.a, u_input.b, global1.b, 40892u))))), func_2(global1.d.wzw).b);
    let var_0 = Struct_3(984f, _wgslsmith_add_u32(countOneBits(u_input.b), u_input.b), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.c) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, 1806f, -182f), vec3<f32>(global3.a.x, 282f, -544f), true))))), _wgslsmith_add_vec4_i32(func_2(_wgslsmith_mult_vec3_i32(-vec3<i32>(2147483647i, -100172i, -2147483647i), -vec3<i32>(arg_0, global4.e.b.x, -1685i))).a, vec4<i32>(_wgslsmith_div_i32(1i, -global1.e.b.x), -abs(0i), _wgslsmith_sub_i32(-20807i, 1i), global4.e.b.x)), Struct_1(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global1.e.a, global4.e.a), _wgslsmith_div_vec3_u32(vec3<u32>(global4.b, 68659u, u_input.b), vec3<u32>(0u, 4294967295u, u_input.b))), -abs(_wgslsmith_div_vec2_i32(global3.b.yy, vec2<i32>(global4.e.b.x, 384i)))));
    let var_1 = select(select(!vec2<bool>(true, any(vec2<bool>(true, false))), !select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), false)), vec2<bool>(u_input.b == 24099u, true))), vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, false), false)), !(var_0.e.a <= var_0.b) | ((var_0.b ^ u_input.b) < 0u)), !(select(false, global3.b.x > -20860i, any(vec3<bool>(true, false, true))) | true));
    var var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global3.a, vec3<f32>(600f, global4.a, var_0.c.x), false)), _wgslsmith_f_op_vec3_f32(global3.a * vec3<f32>(-615f, global1.a, global1.c.x)))))), firstLeadingBit(vec3<i32>(50284i, -17309i, _wgslsmith_div_i32(-2147483647i, 6369i | global1.e.b.x))));
    global3 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a, var_0.a, global4.c.x) * _wgslsmith_f_op_vec3_f32(var_0.c + global3.a)), _wgslsmith_div_vec3_f32(var_0.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(-459f, global3.a.x, -201f) - vec3<f32>(global1.c.x, var_0.c.x, -741f)))))), _wgslsmith_add_vec3_i32(~vec3<i32>(~(-13384i), var_0.e.b.x, u_input.a.x << (0u % 32u)), -firstLeadingBit(min(vec3<i32>(global3.b.x, -2147483647i, -1535i), global3.b))));
    return var_0;
}

fn func_5(arg_0: vec4<f32>, arg_1: vec2<u32>, arg_2: vec2<f32>, arg_3: Struct_3) -> Struct_4 {
    let var_0 = arg_3;
    global1 = arg_3;
    var var_1 = -136f;
    let var_2 = !(!vec3<bool>(true, false, !any(vec2<bool>(false, true))));
    let var_3 = min(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(global1.b, var_0.e.a, global1.b) ^ vec3<u32>(global1.e.a, 23538u, 1u), abs(vec3<u32>(global1.b, arg_1.x, var_0.b)), ~vec3<u32>(71865u, global4.b, 106433u)), select(vec3<u32>(66332u, global1.b, u_input.b) << (vec3<u32>(u_input.b, 15879u, global1.b) % vec3<u32>(32u)), reverseBits(vec3<u32>(1227u, arg_3.b, global1.b)), true)), vec3<u32>(abs(u_input.b), global1.e.a, 0u)), _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_div_u32(70970u, 12631u), _wgslsmith_sub_u32(global1.b, 13310u), 1u) << (abs(vec3<u32>(4294967295u, global4.e.a, arg_3.e.a)) % vec3<u32>(32u)), vec3<u32>(arg_3.e.a, _wgslsmith_div_u32(_wgslsmith_clamp_u32(99082u, global4.e.a, global4.e.a), 4294967295u | u_input.b), _wgslsmith_clamp_u32(~11134u, 0u, ~global1.b))));
    return Struct_4(arg_3.c, ~(global4.d.wyx >> (~vec3<u32>(0u, arg_1.x, u_input.b) % vec3<u32>(32u))));
}

fn func_1(arg_0: vec4<bool>, arg_1: i32) -> vec4<i32> {
    var var_0 = select(all(!(!vec4<bool>(true, true, arg_0.x, arg_0.x))), false, arg_0.x);
    var var_1 = func_5(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, global4.a, 1894f, global3.a.x) - vec4<f32>(global4.c.x, global4.a, global4.a, global1.c.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-703f, global3.a.x, global4.a, global1.c.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, _wgslsmith_f_op_f32(ceil(-304f)), 2571f, _wgslsmith_f_op_f32(-global4.c.x)))), vec2<u32>(~global1.e.a, ~21917u), global3.a.xz, func_4(func_3(!select(arg_0.zzx, vec3<bool>(arg_0.x, false, arg_0.x), false), func_2(-vec3<i32>(-1i, -1i, 0i)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 1u, 4294967295u, 25692u) << (vec4<u32>(147015u, 0u, 99057u, global4.e.a) % vec4<u32>(32u)), ~vec4<u32>(u_input.b, u_input.b, u_input.b, 20318u)))));
    var var_2 = Struct_2(_wgslsmith_mod_vec4_i32(-global1.d, global4.d), func_4(6340i).e);
    var var_3 = _wgslsmith_f_op_f32(-func_4(u_input.a.x).c.x);
    var var_4 = vec2<u32>(~3359u, 4294967295u);
    return _wgslsmith_sub_vec4_i32(var_2.a, global1.d);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 15>();
    global1 = Struct_3(-473f, ~25345u, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(global4.c.x - -341f), global4.a, _wgslsmith_f_op_f32(f32(-1f) * -154f)))))), _wgslsmith_sub_vec4_i32(vec4<i32>(select(13011i, global4.e.b.x, false), global1.d.x | 11866i, u_input.a.x, _wgslsmith_dot_vec2_i32(global4.e.b, u_input.a)) & _wgslsmith_add_vec4_i32(max(global1.d, global4.d), func_1(vec4<bool>(true, false, false, true), global4.d.x)), _wgslsmith_mult_vec4_i32(global1.d, global1.d)), func_4(u_input.a.x).e);
    var var_0 = ~1u;
    global1 = func_4(_wgslsmith_mod_i32(min(firstLeadingBit(20896i), 3226i) << (select(global4.b << (u_input.b % 32u), ~14102u, true) % 32u), abs(-global4.d.x)));
    let var_1 = vec3<u32>(0u, _wgslsmith_dot_vec3_u32(~vec3<u32>(global1.e.a, 21719u, global1.b), vec3<u32>(4294967295u, ~1u, _wgslsmith_sub_u32(global1.b, global1.b))), ~u_input.b) << (vec3<u32>(~global1.b, func_2(vec3<i32>(-1i) * -vec3<i32>(1i, u_input.a.x, global1.e.b.x)).b.a, firstLeadingBit(u_input.b)) % vec3<u32>(32u));
    var var_2 = _wgslsmith_f_op_f32(func_4(~32230i).a * _wgslsmith_f_op_f32(global1.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a))));
    let var_3 = ~2147483647i;
    var var_4 = 0u >> (1u % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(0u, 4294967295u, ~(func_2(global1.d.zwx).b.a ^ 7360u), ~(~func_2(global3.b).b.a)));
}

