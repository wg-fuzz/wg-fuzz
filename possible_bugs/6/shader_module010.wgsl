struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: bool,
    c: vec3<bool>,
    d: bool,
    e: vec4<bool>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
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

var<private> global0: Struct_1;

var<private> global1: array<Struct_3, 27> = array<Struct_3, 27>(Struct_3(vec3<u32>(4294967295u, 1u, 53061u), false, vec3<bool>(false, true, true), false, vec4<bool>(true, true, true, false)), Struct_3(vec3<u32>(54297u, 1u, 28798u), false, vec3<bool>(false, true, true), false, vec4<bool>(true, true, true, false)), Struct_3(vec3<u32>(25048u, 32446u, 47923u), true, vec3<bool>(true, false, true), false, vec4<bool>(false, true, true, true)), Struct_3(vec3<u32>(4294967295u, 0u, 1u), true, vec3<bool>(false, false, false), true, vec4<bool>(false, false, false, true)), Struct_3(vec3<u32>(19968u, 20880u, 27314u), true, vec3<bool>(false, true, true), true, vec4<bool>(true, false, false, false)), Struct_3(vec3<u32>(1u, 4294967295u, 0u), true, vec3<bool>(false, false, true), true, vec4<bool>(true, true, false, false)), Struct_3(vec3<u32>(4294967295u, 1u, 4294967295u), true, vec3<bool>(true, false, true), false, vec4<bool>(true, true, true, true)), Struct_3(vec3<u32>(5026u, 14956u, 0u), false, vec3<bool>(true, false, true), true, vec4<bool>(true, false, false, true)), Struct_3(vec3<u32>(0u, 4294967295u, 4294967295u), true, vec3<bool>(true, true, true), true, vec4<bool>(false, true, false, true)), Struct_3(vec3<u32>(53653u, 15797u, 8581u), true, vec3<bool>(false, false, false), true, vec4<bool>(false, false, true, true)), Struct_3(vec3<u32>(1u, 7456u, 49310u), true, vec3<bool>(false, true, false), false, vec4<bool>(true, false, true, true)), Struct_3(vec3<u32>(107236u, 0u, 1u), true, vec3<bool>(false, false, true), false, vec4<bool>(false, false, true, true)), Struct_3(vec3<u32>(0u, 0u, 57185u), false, vec3<bool>(true, true, true), true, vec4<bool>(false, true, true, true)), Struct_3(vec3<u32>(1u, 34008u, 89119u), false, vec3<bool>(true, false, false), false, vec4<bool>(true, true, false, true)), Struct_3(vec3<u32>(60136u, 35358u, 0u), false, vec3<bool>(false, false, false), false, vec4<bool>(true, true, true, true)), Struct_3(vec3<u32>(11389u, 37025u, 40642u), false, vec3<bool>(false, false, false), false, vec4<bool>(true, true, true, true)), Struct_3(vec3<u32>(0u, 4294967295u, 6926u), true, vec3<bool>(false, true, true), true, vec4<bool>(false, true, true, true)), Struct_3(vec3<u32>(4332u, 8979u, 28586u), true, vec3<bool>(true, false, true), true, vec4<bool>(false, true, false, true)), Struct_3(vec3<u32>(4294967295u, 27972u, 4294967295u), true, vec3<bool>(true, true, true), true, vec4<bool>(true, false, true, false)), Struct_3(vec3<u32>(4294967295u, 0u, 63025u), true, vec3<bool>(true, false, true), false, vec4<bool>(false, false, true, false)), Struct_3(vec3<u32>(1u, 52482u, 0u), false, vec3<bool>(false, false, true), true, vec4<bool>(false, false, true, false)), Struct_3(vec3<u32>(0u, 0u, 22172u), true, vec3<bool>(true, false, true), false, vec4<bool>(true, false, true, true)), Struct_3(vec3<u32>(23524u, 1u, 4294967295u), false, vec3<bool>(true, false, false), false, vec4<bool>(false, true, true, true)), Struct_3(vec3<u32>(47324u, 0u, 1u), true, vec3<bool>(false, false, true), false, vec4<bool>(true, false, false, false)), Struct_3(vec3<u32>(71982u, 4294967295u, 23250u), true, vec3<bool>(true, true, false), false, vec4<bool>(false, true, false, false)), Struct_3(vec3<u32>(9065u, 40836u, 0u), true, vec3<bool>(true, true, true), true, vec4<bool>(false, false, false, true)), Struct_3(vec3<u32>(4294967295u, 1u, 1u), true, vec3<bool>(false, false, true), false, vec4<bool>(false, false, true, false)));

