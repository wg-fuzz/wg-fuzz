struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: vec4<f32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<f32>,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: array<f32, 31>;

var<private> global2: Struct_1 = Struct_1(vec4<i32>(-47428i, 2147483647i, -12950i, -41989i), vec4<bool>(false, false, false, false), vec4<f32>(1200f, -1064f, 1305f, -596f), vec4<u32>(4294967295u, 0u, 0u, 14187u));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec3<f32>, arg_3: vec4<u32>) -> i32 {
    var var_0 = arg_0;
    var var_1 = Struct_1(-vec4<i32>(~(-27915i), 7651i, arg_0.a.x, countOneBits(u_input.a << (arg_3.x % 32u))), !global2.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(abs(arg_0.d.x), 31u)] - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(9920u, 31u)])), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.x))), -366f, -832f)), ~vec4<u32>(1u, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global2.d.x, u_input.d.x, 52032u, arg_0.d.x), vec4<u32>(arg_3.x, arg_3.x, global2.d.x, arg_0.d.x)), ~vec4<u32>(1u, 11548u, var_0.d.x, arg_1.x)), 0u, ~var_0.d.x));
    var_1 = Struct_1(-var_1.a ^ -_wgslsmith_mult_vec4_i32(vec4<i32>(global2.a.x, global2.a.x, global2.a.x, u_input.b), var_1.a), var_0.b, global2.c, vec4<u32>(~(arg_3.x | _wgslsmith_add_u32(u_input.c.x, 1u)), 1u, min(_wgslsmith_div_u32(global2.d.x, global2.d.x), 23320u), ~(~arg_0.d.x) | 64338u));
    var var_2 = global2.b.x && any(vec3<bool>(!all(global2.b.zz), arg_0.b.x, true));
    return -(~_wgslsmith_add_i32(firstLeadingBit(var_0.a.x) ^ u_input.b, _wgslsmith_div_i32(global2.a.x, u_input.a << (arg_1.x % 32u))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1) -> bool {
    global2 = Struct_1(vec4<i32>(u_input.b, firstTrailingBit(_wgslsmith_mult_i32(u_input.b, u_input.b)), firstTrailingBit(-_wgslsmith_clamp_i32(0i, arg_2.a.x, -13907i)), abs(abs(arg_0.a.x))), arg_2.b, vec4<f32>(_wgslsmith_f_op_f32(sign(550f)), arg_2.c.x, global2.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_2.d.x, 31u)])) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2.c.x), -1494f)))), global2.d & vec4<u32>(select(5587u, 57438u, true) << (~global2.d.x % 32u), arg_2.d.x, _wgslsmith_clamp_u32(u_input.c.x, arg_2.d.x, 11747u), ~4294967295u));
    let var_0 = arg_2.b.x;
    var var_1 = Struct_1(vec4<i32>(arg_2.a.x, u_input.b >> (_wgslsmith_dot_vec2_u32(firstLeadingBit(arg_0.d.xz), _wgslsmith_mult_vec2_u32(vec2<u32>(9314u, arg_0.d.x), vec2<u32>(arg_2.d.x, arg_0.d.x))) % 32u), -(3031i << (1u % 32u)), abs(arg_2.a.x)), !vec4<bool>(arg_2.b.x && false, var_0, arg_2.b.x, !all(vec2<bool>(false, global2.b.x))), _wgslsmith_f_op_vec4_f32(floor(global2.c)), ~arg_0.d);
    return true;
}

fn func_2(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = arg_0;
    return vec4<bool>(!func_3(arg_0, !(!vec2<bool>(var_0.b.x, arg_0.b.x)), Struct_1(_wgslsmith_add_vec4_i32(arg_0.a, var_0.a), vec4<bool>(false, arg_0.b.x, arg_0.b.x, false), vec4<f32>(arg_0.c.x, var_0.c.x, global1[_wgslsmith_index_u32(27696u, 31u)], global2.c.x), vec4<u32>(11396u, 67901u, 11131u, 24805u))), var_0.c.x >= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1556f), arg_0.c.x, var_0.b.x)), any(vec3<bool>(true, any(!vec2<bool>(false, global2.b.x)), true)), select(!((35667i > var_0.a.x) & func_3(arg_0, var_0.b.xy, arg_0)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1744f + global1[_wgslsmith_index_u32(0u, 31u)]), 147f)) > -463f, global2.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(min(~vec3<u32>(0u, global2.d.x, 32727u), vec3<u32>(~(~952u), global2.d.x, ~72919u)), vec3<u32>(u_input.d.x, 0u, global2.d.x), true && (~u_input.c.x != 1u));
    let var_1 = Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_add_i32(func_1(Struct_1(vec4<i32>(u_input.b, u_input.a, -1886i, global2.a.x), vec4<bool>(global2.b.x, false, false, global2.b.x), global2.c, global2.d), u_input.d, vec3<f32>(1791f, -565f, global2.c.x), vec4<u32>(34632u, global2.d.x, 1u, var_0.x)), 1i), -global2.a.x, _wgslsmith_div_i32(select(global2.a.x, 499i, global2.b.x), _wgslsmith_mult_i32(74647i, 1i)), global2.a.x), global2.a, ~(vec4<i32>(u_input.a, 1i, -46240i, global2.a.x) ^ vec4<i32>(22804i, global2.a.x, -9966i, global2.a.x))), func_2(Struct_1(vec4<i32>(global2.a.x, -u_input.a, u_input.a, global2.a.x), vec4<bool>(u_input.b > global2.a.x, global2.b.x, true, false), global2.c, ~(~global2.d))), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(global2.c.x)))))), -1287f, -1454f, 504f), ~vec4<u32>(select(var_0.x, 75492u, true), 51073u, max(u_input.c.x, global2.d.x), var_0.x) >> (global2.d % vec4<u32>(32u)));
    var var_2 = Struct_1(vec4<i32>(abs(max(var_1.a.x & u_input.b, 2147483647i)), u_input.b, u_input.a, _wgslsmith_add_i32(_wgslsmith_mult_i32(-23600i, i32(-1i) * -11795i), 1i)), var_1.b, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2.c.x, -1131f, 3323f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_1.d.x, 31u)] * global1[_wgslsmith_index_u32(4294967295u, 31u)]))))), abs(_wgslsmith_mod_vec4_u32(var_1.d, reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, var_0.x, 1u, 4294967295u), global2.d)))));
    let var_3 = select(vec2<bool>(func_2(Struct_1(vec4<i32>(var_1.a.x, var_1.a.x, 0i, 1i), global2.b, _wgslsmith_f_op_vec4_f32(max(var_1.c, vec4<f32>(global2.c.x, -1000f, var_1.c.x, -470f))), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, var_1.d.x, 27452u, 32485u), var_2.d, var_2.d))).x, all(!var_2.b.zx)), func_2(var_1).zw, !(!var_1.b.yw));
    global0 = _wgslsmith_mult_i32(-7323i & _wgslsmith_dot_vec4_i32(~var_2.a, _wgslsmith_add_vec4_i32(vec4<i32>(1i, global2.a.x, -28754i, global2.a.x), ~vec4<i32>(u_input.a, -5071i, 0i, var_1.a.x))), firstLeadingBit(-2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(global2.c, vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(67554u, 31u)]), 1576f, _wgslsmith_f_op_f32(exp2(global2.c.x)), _wgslsmith_f_op_f32(-1083f * global2.c.x))))), reverseBits(var_0.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(480f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(var_2.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c.x + -1635f) - -1690f)) + _wgslsmith_f_op_vec3_f32(-var_1.c.xxx)), -384f, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(var_2.c.zwy)))));
}

