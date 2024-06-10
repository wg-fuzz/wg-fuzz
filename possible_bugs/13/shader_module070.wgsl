struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 30> = array<bool, 30>(false, false, true, true, false, false, false, true, false, false, true, true, false, true, true, true, false, false, true, false, true, false, false, false, true, true, true, false, false, false);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1) -> u32 {
    return u_input.b;
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: i32) -> vec3<bool> {
    global0 = array<bool, 30>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(980f, 1059f, true)) * _wgslsmith_f_op_f32(f32(-1f) * -980f)) * _wgslsmith_f_op_f32(select(668f, 1573f, global0[_wgslsmith_index_u32(0u << (1u % 32u), 30u)]))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1886f)) * _wgslsmith_f_op_f32(sign(-758f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(183f + 205f) * _wgslsmith_f_op_f32(sign(-915f))), any(!vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 30u)], false))))), arg_0 ^ _wgslsmith_mult_u32(1u, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(arg_1, arg_1)), vec2<u32>(14325u, 17149u) >> (vec2<u32>(arg_0, arg_1) % vec2<u32>(32u)))), _wgslsmith_add_vec3_u32(~firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(arg_1, 56654u, arg_0), vec3<u32>(u_input.d, 0u, 0u))), vec3<u32>(arg_1, u_input.b, 22551u)), countOneBits(vec3<i32>(2147483647i, _wgslsmith_add_i32(-1i, u_input.c), 25023i)));
    let var_1 = 26773u;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(102f, var_0.a), 1855f, false))));
    let var_3 = var_0.a;
    return vec3<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1156f) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.a))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(arg_0, var_1, 4294967295u, 8233u)), vec4<u32>(func_3(Struct_1(-241f, 1u, var_0.c, var_0.d)), arg_0, var_1, 4294967295u)), 30u)] && !(~arg_0 > reverseBits(arg_1)), any(!vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(arg_1 | var_1, 30u)], true)));
}

fn func_1(arg_0: u32, arg_1: vec2<bool>, arg_2: i32) -> vec3<bool> {
    global0 = array<bool, 30>();
    return select(select(func_2(u_input.d, _wgslsmith_sub_u32(arg_0, arg_0), u_input.c), func_2(_wgslsmith_clamp_u32(~arg_0, u_input.b | 0u, arg_0), u_input.b, ~_wgslsmith_add_i32(-20022i, -2433i)), true), !(!select(!vec3<bool>(global0[_wgslsmith_index_u32(18766u, 30u)], true, arg_1.x), !vec3<bool>(arg_1.x, true, global0[_wgslsmith_index_u32(u_input.b, 30u)]), select(vec3<bool>(arg_1.x, global0[_wgslsmith_index_u32(arg_0, 30u)], global0[_wgslsmith_index_u32(91819u, 30u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 30u)], false, arg_1.x), global0[_wgslsmith_index_u32(25449u, 30u)]))), false);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: u32) -> vec2<i32> {
    return _wgslsmith_div_vec2_i32(arg_1.d.zy, countOneBits(arg_1.d.yx));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 30>();
    global0 = array<bool, 30>();
    var var_0 = _wgslsmith_clamp_vec2_i32(u_input.a.yz, ~vec2<i32>(u_input.a.x, -u_input.a.x) ^ u_input.a.xy, _wgslsmith_add_vec2_i32(vec2<i32>(~(~u_input.c), u_input.c), func_4(select(vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.d, 30u)], global0[_wgslsmith_index_u32(u_input.b, 30u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 30u)], false, false, global0[_wgslsmith_index_u32(u_input.b, 30u)]), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.d, 30u)], global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(69404u, 30u)])), Struct_1(1536f, _wgslsmith_add_u32(u_input.d, 0u), vec3<u32>(u_input.d, u_input.d, u_input.b), u_input.a), func_1(4294967295u << (u_input.d % 32u), vec2<bool>(true, true), -2147483647i), select(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, u_input.b), vec2<u32>(84208u, 42771u)), _wgslsmith_add_u32(u_input.b, 53964u), global0[_wgslsmith_index_u32(1u, 30u)] && true))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1211f)) + _wgslsmith_f_op_f32(-630f * 459f))), 23441u, select(firstTrailingBit(countOneBits(vec3<u32>(u_input.d, 0u, u_input.b))) >> ((~vec3<u32>(u_input.b, 1u, 1u) << (vec3<u32>(4294967295u, 7616u, 4294967295u) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 96283u), vec3<u32>(u_input.d, u_input.d, u_input.b), _wgslsmith_mod_vec3_u32(vec3<u32>(19106u, u_input.b, 1u) ^ vec3<u32>(0u, 36901u, 0u), vec3<u32>(u_input.d, 0u, 15482u))), !vec3<bool>(!global0[_wgslsmith_index_u32(u_input.b, 30u)], -12170i != var_0.x, -2147483647i < u_input.a.x)), u_input.a);
    global0 = array<bool, 30>();
    var_1 = Struct_1(-866f, 1511u, ~(~(~(~vec3<u32>(u_input.b, 4335u, var_1.b)))), -min(vec3<i32>(1i, -var_0.x, 0i << (0u % 32u)), vec3<i32>(var_1.d.x, _wgslsmith_div_i32(1i, -40078i), ~var_0.x)));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1050f)))), var_1.c.x, _wgslsmith_sub_vec3_u32(select(var_1.c, _wgslsmith_div_vec3_u32(~vec3<u32>(u_input.b, u_input.b, var_1.c.x), var_1.c), vec3<bool>(true, false, true)), max(abs(abs(vec3<u32>(1u, 21500u, 9609u))), var_1.c)), vec3<i32>(i32(-1i) * -_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -18854i), vec2<i32>(18718i, 14185i)), u_input.c, -1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_i32(-var_1.d << (~var_2.c % vec3<u32>(32u)), vec3<i32>(var_2.d.x << (var_1.c.x % 32u), select(21993i, var_2.d.x, true), ~(-13339i))) | ~_wgslsmith_sub_vec3_i32(u_input.a, select(var_1.d, var_1.d, true)), ~reverseBits(vec3<u32>(var_1.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 51899u, var_2.c.x), var_1.c), 24343u)), vec4<i32>(7822i, 1i, ~0i, _wgslsmith_add_i32(var_0.x, -(-1i << (var_2.c.x % 32u)))));
}

