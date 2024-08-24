struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<f32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10>;

var<private> global1: array<f32, 6> = array<f32, 6>(479f, -646f, -347f, -579f, -1390f, -261f);

var<private> global2: vec4<f32>;

var<private> global3: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(1u, true, vec4<f32>(-1877f, -690f, -1020f, -1269f), vec2<u32>(26906u, 4294967295u)), Struct_1(1u, true, vec4<f32>(-2067f, -354f, -1237f, 338f), vec2<u32>(62100u, 0u)), Struct_1(40491u, false, vec4<f32>(-758f, 1000f, -1710f, 543f), vec2<u32>(1u, 47960u)), Struct_1(0u, true, vec4<f32>(-1264f, -473f, 578f, 648f), vec2<u32>(54250u, 41319u)), Struct_1(1u, false, vec4<f32>(-1824f, -1677f, 401f, 422f), vec2<u32>(0u, 36415u)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec3<bool>, arg_1: bool) -> bool {
    var var_0 = Struct_3(i32(-1i) * -32414i, _wgslsmith_clamp_u32(u_input.a & 0u, 4294967295u, u_input.a), Struct_1(~42650u, true, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, global1[_wgslsmith_index_u32(6314u, 6u)], global1[_wgslsmith_index_u32(4294967295u, 6u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 6u)], 1102f, global1[_wgslsmith_index_u32(u_input.a, 6u)], global2.x))))), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, 1u), firstLeadingBit(vec2<u32>(22112u, u_input.a)))));
    var_0 = Struct_3(1i, 4294967295u, global3[_wgslsmith_index_u32((u_input.a ^ 57986u) & _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(var_0.c.a, 1u), u_input.a & var_0.b), var_0.c.d), 5u)]);
    let var_1 = var_0.c.c;
    global3 = array<Struct_1, 5>();
    var var_2 = Struct_1(reverseBits(~(~u_input.a)) << (21354u % 32u), var_0.c.d.x != var_0.c.d.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_0.c.c, vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 6u)], 1680f, var_1.x, var_1.x)) * _wgslsmith_f_op_vec4_f32(var_0.c.c * vec4<f32>(496f, var_0.c.c.x, -954f, -486f))) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(747f, var_0.c.c.x, 533f, 1187f))))), _wgslsmith_mod_vec2_u32(~(~vec2<u32>(4294967295u, var_0.c.a)), ~var_0.c.d));
    return !all(vec2<bool>(-var_0.a >= _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(-14208i, -14415i, u_input.b, u_input.d)), var_2.b));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>) -> f32 {
    var var_0 = select(arg_1, arg_1, arg_1);
    var var_1 = u_input.a;
    global0 = array<Struct_1, 10>();
    let var_2 = Struct_3(-1323i, _wgslsmith_div_u32(countOneBits(_wgslsmith_add_u32(4294967295u, 0u)), ~firstTrailingBit(39188u << (arg_0.d.x % 32u))), arg_0);
    let var_3 = -_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(firstTrailingBit(vec3<i32>(var_2.a, var_2.a, u_input.d)), u_input.c.xww | vec3<i32>(u_input.c.x, 6843i, var_2.a)), min(vec3<i32>(u_input.c.x, u_input.b, 0i), u_input.c.zyz >> (vec3<u32>(4294967295u, u_input.a, 1u) % vec3<u32>(32u)))), select(1886i, countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.a, u_input.c.x, u_input.d), u_input.c.xxy)), false));
    return -560f;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: f32, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = !vec4<bool>(all(vec3<bool>(any(vec3<bool>(true, false, arg_0.b)), true, true)), func_2(!(!vec3<bool>(false, true, arg_0.b)), arg_0.b), true, !(_wgslsmith_f_op_f32(func_3(global3[_wgslsmith_index_u32(arg_0.d.x, 5u)], vec4<bool>(arg_0.b, false, true, true))) <= global1[_wgslsmith_index_u32(~u_input.a, 6u)]));
    let var_1 = Struct_3(-34335i, 0u, global3[_wgslsmith_index_u32(~33773u, 5u)]);
    var var_2 = -7997i;
    let var_3 = Struct_2(23964u, Struct_1(~_wgslsmith_add_u32(abs(4294967295u), firstTrailingBit(arg_0.d.x)), firstLeadingBit(~u_input.a) < arg_0.d.x, vec4<f32>(-763f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -716f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global2.x - global1[_wgslsmith_index_u32(var_1.c.a, 6u)])))), firstLeadingBit(~min(vec2<u32>(15662u, u_input.a), var_1.c.d))));
    let var_4 = u_input.a;
    return Struct_1(1u, true, var_1.c.c, arg_0.d >> (vec2<u32>(_wgslsmith_div_u32(1u, ~1u), 3595u) % vec2<u32>(32u)));
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: i32, arg_3: Struct_2) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-955f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b.c.x))))));
    global2 = arg_3.b.c;
    var var_1 = global0[_wgslsmith_index_u32(countOneBits(max(52249u, arg_3.a)) ^ 48197u, 10u)];
    var var_2 = 91626u;
    let var_3 = Struct_1(_wgslsmith_mult_u32(_wgslsmith_sub_u32(arg_3.b.d.x, 0u | func_1(arg_3.b, var_1.c, -368f, var_1.c.xwy).d.x), var_1.d.x), true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(435f, -598f, -842f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1000f, -170f)), _wgslsmith_f_op_f32(f32(-1f) * -325f)))), (~firstLeadingBit(vec2<u32>(arg_0.c.d.x, 42463u)) ^ _wgslsmith_sub_vec2_u32(vec2<u32>(arg_3.a, arg_3.a), ~var_1.d)) & ~(~arg_0.c.d));
    return !(!(!select(select(vec4<bool>(var_1.b, arg_3.b.b, arg_0.c.b, arg_1), vec4<bool>(false, true, true, var_1.b), arg_0.c.b), !vec4<bool>(true, arg_1, var_1.b, true), select(arg_3.b.b, true, arg_1))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 10>();
    let var_0 = 292f;
    global1 = array<f32, 6>();
    global1 = array<f32, 6>();
    var var_1 = !select(func_4(Struct_3(u_input.c.x, ~73016u, func_1(global0[_wgslsmith_index_u32(13583u, 10u)], vec4<f32>(-1367f, 1535f, 1865f, 561f), var_0, global2.wyz)), !select(true, true, false), u_input.b, Struct_2(countOneBits(1983u), func_1(global0[_wgslsmith_index_u32(u_input.a, 10u)], vec4<f32>(512f, global1[_wgslsmith_index_u32(8239u, 6u)], var_0, 555f), global1[_wgslsmith_index_u32(u_input.a, 6u)], vec3<f32>(var_0, 2134f, global1[_wgslsmith_index_u32(0u, 6u)])))), func_4(Struct_3(reverseBits(u_input.b), 77471u, Struct_1(u_input.a, false, vec4<f32>(var_0, -719f, global2.x, 490f), vec2<u32>(u_input.a, 66288u))), true, -_wgslsmith_dot_vec3_i32(u_input.c.wzw, u_input.c.ywy), Struct_2(func_1(Struct_1(60808u, true, vec4<f32>(796f, -2252f, -1000f, global2.x), vec2<u32>(u_input.a, 0u)), vec4<f32>(-153f, global2.x, global2.x, 1251f), var_0, global2.zyw).d.x, func_1(global0[_wgslsmith_index_u32(4294967295u, 10u)], vec4<f32>(var_0, global2.x, global1[_wgslsmith_index_u32(4294967295u, 6u)], 657f), var_0, global2.wxz))), !(-1i >= u_input.d) && false);
    var var_2 = Struct_2(~_wgslsmith_sub_u32(~6063u, func_1(Struct_1(u_input.a, var_1.x, vec4<f32>(-454f, var_0, global2.x, var_0), vec2<u32>(u_input.a, 1u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global1[_wgslsmith_index_u32(0u, 6u)], 361f, global2.x)), global2.x, _wgslsmith_f_op_vec3_f32(select(global2.zwx, global2.zyz, vec3<bool>(true, var_1.x, var_1.x)))).a), Struct_1(reverseBits(_wgslsmith_add_u32(u_input.a, u_input.a)), var_1.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(-191f, -575f, -2132f, global2.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-684f, global2.x, 729f, global1[_wgslsmith_index_u32(10627u, 6u)]) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 118f, global2.x, -1013f)))), select(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 23418u), vec2<u32>(u_input.a, u_input.a)), vec2<u32>(15969u, u_input.a) << ((vec2<u32>(22229u, 1u) << (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u))) % vec2<u32>(32u)), !(!var_1.x))));
    var var_3 = abs(~(~select(vec4<i32>(2147483647i, 0i, 2147483647i, 48698i), vec4<i32>(u_input.b, -4627i, 23460i, u_input.c.x), all(vec4<bool>(var_1.x, var_1.x, false, var_2.b.b)))));
    var var_4 = var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_u32(var_4.d.x, ~0u), var_4.d.x, select(var_4.a, ~var_4.a, true) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(u_input.a, 1u), select(23188u, 14711u, false), ~5221u), ~(vec3<u32>(var_4.d.x, 4294967295u, 1u) << (vec3<u32>(0u, var_4.a, 0u) % vec3<u32>(32u)))) % 32u));
}

