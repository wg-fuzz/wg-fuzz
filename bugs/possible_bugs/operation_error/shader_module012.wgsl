struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 27>;

var<private> global1: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> f32 {
    global1 = vec2<bool>(!all(vec2<bool>(true, true)), true);
    var var_0 = ~arg_0.c.x | u_input.b.x;
    var_0 = 1u;
    let var_1 = ~(~(~vec4<u32>(~arg_0.c.x, u_input.b.x, u_input.b.x ^ u_input.b.x, reverseBits(29766u))));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(trunc(-325f)), arg_0.d.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.b)), _wgslsmith_f_op_f32(-554f + _wgslsmith_f_op_f32(f32(-1f) * -1099f))))));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.d.b)))), _wgslsmith_f_op_f32(ceil(arg_0.d.b)), global1.x));
}

fn func_4(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_1, arg_3: vec2<f32>) -> u32 {
    var var_0 = any(select(select(select(!arg_0.xx, !arg_0.xw, !arg_0.yy), arg_0.wx, !arg_0.zy), arg_0.zz, vec2<bool>(min(u_input.a.x, u_input.a.x) != 14532i, arg_0.x)));
    let var_1 = 15215u;
    let var_2 = !(!select(!select(vec3<bool>(false, false, false), arg_0.wwx, vec3<bool>(false, false, true)), vec3<bool>(arg_0.x, all(arg_0.yyw), arg_0.x | arg_2.a), vec3<bool>(false, true, false)));
    var var_3 = 57690u;
    var_3 = 1u;
    return ~var_1;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: bool, arg_3: u32) -> vec3<u32> {
    var var_0 = vec4<u32>((1u >> (~_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(46070u, 57748u, arg_1.x)) % 32u)) ^ 0u, func_4(!vec4<bool>(true, true | arg_2, global1.x, false), -1000f, arg_0, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_2(u_input.a.x, true, vec3<u32>(arg_3, 1u, arg_1.x), arg_0), true)), arg_0.b))), u_input.b.x, reverseBits(0u));
    global0 = array<vec4<bool>, 27>();
    let var_1 = Struct_4(4294967295u | _wgslsmith_sub_u32(arg_1.x, var_0.x), false, Struct_3(Struct_1(all(select(vec3<bool>(false, global1.x, true), vec3<bool>(false, arg_2, global1.x), vec3<bool>(global1.x, true, arg_0.a))), arg_0.b), -abs(vec3<i32>(u_input.a.x, u_input.a.x, 0i)) ^ _wgslsmith_div_vec3_i32(select(u_input.a, u_input.a, global1.x), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, 7548i, u_input.a.x), vec3<i32>(36167i, u_input.a.x, -33814i))), ~var_0.zz));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.b, 1478f) - _wgslsmith_f_op_f32(func_3(Struct_2(u_input.a.x, ~arg_3 > (1u & arg_1.x), u_input.b, arg_0), any(global0[_wgslsmith_index_u32(abs(var_0.x), 27u)]))));
    global1 = vec2<bool>(arg_0.a, all(select(select(!global0[_wgslsmith_index_u32(6895u, 27u)], !global0[_wgslsmith_index_u32(112670u, 27u)], true), vec4<bool>(arg_2, true, all(vec3<bool>(arg_2, false, var_1.b)), true), vec4<bool>(arg_0.a && false, true, all(vec2<bool>(arg_2, false)), any(vec2<bool>(global1.x, true))))));
    return var_0.yyx;
}

