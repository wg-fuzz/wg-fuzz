struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(6854u, 47084u, 1u, 48165u);

var<private> global1: Struct_4 = Struct_4(vec3<u32>(78327u, 4294967295u, 4294967295u));

var<private> global2: vec3<i32> = vec3<i32>(-1i, 1i, -41645i);

var<private> global3: Struct_5 = Struct_5(Struct_4(vec3<u32>(4294967295u, 56059u, 23786u)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: Struct_4) -> i32 {
    var var_0 = global3.a;
    let var_1 = Struct_5(global3.a);
    var var_2 = vec3<bool>(any(vec4<bool>(true, false, false, true)), true, true);
    var var_3 = Struct_4(~_wgslsmith_clamp_vec3_u32(~firstTrailingBit(global3.a.a), ~countOneBits(vec3<u32>(29074u, global1.a.x, var_0.a.x)), global0.xyw));
    var var_4 = -1i;
    return firstTrailingBit(13450i);
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = Struct_4(global1.a);
    var var_1 = global3.a.a.x;
    var var_2 = Struct_5(Struct_4((global3.a.a << ((vec3<u32>(var_0.a.x, 51483u, global0.x) >> (vec3<u32>(42599u, global3.a.a.x, global1.a.x) % vec3<u32>(32u))) % vec3<u32>(32u))) >> (vec3<u32>(u_input.d, firstTrailingBit(1u), global3.a.a.x) % vec3<u32>(32u))));
    global2 = _wgslsmith_clamp_vec3_i32(~_wgslsmith_add_vec3_i32(vec3<i32>(abs(-1321i), global2.x, -u_input.a), vec3<i32>(func_3(u_input.a, Struct_4(vec3<u32>(global3.a.a.x, 30306u, 4294967295u))), 41330i, _wgslsmith_add_i32(u_input.e.x, 4715i))), abs(~(~vec3<i32>(arg_0, global2.x, global2.x) | _wgslsmith_sub_vec3_i32(vec3<i32>(1i, arg_0, -264i), vec3<i32>(global2.x, arg_0, -24907i)))), -vec3<i32>(-(~(-4373i)), u_input.e.x, -_wgslsmith_mod_i32(u_input.a, u_input.e.x)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(890f, 1434f) + -179f));
    return Struct_1(-(83212i >> (firstLeadingBit(50192u) % 32u)), _wgslsmith_dot_vec2_i32(-reverseBits(~u_input.e), vec2<i32>(-77551i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.a, -2147483647i, 0i), vec4<i32>(2147483647i, -52891i, -14724i, -1i)) | 1i)));
}

fn func_4(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_1, arg_3: vec2<u32>) -> vec3<i32> {
    var var_0 = !vec3<bool>(!any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), false)), any(vec4<bool>(true, true, true, true)), true & (true | (u_input.a != global2.x)));
    var_0 = vec3<bool>(var_0.x, false, var_0.x);
    return select(vec3<i32>(~_wgslsmith_div_i32(_wgslsmith_add_i32(-2147483647i, 2147483647i), arg_0.x), 0i, arg_1 ^ (_wgslsmith_dot_vec2_i32(vec2<i32>(global2.x, u_input.e.x), u_input.e) & abs(-2147483647i))), arg_0.wzw, !vec3<bool>(true, all(vec2<bool>(var_0.x, var_0.x)), true));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<i32>) -> bool {
    global3 = Struct_5(Struct_4(select(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d, global0.x, arg_0.x), vec3<u32>(global1.a.x, 4294967295u, global0.x)), arg_0.zxw, select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false))) << (arg_0.wxx % vec3<u32>(32u))));
    global2 = countOneBits(func_4(~firstTrailingBit(firstLeadingBit(arg_1)), u_input.e.x, func_2(u_input.a), ~firstLeadingBit(global1.a.yy)));
    let var_0 = Struct_3(global2.x, Struct_2(Struct_1(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.e.x, 5983i), -vec2<i32>(-1i, -2147483647i)), 20788i)), func_2(_wgslsmith_mult_i32(~u_input.a, _wgslsmith_dot_vec2_i32(arg_1.wz, vec2<i32>(arg_1.x, arg_1.x))) ^ -1i));
    var var_1 = Struct_5(Struct_4(vec3<u32>(u_input.b, _wgslsmith_dot_vec2_u32(~global3.a.a.xz, _wgslsmith_add_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(arg_0.x, 1u))), global3.a.a.x)));
    let var_2 = all(select(vec4<bool>(any(vec3<bool>(false, false, true)), true, true, true), vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false)))) | true;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_5(global3.a);
    var var_0 = Struct_4(~vec3<u32>(global1.a.x, _wgslsmith_clamp_u32(global1.a.x, global0.x, 0u) >> (~4294967295u % 32u), u_input.d));
    global2 = _wgslsmith_add_vec3_i32(reverseBits(abs(~vec3<i32>(-2147483647i, 18556i, 5413i))), -vec3<i32>(u_input.a, global2.x, u_input.e.x));
    let var_1 = select(~(-firstTrailingBit(min(vec3<i32>(global2.x, global2.x, -29060i), vec3<i32>(-2147483647i, global2.x, 2147483647i)))), vec3<i32>(1i, 27807i, global2.x), vec3<bool>(!func_1(vec4<u32>(u_input.d, global0.x, 0u, 1u), vec4<i32>(global2.x, u_input.a, u_input.a, -36218i)), select(0u, _wgslsmith_dot_vec2_u32(var_0.a.xx, vec2<u32>(u_input.c, u_input.b)), func_1(vec4<u32>(global1.a.x, 0u, global1.a.x, 9087u), vec4<i32>(-15769i, 9564i, u_input.e.x, 1924i))) <= 24037u, !(true && (var_0.a.x >= 4294967295u))));
    var var_2 = ~(vec3<i32>(var_1.x, abs(max(-1i, var_1.x)), ~reverseBits(var_1.x)) >> (global3.a.a % vec3<u32>(32u)));
    global2 = _wgslsmith_mult_vec3_i32(-var_1, _wgslsmith_add_vec3_i32(var_1, ~var_1 ^ vec3<i32>(-7268i, 2147483647i, u_input.a)) << (_wgslsmith_sub_vec3_u32(abs(vec3<u32>(u_input.d, global3.a.a.x, global1.a.x) | var_0.a), select(~var_0.a, ~vec3<u32>(35623u, 1u, 30427u), true)) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1017f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(458f + 1000f))), _wgslsmith_f_op_f32(1024f * _wgslsmith_f_op_f32(trunc(-821f))), -1374f)));
}

