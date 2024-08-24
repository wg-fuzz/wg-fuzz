struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: i32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: Struct_1;

var<private> global2: Struct_1 = Struct_1(vec3<i32>(36087i, -32160i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 1i, 0i, 51791i), vec2<i32>(24374i, 1i), 35177i, vec4<bool>(true, true, false, false));

var<private> global3: vec4<i32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> vec2<u32> {
    global0 = vec4<u32>(countOneBits(~(~1u)), _wgslsmith_mult_u32(1u, global0.x), global0.x, ~global0.x);
    var var_0 = Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(~37306i, global1.a.x, 37556i), max(~(~vec3<i32>(global2.c.x, 22123i, -1i)), global3.xyy)), vec4<i32>(global3.x, max(select(-28103i, ~(-47558i), true), -1i), ~7129i, global2.b.x), _wgslsmith_add_vec2_i32(select(select(reverseBits(global3.yz), vec2<i32>(1i, global2.a.x), global1.e.x), countOneBits(reverseBits(global3.zz)), false), vec2<i32>(firstTrailingBit(-39914i) | 0i, global3.x)), i32(-1i) * -1i, global1.e);
    let var_1 = min(global1.a, max(-vec3<i32>(global1.a.x, -59386i, global2.d), vec3<i32>(-1i) * -vec3<i32>(global2.b.x, -13546i, -1984i)) << (abs(global0.zxz) % vec3<u32>(32u)));
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-564f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-578f - -1417f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-715f)))));
    var var_3 = firstLeadingBit(_wgslsmith_dot_vec3_i32(var_0.b.zzw, firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(-777i, global2.d, -1i), vec3<i32>(global1.c.x, 2147483647i, -27155i)) ^ ~global2.a)));
    return global0.wx;
}