var<private> global2: array<vec4<i32>, 19> = array<vec4<i32>, 19>(vec4<i32>(-15082i, 2147483647i, -2382i, 8502i), vec4<i32>(0i, -1688i, -24269i, 1i), vec4<i32>(i32(-2147483648), -6489i, 27037i, 1i), vec4<i32>(-22082i, 2147483647i, 2147483647i, 2147483647i), vec4<i32>(i32(-2147483648), 0i, 2147483647i, 23680i), vec4<i32>(2147483647i, 1i, 0i, 31604i), vec4<i32>(0i, 2147483647i, 3049i, 1i), vec4<i32>(0i, -19005i, -43367i, -45461i), vec4<i32>(1i, i32(-2147483648), 1i, -17347i), vec4<i32>(-23856i, -1i, -1757i, 39996i), vec4<i32>(-1i, -18894i, -29358i, i32(-2147483648)), vec4<i32>(0i, i32(-2147483648), -31955i, 17744i), vec4<i32>(-1i, -49077i, -19971i, 1i), vec4<i32>(-12953i, 2147483647i, -30461i, 0i), vec4<i32>(-17258i, i32(-2147483648), 0i, 32887i), vec4<i32>(2147483647i, 17327i, 54691i, -1i), vec4<i32>(i32(-2147483648), 11118i, 0i, i32(-2147483648)), vec4<i32>(-6969i, 2147483647i, -1i, 2147483647i), vec4<i32>(2147483647i, 9144i, -1i, i32(-2147483648)));

var<private> global3: Struct_3;

