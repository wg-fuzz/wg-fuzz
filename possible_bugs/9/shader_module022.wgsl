struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: bool,
    c: f32,
}

struct Struct_4 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: Struct_4,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 15> = array<vec4<u32>, 15>(vec4<u32>(4290u, 4294967295u, 4823u, 12534u), vec4<u32>(0u, 4294967295u, 72155u, 9006u), vec4<u32>(1u, 49904u, 4294967295u, 0u), vec4<u32>(5928u, 1u, 40447u, 83971u), vec4<u32>(24308u, 57899u, 1u, 0u), vec4<u32>(32515u, 0u, 0u, 35892u), vec4<u32>(10691u, 1u, 55995u, 4294967295u), vec4<u32>(4294967295u, 0u, 1u, 16348u), vec4<u32>(51094u, 94353u, 4294967295u, 1u), vec4<u32>(59064u, 0u, 1u, 60887u), vec4<u32>(8259u, 1613u, 52232u, 4294967295u), vec4<u32>(39186u, 41700u, 30982u, 16052u), vec4<u32>(26838u, 13564u, 19207u, 60413u), vec4<u32>(70037u, 1u, 97409u, 1u), vec4<u32>(4441u, 4294967295u, 0u, 71168u));

var<private> global1: Struct_5 = Struct_5(Struct_1(71597u), -241f, -4319i, Struct_4(2147483647i, vec4<f32>(449f, 759f, 683f, -1000f)), false);

var<private> global2: array<vec4<i32>, 13>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_5, arg_2: vec3<bool>) -> bool {
    return any(select(vec2<bool>(any(vec4<bool>(false, arg_0.a.x, arg_0.a.x, global1.e)), arg_2.x), !select(!arg_0.a, !vec2<bool>(arg_1.e, true), select(arg_2.x, false, arg_2.x)), vec2<bool>(true, arg_1.e)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_5) -> i32 {
    let var_0 = _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(global0[_wgslsmith_index_u32(~select(_wgslsmith_mult_u32(arg_0.a, 1u), arg_0.a, func_3(Struct_2(vec2<bool>(false, global1.e)), Struct_5(Struct_1(global1.a.a), arg_1.d.b.x, -37806i, arg_1.d, true), vec3<bool>(global1.e, global1.e, true))), 15u)], abs(global0[_wgslsmith_index_u32(1u, 15u)]) >> (global0[_wgslsmith_index_u32(max(~1u, abs(25552u)), 15u)] % vec4<u32>(32u)), ~global0[_wgslsmith_index_u32(firstTrailingBit(0u) ^ u_input.a.x, 15u)]), vec4<u32>(global1.a.a, 2726u, _wgslsmith_clamp_u32(arg_0.a << (~u_input.a.x % 32u), min(select(38880u, arg_1.a.a, false), 0u), _wgslsmith_div_u32(1u, arg_1.a.a)), ~_wgslsmith_sub_u32(reverseBits(u_input.a.x), arg_0.a)));
    let var_1 = 32756i;
    let var_2 = -vec2<i32>(_wgslsmith_sub_i32(-global1.c, -77266i), var_1) >> (u_input.a % vec2<u32>(32u));
    var var_3 = arg_1.e;
    var var_4 = Struct_3(!select(!(!vec3<bool>(false, false, arg_1.e)), vec3<bool>(true, arg_1.e, global1.e), _wgslsmith_add_i32(var_1, global1.c) < -arg_1.c), any(vec3<bool>(arg_1.e, !all(vec2<bool>(true, true)), (var_0.x << (60931u % 32u)) == _wgslsmith_dot_vec2_u32(u_input.a, var_0.xx))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d.b.x + _wgslsmith_f_op_f32(-global1.b)) + arg_1.b));
    return arg_1.c;
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: i32, arg_3: vec2<f32>) -> Struct_2 {
    global2 = array<vec4<i32>, 13>();
    let var_0 = Struct_5(global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b)), 40133i, Struct_4(max(~_wgslsmith_div_i32(-1i, 45670i), ~arg_1), global1.d.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_3.x))) <= 598f);
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1225f, _wgslsmith_f_op_f32(-arg_0), var_0.b, 1778f))), vec4<f32>(321f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.d.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1194f))), var_0.e)), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) * global1.d.b.x))));
    var var_2 = ~(~select(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(global0[_wgslsmith_index_u32(u_input.a.x, 15u)], global0[_wgslsmith_index_u32(4294967295u, 15u)]), ~vec4<u32>(0u, var_0.a.a, var_0.a.a, var_0.a.a)), _wgslsmith_mod_vec4_u32(global0[_wgslsmith_index_u32(global1.a.a, 15u)] ^ global0[_wgslsmith_index_u32(1u, 15u)], ~global0[_wgslsmith_index_u32(u_input.a.x, 15u)]), true && select(global1.e, true, global1.e)));
    global0 = array<vec4<u32>, 15>();
    return Struct_2(select(select(vec2<bool>(select(true, true, false), true), vec2<bool>(false, true), !(!var_0.e)), select(!select(vec2<bool>(var_0.e, global1.e), vec2<bool>(false, global1.e), global1.e), vec2<bool>(true, var_0.e | var_0.e), !var_0.e | false), global1.d.b.x >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2875f) * global1.b)));
}

