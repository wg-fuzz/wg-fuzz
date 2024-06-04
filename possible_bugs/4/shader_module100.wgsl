struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<f32>(271f, -774f), -62375i, false), -32336i, 4294967295u);

var<private> global1: array<vec2<bool>, 16> = array<vec2<bool>, 16>(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec2<i32>, arg_1: bool, arg_2: u32, arg_3: vec2<bool>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global0.a.a.x * -1743f), global0.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.a.a.x, -129f, true)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1583f, global0.a.a.x, 559f), vec3<f32>(global0.a.a.x, global0.a.a.x, global0.a.a.x))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.a.x, global0.a.a.x, -727f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(776f, global0.a.a.x, -1338f) + vec3<f32>(1000f, -1000f, 638f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.a.x, global0.a.a.x, global0.a.a.x))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.a.x * -332f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.a.a.x, global0.a.a.x, arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.a.a.x))))));
    let var_1 = ~vec4<u32>(44633u, countOneBits(u_input.e.x), global0.c >> (1u % 32u), _wgslsmith_div_u32(min(7402u, _wgslsmith_sub_u32(global0.c, 1u)), ~u_input.e.x));
    var var_2 = global0.a;
    var var_3 = Struct_3(u_input.b);
    global1 = array<vec2<bool>, 16>();
    return _wgslsmith_div_i32(_wgslsmith_mod_i32(~(~25453i), u_input.a) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-var_2.b, ~(-16693i), _wgslsmith_div_i32(0i, arg_0.x), _wgslsmith_sub_i32(var_3.a.x, var_3.a.x)), select(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, global0.b, arg_0.x, u_input.a), vec4<i32>(-1i, arg_0.x, u_input.b.x, -1i)), _wgslsmith_mod_vec4_i32(vec4<i32>(-51945i, -44527i, var_3.a.x, 1i), vec4<i32>(var_2.b, global0.b, var_2.b, global0.b)), true)), max(abs(-(33244i << (arg_2 % 32u))), -global0.b));
}

fn func_2(arg_0: u32, arg_1: Struct_3, arg_2: f32, arg_3: vec2<i32>) -> f32 {
    global1 = array<vec2<bool>, 16>();
    global1 = array<vec2<bool>, 16>();
    global1 = array<vec2<bool>, 16>();
    global0 = Struct_2(Struct_1(global0.a.a, firstLeadingBit(arg_3.x), arg_2 == -1207f), func_3(vec2<i32>(-1i, 33417i), true, 1u, global1[_wgslsmith_index_u32(firstTrailingBit(arg_0), 16u)]), arg_0);
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.a.a.x, 221f), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.a.a.x, arg_2)))))), 0i, true), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(2147483647i, 15183i, -2147483647i), ~select(vec3<i32>(1i, arg_3.x, global0.b), vec3<i32>(arg_3.x, arg_3.x, 30484i), vec3<bool>(global0.a.c, global0.a.c, true)) >> (select(~u_input.e, u_input.e ^ u_input.e, all(vec4<bool>(false, global0.a.c, false, global0.a.c))) % vec3<u32>(32u))), abs(reverseBits(arg_0)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2, -978f) + _wgslsmith_f_op_f32(min(427f, global0.a.a.x)))))));
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: u32, arg_3: Struct_3) -> Struct_1 {
    var var_0 = arg_3;
    let var_1 = ~(0i << (_wgslsmith_mult_u32(~103267u, abs(u_input.c.x)) % 32u)) ^ (823i & -global0.b);
    global0 = Struct_2(Struct_1(global0.a.a, _wgslsmith_sub_i32(_wgslsmith_add_i32(~9773i, global0.a.b), ~global0.a.b), global0.a.c), firstLeadingBit(2147483647i), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), min(~u_input.e.zy, u_input.e.xx) ^ vec2<u32>(19460u, min(0u, 8067u))));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.a.a - vec2<f32>(global0.a.a.x, arg_0)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0, -585f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-857f, global0.a.a.x)))), 17238i & (i32(-1i) * -u_input.b.x), select(true, (global0.a.c | global0.a.c) & true, false)), _wgslsmith_clamp_i32(~max(-2147483647i, 2147483647i) << (_wgslsmith_dot_vec3_u32(u_input.e & u_input.e, u_input.e) % 32u), var_1, -2147483647i), _wgslsmith_add_u32(countOneBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, 0u, 58731u), u_input.c)), 23514u));
    return global0.a;
}

