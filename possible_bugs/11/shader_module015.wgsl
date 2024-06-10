struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: f32,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec2<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: vec4<bool>;

var<private> global2: Struct_5 = Struct_5(Struct_3(1u, Struct_2(-10932i, vec4<i32>(1i, 144i, i32(-2147483648), 2147483647i), Struct_1(vec2<u32>(4294967295u, 0u), 25299u, vec4<f32>(-282f, -1911f, 771f, 822f)), Struct_1(vec2<u32>(17069u, 4294967295u), 4294967295u, vec4<f32>(1000f, 592f, -1000f, 1629f)), -1i), -1079f, Struct_1(vec2<u32>(72233u, 12669u), 4294967295u, vec4<f32>(291f, 655f, -836f, -793f)), vec4<bool>(false, false, false, false)), 1u, 4294967295u, vec2<i32>(26969i, 1i));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: vec3<f32>) -> i32 {
    global2 = Struct_5(Struct_3(_wgslsmith_mod_u32(~53840u, min(global2.c, 1u)), global2.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(943f * arg_1.d.c.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2421f, arg_1.d.c.x)))), arg_1.d, select(!global2.a.e, global2.a.e, global1.x)), firstTrailingBit(u_input.d), _wgslsmith_mod_u32(_wgslsmith_mult_u32(~arg_0 & abs(3924u), arg_1.d.a.x), 4294967295u), -firstTrailingBit(-vec2<i32>(global2.a.b.e, -23523i)) << (global2.a.d.a % vec2<u32>(32u)));
    var var_0 = Struct_4(Struct_3(global2.c, global2.a.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1252f * arg_2.x), -404f)), Struct_1(countOneBits(reverseBits(global2.a.b.c.a)), arg_0 << (arg_0 % 32u), arg_1.c.c), !global2.a.e), 86639u, arg_1.d.a.x);
    var var_1 = global2.a;
    let var_2 = 4294967295u;
    let var_3 = Struct_4(Struct_3(_wgslsmith_mult_u32(firstTrailingBit(0u), var_1.a & arg_1.d.b) ^ _wgslsmith_div_u32(~var_1.d.a.x, arg_0), Struct_2(~_wgslsmith_dot_vec2_i32(global2.a.b.b.yz, global2.d), _wgslsmith_div_vec4_i32(arg_1.b, var_0.a.b.b), var_1.d, Struct_1(vec2<u32>(1u, 10332u) | var_0.a.b.d.a, max(88731u, var_1.a), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1006f, var_1.d.c.x, -1004f, var_1.b.c.c.x), vec4<f32>(arg_2.x, var_1.d.c.x, -1000f, global0.x)))), 22651i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1839f, _wgslsmith_f_op_f32(abs(-1538f)))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-773f, arg_1.c.c.x), _wgslsmith_f_op_f32(-var_1.c)))), var_1.d, !vec4<bool>(true, !var_1.e.x, false, true)), ~var_2, ~(_wgslsmith_mult_u32(~4294967295u, ~5009u) & _wgslsmith_sub_u32(select(18874u, 1u, global1.x), ~1u)));
    return -2147483647i;
}

