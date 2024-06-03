struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
    c: f32,
    d: i32,
    e: bool,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: f32,
    d: f32,
    e: vec4<u32>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: i32,
    c: Struct_3,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: i32;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: bool, arg_1: vec2<i32>) -> u32 {
    global1 = -firstLeadingBit(-global0.d) << (u_input.c % 32u);
    global0 = Struct_3(~min(global0.a, (global0.a ^ global0.a) & _wgslsmith_add_vec3_i32(global0.a, global0.a)), -112345i << (_wgslsmith_mod_u32(reverseBits(u_input.c), 0u) % 32u), _wgslsmith_div_f32(global0.c, _wgslsmith_f_op_f32(sign(-570f))), min(1i, global0.a.x), all(vec2<bool>(!arg_0, all(vec3<bool>(true, true, true)))));
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.c, global0.c) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-594f, global0.c))))));
    var var_1 = vec2<i32>(global0.d, ~u_input.a.x);
    let var_2 = _wgslsmith_div_vec2_u32(~(~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.c, 1u))) & vec2<u32>(0u, 1u), ~vec2<u32>(49656u, _wgslsmith_mod_u32(0u, reverseBits(6159u))));
    return var_2.x | _wgslsmith_dot_vec2_u32(var_2, var_2);
}

fn func_2(arg_0: vec4<i32>) -> bool {
    let var_0 = ~_wgslsmith_sub_vec3_i32(arg_0.ywx, vec3<i32>(u_input.a.x, global0.b, _wgslsmith_div_i32(select(global0.a.x, -2147483647i, global0.e), 1299i >> (u_input.c % 32u))));
    let var_1 = ~(func_3(false, -_wgslsmith_sub_vec2_i32(global0.a.yz, global0.a.xy)) & ~firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 10927u, u_input.c), vec3<u32>(26444u, u_input.c, u_input.b))));
    global0 = Struct_3(~vec3<i32>(-1i, u_input.a.x, _wgslsmith_add_i32(~arg_0.x, var_0.x)), firstLeadingBit(firstLeadingBit(-26346i)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1183f * global0.c), 1f)), -(~global0.b & (~2147483647i & u_input.a.x)), !(!(-global0.a.x != -37141i)));
    var var_2 = arg_0.x != -1i;
    var_2 = global0.e;
    return any(select(select(!select(vec2<bool>(false, global0.e), vec2<bool>(true, true), global0.e), select(select(vec2<bool>(global0.e, false), vec2<bool>(false, global0.e), vec2<bool>(global0.e, global0.e)), select(vec2<bool>(false, true), vec2<bool>(global0.e, global0.e), vec2<bool>(true, true)), true), select(vec2<bool>(global0.e, global0.e), select(vec2<bool>(true, global0.e), vec2<bool>(global0.e, global0.e), true), global0.c < 893f)), !(!select(vec2<bool>(false, false), vec2<bool>(global0.e, true), vec2<bool>(global0.e, global0.e))), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), global0.e))));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_5, arg_2: Struct_3, arg_3: vec4<bool>) -> Struct_3 {
    let var_0 = arg_1.a;
    global1 = i32(-1i) * -reverseBits(-global0.b);
    let var_1 = arg_2;
    var var_2 = Struct_4(12738i, false, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.c.c), _wgslsmith_f_op_f32(abs(-1000f)))))), _wgslsmith_f_op_f32(arg_2.c - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-164f)))), _wgslsmith_mult_vec4_u32(~arg_1.e.c, arg_1.e.c));
    let var_3 = arg_1;
    return var_3.c;
}

