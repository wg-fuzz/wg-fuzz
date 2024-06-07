struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: u32,
    d: vec4<bool>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec2<bool>,
    d: vec4<i32>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec3<i32>;

var<private> global2: array<u32, 4>;

var<private> global3: array<vec2<u32>, 25> = array<vec2<u32>, 25>(vec2<u32>(4294967295u, 25406u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 14959u), vec2<u32>(10098u, 37458u), vec2<u32>(148838u, 4294967295u), vec2<u32>(0u, 16594u), vec2<u32>(6150u, 69552u), vec2<u32>(0u, 164591u), vec2<u32>(55070u, 0u), vec2<u32>(0u, 40504u), vec2<u32>(12092u, 4294967295u), vec2<u32>(116770u, 5200u), vec2<u32>(25840u, 61678u), vec2<u32>(4294967295u, 26624u), vec2<u32>(16554u, 1u), vec2<u32>(1u, 21746u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 37755u), vec2<u32>(0u, 73826u), vec2<u32>(4294967295u, 48896u), vec2<u32>(20623u, 102044u), vec2<u32>(49196u, 4294967295u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 58338u), vec2<u32>(19183u, 4294967295u));

var<private> global4: Struct_5 = Struct_5(vec3<i32>(-27829i, 27008i, -1i));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> vec3<bool> {
    global1 = _wgslsmith_add_vec3_i32(global4.a, vec3<i32>(_wgslsmith_mult_i32(~abs(25734i), _wgslsmith_mult_i32(i32(-1i) * -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, global1.x), global4.a.xx))), ~(~global4.a.x), global4.a.x));
    global2 = array<u32, 4>();
    var var_0 = Struct_2(Struct_1(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false))), any(select(vec2<bool>(false, true), vec2<bool>(true, true), true)), 1u), vec4<bool>(true, true, true, true), firstTrailingBit(~reverseBits(~4294967295u)), !(!vec4<bool>(global1.x != -31999i, false, true, true)), vec3<bool>(true & select(true, true, true), true, true));
    global0 = _wgslsmith_mod_i32(u_input.c, u_input.c ^ abs(0i));
    let var_1 = Struct_5(vec3<i32>(firstTrailingBit(global4.a.x), abs(u_input.d), global4.a.x));
    return var_0.d.wxw;
}

