struct Struct_1 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 9> = array<vec4<i32>, 9>(vec4<i32>(i32(-2147483648), i32(-2147483648), 11091i, -10164i), vec4<i32>(-20026i, 12104i, -1i, 42110i), vec4<i32>(1i, i32(-2147483648), 1i, -1i), vec4<i32>(i32(-2147483648), 0i, -22388i, 2147483647i), vec4<i32>(-13727i, 2147483647i, 1i, -6325i), vec4<i32>(-1i, -202i, 2147483647i, -1i), vec4<i32>(24601i, 1i, i32(-2147483648), 26758i), vec4<i32>(12538i, 66402i, -40520i, -22471i), vec4<i32>(1i, 2147483647i, 2147483647i, -36575i));

var<private> global1: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec4<f32>(1091f, 405f, -1368f, -356f), vec2<u32>(0u, 0u), i32(-2147483648), true), Struct_1(vec4<f32>(422f, 489f, -163f, 458f), vec2<u32>(13526u, 52331u), 2147483647i, false), Struct_1(vec4<f32>(-563f, 960f, -580f, 174f), vec2<u32>(14116u, 304u), -31481i, true), Struct_1(vec4<f32>(390f, 265f, 1261f, -347f), vec2<u32>(4294967295u, 43048u), -1i, false), Struct_1(vec4<f32>(-1081f, -500f, 1000f, -523f), vec2<u32>(671u, 36845u), 1i, false), Struct_1(vec4<f32>(714f, -1000f, -378f, 1663f), vec2<u32>(0u, 0u), 1i, false), Struct_1(vec4<f32>(1158f, -476f, 400f, 1151f), vec2<u32>(4294967295u, 38167u), 9929i, true), Struct_1(vec4<f32>(1549f, 1522f, -260f, -1690f), vec2<u32>(23546u, 39319u), 0i, true), Struct_1(vec4<f32>(1772f, 106f, -1000f, 305f), vec2<u32>(0u, 57552u), -1i, false), Struct_1(vec4<f32>(-818f, 1484f, 235f, -880f), vec2<u32>(3259u, 4294967295u), 2147483647i, false), Struct_1(vec4<f32>(486f, 1280f, -2007f, -330f), vec2<u32>(19013u, 4294967295u), 56485i, true), Struct_1(vec4<f32>(-1200f, -2671f, -242f, -417f), vec2<u32>(14561u, 0u), 2106i, true), Struct_1(vec4<f32>(178f, 260f, -113f, 387f), vec2<u32>(55803u, 1u), -22315i, true), Struct_1(vec4<f32>(-1308f, -1000f, 1552f, -1000f), vec2<u32>(4294967295u, 19928u), -35298i, true), Struct_1(vec4<f32>(-500f, -589f, 1324f, -532f), vec2<u32>(20228u, 1u), 871i, false), Struct_1(vec4<f32>(1307f, -225f, 1480f, 1443f), vec2<u32>(4294967295u, 1u), 1i, false), Struct_1(vec4<f32>(-151f, -1027f, 1945f, 1469f), vec2<u32>(80889u, 14599u), -21025i, false), Struct_1(vec4<f32>(-205f, -715f, -430f, 1000f), vec2<u32>(19358u, 45132u), 33341i, false));

var<private> global2: Struct_3 = Struct_3(vec4<i32>(2147483647i, i32(-2147483648), 6727i, 1i));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: vec4<u32>, arg_3: Struct_1) -> vec4<u32> {
    let var_0 = Struct_2(~_wgslsmith_mult_vec3_u32(arg_2.xxx ^ vec3<u32>(0u, arg_2.x, u_input.b), ~arg_2.wxz), select(select(!(!vec2<bool>(arg_0.x, arg_0.x)), arg_0.xz, any(arg_0)), arg_0.zx, arg_3.d), !all(vec3<bool>(true, false, true)), global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~(~arg_2.x), ~_wgslsmith_div_u32(0u, 4294967295u)), 18u)]);
    global2 = Struct_3(~u_input.a);
    return min(~vec4<u32>(max(4294967295u, 60551u) | arg_2.x, arg_2.x, firstTrailingBit(_wgslsmith_div_u32(1u, arg_3.b.x)), firstTrailingBit(1365u)), arg_2);
}

fn func_2() -> i32 {
    global2 = Struct_3(~vec4<i32>(_wgslsmith_mod_i32(global2.a.x, -23248i), i32(-1i) * -1i, 0i, u_input.c) << (_wgslsmith_clamp_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, u_input.b, 1u, u_input.b), vec4<u32>(0u, u_input.b, 4294967295u, u_input.b), vec4<u32>(u_input.b, 2535u, u_input.b, 28970u)), vec4<u32>(4294967295u, u_input.b, u_input.b, 4294967295u) & func_3(vec3<bool>(true, true, true), global2.a.zx, vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), Struct_1(vec4<f32>(504f, 398f, -2162f, 983f), vec2<u32>(10539u, 31184u), u_input.c, false)), ~firstLeadingBit(vec4<u32>(1u, 0u, 84788u, 4294967295u))) % vec4<u32>(32u)));
    global1 = array<Struct_1, 18>();
    var var_0 = !(!any(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true))));
    var var_1 = _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 0u, u_input.b ^ 47925u, 0u), vec4<u32>(abs(1u), ~_wgslsmith_mod_u32(~46614u, u_input.b), u_input.b, 2969u));
    var var_2 = u_input.c & -2147483647i;
    return u_input.c;
}