fn func_1() -> Struct_1 {
    return func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(230f, -1293f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.a.x) + _wgslsmith_f_op_f32(func_2(16985u, Struct_3(vec2<i32>(21641i, global0.a.b)), 309f, vec2<i32>(19794i, -1i)))))), ~2147483647i, 0u, Struct_3(min(_wgslsmith_mult_vec2_i32(vec2<i32>(30165i, 7306i), vec2<i32>(-15336i, 1i)), u_input.b) << (min(min(u_input.e.yz, vec2<u32>(u_input.d, 1u)), u_input.e.yy) % vec2<u32>(32u))));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: bool) -> Struct_1 {
    let var_0 = 0i ^ ~_wgslsmith_mod_i32(global0.a.b, arg_1.b);
    var var_1 = 46212u;
    let var_2 = any(arg_0);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1287f, arg_1.a.x))))) + -972f);
    var_1 = 15856u;
    return func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global0.c, Struct_3(u_input.b), var_3, vec2<i32>(var_0, arg_1.b)))))) * _wgslsmith_f_op_f32(arg_1.a.x + var_3)), global0.a.b, _wgslsmith_clamp_u32(_wgslsmith_add_u32(firstTrailingBit(_wgslsmith_clamp_u32(u_input.d, u_input.d, 4294967295u)), ~0u), 33522u, _wgslsmith_add_u32(global0.c, 4294967295u)), Struct_3(countOneBits(vec2<i32>(arg_2.x, u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-global0.a.a.x);
    var var_1 = select(~vec3<i32>(~(~(-1i)), global0.a.b, abs(2147483647i)), _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(u_input.a, 2147483647i, 0i), -1i >> (u_input.d % 32u), min(global0.b, u_input.b.x)), ~min(vec3<i32>(u_input.b.x, 53315i, u_input.a), vec3<i32>(u_input.a, 27460i, 23355i))), vec3<i32>(countOneBits(-u_input.a), ~(~0i), _wgslsmith_mod_i32(_wgslsmith_div_i32(34208i, u_input.b.x), 1i)), countOneBits(countOneBits(vec3<i32>(1i, u_input.b.x, -2147483647i)))), select(!vec3<bool>(true, any(vec4<bool>(false, global0.a.c, true, false)), select(true, global0.a.c, true)), vec3<bool>(global0.a.c, false, !(global0.a.c & global0.a.c)), global0.a.c));
    var_1 = vec3<i32>(~(-2147483647i >> (0u % 32u)), global0.b, 2147483647i);
    var var_2 = func_5(select(select(select(vec3<bool>(global0.a.c, global0.a.c, true), vec3<bool>(true, global0.a.c, global0.a.c), !vec3<bool>(global0.a.c, global0.a.c, global0.a.c)), !(!vec3<bool>(global0.a.c, global0.a.c, global0.a.c)), vec3<bool>(true, false, true)), !(!vec3<bool>(true, false, global0.a.c)), !(firstTrailingBit(var_1.x) < (var_1.x ^ -6089i))), func_1(), vec2<i32>(_wgslsmith_mod_i32(~(-var_1.x), 0i | (global0.b >> (global0.c % 32u))), -23822i), !select(false, all(global1[_wgslsmith_index_u32(40803u, 16u)]), true) || global0.a.c);
    let var_3 = Struct_3(abs(min(var_1.xz, vec2<i32>(-var_2.b, -1i))));
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-640f, global0.a.a.x), vec2<f32>(var_2.a.x, -218f), vec2<bool>(global0.a.c, var_2.c)))) - var_2.a), 1i, !global0.a.c && true), (-1i << ((u_input.c.x ^ _wgslsmith_mod_u32(u_input.e.x, u_input.c.x)) % 32u)) ^ -1i, _wgslsmith_dot_vec3_u32(~u_input.e, u_input.e));
    let x = u_input.a;
    s_output = StorageBuffer(global0.b, u_input.d);
}

