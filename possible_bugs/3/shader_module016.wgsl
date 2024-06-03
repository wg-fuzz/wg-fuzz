struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: f32,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(1i, -1i), vec2<bool>(false, false), -201f, 776f, false);

var<private> global1: Struct_1 = Struct_1(vec2<i32>(20780i, 0i), vec2<bool>(false, true), -1349f, 1000f, false);

var<private> global2: Struct_3;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> i32 {
    let var_0 = 4294967295u;
    global1 = Struct_1(-max(global1.a, global1.a), global0.b, -1266f, global1.c, global0.e && arg_0.a);
    global2 = arg_0;
    global1 = Struct_1(select(vec2<i32>(_wgslsmith_mod_i32(global2.b.a, reverseBits(global1.a.x)), 1i), vec2<i32>(global1.a.x, -2147483647i << ((var_0 | 4294967295u) % 32u)), global1.b.x), select(global0.b, select(!(!global0.b), select(!global0.b, global1.b, !global0.b), global0.b), select(select(!vec2<bool>(global2.a, true), vec2<bool>(true, false), select(false, false, global0.e)), global0.b, true)), global1.d, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.d, -201f)), arg_0.a);
    let var_1 = global0.a;
    return 14635i;
}

fn func_2() -> Struct_1 {
    global0 = Struct_1(vec2<i32>(-global1.a.x >> (~(~19967u) % 32u), func_3(Struct_3(global2.a, global2.b), Struct_2(-1374i)) & 27670i), !global1.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.d), 702f, true)), -393f) - global0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1390f - global0.d))))), -1i <= global1.a.x);
    global2 = Struct_3(global0.a.x == (i32(-1i) * -_wgslsmith_clamp_i32(25496i, global2.b.a, global2.b.a)), global2.b);
    var var_0 = -1544f;
    let var_1 = _wgslsmith_dot_vec4_i32(-(~(~(-vec4<i32>(40975i, 1i, global2.b.a, 0i)))), _wgslsmith_add_vec4_i32(-vec4<i32>(2147483647i, global2.b.a, 2147483647i, global2.b.a) | abs(vec4<i32>(global2.b.a, 46529i, global2.b.a, global0.a.x)), (vec4<i32>(global2.b.a, -1i, global0.a.x, 1i) << (vec4<u32>(1u, 20938u, 45462u, u_input.a) % vec4<u32>(32u))) >> (~vec4<u32>(u_input.a, u_input.a, 44857u, u_input.a) % vec4<u32>(32u))) >> (~(~_wgslsmith_mult_vec4_u32(vec4<u32>(29954u, 24928u, 15692u, 4294967295u), vec4<u32>(u_input.a, 1u, u_input.a, 0u))) % vec4<u32>(32u)));
    let var_2 = Struct_3(global2.b.a != ~(-2147483647i), Struct_2(0i));
    return Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(global1.a.x, 21327i), global0.a, _wgslsmith_mod_vec2_i32(global1.a >> (vec2<u32>(3510u, 29653u) % vec2<u32>(32u)), ~vec2<i32>(global2.b.a, var_1))) & (vec2<i32>(abs(0i), var_1) & firstLeadingBit(reverseBits(vec2<i32>(0i, global2.b.a)))), !select(vec2<bool>(var_2.a, any(global1.b)), vec2<bool>(false, global1.d >= 1000f), global0.b), 156f, _wgslsmith_div_f32(1225f, -550f), _wgslsmith_sub_u32(~min(4294967295u, 0u), _wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.a, 42816u), vec2<u32>(u_input.a, 13882u), global0.b), ~vec2<u32>(42314u, 4294967295u))) != u_input.a);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: f32, arg_3: bool) -> Struct_1 {
    global0 = arg_1;
    let var_0 = vec4<i32>(14481i, global2.b.a, abs(_wgslsmith_mult_i32(-688i, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(arg_1.a.x, arg_1.a.x, -2147483647i, global1.a.x), vec4<i32>(arg_1.a.x, -1i, global2.b.a, 40783i)), vec4<i32>(global1.a.x, 2147483647i, global1.a.x, 38192i)))), abs(-8315i));
    return Struct_1(~_wgslsmith_sub_vec2_i32(vec2<i32>(global1.a.x, arg_1.a.x), var_0.xw >> (vec2<u32>(344u, u_input.a) % vec2<u32>(32u))) >> (~vec2<u32>(arg_0 ^ arg_0, ~u_input.a) % vec2<u32>(32u)), arg_1.b, 634f, 200f, all(vec3<bool>(any(select(vec3<bool>(true, arg_3, global0.e), vec3<bool>(arg_1.e, global1.e, global2.a), vec3<bool>(global2.a, global2.a, global2.a))), arg_3, !global1.e)));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec4<u32>) -> i32 {
    let var_0 = global2.b;
    let var_1 = func_2();
    global0 = arg_1;
    var var_2 = arg_1;
    var var_3 = !vec3<bool>(any(var_2.b), select(arg_0.a, true, false), false);
    return _wgslsmith_mult_i32(-(i32(-1i) * -24149i), global0.a.x << (~_wgslsmith_dot_vec3_u32(arg_3.yzw, arg_3.yzy) % 32u));
}

