struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<i32, 27> = array<i32, 27>(54108i, -1i, 1i, 2147483647i, -2184i, 70787i, 43299i, 41911i, -13960i, -1i, i32(-2147483648), -1i, 1i, 50418i, -1i, 2147483647i, -448i, -20571i, i32(-2147483648), -58016i, -12001i, 1i, 1i, -1i, 2147483647i, 23333i, -1i);

var<private> global2: array<vec3<bool>, 16>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_1(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_1) -> f32 {
    var var_0 = false;
    global1 = array<i32, 27>();
    var var_1 = arg_0.xz;
    var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-1183f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(arg_0.x - -1000f)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 908f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.zx) + _wgslsmith_f_op_vec2_f32(arg_0.xy + arg_0.zx)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(ceil(665f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1944f)), arg_2.b.x)) + -407f) + arg_0.x);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>) -> vec4<bool> {
    let var_0 = Struct_1(_wgslsmith_mult_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.a.x, u_input.a.x, -1909i, global1[_wgslsmith_index_u32(37708u, 27u)]), ~arg_1.a), vec4<i32>(2147483647i, -1i, u_input.a.x, -_wgslsmith_add_i32(-5479i, arg_1.d))), !vec3<bool>(true, !(!arg_0.c), true), true, global1[_wgslsmith_index_u32(~30157u, 27u)]);
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-129f, global0.x, arg_2.x) * vec3<f32>(1677f, -793f, 1425f)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-185f, global0.x, global0.x), vec3<f32>(arg_2.x, arg_2.x, global0.x), vec3<bool>(arg_0.b.x, false, false)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.x, global0.x, 404f))))))));
    var var_1 = arg_0.d;
    var var_2 = arg_2.x;
    let var_3 = _wgslsmith_dot_vec4_i32(arg_1.a, arg_1.a);
    return !vec4<bool>(_wgslsmith_dot_vec3_u32(~vec3<u32>(9396u, 0u, 1u), vec3<u32>(57636u, 40584u, 12345u)) == _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(4294967295u, 36038u, 336u)), any(var_0.b.xz), 209f == _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1227f))), !(arg_1.b.x && false));
}

