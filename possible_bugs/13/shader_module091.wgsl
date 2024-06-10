struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3) -> f32 {
    global0 = 1f;
    let var_0 = true;
    global0 = -1000f;
    var var_1 = Struct_4(arg_0, _wgslsmith_f_op_f32(trunc(arg_1.a)), arg_1.c.x);
    let var_2 = arg_0.b.b;
    return var_1.b;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4) -> u32 {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1453f)), arg_1.b)), arg_1.a.b.b.yx);
    global0 = 153f;
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1394f, var_0.x)));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(round(var_0.x)) == _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(2124f, arg_1.b))), vec4<u32>(arg_1.a.b.c, arg_1.a.b.d.b.x, 4294967295u, u_input.b)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(747f, arg_1.b, true)))), arg_1.a.a, _wgslsmith_f_op_f32(func_2(arg_1.a, arg_1.a)), arg_1.b))), arg_0.b.x, arg_0);
    var var_2 = _wgslsmith_div_u32(firstTrailingBit(_wgslsmith_clamp_u32(_wgslsmith_add_u32(1u, 1u), _wgslsmith_mod_u32(u_input.d.x, 7788u), ~u_input.d.x)) | _wgslsmith_clamp_u32(~1u, arg_0.b.x | 0u, arg_1.a.b.c), _wgslsmith_add_u32(~arg_1.a.b.d.b.x, reverseBits(u_input.b)));
    return abs(_wgslsmith_mult_u32(_wgslsmith_div_u32(~u_input.d.x, select(u_input.c << (arg_0.b.x % 32u), ~arg_1.a.b.a.b.x, true)), _wgslsmith_sub_u32(27388u, ~var_1.c & arg_1.a.b.a.b.x)));
}

fn func_1() -> Struct_1 {
    var var_0 = u_input.d.x;
    var_0 = reverseBits(_wgslsmith_dot_vec2_u32(u_input.d.xy ^ u_input.d.xx, u_input.d.xz));
    var_0 = ~(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 531u), ~u_input.d.xx) << (~abs(0u) % 32u)) | select(30614u, u_input.c, false);
    var_0 = max(_wgslsmith_div_u32(38381u, _wgslsmith_sub_u32(u_input.b, u_input.d.x)), 28052u);
    global0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-805f)), _wgslsmith_f_op_f32(sign(1f))))));
    return Struct_1(!(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(Struct_3(409f, Struct_2(Struct_1(true, vec4<u32>(u_input.b, 10135u, 35578u, 0u)), vec4<f32>(687f, 434f, -1686f, -1234f), u_input.d.x, Struct_1(true, vec4<u32>(16922u, 15028u, u_input.c, u_input.c))), vec3<i32>(37811i, u_input.a.x, u_input.a.x)), Struct_3(921f, Struct_2(Struct_1(false, vec4<u32>(19243u, 4294967295u, u_input.d.x, 0u)), vec4<f32>(1231f, 292f, 1558f, -478f), 20594u, Struct_1(true, vec4<u32>(u_input.c, 44709u, u_input.c, u_input.c))), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)))))) >= _wgslsmith_f_op_f32(_wgslsmith_div_f32(1043f, 655f) * 667f)), vec4<u32>(4294967295u, func_3(Struct_1(true, _wgslsmith_mod_vec4_u32(vec4<u32>(20661u, u_input.d.x, 27354u, 0u), vec4<u32>(18780u, 1491u, 5943u, 4294967295u))), Struct_4(Struct_3(-126f, Struct_2(Struct_1(false, vec4<u32>(81956u, u_input.c, 64897u, u_input.b)), vec4<f32>(-100f, 1000f, -1000f, -653f), u_input.b, Struct_1(false, vec4<u32>(1u, u_input.c, 0u, u_input.c))), vec3<i32>(-2147483647i, -1i, 2147483647i)), _wgslsmith_f_op_f32(-381f + -1408f), 1i)), min(_wgslsmith_div_u32(u_input.b, 0u), ~1u) << ((abs(u_input.b) << (abs(1u) % 32u)) % 32u), _wgslsmith_mod_u32(u_input.d.x, _wgslsmith_add_u32(select(8586u, 79896u, true), 0u & u_input.c))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1577f * 1000f)) - 1f)), Struct_2(Struct_1(~u_input.a.x < _wgslsmith_add_i32(-32382i, u_input.a.x), firstLeadingBit(vec4<u32>(0u, u_input.c, 10749u, u_input.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(605f, 304f, 1395f, 296f), vec4<f32>(247f, 1073f, -459f, -997f))))), ~(~_wgslsmith_add_u32(0u, u_input.c)), func_1()), vec3<i32>(-1i | _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a.x, 1i, -1i) & vec4<i32>(1i, 2147483647i, u_input.a.x, u_input.a.x), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, -2147483647i, u_input.a.x), vec4<i32>(u_input.a.x, 40075i, u_input.a.x, u_input.a.x))), 2147483647i, -6823i));
    global0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(var_0.a))))));
    let var_1 = var_0.b;
    var var_2 = ~var_0.c.xx;
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(var_1.b.x, 816f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-659f + var_0.a) * _wgslsmith_f_op_f32(f32(-1f) * -1297f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(vec3<i32>(-8547i, var_0.c.x, _wgslsmith_add_i32(-var_2.x, 25490i)), abs(vec3<i32>(_wgslsmith_sub_i32(var_2.x, 2147483647i), var_2.x >> (21191u % 32u), var_2.x))), 1i, 11670u);
}