var<private> global4: vec4<u32> = vec4<u32>(0u, 1u, 71760u, 46708u);

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: Struct_3) -> i32 {
    global2 = array<vec4<i32>, 19>();
    let var_0 = Struct_2(Struct_1(select(select(arg_3.e, !arg_3.e, all(arg_3.e)), arg_1.a, all(select(vec4<bool>(global3.b, global3.b, global3.e.x, true), arg_1.a, arg_1.a))), ~countOneBits(u_input.a) << (~(~13418u) % 32u), _wgslsmith_f_op_vec2_f32(arg_2.yx + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-733f, arg_1.c.x)))), global0.a.xzx, global0.a.xyy, Struct_1(select(global3.e, vec4<bool>(true, any(arg_1.a), arg_1.b <= 0i, any(vec3<bool>(global0.a.x, false, true))), select(arg_3.e, arg_3.e, select(global3.e, global3.e, vec4<bool>(global0.a.x, arg_1.a.x, global3.b, true)))), select(_wgslsmith_sub_i32(u_input.a, ~13674i), 14425i, arg_1.a.x), _wgslsmith_f_op_vec2_f32(-arg_2.xz)));
    let var_1 = ~vec2<u32>(abs(select(u_input.c.x, 15147u, true)) >> ((47452u ^ arg_0) % 32u), arg_3.a.x);
    global0 = arg_1;
    global3 = global1[_wgslsmith_index_u32(~abs(43046u), 27u)];
    return _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(~(-firstLeadingBit(vec2<i32>(u_input.a, -27701i))), -(~vec2<i32>(var_0.d.b, var_0.a.b) >> (~vec2<u32>(63894u, 4294967295u) % vec2<u32>(32u)))), var_0.d.b & ~reverseBits(-2761i));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: i32) -> Struct_2 {
    var var_0 = global0.b;
    let var_1 = Struct_4(_wgslsmith_div_vec3_i32(select(abs(~vec3<i32>(39078i, 2147483647i, u_input.a)), vec3<i32>(arg_1.d.b >> (global3.a.x % 32u), 1i, func_3(global3.a.x, Struct_1(global3.e, u_input.a, vec2<f32>(arg_1.a.c.x, global0.c.x)), vec4<f32>(arg_1.d.c.x, arg_1.a.c.x, global0.c.x, -896f), Struct_3(vec3<u32>(arg_0.x, 0u, 0u), true, vec3<bool>(true, false, arg_1.c.x), true, global0.a))), !vec3<bool>(false, true, global0.a.x)), vec3<i32>(func_3(1u, arg_1.d, vec4<f32>(global0.c.x, arg_1.a.c.x, global0.c.x, -610f), Struct_3(u_input.c.xzw, false, global3.c, true, vec4<bool>(false, false, global0.a.x, true))) ^ arg_1.d.b, abs(-37732i), abs(48533i))), Struct_1(vec4<bool>(all(vec4<bool>(global0.a.x, false, true, global3.e.x)), (858f <= global0.c.x) || (4294967295u != global4.x), global0.a.x & arg_1.b.x, true), 0i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.d.c * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-146f, 134f), vec2<f32>(global0.c.x, arg_1.a.c.x)))))), Struct_2(Struct_1(select(select(vec4<bool>(true, global0.a.x, arg_1.a.a.x, true), vec4<bool>(arg_1.c.x, arg_1.c.x, true, global0.a.x), global3.e), vec4<bool>(true, false, global0.a.x, global3.e.x), arg_1.a.a), arg_2, _wgslsmith_f_op_vec2_f32(step(arg_1.d.c, _wgslsmith_f_op_vec2_f32(floor(global0.c))))), vec3<bool>(!arg_1.c.x, all(vec2<bool>(true, true)), 1i < _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, arg_1.d.b), vec3<i32>(arg_2, arg_2, arg_1.a.b))), select(select(vec3<bool>(arg_1.c.x, true, false), global0.a.xww, false), vec3<bool>(global0.c.x < global0.c.x, global0.a.x, global0.a.x && true), arg_1.b.x), Struct_1(global3.e, arg_2, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1.d.c.x, -1000f))))));
    global4 = u_input.c;
    global4 = ~reverseBits(u_input.c);
    var var_2 = var_1.b.c;
    return var_1.c;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<f32>) -> Struct_3 {
    global0 = arg_1;
    global1 = array<Struct_3, 27>();
    let var_0 = Struct_3(_wgslsmith_mult_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 63880u, 16738u), global4.xzz, ~vec3<u32>(u_input.b, global4.x, u_input.c.x)), select(vec3<u32>(global4.x, global4.x, 1u), global3.a, vec3<bool>(arg_0.d.a.x, true, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-166f))), -1320f) >= _wgslsmith_f_op_f32(-arg_0.a.c.x), global0.a.wwy, arg_1.a.x, arg_0.d.a);
    let var_1 = Struct_3(_wgslsmith_mod_vec3_u32(~firstLeadingBit(vec3<u32>(5060u, global4.x, u_input.c.x)) >> (~vec3<u32>(global3.a.x, u_input.b, global4.x) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, 9473u, u_input.c.x), ~(vec3<u32>(u_input.c.x, global4.x, 0u) | vec3<u32>(u_input.c.x, 3767u, global3.a.x)), vec3<u32>(var_0.a.x, global4.x << (4294967295u % 32u), _wgslsmith_mult_u32(global3.a.x, u_input.b)))), (global0.b | -abs(12563i)) != func_2(select(vec2<u32>(global4.x, 0u), ~u_input.c.wz, arg_1.a.zy), func_2(_wgslsmith_div_vec2_u32(vec2<u32>(25734u, global4.x), global3.a.yy), arg_0, -45154i), arg_1.b).a.b, !select(!(!vec3<bool>(global0.a.x, false, arg_0.d.a.x)), arg_1.a.wxz, select(func_2(vec2<u32>(var_0.a.x, var_0.a.x), arg_0, 8185i).c, vec3<bool>(var_0.d, arg_0.d.a.x, true), all(vec3<bool>(global0.a.x, arg_0.d.a.x, false)))), all(select(vec2<bool>(var_0.d, var_0.e.x), arg_1.a.wy, false)) && true, select(select(vec4<bool>(any(vec2<bool>(true, false)), 1u <= global4.x, 4294967295u != u_input.b, false), !global3.e, arg_1.a), var_0.e, arg_0.c.x));
    var var_2 = arg_1;
    return Struct_3(~(~countOneBits(_wgslsmith_div_vec3_u32(var_0.a, vec3<u32>(9920u, u_input.b, 1u)))), any(vec2<bool>(var_2.a.x, var_2.a.x)), arg_1.a.wzz, !(!(1u < var_0.a.x)) | false, vec4<bool>(!(arg_0.a.b == abs(-1i)), arg_1.a.x, true, true));
}

