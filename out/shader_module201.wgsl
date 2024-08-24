struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: i32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: vec3<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 20>;

var<private> global1: vec3<i32> = vec3<i32>(9585i, -43821i, i32(-2147483648));

var<private> global2: vec4<i32> = vec4<i32>(0i, 50077i, 0i, i32(-2147483648));

var<private> global3: vec3<bool> = vec3<bool>(false, true, true);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: Struct_1) -> vec4<i32> {
    global2 = abs(arg_2.b);
    global0 = array<vec4<u32>, 20>();
    global2 = vec4<i32>(14304i, u_input.b | arg_2.b.x, _wgslsmith_add_i32(u_input.b, countOneBits(arg_2.d)), u_input.b);
    global0 = array<vec4<u32>, 20>();
    global0 = array<vec4<u32>, 20>();
    return abs(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, 0i, arg_2.e, global1.x) >> ((vec4<u32>(54700u, 47224u, 25098u, u_input.d) ^ global0[_wgslsmith_index_u32(109002u, 20u)]) % vec4<u32>(32u)), arg_2.b) | -_wgslsmith_mod_vec4_i32(abs(arg_2.b), arg_2.b));
}

fn func_2(arg_0: u32, arg_1: f32) -> i32 {
    let var_0 = Struct_2(_wgslsmith_sub_u32(arg_0, 0u) ^ _wgslsmith_add_u32(9373u & (29687u ^ u_input.d), arg_0 | 38132u), global1.x, Struct_1(vec4<bool>(true, any(vec3<bool>(false, false, global3.x)), true | any(vec2<bool>(true, false)), any(!vec4<bool>(global3.x, false, false, global3.x))), func_3(arg_1, all(vec4<bool>(global3.x, true, global3.x, false)), Struct_1(vec4<bool>(global3.x, false, false, global3.x), _wgslsmith_div_vec4_i32(vec4<i32>(global2.x, -20636i, global1.x, -20036i), vec4<i32>(global2.x, u_input.b, global1.x, -1i)), vec3<u32>(36953u, 0u, arg_0) << (vec3<u32>(arg_0, 51683u, 21478u) % vec3<u32>(32u)), ~u_input.b, _wgslsmith_mult_i32(-17290i, global1.x))), ~vec3<u32>(9983u, ~4294967295u, ~0u), _wgslsmith_dot_vec2_i32(abs(global2.yy), vec2<i32>(global1.x, 21536i) >> (reverseBits(u_input.c) % vec2<u32>(32u))), u_input.b), -1i, abs(~vec2<u32>(u_input.a, 4294967295u) << (~firstLeadingBit(u_input.c) % vec2<u32>(32u))));
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 912f, -1000f, 926f)))))))));
    global2 = var_0.c.b;
    global0 = array<vec4<u32>, 20>();
    var var_2 = _wgslsmith_f_op_f32(abs(arg_1));
    return global2.x;
}

