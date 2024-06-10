struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: f32,
    e: u32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec3<f32>,
    d: i32,
    e: i32,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(0u, 915f, Struct_1(vec3<f32>(-364f, -1920f, -908f), vec4<bool>(true, false, true, true)), 822f, 1u), Struct_2(63541u, 2035f, Struct_1(vec3<f32>(196f, -491f, -699f), vec4<bool>(false, true, true, true)), 1000f, 11475u), Struct_2(16278u, -1449f, Struct_1(vec3<f32>(-579f, -275f, -341f), vec4<bool>(false, true, true, true)), -782f, 1u), Struct_2(62621u, 1557f, Struct_1(vec3<f32>(1223f, -703f, -442f), vec4<bool>(false, false, true, false)), -307f, 0u), Struct_2(1u, -169f, Struct_1(vec3<f32>(-1396f, 1000f, -2496f), vec4<bool>(true, true, true, true)), 898f, 4294967295u));

var<private> global1: array<vec4<bool>, 20> = array<vec4<bool>, 20>(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true));

var<private> global2: array<i32, 16>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec3<bool> {
    global2 = array<i32, 16>();
    var var_0 = all(!vec2<bool>((u_input.b.x >> (44604u % 32u)) != reverseBits(0i), !(u_input.b.x >= -67576i)));
    let var_1 = false;
    var_0 = false;
    let var_2 = -1785f;
    return !vec3<bool>(select(all(global1[_wgslsmith_index_u32(1u, 20u)]), true, var_1 | !var_1), !(_wgslsmith_f_op_f32(var_2 - 113f) != _wgslsmith_f_op_f32(floor(var_2))), all(vec2<bool>(true, var_1)));
}

fn func_2() -> Struct_3 {
    global2 = array<i32, 16>();
    global0 = array<Struct_2, 5>();
    var var_0 = func_3();
    global1 = array<vec4<bool>, 20>();
    let var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-1353f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(458f, 155f, true))))))), -global2[_wgslsmith_index_u32(0u, 16u)], 1u);
    return Struct_3(_wgslsmith_sub_i32(-global2[_wgslsmith_index_u32(var_1.c, 16u)], -(~(-global2[_wgslsmith_index_u32(0u, 16u)]))), Struct_2(29034u, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1f, var_1.a)), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(var_1.a + 860f), _wgslsmith_f_op_f32(var_1.a - var_1.a), _wgslsmith_f_op_f32(round(674f))), global1[_wgslsmith_index_u32(1u >> (var_1.c % 32u), 20u)]), var_1.a, max(firstTrailingBit(~5674u), ~_wgslsmith_mod_u32(36077u, var_1.c))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-649f, var_1.a, 697f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(225f, var_1.a, 157f))) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.a, 1677f, -1000f)))), reverseBits(-29247i) != (var_1.b << (var_1.c % 32u)))))), var_1.b, -1i);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec4<i32>) -> vec4<bool> {
    global0 = array<Struct_2, 5>();
    global1 = array<vec4<bool>, 20>();
    let var_0 = -_wgslsmith_dot_vec4_i32(~arg_2, _wgslsmith_sub_vec4_i32(-max(vec4<i32>(-11437i, arg_2.x, global2[_wgslsmith_index_u32(arg_1.e, 16u)], 1i), vec4<i32>(arg_0.a, arg_2.x, -2147483647i, arg_0.a)), abs(~vec4<i32>(956i, -16446i, global2[_wgslsmith_index_u32(arg_1.e, 16u)], -1i))));
    var var_1 = select(!select(arg_1.c.b.zw, !func_2().b.c.b.wz, select(func_3().yx, arg_1.c.b.zy, true)), func_2().b.c.b.zx, arg_0.b.c.b.yx);
    var var_2 = arg_1.c.b.xw;
    return global1[_wgslsmith_index_u32(~(~select(arg_1.e, arg_1.a, true)), 20u)];
}

fn func_5(arg_0: vec2<f32>, arg_1: vec3<i32>, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(max(~(~1u), 64076u), 20u)];
    let var_1 = true;
    var var_2 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(arg_0.x)))), -676f), _wgslsmith_mult_i32(global2[_wgslsmith_index_u32(abs(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(16831u, 68748u, 1u, 24539u), vec4<u32>(4294967295u, 30331u, 4294967295u, 4294967295u)), 50934u)), 16u)], -1i), ~0u);
    var var_3 = Struct_2(~(~(~var_2.c)) & var_2.c, -1000f, func_2().b.c, arg_0.x, ~(~(~var_2.c)) | var_2.c);
    var var_4 = true;
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_3.c.a + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.c.a.x, -1158f, -361f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_2.a, var_2.a, var_2.a), var_3.c.a)))) - vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(288f, var_3.c.a.x, var_0.x)), _wgslsmith_f_op_f32(arg_0.x - var_3.c.a.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-829f, var_2.a) - _wgslsmith_f_op_f32(max(736f, var_2.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.d + -181f) - 2171f))), func_2().b.c.b);
}

fn func_1(arg_0: i32) -> Struct_3 {
    var var_0 = func_5(vec2<f32>(636f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(341f + 645f), _wgslsmith_f_op_f32(f32(-1f) * -256f))))), _wgslsmith_clamp_vec3_i32(u_input.b.wyx, countOneBits(~vec3<i32>(11582i, -1i, 2147483647i)), u_input.b.wyz), select(vec4<i32>(arg_0, _wgslsmith_dot_vec3_i32(-u_input.b.zyx, reverseBits(u_input.b.yww)), -arg_0, -1i), -(~(-u_input.b)), any(func_4(func_2(), func_2().b, -u_input.b))));
    global2 = array<i32, 16>();
    let var_1 = ~vec3<u32>(~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(3924u, 4294967295u, 41141u, 86290u)), vec4<u32>(1u, 1u, 1u, 1u)), 1u, ~1u);
    global2 = array<i32, 16>();
    global2 = array<i32, 16>();
    return func_2();
}

