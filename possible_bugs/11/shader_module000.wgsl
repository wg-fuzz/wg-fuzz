struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec3<f32>,
    d: i32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<i32>,
    c: vec3<bool>,
    d: bool,
    e: vec2<i32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: i32,
    c: Struct_2,
    d: vec4<u32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, false, true);

var<private> global1: array<vec4<i32>, 7> = array<vec4<i32>, 7>(vec4<i32>(2147483647i, i32(-2147483648), -17290i, 2147483647i), vec4<i32>(0i, 0i, 2147483647i, -26239i), vec4<i32>(2147483647i, -2486i, 2147483647i, -13354i), vec4<i32>(i32(-2147483648), 1i, 1i, 14187i), vec4<i32>(2467i, 3285i, 2147483647i, i32(-2147483648)), vec4<i32>(-8692i, 2788i, i32(-2147483648), -1i), vec4<i32>(0i, -1i, 0i, -11990i));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32) -> u32 {
    var var_0 = Struct_3(-1000f, global1[_wgslsmith_index_u32(~countOneBits(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(u_input.a, u_input.a)))), 7u)], global0.zzz, true, select(countOneBits(-abs(vec2<i32>(arg_0, arg_0))), vec2<i32>(arg_0, 1i), global0.zw));
    let var_1 = min(_wgslsmith_sub_u32(firstTrailingBit(_wgslsmith_sub_u32(countOneBits(u_input.b), 11166u)), 1204u), 4294967295u);
    var var_2 = (var_0.b.x & (1i ^ arg_0)) << (_wgslsmith_mult_u32(_wgslsmith_div_u32(44626u, ~firstTrailingBit(4294967295u)), 4294967295u) % 32u);
    var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-769f)) * var_0.a), _wgslsmith_clamp_vec4_i32(var_0.b, select(global1[_wgslsmith_index_u32(u_input.b, 7u)] << (vec4<u32>(7920u, 1u, var_1, u_input.b) % vec4<u32>(32u)), var_0.b, vec4<bool>(false, global0.x, true, true)), global1[_wgslsmith_index_u32(var_1, 7u)]) & global1[_wgslsmith_index_u32(4294967295u, 7u)], vec3<bool>(all(select(vec2<bool>(global0.x, true), vec2<bool>(var_0.d, global0.x), any(var_0.c))), var_0.d, any(vec3<bool>(all(global0.xyw), false, true))), var_0.d, vec2<i32>(_wgslsmith_mod_i32(arg_0, var_0.e.x), max(-var_0.b.x, _wgslsmith_dot_vec4_i32(global1[_wgslsmith_index_u32(u_input.b, 7u)], vec4<i32>(var_0.e.x, var_0.e.x, var_0.e.x, arg_0)))) | (var_0.b.ww | var_0.b.yx));
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(742f - var_0.a))), var_0.a), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, 552f)), vec2<f32>(-782f, var_0.a)))))), vec2<f32>(var_0.a, 664f));
    return ~4294967295u;
}