fn func_1(arg_0: vec2<f32>) -> vec3<f32> {
    var var_0 = vec4<i32>(~global1.x | global2.x, _wgslsmith_sub_i32(global1.x, -2147483647i), func_2(~1u, arg_0.x), global1.x);
    var var_1 = var_0.x;
    let var_2 = max(~u_input.a, u_input.d);
    let var_3 = ~firstLeadingBit(~var_2);
    var_0 = max(-min(vec4<i32>(-615i, i32(-1i) * -2147483647i, global2.x, -1i), func_3(-377f, global3.x & true, Struct_1(vec4<bool>(true, true, true, global3.x), vec4<i32>(u_input.b, 1i, -1i, -25008i), vec3<u32>(u_input.d, u_input.a, 4294967295u), -4026i, global2.x))), ~firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, global2.x, global2.x, 0i), ~vec4<i32>(u_input.b, var_0.x, global1.x, 41626i))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(ceil(775f)), _wgslsmith_div_f32(arg_0.x, -720f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, arg_0.x), vec3<f32>(-519f, arg_0.x, -1000f)))) - vec3<f32>(-996f, _wgslsmith_f_op_f32(-251f * arg_0.x), 1f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-154f, -1345f)), vec2<f32>(_wgslsmith_f_op_f32(159f - 1212f), -134f)))));
    var var_1 = -(~global2.x) | u_input.b;
    var var_2 = Struct_1(vec4<bool>(global3.x, false, global3.x, any(vec3<bool>(true, true, true))), max(vec4<i32>(-global2.x >> (32565u % 32u), u_input.b, (-31866i & global1.x) | (i32(-1i) * -27236i), u_input.b >> (u_input.c.x % 32u)), ~vec4<i32>(u_input.b, ~global2.x, -1i, global2.x)), ~_wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(7096u, 32276u, 96917u)), (vec3<u32>(58200u, u_input.d, 45270u) << (vec3<u32>(0u, u_input.c.x, u_input.d) % vec3<u32>(32u))) & vec3<u32>(u_input.d, 24194u, u_input.d)), global2.x, _wgslsmith_mod_i32(firstTrailingBit(~u_input.b), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(-vec2<i32>(-2147483647i, global2.x), firstTrailingBit(global1.yy)), (global1.yy << (vec2<u32>(u_input.c.x, u_input.a) % vec2<u32>(32u))) << (_wgslsmith_div_vec2_u32(u_input.c, u_input.c) % vec2<u32>(32u)))));
    global2 = vec4<i32>(_wgslsmith_dot_vec4_i32(var_2.b, vec4<i32>(abs(-21710i), ~_wgslsmith_sub_i32(var_2.d, var_2.b.x), -var_2.b.x, u_input.b)), -26029i, _wgslsmith_sub_i32(2147483647i, _wgslsmith_mod_i32(max(var_2.d, 2147483647i), 0i)) << (_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.d, u_input.a), u_input.c, false), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.c.x, 1u), u_input.c)), 0u) % 32u), reverseBits(global2.x));
    let var_3 = Struct_2(72011u, 7956i, Struct_1(var_2.a, var_2.b, var_2.c, -global2.x, global1.x), abs(~(-global1.x)), (vec2<u32>(_wgslsmith_sub_u32(0u, var_2.c.x), firstLeadingBit(1u)) & (u_input.c & (var_2.c.xy >> (var_2.c.xy % vec2<u32>(32u))))) | _wgslsmith_clamp_vec2_u32(u_input.c, ~select(u_input.c, vec2<u32>(var_2.c.x, 1u), true), ~(vec2<u32>(8477u, 0u) >> (vec2<u32>(u_input.c.x, u_input.a) % vec2<u32>(32u)))));
    let var_4 = var_3.c.a.x;
    global2 = _wgslsmith_clamp_vec4_i32(~vec4<i32>(abs(func_3(252f, var_2.a.x, var_3.c).x), 24751i, -39951i, 1i), select(_wgslsmith_sub_vec4_i32(func_3(-1534f, var_2.a.x, var_3.c), ~(~var_2.b)), vec4<i32>(global2.x, 30110i, _wgslsmith_sub_i32(_wgslsmith_div_i32(global2.x, u_input.b), -2614i << (var_2.c.x % 32u)), ~(-17139i)), 1u >= var_3.c.c.x), reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(25852i, ~0i, ~var_3.c.b.x, func_2(104780u, -387f)), -var_3.c.b)));
    global3 = select(var_3.c.a.zzw, vec3<bool>(true, var_2.a.x, var_0.x > _wgslsmith_f_op_f32(-var_0.x)), !(!vec3<bool>(!var_4, var_3.c.a.x, true)));
    let x = u_input.a;
    s_output = StorageBuffer(62011u, -2071f, global0[_wgslsmith_index_u32(59994u, 20u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-155f, _wgslsmith_f_op_f32(var_0.x - var_0.x), _wgslsmith_f_op_f32(floor(-625f)))))), global1.xz);
}

