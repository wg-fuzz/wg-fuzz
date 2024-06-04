struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20>;

var<private> global1: array<vec3<u32>, 26> = array<vec3<u32>, 26>(vec3<u32>(1u, 0u, 60932u), vec3<u32>(1u, 1u, 1u), vec3<u32>(0u, 4294967295u, 598u), vec3<u32>(35544u, 0u, 4294967295u), vec3<u32>(36367u, 4294967295u, 45867u), vec3<u32>(4294967295u, 52740u, 4294967295u), vec3<u32>(35564u, 4294967295u, 4294967295u), vec3<u32>(1u, 0u, 1u), vec3<u32>(12729u, 111407u, 47191u), vec3<u32>(59964u, 6751u, 44208u), vec3<u32>(4294967295u, 34191u, 21068u), vec3<u32>(21918u, 0u, 0u), vec3<u32>(1u, 1u, 28642u), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(1u, 0u, 9026u), vec3<u32>(1u, 19638u, 4294967295u), vec3<u32>(1u, 0u, 2521u), vec3<u32>(46308u, 12998u, 77550u), vec3<u32>(0u, 4294967295u, 1877u), vec3<u32>(0u, 41844u, 4294967295u), vec3<u32>(61159u, 73040u, 1493u), vec3<u32>(60081u, 4294967295u, 38406u), vec3<u32>(4294967295u, 1u, 24628u), vec3<u32>(43529u, 4294967295u, 70948u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(85583u, 15488u, 39430u));

var<private> global2: u32 = 50497u;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: i32) -> i32 {
    let var_0 = 62971u;
    global1 = array<vec3<u32>, 26>();
    global0 = array<Struct_1, 20>();
    let var_1 = Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(~(~u_input.a), 1u, var_0, countOneBits(u_input.a)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(9694u, 47279u, u_input.a, u_input.a), vec4<u32>(var_0, var_0, u_input.a, 38489u)), 0u, _wgslsmith_div_u32(u_input.a, u_input.a), 4294967295u) | _wgslsmith_sub_vec4_u32(vec4<u32>(28441u, var_0, var_0, 73771u) ^ vec4<u32>(1u, var_0, var_0, u_input.a), vec4<u32>(0u, var_0, var_0, 19222u))), vec2<f32>(_wgslsmith_f_op_f32(1000f + 1648f), 1f), _wgslsmith_mod_vec3_u32(~global1[_wgslsmith_index_u32(max(1u, 1u) | _wgslsmith_dot_vec2_u32(vec2<u32>(2679u, 1u), vec2<u32>(u_input.a, 70467u)), 26u)], ~select(global1[_wgslsmith_index_u32(4294967295u, 26u)], ~vec3<u32>(33139u, u_input.a, 4294967295u), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false))), _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(firstTrailingBit(max(vec2<i32>(arg_0, 31171i), vec2<i32>(arg_0, -1i))), max(~vec2<i32>(1i, 2147483647i), -vec2<i32>(arg_0, arg_0))), abs(_wgslsmith_div_vec2_i32(abs(vec2<i32>(18065i, -69987i)), abs(vec2<i32>(-1i, -19075i))))));
    let var_2 = _wgslsmith_mult_vec3_i32(~vec3<i32>(firstLeadingBit(-22058i), 0i, -2147483647i), ~(-_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, 250i, -2147483647i), ~vec3<i32>(var_1.d.x, 2147483647i, 60828i))));
    return ~1i;
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> vec4<i32> {
    let var_0 = Struct_1(abs((~arg_0.a >> (firstTrailingBit(arg_0.a) % vec4<u32>(32u))) | (~arg_0.a & ~vec4<u32>(68694u, 4294967295u, 0u, 4294967295u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(min(-328f, arg_0.b.x)))) - vec2<f32>(_wgslsmith_f_op_f32(step(1382f, _wgslsmith_f_op_f32(sign(1528f)))), 554f)), ~(~min(arg_0.a.yzz, vec3<u32>(0u, 19132u, arg_0.c.x) | vec3<u32>(u_input.a, 4294967295u, 86271u))), vec2<i32>(select(i32(-1i) * -2147483647i, -1i, true) | _wgslsmith_mult_i32(arg_0.d.x, ~7907i), min(-2147483647i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.d.x, arg_0.d.x, arg_0.d.x), vec3<i32>(arg_0.d.x, 1i, arg_0.d.x)))));
    global1 = array<vec3<u32>, 26>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-288f * arg_1))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(var_0.b.x + arg_1)) + 292f) + _wgslsmith_div_f32(arg_1, var_0.b.x)));
    let var_2 = var_0.d.x;
    return vec4<i32>(var_2, firstTrailingBit(func_3(_wgslsmith_add_i32(~2147483647i, 1i))), min(abs(i32(-1i) * -12390i), firstTrailingBit(-(~2147483647i))), firstLeadingBit(_wgslsmith_mult_i32(var_0.d.x, _wgslsmith_dot_vec2_i32(var_0.d, firstTrailingBit(vec2<i32>(-2147483647i, var_0.d.x))))));
}

