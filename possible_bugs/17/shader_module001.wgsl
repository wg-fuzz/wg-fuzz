struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<bool>,
    d: vec4<bool>,
    e: u32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(17330u, 4294967295u);

var<private> global1: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(-518f, false, vec3<bool>(true, false, true), vec4<bool>(false, true, true, true), 4294967295u), Struct_1(-645f, true, vec3<bool>(true, true, true), vec4<bool>(true, true, false, true), 58279u), Struct_1(-306f, true, vec3<bool>(true, false, true), vec4<bool>(false, true, false, false), 25823u), Struct_1(-1151f, true, vec3<bool>(true, true, true), vec4<bool>(false, false, false, false), 4294967295u), Struct_1(-964f, false, vec3<bool>(false, false, false), vec4<bool>(false, false, false, false), 32552u), Struct_1(-755f, false, vec3<bool>(true, false, false), vec4<bool>(false, false, false, false), 74162u), Struct_1(1391f, true, vec3<bool>(true, false, false), vec4<bool>(true, true, true, true), 41664u), Struct_1(-1241f, false, vec3<bool>(true, true, true), vec4<bool>(true, true, true, true), 1u), Struct_1(962f, true, vec3<bool>(true, false, false), vec4<bool>(true, true, false, false), 1u), Struct_1(617f, true, vec3<bool>(true, false, false), vec4<bool>(false, false, true, true), 29276u), Struct_1(-1154f, false, vec3<bool>(false, true, false), vec4<bool>(true, false, false, false), 1u), Struct_1(-118f, false, vec3<bool>(false, true, false), vec4<bool>(true, false, true, false), 0u));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: vec3<i32>) -> vec2<u32> {
    global0 = vec2<u32>(firstLeadingBit(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 0u, 4954u, u_input.c.x), ~vec4<u32>(1u, u_input.c.x, u_input.b, 0u)), vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.c.zwz, u_input.c.zzw), ~u_input.b, u_input.c.x, ~global0.x))), _wgslsmith_div_u32(~u_input.d.x, countOneBits(~_wgslsmith_add_u32(14380u, 0u))));
    let var_0 = _wgslsmith_f_op_f32(abs(arg_0));
    var var_1 = select(53218u & (~4294967295u >> (u_input.b % 32u)), global0.x, true);
    var var_2 = Struct_3(Struct_2(101f), Struct_2(_wgslsmith_f_op_f32(step(-772f, 810f))));
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.a + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-657f, -219f, false)), _wgslsmith_f_op_f32(sign(-1025f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1558f)))), 608f));
    return _wgslsmith_mod_vec2_u32(select(_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.c.zx, vec2<u32>(0u, 0u)), ~firstTrailingBit(vec2<u32>(38119u, 93674u))), abs(vec2<u32>(u_input.c.x, 18775u)), vec2<bool>(true, !any(vec3<bool>(true, false, true)))), _wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, ~global0.x), firstTrailingBit(vec2<u32>(global0.x, global0.x << (u_input.c.x % 32u))), u_input.d));
}

fn func_2(arg_0: vec4<f32>) -> vec3<f32> {
    var var_0 = -(~(firstTrailingBit(max(vec3<i32>(-17827i, -2147483647i, u_input.a), vec3<i32>(u_input.a, u_input.a, 54704i))) << (u_input.c.www % vec3<u32>(32u))));
    global0 = abs(vec2<u32>(reverseBits(31034u >> (global0.x % 32u)), ~global0.x ^ 0u)) << (_wgslsmith_sub_vec2_u32(~u_input.c.yy, min(func_3(-380f, vec3<i32>(1i, -1i, var_0.x)), _wgslsmith_add_vec2_u32(u_input.d, u_input.c.xy)) ^ reverseBits(vec2<u32>(u_input.d.x, u_input.b))) % vec2<u32>(32u));
    var var_1 = Struct_3(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1170f)), Struct_2(-464f));
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.a, _wgslsmith_div_f32(-687f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.b.a)))), -222f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + 1068f) - _wgslsmith_div_f32(727f, arg_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1529f), -1334f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.xyy)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, var_1.b.a, var_2.x, var_2.x), arg_0)), arg_0)))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_3.ywx, arg_0.yzz));
}

fn func_4(arg_0: vec3<f32>) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(f32(-1f) * -144f));
}

fn func_1(arg_0: bool) -> i32 {
    let var_0 = 0u;
    global1 = array<Struct_1, 12>();
    var var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(872f + _wgslsmith_f_op_f32(floor(-433f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1802f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-290f)) - 1286f)), vec2<f32>(_wgslsmith_f_op_f32(-646f + -174f), _wgslsmith_f_op_f32(f32(-1f) * -419f)));
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x))))))), _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(trunc(396f)))))) - vec2<f32>(var_1.x, var_1.x));
    let var_3 = 2147483647i;
    return -34808i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 12>();
    global1 = array<Struct_1, 12>();
    let var_0 = vec3<bool>(false, true, ~(-u_input.a) != _wgslsmith_add_i32(countOneBits(func_1(true)), min(25836i, u_input.a) ^ ~u_input.a));
    global0 = vec2<u32>(global0.x, ~abs(72539u & ~global0.x));
    var var_1 = Struct_3(Struct_2(_wgslsmith_f_op_f32(ceil(1f))), Struct_2(-362f));
    let var_2 = global1[_wgslsmith_index_u32(select(34933u, _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(4294967295u, global0.x)), reverseBits(u_input.d)) & global0.x, false) ^ 0u, 12u)];
    var var_3 = !(!(!var_2.d));
    var_3 = var_2.d;
    let var_4 = vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(-47352i, 2147483647i, u_input.a, 3929i), vec4<i32>(u_input.a, -1i, 13932i, 1i)), select(vec4<i32>(7347i, 2147483647i, -1i, u_input.a), ~vec4<i32>(u_input.a, u_input.a, -3667i, u_input.a), true)) ^ _wgslsmith_sub_i32(-u_input.a, ~26606i), countOneBits(-1i));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a + var_1.a.a)), var_2.a, _wgslsmith_f_op_f32(-1162f - _wgslsmith_f_op_f32(-var_1.b.a))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2121f, _wgslsmith_f_op_f32(-var_2.a)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a, _wgslsmith_f_op_vec3_f32(func_2(vec4<f32>(-393f, 2420f, var_2.a, var_2.a))).x))), ~_wgslsmith_sub_u32(max(var_2.e, ~53609u), ~u_input.d.x | 42233u));
}