fn func_2() -> Struct_2 {
    var var_0 = global1.ww;
    global2 = Struct_5(Struct_3(u_input.d, Struct_2(_wgslsmith_sub_i32(2147483647i, func_3(u_input.d, global2.a.b, vec3<f32>(672f, global0.x, -209f))), global2.a.b.b, Struct_1(vec2<u32>(4294967295u, 68809u) | u_input.a.zy, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, global2.a.b.c.a.x, global2.c, 100715u), vec4<u32>(global2.b, global2.a.b.c.b, u_input.d, global2.b)), global2.a.b.c.c), global2.a.b.c, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -53433i, -1i, u_input.c), u_input.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -737f))), Struct_1(u_input.a.xx, 64114u, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.d.c.x, -1908f, -229f, global0.x) - vec4<f32>(global2.a.b.d.c.x, 893f, global2.a.d.c.x, 575f)), global2.a.b.d.c, false))), global2.a.e), ~firstLeadingBit(1u), global2.c >> (13979u % 32u), abs(u_input.e.zy & _wgslsmith_mult_vec2_i32(u_input.e.ww, reverseBits(vec2<i32>(u_input.c, u_input.e.x)))));
    let var_1 = Struct_5(Struct_3(global2.c, Struct_2(-global2.d.x, _wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(31118i, global2.a.b.e, global2.d.x, u_input.c)), abs(vec4<i32>(-2147483647i, 2147483647i, global2.a.b.e, 32397i)), _wgslsmith_mod_vec4_i32(u_input.e, vec4<i32>(global2.d.x, 18257i, u_input.e.x, 2147483647i))), global2.a.b.c, Struct_1(vec2<u32>(global2.b, u_input.a.x), ~62398u, _wgslsmith_f_op_vec4_f32(select(global2.a.b.c.c, global2.a.b.c.c, false))), 1i), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(919f)) - _wgslsmith_f_op_f32(-global0.x)))), Struct_1(vec2<u32>(~99935u, 54093u), abs(0u), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.a.c, 427f, global0.x, global0.x), global2.a.d.c, vec4<bool>(false, true, true, global2.a.e.x)))), !global2.a.e), 4294967295u, _wgslsmith_dot_vec3_u32(min(_wgslsmith_div_vec3_u32(u_input.a & vec3<u32>(34392u, global2.c, 1u), reverseBits(u_input.a)), select(vec3<u32>(global2.a.a, 34997u, global2.a.d.b), _wgslsmith_mult_vec3_u32(u_input.a, vec3<u32>(u_input.d, 44851u, 65689u)), global1.yzy)), ~(~u_input.a << (vec3<u32>(32432u, global2.b, 106067u) % vec3<u32>(32u)))), ~(~_wgslsmith_sub_vec2_i32(-u_input.e.xx, global2.a.b.b.zy)));
    let var_2 = vec3<u32>(var_1.c, reverseBits(1u), reverseBits(_wgslsmith_clamp_u32(0u, var_1.b >> (u_input.d % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.c, var_1.c, var_1.c, var_1.a.a), vec4<u32>(6835u, 63249u, 7160u, 0u))))) << (vec3<u32>(79943u | _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(0u, u_input.a.x, var_1.b, global2.b)), ~vec4<u32>(var_1.c, var_1.a.a, 4294967295u, 0u)), _wgslsmith_sub_u32(global2.a.a, global2.b), 0u | var_1.c) % vec3<u32>(32u));
    var var_3 = global2.a;
    return var_1.a.b;
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_3) -> vec3<bool> {
    let var_0 = global2.a;
    var var_1 = ~1u;
    let var_2 = Struct_1(~(~_wgslsmith_div_vec2_u32(vec2<u32>(1u, 4294967295u) | u_input.a.yz, abs(vec2<u32>(arg_3.a, 106356u)))), arg_1.c.a.x, _wgslsmith_f_op_vec4_f32(select(var_0.b.d.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(global2.a.d.c.x, arg_2.d.c.x, arg_3.e.x)), _wgslsmith_f_op_f32(-var_0.d.c.x), _wgslsmith_f_op_f32(ceil(global0.x)), arg_1.c.c.x)), vec4<bool>(true, var_0.e.x, true | (arg_0 >= global2.c), (global1.x && false) || !var_0.e.x))));
    var var_3 = ~vec4<i32>(func_2().b.x, -1i, i32(-1i) * -1i, -21513i);
    var var_4 = !select(var_0.e, select(vec4<bool>(false, false, var_0.e.x, false), vec4<bool>(false, true, arg_3.e.x, global1.x | true), global2.a.e.x), !(global2.a.e.x && global1.x) | global1.x);
    return select(var_0.e.yzx, !vec3<bool>(true, all(vec2<bool>(true, true)) || arg_3.e.x, var_0.e.x && true), !select(select(!vec3<bool>(arg_3.e.x, arg_3.e.x, var_0.e.x), vec3<bool>(var_4.x, var_0.e.x, false), select(arg_3.e.xxz, vec3<bool>(var_0.e.x, global2.a.e.x, global2.a.e.x), global2.a.e.x)), vec3<bool>(true, true, true), u_input.d >= ~var_2.a.x));
}