fn func_1(arg_0: Struct_3, arg_1: vec4<i32>) -> vec4<bool> {
    global0 = array<vec4<i32>, 9>();
    let var_0 = _wgslsmith_mult_i32(func_2(), func_2());
    global0 = array<vec4<i32>, 9>();
    let var_1 = Struct_3(vec4<i32>(-_wgslsmith_div_i32(_wgslsmith_mult_i32(-1i, 69510i), firstTrailingBit(arg_0.a.x)), _wgslsmith_mult_i32(~func_2(), 2147483647i), ~reverseBits(-2147483647i), -var_0));
    global1 = array<Struct_1, 18>();
    return select(vec4<bool>(true, false, !(!any(vec4<bool>(false, true, false, false))), true), select(select(select(vec4<bool>(true, false, false, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true)), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), false), false)), true), !(!((u_input.b | u_input.b) <= max(u_input.b, 0u))));
}

fn func_4(arg_0: vec4<i32>, arg_1: bool) -> Struct_3 {
    var var_0 = Struct_2(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.b, 1u), ~vec3<u32>(34911u, 4294967295u, 0u)) ^ ~(~vec3<u32>(4294967295u, u_input.b, 16990u)), select(!select(select(vec2<bool>(arg_1, false), vec2<bool>(true, true), vec2<bool>(arg_1, true)), select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, arg_1), vec2<bool>(false, arg_1)), !vec2<bool>(arg_1, arg_1)), !vec2<bool>(any(vec4<bool>(false, arg_1, arg_1, true)), arg_1), vec2<bool>(all(select(vec3<bool>(true, arg_1, arg_1), vec3<bool>(arg_1, arg_1, true), false)), false | arg_1)), any(vec4<bool>(arg_1, false, true || any(vec4<bool>(arg_1, arg_1, false, false)), true)), global1[_wgslsmith_index_u32(0u >> ((4294967295u << (_wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b), vec2<bool>(arg_1, arg_1)), vec2<u32>(82824u, u_input.b)) % 32u)) % 32u), 18u)]);
    let var_1 = global2.a.x;
    var var_2 = _wgslsmith_sub_vec2_i32(reverseBits(vec2<i32>(~16992i, 2147483647i)), arg_0.wx) & vec2<i32>(u_input.a.x, ~(-1657i));
    let var_3 = Struct_1(var_0.d.a, vec2<u32>(~_wgslsmith_clamp_u32(24949u, 0u & u_input.b, _wgslsmith_mult_u32(var_0.d.b.x, 4294967295u)), var_0.d.b.x), global2.a.x | ((arg_0.x | 2147483647i) | firstTrailingBit(u_input.a.x)), !(any(!var_0.b) & false));
    var_0 = Struct_2(reverseBits(var_0.a), vec2<bool>(true, all(select(select(vec3<bool>(arg_1, false, var_3.d), vec3<bool>(var_0.d.d, true, true), vec3<bool>(arg_1, true, true)), vec3<bool>(true, true, true), var_3.b.x != 1u))), !select(all(select(vec4<bool>(arg_1, false, var_3.d, var_3.d), vec4<bool>(true, arg_1, false, var_3.d), var_3.d)), true || all(vec4<bool>(var_0.b.x, var_0.d.d, true, true)), func_1(Struct_3(vec4<i32>(2147483647i, u_input.a.x, u_input.c, var_2.x)), arg_0).x), global1[_wgslsmith_index_u32(var_3.b.x, 18u)]);
    return Struct_3(-abs(min(arg_0, vec4<i32>(global2.a.x, 1i, 52887i, var_2.x)) << (firstLeadingBit(vec4<u32>(var_3.b.x, 20183u, u_input.b, var_3.b.x)) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 9>();
    global2 = func_4(select(vec4<i32>(53151i, 2147483647i ^ u_input.a.x, ~2147483647i, -u_input.c), -vec4<i32>(19315i, global2.a.x, -30073i, global2.a.x), select(func_1(Struct_3(vec4<i32>(0i, -1i, u_input.a.x, global2.a.x)), vec4<i32>(-2147483647i, u_input.c, 4973i, u_input.a.x)), vec4<bool>(false, false, true, false), true)) | -(~(~u_input.a)), ((any(vec2<bool>(false, true)) && true) | true) == true);
    let var_0 = Struct_2(~vec3<u32>(u_input.b, ~firstTrailingBit(14341u), 0u), !vec2<bool>(u_input.b <= 1u, true), all(func_1(func_4(vec4<i32>(22388i, global2.a.x, global2.a.x, u_input.a.x), true), global0[_wgslsmith_index_u32(4297u << (1u % 32u), 9u)]).xy) || true, Struct_1(vec4<f32>(257f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1581f * 525f))), 789f, _wgslsmith_f_op_f32(f32(-1f) * -1396f)), firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 1u) << (vec2<u32>(30659u, u_input.b) % vec2<u32>(32u)), min(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(1u, 50442u)))), ~(-u_input.c) >> ((66340u & (1u ^ u_input.b)) % 32u), all(vec4<bool>(false, false, true, func_1(Struct_3(vec4<i32>(u_input.a.x, -27563i, 2147483647i, 0i)), global0[_wgslsmith_index_u32(u_input.b, 9u)]).x))));
    let var_1 = !var_0.d.d;
    var var_2 = var_0;
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(320f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(849f, -1121f, true)))))) < var_2.d.a.x;
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1259f * _wgslsmith_f_op_f32(abs(-1020f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_2.d.a.x, var_0.d.a.x))), var_0.d.a.x)));
    let var_5 = -289f;
    var var_6 = _wgslsmith_f_op_vec4_f32(-var_2.d.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_4.x), vec3<u32>(45729u, ~(~(~var_2.d.b.x)), u_input.b));
}

