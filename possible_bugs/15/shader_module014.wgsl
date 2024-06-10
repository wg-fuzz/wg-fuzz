struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<u32>,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_1 = Struct_1(42676u, 2212f, vec3<u32>(37794u, 0u, 6856u), vec2<u32>(41657u, 43112u));

var<private> global2: u32 = 45133u;

var<private> global3: bool;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<i32>) -> i32 {
    return _wgslsmith_clamp_i32(1i, -(arg_1.x >> (u_input.b % 32u)), firstLeadingBit(abs(u_input.d.x)));
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: Struct_3, arg_3: bool) -> vec3<f32> {
    global3 = any(arg_2.c);
    let var_0 = ~_wgslsmith_mult_vec4_i32(vec4<i32>(-10658i, -abs(arg_0), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, arg_0, 3917i, arg_0), vec4<i32>(u_input.d.x, -39499i, arg_2.b, -1475i)), 1i & u_input.a.x), func_3(vec4<u32>(arg_2.a.d.x, 4294967295u, 60719u, global1.c.x), vec4<i32>(-1i, arg_0, -1i, 1i))), vec4<i32>(min(arg_0, arg_0), 42962i, -27279i, _wgslsmith_mod_i32(2147483647i, arg_0)) ^ abs(_wgslsmith_add_vec4_i32(vec4<i32>(-5936i, u_input.a.x, arg_0, arg_2.b), vec4<i32>(u_input.d.x, arg_2.b, arg_0, -1i))));
    global0 = _wgslsmith_f_op_f32(-global1.b);
    var var_1 = Struct_5(Struct_2(arg_2.a, Struct_1(70684u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2.a.b))), ~abs(vec3<u32>(0u, u_input.b, u_input.e.x)), vec2<u32>(u_input.c, _wgslsmith_mod_u32(10800u, 54056u)))), ~(max(~vec3<u32>(4294967295u, arg_2.a.d.x, 0u), global1.c) & abs(~vec3<u32>(global1.c.x, 4294967295u, 0u))), -(var_0.x >> (4294967295u % 32u)));
    var var_2 = arg_2.c.x;
    return _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-250f, 666f, -882f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.a.b, -176f, global1.b))))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(global1.b)), var_1.a.a.b, _wgslsmith_f_op_f32(-arg_2.a.b)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.b.b, 1453f, 1918f) + vec3<f32>(-1995f, arg_2.a.b, 243f))))))));
}

fn func_1() -> Struct_4 {
    global3 = true;
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(firstLeadingBit(_wgslsmith_clamp_i32(select(-1i, -1i, false), min(u_input.a.x, 1i), 57037i)), true, Struct_3(Struct_1(~global1.a, _wgslsmith_f_op_f32(floor(global1.b)), u_input.e.yyw, vec2<u32>(25896u, global1.a)), -1i, vec3<bool>(select(false, false, true), all(vec4<bool>(false, true, false, true)), true)), true)));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(ceil(-835f)), -1294f);
    var var_2 = Struct_1(u_input.e.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(275f)) + _wgslsmith_f_op_f32(global1.b + 1577f)) + var_0.x), var_1.x)), _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global1.a, u_input.e.x, 10762u) & vec4<u32>(46422u, 0u, 46461u, 20734u), ~u_input.e), _wgslsmith_dot_vec3_u32(countOneBits(global1.c), vec3<u32>(u_input.b, u_input.c, 0u)), 0u), max(_wgslsmith_add_vec3_u32(vec3<u32>(22937u, 72592u, global1.c.x), countOneBits(u_input.e.xzx)), _wgslsmith_div_vec3_u32(u_input.e.zxy >> (vec3<u32>(global1.a, u_input.c, u_input.c) % vec3<u32>(32u)), vec3<u32>(global1.a, 21010u, u_input.e.x) << (global1.c % vec3<u32>(32u))))), global1.d);
    var var_3 = all(!vec2<bool>(all(vec3<bool>(true, true, false)), any(select(vec2<bool>(true, false), vec2<bool>(true, true), false))));
    return Struct_4(Struct_1(countOneBits(24604u), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, -1000f) + var_2.b), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-882f + -617f), -1152f)))), ~(~vec3<u32>(u_input.b, 38275u, 4294967295u)) ^ var_2.c, var_2.c.zz), 1u, Struct_1(countOneBits(1u | u_input.c), _wgslsmith_f_op_f32(-var_0.x), abs(global1.c), vec2<u32>(50280u, global1.c.x ^ global1.c.x)), Struct_2(Struct_1(~var_2.c.x, -1000f, global1.c, u_input.e.ww), Struct_1(_wgslsmith_sub_u32(var_2.d.x, 16821u) << (reverseBits(u_input.c) % 32u), _wgslsmith_f_op_f32(-899f * 548f), countOneBits(vec3<u32>(27384u, u_input.c, global1.a) ^ vec3<u32>(1u, 34056u, 9305u)), ~_wgslsmith_sub_vec2_u32(u_input.e.zz, vec2<u32>(global1.c.x, 57342u)))));
}