fn func_5(arg_0: u32, arg_1: Struct_3, arg_2: vec2<bool>) -> Struct_1 {
    global3 = Struct_3(global3.a, true, select(!vec3<bool>(true, !global3.d, arg_1.d), vec3<bool>(true | (u_input.a > global0.b), false, any(func_2(global4.yz, Struct_2(Struct_1(vec4<bool>(false, global3.e.x, false, arg_2.x), global0.b, global0.c), global0.a.xww, global0.a.wxz, Struct_1(arg_1.e, -1i, global0.c)), -2147483647i).a.a.zzz)), func_2(vec2<u32>(3060u, ~global3.a.x), func_2(min(global3.a.zy, vec2<u32>(34810u, 64131u)), func_2(vec2<u32>(20115u, global3.a.x), Struct_2(Struct_1(vec4<bool>(global3.e.x, arg_2.x, false, global3.c.x), u_input.a, global0.c), global3.e.zxw, global3.c, Struct_1(global0.a, global0.b, global0.c)), u_input.a), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, global0.b), vec2<i32>(global0.b, u_input.a))), ~(u_input.a | global0.b)).c), true, global0.a);
    global0 = func_2(~(~(~vec2<u32>(u_input.c.x, 28300u))), Struct_2(Struct_1(!select(vec4<bool>(global3.d, global3.e.x, global3.c.x, global3.e.x), vec4<bool>(global0.a.x, global0.a.x, global0.a.x, true), arg_1.d), reverseBits(_wgslsmith_mult_i32(-19426i, u_input.a)), vec2<f32>(166f, global0.c.x)), !(!vec3<bool>(false, global3.e.x, true)), vec3<bool>(!global3.d, global3.e.x, !(-798f <= global0.c.x)), func_2(global3.a.xx, func_2(vec2<u32>(1u, 4294967295u), func_2(arg_1.a.zy, Struct_2(Struct_1(global0.a, -2147483647i, global0.c), vec3<bool>(arg_2.x, false, global0.a.x), global3.c, Struct_1(vec4<bool>(false, false, true, false), u_input.a, vec2<f32>(global0.c.x, 613f))), 11488i), -2147483647i), ~(-2147483647i)).d), -1i).d;
    var var_0 = Struct_4(~vec3<i32>(-13459i, u_input.a, -_wgslsmith_clamp_i32(-32403i, u_input.a, 16185i)), func_2(arg_1.a.zy, Struct_2(func_2(~arg_1.a.xy, Struct_2(Struct_1(global0.a, 0i, vec2<f32>(global0.c.x, 358f)), global3.c, vec3<bool>(false, arg_1.d, arg_1.d), Struct_1(global3.e, u_input.a, vec2<f32>(-1011f, global0.c.x))), _wgslsmith_add_i32(-33205i, global0.b)).d, func_2(vec2<u32>(arg_1.a.x, arg_1.a.x), func_2(vec2<u32>(4294967295u, 55921u), Struct_2(Struct_1(global3.e, global0.b, vec2<f32>(-882f, -1536f)), vec3<bool>(false, global0.a.x, global0.a.x), vec3<bool>(arg_1.c.x, arg_1.e.x, true), Struct_1(global3.e, u_input.a, vec2<f32>(313f, 1275f))), u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(6706i, -54663i, u_input.a, u_input.a), global2[_wgslsmith_index_u32(arg_1.a.x, 19u)])).c, vec3<bool>(7806i >= global0.b, true, true), func_2(select(arg_1.a.xz, vec2<u32>(global3.a.x, 0u), global3.e.yx), func_2(vec2<u32>(0u, arg_1.a.x), Struct_2(Struct_1(global3.e, 1i, vec2<f32>(global0.c.x, 2674f)), vec3<bool>(false, false, false), global0.a.wwy, Struct_1(vec4<bool>(true, true, global3.e.x, false), 40906i, global0.c)), u_input.a), ~(-13331i)).a), u_input.a).a, func_2(vec2<u32>(1u, ~23456u), Struct_2(Struct_1(func_2(arg_1.a.yz, Struct_2(Struct_1(vec4<bool>(arg_2.x, arg_2.x, arg_1.e.x, true), 2147483647i, vec2<f32>(global0.c.x, global0.c.x)), global0.a.zzz, vec3<bool>(arg_1.e.x, arg_2.x, true), Struct_1(vec4<bool>(false, arg_2.x, true, arg_1.c.x), 18511i, global0.c)), global0.b).d.a, -global0.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-489f, global0.c.x))), !global0.a.wwx, arg_1.c, func_2(~global3.a.zz, Struct_2(Struct_1(vec4<bool>(false, arg_1.b, arg_1.e.x, arg_2.x), u_input.a, vec2<f32>(global0.c.x, 361f)), vec3<bool>(global3.b, true, true), vec3<bool>(false, global3.b, global3.b), Struct_1(vec4<bool>(false, true, false, global3.d), global0.b, global0.c)), ~global0.b).d), 8383i));
    let var_1 = var_0.c.a;
    var var_2 = var_0.b.c.x;
    return func_2(_wgslsmith_add_vec2_u32(arg_1.a.zx, global3.a.yx), var_0.c, -2147483647i).a;
}

