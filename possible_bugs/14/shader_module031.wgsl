struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: vec3<i32>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: i32,
    d: vec2<i32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec3<f32>,
    d: vec4<i32>,
    e: i32,
}

struct Struct_5 {
    a: u32,
    b: bool,
    c: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: f32,
    d: vec4<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec3<i32>) -> i32 {
    let var_0 = ~_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(~(~u_input.d), ~vec2<i32>(arg_0.x, -35053i)), -(vec2<i32>(-1i) * -vec2<i32>(1i, u_input.b)));
    var var_1 = Struct_3(firstLeadingBit(vec3<i32>(~firstTrailingBit(u_input.b), -9345i, arg_0.x)), Struct_2(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), firstTrailingBit(vec4<u32>(0u, u_input.c.x, u_input.c.x, 0u)), ~vec4<u32>(u_input.c.x, 8410u, u_input.c.x, u_input.c.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.a.x * global0.a.x), _wgslsmith_div_f32(-1142f, global0.a.x))), ~(_wgslsmith_div_vec3_i32(arg_0, vec3<i32>(var_0.x, 1i, 318i)) | vec3<i32>(u_input.a, var_0.x, var_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(244f, _wgslsmith_f_op_f32(f32(-1f) * -177f), _wgslsmith_f_op_f32(max(960f, 450f))) - global0.a.www)), i32(-1i) * -arg_0.x, countOneBits(vec2<i32>(-1950i, -26170i)));
    var_1 = Struct_3(arg_0, Struct_2(var_1.b.a, var_1.b.d.x, -countOneBits(~vec3<i32>(arg_0.x, u_input.a, 0i)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(floor(1237f)), _wgslsmith_div_f32(var_1.b.b, -1308f), 1103f)))), _wgslsmith_sub_i32(-78441i & ~_wgslsmith_dot_vec2_i32(arg_0.yz, vec2<i32>(1i, -26226i)), var_1.b.c.x), vec2<i32>(arg_0.x, ~abs(-8424i)));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1887f, var_1.b.b, -283f))))))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.b.d + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.b, var_1.b.b, global0.a.x)))))));
    var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_1.b.d, _wgslsmith_f_op_vec3_f32(global0.a.xww + vec3<f32>(1137f, 1053f, -314f)))), global0.a.xyz));
    return -2617i;
}

fn func_2() -> f32 {
    var var_0 = Struct_3(vec3<i32>(-2147483647i, max(~func_3(vec3<i32>(0i, -23464i, u_input.a)), u_input.a), _wgslsmith_mult_i32(u_input.b, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.d.x, 531i, 2147483647i), vec3<i32>(12559i, -1i, 3739i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, u_input.d.x), vec3<i32>(1i, u_input.b, 63802i), vec3<i32>(0i, u_input.d.x, u_input.b))))), Struct_2(~min(vec4<u32>(56081u, u_input.c.x, 45647u, u_input.c.x) << (vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 13390u) % vec4<u32>(32u)), countOneBits(vec4<u32>(1u, 23686u, 1u, u_input.c.x))), -1278f, ~_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, -1i, u_input.b), vec3<i32>(-24280i, -31786i, -2147483647i)), abs(vec3<i32>(70041i, u_input.a, u_input.b))), _wgslsmith_f_op_vec3_f32(step(global0.a.yyw, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.a.wxw))))), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(u_input.a, ~u_input.a | u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(85063i, -1i, -2147483647i) >> (vec3<u32>(1714u, u_input.c.x, 0u) % vec3<u32>(32u)), ~vec3<i32>(-8312i, -20113i, u_input.b))), _wgslsmith_mod_i32(abs(u_input.d.x), u_input.a), 1i), vec2<i32>(u_input.d.x, u_input.d.x));
    let var_1 = any(vec4<bool>(true, any(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true))), any(vec4<bool>(true, true, all(vec2<bool>(true, true)), any(vec3<bool>(true, true, false)))), (min(u_input.a, 1i) > 1i) & (var_0.b.a.x == u_input.c.x)));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1594f)), _wgslsmith_f_op_f32(-var_0.b.d.x)))) * 372f);
}

fn func_1(arg_0: f32, arg_1: vec2<u32>) -> vec3<bool> {
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, _wgslsmith_f_op_f32(global0.a.x * _wgslsmith_div_f32(arg_0, global0.a.x)), arg_0, 1062f) - vec4<f32>(_wgslsmith_f_op_f32(arg_0 * -332f), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(trunc(-133f)), _wgslsmith_f_op_f32(arg_0 * arg_0))));
    return !(!vec3<bool>(false, any(vec4<bool>(false, true, false, true)), _wgslsmith_f_op_f32(arg_0 + -1316f) <= 1f));
}

