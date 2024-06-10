struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
    c: vec4<i32>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec3<i32>,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_3, arg_3: i32) -> vec2<u32> {
    global0 = Struct_1(abs(countOneBits(global0.a)));
    var var_0 = arg_2.b;
    var var_1 = -5749i;
    var var_2 = abs(_wgslsmith_add_vec2_i32(abs(vec2<i32>(17610i, 1i)), vec2<i32>(_wgslsmith_add_i32(-1702i, 1i | arg_2.c.x), _wgslsmith_add_i32(-2147483647i, 0i))));
    var var_3 = Struct_2(u_input.b.xzx);
    return global0.a;
}

fn func_2(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = (_wgslsmith_add_u32(arg_0.a.x, ~_wgslsmith_mult_u32(4294967295u, 1u)) ^ (~(57906u << (global0.a.x % 32u)) << (arg_0.a.x % 32u))) < global0.a.x;
    let var_1 = Struct_1(arg_0.a);
    let var_2 = Struct_1(~func_3(true, var_1, Struct_3(_wgslsmith_f_op_f32(-276f + -1105f), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), _wgslsmith_mult_vec4_i32(vec4<i32>(42525i, u_input.a.x, -9193i, u_input.a.x), vec4<i32>(u_input.a.x, 1i, -2147483647i, -1i)), all(vec2<bool>(true, true))), 1i));
    var var_3 = vec3<i32>(-1i) * -(abs(u_input.b.yzz & vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x)) >> (~(~vec3<u32>(7352u, 0u, 9607u)) % vec3<u32>(32u)));
    let var_4 = Struct_2(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(7364i, -1i) >> ((vec2<u32>(0u, var_2.a.x) >> (var_1.a % vec2<u32>(32u))) % vec2<u32>(32u)), firstLeadingBit(-u_input.b.zy)), _wgslsmith_mult_i32(27433i, -21804i) | -_wgslsmith_div_i32(u_input.b.x, u_input.b.x), -6924i));
    return vec4<bool>(true, true, true, true);
}

fn func_1(arg_0: bool) -> u32 {
    let var_0 = vec2<bool>(true, false);
    var var_1 = _wgslsmith_div_f32(258f, -850f);
    let var_2 = !select(vec4<bool>(var_0.x, false, true, arg_0), func_2(Struct_1(global0.a)), vec4<bool>(!all(vec4<bool>(true, arg_0, arg_0, false)), !(arg_0 || true), false, arg_0));
    let var_3 = u_input.a.x;
    var var_4 = Struct_3(_wgslsmith_f_op_f32(ceil(1468f)), !select(!(!vec3<bool>(var_0.x, true, var_2.x)), !vec3<bool>(arg_0, var_2.x, var_0.x), !(!var_2.zxy)), min(u_input.a, firstLeadingBit(vec4<i32>(-37358i, _wgslsmith_dot_vec2_i32(u_input.a.wy, u_input.a.yz), abs(u_input.b.x), 1i))), 74539i >= (firstTrailingBit(i32(-1i) * -1i) | -13321i));
    return ~global0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(all(!vec2<bool>(true, all(vec3<bool>(true, true, false)))));
    let var_1 = !(!func_2(Struct_1(firstLeadingBit(vec2<u32>(27931u, var_0)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-880f, 168f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(199f, -578f) - vec2<f32>(282f, 364f))))))));
    var_2 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), -1000f, !(!(var_1.x | true)))), _wgslsmith_f_op_f32(trunc(-357f)));
    var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-336f, var_2.x), vec2<f32>(var_2.x, 448f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(465f, var_2.x))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1478f, var_2.x) * vec2<f32>(889f, var_2.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-859f, var_2.x))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2492f, var_2.x)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, var_2.x) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, var_2.x))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-697f, -800f), vec2<f32>(1738f, var_2.x))))))));
    let var_3 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~(~vec3<u32>(40744u, 47804u, 1u))), -1337f, ~_wgslsmith_clamp_vec3_i32(max(firstTrailingBit(u_input.a.yww), ~vec3<i32>(u_input.a.x, -1i, var_3.x)), -vec3<i32>(20699i, 651i, u_input.b.x), ~(~vec3<i32>(-1i, 0i, -2147483647i))), _wgslsmith_mod_i32(u_input.a.x, ~(-34580i)), ~vec3<i32>(~(-var_3.x), _wgslsmith_sub_i32(u_input.a.x, var_3.x), min(u_input.a.x, var_3.x)));
}