fn func_1(arg_0: vec4<bool>, arg_1: i32, arg_2: f32, arg_3: i32) -> i32 {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(global0.x, -974f)), global2.a.c) - vec2<f32>(global0.x, _wgslsmith_f_op_f32(abs(global0.x)))), global2.a.d.c.yw)) + _wgslsmith_f_op_vec2_f32(global2.a.d.c.zy + vec2<f32>(global0.x, 1152f)));
    let var_0 = !select(global1.xwz, select(global1.wyy, vec3<bool>(global1.x, !global2.a.e.x, global1.x), func_4(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global2.c), vec2<u32>(5812u, u_input.d)), func_2(), Struct_2(global2.d.x, global2.a.b.b, Struct_1(vec2<u32>(1u, 4294967295u), u_input.a.x, vec4<f32>(arg_2, global2.a.b.c.c.x, global0.x, 1472f)), Struct_1(vec2<u32>(u_input.d, 0u), u_input.a.x, vec4<f32>(-1250f, global2.a.d.c.x, -1494f, arg_2)), global2.a.b.e), global2.a)), all(global2.a.e));
    let var_1 = _wgslsmith_mod_i32(-_wgslsmith_dot_vec3_i32(u_input.e.yyz & vec3<i32>(-8898i, -1i, u_input.b), _wgslsmith_sub_vec3_i32(~vec3<i32>(arg_1, arg_3, global2.d.x), reverseBits(vec3<i32>(8159i, arg_1, -11135i)))), _wgslsmith_dot_vec3_i32(max(_wgslsmith_mod_vec3_i32(vec3<i32>(2892i, -2147483647i, global2.d.x), vec3<i32>(20191i, global2.a.b.a, arg_1)) << (min(u_input.a, u_input.a) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_sub_i32(arg_3, -2147483647i), _wgslsmith_sub_i32(54437i, global2.a.b.a), -arg_1)), vec3<i32>(0i, global2.a.b.e, _wgslsmith_mult_i32(arg_1, -1i << (0u % 32u)))));
    global1 = !(!vec4<bool>(true, !global2.a.e.x, true, all(vec2<bool>(true, true))));
    var var_2 = u_input.a.x == u_input.d;
    return func_3(~(~abs(1u)), Struct_2(8878i, u_input.e, func_2().d, global2.a.b.d, arg_1), vec3<f32>(1086f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-770f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-667f, global0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1010f)), global1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec4<bool>(global2.a.e.x, false, false, !(!global2.a.e.x));
    global2 = Struct_5(Struct_3(((u_input.d | 69158u) | 0u) ^ u_input.d, Struct_2(~(~global2.d.x), ~(~vec4<i32>(global2.d.x, u_input.e.x, -2147483647i, global2.d.x)), Struct_1(~u_input.a.yx, ~u_input.a.x, vec4<f32>(global0.x, -739f, global2.a.d.c.x, -230f)), Struct_1(~vec2<u32>(u_input.a.x, 21784u), ~u_input.d, vec4<f32>(-1000f, 230f, 153f, -971f)), _wgslsmith_dot_vec2_i32(vec2<i32>(30050i, 0i) & u_input.e.xx, vec2<i32>(29319i, u_input.c) ^ vec2<i32>(global2.d.x, -1i))), global0.x, global2.a.d, select(vec4<bool>(var_0.x, var_0.x, all(vec4<bool>(true, true, global1.x, true)), false), global2.a.e, true)), u_input.d, reverseBits(~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global2.c, 29778u), global2.a.d.a), u_input.a.x)), vec2<i32>(countOneBits(u_input.c), firstTrailingBit(abs(global2.a.b.a) ^ firstLeadingBit(0i))));
    let var_1 = _wgslsmith_sub_i32(abs(func_1(select(global2.a.e, vec4<bool>(global2.a.e.x, global1.x, false, var_0.x), global2.a.e), u_input.e.x, global0.x, _wgslsmith_add_i32(u_input.b, 2147483647i))), 14187i) ^ (_wgslsmith_div_i32(1i ^ ~u_input.c, ~1i) | _wgslsmith_dot_vec2_i32(max(~vec2<i32>(2147483647i, u_input.b), func_2().b.zy), _wgslsmith_div_vec2_i32(~vec2<i32>(u_input.b, global2.d.x), min(u_input.e.zz, vec2<i32>(u_input.c, global2.d.x)))));
    let var_2 = max(abs(~vec4<u32>(u_input.a.x, global2.a.b.d.a.x, global2.a.a, 106922u)), _wgslsmith_mod_vec4_u32(vec4<u32>(10553u, func_2().d.b, _wgslsmith_clamp_u32(1u, global2.a.d.a.x, 4294967295u), global2.c), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(33684u, 1u, 4294967295u, global2.a.b.c.a.x), vec4<u32>(69664u, 1u, 43953u, u_input.a.x)), vec4<u32>(u_input.d, 3283u, 1u, 1u) ^ vec4<u32>(16439u, 1u, 0u, u_input.d)))) >> (firstTrailingBit(select(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a.x, u_input.d, u_input.d, 1u), vec4<u32>(u_input.d, 4294967295u, u_input.a.x, global2.a.a)), vec4<u32>(~u_input.a.x, 0u, abs(4294967295u), u_input.a.x), select(vec4<bool>(var_0.x, var_0.x, true, global1.x), global2.a.e, vec4<bool>(global2.a.e.x, global1.x, true, true)))) % vec4<u32>(32u));
    var var_3 = max(firstLeadingBit(_wgslsmith_div_i32(global2.d.x, i32(-1i) * -global2.a.b.a)), _wgslsmith_dot_vec4_i32(-_wgslsmith_add_vec4_i32(-u_input.e, global2.a.b.b ^ u_input.e), u_input.e << (vec4<u32>(~global2.c, 41396u, min(var_2.x, 1u), ~u_input.d) % vec4<u32>(32u))));
    let var_4 = Struct_3(4294967295u, Struct_2(16169i, max(-(~u_input.e), _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_1, -45157i, u_input.c, 43912i), global2.a.b.b), _wgslsmith_sub_vec4_i32(u_input.e, vec4<i32>(2147483647i, global2.a.b.b.x, -16403i, -15870i)))), func_2().c, Struct_1(~countOneBits(vec2<u32>(0u, 16399u)), 0u, vec4<f32>(150f, _wgslsmith_f_op_f32(-1040f + global0.x), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(global0.x + -852f))), _wgslsmith_mod_i32(~0i, ~1i)), _wgslsmith_f_op_f32(1158f * global0.x), global2.a.d, select(!global2.a.e, !(!vec4<bool>(true, var_0.x, global1.x, true)), select(global2.a.e, global2.a.e, false)));
    var var_5 = Struct_4(global2.a, _wgslsmith_dot_vec2_u32(var_4.b.d.a, vec2<u32>(firstLeadingBit(52478u), u_input.a.x)), _wgslsmith_sub_u32((0u << (func_2().c.a.x % 32u)) >> (0u % 32u), ~var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(-var_5.a.b.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1250f, var_5.a.d.c.x, _wgslsmith_f_op_f32(f32(-1f) * -846f))), var_5.a.d.c.xyy), ~(~vec2<u32>(var_4.a, ~4294967295u)), vec4<f32>(_wgslsmith_f_op_f32(-790f + -1000f), _wgslsmith_f_op_f32(step(123f, -1449f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -495f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1204f + var_5.a.c))), _wgslsmith_f_op_f32(204f + var_4.b.d.c.x)));
}

