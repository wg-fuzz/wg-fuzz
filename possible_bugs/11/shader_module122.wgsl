struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_2,
    e: vec4<u32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct Struct_5 {
    a: u32,
    b: f32,
    c: vec4<bool>,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 888f;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-680f, -1986f, -187f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-480f, 141f, 881f))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, 276f, 2682f), vec3<f32>(-884f, -563f, 784f), false)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(2284f, 923f, -1349f))))))), vec3<bool>(true, true, any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)))));
    let var_1 = select(u_input.a, ~u_input.a, !select(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true)));
    let var_2 = ~4294967295u;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1f + -418f))), _wgslsmith_f_op_f32(max(1687f, var_0.x))));
}

fn func_4(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_3) -> u32 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(-2283f + 1118f)) + arg_2.b.x);
    var var_0 = arg_2.d;
    return 52931u;
}

fn func_2() -> vec2<bool> {
    var var_0 = vec4<u32>(countOneBits(1u), 54884u, ~(~1u), ~func_4(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), Struct_3(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-2453f, 1998f, 250f, -1364f))), Struct_1(u_input.b), Struct_2(1000f), select(vec4<u32>(0u, 0u, 12317u, 98593u), vec4<u32>(47233u, 4294967295u, 4294967295u, 1u), true))));
    var var_1 = var_0.xxy;
    let var_2 = firstLeadingBit(abs(vec2<i32>(u_input.a.x, abs(_wgslsmith_add_i32(-49170i, u_input.a.x)))));
    var_1 = ~firstTrailingBit(((var_0.zwz & var_0.xyw) ^ _wgslsmith_sub_vec3_u32(var_0.xxw, var_0.xyx)) << (var_0.xyx % vec3<u32>(32u)));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-285f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-575f, -914f))))), true)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-306f, 1228f, true)), _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-441f)) - 631f)));
    return vec2<bool>(true, any(!select(vec2<bool>(true, false), vec2<bool>(false, false), true)) == all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, false))));
}

fn func_5(arg_0: bool, arg_1: Struct_4, arg_2: bool, arg_3: vec2<u32>) -> vec2<bool> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -328f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -507f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -877f))));
    var var_1 = ~(44262u >> (~_wgslsmith_dot_vec3_u32(~vec3<u32>(66478u, 0u, 82463u), vec3<u32>(arg_3.x, arg_1.b.x, arg_3.x) << (vec3<u32>(arg_1.b.x, 4294967295u, arg_3.x) % vec3<u32>(32u))) % 32u));
    var var_2 = Struct_1(~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, -21707i, u_input.a.x, arg_1.c.x) ^ (vec4<i32>(arg_1.c.x, -13854i, arg_1.c.x, arg_1.c.x) & vec4<i32>(29491i, 2147483647i, 9034i, 5591i)), ~u_input.b, vec4<i32>(20732i, 1i, 5518i, u_input.a.x)));
    var var_3 = Struct_1(u_input.b);
    var var_4 = Struct_1(abs(var_3.a));
    return select(arg_1.a, select(arg_1.a, arg_1.a, true), vec2<bool>(true, true));
}

fn func_1() -> f32 {
    let var_0 = func_5(true, Struct_4(!func_2(), vec4<u32>(~40523u, firstLeadingBit(1u), ~_wgslsmith_mult_u32(1u, 4294967295u), ~(~17573u)), u_input.a.yy), true, vec2<u32>(select(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 14522u, 54694u, 33013u), vec4<u32>(7787u, 0u, 683u, 49281u)), _wgslsmith_add_u32(0u, 39461u), false), abs(4294967295u)) << (~_wgslsmith_clamp_vec2_u32(select(vec2<u32>(39324u, 42382u), vec2<u32>(4294967295u, 37167u), vec2<bool>(true, true)), ~vec2<u32>(51250u, 18551u), vec2<u32>(20183u, 22863u)) % vec2<u32>(32u)));
    let var_1 = ~(vec3<i32>(reverseBits(33663i), u_input.b.x, i32(-1i) * -u_input.b.x) << (vec3<u32>(1u, max(_wgslsmith_mult_u32(26613u, 4998u), ~4294967295u), ~51216u) % vec3<u32>(32u)));
    var var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-522f, 1054f), vec2<f32>(-1000f, -415f)))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(1924f, 1405f) - vec2<f32>(412f, 331f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1138f, 397f)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, _wgslsmith_f_op_f32(step(-1410f, _wgslsmith_f_op_f32(step(-321f, -336f))))) * vec2<f32>(-394f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), true == (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-195f))) == 368f)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1204f - var_2.x)) + -2150f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(func_1()));
    global0 = _wgslsmith_div_f32(var_0.a, -1034f);
    var var_1 = Struct_5(~3739u, -539f, !select(vec4<bool>(select(false, false, false), true, true, true), vec4<bool>(true, func_5(false, Struct_4(vec2<bool>(true, true), vec4<u32>(4294967295u, 0u, 7831u, 12233u), u_input.a.yz), true, vec2<u32>(20916u, 1u)).x, u_input.a.x < u_input.a.x, u_input.a.x < 27947i), !select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), true)), Struct_2(var_0.a), func_2().x);
    global0 = _wgslsmith_f_op_f32(-var_1.d.a);
    var_1 = Struct_5(~(var_1.a & ~var_1.a), _wgslsmith_f_op_f32(f32(-1f) * -568f), vec4<bool>(true, var_1.e, true, true), var_1.d, func_5(var_1.c.x, Struct_4(!func_5(false, Struct_4(vec2<bool>(false, true), vec4<u32>(50181u, var_1.a, 16529u, var_1.a), u_input.a.xy), true, vec2<u32>(1u, var_1.a)), vec4<u32>(_wgslsmith_clamp_u32(128522u, 1u, var_1.a), 36394u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a, var_1.a, var_1.a, var_1.a), vec4<u32>(var_1.a, var_1.a, var_1.a, 4294967295u)), var_1.a), firstTrailingBit(vec2<i32>(u_input.a.x, 28778i) | vec2<i32>(-2147483647i, u_input.a.x))), false, vec2<u32>(5618u, 4294967295u) << ((_wgslsmith_add_vec2_u32(vec2<u32>(65473u, 4294967295u), vec2<u32>(var_1.a, var_1.a)) ^ max(vec2<u32>(0u, 1u), vec2<u32>(0u, 55290u))) % vec2<u32>(32u))).x);
    var var_2 = select(var_1.c.xyy, !var_1.c.yzx, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.d.a, var_1.b)) * 162f), -1558f)));
}