fn func_6(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: Struct_3) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(691f, 1350f, -1043f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b.c.x, global0.c.x, 158f) * vec3<f32>(arg_1.c.a.c.x, arg_1.b.c.x, global0.c.x))), vec3<f32>(-947f, _wgslsmith_f_op_f32(ceil(-672f)), _wgslsmith_f_op_f32(-global0.c.x)))) + vec3<f32>(global0.c.x, 174f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(327f * -357f))) + 852f)));
    let var_1 = vec4<u32>(abs(1u), ~u_input.b, _wgslsmith_add_u32(global3.a.x, min(firstLeadingBit(global3.a.x), countOneBits(u_input.b))) >> (4294967295u % 32u), abs(min(_wgslsmith_dot_vec3_u32(global3.a, vec3<u32>(u_input.b, global4.x, 1716u)), _wgslsmith_mod_u32(~u_input.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 4294967295u, 1u), arg_2.a)))));
    global4 = vec4<u32>(reverseBits(~_wgslsmith_sub_u32(0u, select(4294967295u, arg_2.a.x, arg_2.d))), 1u, ~global3.a.x, ~max(func_4(func_2(global3.a.yx, Struct_2(arg_1.b, global3.c, arg_1.b.a.xwx, Struct_1(vec4<bool>(false, false, arg_1.c.a.a.x, arg_2.b), 3114i, global0.c)), -27782i), arg_1.b, func_2(vec2<u32>(14233u, arg_2.a.x), arg_1.c, u_input.a).a.c).a.x, abs(arg_2.a.x) >> ((37043u << (arg_2.a.x % 32u)) % 32u)));
    let var_2 = -1i;
    global1 = array<Struct_3, 27>();
    return arg_1.c;
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = func_6(global0.a, Struct_4(vec3<i32>(~(u_input.a >> (u_input.b % 32u)), u_input.a, 0i), func_5(global3.a.x, func_4(func_2(vec2<u32>(4294967295u, global4.x), Struct_2(Struct_1(global3.e, 24202i, vec2<f32>(global0.c.x, global0.c.x)), vec3<bool>(global3.b, true, global0.a.x), vec3<bool>(false, true, global0.a.x), Struct_1(global0.a, -2147483647i, vec2<f32>(global0.c.x, global0.c.x))), u_input.a), func_2(vec2<u32>(arg_0, arg_0), Struct_2(Struct_1(global3.e, -10045i, global0.c), vec3<bool>(global0.a.x, true, global0.a.x), vec3<bool>(true, global0.a.x, global0.a.x), Struct_1(global3.e, global0.b, global0.c)), u_input.a).a, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, global0.c.x), global0.c))), select(global3.c.xz, vec2<bool>(global3.d, false), select(global0.a.yz, vec2<bool>(global3.b, global3.b), global0.a.x))), Struct_2(Struct_1(!global3.e, global0.b, vec2<f32>(1000f, global0.c.x)), global3.c, vec3<bool>(true, true, true), func_5(~global3.a.x, Struct_3(vec3<u32>(global3.a.x, global3.a.x, arg_0), global0.a.x, vec3<bool>(false, false, global0.a.x), global0.a.x, global0.a), select(vec2<bool>(false, global3.b), global0.a.zy, vec2<bool>(global0.a.x, global3.e.x))))), func_4(Struct_2(func_5(arg_0, global1[_wgslsmith_index_u32(global3.a.x | global3.a.x, 27u)], vec2<bool>(true, global0.a.x)), global0.a.ywx, global3.c, Struct_1(func_5(4294967295u, global1[_wgslsmith_index_u32(u_input.c.x, 27u)], global3.e.yz).a, u_input.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1567f, global0.c.x)))), Struct_1(global3.e, u_input.a, global0.c), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(func_2(vec2<u32>(global3.a.x, global4.x), Struct_2(Struct_1(vec4<bool>(true, global0.a.x, global0.a.x, true), u_input.a, global0.c), global0.a.yyw, global3.c, Struct_1(vec4<bool>(true, true, false, global0.a.x), u_input.a, vec2<f32>(672f, global0.c.x))), -6113i).a.c, global0.c)))));
    let var_1 = vec4<i32>(51987i, 17417i, 29434i, 6692i);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.x, var_0.a.c.x, 1000f, 441f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(930f, var_0.d.c.x, global0.c.x, var_0.d.c.x)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(291f, global0.c.x, 307f, 623f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.c.x, global0.c.x, 1032f, global0.c.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-248f, 865f, -110f, global0.c.x) * vec4<f32>(689f, 391f, global0.c.x, 816f))))));
    var var_3 = var_0.d;
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.d.c.x, var_0.a.c.x, 589f, global0.c.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.c.x, var_0.d.c.x, var_3.c.x, -843f) + vec4<f32>(var_0.d.c.x, var_3.c.x, 1088f, var_2.x))))))));
    return Struct_1(vec4<bool>(!func_5(u_input.c.x ^ global3.a.x, Struct_3(u_input.c.yxz, false, vec3<bool>(global3.c.x, false, false), global3.c.x, global3.e), var_3.a.xz).a.x, false, false, global3.e.x), 36127i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-global0.c), global0.c))) * vec2<f32>(-358f, global0.c.x)));
}