fn func_1() -> Struct_2 {
    return func_4(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(global1.d.b.x)))), -64646i, ~(select(32373i, func_2(Struct_1(u_input.a.x), Struct_5(global1.a, -836f, global1.d.a, Struct_4(-2252i, vec4<f32>(global1.b, -817f, -1000f, 381f)), false)), any(vec4<bool>(false, global1.e, false, global1.e))) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(global1.c, global1.d.a), max(vec2<i32>(global1.c, global1.c), vec2<i32>(-9272i, global1.d.a)))), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.d.b.x * global1.d.b.x), _wgslsmith_f_op_f32(f32(-1f) * -344f)))), 1174f));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_5, arg_3: Struct_4) -> f32 {
    var var_0 = ~global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(global1.a.a, 39816u)), ~vec2<u32>(1u, 1u)), 15u)];
    var var_1 = var_0.wzz;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(sign(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.d.b.x)) - 3078f), _wgslsmith_f_op_f32(abs(global1.d.b.x)), _wgslsmith_div_f32(1021f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_3.b.x)))));
    var_0 = vec4<u32>(~_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.a, ~var_0.xy), min(var_1.x << (var_0.x % 32u), 1u)), abs(~5686u), 49618u, 2322u);
    var var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.b.x, arg_2.b, 693f) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_2.b, arg_2.d.b.x, arg_3.b.x))), vec3<f32>(arg_3.b.x, _wgslsmith_f_op_f32(floor(arg_3.b.x)), 358f)))));
    return _wgslsmith_f_op_f32(-var_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_1(), !vec3<bool>(global1.e, global1.e, global1.e), Struct_5(global1.a, 690f, 0i, Struct_4(global1.c, vec4<f32>(-875f, global1.d.b.x, 1240f, -1556f)), false), Struct_4(-1i, vec4<f32>(global1.b, 359f, global1.d.b.x, global1.b))))))), global1.d.b.x);
    var var_1 = Struct_5(global1.a, var_0.x, 23375i, Struct_4(-47933i, global1.d.b), !global1.e);
    var_1 = Struct_5(Struct_1(32884u), 609f, ~(-(~var_1.c >> (var_1.a.a % 32u))), Struct_4(5014i, global1.d.b), all(vec2<bool>(any(select(vec4<bool>(false, false, true, var_1.e), vec4<bool>(var_1.e, true, var_1.e, global1.e), vec4<bool>(global1.e, false, global1.e, var_1.e))), all(vec2<bool>(true, var_1.e)))));
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_1.b))) - vec2<f32>(136f, -669f))), var_0.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.d.b.yzw - global1.d.b.wzx), global1.d.b.ywy), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b, global1.d.b.x, global1.b)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-global1.d.b.xxz))) + _wgslsmith_f_op_vec3_f32(ceil(var_1.d.b.zxy)))));
}

