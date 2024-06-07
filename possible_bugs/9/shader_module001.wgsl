struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: i32,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: bool,
    e: f32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(Struct_1(vec2<i32>(22618i, 19762i), vec4<bool>(false, true, true, true), vec2<u32>(28508u, 37004u)), 0i, 32505u, false, 701f), Struct_3(Struct_1(vec2<i32>(-15727i, -1i), vec4<bool>(true, true, true, true), vec2<u32>(0u, 46238u)), -14881i, 49756u, false, -1528f), Struct_3(Struct_1(vec2<i32>(0i, 12309i), vec4<bool>(true, true, true, true), vec2<u32>(38350u, 1u)), -81303i, 0u, false, -543f), Struct_3(Struct_1(vec2<i32>(53282i, -53508i), vec4<bool>(false, true, false, false), vec2<u32>(0u, 15652u)), -11527i, 1u, false, 319f), Struct_3(Struct_1(vec2<i32>(0i, -91450i), vec4<bool>(false, false, true, true), vec2<u32>(0u, 22637u)), 2147483647i, 96662u, true, -1038f), Struct_3(Struct_1(vec2<i32>(1i, -46237i), vec4<bool>(false, true, true, false), vec2<u32>(0u, 0u)), 77825i, 59337u, false, -1846f), Struct_3(Struct_1(vec2<i32>(2066i, 55645i), vec4<bool>(false, false, true, true), vec2<u32>(0u, 4294967295u)), 5628i, 0u, true, -1327f), Struct_3(Struct_1(vec2<i32>(i32(-2147483648), 24216i), vec4<bool>(false, false, false, true), vec2<u32>(0u, 0u)), 0i, 31031u, true, 474f), Struct_3(Struct_1(vec2<i32>(50057i, 44700i), vec4<bool>(false, true, false, false), vec2<u32>(0u, 36844u)), 0i, 37760u, false, -773f), Struct_3(Struct_1(vec2<i32>(i32(-2147483648), 0i), vec4<bool>(true, false, false, false), vec2<u32>(4294967295u, 0u)), 0i, 4294967295u, false, -658f), Struct_3(Struct_1(vec2<i32>(23994i, 9285i), vec4<bool>(false, true, false, false), vec2<u32>(1u, 54889u)), -1i, 87297u, true, 1988f), Struct_3(Struct_1(vec2<i32>(-40232i, -93143i), vec4<bool>(true, true, false, true), vec2<u32>(4294967295u, 0u)), 30144i, 2317u, false, -978f), Struct_3(Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), vec4<bool>(false, false, true, false), vec2<u32>(1895u, 37040u)), 1i, 7282u, false, 2310f), Struct_3(Struct_1(vec2<i32>(2147483647i, 28341i), vec4<bool>(true, false, false, true), vec2<u32>(0u, 1u)), -42260i, 22005u, true, 1426f), Struct_3(Struct_1(vec2<i32>(0i, -1i), vec4<bool>(true, false, true, false), vec2<u32>(1u, 1u)), 7392i, 1u, true, -568f), Struct_3(Struct_1(vec2<i32>(-13532i, -11025i), vec4<bool>(true, false, true, true), vec2<u32>(0u, 0u)), 1i, 0u, true, -465f), Struct_3(Struct_1(vec2<i32>(2147483647i, 62005i), vec4<bool>(false, true, false, true), vec2<u32>(0u, 4294967295u)), -57031i, 27080u, true, 290f), Struct_3(Struct_1(vec2<i32>(654i, 11410i), vec4<bool>(false, false, false, true), vec2<u32>(34620u, 0u)), 0i, 1u, false, 696f), Struct_3(Struct_1(vec2<i32>(2147483647i, -32689i), vec4<bool>(false, true, false, false), vec2<u32>(59502u, 0u)), 1i, 0u, false, -572f), Struct_3(Struct_1(vec2<i32>(-10022i, i32(-2147483648)), vec4<bool>(false, true, false, true), vec2<u32>(4294967295u, 2670u)), -11017i, 0u, true, -767f));

