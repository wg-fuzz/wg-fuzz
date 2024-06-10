struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: array<vec4<i32>, 5> = array<vec4<i32>, 5>(vec4<i32>(i32(-2147483648), 38598i, -21785i, -10379i), vec4<i32>(11363i, 2147483647i, -1i, -11468i), vec4<i32>(39526i, i32(-2147483648), -43194i, 2147483647i), vec4<i32>(-1i, 1i, 61338i, 2147483647i), vec4<i32>(0i, 37962i, 5395i, 0i));

var<private> global2: array<u32, 3>;

var<private> global3: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: bool, arg_1: vec3<bool>, arg_2: vec4<i32>, arg_3: bool) -> u32 {
    global0 = -global3.c.x << (~_wgslsmith_div_u32(global3.d.x, 1u) % 32u);
    global2 = array<u32, 3>();
    let var_0 = true;
    let var_1 = 438f;
    return global3.d.x;
}

fn func_3() -> bool {
    var var_0 = global3.a;
    var var_1 = _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, ~reverseBits(u_input.a), 0u, 1u), _wgslsmith_div_vec4_u32(~_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 3u)], u_input.b.x, global2[_wgslsmith_index_u32(global3.d.x, 3u)], global3.d.x), vec4<u32>(global3.d.x, global3.d.x, global3.d.x, 19776u)), ~vec4<u32>(41772u, global2[_wgslsmith_index_u32(u_input.a, 3u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 3u)], 3u)], 1u), vec4<u32>(0u, global2[_wgslsmith_index_u32(u_input.a, 3u)], 442u, global3.d.x)), reverseBits(select(abs(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(77220u, 3u)], 3u)], 69498u, 62017u, u_input.a)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 1u, 26590u, 17519u), vec4<u32>(global2[_wgslsmith_index_u32(45094u, 3u)], 64371u, global3.d.x, 1u)), var_0.x))));
    global0 = global3.c.x;
    var_1 = vec4<u32>(0u, _wgslsmith_dot_vec3_u32(select(firstTrailingBit(vec3<u32>(global3.d.x, 1u, var_1.x)), var_1.zzy, global3.b.x), vec3<u32>(4294967295u, 51165u, ~global3.d.x) & _wgslsmith_add_vec3_u32(global3.d, ~vec3<u32>(var_1.x, 1u, var_1.x))), _wgslsmith_sub_u32(~_wgslsmith_clamp_u32(abs(1u), func_1(true, global3.b, vec4<i32>(2147483647i, u_input.c, global3.c.x, u_input.d.x), true), _wgslsmith_dot_vec4_u32(vec4<u32>(global3.d.x, global2[_wgslsmith_index_u32(0u, 3u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 3u)], 3u)], u_input.b.x), vec4<u32>(8745u, 4294967295u, 1u, var_1.x))), global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(abs(4294967295u), ~global3.d.x), 3u)]), abs(~(~1u)) ^ global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~global3.d.x, abs(global3.d.x)), vec2<u32>(17715u, 4294967295u)), 3u)]);
    let var_2 = -1474f;
    return false;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<u32>) -> vec2<bool> {
    let var_0 = 0u;
    global2 = array<u32, 3>();
    let var_1 = Struct_1(global3.a, !select(vec3<bool>(false, global3.a.x, func_3()), !(!vec3<bool>(global3.a.x, global3.b.x, global3.b.x)), vec3<bool>(true, true, true)), min(~_wgslsmith_mult_vec3_i32(global3.c, vec3<i32>(-27799i, 1i, arg_0.x)) & -select(vec3<i32>(u_input.c, 55103i, 19104i), vec3<i32>(0i, u_input.d.x, 1i), global3.b), _wgslsmith_add_vec3_i32(firstTrailingBit(-arg_0), _wgslsmith_clamp_vec3_i32(global3.c, vec3<i32>(arg_0.x, 1i, arg_0.x), vec3<i32>(2147483647i, arg_0.x, 17100i)) >> (arg_1 % vec3<u32>(32u)))), ~global3.d);
    var var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1477f, -522f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-348f * 1194f) - 706f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(trunc(-250f)), -1129f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))));
    let var_3 = var_1;
    return select(!(!global3.b.yz), vec2<bool>(!(var_1.a.x & false), all(var_1.a)), !(!var_3.a.ww));
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: vec2<bool>, arg_3: bool) -> Struct_1 {
    global1 = array<vec4<i32>, 5>();
    return Struct_1(!vec4<bool>(true, arg_3, true, true != (global3.a.x || true)), vec3<bool>(any(vec4<bool>(true, !arg_3, func_3(), any(vec4<bool>(arg_3, false, false, true)))), false, global3.b.x), vec3<i32>(reverseBits(-(~arg_1)), 2147483647i, _wgslsmith_add_i32(_wgslsmith_mod_i32(arg_1, -2147483647i), 1i)), (global3.d ^ vec3<u32>(global3.d.x << (0u % 32u), countOneBits(43915u), 30321u)) >> (~reverseBits(firstTrailingBit(global3.d)) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec2<i32>(_wgslsmith_div_i32(~u_input.e.x, ~global3.c.x) << (_wgslsmith_dot_vec3_u32(vec3<u32>(global3.d.x, 0u, 1u), _wgslsmith_div_vec3_u32(global3.d, vec3<u32>(80806u, 4294967295u, 11248u))) % 32u), 65391i);
    var var_1 = Struct_1(vec4<bool>(all(select(global3.a, global3.a, any(vec3<bool>(global3.b.x, global3.b.x, true)))), all(vec3<bool>(!global3.b.x, all(global3.b.xx), false)), global3.b.x, (-var_0.x != ~0i) != true), vec3<bool>(true, global3.a.x, all(!select(global3.a, global3.a, vec4<bool>(true, false, global3.a.x, global3.a.x)))), global3.c, global3.d);
    var var_2 = func_4(u_input.b.x, _wgslsmith_div_i32(-27769i, var_0.x), func_2(vec3<i32>(global3.c.x, -(~(-1i)), ~(-1i)), _wgslsmith_mult_vec3_u32(~vec3<u32>(1u, 31727u, global2[_wgslsmith_index_u32(1u, 3u)]), vec3<u32>(global3.d.x, abs(1u), func_1(false, vec3<bool>(global3.a.x, var_1.b.x, true), global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3.d.x, 3u)], 5u)], var_1.b.x)))), true);
    let var_3 = func_4(7672u, var_1.c.x, var_2.b.zy, ~var_2.d.x != ~(~(~global3.d.x)));
    let var_4 = Struct_1(var_1.a, vec3<bool>(true, _wgslsmith_add_i32(~global3.c.x, min(global3.c.x, 47391i)) < ~_wgslsmith_div_i32(-2147483647i, -1i), global3.a.x), _wgslsmith_mult_vec3_i32(var_1.c, firstLeadingBit(vec3<i32>(-34830i, -var_3.c.x, _wgslsmith_clamp_i32(var_1.c.x, 2147483647i, var_3.c.x)))), vec3<u32>(4294967295u, global3.d.x, ~min(4523u, var_1.d.x) | _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_3.d.x, 31025u, global3.d.x), vec4<u32>(global3.d.x, 1u, global3.d.x, var_2.d.x)), 45081u)));
    let var_5 = true == var_4.b.x;
    let var_6 = ~1u;
    var var_7 = var_4.b;
    let x = u_input.a;
    s_output = StorageBuffer(~0u);
}

