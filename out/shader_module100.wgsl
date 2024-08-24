struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: bool,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: bool,
    e: f32,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec4<f32>,
    b: f32,
    c: vec4<u32>,
    d: vec4<bool>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 5767i;

var<private> global1: bool;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: vec3<f32>) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x));
    let var_1 = reverseBits(_wgslsmith_mult_i32(abs(0i), select(-u_input.a.x, abs(-14235i), true && arg_1.a.c))) & countOneBits(_wgslsmith_div_i32(-u_input.a.x, 1i) & -38388i);
    var var_2 = !(!any(select(!vec2<bool>(true, arg_1.a.c), vec2<bool>(arg_1.a.c, arg_1.a.c), all(vec4<bool>(false, arg_1.a.c, false, arg_1.a.c)))));
    var_2 = true;
    let var_3 = abs(_wgslsmith_mult_vec2_u32(arg_0.xy & ~firstLeadingBit(arg_0.wy), arg_0.wz));
    return -arg_1.a.a.a;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<f32>) -> Struct_5 {
    var var_0 = Struct_3(arg_0.x, arg_0.x, Struct_1(_wgslsmith_div_vec3_i32(func_3(~vec4<u32>(arg_0.x, 0u, arg_0.x, 33615u), Struct_4(Struct_2(Struct_1(vec3<i32>(-1i, -1i, u_input.a.x), vec4<f32>(-492f, -2461f, 805f, arg_1.x)), vec2<i32>(45563i, 0i), false)), _wgslsmith_f_op_vec3_f32(abs(arg_1))), reverseBits(vec3<i32>(0i, u_input.a.x, u_input.a.x)) & (vec3<i32>(2147483647i, u_input.a.x, u_input.a.x) & vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.x, 915f, -180f, arg_1.x), vec4<f32>(arg_1.x, 382f, arg_1.x, arg_1.x)))))), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    var var_1 = Struct_1(abs(var_0.c.a), vec4<f32>(var_0.e, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e) + -316f))), _wgslsmith_f_op_f32(ceil(var_0.c.b.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.c.b.x - 920f), arg_1.x)))));
    var var_2 = ~var_0.b;
    let var_3 = Struct_2(var_0.c, vec2<i32>(var_0.c.a.x, var_0.c.a.x), true);
    var var_4 = 37645u;
    return Struct_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.c.b.x), _wgslsmith_f_op_f32(-arg_1.x), -2115f, arg_1.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.b.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1543f) - _wgslsmith_f_op_f32(-var_1.b.x))), _wgslsmith_f_op_f32(2252f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1322f), _wgslsmith_f_op_f32(floor(882f)), false | var_0.d))))), vec4<u32>(var_0.b, 1u, ~45788u, abs(reverseBits(1u & u_input.c))), vec4<bool>(!all(vec4<bool>(true, true, true, true)), (4294967295u >> (select(28677u, var_0.b, var_0.d) % 32u)) >= _wgslsmith_mult_u32(arg_0.x, 72376u | u_input.c), var_0.d, true), var_1.a);
}

fn func_1(arg_0: u32) -> Struct_4 {
    let var_0 = func_2(~(~select(vec3<u32>(arg_0, arg_0, 39124u) << (vec3<u32>(0u, 31010u, arg_0) % vec3<u32>(32u)), firstLeadingBit(vec3<u32>(u_input.b, u_input.b, arg_0)), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(1372f + _wgslsmith_f_op_f32(-379f * -1276f)), _wgslsmith_f_op_f32(sign(-1000f)))));
    let var_1 = arg_0;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.b))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.b, var_0.a.x)))) + 557f), _wgslsmith_f_op_f32(sign(1875f)), -164f, _wgslsmith_f_op_f32(abs(-387f)));
    var_2 = var_0.a;
    var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(var_0.b)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-869f - 1655f)))), _wgslsmith_div_f32(387f, var_2.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    return Struct_4(Struct_2(Struct_1(select(var_0.e, _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, u_input.a.x, var_0.e.x), vec3<i32>(14821i, u_input.a.x, u_input.a.x)), !var_0.d.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.a - var_0.a))), _wgslsmith_mult_vec2_i32(u_input.a, _wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(var_0.e.xy, vec2<i32>(var_0.e.x, 0i), u_input.a), abs(vec2<i32>(var_0.e.x, 16709i)), ~vec2<i32>(2354i, 1i))), false));
}

fn func_4(arg_0: Struct_4, arg_1: vec4<u32>) -> i32 {
    global0 = -7646i;
    global1 = (func_2(_wgslsmith_clamp_vec3_u32(vec3<u32>(4146u, 0u, arg_1.x) | arg_1.xyw, vec3<u32>(arg_1.x, arg_1.x, 87915u) >> (arg_1.xyw % vec3<u32>(32u)), vec3<u32>(4294967295u, 20718u, arg_1.x)), arg_0.a.a.b.yzx).e.x <= u_input.a.x) && true;
    global1 = func_1(~(~(select(u_input.c, 107625u, arg_0.a.c) ^ 1u))).a.c;
    global0 = ~(~(-countOneBits(min(u_input.a.x, arg_0.a.b.x))));
    var var_0 = vec2<u32>(u_input.c, ~_wgslsmith_add_u32(~(~u_input.c), ~(~19105u)));
    return arg_0.a.a.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(528f, -568f, 2111f, -1795f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, 357f, -905f, -741f), vec4<f32>(924f, -411f, 502f, 515f), false)) * vec4<f32>(1f, 1f, 1f, 1f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1540f, -1263f, -967f, -630f)))), !select(true, true, true))));
    var var_1 = var_0.zxy;
    global0 = ~firstTrailingBit(abs(func_4(func_1(u_input.b), ~vec4<u32>(11848u, u_input.c, 1u, u_input.b))));
    let var_2 = func_2(vec3<u32>(1u, 1u, u_input.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.wyy * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.x, -1000f, var_1.x)))) - _wgslsmith_div_vec3_f32(var_0.zwx, var_0.yww)));
    let var_3 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.yww))));
    let var_4 = reverseBits(var_2.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(0i));
}