fn func_6(arg_0: bool, arg_1: Struct_3) -> Struct_4 {
    let var_0 = func_2().b;
    var var_1 = arg_1.b.e;
    var_1 = var_0.e;
    let var_2 = var_0.c.b.zy;
    let var_3 = abs(vec2<u32>(firstTrailingBit(0u), ~(~(var_0.a | 4738u))));
    return Struct_4(_wgslsmith_f_op_f32(trunc(-411f)), global2[_wgslsmith_index_u32(~var_0.a, 16u)], _wgslsmith_div_u32(~arg_1.b.e, _wgslsmith_sub_u32(~(~var_3.x), arg_1.b.a)));
}

fn func_7(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec3<u32>, arg_3: vec4<f32>) -> bool {
    global0 = array<Struct_2, 5>();
    global1 = array<vec4<bool>, 20>();
    global0 = array<Struct_2, 5>();
    let var_0 = Struct_4(235f, -31629i, ~_wgslsmith_mult_u32(1u, max(arg_0.e, 17116u) >> (_wgslsmith_div_u32(10962u, arg_0.e) % 32u)));
    global0 = array<Struct_2, 5>();
    return arg_3.x < -451f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -select(abs(min(-20451i, 50666i)) >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(45977u, 4294967295u), vec2<u32>(56343u, 3238u)) % 32u), u_input.c.x, true);
    var var_1 = vec3<bool>(all(select(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, true))), func_7(global0[_wgslsmith_index_u32(73717u, 5u)], func_6(true, func_1(~global2[_wgslsmith_index_u32(1u, 16u)])), min(_wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(1u, 1u, 1u)), vec3<u32>(1u, 1u, 1u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1281f + 894f), _wgslsmith_f_op_f32(-1107f - -1458f), -700f, -201f))), true);
    var var_2 = Struct_3(_wgslsmith_dot_vec4_i32(select(u_input.b, _wgslsmith_mod_vec4_i32(u_input.b, vec4<i32>(global2[_wgslsmith_index_u32(40542u, 16u)], global2[_wgslsmith_index_u32(1u, 16u)], 16085i, global2[_wgslsmith_index_u32(1u, 16u)])), func_3().x), u_input.b), Struct_2(~1u, _wgslsmith_f_op_f32(557f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1071f)))), func_1(34813i & global2[_wgslsmith_index_u32(1u, 16u)]).b.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2().c.x - 829f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -203f) - _wgslsmith_f_op_f32(f32(-1f) * -660f))), _wgslsmith_mult_u32(1u, ~1u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-427f, _wgslsmith_f_op_f32(trunc(-337f)), _wgslsmith_f_op_f32(-391f + 902f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(754f, 534f, 1262f), vec3<f32>(1000f, -239f, 395f))))) + vec3<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(246f, 349f) - 1217f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1835f) + _wgslsmith_f_op_f32(936f * -1267f)))), u_input.a.x | (abs(min(-66352i, 1i)) >> (_wgslsmith_dot_vec4_u32(min(vec4<u32>(13584u, 40043u, 16222u, 61746u), vec4<u32>(1u, 29856u, 4294967295u, 4294967295u)), vec4<u32>(1u, 1u, 1u, 1u)) % 32u)), i32(-1i) * -14516i);
    var_1 = vec3<bool>(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1367f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.c.x, -1299f))) > 782f, any(vec3<bool>(false, !var_2.b.c.b.x, func_4(Struct_3(var_2.d, Struct_2(var_2.b.e, -1149f, Struct_1(vec3<f32>(var_2.b.c.a.x, -458f, var_2.c.x), vec4<bool>(false, var_2.b.c.b.x, var_2.b.c.b.x, var_2.b.c.b.x)), 1982f, var_2.b.e), vec3<f32>(1000f, var_2.b.b, var_2.c.x), u_input.a.x, global2[_wgslsmith_index_u32(62294u, 16u)]), Struct_2(var_2.b.a, -1208f, Struct_1(vec3<f32>(var_2.b.c.a.x, 544f, var_2.c.x), var_2.b.c.b), var_2.c.x, 0u), vec4<i32>(u_input.b.x, 18595i, -52775i, u_input.a.x)).x)) | (_wgslsmith_f_op_f32(abs(397f)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.b.b)))));
    let var_3 = ~vec3<u32>(~var_2.b.e, ~(~var_2.b.e), firstLeadingBit(func_1(2147483647i).b.a) >> (~func_1(1i).b.e % 32u));
    var_0 = (func_2().a & (1i & ~(var_2.a << (4392u % 32u)))) & (_wgslsmith_add_i32(var_2.d, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(var_3.x, _wgslsmith_dot_vec3_u32(var_3, var_3)), 16u)]) ^ global2[_wgslsmith_index_u32(countOneBits(var_2.b.e), 16u)]);
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(130f - _wgslsmith_div_f32(var_2.c.x, _wgslsmith_f_op_f32(-var_2.b.b))))));
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1982f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(vec2<f32>(var_2.b.b, var_2.c.x), u_input.b.zwx, u_input.b).a.x * func_2().b.c.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c.x, var_5, -188f) + _wgslsmith_f_op_vec3_f32(-var_2.c)));
}