fn func_2(arg_0: vec2<i32>) -> vec4<bool> {
    global1 = array<vec4<i32>, 7>();
    let var_0 = Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -733f) + _wgslsmith_f_op_f32(f32(-1f) * -1208f))))), ~(~(~global1[_wgslsmith_index_u32(u_input.b, 7u)]) >> (vec4<u32>(u_input.a, 4294967295u | u_input.b, 4294967295u, func_3(arg_0.x)) % vec4<u32>(32u))), select(vec3<bool>(true, global0.x, any(vec4<bool>(global0.x, global0.x, global0.x, false))), !select(select(vec3<bool>(global0.x, global0.x, true), global0.zwx, true), global0.zzx, false), !vec3<bool>(global0.x, global0.x, global0.x)), any(vec4<bool>(!global0.x || false, global0.x, global0.x, global0.x)), ~(-vec2<i32>(_wgslsmith_sub_i32(arg_0.x, -2031i), arg_0.x | arg_0.x)));
    var var_1 = Struct_4(vec2<bool>(true, true), -2147483647i, Struct_2(vec4<f32>(var_0.a, var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a, var_0.a)), 875f)), ~(vec4<u32>(107709u, u_input.a, 4294967295u, u_input.a) & (vec4<u32>(0u, u_input.b, u_input.a, u_input.b) & vec4<u32>(u_input.b, 26792u, 0u, u_input.b))) ^ vec4<u32>(20987u, 4294967295u, _wgslsmith_sub_u32(select(u_input.a, 4294967295u, true), _wgslsmith_clamp_u32(71168u, 41679u, u_input.a)), 4294967295u), vec3<bool>(any(vec3<bool>(all(vec2<bool>(true, false)), var_0.a > var_0.a, var_0.c.x)), true, !(_wgslsmith_f_op_f32(var_0.a - -1403f) < var_0.a)));
    let var_2 = Struct_4(vec2<bool>(global0.x, any(vec3<bool>(!var_1.e.x, true, true))), -2147483647i, var_1.c, ~var_1.d, !(!var_1.e));
    var_1 = var_2;
    return select(select(vec4<bool>(~1u < (1u & u_input.a), !(!var_0.c.x), true, 1u <= _wgslsmith_clamp_u32(u_input.b, 0u, var_1.d.x)), vec4<bool>(!var_2.a.x, true, true || !var_2.a.x, var_2.e.x), !(_wgslsmith_div_f32(-213f, var_1.c.a.x) != _wgslsmith_f_op_f32(trunc(585f)))), !select(select(!vec4<bool>(false, global0.x, true, var_1.a.x), !vec4<bool>(true, global0.x, var_0.c.x, global0.x), vec4<bool>(true, true, true, true)), select(vec4<bool>(var_0.c.x, true, false, true), !vec4<bool>(false, true, var_2.a.x, false), select(vec4<bool>(true, var_2.e.x, var_2.e.x, global0.x), vec4<bool>(false, global0.x, false, false), vec4<bool>(false, true, false, false))), true), !var_1.a.x);
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<f32>, arg_2: vec2<bool>) -> Struct_3 {
    global0 = select(select(func_2(firstTrailingBit(vec2<i32>(1i, 1i))), vec4<bool>(all(vec4<bool>(arg_0.x, arg_2.x, arg_2.x, arg_2.x)), true, true || global0.x, (arg_0.x | global0.x) | (arg_2.x & true)), select(vec4<bool>(all(vec4<bool>(true, global0.x, true, true)), !arg_0.x, true, true), vec4<bool>(all(vec4<bool>(true, false, arg_2.x, global0.x)), true, false, arg_1.x <= -122f), vec4<bool>(all(vec3<bool>(global0.x, true, false)), 252f > arg_1.x, true, true))), select(select(vec4<bool>(0u > u_input.b, 0u <= u_input.b, false || arg_2.x, true), func_2(vec2<i32>(8640i, -324i)), global0.x), !vec4<bool>(false || arg_2.x, !arg_0.x, true, arg_2.x == global0.x), true), vec4<bool>(_wgslsmith_add_i32(-44860i, -17726i) < max(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-27537i, -16519i), vec2<i32>(-17534i, -8002i))), !arg_2.x, arg_0.x, -48241i > select(~(-7612i), max(10161i, 24282i), true)));
    global1 = array<vec4<i32>, 7>();
    let var_0 = Struct_4(global0.xz, firstLeadingBit(~(-44520i)), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-arg_1.x), 2625f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.x - -2219f), _wgslsmith_f_op_f32(abs(-971f)))))), vec4<u32>(~116794u << ((_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 0u, u_input.b), vec3<u32>(u_input.a, u_input.b, u_input.b)) ^ ~11870u) % 32u), firstTrailingBit(~(~41632u)), _wgslsmith_dot_vec2_u32(min(~vec2<u32>(u_input.b, 1u), ~vec2<u32>(13479u, 18222u)), ~vec2<u32>(u_input.a, u_input.b)), 17774u), global0.xzy);
    var var_1 = ~var_0.d.xx;
    global0 = !(!select(func_2(vec2<i32>(var_0.b, 19936i)), !(!vec4<bool>(var_0.e.x, false, true, false)), vec4<bool>(arg_2.x, true, false, true)));
    return Struct_3(arg_1.x, reverseBits(vec4<i32>(-var_0.b, 2147483647i, var_0.b, -41303i)), vec3<bool>(true, var_0.e.x, true), !var_0.e.x, ~(~(~(vec2<i32>(-38877i, 2147483647i) & vec2<i32>(var_0.b, -13142i)))));
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: f32, arg_3: i32) -> Struct_2 {
    let var_0 = arg_0;
    global0 = vec4<bool>(global0.x, (abs(~var_0) == u_input.b) && true, true, all(!func_2(vec2<i32>(-2147483647i, arg_3))) | arg_1.c.x);
    global0 = !select(!select(!vec4<bool>(true, arg_1.d, arg_1.c.x, arg_1.d), func_2(vec2<i32>(arg_3, -1885i)), vec4<bool>(false, arg_1.c.x, global0.x, true)), select(select(vec4<bool>(arg_1.d, arg_1.d, global0.x, global0.x), vec4<bool>(true, global0.x, true, arg_1.c.x), !vec4<bool>(true, true, arg_1.c.x, global0.x)), !select(vec4<bool>(false, global0.x, true, true), vec4<bool>(false, arg_1.d, true, true), vec4<bool>(arg_1.c.x, true, true, global0.x)), any(!arg_1.c)), !(!(!vec4<bool>(arg_1.c.x, true, global0.x, arg_1.c.x))));
    global1 = array<vec4<i32>, 7>();
    let var_1 = max(-35933i, 1i ^ reverseBits(select(arg_3, 1i, false))) ^ reverseBits(-(~arg_3));
    return Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_2 - arg_2), arg_1.a, _wgslsmith_f_op_f32(arg_1.a - -778f), -617f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, 1300f, 475f, arg_2) * vec4<f32>(-873f, arg_1.a, 1635f, 523f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, -1240f, arg_2, arg_1.a)))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(arg_2, 316f, arg_1.c.x)), _wgslsmith_f_op_f32(floor(508f)), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(round(arg_2))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, 1982f, arg_2, 235f))))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_2) -> Struct_2 {
    let var_0 = arg_1.a;
    var var_1 = arg_1.c.a.x;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.x)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(func_4(arg_1.d.x, Struct_3(729f, vec4<i32>(-5003i, arg_1.b, arg_1.b, arg_1.b), arg_1.e, false, vec2<i32>(-1i, -2147483647i)), 826f, -1i).a.x, -648f))))) - _wgslsmith_f_op_f32(-108f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.a.x) - -547f)));
    let var_2 = _wgslsmith_sub_u32(~arg_1.d.x >> (_wgslsmith_mod_u32(9326u, _wgslsmith_div_u32(_wgslsmith_mult_u32(1u, 4294967295u), ~u_input.a)) % 32u), _wgslsmith_div_u32(~func_3(reverseBits(arg_1.b)), 57540u));
    var var_3 = Struct_4(vec2<bool>(arg_1.a.x, false), _wgslsmith_add_i32(arg_1.b, reverseBits(arg_1.b)), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -331f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.a.x))), 1950f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.x * arg_2.a.x)))), firstTrailingBit(_wgslsmith_sub_vec4_u32(~arg_1.d, vec4<u32>(var_2, arg_1.d.x, 21146u, arg_1.d.x))) ^ vec4<u32>(1u, 1u, ~1u, firstLeadingBit(_wgslsmith_sub_u32(1u, 0u))), vec3<bool>(global0.x | true, !arg_1.e.x, true | (any(global0.ww) != true)));
    return arg_1.c;
}