fn func_4(arg_0: Struct_4) -> Struct_1 {
    var var_0 = Struct_5(func_1().d, vec3<u32>(1u, 1u, min(~1u, 1u)), min(_wgslsmith_mod_i32(~(-u_input.a.x), -25658i), firstLeadingBit(_wgslsmith_div_i32(1i, _wgslsmith_sub_i32(-2147483647i, u_input.a.x)))));
    var_0 = Struct_5(Struct_2(func_1().a, arg_0.d.a), _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(u_input.c | 56416u, ~13921u, arg_0.b & 4881u), _wgslsmith_mod_u32(firstTrailingBit(u_input.c), 7010u), global1.c.x), abs(var_0.a.a.c), arg_0.c.c), reverseBits(max(_wgslsmith_dot_vec3_i32(-vec3<i32>(var_0.c, var_0.c, 2147483647i), vec3<i32>(var_0.c, u_input.a.x, -75649i)), reverseBits(abs(2147483647i)))));
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.a.b.b), var_0.a.a.b))));
    var var_2 = arg_0.c;
    let var_3 = Struct_5(func_1().d, countOneBits(max(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 1u, 39412u), vec3<u32>(0u, 28468u, arg_0.b)), _wgslsmith_div_vec3_u32(arg_0.a.c, vec3<u32>(13221u, var_2.c.x, 11637u))) << (~reverseBits(vec3<u32>(var_2.d.x, 4294967295u, u_input.b)) % vec3<u32>(32u))), u_input.d.x);
    return func_1().c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d.x;
    var var_1 = Struct_5(Struct_2(func_4(func_1()), func_4(Struct_4(func_1().a, max(54358u, global1.c.x), func_4(Struct_4(Struct_1(global1.c.x, -555f, vec3<u32>(4294967295u, u_input.b, 14925u), vec2<u32>(1u, global1.d.x)), 0u, Struct_1(u_input.c, global1.b, vec3<u32>(0u, u_input.b, 0u), vec2<u32>(global1.c.x, 4294967295u)), Struct_2(Struct_1(28737u, global1.b, vec3<u32>(5557u, global1.c.x, global1.d.x), u_input.e.xy), Struct_1(4294967295u, global1.b, global1.c, vec2<u32>(0u, u_input.c))))), func_1().d))), min(vec3<u32>(23179u, min(73600u, _wgslsmith_sub_u32(1u, global1.d.x)), global1.c.x >> (u_input.c % 32u)), global1.c), firstTrailingBit(var_0));
    let var_2 = !(!vec4<bool>(true, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.c, var_0, var_0, u_input.d.x), vec4<i32>(-8248i, u_input.a.x, 19713i, u_input.a.x)) >= 55868i, true, !any(vec3<bool>(false, true, false))));
    let var_3 = _wgslsmith_mult_vec4_i32(vec4<i32>(~(i32(-1i) * -u_input.d.x), var_0, 2147483647i, -39950i), _wgslsmith_sub_vec4_i32(-select(min(vec4<i32>(u_input.a.x, var_0, u_input.d.x, -11519i), vec4<i32>(57096i, var_0, var_0, -2147483647i)), vec4<i32>(-25634i, u_input.d.x, var_1.c, -1i) | vec4<i32>(var_0, var_0, 24397i, u_input.d.x), all(var_2.www)), -_wgslsmith_clamp_vec4_i32(select(vec4<i32>(2147483647i, var_0, 2147483647i, u_input.d.x), vec4<i32>(-7479i, var_1.c, -34055i, u_input.a.x), var_2), firstLeadingBit(vec4<i32>(17216i, var_1.c, var_1.c, u_input.a.x)), -vec4<i32>(-27236i, 1i, -57395i, var_1.c))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, var_1.a.a.b) - var_1.a.b.b));
    var var_4 = !select(var_2.xz, !var_2.wx, select(vec2<bool>(global1.b < global1.b, all(var_2.wyw)), select(var_2.xz, !var_2.yz, 0u >= u_input.e.x), var_2.zz));
    global0 = 1892f;
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, u_input.e.wzx, var_0, -abs(var_3.x) >> (min(_wgslsmith_div_u32(~34381u, 4294967295u), global1.c.x) % 32u), -2147483647i);
}