fn func_7(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec3<bool>) -> Struct_1 {
    global3 = Struct_3(vec3<u32>(46100u, arg_1.x, ~u_input.b | max(1u, global3.a.x)) >> ((global4.zzw & select(u_input.c.wxy, min(u_input.c.xxw, vec3<u32>(u_input.b, arg_1.x, u_input.c.x)), vec3<bool>(global3.d, true, arg_2.x))) % vec3<u32>(32u)), func_5(~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(arg_1.zwy, global3.a), select(global4.zww, arg_1.xyw, true)), Struct_3(abs(arg_1.xwx), !(global3.a.x >= 11987u), func_1(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 29226u, 16566u), arg_1.yzw)).a.wyy, true, !global3.e), arg_0.a.zx).a.x, !vec3<bool>(true, arg_2.x, global0.a.x), true, !global3.e);
    var var_0 = !(!(1i <= u_input.a));
    var var_1 = 1i;
    return Struct_1(vec4<bool>(true, global3.b, arg_0.a.x, !func_4(func_2(global4.yy, Struct_2(arg_0, global0.a.yxz, global0.a.ywy, Struct_1(global3.e, -1i, vec2<f32>(global0.c.x, arg_0.c.x))), arg_0.b), Struct_1(vec4<bool>(true, global0.a.x, false, true), 1i, vec2<f32>(859f, arg_0.c.x)), arg_0.c).b), func_3(_wgslsmith_dot_vec4_u32(~arg_1, vec4<u32>(u_input.b, global3.a.x, arg_1.x, 1u)) | _wgslsmith_div_u32(1u, max(29219u, global3.a.x)), func_2(global3.a.xy, func_6(vec4<bool>(true, global0.a.x, false, true), Struct_4(vec3<i32>(u_input.a, -1i, 0i), Struct_1(vec4<bool>(false, global0.a.x, arg_0.a.x, false), global0.b, global0.c), Struct_2(Struct_1(global0.a, u_input.a, arg_0.c), vec3<bool>(arg_0.a.x, global3.b, false), arg_2, arg_0)), Struct_3(global3.a, false, vec3<bool>(true, false, arg_0.a.x), true, arg_0.a)), func_6(!vec4<bool>(false, arg_2.x, arg_0.a.x, true), Struct_4(vec3<i32>(u_input.a, -1i, 28974i), arg_0, Struct_2(Struct_1(global3.e, -54979i, vec2<f32>(565f, 398f)), global3.c, vec3<bool>(true, global3.b, global0.a.x), arg_0)), Struct_3(vec3<u32>(global3.a.x, 31748u, arg_1.x), true, global3.c, arg_0.a.x, vec4<bool>(true, true, false, false))).d.b).d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1212f, -248f, -1241f, global0.c.x)))), Struct_3(~arg_1.xxw, false, arg_0.a.yxx, true, vec4<bool>(arg_2.x, arg_2.x, !arg_0.a.x, !global3.c.x))), vec2<f32>(func_5((4294967295u ^ global4.x) ^ global4.x, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 31389u), abs(vec2<u32>(global3.a.x, global3.a.x))), 27u)], arg_0.a.zw).c.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.x) * 1000f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.c.x)))))));
}

