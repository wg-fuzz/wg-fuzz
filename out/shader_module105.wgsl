struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26>;

var<private> global1: vec4<i32> = vec4<i32>(0i, 2147483647i, 1i, -7009i);

var<private> global2: array<vec2<f32>, 4>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> vec4<f32> {
    let var_0 = arg_1;
    global1 = vec4<i32>(~global1.x, i32(-1i) * -1i, ~(-2147483647i), u_input.b.x);
    var var_1 = -(~select(reverseBits(vec4<i32>(-44006i, 1i, u_input.b.x, global1.x)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, global1.x, u_input.b.x, 0i)), !vec4<bool>(var_0.a, false, true, true)) >> (vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 14444u), arg_1.b.zy), ~arg_1.b.x >> (~arg_0 % 32u), ~arg_1.b.x, _wgslsmith_div_u32(u_input.a, 1u)) % vec4<u32>(32u)));
    let var_2 = max(vec2<u32>(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, var_0.b.x), arg_1.b.yy)), var_0.b.wz) >> ((vec2<u32>(0u, _wgslsmith_mult_u32(firstLeadingBit(arg_0), 1u)) | ~vec2<u32>(u_input.a, ~0u)) % vec2<u32>(32u));
    let var_3 = -370f;
    return _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1835f, var_3, 584f, var_3) * vec4<f32>(382f, var_3, 2034f, var_3))))))));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(min(~(~u_input.a), ~reverseBits(u_input.a)), Struct_1(arg_1.x != global1.x, vec4<u32>(~4294967295u, 1u, u_input.a >> (80210u % 32u), ~u_input.a)))));
    global1 = vec4<i32>(~(-_wgslsmith_dot_vec3_i32(arg_0 ^ vec3<i32>(u_input.b.x, global1.x, 25692i), arg_1)), -1i | arg_1.x, reverseBits(arg_0.x), global1.x);
    let var_1 = !all(vec2<bool>(all(vec3<bool>(false, true, true)), _wgslsmith_f_op_f32(arg_2 - 1068f) <= _wgslsmith_f_op_f32(-var_0.x)));
    var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), -1000f, _wgslsmith_f_op_f32(min(var_0.x, var_0.x)), _wgslsmith_f_op_f32(trunc(var_0.x))))) - vec4<f32>(-733f, _wgslsmith_f_op_f32(f32(-1f) * -1076f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f + arg_2), _wgslsmith_f_op_f32(var_0.x - arg_2))))), vec4<f32>(arg_2, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2), 782f), _wgslsmith_f_op_f32(-1f)), 706f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec4_f32(func_3(0u, global0[_wgslsmith_index_u32(1u, 26u)])).x)))))));
    let var_2 = Struct_1(any(vec2<bool>(all(vec4<bool>(var_1, false, false, true)), false)), abs(_wgslsmith_clamp_vec4_u32(reverseBits(~vec4<u32>(u_input.a, u_input.a, 1u, 3140u)), ~(~vec4<u32>(u_input.a, u_input.a, u_input.a, 1u)), abs(vec4<u32>(28125u, u_input.a, u_input.a, 4294967295u)))));
    return Struct_1(false, vec4<u32>(1u, countOneBits(var_2.b.x >> ((var_2.b.x | u_input.a) % 32u)), _wgslsmith_sub_u32(~u_input.a, 63299u), ~4294967295u));
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    var var_0 = !vec2<bool>(true, (any(vec2<bool>(arg_1, false)) & arg_0.a) & false);
    global1 = vec4<i32>(u_input.b.x, -54793i, global1.x, i32(-1i) * -_wgslsmith_add_i32(abs(u_input.b.x), u_input.b.x));
    var var_1 = 4756i;
    var_1 = -u_input.b.x;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -581f))) >= _wgslsmith_f_op_f32(1296f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(181f + -1838f) + _wgslsmith_f_op_f32(min(-1000f, -405f)))), firstTrailingBit(vec4<u32>(~arg_0.b.x, arg_0.b.x | 75811u, arg_0.b.x, _wgslsmith_mod_u32(arg_0.b.x, u_input.a)) & min(_wgslsmith_mult_vec4_u32(arg_0.b, vec4<u32>(arg_0.b.x, 1u, u_input.a, arg_0.b.x)), ~vec4<u32>(u_input.a, u_input.a, arg_0.b.x, u_input.a))));
    return Struct_1(!all(vec3<bool>(func_2(vec3<i32>(-23196i, -12342i, global1.x), global1.zxx, 606f).a, all(vec3<bool>(false, arg_0.a, false)), var_2.a)), _wgslsmith_sub_vec4_u32(arg_0.b, vec4<u32>(var_2.b.x, _wgslsmith_clamp_u32(arg_0.b.x | 9592u, 1u, reverseBits(1u)), 0u, ~min(var_2.b.x, var_2.b.x))));
}

