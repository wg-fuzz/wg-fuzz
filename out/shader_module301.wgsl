struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 4>;

var<private> global1: bool;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec2<f32>) -> vec4<bool> {
    var var_0 = arg_2;
    global1 = false;
    let var_1 = ~62452u;
    var var_2 = -175f;
    let var_3 = select(!vec3<bool>(true, arg_2.b, ~0u > arg_0.x), !vec3<bool>(arg_2.b, select(true, arg_2.b, arg_2.b) | any(vec2<bool>(var_0.b, true)), all(!vec3<bool>(true, true, var_0.b))), vec3<bool>(var_0.b, all(!vec3<bool>(true, var_0.b, false)), true));
    return vec4<bool>(!(!all(select(var_3, var_3, vec3<bool>(var_0.b, true, var_0.b)))), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.x - 193f) + arg_1.x)), _wgslsmith_f_op_f32(arg_1.x * -2118f) == _wgslsmith_div_f32(-971f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(737f, 1306f, var_0.b)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(280f)) + arg_3.x) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + -1000f) - _wgslsmith_f_op_f32(step(-1397f, _wgslsmith_f_op_f32(f32(-1f) * -600f)))));
}

fn func_3(arg_0: i32, arg_1: i32) -> bool {
    let var_0 = Struct_1(_wgslsmith_mod_u32(~_wgslsmith_div_u32(u_input.c.x ^ 23822u, ~u_input.c.x), u_input.c.x), select(!(!(73424u >= u_input.c.x)), false, select(select(true, true, true), any(vec3<bool>(false, false, true)), true) && all(vec4<bool>(true, false, true, true))), ~0u);
    global1 = all(!func_1(select(u_input.c.xy << (vec2<u32>(var_0.c, 2050u) % vec2<u32>(32u)), ~vec2<u32>(u_input.c.x, 15892u), !vec2<bool>(true, var_0.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1340f, -259f, 561f), vec3<f32>(364f, 651f, 1094f), var_0.b)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1292f, 1166f, -1157f))), Struct_1(reverseBits(1u), var_0.b, var_0.c), vec2<f32>(-330f, _wgslsmith_f_op_f32(abs(354f)))));
    let var_1 = var_0;
    global0 = array<vec4<u32>, 4>();
    var var_2 = _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, 2147483647i) | (vec2<i32>(u_input.b, arg_0) >> (u_input.c.xx % vec2<u32>(32u))), countOneBits(vec2<i32>(arg_0, u_input.b)), _wgslsmith_mult_vec2_i32(~u_input.a, vec2<i32>(u_input.b, arg_1))) | ~vec2<i32>(~arg_1, 42624i), ~u_input.a);
    return all(func_1(abs(u_input.c.yy & vec2<u32>(u_input.c.x, var_0.c)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-384f, 1000f, 1711f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1532f, -433f, 737f))))), Struct_1(_wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c, var_1.a, u_input.c.x, 48509u), global0[_wgslsmith_index_u32(8796u, 4u)]), 4u)], abs(vec4<u32>(var_0.c, u_input.c.x, 35985u, 43667u))), var_0.b | true, firstLeadingBit(var_1.c)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 838f) + vec2<f32>(1030f, -799f)))))).yz);
}

