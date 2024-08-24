struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec4<bool>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec3<u32>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 23>;

var<private> global1: vec2<u32> = vec2<u32>(30357u, 4294967295u);

var<private> global2: array<vec4<f32>, 12>;

var<private> global3: f32;

var<private> global4: Struct_5 = Struct_5(vec2<u32>(25231u, 2890u), 2147483647i);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: i32, arg_3: vec2<bool>) -> Struct_3 {
    global0 = array<vec2<u32>, 23>();
    global3 = _wgslsmith_f_op_f32(ceil(-1763f));
    return Struct_3(Struct_1(!(!(!arg_1.a.x))), max(_wgslsmith_clamp_u32(~arg_0, global4.a.x, global1.x), firstTrailingBit(arg_0) ^ ~global1.x), !(!vec4<bool>(1i > global4.b, true, arg_0 < global4.a.x, true)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4, arg_2: u32, arg_3: Struct_4) -> Struct_2 {
    global2 = array<vec4<f32>, 12>();
    var var_0 = Struct_1(true);
    var var_1 = Struct_1(!(!select(false, false, all(vec2<bool>(true, true)))));
    var var_2 = vec3<i32>(_wgslsmith_clamp_i32(u_input.a, reverseBits(-u_input.a), -1i) << (arg_0.b % 32u), _wgslsmith_clamp_i32(reverseBits(_wgslsmith_clamp_i32(~global4.b, global4.b, ~2147483647i)), _wgslsmith_dot_vec2_i32(min(vec2<i32>(u_input.a, global4.b), vec2<i32>(-32299i, global4.b)), abs(vec2<i32>(u_input.a, global4.b))) | -firstLeadingBit(-18695i), 12880i), min(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -20161i, 35878i) | vec3<i32>(37807i, u_input.a, u_input.a), select(vec3<i32>(u_input.a, -1i, -1i), vec3<i32>(global4.b, global4.b, 0i), arg_3.a.xyw))), _wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_mod_i32(global4.b, -19497i), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 0i), vec2<i32>(-2147483647i, u_input.a))), u_input.a)));
    global4 = Struct_5(~(~global4.a), countOneBits(var_2.x));
    return Struct_2(select(arg_0.c, vec4<bool>(true, true, var_2.x >= var_2.x, true || (global1.x <= 96827u)), true), vec4<f32>(1f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-942f - 542f) - _wgslsmith_f_op_f32(floor(-519f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -482f))), !select(var_0.a, false, arg_3.a.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -428f), _wgslsmith_f_op_f32(max(-857f, -777f)))), _wgslsmith_f_op_f32(-2163f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -1000f) * 140f))));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: Struct_2) -> f32 {
    let var_0 = ~(vec3<u32>(~(global4.a.x ^ 4294967295u), 44641u, 47197u) | (((vec3<u32>(53962u, global4.a.x, global4.a.x) << (vec3<u32>(0u, global4.a.x, global4.a.x) % vec3<u32>(32u))) & ~vec3<u32>(35373u, 95996u, 38890u)) & vec3<u32>(_wgslsmith_add_u32(global1.x, global4.a.x), ~26944u, 1u)));
    var var_1 = var_0;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * arg_1.x));
    var var_3 = arg_1.x;
    var var_4 = vec4<i32>(1i, 63653i, (i32(-1i) * -38709i) << (_wgslsmith_sub_u32(0u, ~_wgslsmith_sub_u32(26467u, var_1.x)) % 32u), u_input.a);
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-819f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.b.x, arg_3.b.x)), 122f))));
}