var<private> global1: Struct_4 = Struct_4(vec3<u32>(94768u, 1u, 1u), vec4<f32>(-219f, 677f, -250f, 194f), Struct_3(Struct_1(vec2<i32>(51079i, -9163i), vec4<bool>(true, true, true, false), vec2<u32>(25404u, 22984u)), 2147483647i, 75866u, true, 280f));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec2<i32> {
    let var_0 = select(global1.c.a.b.yx, !vec2<bool>(true, !any(vec3<bool>(global1.c.d, global1.c.d, global1.c.d))), (global1.b.x <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.x * global1.b.x) * _wgslsmith_f_op_f32(step(-1148f, -298f)))) | all(vec4<bool>(1u < global1.c.a.c.x, 4294967295u <= u_input.c, global1.c.d, global1.c.a.b.x & global1.c.a.b.x)));
    let var_1 = global1.c.a;
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.x) - -213f))), _wgslsmith_f_op_f32(select(-781f, global1.b.x, false)))), global1.c.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x)) > _wgslsmith_f_op_f32(-global1.c.e)));
    let var_3 = global1.c.a.a;
    global0 = array<Struct_3, 20>();
    return u_input.b.xz;
}

fn func_2() -> Struct_4 {
    global0 = array<Struct_3, 20>();
    var var_0 = global1.c.e;
    global0 = array<Struct_3, 20>();
    var var_1 = countOneBits(~firstLeadingBit(u_input.b.xy));
    let var_2 = Struct_2(~(~4294967295u), u_input.a, global1.c.a, _wgslsmith_clamp_i32(8752i, -global1.c.a.a.x, 0i) ^ min(75460i, ~(-4245i) << (~global1.c.c % 32u)), global1.b.x < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -465f), global1.b.x)))));
    return Struct_4(global1.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.x, -2093f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global1.c.e, global1.c.e), -139f, var_2.c.b.x)), global1.c.e) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.b - _wgslsmith_f_op_vec4_f32(-global1.b)))), Struct_3(Struct_1(countOneBits(func_3()), global1.c.a.b, _wgslsmith_mod_vec2_u32(var_2.c.c, ~vec2<u32>(12287u, 35224u))), var_1.x, max(4294967295u, 1u), all(vec3<bool>(true, global1.c.d, global1.c.a.b.x)) || true, global1.b.x));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: f32) -> f32 {
    global1 = func_2();
    let var_0 = func_2().c;
    global0 = array<Struct_3, 20>();
    let var_1 = 581f;
    let var_2 = vec4<bool>(true, 214f > arg_3, true, true);
    return _wgslsmith_f_op_f32(-var_0.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(~global1.a, vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(global1.b.x)), _wgslsmith_f_op_f32(-global1.c.e), select(global1.c.d, false, global1.c.a.b.x))), _wgslsmith_f_op_f32(func_1(global1.c.a.b.zzy, global1.c.a, !global1.c.a.b.xz, _wgslsmith_f_op_f32(f32(-1f) * -1006f))))), _wgslsmith_f_op_f32(-global1.b.x), 1437f, global1.b.x), func_2().c);
    global1 = func_2();
    var var_1 = Struct_1(_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, _wgslsmith_add_i32(u_input.d, u_input.e)), func_2().c.a.a), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.c.b, global1.c.a.a.x, var_0.c.b), vec3<i32>(u_input.b.x, -2147483647i, var_0.c.a.a.x)), global1.c.b) << (vec2<u32>(_wgslsmith_div_u32(global1.a.x, 24591u), abs(u_input.a)) % vec2<u32>(32u))), func_2().c.a.b, ~_wgslsmith_mult_vec2_u32(~var_0.c.a.c, min(_wgslsmith_div_vec2_u32(vec2<u32>(38191u, global1.a.x), vec2<u32>(var_0.a.x, u_input.c)), global1.c.a.c)));
    let var_2 = _wgslsmith_f_op_f32(exp2(func_2().b.x));
    var var_3 = select(!vec2<bool>(true, all(func_2().c.a.b)), !vec2<bool>(!func_2().c.a.b.x, !select(var_1.b.x, var_1.b.x, false)), vec2<bool>(true, !((global1.c.a.a.x <= 35936i) && (var_1.c.x != global1.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(var_2)), 7032i, vec4<i32>(-2147483647i, 7853i, reverseBits(-1i), _wgslsmith_dot_vec4_i32(vec4<i32>(-15368i, var_0.c.a.a.x, var_1.a.x, i32(-1i) * -3229i), firstTrailingBit(firstLeadingBit(vec4<i32>(global1.c.a.a.x, 893i, 1526i, var_1.a.x))))), _wgslsmith_mult_u32(~0u, ~((4294967295u >> (u_input.a % 32u)) | global1.a.x)), ~(~(~func_2().a.zy)));
}