fn func_1(arg_0: bool) -> i32 {
    var var_0 = ~_wgslsmith_dot_vec3_u32(abs(~vec3<u32>(4294967295u, 1u, u_input.b.x)) << (reverseBits(~u_input.b) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(func_2(Struct_1(global1.x, -121f), u_input.b.xz, false, ~u_input.b.x), ~u_input.b, firstTrailingBit(vec3<u32>(u_input.b.x, u_input.b.x, 0u))));
    global0 = array<vec4<bool>, 27>();
    var var_1 = ~select(select(u_input.a.xz, max(~vec2<i32>(-1i, 2147483647i), -u_input.a.xz), !vec2<bool>(global1.x, false)), u_input.a.yy, !select(vec2<bool>(true, true), vec2<bool>(global1.x, true), !arg_0));
    let var_2 = -619f;
    let var_3 = Struct_4(u_input.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2), -1435f) < var_2, Struct_3(Struct_1(false, _wgslsmith_f_op_f32(-467f * _wgslsmith_f_op_f32(-var_2))), _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_div_i32(u_input.a.x, -1i), 33366i, firstLeadingBit(-6863i)), firstTrailingBit(~u_input.a)), ~select(~u_input.b.yz, u_input.b.zz, true)));
    return abs(-_wgslsmith_sub_i32(max(firstTrailingBit(u_input.a.x), _wgslsmith_div_i32(u_input.a.x, var_3.c.b.x)), abs(reverseBits(var_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(any(select(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(4294967295u, 33057u)), vec2<u32>(32378u, u_input.b.x)), 27u)], !vec4<bool>(false, true, global1.x, global1.x), true)));
    var var_1 = Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -35473i, u_input.a.x) >> ((func_2(Struct_1(false, 172f), u_input.b.yx, false, u_input.b.x) ^ vec3<u32>(u_input.b.x, 1u, u_input.b.x)) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(countOneBits(u_input.a), ~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i), vec3<i32>(u_input.a.x, u_input.a.x, -20192i)))), any(select(!(!vec3<bool>(global1.x, false, true)), vec3<bool>(false, true, !global1.x), !all(vec4<bool>(false, global1.x, global1.x, global1.x)))), ~(~u_input.b), Struct_1(~abs(u_input.b.x) != _wgslsmith_mult_u32(u_input.b.x, _wgslsmith_div_u32(22148u, u_input.b.x)), _wgslsmith_f_op_f32(abs(-1845f))));
    var var_2 = vec2<f32>(-1849f, var_1.d.b);
    global1 = vec2<bool>(!any(select(vec3<bool>(false, global1.x, false), select(vec3<bool>(var_1.b, var_1.b, global1.x), vec3<bool>(true, global1.x, global1.x), vec3<bool>(true, true, var_1.b)), !vec3<bool>(global1.x, var_1.b, false))), var_1.b);
    let var_3 = Struct_4(_wgslsmith_dot_vec2_u32(~min(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.xx), abs(vec2<u32>(u_input.b.x, firstTrailingBit(var_1.c.x)))), (u_input.a.x != select(u_input.a.x, reverseBits(1i), true)) || true, Struct_3(var_1.d, u_input.a, vec2<u32>(1u, ~(~var_1.c.x))));
    var_1 = Struct_2(~_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a, 47226i, var_1.a) | vec3<i32>(-1i, u_input.a.x, var_1.a), var_3.c.b), ~_wgslsmith_clamp_i32(-2147483647i, 2147483647i, 2147483647i)), _wgslsmith_f_op_f32(var_1.d.b - _wgslsmith_f_op_f32(618f * _wgslsmith_f_op_f32(-var_1.d.b))) < 291f, max(reverseBits(u_input.b >> (var_1.c % vec3<u32>(32u))), vec3<u32>(~(var_3.a >> (15347u % 32u)), 4294967295u, 1u)), var_3.c.a);
    global1 = vec2<bool>(any(global0[_wgslsmith_index_u32(~var_1.c.x, 27u)]), false);
    var_1 = Struct_2(~max(u_input.a.x, -2147483647i), false, ~firstLeadingBit(~(vec3<u32>(var_1.c.x, var_3.c.c.x, var_1.c.x) ^ u_input.b)), Struct_1(any(vec2<bool>(true, true)), 592f));
    let var_4 = Struct_2(-2147483647i, false, u_input.b >> (~vec3<u32>(~var_3.c.c.x, abs(var_3.a), ~1u) % vec3<u32>(32u)), Struct_1(all(!global0[_wgslsmith_index_u32(4294967295u, 27u)]), _wgslsmith_f_op_f32(func_3(Struct_2(var_3.c.b.x, !global1.x, min(var_1.c, vec3<u32>(u_input.b.x, 4294967295u, var_1.c.x)), Struct_1(true, var_3.c.a.b)), !(!global1.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_4.d.b, -1253f, _wgslsmith_f_op_f32(149f + 532f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-3000f)) * -598f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_4.d.b), var_1.d.b));
}

