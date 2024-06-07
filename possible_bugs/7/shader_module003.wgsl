struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: bool,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = min(max(vec2<i32>(2147483647i, -global0.a.x), select(vec2<i32>(28678i, global0.a.x), vec2<i32>(21492i, -48097i), global0.d) << (_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), u_input.a.xx) % vec2<u32>(32u))) ^ global0.a.yz, (countOneBits(~vec2<i32>(55784i, 1i)) & vec2<i32>(-global0.a.x, global0.a.x >> (8088u % 32u))) ^ _wgslsmith_div_vec2_i32((vec2<i32>(global0.a.x, 2147483647i) ^ vec2<i32>(global0.a.x, 0i)) >> (vec2<u32>(0u, u_input.a.x) % vec2<u32>(32u)), vec2<i32>(-80531i, global0.a.x ^ global0.a.x)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(600f, 1799f))), -281f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1455f, -932f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-260f, 2474f)) * _wgslsmith_f_op_f32(trunc(-602f)))))));
    let var_2 = min(u_input.a.x, 23865u);
    let var_3 = min(reverseBits(var_0), _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_div_i32(var_0.x, -54155i), _wgslsmith_sub_i32(2147483647i, 37458i)) >> (~(u_input.a.xy & u_input.a.yx) % vec2<u32>(32u)), var_0, select(reverseBits(var_0) >> (u_input.a.xy % vec2<u32>(32u)), vec2<i32>(0i, firstTrailingBit(-35755i)), !(global0.c && true))));
    var var_4 = var_0 & ~vec2<i32>(~global0.a.x << (30299u % 32u), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(16727i, var_3.x, var_0.x, var_0.x), vec4<i32>(-23246i, global0.a.x, -1724i, var_0.x))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1 - -1064f), var_1, all(vec2<bool>(global0.d, global0.c)))), -378f, !any(vec4<bool>(global0.c, global0.c, true, global0.d)))))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(433f)), _wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(1f * var_1))));
}

fn func_2(arg_0: vec4<bool>, arg_1: u32) -> vec2<i32> {
    var var_0 = global0.e;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(trunc(-624f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-324f, _wgslsmith_f_op_f32(-412f * 1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(-347f - -359f))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1178f - _wgslsmith_f_op_f32(-306f - -521f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1268f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1304f + -1560f))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -508f))))));
    var_0 = Struct_1(any(vec2<bool>(false, false)));
    var var_2 = !any(arg_0);
    let var_3 = global0.e;
    return firstLeadingBit(vec2<i32>(~global0.a.x, -51915i << (u_input.a.x % 32u)));
}