fn func_1() -> bool {
    var var_0 = 30396u;
    global0 = func_4(_wgslsmith_mod_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(54335u, 36905u, u_input.c), vec3<u32>(u_input.b, 22682u, u_input.b)) << (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, 4575u, u_input.b), max(vec3<u32>(u_input.b, u_input.b, 51439u), vec3<u32>(0u, 55385u, 55052u))) % vec3<u32>(32u)), vec3<u32>(u_input.c, firstTrailingBit(min(u_input.c, 0u)), u_input.c)), Struct_5(~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, 34132i, -1i), vec4<i32>(u_input.a.x, 25101i, u_input.a.x, 1i), -vec4<i32>(u_input.a.x, global0.b, 1i, -2147483647i)), ~min(u_input.a.x, firstTrailingBit(u_input.a.x)), Struct_3(vec3<i32>(27309i, global0.b, countOneBits(global0.b)), u_input.a.x >> (0u % 32u), -487f, _wgslsmith_mult_i32(global0.a.x, -41078i), func_2(-vec4<i32>(4660i, global0.a.x, -5853i, 14496i))), countOneBits(firstLeadingBit(global0.d)), Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-328f, global0.c, global0.c, global0.c)))), !global0.e, countOneBits(vec4<u32>(u_input.b, 10686u, u_input.c, 1u) >> (vec4<u32>(110676u, 7300u, u_input.b, u_input.c) % vec4<u32>(32u))))), Struct_3(_wgslsmith_clamp_vec3_i32(global0.a, global0.a, -select(vec3<i32>(u_input.a.x, global0.b, -23299i), global0.a, vec3<bool>(true, global0.e, true))), u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1113f) - 418f)), -(~_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.a.x, -7262i, -1i), vec4<i32>(global0.b, -6857i, global0.d, 0i))), all(vec3<bool>(16347u <= u_input.c, false, global0.e))), !(!select(select(vec4<bool>(true, global0.e, global0.e, global0.e), vec4<bool>(global0.e, global0.e, false, false), global0.e), vec4<bool>(true, global0.e, true, true), false)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -399f) * _wgslsmith_f_op_f32(-global0.c)));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.c, 773f, 145f, global0.c), vec4<f32>(global0.c, global0.c, 2258f, global0.c))) - vec4<f32>(_wgslsmith_f_op_f32(var_1 - 274f), _wgslsmith_f_op_f32(round(var_1)), _wgslsmith_f_op_f32(693f * -636f), -817f)))) + vec4<f32>(global0.c, -923f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(455f - -1495f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.c)))));
    var var_3 = func_4(~abs(vec3<u32>(u_input.b, u_input.c >> (30867u % 32u), ~9129u)), Struct_5(vec4<i32>(_wgslsmith_clamp_i32(0i, ~28747i, 23749i), select(15657i, -2147483647i, true) >> (44249u % 32u), _wgslsmith_dot_vec2_i32(global0.a.zx, vec2<i32>(u_input.a.x, 3410i)) << (reverseBits(u_input.b) % 32u), -global0.d), -_wgslsmith_dot_vec4_i32(vec4<i32>(10465i, u_input.a.x, u_input.a.x, u_input.a.x), ~vec4<i32>(0i, global0.d, -3682i, global0.b)), Struct_3(vec3<i32>(global0.a.x >> (4294967295u % 32u), -37163i, 1i), u_input.a.x, _wgslsmith_div_f32(345f, func_4(vec3<u32>(1u, 4294967295u, u_input.b), Struct_5(vec4<i32>(global0.a.x, 21792i, global0.a.x, global0.b), 1i, Struct_3(vec3<i32>(global0.a.x, global0.a.x, u_input.a.x), 2147483647i, -573f, u_input.a.x, false), -2147483647i, Struct_1(var_2, global0.e, vec4<u32>(u_input.b, 60094u, u_input.c, 1u))), Struct_3(vec3<i32>(-12298i, u_input.a.x, global0.d), 0i, -575f, u_input.a.x, true), vec4<bool>(global0.e, false, global0.e, false)).c), -(~u_input.a.x), func_4(vec3<u32>(u_input.c, 55358u, 161010u), Struct_5(vec4<i32>(u_input.a.x, 19061i, 17551i, u_input.a.x), -5893i, Struct_3(vec3<i32>(global0.a.x, -27380i, -1i), u_input.a.x, var_1, global0.d, global0.e), 47181i, Struct_1(var_2, global0.e, vec4<u32>(u_input.c, 51438u, 1u, u_input.b))), Struct_3(global0.a, 0i, var_1, global0.a.x, global0.e), vec4<bool>(true, true, true, true)).e), -u_input.a.x, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(557f, global0.c, var_2.x, var_2.x))), true, vec4<u32>(2936u, u_input.b, abs(1u), u_input.c >> (14381u % 32u)))), Struct_3(min(global0.a, vec3<i32>(~u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(60964i, u_input.a.x, 2147483647i), global0.a), global0.d)), -31815i, 603f, global0.a.x, !select(all(vec3<bool>(global0.e, false, true)), u_input.b < u_input.b, global0.e)), vec4<bool>(0i == ~select(u_input.a.x, 2147483647i, true), global0.e, global0.e, false));
    return all(!vec3<bool>(select(var_3.e, var_3.e, global0.e) || var_3.e, !(var_2.x > var_1), all(!vec4<bool>(false, false, global0.e, var_3.e))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(vec3<bool>(global0.e && !global0.e, false & global0.e, func_1()), vec3<bool>(!global0.e, all(!vec4<bool>(false, global0.e, false, global0.e)), global0.e), false), !select(select(!vec3<bool>(global0.e, false, global0.e), vec3<bool>(global0.e, true, global0.e), vec3<bool>(global0.e, global0.e, global0.e)), !(!vec3<bool>(global0.e, global0.e, global0.e)), true), abs(_wgslsmith_div_u32(min(4294967295u, 17277u), 1u)) > u_input.b);
    var var_1 = _wgslsmith_f_op_f32(-global0.c);
    global0 = Struct_3(_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, global0.b)), -u_input.a), -2147483647i, _wgslsmith_mod_i32(~global0.b, 4941i)), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(global0.a.x, u_input.a.x, 0i), vec3<i32>(2147483647i, global0.d, -49021i), global0.a) & vec3<i32>(28286i, global0.d, u_input.a.x), select(reverseBits(vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x) & vec3<i32>(u_input.a.x, -1i, u_input.a.x)), vec3<i32>(_wgslsmith_mult_i32(global0.a.x, 1i), u_input.a.x, 0i), select(vec3<bool>(false, var_0.x, false), vec3<bool>(true, global0.e, global0.e), true))), 5193i, _wgslsmith_f_op_f32(196f - global0.c), u_input.a.x, !all(!select(vec2<bool>(true, false), var_0.xz, vec2<bool>(var_0.x, true))));
    var var_2 = -1i >> (0u % 32u);
    global0 = Struct_3(select(~(vec3<i32>(global0.b, 5883i, -1i) & (global0.a << (vec3<u32>(0u, u_input.c, u_input.b) % vec3<u32>(32u)))), countOneBits(func_4(vec3<u32>(66733u, 5664u, u_input.b), Struct_5(vec4<i32>(global0.a.x, 35646i, u_input.a.x, -8110i), u_input.a.x, Struct_3(vec3<i32>(-1i, -2147483647i, global0.d), u_input.a.x, global0.c, global0.d, false), u_input.a.x, Struct_1(vec4<f32>(global0.c, global0.c, global0.c, global0.c), false, vec4<u32>(u_input.b, u_input.c, 64054u, u_input.c))), Struct_3(vec3<i32>(u_input.a.x, -22625i, u_input.a.x), global0.d, 771f, -1i, global0.e), vec4<bool>(var_0.x, true, global0.e, var_0.x)).a) << (firstLeadingBit(max(vec3<u32>(11132u, u_input.c, u_input.c), vec3<u32>(1u, 4294967295u, u_input.b))) % vec3<u32>(32u)), var_0.x), _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.a.x, -25122i) ^ -2495i, -reverseBits(u_input.a.x)) >> (48098u % 32u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global0.c, -1000f, func_4(~vec3<u32>(10946u, 62531u, u_input.b), Struct_5(vec4<i32>(-2147483647i, -18136i, -50510i, u_input.a.x), u_input.a.x, Struct_3(vec3<i32>(global0.d, -38475i, 10879i), global0.b, -1267f, u_input.a.x, var_0.x), 0i, Struct_1(vec4<f32>(global0.c, -976f, -201f, global0.c), true, vec4<u32>(u_input.b, u_input.c, 68789u, 17058u))), Struct_3(vec3<i32>(-1i, 1i, 2147483647i), global0.b, 1000f, global0.d, var_0.x), select(vec4<bool>(true, global0.e, global0.e, var_0.x), vec4<bool>(global0.e, false, true, false), var_0.x)).e)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1290f * -1386f), 1333f)), u_input.a.x, all(vec3<bool>(select(true, global0.c > global0.c, u_input.c <= 1u), global0.e, !(global0.e | true))));
    global0 = func_4(vec3<u32>(5163u, u_input.b, _wgslsmith_sub_u32(min(u_input.c, u_input.c), 35319u)), Struct_5(abs(_wgslsmith_div_vec4_i32(~vec4<i32>(2147483647i, global0.a.x, 1i, global0.d), vec4<i32>(0i, -9868i, 0i, -27380i))), u_input.a.x, Struct_3(_wgslsmith_div_vec3_i32(vec3<i32>(-12433i, u_input.a.x, global0.d), _wgslsmith_mult_vec3_i32(global0.a, global0.a)), func_4(select(vec3<u32>(1u, 12639u, u_input.c), vec3<u32>(u_input.c, u_input.b, 4294967295u), var_0), Struct_5(vec4<i32>(1i, 0i, 0i, -3662i), 13337i, Struct_3(global0.a, global0.d, global0.c, -38694i, var_0.x), 2147483647i, Struct_1(vec4<f32>(global0.c, global0.c, -960f, global0.c), true, vec4<u32>(u_input.c, u_input.b, u_input.c, u_input.b))), Struct_3(global0.a, 0i, -232f, u_input.a.x, true), vec4<bool>(global0.e, var_0.x, var_0.x, global0.e)).d, global0.c, global0.b, var_0.x), -2147483647i, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(min(global0.c, -146f)), _wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(120f + 121f), 1000f), true, abs(vec4<u32>(17839u, u_input.c, 0u, 60930u)) >> (vec4<u32>(u_input.b, u_input.c, 4294967295u, 121097u) % vec4<u32>(32u)))), func_4(abs(select(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, u_input.c, u_input.b), vec3<u32>(u_input.c, u_input.c, 4294967295u)), vec3<u32>(u_input.c, 99140u, 24955u) << (vec3<u32>(u_input.b, 0u, 0u) % vec3<u32>(32u)), var_0)), Struct_5(reverseBits(~vec4<i32>(global0.d, 7335i, 0i, global0.d)), -firstTrailingBit(global0.a.x), Struct_3(~vec3<i32>(91075i, -1i, -44427i), u_input.a.x << (u_input.c % 32u), _wgslsmith_f_op_f32(max(global0.c, global0.c)), 1i, global0.e & false), -global0.d, Struct_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(833f, global0.c, -1000f, 241f))), global0.e & false, vec4<u32>(u_input.c, 4294967295u, u_input.b, 0u) ^ vec4<u32>(u_input.b, 53039u, 24563u, 4294967295u))), func_4(~countOneBits(vec3<u32>(u_input.b, u_input.b, 45103u)), Struct_5(vec4<i32>(-2147483647i, -41392i, 0i, u_input.a.x), global0.b & 1i, func_4(vec3<u32>(u_input.b, 4294967295u, u_input.b), Struct_5(vec4<i32>(u_input.a.x, -1i, u_input.a.x, global0.a.x), u_input.a.x, Struct_3(global0.a, 2147483647i, global0.c, -1i, true), -4403i, Struct_1(vec4<f32>(global0.c, global0.c, -1000f, 278f), true, vec4<u32>(1u, 11923u, u_input.c, 63012u))), Struct_3(vec3<i32>(-1i, -7253i, -20689i), u_input.a.x, global0.c, global0.a.x, true), vec4<bool>(false, global0.e, true, false)), global0.a.x, Struct_1(vec4<f32>(-622f, 819f, -1000f, global0.c), true, vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b))), func_4(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.b, 0u), vec3<u32>(u_input.b, u_input.b, u_input.c), vec3<u32>(u_input.b, 7217u, 62043u)), Struct_5(vec4<i32>(-1i, -2147483647i, -2174i, -2147483647i), 0i, Struct_3(global0.a, u_input.a.x, 609f, global0.d, global0.e), -1i, Struct_1(vec4<f32>(global0.c, 511f, global0.c, -560f), true, vec4<u32>(31819u, 0u, u_input.c, 42104u))), func_4(vec3<u32>(50281u, u_input.c, 38u), Struct_5(vec4<i32>(0i, u_input.a.x, -10338i, -2147483647i), 18601i, Struct_3(global0.a, 0i, global0.c, -4638i, var_0.x), u_input.a.x, Struct_1(vec4<f32>(-563f, 1000f, global0.c, global0.c), true, vec4<u32>(u_input.c, u_input.b, 10670u, u_input.c))), Struct_3(vec3<i32>(global0.d, -1i, u_input.a.x), u_input.a.x, -347f, -2166i, false), vec4<bool>(false, false, global0.e, var_0.x)), select(vec4<bool>(false, true, true, true), vec4<bool>(false, global0.e, global0.e, true), vec4<bool>(global0.e, var_0.x, var_0.x, false))), select(select(vec4<bool>(false, var_0.x, global0.e, var_0.x), vec4<bool>(false, false, var_0.x, global0.e), false), select(vec4<bool>(false, true, var_0.x, global0.e), vec4<bool>(true, true, global0.e, global0.e), true), select(vec4<bool>(false, var_0.x, false, var_0.x), vec4<bool>(false, true, global0.e, true), false))), vec4<bool>(var_0.x, (var_0.x == false) != true, false, !(0u < u_input.c))), !select(vec4<bool>(!global0.e, true, !var_0.x, u_input.a.x != 47643i), select(vec4<bool>(global0.e, global0.e, false, var_0.x), select(vec4<bool>(global0.e, global0.e, global0.e, var_0.x), vec4<bool>(false, true, true, true), vec4<bool>(global0.e, true, var_0.x, false)), vec4<bool>(true, true, true, var_0.x)), select(select(vec4<bool>(true, true, true, false), vec4<bool>(var_0.x, global0.e, true, var_0.x), var_0.x), vec4<bool>(true, true, var_0.x, global0.e), !vec4<bool>(var_0.x, true, false, false))));
    let x = u_input.a;
    s_output = StorageBuffer(max(abs(_wgslsmith_add_i32(-26218i | global0.a.x, func_4(vec3<u32>(u_input.b, u_input.b, 4294967295u), Struct_5(vec4<i32>(-63800i, 744i, 41227i, global0.d), global0.d, Struct_3(global0.a, 1817i, global0.c, 51722i, global0.e), -2147483647i, Struct_1(vec4<f32>(global0.c, -1927f, 1000f, global0.c), true, vec4<u32>(u_input.c, u_input.b, u_input.b, u_input.c))), Struct_3(global0.a, u_input.a.x, -212f, global0.d, false), vec4<bool>(true, true, var_0.x, global0.e)).a.x)), _wgslsmith_add_i32(-u_input.a.x, _wgslsmith_add_i32(1i, global0.d) & global0.b)));
}

