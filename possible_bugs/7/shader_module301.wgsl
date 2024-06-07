struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: i32,
    d: vec3<u32>,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: i32,
    c: Struct_2,
    d: f32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: bool,
    c: vec4<f32>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
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

var<private> global0: bool = false;

var<private> global1: Struct_4 = Struct_4(vec2<u32>(18025u, 104670u), -18376i, Struct_2(true, vec2<f32>(426f, -1483f), Struct_1(vec4<f32>(-585f, 632f, -457f, -504f), true, -1i, vec3<u32>(4294967295u, 57350u, 1u), true), vec2<u32>(47238u, 4294967295u)), 580f);

var<private> global2: f32;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: Struct_2, arg_3: u32) -> i32 {
    let var_0 = Struct_3(-1i);
    let var_1 = var_0.a;
    let var_2 = global1.c.c.d.zx;
    global2 = arg_2.c.a.x;
    global2 = 1000f;
    return -14777i;
}

fn func_1() -> Struct_5 {
    let var_0 = global1.c.c.d.zy;
    global1 = Struct_4(~global1.a << (vec2<u32>(abs(var_0.x), ~select(global1.a.x, global1.c.c.d.x, global1.c.c.b)) % vec2<u32>(32u)), ~(1i & global1.b), global1.c, _wgslsmith_f_op_f32(step(global1.c.b.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-206f)))))));
    let var_1 = -1672f;
    let var_2 = _wgslsmith_div_u32(~0u, ~_wgslsmith_div_u32(1u, ~32501u));
    var var_3 = vec2<i32>(countOneBits(reverseBits(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 2147483647i, -2193i), vec3<i32>(u_input.c, -1i, u_input.c)))), _wgslsmith_div_i32(-(~func_2(global1.c.c.c, 1i, Struct_2(false, vec2<f32>(1497f, 424f), Struct_1(global1.c.c.a, true, global1.b, global1.c.c.d, false), vec2<u32>(var_0.x, 13515u)), 0u)), -1i));
    return Struct_5(vec4<i32>(2147483647i, -_wgslsmith_mult_i32(0i, -7149i), ~select(2147483647i, -1i, false), global1.c.c.c ^ u_input.c) >> (select(~vec4<u32>(var_2, 49903u, 64575u, var_2), vec4<u32>(18934u, ~var_2, firstTrailingBit(0u), 0u), any(select(vec2<bool>(true, true), vec2<bool>(false, false), global1.c.c.e))) % vec4<u32>(32u)), false, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1, _wgslsmith_f_op_f32(-var_1), var_1, global1.c.c.a.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(global1.c.c.a * _wgslsmith_f_op_vec4_f32(global1.c.c.a * global1.c.c.a)), vec4<f32>(var_1, -906f, _wgslsmith_f_op_f32(-global1.d), _wgslsmith_f_op_f32(-global1.c.c.a.x)), false)))), _wgslsmith_sub_u32(var_2, var_2));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_5) -> Struct_1 {
    let var_0 = select(select(!vec3<bool>(true, arg_0.d < 66678u, true), vec3<bool>(any(!vec4<bool>(arg_0.b, arg_0.b, true, false)), true, false), false), vec3<bool>(global1.c.a, global1.c.c.b, true), vec3<bool>(true, true, !func_1().b));
    global1 = Struct_4(global1.a, u_input.c, global1.c, arg_1.c.x);
    var var_1 = func_1();
    global2 = -504f;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1102f) + -108f));
    return Struct_1(arg_0.c, arg_0.b, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(global1.b, _wgslsmith_clamp_i32(0i, 2147483647i, 37198i), ~arg_0.a.x), reverseBits(arg_1.a.x), arg_0.a.x, countOneBits(arg_0.a.x)), min(vec4<i32>(arg_1.a.x | 37878i, func_1().a.x, _wgslsmith_clamp_i32(-14375i, 0i, var_1.a.x), -arg_0.a.x), vec4<i32>(i32(-1i) * -24519i, -1i, ~global1.c.c.c, arg_1.a.x))), global1.c.c.d, arg_1.b);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: i32) -> Struct_2 {
    global0 = true & global1.c.a;
    var var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-208f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -323f))), func_3(Struct_5(_wgslsmith_add_vec4_i32(u_input.a, u_input.a), arg_0.e, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.c.b.x, global1.d, arg_0.a.x, -292f), vec4<f32>(-839f, arg_0.a.x, global1.c.b.x, arg_0.a.x))), func_1().d), Struct_5(vec4<i32>(1i, arg_0.c, 0i, arg_1.c.c.c), !arg_0.b, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(2822f, arg_1.d, -513f, -482f))), arg_0.d.x)).a.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1195f, _wgslsmith_div_f32(1000f, -180f)), func_3(func_1(), Struct_5(vec4<i32>(u_input.c, 59671i, 9369i, arg_0.c), global1.c.a, vec4<f32>(369f, -463f, arg_1.c.b.x, 1761f), 81849u)).a.x, !any(vec3<bool>(global1.c.c.e, arg_1.c.a, true)))))));
    var var_1 = -46474i;
    var var_2 = func_3(Struct_5(_wgslsmith_add_vec4_i32(u_input.a, firstTrailingBit(abs(u_input.a))), true, vec4<f32>(_wgslsmith_div_f32(-1048f, 769f), _wgslsmith_f_op_f32(max(-1542f, _wgslsmith_f_op_f32(global1.c.b.x + -1141f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.c.b.x, arg_0.a.x)), global1.c.b.x), ~4572u), func_1());
    var var_3 = vec3<f32>(global1.c.c.a.x, -1220f, -1492f);
    return Struct_2(arg_1.c.c.e, var_3.zx, global1.c.c, global1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(~firstTrailingBit(global1.a) & max(_wgslsmith_div_vec2_u32(abs(vec2<u32>(26700u, 1u)), vec2<u32>(1u, global1.c.d.x) ^ vec2<u32>(1u, 25440u)), global1.a), u_input.b.x, func_4(func_3(func_1(), Struct_5(select(u_input.a, vec4<i32>(u_input.a.x, global1.b, 17899i, global1.c.c.c), vec4<bool>(global1.c.a, false, global1.c.c.e, false)), !global1.c.c.b, global1.c.c.a, ~global1.a.x)), Struct_4(max(reverseBits(global1.a), global1.c.d), (global1.b & global1.b) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(global1.a.x, 1u, 1u), global1.c.c.d) % 32u), Struct_2(true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-170f, 2011f)), func_3(Struct_5(vec4<i32>(global1.b, 1i, -2147483647i, -1i), global1.c.c.b, global1.c.c.a, 0u), Struct_5(vec4<i32>(global1.b, u_input.b.x, u_input.a.x, global1.b), true, vec4<f32>(global1.d, global1.d, 297f, global1.d), global1.a.x)), ~vec2<u32>(40056u, 4294967295u)), func_3(func_1(), Struct_5(u_input.a, false, global1.c.c.a, global1.c.c.d.x)).a.x), firstLeadingBit(u_input.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(401f, global1.c.c.a.x) + 762f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1425f, _wgslsmith_f_op_f32(f32(-1f) * -2048f))))));
    global1 = Struct_4(_wgslsmith_mult_vec2_u32(vec2<u32>(72096u, 15099u), ~firstTrailingBit(_wgslsmith_sub_vec2_u32(global1.c.c.d.zx, var_0.a))), firstTrailingBit(global1.b), Struct_2(!(_wgslsmith_f_op_f32(global1.d + 783f) < 1f), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c.c.a.x, -1188f)))))), func_4(Struct_1(vec4<f32>(-339f, global1.d, var_0.c.b.x, global1.c.c.a.x), global1.c.a, -15134i << (global1.a.x % 32u), select(global1.c.c.d, vec3<u32>(global1.c.c.d.x, 42884u, 1734u), global1.c.a), any(vec3<bool>(false, false, var_0.c.c.b))), Struct_4(vec2<u32>(0u, 26016u), ~(-2147483647i), func_4(Struct_1(vec4<f32>(global1.c.c.a.x, -832f, -412f, var_0.d), var_0.c.a, global1.b, vec3<u32>(0u, global1.c.c.d.x, 76974u), true), Struct_4(var_0.a, -12838i, Struct_2(var_0.c.a, vec2<f32>(293f, -1910f), var_0.c.c, var_0.c.d), var_0.c.c.a.x), u_input.a.x), global1.d), u_input.c).c, global1.a), _wgslsmith_f_op_f32(1580f - func_3(func_1(), Struct_5(countOneBits(vec4<i32>(633i, var_0.b, var_0.c.c.c, u_input.a.x)), true, global1.c.c.a, global1.a.x)).a.x));
    global2 = global1.d;
    global1 = Struct_4(vec2<u32>(4294967295u | firstTrailingBit(var_0.c.c.d.x), reverseBits(36697u) & _wgslsmith_div_u32(1u, _wgslsmith_mod_u32(global1.c.d.x, 1u))), 0i, func_4(func_3(func_1(), func_1()), Struct_4(var_0.a, firstTrailingBit(var_0.c.c.c), global1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) + func_3(Struct_5(vec4<i32>(global1.b, -1i, u_input.b.x, -17781i), global1.c.a, vec4<f32>(var_0.c.b.x, -156f, global1.d, 970f), global1.c.c.d.x), Struct_5(u_input.a, false, var_0.c.c.a, var_0.a.x)).a.x)), func_1().a.x), _wgslsmith_f_op_f32(abs(-1000f)));
    var var_1 = firstLeadingBit(~select(select(abs(vec4<u32>(global1.a.x, 32439u, 1u, 39021u)), vec4<u32>(var_0.c.c.d.x, 15623u, var_0.c.c.d.x, global1.c.c.d.x) ^ vec4<u32>(0u, var_0.c.c.d.x, 47845u, 5991u), vec4<bool>(true, true, true, var_0.c.a)), ~vec4<u32>(var_0.c.c.d.x, var_0.a.x, var_0.c.d.x, var_0.c.d.x), select(!vec4<bool>(var_0.c.a, global1.c.c.e, var_0.c.a, true), select(vec4<bool>(true, false, global1.c.a, global1.c.c.e), vec4<bool>(true, true, true, false), false), select(vec4<bool>(var_0.c.a, false, false, var_0.c.c.b), vec4<bool>(global1.c.a, var_0.c.a, global1.c.c.e, true), var_0.c.a))));
    let var_2 = Struct_1(func_3(Struct_5(_wgslsmith_clamp_vec4_i32(vec4<i32>(-27139i, 0i, var_0.c.c.c, 0i), select(u_input.a, vec4<i32>(global1.b, global1.b, var_0.c.c.c, var_0.b), true), u_input.a), var_0.c.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d, global1.d, -544f, 209f)), 1u), func_1()).a, var_0.c.a, 1i, abs(var_0.c.c.d), func_1().b);
    var_0 = Struct_4(~var_1.wy, -2147483647i, Struct_2(0u >= var_1.x, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -725f), 2221f), Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, 262f, var_0.d, var_0.d)))), any(select(vec3<bool>(global1.c.a, true, var_2.b), vec3<bool>(var_2.e, var_2.e, false), global1.c.c.b)), firstTrailingBit(~57645i), ~firstLeadingBit(vec3<u32>(var_2.d.x, 4294967295u, var_0.c.d.x)), global1.c.a), global1.c.c.d.zx), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d) + var_2.a.x), -1012f));
    var_1 = _wgslsmith_mult_vec4_u32(vec4<u32>(global1.a.x, 1u, select(~firstTrailingBit(4294967295u), ~50036u, !func_3(Struct_5(u_input.a, true, var_0.c.c.a, 1u), Struct_5(vec4<i32>(global1.b, -1i, global1.b, var_2.c), var_2.e, vec4<f32>(1383f, global1.d, global1.d, global1.d), var_0.c.c.d.x)).b), var_2.d.x), ~countOneBits(select(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.a.x, 63134u, var_2.d.x, 1u), vec4<u32>(15484u, 11260u, 5501u, 237u)), min(vec4<u32>(var_1.x, 1u, 23053u, var_1.x), vec4<u32>(global1.c.c.d.x, global1.a.x, global1.c.c.d.x, var_1.x)), select(vec4<bool>(var_0.c.a, var_2.e, var_2.e, false), vec4<bool>(true, false, true, true), true))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.c.a.x) * _wgslsmith_f_op_f32(ceil(var_2.a.x))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.c.b.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(2050f)) * 437f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(~var_0.c.c.c, u_input.c));
}