fn func_4(arg_0: vec2<i32>, arg_1: u32, arg_2: vec3<u32>) -> vec4<u32> {
    global0 = Struct_2(abs((vec3<i32>(-1i) * -global0.a) ^ -(~vec3<i32>(global0.a.x, global0.a.x, global0.a.x))), global0.e, global0.e.a, all(select(select(!vec4<bool>(false, global0.e.a, true, global0.d), vec4<bool>(false, global0.b.a, true, global0.b.a), all(vec3<bool>(global0.b.a, true, true))), select(!vec4<bool>(false, global0.e.a, global0.b.a, false), !vec4<bool>(global0.b.a, true, false, global0.d), any(vec3<bool>(global0.c, false, true))), any(select(vec2<bool>(global0.e.a, true), vec2<bool>(global0.b.a, true), false)))), global0.e);
    let var_0 = Struct_3(_wgslsmith_f_op_f32(ceil(605f)));
    global0 = Struct_2(-(firstLeadingBit(global0.a) >> (vec3<u32>(arg_1, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_2.x, arg_1), vec3<u32>(arg_2.x, 41824u, 15895u)), ~0u) % vec3<u32>(32u))), Struct_1(global0.d), global0.b.a, func_2(!vec4<bool>(true, global0.d, global0.b.a, false), ~arg_1).x == arg_0.x, global0.b);
    let var_1 = -global0.a.x;
    let var_2 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -717f));
    return vec4<u32>(countOneBits(19209u), ~_wgslsmith_dot_vec2_u32(select(arg_2.zz, u_input.a.yy, true), arg_2.zx ^ arg_2.yz) >> (arg_2.x % 32u), 0u, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_1, arg_1, arg_1, 107202u), vec4<u32>(4294967295u, 25475u, arg_2.x, 81866u)), ~vec4<u32>(arg_1, 1u, arg_2.x, arg_1)), ~vec4<u32>(arg_2.x, 49955u, _wgslsmith_mult_u32(arg_2.x, 13223u), arg_1)));
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: i32, arg_3: u32) -> Struct_2 {
    var var_0 = global0.e;
    var var_1 = _wgslsmith_mult_vec4_u32(~(~vec4<u32>(~u_input.a.x, u_input.a.x ^ 141951u, _wgslsmith_div_u32(arg_3, 0u), ~51660u)), min(func_4(~func_2(vec4<bool>(true, global0.d, false, global0.d), u_input.a.x), u_input.a.x, ~vec3<u32>(arg_3, 40255u, u_input.a.x)), vec4<u32>(arg_3, ~37130u, 134399u, 4294967295u)));
    var_0 = Struct_1(all(!select(vec3<bool>(var_0.a, var_0.a, var_0.a), vec3<bool>(var_0.a, false, var_0.a), vec3<bool>(true, global0.b.a, true))) & true);
    let var_2 = Struct_2(vec3<i32>(-1i, _wgslsmith_dot_vec4_i32(-(~vec4<i32>(-1i, -20520i, 41277i, arg_0)), -vec4<i32>(arg_2, -27720i, arg_2, global0.a.x)), -_wgslsmith_add_i32(1i, _wgslsmith_add_i32(80570i, 1i))), Struct_1(global0.d), _wgslsmith_f_op_f32(arg_1.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.a)))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-260f)))), var_0.a, global0.b);
    var_1 = ~(~(~(~vec4<u32>(arg_3, arg_3, u_input.a.x, 20290u))));
    return Struct_2(_wgslsmith_mult_vec3_i32(-var_2.a, ~vec3<i32>(0i, 2147483647i, 0i) ^ max(select(vec3<i32>(arg_0, -2147483647i, var_2.a.x), var_2.a, vec3<bool>(true, global0.d, false)), vec3<i32>(0i, 2147483647i, global0.a.x))), var_2.b, false, !all(select(!vec3<bool>(global0.c, true, false), select(vec3<bool>(true, false, var_2.c), vec3<bool>(true, var_0.a, var_2.e.a), var_0.a), select(vec3<bool>(var_0.a, var_2.c, false), vec3<bool>(true, true, false), var_2.e.a))), Struct_1(var_2.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), vec2<u32>(abs(~43697u), u_input.a.x) & vec2<u32>(u_input.a.x, u_input.a.x | ~u_input.a.x));
    global0 = func_1(-2147483647i, Struct_3(1000f), global0.a.x, _wgslsmith_dot_vec4_u32((~vec4<u32>(51358u, var_0.x, var_0.x, 19036u) ^ ~vec4<u32>(var_0.x, 57505u, 4294967295u, u_input.a.x)) & select(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, 79591u, u_input.a.x, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, 4294967295u, u_input.a.x)), ~vec4<u32>(var_0.x, u_input.a.x, var_0.x, var_0.x), global0.d), vec4<u32>(_wgslsmith_clamp_u32(4294967295u, ~var_0.x, ~u_input.a.x), ~73277u, _wgslsmith_add_u32(var_0.x | var_0.x, var_0.x), 47509u)));
    let var_1 = func_1(-15208i, Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1360f * 1364f))))), global0.a.x, u_input.a.x);
    var var_2 = Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(127f, 1679f)))));
    var var_3 = ~(0u >> ((var_0.x | ~(~u_input.a.x)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a, u_input.a.x, ~select(vec4<i32>(global0.a.x >> (112017u % 32u), 2147483647i, _wgslsmith_sub_i32(2147483647i, 1i), global0.a.x), countOneBits(~vec4<i32>(var_1.a.x, -2601i, -1i, 0i)), select(!vec4<bool>(global0.e.a, var_1.b.a, global0.e.a, var_1.d), vec4<bool>(var_1.e.a, false, var_1.c, true), !vec4<bool>(global0.d, global0.d, var_1.d, global0.e.a))), var_2.a, vec4<i32>(2147483647i, -1i, ~_wgslsmith_mod_i32(12369i & var_1.a.x, _wgslsmith_div_i32(global0.a.x, var_1.a.x)), abs(~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -15453i, var_1.a.x), vec3<i32>(-1i, 1i, 2147483647i)))));
}