fn func_2() -> bool {
    let var_0 = Struct_2(Struct_1(vec3<bool>(true, any(vec4<bool>(true, false, false, true)), true), true, _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 1u, 20158u, global2[_wgslsmith_index_u32(4294967295u, 4u)]), _wgslsmith_mult_vec4_u32(vec4<u32>(66432u, 4294967295u, global2[_wgslsmith_index_u32(1u, 4u)], 42522u), vec4<u32>(u_input.a.x, 24687u, global2[_wgslsmith_index_u32(59626u, 4u)], 4294967295u))) & 27984u), vec4<bool>(true, false, all(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false))), true), u_input.a.x, select(!vec4<bool>(true, true, any(vec2<bool>(true, false)), true), vec4<bool>(global2[_wgslsmith_index_u32(max(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 4u)], 4u)], 4u)]), 4u)] > 1u, true, all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false))), false), all(func_3())), vec3<bool>(any(vec4<bool>(false, global1.x > 0i, any(vec4<bool>(true, true, true, false)), all(vec3<bool>(false, false, true)))), true, true));
    let var_1 = global4.a.x & global4.a.x;
    global2 = array<u32, 4>();
    var var_2 = !(!all(!var_0.d) | any(vec3<bool>(true, false, all(vec3<bool>(var_0.a.a.x, true, false)))));
    var var_3 = firstLeadingBit(_wgslsmith_sub_vec2_u32(abs(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.c, 4u)], 4u)], 4u)], u_input.a.x) ^ (global3[_wgslsmith_index_u32(19311u, 25u)] | global3[_wgslsmith_index_u32(1u, 25u)])), ~abs(u_input.a.xx) << ((global3[_wgslsmith_index_u32(reverseBits(global2[_wgslsmith_index_u32(39744u, 4u)]), 25u)] >> (vec2<u32>(4294967295u, var_0.c) % vec2<u32>(32u))) % vec2<u32>(32u))));
    return all(select(var_0.e.zy, var_0.e.yy, vec2<bool>(func_3().x, all(vec2<bool>(true, var_0.b.x)))));
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = all(!vec4<bool>(false, arg_0, true, func_2())) | (-1i > _wgslsmith_dot_vec3_i32(abs(global4.a), abs(~global4.a)));
    global3 = array<vec2<u32>, 25>();
    global3 = array<vec2<u32>, 25>();
    let var_1 = Struct_3(1u, Struct_2(Struct_1(!vec3<bool>(false, true, var_0), true, u_input.a.x), vec4<bool>(var_0, true, arg_0, arg_0 | false), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.a.x >> (countOneBits(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 4u)], 4u)]) % 32u), ~(~u_input.a.x)), 4u)], select(vec4<bool>(any(vec2<bool>(var_0, true)), arg_0 && var_0, true, true), select(!vec4<bool>(false, true, var_0, arg_0), !vec4<bool>(arg_0, arg_0, arg_0, arg_0), arg_0), ~global2[_wgslsmith_index_u32(1957u, 4u)] == global2[_wgslsmith_index_u32(u_input.a.x, 4u)]), vec3<bool>(false, false, any(vec2<bool>(true, false)))), !select(vec2<bool>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 4u)], 4u)] != u_input.a.x, arg_0), vec2<bool>(all(vec2<bool>(false, false)), true || arg_0), vec2<bool>(false, !var_0)), _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(-vec4<i32>(-19958i, global1.x, global4.a.x, -74653i), abs(vec4<i32>(0i, -11537i, global4.a.x, 49500i))), _wgslsmith_div_vec4_i32(-vec4<i32>(u_input.c, 0i, 10206i, 2147483647i), -vec4<i32>(-2435i, -2147483647i, u_input.d, -9137i))) & -vec4<i32>(1i, firstLeadingBit(u_input.c), firstTrailingBit(43399i), _wgslsmith_mult_i32(-1i, -25708i)));
    let var_2 = Struct_4(global2[_wgslsmith_index_u32(~83829u, 4u)]);
    return Struct_1(vec3<bool>(select(var_1.b.e.x, var_1.b.b.x, false), true, all(!(!var_1.b.a.a))), var_1.c.x, ~((var_1.b.c >> (_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(var_2.a, 65621u, 8404u)) % 32u)) | ~4294967295u));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> u32 {
    let var_0 = Struct_3(~52662u, Struct_2(Struct_1(vec3<bool>(true, arg_1.b, false), ~global2[_wgslsmith_index_u32(24640u, 4u)] >= _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_0.x, 38908u), vec3<u32>(arg_0.x, global2[_wgslsmith_index_u32(24316u, 4u)], arg_0.x)), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a), _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(arg_0.x, 1u, 810u)))), select(!(!vec4<bool>(false, arg_1.b, arg_2.b, true)), select(select(vec4<bool>(true, false, arg_1.a.x, false), vec4<bool>(arg_2.a.x, false, arg_2.a.x, false), arg_1.a.x), !vec4<bool>(arg_1.a.x, false, true, true), true), !arg_2.a.x), arg_2.c, !select(!vec4<bool>(arg_2.b, arg_2.a.x, true, false), select(vec4<bool>(true, true, arg_2.a.x, arg_1.a.x), vec4<bool>(true, arg_2.a.x, true, arg_1.b), vec4<bool>(arg_2.b, false, true, false)), true), !func_1(all(vec2<bool>(arg_1.b, arg_1.b))).a), func_3().zx, select(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, -2147483647i, -49207i, global4.a.x), vec4<i32>(-1i, 3627i, u_input.b.x, 1i)), _wgslsmith_add_vec4_i32(vec4<i32>(-78268i, 12758i, 1i, global1.x), vec4<i32>(2147483647i, -3379i, -19681i, -1i))) ^ (vec4<i32>(global1.x, u_input.b.x, -15172i, -1i) << (_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 70818u, 6547u, global2[_wgslsmith_index_u32(28740u, 4u)]), vec4<u32>(2356u, 43741u, u_input.a.x, arg_0.x)) % vec4<u32>(32u))), vec4<i32>(~global4.a.x, i32(-1i) * -2147483647i, -3832i, global4.a.x) << (_wgslsmith_mod_vec4_u32(vec4<u32>(3870u, arg_2.c, u_input.a.x, arg_3) & vec4<u32>(16466u, arg_3, 4294967295u, 1u), select(vec4<u32>(arg_3, arg_1.c, 0u, arg_1.c), vec4<u32>(arg_1.c, 56839u, 42275u, 4294967295u), vec4<bool>(arg_1.a.x, arg_2.b, false, false))) % vec4<u32>(32u)), !vec4<bool>(func_2(), arg_1.b, true, true)));
    var var_1 = abs(1i);
    var var_2 = -32229i;
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(645f - 101f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-400f * 887f) + _wgslsmith_f_op_f32(step(653f, -1626f))) + -2685f) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(302f - 898f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1105f)), arg_1.a.x))));
    global3 = array<vec2<u32>, 25>();
    return ~abs(4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(33121u, 4u)], global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 8377u), u_input.a.xz), 4u)] | func_4(vec2<u32>(31926u, 0u), func_1(true), Struct_1(vec3<bool>(false, false, true), false, 32111u), _wgslsmith_div_u32(global2[_wgslsmith_index_u32(6250u, 4u)], 25743u))), Struct_2(func_1(all(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), true))), vec4<bool>(select(false, true, false) != all(vec3<bool>(false, false, true)), false, true, any(vec3<bool>(true, true, true))), 21601u, vec4<bool>(all(func_1(false).a), !all(vec3<bool>(false, false, true)), any(vec2<bool>(true, true)), true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), func_1(false).a, true), func_3())), vec2<bool>(true, true), vec4<i32>(_wgslsmith_add_i32(max(-u_input.d, _wgslsmith_add_i32(global4.a.x, global4.a.x)), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global4.a.x, -127912i, global4.a.x, -22401i), vec4<i32>(-2147483647i, 24674i, u_input.c, 0i)), -1i)), ~(-(~u_input.b.x)), global4.a.x, reverseBits(~0i)));
    var var_1 = _wgslsmith_f_op_f32(max(1721f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(856f)) - -261f), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-1298f - -383f))))));
    var var_2 = Struct_2(func_1(all(var_0.b.b)), !vec4<bool>(true, var_0.b.e.x, select(all(vec4<bool>(var_0.c.x, false, var_0.b.e.x, var_0.c.x)), false && var_0.b.b.x, var_0.b.d.x), false), ~u_input.a.x, !vec4<bool>(any(vec3<bool>(var_0.c.x, true, false)), !var_0.c.x, func_2(), any(vec2<bool>(false, var_0.b.d.x)) || any(vec3<bool>(true, var_0.b.d.x, true))), !vec3<bool>(global4.a.x != ~(-2977i), global2[_wgslsmith_index_u32(1u, 4u)] < 36707u, var_0.b.e.x));
    var var_3 = max(firstLeadingBit(firstLeadingBit(vec3<i32>(_wgslsmith_div_i32(25122i, var_0.d.x), -15407i, 1i << (var_2.a.c % 32u)))), var_0.d.ywy);
    var var_4 = Struct_4(select(54208u, _wgslsmith_dot_vec3_u32(u_input.a, _wgslsmith_clamp_vec3_u32(abs(u_input.a), vec3<u32>(var_2.a.c, global2[_wgslsmith_index_u32(var_0.b.c, 4u)], 43416u), vec3<u32>(82511u, var_2.a.c, 1u))), !all(func_1(false).a.yy)));
    var var_5 = vec4<u32>(4294967295u, firstTrailingBit(var_0.b.a.c), _wgslsmith_sub_u32(1u, u_input.a.x), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-515f * -100f))))), ~global2[_wgslsmith_index_u32(abs(firstTrailingBit(_wgslsmith_add_u32(0u, 0u))), 4u)], _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-761f, -219f) + _wgslsmith_div_vec2_f32(vec2<f32>(-1035f, -1000f), vec2<f32>(1903f, -491f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(798f, -538f)))))));
}