fn func_1(arg_0: vec3<u32>) -> f32 {
    var var_0 = vec4<f32>(773f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1209f))), _wgslsmith_f_op_f32(-1525f - -2075f), all(global2.e)))), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(step(-570f, 1f))), _wgslsmith_f_op_f32(494f * _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(109f)), -365f), _wgslsmith_f_op_f32(floor(-1603f)), all(vec2<bool>(false, true))))));
    global0 = _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(~firstLeadingBit(vec4<u32>(arg_0.x, 1u, 4001u, arg_0.x)), ~vec4<u32>(reverseBits(34465u), ~arg_0.x, 4294967295u, ~global0.x)), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, _wgslsmith_mod_u32(arg_0.x, global0.x)), vec2<u32>(arg_0.x, 8521u) >> (func_2() % vec2<u32>(32u))), 1u << (select(global0.x, ~arg_0.x, false) % 32u), select(_wgslsmith_mult_u32(1u, 0u), global0.x, !(!global2.e.x)), global0.x));
    let var_1 = global3.x;
    let var_2 = vec4<i32>(-40478i, -(global1.c.x >> (arg_0.x % 32u)), global1.a.x | abs(0i), global3.x);
    let var_3 = ~30367i;
    return _wgslsmith_div_f32(-935f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1229f)), var_0.x) - var_0.x))));
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    global0 = ~vec4<u32>(global0.x, 10718u, global0.x, global0.x);
    global3 = _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-(~global1.d), global1.a.x, u_input.b.x, 0i), vec4<i32>(-33114i, global1.d, ~arg_3.d << (select(global0.x, 24337u, arg_3.e.x) % 32u), ~abs(global2.b.x))), vec4<i32>(select(_wgslsmith_mult_i32(-arg_3.d, max(9560i, 30284i)), countOneBits(global3.x), arg_2 >= _wgslsmith_f_op_f32(-arg_2)), -(u_input.c | u_input.c), ~(global1.c.x ^ -13560i) & ~1i, _wgslsmith_add_i32(global3.x, arg_1.x)));
    global1 = Struct_1(_wgslsmith_add_vec3_i32(global3.wzz, countOneBits(min(-arg_1, select(vec3<i32>(global2.b.x, 20474i, 9382i), arg_3.a, vec3<bool>(false, global2.e.x, false))))), firstTrailingBit(select(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(1745i, arg_3.b.x, global2.d, -1668i), vec4<i32>(57104i, global3.x, 47545i, global2.d)), reverseBits(vec4<i32>(global1.b.x, global3.x, 2147483647i, arg_3.d))), _wgslsmith_mod_vec4_i32(global1.b, global1.b) ^ vec4<i32>(-26745i, 1i, u_input.a, -25595i), global2.e.x)), vec2<i32>(~global2.d, min(~_wgslsmith_dot_vec4_i32(vec4<i32>(global1.b.x, 1i, -1i, 8988i), global1.b), 7857i)), 2147483647i, vec4<bool>(global1.e.x, arg_3.e.x, !global2.e.x, false));
    let var_0 = 1i;
    let var_1 = 177f;
    return arg_3;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global1 = Struct_1(-reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(-33507i, global1.b.x, 0i), arg_1.a)), reverseBits(arg_2.b), _wgslsmith_mod_vec2_i32(vec2<i32>(global2.d, -(i32(-1i) * -1460i)), vec2<i32>(abs(global1.b.x), 17782i) >> (abs(global0.wx) % vec2<u32>(32u))), u_input.c, !global1.e);
    let var_0 = firstTrailingBit(u_input.b.xz);
    global3 = -countOneBits(_wgslsmith_add_vec4_i32(func_3(global0.x, vec3<i32>(arg_0.d, 17077i, 1i), 1091f, Struct_1(vec3<i32>(arg_0.b.x, -27047i, global2.b.x), global1.b, arg_1.a.zx, -5816i, vec4<bool>(true, false, arg_1.e.x, false))).b, -vec4<i32>(global1.b.x, -2147483647i, -1i, 28925i)) << (max(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 18063u, global0.x, global0.x), vec4<u32>(global0.x, global0.x, 4294967295u, 4294967295u)), vec4<u32>(0u, global0.x, global0.x, 1u)) % vec4<u32>(32u)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1f))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(111f, 707f, arg_0.e.x)))))));
    var var_2 = _wgslsmith_f_op_f32(func_1(_wgslsmith_mod_vec3_u32(~vec3<u32>(~global0.x, abs(0u), 4294967295u), ~firstTrailingBit(vec3<u32>(6183u, global0.x, 61194u)))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(232u, 18888u, 64127u), global0.xxy), _wgslsmith_mult_vec3_u32(select(vec3<u32>(global0.x, global0.x, 4294967295u), vec3<u32>(global0.x, global0.x, 52766u), vec3<bool>(global2.e.x, false, true)), vec3<u32>(global0.x, global0.x, global0.x))), ~global0.x | _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(global0.wy, global0.wy), _wgslsmith_clamp_u32(0u, global0.x, global0.x))), ~(~0u), global0.x, ~44751u);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - -394f) - -830f) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(818f, -1144f) - -1046f))));
    let var_2 = var_0.x;
    var var_3 = global1.e.yz;
    global1 = func_4(Struct_1(_wgslsmith_sub_vec3_i32(abs(firstTrailingBit(global2.a)), _wgslsmith_mult_vec3_i32(vec3<i32>(global2.a.x, 1i, global3.x), vec3<i32>(global2.a.x, 0i, 34398i)) | vec3<i32>(global3.x, global1.b.x, -2147483647i)), global2.b, vec2<i32>(u_input.b.x, 1i), -_wgslsmith_sub_i32(-11754i, global3.x), vec4<bool>(true, any(vec3<bool>(true, true, false)), false | !var_3.x, !var_3.x)), Struct_1(~global1.b.zxy, global2.b >> ((abs(vec4<u32>(global0.x, var_2, 4294967295u, 13030u)) | vec4<u32>(global0.x, 38362u, var_2, 1u)) % vec4<u32>(32u)), vec2<i32>(global1.a.x, global1.d), ~35248i, global2.e), func_3(3392u, firstTrailingBit(vec3<i32>(u_input.a, 14291i, 0i) >> (~global0.zwx % vec3<u32>(32u))), _wgslsmith_f_op_f32(func_1(global0.www)), Struct_1(vec3<i32>(0i, firstTrailingBit(0i), ~global3.x), global1.b, _wgslsmith_mod_vec2_i32(vec2<i32>(global3.x, 1i), u_input.b.xx) ^ _wgslsmith_mult_vec2_i32(global1.c, global2.b.yz), global2.b.x, select(select(global2.e, vec4<bool>(true, false, global2.e.x, global2.e.x), vec4<bool>(false, false, false, true)), vec4<bool>(true, global1.e.x, var_1, false), vec4<bool>(global2.e.x, var_1, var_3.x, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(reverseBits(-2147483647i) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-79234i, global2.b.x, global2.d), vec3<i32>(13822i, u_input.b.x, global3.x)), 1i, ~global2.a.x, global2.a.x), var_0.zx, select(~select(vec2<u32>(global0.x, 156937u) << (vec2<u32>(global0.x, global0.x) % vec2<u32>(32u)), var_0.xw, true), ~vec2<u32>(_wgslsmith_mult_u32(var_2, 14137u), global0.x), any(vec2<bool>(var_1, global1.d != global3.x))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(1117f, 1000f, _wgslsmith_f_op_f32(-1298f + 861f), -513f) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(102f, -1000f, 250f, 1808f)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1706f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2155f) + _wgslsmith_f_op_f32(-2319f - 413f)), -1719f, -396f))));
}