fn func_5(arg_0: vec3<bool>, arg_1: f32) -> vec2<u32> {
    var var_0 = 1043f;
    var var_1 = Struct_1(true);
    global0 = array<vec2<u32>, 23>();
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, 247f) - vec2<f32>(arg_1, arg_1)), vec2<f32>(arg_1, arg_1)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(3862f, 723f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1, arg_1), vec2<f32>(707f, arg_1), false)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(596f, -1332f))) * vec2<f32>(arg_1, func_3(Struct_3(Struct_1(var_1.a), global1.x, vec4<bool>(false, true, arg_0.x, true)), Struct_4(vec4<bool>(false, arg_0.x, var_1.a, false), vec3<u32>(global1.x, 19776u, global4.a.x)), 1u, Struct_4(vec4<bool>(false, arg_0.x, true, false), vec3<u32>(1u, global1.x, global4.a.x))).b.x))));
    var var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1305f, -1351f)) + _wgslsmith_f_op_f32(sign(var_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, _wgslsmith_div_f32(-497f, arg_1), 436f)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, var_2.x, arg_1)) * vec3<f32>(var_2.x, arg_1, arg_1)))))), arg_0));
    return ~global0[_wgslsmith_index_u32(~global1.x, 23u)];
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: bool) -> vec2<u32> {
    let var_0 = -1019f;
    global1 = ~min(abs(global4.a), _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(global0[_wgslsmith_index_u32(global1.x, 23u)], global0[_wgslsmith_index_u32(global4.a.x, 23u)]), vec2<u32>(global1.x, global4.a.x)) >> (global0[_wgslsmith_index_u32(max(0u, 17284u), 23u)] % vec2<u32>(32u)));
    let var_1 = vec2<bool>(false, select(arg_2, all(vec2<bool>(select(true, arg_2, false), true)), false));
    global1 = global0[_wgslsmith_index_u32(4294967295u, 23u)];
    var var_2 = Struct_4(vec4<bool>((~global4.a.x > global4.a.x) & true, global1.x < global4.a.x, true, !(true != var_1.x) || true), abs(_wgslsmith_sub_vec3_u32(select(vec3<u32>(global1.x, global1.x, global4.a.x), vec3<u32>(global1.x, global4.a.x, 40970u), vec3<bool>(false, false, true)), ~vec3<u32>(51168u, 8799u, 4294967295u))) << (~vec3<u32>(select(59032u, 0u, true), global1.x, _wgslsmith_dot_vec2_u32(global4.a, vec2<u32>(global4.a.x, global4.a.x))) % vec3<u32>(32u)));
    return min(func_5(var_2.a.yww, _wgslsmith_f_op_f32(func_4(select(vec2<bool>(false, var_1.x), var_2.a.xx, !var_1.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-373f, var_0)), arg_1, func_3(func_2(44504u, Struct_2(var_2.a, vec4<f32>(646f, var_0, -1201f, 183f)), 4296i, var_1), Struct_4(var_2.a, var_2.b), 0u, Struct_4(vec4<bool>(var_2.a.x, arg_2, true, var_2.a.x), vec3<u32>(4294967295u, global1.x, var_2.b.x)))))), global0[_wgslsmith_index_u32(~max(countOneBits(68643u) >> (~global4.a.x % 32u), ~0u), 23u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = min(~(~global4.a), func_1(false, Struct_1(any(vec3<bool>(true, true, true))), false)) >> (global4.a % vec2<u32>(32u));
    var var_0 = vec3<u32>(global4.a.x, ~global1.x, _wgslsmith_clamp_u32(global4.a.x, ~(~global4.a.x), 0u));
    global0 = array<vec2<u32>, 23>();
    var var_1 = _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_div_u32(~1u, _wgslsmith_add_u32(global1.x, 29076u)), ~var_0.x) & _wgslsmith_mod_vec2_u32(~vec2<u32>(global1.x, global1.x), vec2<u32>(var_0.x & 0u, var_0.x)), global4.a);
    var var_2 = select(vec3<i32>(countOneBits(-16776i), u_input.a, firstTrailingBit(~_wgslsmith_div_i32(-1914i, -7736i))), max(vec3<i32>(_wgslsmith_mult_i32(firstTrailingBit(-2386i), -u_input.a), _wgslsmith_dot_vec2_i32(vec2<i32>(global4.b, global4.b), vec2<i32>(-2147483647i, global4.b)), i32(-1i) * -global4.b), ~select(countOneBits(vec3<i32>(u_input.a, 68289i, -3865i)), _wgslsmith_add_vec3_i32(vec3<i32>(36492i, global4.b, global4.b), vec3<i32>(global4.b, u_input.a, global4.b)), true)), _wgslsmith_f_op_f32(-1265f * _wgslsmith_f_op_f32(f32(-1f) * -1601f)) > _wgslsmith_f_op_f32(func_3(Struct_3(Struct_1(true), var_1.x, vec4<bool>(false, false, false, true)), Struct_4(vec4<bool>(true, true, true, true), vec3<u32>(global4.a.x, var_1.x, 18194u)), global4.a.x, Struct_4(vec4<bool>(false, true, false, false), vec3<u32>(global4.a.x, var_1.x, 0u))).b.x + _wgslsmith_f_op_f32(min(-253f, -1321f))));
    var var_3 = Struct_4(func_2(~34024u, Struct_2(vec4<bool>(true, true, true, all(vec2<bool>(true, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-654f, -624f, -1211f, 352f))), 1i, vec2<bool>(func_3(Struct_3(Struct_1(true), 1u, vec4<bool>(false, false, false, false)), Struct_4(vec4<bool>(true, true, false, true), vec3<u32>(0u, global1.x, 96034u)), abs(25575u), Struct_4(vec4<bool>(true, false, false, false), vec3<u32>(global4.a.x, var_1.x, 1u))).a.x, true)).c, vec3<u32>(4294967295u, reverseBits(var_1.x), abs(_wgslsmith_add_u32(~6168u, global4.a.x))));
    global2 = array<vec4<f32>, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b, var_2.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-683f - 1916f) - _wgslsmith_f_op_f32(sign(250f)))), -1182f, true)), _wgslsmith_f_op_f32(2097f * 235f));
}