fn func_1(arg_0: vec2<bool>) -> Struct_2 {
    var var_0 = _wgslsmith_add_u32(u_input.a, u_input.a);
    return Struct_2(func_5(Struct_3(global0.d < 1433f, global2.b), func_4(0u, func_2(), _wgslsmith_f_op_f32(round(1304f)), global2.a), min(vec2<u32>(u_input.a, u_input.a) | vec2<u32>(u_input.a, u_input.a), select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a), global1.b)) | vec2<u32>(~48694u, _wgslsmith_dot_vec4_u32(vec4<u32>(64915u, u_input.a, 57248u, u_input.a), vec4<u32>(u_input.a, u_input.a, 25376u, 0u))), ~vec4<u32>(1u, ~u_input.a, 4294967295u, abs(u_input.a))));
}

fn func_6(arg_0: i32, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: Struct_2) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.c, global1.c, global1.c, -1798f)))))));
    let var_1 = max(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, ~(u_input.a | 70068u)), vec2<u32>(u_input.a, _wgslsmith_add_u32(u_input.a, 45412u)) ^ vec2<u32>(u_input.a, ~u_input.a)), ~(vec2<u32>(u_input.a, 4294967295u) ^ vec2<u32>(1u, 1u)) << ((vec2<u32>(u_input.a, ~u_input.a) | _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(0u, 0u), vec2<u32>(u_input.a, 1u)), abs(vec2<u32>(38510u, 10988u)))) % vec2<u32>(32u)));
    global0 = Struct_1(select(arg_2.zx, arg_2.xx, false), vec2<bool>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(-global1.d))) == global0.d, global0.b.x), var_0.x, _wgslsmith_f_op_f32(ceil(var_0.x)), global1.e);
    global2 = Struct_3((~(~1u) << (_wgslsmith_add_u32(~4294967295u, u_input.a | 0u) % 32u)) <= _wgslsmith_dot_vec3_u32(vec3<u32>(~1821u, ~var_1.x, var_1.x | u_input.a), _wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(33144u, 53494u, 31242u)), vec3<u32>(var_1.x, u_input.a, u_input.a), vec3<u32>(32655u, var_1.x, u_input.a))), Struct_2(global0.a.x));
    var var_2 = global2.b;
    return Struct_3(!all(vec2<bool>(true, global0.e)), func_1(global1.b));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_6(-2147483647i, global2.b, ~firstLeadingBit(vec3<i32>(-14979i, ~global0.a.x, global2.b.a)), func_1(global0.b));
    let var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, firstLeadingBit(reverseBits(firstTrailingBit(u_input.a)))), ~vec4<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(4705u, u_input.a), _wgslsmith_div_u32(0u, 4294967295u)), max(u_input.a, u_input.a), 4294967295u, max(~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(2375u, 1u, 2135u)))));
    var var_1 = vec4<i32>(global0.a.x >> ((_wgslsmith_mult_u32(u_input.a, 29831u) | ~u_input.a) % 32u), global0.a.x, global2.b.a, 66559i) & _wgslsmith_div_vec4_i32(~(vec4<i32>(global0.a.x, 24i, 19903i, -42883i) & vec4<i32>(1i, global1.a.x, -1i, global1.a.x)), vec4<i32>(global0.a.x, -(~(-11271i)), 23673i, -2147483647i));
    var var_2 = func_1(global0.b);
    var var_3 = vec4<bool>(!global1.b.x, !global2.a && all(global1.b), func_6(_wgslsmith_div_i32(-16050i, countOneBits(global2.b.a)), Struct_2(func_1(vec2<bool>(global2.a, global0.e)).a), countOneBits(var_1.zzy << (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u))), global2.b).a | true, global2.a);
    var var_4 = 13018u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(func_4(var_0, func_4(0u, Struct_1(global1.a, vec2<bool>(true, global2.a), global1.c, global0.d, global0.e), -382f, true), _wgslsmith_f_op_f32(round(global0.d)), !global2.a).d))), reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, _wgslsmith_add_u32(u_input.a, u_input.a), 2871u), countOneBits(vec3<u32>(4294967295u, 20425u, 1u) >> (vec3<u32>(var_0, 4294967295u, 40267u) % vec3<u32>(32u))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)), global1.c, global0.c), _wgslsmith_sub_vec4_i32(vec4<i32>(-25073i, global0.a.x, global2.b.a, global1.a.x) >> (countOneBits(vec4<u32>(0u, u_input.a, var_0, 36470u)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(global0.a.x, var_1.x, var_2.a, 2147483647i), select(vec4<i32>(global0.a.x, -30573i, 37567i, global2.b.a), vec4<i32>(global1.a.x, var_2.a, 0i, -29454i), vec4<bool>(global1.e, true, var_3.x, global2.a)))) & (~firstLeadingBit(vec4<i32>(var_1.x, var_2.a, -41831i, 2147483647i)) | vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-20997i, 574i), vec2<i32>(-1306i, var_1.x)), -42674i, 1i, _wgslsmith_sub_i32(-1i, 1i))));
}

