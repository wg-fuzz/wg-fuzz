struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: i32,
    d: vec2<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 28>;

var<private> global1: i32 = i32(-2147483648);

var<private> global2: array<bool, 1> = array<bool, 1>(false);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1) -> bool {
    let var_0 = _wgslsmith_mod_u32(u_input.a, ~u_input.a);
    var var_1 = vec3<u32>(arg_0.x ^ _wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.a, max(1u, 1u)), _wgslsmith_mod_u32(arg_0.x, _wgslsmith_sub_u32(u_input.a, arg_0.x))), ~u_input.a, 1u);
    global2 = array<bool, 1>();
    var var_2 = !vec2<bool>(arg_1.a, ~min(var_0, 65510u) >= (~u_input.a << (~var_1.x % 32u)));
    let var_3 = arg_1;
    return var_2.x;
}

fn func_2(arg_0: vec3<u32>) -> vec3<i32> {
    global1 = abs(firstLeadingBit(_wgslsmith_div_i32(-_wgslsmith_sub_i32(-14821i, 25696i), 1i)));
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(4294967295u, 28u)])) - _wgslsmith_f_op_f32(-773f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 28u)]))))));
    var var_1 = Struct_2(abs(firstTrailingBit(vec2<u32>(0u, arg_0.x))) >> (~(arg_0.yx | (vec2<u32>(4294967295u, arg_0.x) << (arg_0.xy % vec2<u32>(32u)))) % vec2<u32>(32u)), Struct_1(func_3(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 4294967295u, arg_0.x), vec3<u32>(4294967295u, arg_0.x, 57198u)), Struct_1(global2[_wgslsmith_index_u32(select(0u, 4294967295u, false), 1u)]))), Struct_1(true));
    return vec3<i32>(_wgslsmith_clamp_i32(-5500i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, countOneBits(84363i)), vec2<i32>(_wgslsmith_mod_i32(17493i, 1i), _wgslsmith_dot_vec4_i32(vec4<i32>(4952i, 18056i, -2147483647i, -29455i), vec4<i32>(2147483647i, 1i, 2147483647i, 2147483647i)))), min(0i, ~_wgslsmith_add_i32(-2147483647i, 2147483647i))), _wgslsmith_add_i32(-15936i, ~_wgslsmith_add_i32(1i, i32(-1i) * -32073i)), 0i);
}

fn func_1(arg_0: vec3<bool>) -> i32 {
    global0 = array<f32, 28>();
    global1 = _wgslsmith_dot_vec4_i32(vec4<i32>(abs(_wgslsmith_div_i32(-5685i, -1700i)), ~firstLeadingBit(-24703i), _wgslsmith_div_i32(min(-1714i, -16985i), ~(-1501i)), -8171i) & min(vec4<i32>(-1i, _wgslsmith_add_i32(2147483647i, 0i), -2147483647i, 0i), -(vec4<i32>(36573i, -2147483647i, -2147483647i, -25837i) >> (vec4<u32>(u_input.a, 33324u, 64348u, 0u) % vec4<u32>(32u)))), vec4<i32>(~(_wgslsmith_mod_i32(1i, 10175i) & _wgslsmith_dot_vec3_i32(vec3<i32>(11024i, 2147483647i, 2147483647i), vec3<i32>(-44851i, 1i, -9839i))), 28520i, _wgslsmith_add_i32(1i, ~(~0i)), 0i));
    global2 = array<bool, 1>();
    var var_0 = -_wgslsmith_sub_vec3_i32(-(~vec3<i32>(1i, 71026i, -2147483647i)), func_2(firstLeadingBit(vec3<u32>(39597u, u_input.a, 1u) << (vec3<u32>(u_input.a, u_input.a, 0u) % vec3<u32>(32u)))));
    return -func_2(vec3<u32>(91157u, 4294967295u, u_input.a)).x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_div_i32(func_1(!vec3<bool>(all(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 1u)], false)), true, true)), -(~abs(1i)));
    var var_0 = vec4<u32>(4294967295u, 62898u, _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), countOneBits(abs(vec2<u32>(u_input.a, 51110u))) >> (vec2<u32>(~1u, 34455u) % vec2<u32>(32u))), u_input.a);
    global0 = array<f32, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.wy, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(reverseBits(37892u), 28u)]))))), 28113u, -(-_wgslsmith_mult_vec3_i32(vec3<i32>(899i, 1i, 18303i), vec3<i32>(-37341i, -40188i, -1i)) >> (_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(10105u, u_input.a, 16707u)) % vec3<u32>(32u))));
}

