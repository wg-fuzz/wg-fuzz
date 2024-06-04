struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<i32>) -> i32 {
    let var_0 = Struct_1(3u, abs(vec3<i32>(833i, _wgslsmith_add_i32(~arg_3.x, i32(-1i) * -7151i), -10879i)), ~1u);
    var var_1 = _wgslsmith_mod_vec2_i32(~vec2<i32>(~arg_1.b.x, firstLeadingBit(1i)), arg_1.b.xy);
    var var_2 = arg_0.x;
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1623f, _wgslsmith_f_op_f32(-arg_0.x), arg_0.x));
    var_1 = vec2<i32>(arg_1.b.x, _wgslsmith_dot_vec2_i32(arg_2.b.xz, abs(~vec2<i32>(var_0.b.x, 337i))));
    return -1i;
}

fn func_2(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = Struct_1(arg_2.c, arg_2.b, _wgslsmith_mod_u32(~u_input.c.x, ~_wgslsmith_add_u32(u_input.d, ~4294967295u)));
    let var_1 = var_0;
    let var_2 = _wgslsmith_mod_u32(arg_1, _wgslsmith_mult_u32(~arg_1, ~(~83822u)));
    let var_3 = vec4<i32>(-1i) * -(~(~arg_0) ^ -_wgslsmith_mult_vec4_i32(u_input.a, arg_0));
    var var_4 = Struct_1(var_0.a, -(~vec3<i32>(-var_1.b.x, func_3(vec3<f32>(-1000f, -810f, -1877f), Struct_1(4294967295u, vec3<i32>(1i, 2147483647i, -78875i), 15280u), Struct_1(1u, arg_0.wyz, arg_2.a), vec3<i32>(19779i, -1i, var_1.b.x)), countOneBits(var_3.x))), var_0.a);
    return vec3<bool>(!any(vec4<bool>(all(vec3<bool>(false, false, false)), true, select(true, true, true), false)), !all(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false))) || false, !(all(vec2<bool>(true, true)) | any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false))));
}

fn func_4(arg_0: bool, arg_1: vec2<i32>, arg_2: vec2<i32>, arg_3: f32) -> Struct_1 {
    var var_0 = Struct_1(23262u, abs(-u_input.a.yyw), min(11415u, countOneBits(u_input.d) << (1u % 32u)) >> (u_input.c.x % 32u));
    var_0 = Struct_1(4294967295u, vec3<i32>(-func_3(vec3<f32>(830f, 107f, -888f), Struct_1(u_input.c.x, u_input.a.wyy, u_input.d), Struct_1(u_input.c.x, vec3<i32>(u_input.a.x, arg_1.x, -32824i), var_0.a), u_input.a.wyy), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b.x, 0i) ^ u_input.a.zz, _wgslsmith_clamp_vec2_i32(var_0.b.yy, vec2<i32>(-1i, u_input.a.x), vec2<i32>(arg_1.x, 38168i))), -max(arg_1.x, -1i)) | vec3<i32>(arg_1.x, _wgslsmith_add_i32(-21028i, var_0.b.x), 27771i), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.d, u_input.c.x, u_input.c.x, var_0.a) & vec4<u32>(var_0.a, u_input.c.x, 4294967295u, ~var_0.c), ~u_input.c));
    var var_1 = Struct_1(52814u, vec3<i32>(-1i, arg_2.x, _wgslsmith_mod_i32(_wgslsmith_sub_i32(-45811i, -u_input.b.x), 2147483647i)), 37023u);
    var var_2 = abs(vec3<u32>(var_0.a, var_0.c ^ _wgslsmith_div_u32(~60064u, ~var_0.c), ~0u));
    var_1 = Struct_1(1u, vec3<i32>(-1i) * -var_0.b, ~u_input.d);
    return Struct_1(firstLeadingBit(_wgslsmith_mod_u32(min(reverseBits(0u), _wgslsmith_add_u32(42364u, 7958u)), _wgslsmith_mod_u32(reverseBits(4294967295u), firstLeadingBit(var_2.x)))), min(~firstTrailingBit(u_input.a.yxy), vec3<i32>(_wgslsmith_add_i32(arg_1.x, 2147483647i) << (1u % 32u), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.b.x, var_0.b.x), var_1.b.xx), -vec2<i32>(-2147483647i, 6699i)), -1i)), var_1.a);
}

