struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_2,
    d: vec4<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: vec4<f32>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec2<u32> {
    var var_0 = 2147483647i;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -793f) + _wgslsmith_f_op_f32(f32(-1f) * -744f))) + 854f));
    let var_2 = _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x << (u_input.a.x % 32u), u_input.a.x, ~u_input.a.x), ~vec3<u32>(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 45582u, 15023u, 81185u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u)), u_input.a.x)), abs(vec3<u32>(13491u | _wgslsmith_clamp_u32(u_input.a.x, 50396u, u_input.a.x), u_input.a.x, 2747u)));
    var var_3 = -(~(~(~(~vec3<i32>(-2147483647i, u_input.b.x, u_input.b.x)))));
    var_3 = select(_wgslsmith_div_vec3_i32(-vec3<i32>(~var_3.x, 2147483647i, _wgslsmith_mod_i32(-1i, 38071i)), ~vec3<i32>(12104i, _wgslsmith_clamp_i32(var_3.x, var_3.x, var_3.x), abs(var_3.x))), -min(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 0i, var_3.x), vec3<i32>(var_3.x, u_input.b.x, 589i), vec3<i32>(-10358i, u_input.b.x, 16279i)), _wgslsmith_div_vec3_i32(vec3<i32>(59819i, 1i, u_input.b.x), vec3<i32>(var_3.x, u_input.b.x, var_3.x)) ^ reverseBits(vec3<i32>(var_3.x, -1i, -62583i))), !(!(!(!vec3<bool>(false, global0.x, true)))));
    return firstTrailingBit(firstLeadingBit(abs(vec2<u32>(89867u, var_2 ^ var_2))));
}

fn func_2(arg_0: u32) -> i32 {
    var var_0 = _wgslsmith_mod_vec2_u32(~vec2<u32>(32128u, 8648u), select(u_input.a.zy, func_3(), !select(vec2<bool>(global0.x, global0.x), vec2<bool>(true, true), false))) >> (~(~(~u_input.a.xx)) % vec2<u32>(32u));
    let var_1 = vec3<i32>(-7198i, _wgslsmith_add_i32(-countOneBits(26114i), 72267i), u_input.b.x) & max(vec3<i32>(72209i, max(31625i << (u_input.a.x % 32u), u_input.b.x ^ 12816i), max(u_input.b.x & u_input.b.x, -1i)), vec3<i32>(_wgslsmith_div_i32(u_input.b.x, u_input.b.x), 1i, ~64847i));
    let var_2 = Struct_3(Struct_1(2781f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.x, 862f, global0.x)) + 726f), -1475f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -700f), _wgslsmith_f_op_f32(-399f + global1.x), global1.x, _wgslsmith_f_op_f32(ceil(-543f))))))), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -700f))), select(vec2<bool>(true, global0.x), select(!vec2<bool>(global0.x, true), vec2<bool>(true, true), global0.x & true), select(select(vec2<bool>(global0.x, global0.x), vec2<bool>(true, false), global0.x), select(vec2<bool>(global0.x, true), vec2<bool>(false, global0.x), vec2<bool>(true, false)), vec2<bool>(global0.x, true))), Struct_1(-598f), Struct_1(global1.x)), vec4<u32>(var_0.x, 0u, ~u_input.a.x, 85202u), Struct_1(_wgslsmith_f_op_f32(ceil(-350f))));
    global0 = var_2.c.b;
    let var_3 = var_2.c;
    return var_1.x;
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: bool, arg_3: Struct_3) -> i32 {
    var var_0 = Struct_3(Struct_1(arg_1.c.d.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_3.b) - arg_1.b), Struct_2(arg_1.c.d, arg_3.c.b, arg_3.a, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -2469f))), vec4<u32>(_wgslsmith_sub_u32(countOneBits(_wgslsmith_add_u32(4294967295u, arg_3.d.x)), ~_wgslsmith_dot_vec3_u32(arg_1.d.ywx, vec3<u32>(u_input.a.x, u_input.a.x, 50112u))), ~(_wgslsmith_sub_u32(u_input.a.x, 1u) | u_input.a.x), arg_3.d.x, reverseBits(~(16794u >> (arg_1.d.x % 32u)))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -238f)));
    global0 = vec2<bool>(false, all(vec2<bool>(true, false)));
    var var_1 = -30116i;
    global0 = vec2<bool>(~_wgslsmith_add_u32(arg_1.d.x, var_0.d.x) >= (u_input.a.x & ~var_0.d.x), true);
    let var_2 = arg_3.c.b.x;
    return reverseBits(1i);
}

