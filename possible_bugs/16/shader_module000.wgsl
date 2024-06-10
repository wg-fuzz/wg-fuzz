struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: f32,
    d: vec2<i32>,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec4<i32>,
    e: f32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-1478f, -464f, 706f, -1000f);

var<private> global1: array<Struct_4, 18> = array<Struct_4, 18>(Struct_4(Struct_1(false)), Struct_4(Struct_1(false)), Struct_4(Struct_1(false)), Struct_4(Struct_1(true)), Struct_4(Struct_1(false)), Struct_4(Struct_1(true)), Struct_4(Struct_1(true)), Struct_4(Struct_1(false)), Struct_4(Struct_1(true)), Struct_4(Struct_1(true)), Struct_4(Struct_1(false)), Struct_4(Struct_1(false)), Struct_4(Struct_1(true)), Struct_4(Struct_1(false)), Struct_4(Struct_1(false)), Struct_4(Struct_1(true)), Struct_4(Struct_1(false)), Struct_4(Struct_1(false)));

var<private> global2: u32 = 0u;

var<private> global3: Struct_1;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: vec2<f32>, arg_3: bool) -> f32 {
    global0 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1561f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(arg_2.x))))), _wgslsmith_f_op_f32(step(arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(464f + 562f) - _wgslsmith_f_op_f32(-1146f + -1509f)))))));
    return _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(380f, _wgslsmith_f_op_f32(sign(global0.x)))), 2379f), arg_2.x, any(select(select(vec4<bool>(true, true, arg_1.x, arg_1.x), select(vec4<bool>(arg_1.x, false, false, arg_1.x), vec4<bool>(false, arg_1.x, arg_3, true), false), arg_3 | arg_3), !(!vec4<bool>(arg_3, false, true, true)), vec4<bool>(arg_3, true, arg_1.x, false)))));
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: Struct_4, arg_3: f32) -> f32 {
    global0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1056f)) + -512f), arg_3, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.e, 1126f, 2046f, 1058f) + vec4<f32>(832f, -878f, 1000f, arg_0)), vec3<bool>(false, arg_2.a.a, false), global0.xw, true && arg_2.a.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_3)) * 636f))))));
    let var_0 = Struct_1(false);
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0, arg_1.e, 1000f, global0.x), vec4<f32>(global0.x, global0.x, -787f, 332f)))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-119f, 1000f, arg_1.e, -414f) - vec4<f32>(-1294f, 1871f, 977f, arg_1.e)), _wgslsmith_div_vec4_f32(vec4<f32>(global0.x, arg_0, global0.x, -1000f), vec4<f32>(-164f, arg_1.e, 1024f, global0.x)))), vec4<f32>(arg_1.e, _wgslsmith_f_op_f32(arg_0 + 1000f), _wgslsmith_f_op_f32(-arg_1.e), arg_0))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0, arg_1.e, global0.x, 858f))) * _wgslsmith_div_vec4_f32(vec4<f32>(arg_0, global0.x, 2294f, 154f), vec4<f32>(global0.x, -659f, arg_0, arg_0)))))));
    global2 = u_input.a;
    return _wgslsmith_f_op_f32(arg_1.e * _wgslsmith_f_op_f32(floor(global0.x)));
}

fn func_1(arg_0: vec3<f32>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1797f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(arg_0.x, Struct_3(0u, u_input.a, u_input.b.zx, vec4<i32>(24955i, u_input.c, u_input.c, -23257i), arg_0.x), global1[_wgslsmith_index_u32(u_input.a, 18u)], -493f)), global0.x)))));
    let var_1 = Struct_1(global3.a);
    var var_2 = Struct_1(true);
    var var_3 = u_input.c | -2147483647i;
    var var_4 = Struct_3(1u, u_input.a, firstTrailingBit(abs(u_input.b.zy)), vec4<i32>(~u_input.c, u_input.c, 1i, u_input.c), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1982f, arg_0.x))))));
    return vec4<bool>(global3.a, any(vec4<bool>(~1u >= firstLeadingBit(u_input.a), var_4.d.x != -u_input.c, var_1.a, global3.a)), _wgslsmith_f_op_f32(select(-521f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(360f - arg_0.x))), (false & var_1.a) | all(vec4<bool>(false, true, var_1.a, false)))) >= _wgslsmith_f_op_f32(2132f - var_4.e), any(!(!select(vec3<bool>(false, true, false), vec3<bool>(false, global3.a, var_1.a), vec3<bool>(true, true, var_1.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_1(all(!func_1(_wgslsmith_f_op_vec3_f32(-global0.xxz))));
    let var_0 = u_input.c;
    let var_1 = ~_wgslsmith_add_u32(firstTrailingBit(~u_input.b.x), _wgslsmith_div_u32(4294967295u, _wgslsmith_div_u32(u_input.b.x, 10415u)) << (firstLeadingBit(firstTrailingBit(u_input.b.x)) % 32u));
    var var_2 = global3.a;
    var_2 = select(global3.a, global3.a, global3.a);
    let var_3 = Struct_1(all(vec2<bool>(all(vec4<bool>(true, global3.a, global3.a, global3.a)), global3.a)));
    global0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(511f, -1162f, global0.x, global0.x)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.x, -490f, -2005f, 206f), vec4<f32>(-466f, global0.x, global0.x, global0.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, _wgslsmith_div_i32(_wgslsmith_mod_i32(countOneBits(2147483647i), ~var_0 ^ _wgslsmith_add_i32(1i, -26343i)), min(-6025i, 16352i)), _wgslsmith_mult_vec2_i32(vec2<i32>(var_0, ~_wgslsmith_sub_i32(-11544i, 0i)), vec2<i32>(var_0, ~(u_input.c | 36627i))));
}

