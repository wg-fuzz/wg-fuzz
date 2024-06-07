struct Struct_1 {
    a: bool,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(45736u, 0u, 36419u);

var<private> global1: Struct_1 = Struct_1(true, vec2<f32>(734f, -927f));

var<private> global2: array<f32, 12>;

var<private> global3: i32;

var<private> global4: array<vec3<i32>, 4>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1670f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.x + global1.b.x) - global2[_wgslsmith_index_u32(~global0.x, 12u)])) + 356f));
    global0 = u_input.e.xyy;
    global3 = -2147483647i;
    let var_1 = Struct_1(false, _wgslsmith_f_op_vec2_f32(-global1.b));
    let var_2 = abs(firstTrailingBit(~select(vec4<i32>(16639i, u_input.d, -1i, 0i), vec4<i32>(0i, 0i, -3336i, u_input.d), false) & select(~vec4<i32>(u_input.c.x, 2147483647i, 39372i, -14201i), vec4<i32>(8718i, 0i, -87i, u_input.d), true)));
    return var_1;
}

fn func_2(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_1, arg_3: vec4<bool>) -> Struct_1 {
    let var_0 = 2799u;
    var var_1 = vec4<bool>(!any(vec4<bool>(false, true, arg_3.x, true)) & arg_3.x, arg_3.x, arg_2.a, arg_2.a);
    var var_2 = Struct_1(true, arg_0);
    let var_3 = u_input.d;
    global1 = func_1();
    return arg_2;
}

fn func_3() -> f32 {
    let var_0 = global1.a;
    let var_1 = abs(~(vec3<u32>(1u, u_input.e.x, ~4294967295u) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, global0.x, 4294967295u), ~vec3<u32>(u_input.b, u_input.a.x, u_input.e.x))));
    var var_2 = func_1();
    let var_3 = u_input.c.x ^ -abs(u_input.c.x);
    let var_4 = _wgslsmith_div_i32(var_3, _wgslsmith_div_i32(max(-45536i, ~min(-1i, -1i)), u_input.c.x));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.x - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.x) + 335f), _wgslsmith_f_op_f32(-2913f * -1000f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(sign(-638f)))) + 559f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 7090u >> (0u % 32u);
    global0 = ~_wgslsmith_clamp_vec3_u32(u_input.a.wxz, ~(~select(u_input.e.xxw, vec3<u32>(8538u, 28292u, global0.x), vec3<bool>(true, global1.a, global1.a))), u_input.e.zwx | vec3<u32>(global0.x, abs(15588u), _wgslsmith_mult_u32(u_input.e.x, 4954u)));
    var var_1 = _wgslsmith_f_op_f32(sign(global1.b.x));
    global2 = array<f32, 12>();
    global1 = func_2(global1.b, -_wgslsmith_mod_i32(-1i, _wgslsmith_clamp_i32(u_input.c.x, abs(u_input.c.x), -1i)), func_1(), vec4<bool>(!global1.a, any(vec2<bool>(any(vec2<bool>(false, true)), true)), all(!select(vec3<bool>(false, false, true), vec3<bool>(false, global1.a, global1.a), vec3<bool>(global1.a, false, true))), false));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x << (global0.x % 32u), _wgslsmith_add_vec3_u32(firstLeadingBit(_wgslsmith_div_vec3_u32(~u_input.a.wyw, u_input.a.zxy)), u_input.a.ywz), global2[_wgslsmith_index_u32(u_input.a.x, 12u)], vec3<f32>(_wgslsmith_f_op_f32(func_3()), global2[_wgslsmith_index_u32(~(~max(17513u, 11333u)), 12u)], _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(abs(_wgslsmith_add_u32(u_input.a.x, 2495u)), 12u)]))));
}