fn func_1(arg_0: u32) -> vec2<bool> {
    var var_0 = func_4(func_2(~(~(~0u))), Struct_3(Struct_1(-960f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(795f, -1729f, 669f, 1186f) * vec4<f32>(global1.x, global1.x, global1.x, -1319f)))), Struct_2(Struct_1(_wgslsmith_f_op_f32(785f + -488f)), !select(vec2<bool>(false, true), vec2<bool>(global0.x, true), vec2<bool>(global0.x, global0.x)), Struct_1(_wgslsmith_div_f32(global1.x, global1.x)), Struct_1(-655f)), firstTrailingBit(~(~vec4<u32>(1u, arg_0, u_input.a.x, 0u))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1902f - global1.x)))), _wgslsmith_sub_i32(u_input.b.x, u_input.b.x) <= min(u_input.b.x, -1i), Struct_3(Struct_1(global1.x), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-415f - global1.x))), -554f, 161f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -352f))), Struct_2(Struct_1(global1.x), !select(vec2<bool>(true, global0.x), vec2<bool>(global0.x, global0.x), false), Struct_1(global1.x), Struct_1(1f)), select(max(_wgslsmith_mult_vec4_u32(vec4<u32>(31768u, u_input.a.x, 6462u, 4294967295u), vec4<u32>(u_input.a.x, arg_0, 37344u, u_input.a.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 0u, arg_0, u_input.a.x))), countOneBits(vec4<u32>(u_input.a.x, 4439u, 15363u, 5527u)) >> (~vec4<u32>(0u, u_input.a.x, 38020u, 6789u) % vec4<u32>(32u)), vec4<bool>(global0.x, true, global0.x, global1.x != global1.x)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -548f)))));
    var_0 = _wgslsmith_add_i32(u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(func_2(0u), select(~u_input.b.x, countOneBits(u_input.b.x), any(vec4<bool>(false, global0.x, global0.x, true))), _wgslsmith_mult_i32(80910i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.b.x), vec2<i32>(u_input.b.x, -10999i))), _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.b.x, -57507i, u_input.b.x), firstTrailingBit(vec3<i32>(u_input.b.x, u_input.b.x, 1i)))), -(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, -1i, 6384i), vec4<i32>(0i, u_input.b.x, 42313i, 4574i), vec4<i32>(u_input.b.x, -11065i, u_input.b.x, u_input.b.x)) ^ max(vec4<i32>(u_input.b.x, 1i, -1i, -2147483647i), vec4<i32>(-36142i, -1i, -1i, u_input.b.x)))));
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-604f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.x))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(482f, _wgslsmith_div_f32(1145f, -2002f), global1.x, _wgslsmith_f_op_f32(select(global1.x, global1.x, false))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.x, global1.x, global1.x, 1901f))), vec4<f32>(1328f, 350f, global1.x, -931f))))), Struct_2(Struct_1(global1.x), select(vec2<bool>(any(vec3<bool>(global0.x, true, false)), global0.x != global0.x), vec2<bool>(all(vec3<bool>(false, global0.x, false)), all(vec4<bool>(true, true, global0.x, global0.x))), true), Struct_1(_wgslsmith_f_op_f32(-global1.x)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-362f + -1710f)))), ~abs(firstTrailingBit(vec4<u32>(u_input.a.x, arg_0, arg_0, 35510u))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))));
    let var_2 = ~_wgslsmith_mult_vec3_i32(-(-vec3<i32>(21264i, u_input.b.x, u_input.b.x) << (abs(var_1.d.yzy) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(select(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<i32>(u_input.b.x, -1i, 1i), vec3<bool>(true, true, global0.x)), vec3<i32>(u_input.b.x, 2147483647i, u_input.b.x) << (vec3<u32>(var_1.d.x, var_1.d.x, u_input.a.x) % vec3<u32>(32u))), _wgslsmith_add_vec3_i32(vec3<i32>(16662i, 6222i, 95521i), vec3<i32>(-23544i, 27114i, u_input.b.x)), reverseBits(vec3<i32>(-2147483647i, 11789i, u_input.b.x))));
    var var_3 = select(!select(!(!vec4<bool>(global0.x, var_1.c.b.x, global0.x, true)), vec4<bool>(false, any(vec4<bool>(false, var_1.c.b.x, false, false)), var_1.d.x < var_1.d.x, false), var_1.c.b.x), !select(vec4<bool>(!var_1.c.b.x, any(vec2<bool>(var_1.c.b.x, false)), true, true), vec4<bool>(var_1.c.b.x, select(var_1.c.b.x, false, var_1.c.b.x), true, all(vec3<bool>(false, false, true))), !select(vec4<bool>(false, false, true, false), vec4<bool>(global0.x, var_1.c.b.x, global0.x, false), global0.x)), select(!select(!vec4<bool>(false, global0.x, global0.x, false), vec4<bool>(var_1.c.b.x, var_1.c.b.x, global0.x, false), vec4<bool>(var_1.c.b.x, true, var_1.c.b.x, global0.x)), select(select(!vec4<bool>(global0.x, true, global0.x, false), !vec4<bool>(true, var_1.c.b.x, true, global0.x), vec4<bool>(true, true, true, true)), select(!vec4<bool>(var_1.c.b.x, false, true, false), vec4<bool>(true, true, false, true), true), vec4<bool>(all(vec3<bool>(true, var_1.c.b.x, global0.x)), !var_1.c.b.x, var_1.c.b.x != global0.x, var_1.c.b.x)), global0.x));
    return !select(var_3.xw, !vec2<bool>(var_3.x, !global0.x), false);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(select(vec2<bool>(false, global1.x != _wgslsmith_f_op_f32(-global1.x)), select(select(select(vec2<bool>(true, global0.x), vec2<bool>(global0.x, global0.x), true), func_1(u_input.a.x), !vec2<bool>(global0.x, global0.x)), func_1(_wgslsmith_div_u32(4294967295u, u_input.a.x)), !vec2<bool>(global0.x, global0.x)), !func_1(66671u).x), !(!select(select(vec2<bool>(global0.x, false), vec2<bool>(true, global0.x), vec2<bool>(false, false)), select(vec2<bool>(false, global0.x), vec2<bool>(global0.x, global0.x), vec2<bool>(true, global0.x)), !vec2<bool>(global0.x, global0.x))), vec2<bool>(true, global0.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -117f), global1.x), _wgslsmith_f_op_f32(abs(global1.x)), _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(u_input.a.x, 3892u, 0u, u_input.a.x)), vec4<u32>(~55913u, abs(24620u >> (u_input.a.x % 32u)), ~1u, u_input.a.x), vec4<u32>(u_input.a.x, _wgslsmith_div_u32(max(u_input.a.x, 17115u), u_input.a.x), ~1u, u_input.a.x)));
}

