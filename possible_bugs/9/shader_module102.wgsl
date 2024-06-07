struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: i32,
    d: vec2<f32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: array<vec4<i32>, 15> = array<vec4<i32>, 15>(vec4<i32>(2147483647i, 0i, 0i, 1i), vec4<i32>(38868i, 37756i, -1i, -12580i), vec4<i32>(-25218i, -596i, -21311i, -41023i), vec4<i32>(-1i, 21353i, 38266i, -24918i), vec4<i32>(-62779i, -84364i, 0i, i32(-2147483648)), vec4<i32>(2147483647i, -66481i, -15813i, 5415i), vec4<i32>(-23800i, 2147483647i, -16528i, 61825i), vec4<i32>(0i, i32(-2147483648), i32(-2147483648), -5606i), vec4<i32>(58391i, 2147483647i, i32(-2147483648), 1i), vec4<i32>(47440i, i32(-2147483648), -16785i, -12700i), vec4<i32>(-19923i, 5931i, -21091i, 1i), vec4<i32>(-40096i, i32(-2147483648), i32(-2147483648), 20250i), vec4<i32>(-1i, 21296i, -29792i, 0i), vec4<i32>(i32(-2147483648), 7025i, -1i, 0i), vec4<i32>(9378i, 1i, -107i, 36321i));

var<private> global2: Struct_4;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<bool>, arg_1: u32) -> vec2<f32> {
    let var_0 = global2.b;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(global2.d, vec2<f32>(_wgslsmith_f_op_f32(-global2.d.x), -710f), -1068f == _wgslsmith_f_op_f32(-global2.d.x))))));
    var var_2 = vec3<u32>(arg_1, 8546u, _wgslsmith_clamp_u32(arg_1 >> (~4294967295u % 32u), _wgslsmith_mod_u32(~4294967295u << (~u_input.a.x % 32u), ~(~0u)), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(u_input.a.x, arg_1, 0u, 1u) & vec4<u32>(0u, 8225u, 57312u, arg_1)), vec4<u32>(arg_1 ^ arg_1, ~35284u, arg_1 ^ 13073u, 44978u))));
    var var_3 = Struct_3(u_input.b);
    return _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.d))));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: f32) -> Struct_4 {
    var var_0 = 1u >> (reverseBits(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(85972u, arg_0.x, u_input.a.x)), ~(~vec3<u32>(4294967295u, arg_0.x, 81750u)))) % 32u);
    var var_1 = Struct_1(arg_0.x, _wgslsmith_div_i32(~_wgslsmith_dot_vec3_i32(select(vec3<i32>(0i, global2.c, 0i), vec3<i32>(-1i, 34675i, 1i), vec3<bool>(false, true, false)), _wgslsmith_clamp_vec3_i32(global2.b.a.wwx, vec3<i32>(2147483647i, u_input.d.x, 1i), u_input.b.zzx)), (1i ^ max(u_input.d.x, global2.c)) >> (~arg_0.x % 32u)));
    global2 = Struct_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_2 + global2.d.x))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-671f, global2.d.x) + global2.a))))), Struct_3(vec4<i32>(var_1.b, _wgslsmith_dot_vec2_i32(u_input.b.xw, vec2<i32>(global2.b.a.x, u_input.b.x)) << (~u_input.a.x % 32u), ~19899i, _wgslsmith_div_i32(global2.b.a.x, ~(-2147483647i)))), reverseBits(-19556i), _wgslsmith_f_op_vec2_f32(max(arg_1, _wgslsmith_f_op_vec2_f32(func_3(vec3<bool>(true, true, true), _wgslsmith_clamp_u32(~arg_0.x, arg_0.x, _wgslsmith_sub_u32(u_input.c.x, 4294967295u)))))));
    var_1 = Struct_1(~_wgslsmith_div_u32(var_1.a, max(_wgslsmith_mod_u32(arg_0.x, var_1.a), ~arg_0.x)), global2.b.a.x);
    var var_2 = vec2<u32>(u_input.c.x, 44313u);
    return Struct_4(global2.d.x, global2.b, -(~28207i), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.x + arg_1.x), _wgslsmith_div_f32(global2.d.x, arg_1.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-1000f, -514f)), _wgslsmith_f_op_f32(-2836f + 1000f))) - arg_1.x)));
}