fn func_4(arg_0: vec3<bool>) -> i32 {
    global0 = Struct_1(global0.a);
    var var_0 = ~vec3<i32>(u_input.d.x, -((u_input.b << (u_input.c.x % 32u)) & -46377i), u_input.d.x);
    global0 = Struct_1(global0.a);
    var_0 = -countOneBits(vec3<i32>(-65228i, ~9187i, select(u_input.b, u_input.b, arg_0.x)) | vec3<i32>(u_input.d.x, 1i, u_input.a));
    var var_1 = Struct_3(_wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(max(-1i, 2147483647i), u_input.d.x, 1i)), vec3<i32>(~(-u_input.d.x), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-17135i, u_input.d.x), vec2<i32>(1082i, -2147483647i)), var_0.x), 0i)), Struct_2(_wgslsmith_add_vec4_u32(abs(select(vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, u_input.c.x), vec4<u32>(u_input.c.x, 4294967295u, 24068u, u_input.c.x), true)), abs(select(vec4<u32>(45720u, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(0u, 104796u, u_input.c.x, u_input.c.x), arg_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -894f) + -475f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2214f + global0.a.x))), vec3<i32>(-1i) * -_wgslsmith_mod_vec3_i32(vec3<i32>(71855i, u_input.d.x, 0i), vec3<i32>(var_0.x, -60666i, -10183i)), vec3<f32>(_wgslsmith_f_op_f32(sign(1128f)), 1156f, -102f)), ~_wgslsmith_clamp_i32(~var_0.x, ~countOneBits(46581i), var_0.x), var_0.zx);
    return _wgslsmith_mult_i32(u_input.b, ~_wgslsmith_dot_vec3_i32(max(~var_1.b.c, var_1.b.c), ~var_1.a << (var_1.b.a.xzx % vec3<u32>(32u))));
}

fn func_5(arg_0: vec2<i32>) -> Struct_1 {
    var var_0 = Struct_4(~reverseBits(max(u_input.d, -vec2<i32>(arg_0.x, 9525i))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(207f, global0.a.x, -1792f, global0.a.x)))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(global0.a.www)) + _wgslsmith_div_vec3_f32(global0.a.xwx, vec3<f32>(global0.a.x, global0.a.x, 2010f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(280f, global0.a.x, 1883f) + global0.a.yxz)))), vec4<i32>(firstTrailingBit(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, -21592i), u_input.d), u_input.b)), 62331i, select(_wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.d.x, arg_0.x), 17995i), ~1i, true), -2147483647i), -4887i);
    var var_1 = true;
    let var_2 = Struct_4(~_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(~vec2<i32>(u_input.b, 0i), vec2<i32>(-50788i, u_input.a)), ~arg_0), Struct_1(global0.a), global0.a.xyz, var_0.d, firstLeadingBit(var_0.d.x));
    var_1 = u_input.c.x != 54515u;
    var var_3 = firstLeadingBit(vec4<u32>(31644u, ~u_input.c.x, ~u_input.c.x, ~(~(~67893u))));
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(vec2<i32>(-u_input.d.x, func_4(select(vec3<bool>(false, false, true), func_1(global0.a.x, u_input.c.xy), false))));
    let var_0 = -vec4<i32>(1i, -3701i, firstTrailingBit(-u_input.a), 41306i << (firstTrailingBit(abs(u_input.c.x)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(global0.a.x + global0.a.x), var_0.yyw, global0.a.x, vec4<f32>(_wgslsmith_f_op_f32(abs(global0.a.x)), _wgslsmith_f_op_f32(495f + _wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_f_op_f32(global0.a.x + _wgslsmith_f_op_f32(f32(-1f) * -373f)), _wgslsmith_f_op_f32(f32(-1f) * -875f)), (vec4<u32>(~u_input.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(5129u, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(1u, 15510u, u_input.c.x, 4294967295u)), u_input.c.x << (u_input.c.x % 32u), ~1232u) >> (_wgslsmith_sub_vec4_u32(abs(vec4<u32>(35675u, u_input.c.x, u_input.c.x, u_input.c.x)), ~vec4<u32>(4294967295u, u_input.c.x, 0u, u_input.c.x)) % vec4<u32>(32u))) >> (vec4<u32>(0u, u_input.c.x, u_input.c.x, u_input.c.x) % vec4<u32>(32u)));
}

