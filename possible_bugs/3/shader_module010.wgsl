struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: f32,
    d: i32,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: vec3<u32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 5> = array<vec2<u32>, 5>(vec2<u32>(1u, 1u), vec2<u32>(26696u, 0u), vec2<u32>(0u, 43825u), vec2<u32>(1u, 19822u), vec2<u32>(1u, 4294967295u));

var<private> global1: f32;

var<private> global2: array<Struct_2, 21>;

var<private> global3: vec3<u32> = vec3<u32>(73495u, 4294967295u, 29351u);

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec3<f32> {
    let var_0 = Struct_5(Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(126f, -251f, -963f) - vec3<f32>(-480f, -130f, 1000f))), vec3<f32>(_wgslsmith_f_op_f32(1642f * -303f), _wgslsmith_div_f32(1000f, -856f), -393f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(529f, 470f))))), vec2<bool>(true, true)), Struct_2(vec4<i32>(u_input.c, -(~u_input.c), u_input.c, _wgslsmith_add_i32(u_input.c, 9565i)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(410f, 994f, -201f))), 1141f, vec2<bool>(select(false, true, false), all(vec4<bool>(true, true, true, true))))), Struct_2(vec4<i32>(1i, 8019i, u_input.c, select(_wgslsmith_add_i32(0i, 2147483647i), _wgslsmith_sub_i32(-1i, -16899i), true)), Struct_1(vec3<f32>(837f, -912f, -1636f), -1000f, select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(true, true), true), true))), ~vec3<u32>(4294967295u, global3.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, global3.x, 1u, 24931u), ~vec4<u32>(87737u, 0u, 66263u, u_input.a))), Struct_3(Struct_2(min(~vec4<i32>(5895i, -1i, -53832i, u_input.c), -vec4<i32>(u_input.c, -54630i, 1i, 1i)), Struct_1(vec3<f32>(-369f, -1335f, 107f), 1020f, vec2<bool>(false, true))), global3.x));
    var var_1 = min(~_wgslsmith_add_u32(~var_0.d.x, u_input.a), global3.x);
    var_1 = ~_wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(global3.x, global3.x), ~u_input.b, vec2<u32>(107555u, 1u)), ~countOneBits(select(vec2<u32>(u_input.a, 59102u), vec2<u32>(var_0.e.b, var_0.e.b), var_0.e.a.b.c.x)));
    global2 = array<Struct_2, 21>();
    global1 = var_0.a.a.x;
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(1153f, _wgslsmith_f_op_f32(abs(-1169f)), !var_0.b.b.c.x)))), _wgslsmith_f_op_f32(ceil(165f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.a.a.x, _wgslsmith_f_op_f32(step(var_0.c.b.b, 463f)))))));
}

fn func_2(arg_0: f32) -> i32 {
    global1 = -646f;
    global2 = array<Struct_2, 21>();
    global0 = array<vec2<u32>, 5>();
    global2 = array<Struct_2, 21>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0)))) + _wgslsmith_f_op_vec3_f32(func_3())), _wgslsmith_f_op_f32(-arg_0), vec2<bool>(true, true));
    return -2147483647i;
}