fn func_8(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_2) -> vec2<i32> {
    var var_0 = func_6(func_6(select(func_7(arg_2.a, firstTrailingBit(vec4<u32>(26176u, global3.a.x, u_input.c.x, 4294967295u)), global0.a.zyx).a, vec4<bool>(arg_2.d.a.x, true, global0.a.x, true), !func_6(vec4<bool>(arg_2.b.x, false, global0.a.x, global3.b), Struct_4(vec3<i32>(-43948i, global0.b, global0.b), arg_2.a, Struct_2(Struct_1(vec4<bool>(arg_2.b.x, true, false, arg_2.d.a.x), -1i, global0.c), arg_2.d.a.wxw, vec3<bool>(true, false, false), Struct_1(vec4<bool>(global0.a.x, false, true, global0.a.x), 6841i, vec2<f32>(-159f, 1000f)))), global1[_wgslsmith_index_u32(global4.x, 27u)]).b.x), Struct_4(vec3<i32>(~global0.b, ~arg_2.d.b, 40034i), arg_2.d, arg_2), Struct_3(~(~global3.a), any(vec2<bool>(global3.b, false)), vec3<bool>(true, arg_0.x < u_input.a, true), global0.a.x, !vec4<bool>(false, global3.e.x, true, global3.b))).a.a, Struct_4(vec3<i32>(func_5(firstLeadingBit(1345u), Struct_3(vec3<u32>(u_input.c.x, u_input.b, global4.x), global3.e.x, global3.c, false, vec4<bool>(true, arg_2.c.x, arg_2.b.x, true)), select(global3.c.xy, arg_2.b.xy, true)).b, arg_0.x, arg_2.a.b), arg_2.a, arg_2), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~25548u, 1u, ~1u, select(4294967295u, u_input.b, false)), u_input.c), ~firstTrailingBit(4294967295u)), 27u)]).a.c.x;
    var var_1 = _wgslsmith_sub_vec4_i32(vec4<i32>(-12221i, _wgslsmith_add_i32(1i, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.x, arg_0.x, arg_2.a.b), vec3<i32>(5350i, arg_2.d.b, arg_2.d.b)), reverseBits(vec3<i32>(u_input.a, -43670i, 2147483647i)))), arg_0.x | ~_wgslsmith_mod_i32(global0.b, 2147483647i), u_input.a), reverseBits(vec4<i32>(func_2(~vec2<u32>(64636u, u_input.b), Struct_2(arg_2.d, vec3<bool>(global0.a.x, arg_2.a.a.x, false), vec3<bool>(true, false, false), Struct_1(vec4<bool>(false, false, true, true), global0.b, arg_2.a.c)), global0.b).a.b, i32(-1i) * -global0.b, 1i, arg_0.x)));
    let var_2 = -804f;
    var var_3 = Struct_4(~var_1.yzy, Struct_1(arg_2.d.a, _wgslsmith_mod_i32(func_2(global4.xy, arg_2, 31883i ^ var_1.x).a.b, firstTrailingBit(~u_input.a)), vec2<f32>(254f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), Struct_2(arg_2.d, !arg_2.a.a.wzy, global0.a.zww, arg_2.d));
    var_3 = Struct_4(vec3<i32>(abs(abs(~46749i)), -1i, u_input.a), Struct_1(global3.e, 1i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.a.c * _wgslsmith_div_vec2_f32(var_3.b.c, vec2<f32>(var_2, var_2))))), var_3.c);
    return _wgslsmith_mod_vec2_i32(arg_0, var_3.a.xy) << ((_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(~global3.a.yz, vec2<u32>(4294967295u, u_input.c.x)), vec2<u32>(0u, global3.a.x >> (1u % 32u))) & (~abs(vec2<u32>(20614u, global4.x)) << (_wgslsmith_mod_vec2_u32(vec2<u32>(1u, global3.a.x), vec2<u32>(4294967295u, 57886u)) % vec2<u32>(32u)))) % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_8(-(vec2<i32>(-1i) * -_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, -1i), vec2<i32>(global0.b, u_input.a))), _wgslsmith_div_f32(global0.c.x, global0.c.x), Struct_2(func_7(func_1(global4.x), _wgslsmith_sub_vec4_u32(u_input.c, u_input.c), global0.a.zxy), vec3<bool>(false, global0.a.x, true), vec3<bool>(true, true, all(!global0.a.xz)), Struct_1(!func_4(Struct_2(Struct_1(global3.e, global0.b, vec2<f32>(global0.c.x, global0.c.x)), global0.a.yxz, global0.a.yxz, Struct_1(vec4<bool>(global0.a.x, false, global0.a.x, global0.a.x), 48939i, vec2<f32>(global0.c.x, global0.c.x))), Struct_1(global0.a, u_input.a, global0.c), global0.c).e, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 2147483647i), -vec2<i32>(1i, u_input.a)), vec2<f32>(570f, -194f))));
    global3 = Struct_3((vec3<u32>(~0u, countOneBits(4294967295u), global4.x) | ~u_input.c.yyx) & ~(~(u_input.c.xyw & global4.zww)), all(global3.e.zy), !func_5(u_input.c.x, Struct_3(min(global3.a, global3.a), global0.a.x == global3.d, global3.c, true, !global3.e), !func_1(9325u).a.xz).a.zyw, func_5(~abs(~35347u), Struct_3(~global3.a, func_5(global4.x, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(8528u, global4.x), 27u)], !global3.e.wz).a.x, func_6(!global0.a, Struct_4(vec3<i32>(var_0.x, var_0.x, global0.b), Struct_1(global0.a, 1i, vec2<f32>(global0.c.x, global0.c.x)), Struct_2(Struct_1(global3.e, 3382i, global0.c), vec3<bool>(global3.d, false, global0.a.x), vec3<bool>(true, global3.d, false), Struct_1(vec4<bool>(false, false, false, false), global0.b, global0.c))), global1[_wgslsmith_index_u32(32380u, 27u)]).b, false, global3.e), !select(vec2<bool>(global0.a.x, false), select(global3.e.yz, global3.c.zy, vec2<bool>(global3.c.x, global0.a.x)), func_6(vec4<bool>(true, global0.a.x, false, false), Struct_4(vec3<i32>(global0.b, -24172i, global0.b), Struct_1(vec4<bool>(true, false, false, true), 26106i, vec2<f32>(global0.c.x, global0.c.x)), Struct_2(Struct_1(vec4<bool>(true, global0.a.x, global3.b, false), u_input.a, global0.c), global3.e.wwx, global0.a.wwx, Struct_1(global0.a, 1i, vec2<f32>(1074f, global0.c.x)))), global1[_wgslsmith_index_u32(13970u, 27u)]).d.a.zy)).a.x, !vec4<bool>(_wgslsmith_f_op_f32(floor(-567f)) == _wgslsmith_f_op_f32(global0.c.x - global0.c.x), global3.c.x, false, false));
    var_0 = vec2<i32>(var_0.x, u_input.a);
    var var_1 = Struct_2(func_5(reverseBits(u_input.b), Struct_3(u_input.c.xyz, true, global3.e.zyw, any(vec2<bool>(true, global0.a.x)), global3.e), global3.e.xy), select(func_4(Struct_2(Struct_1(global0.a, -48992i, vec2<f32>(-841f, global0.c.x)), func_1(56194u).a.xwy, global0.a.xxw, func_2(u_input.c.zz, Struct_2(Struct_1(vec4<bool>(global3.e.x, false, global0.a.x, global3.c.x), 14904i, vec2<f32>(global0.c.x, -387f)), vec3<bool>(false, true, global3.c.x), vec3<bool>(global0.a.x, true, global0.a.x), Struct_1(global0.a, global0.b, global0.c)), var_0.x).a), Struct_1(func_1(0u).a, global0.b >> (4294967295u % 32u), _wgslsmith_div_vec2_f32(global0.c, global0.c)), _wgslsmith_f_op_vec2_f32(global0.c + func_2(u_input.c.xy, Struct_2(Struct_1(global0.a, 23811i, global0.c), vec3<bool>(global0.a.x, global3.d, true), vec3<bool>(global0.a.x, global0.a.x, global0.a.x), Struct_1(vec4<bool>(global3.e.x, true, true, false), var_0.x, global0.c)), -50977i).d.c)).e.wzz, !global0.a.zxw, global0.a.x), func_1(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(1u, 23551u), abs(4294967295u), ~_wgslsmith_mult_u32(u_input.b, 4294967295u))).a.zyy, Struct_1(!global0.a, reverseBits(var_0.x), _wgslsmith_div_vec2_f32(vec2<f32>(1461f, global0.c.x), func_5(_wgslsmith_dot_vec2_u32(vec2<u32>(60157u, u_input.c.x), vec2<u32>(global3.a.x, 0u)), global1[_wgslsmith_index_u32(0u, 27u)], vec2<bool>(false, true)).c)));
    let var_2 = -2147483647i;
    var_1 = func_2(vec2<u32>(~global3.a.x, _wgslsmith_add_u32(reverseBits(reverseBits(65359u)), 989u)), func_2(countOneBits(u_input.c.zz), func_2(vec2<u32>(global3.a.x, global3.a.x), func_6(vec4<bool>(global3.b, var_1.d.a.x, true, false), Struct_4(vec3<i32>(-2147483647i, -46287i, var_0.x), Struct_1(vec4<bool>(false, false, var_1.c.x, global0.a.x), u_input.a, vec2<f32>(global0.c.x, var_1.d.c.x)), Struct_2(Struct_1(var_1.a.a, var_0.x, global0.c), vec3<bool>(false, global0.a.x, false), global0.a.yzy, Struct_1(vec4<bool>(true, false, global0.a.x, var_1.b.x), 22171i, vec2<f32>(1814f, -584f)))), func_4(Struct_2(Struct_1(global0.a, global0.b, var_1.d.c), global3.c, vec3<bool>(true, false, true), var_1.d), var_1.d, global0.c)), countOneBits(var_0.x & -2147483647i)), 0i), func_2(vec2<u32>(~(4294967295u & global4.x), 4294967295u), func_6(!vec4<bool>(var_1.c.x, var_1.c.x, global0.a.x, true), Struct_4(vec3<i32>(var_2, 17202i, 0i), func_5(1u, Struct_3(global3.a, true, vec3<bool>(false, false, false), global3.c.x, global3.e), global3.c.zz), Struct_2(var_1.a, global0.a.xyz, vec3<bool>(false, true, var_1.c.x), var_1.a)), global1[_wgslsmith_index_u32(u_input.c.x, 27u)]), u_input.a).d.b);
    let var_3 = any(global3.e.xw);
    let x = u_input.a;
    s_output = StorageBuffer(24296i);
}