fn func_5(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = vec3<i32>(-26976i, arg_0, _wgslsmith_div_i32(arg_1.b.x, 2147483647i));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(1758f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1546f - -377f))) + _wgslsmith_f_op_f32(trunc(-221f)))), 1241f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -618f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-363f)) - _wgslsmith_f_op_f32(f32(-1f) * -1773f)) * -1000f)));
    var_0 = reverseBits(vec3<i32>(_wgslsmith_sub_i32(max(u_input.b.x, ~var_0.x), 24825i), select(i32(-1i) * -33314i, 14154i, var_1.x >= -1685f) >> (~reverseBits(99049u) % 32u), _wgslsmith_add_i32(func_4(true, vec2<i32>(arg_1.b.x, u_input.a.x), u_input.a.wz, 174f).b.x | 2147483647i, -(arg_0 | arg_0))));
    var var_2 = -1715f;
    var_0 = arg_1.b;
    return func_4(!any(func_2(-u_input.a, 0u, func_4(true, vec2<i32>(arg_0, arg_1.b.x), vec2<i32>(-1i, 1i), -238f)).xy), var_0.zy, _wgslsmith_mult_vec2_i32(~abs(~vec2<i32>(arg_1.b.x, arg_0)), ~vec2<i32>(34574i, arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + var_1.x));
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1f, -1442f, _wgslsmith_f_op_f32(trunc(1295f)), _wgslsmith_f_op_f32(f32(-1f) * -645f))));
    var_0 = vec4<f32>(-1295f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(min(var_0.x, var_0.x)))))), -454f, _wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-496f, 760f) + _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(745f + var_0.x))), (_wgslsmith_f_op_f32(var_0.x - 1000f) != var_0.x) & (all(vec3<bool>(false, false, true)) & true))));
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-131f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_0.x, var_0.x)), 471f)), 384f, _wgslsmith_f_op_f32(trunc(923f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(188f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * 1135f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * -159f)), 157f)));
    var var_1 = func_5(2147483647i, func_4(!any(func_2(vec4<i32>(u_input.b.x, 42888i, -13125i, u_input.a.x), 1u, Struct_1(0u, vec3<i32>(u_input.a.x, -92434i, 44i), u_input.d))), -firstTrailingBit(u_input.b), reverseBits(u_input.a.yz), var_0.x));
    var var_2 = func_4(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec4<bool>(true, false, false, false)), true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false))))), -var_1.b.xx, _wgslsmith_mult_vec2_i32(~vec2<i32>(-49830i, u_input.a.x), ~(-vec2<i32>(1i, u_input.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -654f));
    return _wgslsmith_mod_u32(38690u, 6803u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(func_1(), func_4(all(vec3<bool>(true, true, true)), abs(u_input.b), vec2<i32>(-30304i, u_input.a.x) >> (~(~u_input.c.wz) % vec2<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(269f, 1492f, false)), 1f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1151f)) - _wgslsmith_f_op_f32(-1163f + 1798f)))).b, (~(~23004u) & _wgslsmith_sub_u32(abs(u_input.d), _wgslsmith_add_u32(u_input.d, u_input.c.x))) ^ _wgslsmith_mult_u32(~(u_input.c.x | u_input.d), _wgslsmith_add_u32(~47175u, u_input.d | 1u)));
    var var_1 = Struct_1(58271u, -(countOneBits(~vec3<i32>(var_0.b.x, 7018i, -2147483647i)) >> (u_input.c.xzx % vec3<u32>(32u))), 4294967295u ^ ~u_input.c.x);
    var_1 = var_0;
    let var_2 = ~u_input.c;
    let var_3 = Struct_1(~u_input.c.x, -abs(~_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.b.x, 1116i, u_input.b.x), u_input.a.zxw)), func_5(1i, var_0).a);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c, max(max(var_0.b.x, 0i), var_0.b.x), vec3<i32>(~2147483647i, countOneBits(select(1i, var_1.b.x, true)), min(func_5(_wgslsmith_mult_i32(-2764i, -33722i), var_3).b.x, 0i)));
}