fn func_4(arg_0: i32, arg_1: Struct_5, arg_2: vec2<f32>) -> f32 {
    var var_0 = Struct_2(vec4<i32>(-2147483647i, -1i, _wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_sub_i32(arg_1.b.a.x, -18788i), 2147483647i ^ u_input.c), _wgslsmith_mod_i32(-10619i, 1i)), arg_1.e.a.a.x), Struct_1(arg_1.c.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-644f - arg_2.x)), select(select(select(vec2<bool>(true, true), vec2<bool>(arg_1.e.a.b.c.x, false), false), vec2<bool>(false, arg_1.a.c.x), true), arg_1.a.c, true)));
    global1 = -902f;
    global3 = arg_1.d;
    global1 = _wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(209f, _wgslsmith_f_op_f32(1090f - var_0.b.b)))) * arg_2.x));
    var var_1 = Struct_4(!arg_1.b.b.c.x == true, arg_2.x, _wgslsmith_f_op_f32(var_0.b.a.x * arg_1.c.b.b), firstTrailingBit(u_input.c), arg_1.e);
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.a.x) + 330f)));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_mod_u32(~global3.x, 57770u) >> (0u % 32u);
    global1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-942f - -1695f), -419f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_2(-207f), Struct_5(Struct_1(vec3<f32>(442f, 594f, 996f), 228f, vec2<bool>(false, true)), global2[_wgslsmith_index_u32(~15365u, 21u)], Struct_2(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), Struct_1(vec3<f32>(-334f, -212f, -1000f), 847f, vec2<bool>(true, true))), vec3<u32>(4294967295u, 68530u, u_input.a), Struct_3(Struct_2(vec4<i32>(2147483647i, -40045i, 1i, u_input.c), Struct_1(vec3<f32>(359f, -361f, -112f), -747f, vec2<bool>(true, false))), global3.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-131f, -916f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-458f, -1123f) * vec2<f32>(-753f, -1175f))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-429f - -1000f)) * -610f)));
    let var_1 = Struct_3(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global3.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, global3.x, 1u), ~vec4<u32>(global3.x, global3.x, 0u, u_input.b.x)) >> (global3.x % 32u)), 21u)], 0u);
    var_0 = 22329u;
    global3 = min(vec3<u32>(0u, var_1.b, ~0u), _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(abs(global3.x), 1u, ~506u), max(vec3<u32>(31102u, u_input.a, global3.x), vec3<u32>(global3.x, 0u, global3.x)) & _wgslsmith_sub_vec3_u32(vec3<u32>(62836u, 36821u, global3.x), vec3<u32>(global3.x, 25189u, 1u))), vec3<u32>(1u, global3.x, firstLeadingBit(4294967295u)), max(firstLeadingBit(abs(vec3<u32>(global3.x, 1u, u_input.b.x))), max(vec3<u32>(global3.x, 4294967295u, 0u), vec3<u32>(var_1.b, 1u, 0u)))));
    return var_1.a.b;
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> i32 {
    let var_0 = arg_3.c.x;
    global2 = array<Struct_2, 21>();
    let var_1 = _wgslsmith_f_op_f32(1249f * -1000f);
    var var_2 = Struct_4(-(firstTrailingBit(u_input.c) >> (~4294967295u % 32u)) >= u_input.c, -730f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1090f)), u_input.c, Struct_3(Struct_2(_wgslsmith_sub_vec4_i32(-vec4<i32>(18866i, u_input.c, u_input.c, 2270i), vec4<i32>(-1i, -9229i, u_input.c, u_input.c) ^ vec4<i32>(u_input.c, 0i, u_input.c, u_input.c)), func_1()), ~_wgslsmith_clamp_u32(4294967295u, select(global3.x, 4580u, arg_3.c.x), global3.x >> (arg_2 % 32u))));
    var var_3 = Struct_5(arg_3, Struct_2(~_wgslsmith_add_vec4_i32(vec4<i32>(-1i, u_input.c, 32905i, -31301i), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, -2147483647i, u_input.c, var_2.e.a.a.x), var_2.e.a.a)), func_1()), var_2.e.a, vec3<u32>(25601u, arg_2, reverseBits(41334u)), Struct_3(var_2.e.a, abs(var_2.e.b & ~u_input.b.x)));
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1409f)) - 1f), func_1(), ~abs(u_input.a) & 4294967295u, Struct_1(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), vec2<bool>(true, true)));
    var var_1 = Struct_4(true, -967f, 878f, -u_input.c, Struct_3(Struct_2(firstTrailingBit(firstTrailingBit(vec4<i32>(u_input.c, -41268i, 13976i, 1i))), func_1()), _wgslsmith_div_u32(_wgslsmith_sub_u32(0u, u_input.a), firstTrailingBit(~u_input.b.x))));
    var_1 = Struct_4(!(!select(true, all(vec2<bool>(false, true)), func_1().c.x)), var_1.b, -760f, ~(~u_input.c | _wgslsmith_mult_i32(1i, -1i)), var_1.e);
    let var_2 = var_1.e.a.b;
    let var_3 = !(!(u_input.b.x <= (~global3.x ^ ~0u)));
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_mod_u32(global3.x, u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.e.b, _wgslsmith_mult_u32(var_1.e.b, 4294967295u), reverseBits(4294967295u)), firstTrailingBit(~vec3<u32>(92075u, u_input.b.x, u_input.b.x)))), 9421u, -_wgslsmith_clamp_vec3_i32(vec3<i32>(24227i, ~u_input.c, i32(-1i) * -49935i), abs(-vec3<i32>(u_input.c, 21415i, u_input.c)), var_1.e.a.a.zzz ^ var_1.e.a.a.wyw), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - var_1.c))), -1000f);
}

