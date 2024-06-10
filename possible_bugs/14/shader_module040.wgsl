struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: bool,
    d: u32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: vec2<bool>) -> u32 {
    var var_0 = !select(vec2<bool>(!arg_2.x, (-256f < arg_0) || false), vec2<bool>(all(!arg_2), any(vec4<bool>(true, arg_2.x, true, arg_2.x)) | arg_2.x), arg_2.x);
    var var_1 = ~(~max(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(51448u, 45775u, u_input.a.x, 0u), vec4<u32>(0u, u_input.a.x, u_input.b, u_input.b)), ~u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(50205u, u_input.a.x))), vec3<u32>(u_input.a.x & 58979u, ~4294967295u, u_input.b)));
    var var_2 = ~_wgslsmith_add_vec4_i32(vec4<i32>(28527i, u_input.c.x, -25581i, 1i) | reverseBits(vec4<i32>(0i, 26970i, 4427i, arg_1)), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_1, 30630i, 57239i, 21118i), vec4<i32>(arg_1, u_input.c.x, 7237i, 45223i)) >> (~vec4<u32>(65820u, 4898u, 33173u, var_1.x) % vec4<u32>(32u))) & select(-reverseBits(reverseBits(vec4<i32>(arg_1, 23794i, u_input.c.x, arg_1))), ~(-(vec4<i32>(arg_1, arg_1, -2147483647i, u_input.c.x) ^ vec4<i32>(-14834i, 11220i, arg_1, 1i))), any(vec3<bool>(false, true, true)));
    let var_3 = _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(firstTrailingBit(var_2.yxz), ~(-vec3<i32>(arg_1, arg_1, var_2.x))), -2147483647i) <= 1610i;
    var var_4 = ~vec3<u32>(~_wgslsmith_mult_u32(max(35802u, u_input.b), 4294967295u), 4294967295u, abs(_wgslsmith_div_u32(abs(0u), _wgslsmith_add_u32(1u, 1u))));
    return _wgslsmith_dot_vec4_u32((countOneBits(min(vec4<u32>(var_4.x, var_1.x, 1u, 90509u), vec4<u32>(u_input.a.x, 3119u, var_1.x, 25737u))) ^ (_wgslsmith_clamp_vec4_u32(vec4<u32>(var_4.x, u_input.b, u_input.a.x, u_input.a.x), vec4<u32>(1u, 1u, var_4.x, 0u), vec4<u32>(u_input.a.x, 29470u, 57530u, 0u)) >> (~vec4<u32>(4294967295u, var_1.x, var_4.x, 0u) % vec4<u32>(32u)))) >> (~(~vec4<u32>(4294967295u, var_1.x, var_4.x, var_4.x) ^ ~vec4<u32>(0u, var_1.x, 6934u, 64922u)) % vec4<u32>(32u)), ~(~vec4<u32>(4294967295u, 44447u, var_4.x, var_4.x) & _wgslsmith_div_vec4_u32(vec4<u32>(116798u, 13421u, var_4.x, 43844u), reverseBits(vec4<u32>(u_input.b, var_1.x, 15355u, var_4.x)))));
}

fn func_2(arg_0: i32, arg_1: vec4<bool>, arg_2: vec3<bool>) -> Struct_2 {
    let var_0 = vec3<u32>(96884u, u_input.a.x, u_input.b);
    let var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(698f, 269f, -198f, -616f))))));
    var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(331f, -713f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2.x * var_2.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.x, -742f) + var_2.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-214f + var_2.x) + 173f), _wgslsmith_f_op_f32(-var_2.x))));
    var var_3 = !all(vec2<bool>(true, true));
    return Struct_2(_wgslsmith_mult_vec2_u32(vec2<u32>(~(~u_input.a.x), _wgslsmith_add_u32(48475u, func_3(-305f, var_1, arg_2.zx))), vec2<u32>(~41768u >> (u_input.a.x % 32u), _wgslsmith_mod_u32(1u & var_0.x, u_input.b))), arg_0, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(u_input.c, select(vec2<i32>(var_1, -18373i), _wgslsmith_mod_vec2_i32(u_input.c, vec2<i32>(arg_0, -14767i)), !arg_1.x)), -u_input.c.x), Struct_1(_wgslsmith_add_vec3_u32(select(abs(vec3<u32>(var_0.x, var_0.x, 4294967295u)), min(vec3<u32>(var_0.x, var_0.x, 31858u), var_0), arg_2.x), abs(var_0) >> (var_0 % vec3<u32>(32u))), !arg_2.x, true, 140u, arg_2));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec2<bool>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-948f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1345f * 1790f)) - -351f), 163f, -414f));
    let var_1 = vec2<u32>(arg_0, arg_0);
    var var_2 = func_2(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(42324i, select(2147483647i, u_input.c.x, arg_1.b)), select(u_input.c, u_input.c, vec2<bool>(arg_1.c, true))), vec2<i32>(u_input.c.x >> (_wgslsmith_dot_vec3_u32(arg_1.a, vec3<u32>(4294967295u, var_1.x, 4294967295u)) % 32u), 31i)), vec4<bool>(true, arg_1.c, !(arg_1.c && any(arg_2)), false), select(arg_1.e, vec3<bool>(false, all(!vec2<bool>(true, arg_2.x)), all(arg_1.e.zy)), !(arg_1.c == (arg_2.x & arg_1.b))));
    var var_3 = func_2(u_input.c.x, vec4<bool>(false, !(!(var_0.x < -491f)), var_2.b > 0i, false), vec3<bool>(all(!select(arg_1.e.zx, vec2<bool>(arg_1.e.x, arg_1.e.x), arg_1.e.yz)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))) < _wgslsmith_div_f32(1270f, _wgslsmith_f_op_f32(-var_0.x)), select(false, _wgslsmith_f_op_f32(abs(-915f)) > var_0.x, false))).d;
    var var_4 = _wgslsmith_dot_vec2_i32(vec2<i32>(-((u_input.c.x >> (34815u % 32u)) << (40085u % 32u)), 1i & var_2.b), vec2<i32>(_wgslsmith_add_i32(var_2.b, u_input.c.x), firstLeadingBit(var_2.c)));
    return u_input.b << (36942u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(func_1(23810u, Struct_1(vec3<u32>(0u, u_input.b, 51905u), true, true, 1u, vec3<bool>(true, true, false)), vec2<bool>(select(true, true, true), true)), u_input.a.x, u_input.b);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(round(246f))));
    let var_2 = Struct_1(_wgslsmith_mod_vec3_u32(min(firstTrailingBit(vec3<u32>(21432u, var_0.x, 39651u)), ~var_0), var_0), true && (true != ((-3864i < u_input.c.x) | true)), true, abs(~(~var_0.x)), !(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), func_2(-49949i, vec4<bool>(true, true, false, true), vec3<bool>(false, false, true)).d.e.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(~(~(vec4<u32>(var_0.x, 13984u, 4294967295u, u_input.a.x) & vec4<u32>(var_2.a.x, u_input.a.x, 4294967295u, var_2.a.x))), abs(min(~vec4<u32>(18019u, 1u, 1u, var_2.a.x), vec4<u32>(0u, u_input.b, 1u, var_0.x) & vec4<u32>(var_0.x, var_0.x, 4294967295u, 16588u)))), ~min(var_0.x, select(~4294967295u, func_3(-295f, -17529i, var_2.e.xx), true)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-153f)), var_1)));
}