fn func_1(arg_0: vec2<u32>) -> Struct_2 {
    var var_0 = !vec2<bool>(!(true && any(vec4<bool>(false, true, false, true))), false);
    var var_1 = true;
    var var_2 = func_2(vec2<u32>(_wgslsmith_add_u32(arg_0.x, u_input.c.x), ~4294967295u & arg_0.x), global2.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.d.x)));
    let var_3 = vec4<bool>(_wgslsmith_mult_u32(~(~4294967295u), firstTrailingBit(~arg_0.x)) != 19430u, var_0.x, any(select(select(select(vec4<bool>(var_0.x, false, true, var_0.x), vec4<bool>(false, var_0.x, var_0.x, true), var_0.x), !vec4<bool>(false, true, false, var_0.x), vec4<bool>(false, var_0.x, false, var_0.x)), !(!vec4<bool>(false, var_0.x, var_0.x, var_0.x)), select(!vec4<bool>(false, false, var_0.x, true), select(vec4<bool>(var_0.x, true, var_0.x, false), vec4<bool>(var_0.x, var_0.x, false, var_0.x), true), !var_0.x))), u_input.d.x >= ~_wgslsmith_mod_i32(i32(-1i) * -1i, -u_input.b.x));
    var var_4 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global2.a, global2.a, -651f))))) - vec3<f32>(1f, 1000f, _wgslsmith_f_op_f32(trunc(func_2(u_input.c, global2.d, 1528f).a))))));
    return Struct_2(Struct_1(~0u, _wgslsmith_clamp_i32(u_input.b.x, _wgslsmith_add_i32(u_input.d.x, global2.c), -_wgslsmith_dot_vec3_i32(global2.b.a.wyy, vec3<i32>(var_2.b.a.x, 1i, -2147483647i)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(u_input.c);
    let var_1 = any(select(vec2<bool>(all(vec2<bool>(true, true)), -536f >= global2.d.x), !select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, true), vec2<bool>(true, true)), select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), any(vec3<bool>(true, false, true))), vec2<bool>(true, 42956i != global2.c), vec2<bool>(true, true))));
    global2 = Struct_4(-1302f, global2.b, max(1i | firstTrailingBit(select(var_0.a.b, var_0.a.b, false)), _wgslsmith_dot_vec2_i32(abs(min(global2.b.a.ww, u_input.d.zx)), global2.b.a.wx)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(280f, 231f)))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a, global2.d.x) + vec2<f32>(global2.a, global2.a)), vec2<f32>(162f, global2.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(272f, -664f))), var_1)));
    let var_2 = !(!select(vec2<bool>(true, all(vec2<bool>(var_1, var_1))), !vec2<bool>(var_1, true), all(!vec4<bool>(false, var_1, false, true))));
    global0 = -global2.b.a.x ^ u_input.b.x;
    let var_3 = Struct_5(select(_wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a.x, 37000u, var_0.a.a)) | abs(vec3<u32>(4294967295u, var_0.a.a, 1u)), abs(max(vec3<u32>(0u, 35182u, 1u), vec3<u32>(0u, u_input.c.x, var_0.a.a)))), _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(80574u, u_input.c.x, var_0.a.a) ^ vec3<u32>(u_input.c.x, u_input.a.x, 43667u), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, var_0.a.a, 56049u), vec3<u32>(u_input.c.x, 5661u, 89847u))), ~_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(4294967295u, 2231u, u_input.a.x))), vec3<bool>(_wgslsmith_f_op_f32(min(global2.a, global2.d.x)) < global2.a, !select(var_2.x, var_1, false), var_2.x)), vec4<f32>(_wgslsmith_f_op_f32(sign(global2.d.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(323f - _wgslsmith_f_op_f32(-global2.d.x))), _wgslsmith_f_op_f32(select(-826f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.d.x), global2.a), true))));
    var_0 = func_1(~(~var_3.a.zz));
    var var_4 = vec2<f32>(global2.d.x, _wgslsmith_f_op_f32(sign(377f)));
    let var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~vec2<u32>(1u, ~var_3.a.x)), _wgslsmith_f_op_f32(round(global2.d.x)));
}