fn func_2(arg_0: i32) -> u32 {
    let var_0 = u_input.c.x;
    global1 = func_3(u_input.a.x, arg_0);
    global0 = array<vec4<u32>, 4>();
    global0 = array<vec4<u32>, 4>();
    global0 = array<vec4<u32>, 4>();
    return ~_wgslsmith_add_u32(0u | abs(u_input.c.x & 14480u), ~max(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 1u, var_0, 0u), vec4<u32>(4294967295u, var_0, 29413u, 0u))));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: i32, arg_3: u32) -> Struct_1 {
    var var_0 = arg_0.b;
    var var_1 = global0[_wgslsmith_index_u32(firstTrailingBit(firstLeadingBit(_wgslsmith_mult_u32(max(43775u, arg_1), u_input.c.x)) | u_input.c.x), 4u)];
    var var_2 = Struct_1(_wgslsmith_sub_u32(~_wgslsmith_clamp_u32(_wgslsmith_sub_u32(55374u, 0u), var_1.x, u_input.c.x), ~(~select(36971u, arg_3, arg_0.b))), !(arg_2 >= _wgslsmith_mult_i32(max(u_input.a.x, 0i), 1i)), 4294967295u);
    let var_3 = arg_3;
    global0 = array<vec4<u32>, 4>();
    return arg_0;
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = func_4(Struct_1(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(19704u, 35393u))), !(!arg_1.b != true), abs(73755u)), 1u, u_input.a.x, ~((4294967295u >> (u_input.c.x % 32u)) | ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, arg_1.a, u_input.c.x), vec3<u32>(u_input.c.x, arg_1.c, arg_1.c))));
    let var_1 = var_0;
    global1 = all(!(!vec4<bool>(!arg_1.b, var_0.a != var_1.a, true, true)));
    var var_2 = arg_1;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.x), 1516f, var_1.b && var_1.b)), arg_0.x, arg_0.x))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.zwz) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-657f, 307f, arg_0.x) + vec3<f32>(arg_0.x, arg_0.x, arg_0.x)))));
    return Struct_1(countOneBits(~_wgslsmith_sub_u32(0u, firstLeadingBit(var_0.a))), all(select(!select(vec2<bool>(arg_1.b, true), vec2<bool>(true, var_1.b), var_0.b), vec2<bool>(var_1.b, all(vec3<bool>(false, var_0.b, false))), vec2<bool>(select(var_1.b, true, false), u_input.c.x >= arg_1.a))), ~_wgslsmith_add_u32(max(_wgslsmith_mult_u32(1u, var_1.c), var_2.c | var_0.a), _wgslsmith_div_u32(~var_2.c, _wgslsmith_mult_u32(var_2.a, var_1.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    global1 = all(!(!select(func_1(u_input.c.zx, vec3<f32>(-256f, 209f, 585f), Struct_1(u_input.c.x, false, 52574u), vec2<f32>(-2122f, -611f)), func_1(vec2<u32>(u_input.c.x, u_input.c.x), vec3<f32>(-2328f, -1000f, 591f), Struct_1(u_input.c.x, true, 1u), vec2<f32>(1000f, 1192f)), vec4<bool>(true, true, true, true))));
    global0 = array<vec4<u32>, 4>();
    var var_1 = func_5(_wgslsmith_div_vec4_f32(vec4<f32>(-100f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -813f)), -1141f, 278f), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-985f - 1307f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(536f))), _wgslsmith_f_op_f32(step(-1658f, -967f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(867f))))), func_4(Struct_1(4294967295u, false, ~_wgslsmith_div_u32(u_input.c.x, u_input.c.x)), u_input.c.x, u_input.b, ~func_2(-u_input.b)));
    let var_2 = ~_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(23057i, u_input.b), ~u_input.b), firstTrailingBit(abs(u_input.a.x)), u_input.b, ~(-36834i)), -vec4<i32>(i32(-1i) * -22618i, -2147483647i, 1i, ~u_input.a.x), ~(vec4<i32>(-1i) * -vec4<i32>(35847i, -2147483647i, -2147483647i, u_input.a.x)));
    var_0 = _wgslsmith_mult_i32(-var_2.x, _wgslsmith_mult_i32(2147483647i, abs(-u_input.a.x)));
    let var_3 = 1u & (8114u >> (((u_input.c.x >> (22664u % 32u)) >> (36071u % 32u)) % 32u));
    var_1 = Struct_1(reverseBits(0u), var_1.b, 28477u);
    var var_4 = vec2<u32>(var_1.c, var_1.c) >> (select(_wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(1u, u_input.c.x) | vec2<u32>(15270u, 1u)), u_input.c.zy), ~reverseBits(u_input.c.zy), select(select(vec2<bool>(false, true), vec2<bool>(true, true), var_1.b), !select(vec2<bool>(false, var_1.b), vec2<bool>(false, true), vec2<bool>(true, var_1.b)), func_1(abs(u_input.c.yx), _wgslsmith_f_op_vec3_f32(vec3<f32>(1972f, 634f, -1972f) - vec3<f32>(269f, -3046f, 214f)), Struct_1(var_3, false, u_input.c.x), vec2<f32>(304f, -1000f)).xw)) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(676f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1190f + 2522f)), 1f), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1308f + 741f), 1000f, -535f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(584f, 161f, -1462f)))))));
}