fn func_5(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = global0[_wgslsmith_index_u32(~117002u, 26u)];
    global1 = vec4<i32>(global1.x, _wgslsmith_dot_vec2_i32(u_input.b, u_input.b), firstTrailingBit(-23006i), firstLeadingBit(global1.x));
    let var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1f, 1f, 1f, 1f))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(var_0.b.x, arg_0)).x), 1369f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -862f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(197f)), _wgslsmith_f_op_f32(1288f + 657f))))));
    return ~(arg_0.b << (~arg_0.b % vec4<u32>(32u)));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: vec3<bool>) -> i32 {
    global0 = array<Struct_1, 26>();
    global2 = array<vec2<f32>, 4>();
    let var_0 = select(!vec3<bool>(~u_input.a < 44785u, true, false), vec3<bool>(all(select(select(vec4<bool>(true, true, true, false), vec4<bool>(arg_1, arg_0, arg_1, arg_0), true), select(vec4<bool>(false, arg_0, arg_0, false), vec4<bool>(true, arg_2.x, false, arg_2.x), vec4<bool>(false, arg_0, arg_2.x, arg_2.x)), false)), all(!vec2<bool>(arg_0, arg_2.x)), true), arg_0);
    global1 = -vec4<i32>(~(-global1.x), -3184i, _wgslsmith_clamp_i32(-global1.x, ~u_input.b.x, u_input.b.x), u_input.b.x) >> (~func_5(func_4(func_2(global1.xyy, global1.wxw, 1941f), all(vec4<bool>(true, var_0.x, arg_1, true)))) % vec4<u32>(32u));
    let var_1 = true;
    return -2147483647i << (_wgslsmith_mod_u32(_wgslsmith_sub_u32(func_2(vec3<i32>(-16975i, global1.x, -2147483647i) | global1.zxw, -vec3<i32>(0i, global1.x, 1i), _wgslsmith_f_op_f32(abs(150f))).b.x, 0u), abs(~u_input.a)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(all(vec3<bool>(true, true, !any(vec2<bool>(false, false)))), ~(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 30588u, 1u, u_input.a), vec4<u32>(u_input.a, u_input.a, 43809u, u_input.a))));
    global1 = _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_div_i32(-global1.x, 1i), -32118i ^ ~u_input.b.x, u_input.b.x, _wgslsmith_clamp_i32(u_input.b.x, _wgslsmith_mod_i32(global1.x, ~(-37735i)), func_1(true, false, vec3<bool>(true, true, true)))), vec4<i32>(global1.x, u_input.b.x, u_input.b.x, max(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-23548i, global1.x, u_input.b.x, global1.x), vec4<i32>(-19983i, global1.x, 1i, u_input.b.x), vec4<i32>(global1.x, u_input.b.x, -20834i, 1i)), -vec4<i32>(u_input.b.x, global1.x, u_input.b.x, 13545i)), 2147483647i)));
    var var_1 = 35504i;
    var var_2 = Struct_1(-488f >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -123f) + _wgslsmith_div_f32(-1393f, 1835f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1141f)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))), vec4<u32>(_wgslsmith_add_u32(u_input.a, u_input.a), ~var_0.b.x, 4294967295u, var_0.b.x));
    var var_3 = false;
    let x = u_input.a;
    s_output = StorageBuffer(global1.x | 6167i, -791f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-513f - 2486f), _wgslsmith_f_op_f32(2380f * -1810f), 1478f)) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1f, 1f, 1f)))), u_input.b.x);
}

