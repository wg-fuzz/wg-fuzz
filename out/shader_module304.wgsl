struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 2> = array<vec3<f32>, 2>(vec3<f32>(198f, 1475f, 1850f), vec3<f32>(1318f, -932f, 139f));

var<private> global1: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(1i), Struct_1(-3008i), Struct_1(2147483647i), Struct_1(-31322i), Struct_1(-6805i), Struct_1(39290i), Struct_1(46409i), Struct_1(-65144i), Struct_1(43472i), Struct_1(31807i), Struct_1(68760i), Struct_1(-26427i), Struct_1(2147483647i), Struct_1(i32(-2147483648)), Struct_1(46910i), Struct_1(2147483647i), Struct_1(i32(-2147483648)), Struct_1(7703i), Struct_1(40747i), Struct_1(10247i), Struct_1(-1i), Struct_1(i32(-2147483648)), Struct_1(-1i), Struct_1(-1i), Struct_1(4683i), Struct_1(-26577i));

var<private> global2: array<vec4<i32>, 25>;

var<private> global3: array<Struct_3, 30>;

var<private> global4: array<Struct_3, 9>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec2<u32>, arg_2: u32) -> vec4<u32> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1114f) * -781f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1859f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1753f - -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1f))), -1655f);
    let var_1 = global3[_wgslsmith_index_u32(~arg_1.x, 30u)];
    var var_2 = var_1.a.x;
    let var_3 = _wgslsmith_f_op_f32(trunc(-557f));
    var var_4 = !all(select(select(vec3<bool>(true, var_1.b.x, true), !vec3<bool>(false, arg_0, var_1.b.x), arg_0 | true), select(vec3<bool>(var_1.b.x, arg_0, true), select(vec3<bool>(arg_0, var_1.b.x, true), vec3<bool>(false, var_1.b.x, false), false), !vec3<bool>(arg_0, var_1.b.x, var_1.b.x)), vec3<bool>(arg_0, !var_1.b.x, var_1.b.x)));
    return ~vec4<u32>(27469u, ~(~80334u), arg_1.x, 10944u) & ~vec4<u32>(_wgslsmith_dot_vec2_u32(arg_1, arg_1 ^ vec2<u32>(arg_1.x, arg_2)), 91078u, abs(arg_1.x), max(~21018u, firstTrailingBit(4294967295u)));
}

fn func_2() -> Struct_3 {
    global3 = array<Struct_3, 30>();
    global3 = array<Struct_3, 30>();
    var var_0 = ~func_3(true, ~(vec2<u32>(1u, 4294967295u) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))), ~reverseBits(_wgslsmith_clamp_u32(4294967295u, 4294967295u, 4294967295u)));
    var_0 = reverseBits(vec4<u32>(~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.x, 37549u), vec2<u32>(var_0.x, 64724u)), var_0.yw), 21061u, var_0.x, var_0.x));
    let var_1 = global1[_wgslsmith_index_u32(var_0.x, 26u)];
    return global3[_wgslsmith_index_u32(0u, 30u)];
}

fn func_1(arg_0: Struct_3, arg_1: f32, arg_2: i32, arg_3: bool) -> Struct_3 {
    var var_0 = vec3<i32>(firstLeadingBit(1i), ~(arg_0.a.x & u_input.b) & arg_0.a.x, ~(-2147483647i)) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 54170u, 4294967295u, 9131u), vec4<u32>(0u, 0u, 1u, 1u)), 1u), vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u));
    var_0 = u_input.d.yyz & u_input.c.wzy;
    var var_1 = func_2();
    let var_2 = func_2();
    global2 = array<vec4<i32>, 25>();
    return Struct_3(select(~var_1.a, ~(vec3<i32>(1i, var_2.a.x, 1i) ^ (vec3<i32>(var_2.a.x, u_input.d.x, arg_2) ^ vec3<i32>(-21758i, -2147483647i, -1i))), !select(vec3<bool>(true, true, false), vec3<bool>(arg_3, true, var_2.b.x), arg_0.b.x)), func_2().b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global4[_wgslsmith_index_u32(~abs(~reverseBits(86690u)), 9u)], _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-1384f)))), u_input.d.x, true);
    var var_1 = -((u_input.e & _wgslsmith_mult_i32(~var_0.a.x, 0i)) & var_0.a.x);
    var var_2 = _wgslsmith_mod_vec3_u32(vec3<u32>(~firstLeadingBit(4294967295u), 1u, _wgslsmith_add_u32(_wgslsmith_mod_u32(countOneBits(26238u), _wgslsmith_mult_u32(41094u, 18668u)), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 26731u), firstTrailingBit(vec2<u32>(22664u, 8265u))))), vec3<u32>(~22282u, firstTrailingBit(4294967295u) << (~(~1u) % 32u), 4294967295u));
    let var_3 = Struct_2((var_2.x | (var_2.x | ~1u)) < 27117u, _wgslsmith_div_u32(var_2.x, ~47713u) >> (abs(_wgslsmith_div_u32(~var_2.x, select(0u, 9403u, true))) % 32u), func_2().b.x);
    var var_4 = u_input.c.wx;
    var_0 = global3[_wgslsmith_index_u32(firstTrailingBit(var_2.x), 30u)];
    let var_5 = select(func_1(Struct_3(vec3<i32>(~1i, var_4.x, var_4.x), vec2<bool>(true, any(vec2<bool>(false, var_3.c)))), 717f, ~var_4.x, !var_3.a).b, select(var_0.b, select(var_0.b, select(func_2().b, select(vec2<bool>(false, false), vec2<bool>(false, true), var_3.a), var_3.c), var_0.b.x), vec2<bool>(var_2.x < _wgslsmith_dot_vec4_u32(vec4<u32>(var_3.b, 0u, 75806u, var_3.b), vec4<u32>(var_3.b, var_2.x, var_3.b, var_3.b)), var_3.c)), true);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.xwy, global2[_wgslsmith_index_u32(1u, 25u)], _wgslsmith_add_vec3_i32(u_input.c.yzx, ~var_0.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-989f - 990f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-666f, -235f) * vec2<f32>(-115f, -1809f))))))));
}