fn func_6(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2, arg_3: f32) -> Struct_2 {
    global1 = array<vec4<i32>, 7>();
    let var_0 = (_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(3464i, 0i, 52176i)) << (~vec3<u32>(11931u, u_input.b, u_input.b) % vec3<u32>(32u)), countOneBits(vec3<i32>(1i, 1i, 1i))) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_add_i32(33635i, 20975i), -7348i, -2147483647i), ~_wgslsmith_add_vec3_i32(vec3<i32>(-19198i, 70390i, -2973i), vec3<i32>(2147483647i, -21951i, 44508i)))) | -22463i;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-178f - 141f), -(~global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.b, 33323u), 7u)]), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-824f, _wgslsmith_f_op_f32(trunc(arg_1.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -750f)) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -1815f, arg_3) * arg_2.a.wwz), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 932f, arg_2.a.x) * arg_2.a.yyy)))), arg_1.a.zyw, select(true, true, global0.x) == (_wgslsmith_f_op_f32(arg_0 - 774f) != _wgslsmith_f_op_f32(-arg_0)))), countOneBits(-21720i));
    var var_2 = !global0.x;
    var var_3 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(197f)))), _wgslsmith_f_op_f32(-arg_2.a.x), 1f, -605f));
    return Struct_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.a), var_1.a, _wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(arg_3 + 939f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 7>();
    let var_0 = func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-572f - 1000f)) + _wgslsmith_f_op_f32(sign(-1165f)))), func_5(func_4(abs(60099u), func_1(global0.yy, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(629f, -560f, -1000f, 902f), vec4<f32>(151f, -322f, -295f, 237f))), select(vec2<bool>(global0.x, true), global0.xy, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1646f * 557f)), ~_wgslsmith_mult_i32(10666i, -24177i)), Struct_4(vec2<bool>(false, global0.x), 1i, Struct_2(vec4<f32>(1f, 1f, 1f, 1f)), select(min(vec4<u32>(u_input.a, u_input.a, 36992u, u_input.a), vec4<u32>(4294967295u, u_input.b, u_input.b, 38558u)), ~vec4<u32>(36499u, u_input.b, u_input.b, 17319u), select(vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(global0.x, false, true, true), global0.x)), !select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(global0.x, global0.x, true), vec3<bool>(false, global0.x, true))), func_4(~242u, Struct_3(-101f, vec4<i32>(2147483647i, 1i, 0i, 0i), global0.wzy, true, -vec2<i32>(0i, -1i)), -411f, 2147483647i)), Struct_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, func_5(Struct_2(vec4<f32>(141f, -1000f, 762f, -1577f)), Struct_4(vec2<bool>(true, global0.x), 17248i, Struct_2(vec4<f32>(-3173f, -968f, -348f, 781f)), vec4<u32>(u_input.b, 33501u, u_input.b, u_input.a), global0.ywz), Struct_2(vec4<f32>(-2293f, 421f, 441f, -1304f))).a.x, _wgslsmith_f_op_f32(-434f - -208f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-998f, -1900f, 998f, 402f))), !vec4<bool>(global0.x, false, global0.x, global0.x)))), -259f);
    global1 = array<vec4<i32>, 7>();
    var var_1 = select(vec3<i32>(-27847i, -37900i, _wgslsmith_clamp_i32(-2147483647i, _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(2147483647i, -20695i, 0i)), vec3<i32>(1i, 1i, 1i)), -6498i)), func_1(!global0.yx, var_0.a, !func_2(_wgslsmith_mult_vec2_i32(vec2<i32>(-62933i, -30477i), vec2<i32>(0i, 0i))).zz).b.wxw, any(select(vec4<bool>(true, false, global0.x, true), !vec4<bool>(global0.x, global0.x, false, global0.x), true)) || !func_1(select(vec2<bool>(global0.x, true), global0.wx, false), vec4<f32>(332f, -236f, -274f, 1000f), vec2<bool>(global0.x, false)).d);
    var var_2 = func_4(4294967295u, Struct_3(var_0.a.x, vec4<i32>(i32(-1i) * -var_1.x, var_1.x, var_1.x, var_1.x), !global0.zww, func_2(func_1(global0.zx, var_0.a, global0.zx).e ^ vec2<i32>(var_1.x, 0i)).x, var_1.zy), -602f, _wgslsmith_mult_i32(~(-var_1.x), -65462i) & reverseBits(_wgslsmith_sub_i32(~(-1i), 1i)));
    let x = u_input.a;
    s_output = StorageBuffer(((firstLeadingBit(var_1.x) | 1i) >> (24406u % 32u)) ^ func_1(func_2(countOneBits(vec2<i32>(var_1.x, var_1.x))).xz, vec4<f32>(-898f, -393f, _wgslsmith_f_op_f32(trunc(var_0.a.x)), 1964f), global0.zx).e.x, vec4<u32>(1u, _wgslsmith_dot_vec3_u32(abs(select(vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(u_input.b, u_input.b, 73212u), false)), firstLeadingBit(vec3<u32>(15365u, u_input.a, 33838u) | vec3<u32>(u_input.a, 4294967295u, 103000u))), 0u << (firstLeadingBit(1495u) % 32u), 0u), _wgslsmith_sub_vec2_u32(~(~vec2<u32>(63522u, u_input.b) << (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u))), vec2<u32>(~u_input.b, u_input.a) | vec2<u32>(countOneBits(35664u), ~u_input.a)));
}