fn func_1(arg_0: f32, arg_1: vec3<i32>, arg_2: vec4<u32>, arg_3: u32) -> vec2<f32> {
    let var_0 = vec2<i32>(-3371i, _wgslsmith_dot_vec4_i32(func_2(Struct_1(arg_2, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0, 489f), vec2<f32>(392f, 964f))), ~global1[_wgslsmith_index_u32(arg_3, 26u)], vec2<i32>(arg_1.x, -2147483647i)), -955f), _wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(1i, -2147483647i, arg_1.x, arg_1.x)), -(~vec4<i32>(arg_1.x, -1i, arg_1.x, -2147483647i)))));
    var var_1 = select(~(vec4<i32>(~var_0.x, var_0.x, _wgslsmith_div_i32(var_0.x, 10518i), select(1605i, var_0.x, false)) & select(vec4<i32>(arg_1.x, 29834i, var_0.x, 30192i) & vec4<i32>(50756i, -23134i, var_0.x, var_0.x), -vec4<i32>(arg_1.x, 1i, -1i, arg_1.x), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), true))), select(firstLeadingBit(max(vec4<i32>(-12682i, arg_1.x, -71954i, arg_1.x), vec4<i32>(2147483647i, arg_1.x, var_0.x, -16830i)) | _wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.x, 1534i, var_0.x, -25596i), vec4<i32>(-1i, arg_1.x, arg_1.x, 1i))), vec4<i32>(i32(-1i) * -1i, var_0.x, _wgslsmith_div_i32(var_0.x, -13012i), arg_1.x) >> (vec4<u32>(~u_input.a, reverseBits(u_input.a), ~arg_2.x, 32901u) % vec4<u32>(32u)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec4<bool>(true, true, true, true)))), !((arg_3 < 1u) | false));
    let var_2 = ~arg_3;
    let var_3 = _wgslsmith_dot_vec4_i32(-countOneBits(~(-vec4<i32>(arg_1.x, var_0.x, 1i, var_0.x))), abs(vec4<i32>(arg_1.x, (arg_1.x << (u_input.a % 32u)) ^ 1i, var_1.x, arg_1.x >> (arg_3 % 32u))));
    global1 = array<vec3<u32>, 26>();
    return vec2<f32>(arg_0, -831f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(u_input.a, 20u)];
    let var_1 = _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(global1[_wgslsmith_index_u32(583u, 26u)], ~reverseBits(vec3<u32>(1u, 1u, var_0.c.x))), ~vec3<u32>(30367u, ~46440u, 10030u)) ^ ~(~global1[_wgslsmith_index_u32(65684u, 26u)]);
    var_0 = global0[_wgslsmith_index_u32(var_0.c.x >> (var_0.a.x % 32u), 20u)];
    let var_2 = var_0.d.x;
    var_0 = Struct_1(vec4<u32>(_wgslsmith_dot_vec3_u32(~var_1, ~var_1 ^ vec3<u32>(72060u, 87360u, 38777u)), ~firstLeadingBit(~var_1.x), _wgslsmith_dot_vec2_u32(~vec2<u32>(54129u, 43944u), ~vec2<u32>(23253u, 0u)), 1u >> (((u_input.a >> (0u % 32u)) & var_1.x) % 32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_0.b)) * _wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_f_op_f32(-357f + -644f), vec3<i32>(var_0.d.x << (var_1.x % 32u), -56975i, 7862i), var_0.a, 1u))), vec3<u32>(_wgslsmith_dot_vec3_u32(~var_0.c, vec3<u32>(var_0.a.x, 105966u, abs(13513u))), 0u, abs(~u_input.a) ^ (firstLeadingBit(19918u) ^ ~u_input.a)), var_0.d);
    let var_3 = _wgslsmith_div_vec3_u32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~reverseBits(~0u), 1u), 26u)], _wgslsmith_div_vec3_u32(firstTrailingBit(var_0.c), var_1));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_0.b.x), vec3<i32>(-21496i, -reverseBits(_wgslsmith_mult_i32(var_0.d.x, 42444i)), 2147483647i), _wgslsmith_mod_i32(-1i, ~(_wgslsmith_clamp_i32(var_0.d.x, -12306i, var_0.d.x) >> ((4729u >> (var_1.x % 32u)) % 32u))));
}