fn func_3(arg_0: f32, arg_1: vec4<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -195f);
    var var_1 = reverseBits(vec3<i32>(-1i) * -vec3<i32>(48217i, _wgslsmith_mod_i32(11244i, global1[_wgslsmith_index_u32(0u, 27u)]), global1[_wgslsmith_index_u32(min(19381u, 43255u), 27u)]));
    var var_2 = arg_1.zy;
    var var_3 = min(firstLeadingBit(reverseBits(~(~vec4<i32>(u_input.a.x, u_input.a.x, 1i, u_input.a.x)))), ~_wgslsmith_add_vec4_i32(-vec4<i32>(1i, u_input.a.x, var_1.x, u_input.a.x) | vec4<i32>(36785i, -4814i, global1[_wgslsmith_index_u32(0u, 27u)], var_1.x), reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(var_1.x, u_input.a.x, var_1.x, u_input.a.x), vec4<i32>(-18466i, 1i, global1[_wgslsmith_index_u32(4294967295u, 27u)], -1i)))));
    var var_4 = ~reverseBits(u_input.a);
    return _wgslsmith_sub_u32(4294967295u, 1u);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1119f, global0.x, global0.x)))))))));
    var var_0 = arg_1;
    var var_1 = Struct_1(_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(arg_1.d, 31198i, arg_1.a.x, 2147483647i), arg_0.a), reverseBits(arg_0.a)), countOneBits(vec4<i32>(0i, u_input.a.x, arg_0.a.x, 2147483647i) | -arg_1.a), ~select(_wgslsmith_div_vec4_i32(arg_1.a, arg_1.a), ~arg_1.a, arg_1.b.x)), func_2(Struct_1(arg_1.a, !select(vec3<bool>(arg_0.b.x, true, arg_0.b.x), vec3<bool>(true, false, var_0.c), arg_1.b), func_2(arg_0, arg_1, _wgslsmith_f_op_vec2_f32(global0.zx - global0.yy)).x, 2147483647i), Struct_1(-var_0.a, select(!vec3<bool>(true, arg_1.b.x, false), var_0.b, !vec3<bool>(true, arg_0.b.x, false)), !arg_0.c, _wgslsmith_mult_i32(arg_0.d, var_0.a.x)), global0.xz).zyz, all(arg_1.b.xy), ~((_wgslsmith_div_i32(global1[_wgslsmith_index_u32(0u, 27u)], arg_1.a.x) | 1i) | (firstLeadingBit(0i) | var_0.a.x)));
    var var_2 = Struct_1(-var_0.a, select(vec3<bool>(!all(vec4<bool>(true, false, true, arg_1.c)), var_1.c, _wgslsmith_mod_i32(arg_0.a.x, 1i) < -1i), vec3<bool>(arg_1.b.x, any(select(vec3<bool>(false, false, false), global2[_wgslsmith_index_u32(1u, 16u)], true)), arg_0.b.x | true), var_1.c), any(vec3<bool>(all(func_2(Struct_1(vec4<i32>(var_0.a.x, arg_0.a.x, var_0.d, var_0.a.x), vec3<bool>(false, true, arg_1.b.x), arg_0.c, u_input.a.x), Struct_1(var_0.a, vec3<bool>(arg_1.c, false, var_0.b.x), var_0.b.x, -2147483647i), vec2<f32>(-157f, -1000f)).yyz), var_1.b.x, var_0.c)), min(-2147483647i, -2147483647i));
    var_2 = Struct_1(_wgslsmith_sub_vec4_i32(arg_0.a, vec4<i32>(-1i, firstTrailingBit(0i), countOneBits(-1i), 2147483647i)), func_2(Struct_1(var_0.a << (min(vec4<u32>(62804u, 15697u, 4294967295u, 4294967295u), vec4<u32>(0u, 52958u, 4294967295u, 7307u)) % vec4<u32>(32u)), !(!var_0.b), all(vec2<bool>(arg_1.b.x, var_1.b.x)) || any(vec2<bool>(true, arg_1.b.x)), var_0.a.x), arg_0, _wgslsmith_f_op_vec2_f32(abs(global0.yz))).yzy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.x))) <= 554f, select(_wgslsmith_clamp_i32(_wgslsmith_div_i32(1i, -2147483647i), arg_0.d, arg_1.d), max(arg_1.a.x, _wgslsmith_mod_i32(43330i, 1i)) << (~_wgslsmith_mod_u32(52418u, 4294967295u) % 32u), select(!var_0.c, !(var_0.b.x || false), true)));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 411f;
    var var_1 = func_4(Struct_1(vec4<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(1i, global1[_wgslsmith_index_u32(55525u, 27u)]), reverseBits(global1[_wgslsmith_index_u32(13024u, 27u)])), 0i, max(firstLeadingBit(6186i), select(global1[_wgslsmith_index_u32(4294967295u, 27u)], -2147483647i, true)), 2147483647i), global2[_wgslsmith_index_u32(func_3(_wgslsmith_f_op_f32(-580f - _wgslsmith_f_op_f32(func_1(vec3<f32>(-2387f, global0.x, global0.x), 0i, Struct_1(vec4<i32>(22223i, -4665i, global1[_wgslsmith_index_u32(21033u, 27u)], u_input.a.x), vec3<bool>(true, true, false), false, 33274i)))), select(func_2(Struct_1(vec4<i32>(-1i, -52867i, -47812i, -59275i), global2[_wgslsmith_index_u32(29008u, 16u)], false, u_input.a.x), Struct_1(vec4<i32>(u_input.a.x, global1[_wgslsmith_index_u32(22043u, 27u)], u_input.a.x, 10540i), vec3<bool>(true, false, true), true, -1i), global0.xz), vec4<bool>(true, false, true, false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false)))), 16u)], all(global2[_wgslsmith_index_u32(14994u, 16u)]), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4366u, 7630u, 0u), vec4<u32>(4294967295u, 110566u, 6653u, 95255u)), 36178u), 27u)]), Struct_1(vec4<i32>(11294i, 1i, global1[_wgslsmith_index_u32(~27849u >> (0u % 32u), 27u)], max(_wgslsmith_div_i32(u_input.a.x, u_input.a.x), u_input.a.x << (0u % 32u))), func_2(Struct_1(vec4<i32>(37924i, u_input.a.x, global1[_wgslsmith_index_u32(4294967295u, 27u)], -56080i), vec3<bool>(true, true, true), false, ~9808i), Struct_1(~vec4<i32>(-1i, global1[_wgslsmith_index_u32(4294967295u, 27u)], global1[_wgslsmith_index_u32(4294967295u, 27u)], 2147483647i), global2[_wgslsmith_index_u32(1u, 16u)], true, _wgslsmith_div_i32(50161i, global1[_wgslsmith_index_u32(47825u, 27u)])), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -631f) + global0.xz), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1393f, -1629f)))).zwy, true & select(true, true, true), _wgslsmith_dot_vec2_i32(countOneBits(_wgslsmith_add_vec2_i32(u_input.a, vec2<i32>(26715i, u_input.a.x))), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, global1[_wgslsmith_index_u32(4294967295u, 27u)]), vec2<i32>(-3631i, global1[_wgslsmith_index_u32(40880u, 27u)])))));
    var_1 = func_4(func_4(Struct_1(var_1.a, select(var_1.b, func_4(Struct_1(var_1.a, var_1.b, var_1.c, 1i), Struct_1(vec4<i32>(global1[_wgslsmith_index_u32(2729u, 27u)], 36186i, var_1.a.x, var_1.d), var_1.b, var_1.c, -6014i)).b, !var_1.b), var_1.c, 10856i), Struct_1((vec4<i32>(2147483647i, var_1.a.x, -4041i, var_1.d) & vec4<i32>(var_1.d, var_1.a.x, u_input.a.x, global1[_wgslsmith_index_u32(8708u, 27u)])) | ~vec4<i32>(-17328i, u_input.a.x, global1[_wgslsmith_index_u32(55177u, 27u)], 2147483647i), select(vec3<bool>(false, var_1.c, var_1.b.x), !global2[_wgslsmith_index_u32(24568u, 16u)], !global2[_wgslsmith_index_u32(19511u, 16u)]), any(vec4<bool>(var_1.c, false, var_1.c, true)), select(_wgslsmith_mod_i32(-1i, 9301i), reverseBits(-80173i), false))), Struct_1(max(abs(-vec4<i32>(global1[_wgslsmith_index_u32(1u, 27u)], 14932i, 2147483647i, var_1.a.x)), -vec4<i32>(u_input.a.x, 1i, -1i, 16782i) >> (~vec4<u32>(34185u, 4294967295u, 0u, 87070u) % vec4<u32>(32u))), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, 1u, 4294967295u), 16u)], max(-global1[_wgslsmith_index_u32(3747u, 27u)], var_1.a.x & var_1.d) != ~var_1.a.x, 10410i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(36095u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 71197u, 43559u, 0u), vec4<u32>(4294967295u, 1u, 11350u, 20012u)), 1u)), _wgslsmith_dot_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 2971u), vec3<u32>(0u, 107281u, 33136u), vec3<u32>(40428u, 42107u, 18775u)) ^ max(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(33417u, 8558u, 0u)), vec3<u32>(1u, 1u, 1u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global0.xx, _wgslsmith_f_op_vec2_f32(exp2(global0.yz)), !var_1.c)) + vec2<f32>(global0.x, _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(-global0.x)))));
}

