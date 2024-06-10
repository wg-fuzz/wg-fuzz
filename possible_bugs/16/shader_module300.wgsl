struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<i32>,
    d: i32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_3;

var<private> global2: Struct_1;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<bool> {
    let var_0 = all(vec3<bool>(true, any(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), true), vec4<bool>(true, false, false, true))), false));
    let var_1 = select(vec2<bool>(any(vec2<bool>(false, var_0)), global2.b >= -1550f), vec2<bool>(-2084f > _wgslsmith_f_op_f32(-global2.b), any(select(select(vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(true, var_0, var_0, var_0), true), vec4<bool>(var_0, false, true, var_0), true))), vec2<bool>(true, !var_0));
    let var_2 = Struct_2(_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(~23799u, 106364u << (u_input.a % 32u)), u_input.a), ~(~vec2<u32>(1u, 0u) >> (~vec2<u32>(u_input.a, 22474u) % vec2<u32>(32u))), vec2<u32>(4294967295u, u_input.a)), abs(abs(0i)));
    var var_3 = false;
    let var_4 = Struct_3(~vec2<i32>(u_input.b.x, -13876i), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.b))))));
    return select(!var_1, select(vec2<bool>(false & (var_0 || var_0), true), select(select(!vec2<bool>(var_0, var_1.x), vec2<bool>(true, false), var_1), select(var_1, !var_1, vec2<bool>(var_0, true)), true), select(var_1, select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(var_1.x, var_0), vec2<bool>(var_1.x, false), var_1)), all(vec3<bool>(false, true, false)))), var_1);
}

fn func_2(arg_0: vec3<i32>) -> i32 {
    var var_0 = vec2<u32>(reverseBits(~4294967295u & (~1u >> (u_input.a % 32u))), 1u);
    var var_1 = !func_3();
    var var_2 = Struct_2(vec2<u32>(select(countOneBits(u_input.a), _wgslsmith_mult_u32(38829u, var_0.x), var_1.x) >> (24779u % 32u), 0u), firstLeadingBit(-1232i));
    let var_3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(global1.b, global1.b, _wgslsmith_f_op_f32(max(global1.b, _wgslsmith_f_op_f32(abs(global1.b)))), _wgslsmith_f_op_f32(-global2.b)), vec4<f32>(-155f, global1.b, global1.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -648f), 172f)))));
    let var_4 = (false | (func_3().x == (_wgslsmith_f_op_f32(global1.b * -547f) > 521f))) & select(!var_1.x, false, var_1.x);
    return ~abs(18947i);
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b, global2.b, 878f, 1866f) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1142f, -674f, global2.b, global1.b), vec4<f32>(1430f, -438f, global2.b, 966f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b, -524f, -1738f, -2235f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1155f, global2.b, 1074f))))))));
    let var_1 = Struct_1(-func_2(-vec3<i32>(global1.a.x, global2.a, global1.a.x)), _wgslsmith_f_op_f32(-var_0.x), countOneBits(_wgslsmith_mult_vec2_i32(~_wgslsmith_mod_vec2_i32(global2.e, vec2<i32>(-30986i, global2.d)), u_input.b.zz)), -global2.d, vec2<i32>(_wgslsmith_mult_i32(func_2(vec3<i32>(global1.a.x, -30907i, global2.c.x)), -2147483647i), -(~u_input.b.x)) << (~(~vec2<u32>(1u, u_input.a)) % vec2<u32>(32u)));
    var var_2 = _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_div_u32(u_input.a ^ 0u, 77541u), ~43688u), _wgslsmith_add_vec2_u32(firstLeadingBit(vec2<u32>(49006u, 1u) ^ vec2<u32>(u_input.a, 0u)), vec2<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(0u, 0u))))), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, _wgslsmith_add_u32(_wgslsmith_div_u32(1u, 1u), ~u_input.a)), ~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(u_input.a, u_input.a), vec2<u32>(43073u, 4294967295u)))));
    let var_3 = var_1;
    global1 = Struct_3(-(~_wgslsmith_add_vec2_i32(select(u_input.b.zw, vec2<i32>(-2147483647i, -30102i), vec2<bool>(false, true)), vec2<i32>(-1i, -2147483647i) | vec2<i32>(u_input.b.x, global1.a.x))), 600f);
    return Struct_1(global1.a.x >> (~(~(~1u)) % 32u), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.x * var_1.b)))), global2.b)), _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(global2.e, var_1.e), vec2<i32>(-var_3.d, -2147483647i)) >> ((firstLeadingBit(abs(vec2<u32>(u_input.a, 1u))) & _wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(u_input.a, 94015u) << (vec2<u32>(u_input.a, 10377u) % vec2<u32>(32u)))) % vec2<u32>(32u)), ~(-1i), -_wgslsmith_sub_vec2_i32(global2.c ^ vec2<i32>(global2.e.x, -6951i), vec2<i32>(global1.a.x, -46068i)));
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_sub_vec2_u32(min(~(vec2<u32>(35690u, u_input.a) << (vec2<u32>(2861u, u_input.a) % vec2<u32>(32u))), vec2<u32>(1u, 1u)), vec2<u32>(u_input.a, ~u_input.a) | ~abs(vec2<u32>(u_input.a, u_input.a))), -2530i);
    var var_1 = -4390i;
    let var_2 = firstLeadingBit(vec3<u32>(0u, u_input.a, abs(0u)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2.b))));
    var var_4 = ((0i << (~select(var_2.x, u_input.a, true) % 32u)) ^ _wgslsmith_mult_i32(var_0.b, 1i >> (~4294967295u % 32u))) << (abs(~36668u) % 32u);
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(-_wgslsmith_dot_vec3_i32(min(vec3<i32>(0i, 12144i, 1i), -u_input.b.yww), _wgslsmith_sub_vec3_i32(-u_input.b.zyw, -vec3<i32>(u_input.b.x, 2147483647i, 46134i))), global2.b, -_wgslsmith_div_vec2_i32(-firstLeadingBit(global2.e), vec2<i32>(-u_input.b.x, global2.c.x)), u_input.b.x, global2.c);
    global2 = func_4(global1.b, u_input.b.x, func_1());
    global1 = Struct_3(u_input.b.zx, _wgslsmith_f_op_f32(-global2.b));
    var var_0 = Struct_2(abs(~select(~vec2<u32>(u_input.a, 0u), vec2<u32>(0u, 153313u), 1000f <= global2.b)), abs(-1i) ^ _wgslsmith_add_i32(func_1().c.x, -u_input.b.x ^ u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1587f + _wgslsmith_f_op_f32(global2.b * -268f)));
}

