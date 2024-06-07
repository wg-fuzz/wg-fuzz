struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_4 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 26>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> bool {
    var var_0 = vec3<bool>(true, true, false);
    global0 = array<Struct_3, 26>();
    global0 = array<Struct_3, 26>();
    let var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(1154f, 1611f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1257f - _wgslsmith_f_op_f32(f32(-1f) * -704f)), _wgslsmith_f_op_f32(-210f * -1490f), var_0.x))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1929f * -318f))), _wgslsmith_f_op_f32(sign(-1217f)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-341f, -230f)))));
    var_0 = vec3<bool>(true || var_0.x, !(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.x))) <= _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(f32(-1f) * -638f))), all(select(!vec4<bool>(var_0.x, var_0.x, var_0.x, true), !select(vec4<bool>(true, var_0.x, false, true), vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(false, var_0.x, false, false)), true)));
    return var_0.x;
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: vec2<u32>) -> vec2<bool> {
    var var_0 = ~(~vec3<u32>(~0u, max(25655u, u_input.a.x), 4294967295u)) | u_input.a;
    var_0 = select(vec3<u32>(min(u_input.b.x, var_0.x) >> (arg_2.x % 32u), firstLeadingBit(4294967295u), ~var_0.x), u_input.a & u_input.a, vec3<bool>(arg_0 & all(vec3<bool>(arg_0, arg_0, arg_0)), func_3(), select(any(select(vec2<bool>(arg_0, arg_0), vec2<bool>(true, arg_0), vec2<bool>(arg_0, arg_0))), arg_0, false)));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1102f);
    var var_2 = ~u_input.a ^ _wgslsmith_div_vec3_u32(vec3<u32>(min(_wgslsmith_div_u32(var_0.x, u_input.b.x), 0u), _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(u_input.b.x, arg_2.x, arg_2.x)), arg_2.x), vec3<u32>(~(~18247u), arg_2.x, _wgslsmith_div_u32(arg_2.x, select(u_input.b.x, 4294967295u, false))));
    let var_3 = ~(~vec3<i32>(abs(-48757i), -abs(-1i), _wgslsmith_sub_i32(i32(-1i) * -1i, _wgslsmith_clamp_i32(82470i, 0i, -1i))));
    return select(select(select(select(vec2<bool>(arg_0, false), vec2<bool>(true, true), select(vec2<bool>(arg_0, false), vec2<bool>(false, arg_0), vec2<bool>(arg_0, false))), select(!vec2<bool>(arg_0, arg_0), !vec2<bool>(arg_0, arg_0), true), any(!vec4<bool>(arg_0, false, arg_0, true))), vec2<bool>(true, true), vec2<bool>(true, true)), select(!(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false))), vec2<bool>(false, arg_0), !select(select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), false), !vec2<bool>(arg_0, true), !arg_0)), !(!select(vec2<bool>(true, arg_0), vec2<bool>(true, true), false)));
}

fn func_1(arg_0: Struct_3) -> bool {
    global0 = array<Struct_3, 26>();
    let var_0 = -arg_0.b.x;
    return all(select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), func_2(any(vec4<bool>(false, false, false, false)), _wgslsmith_f_op_f32(962f + -1266f), u_input.a.zx), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), vec2<bool>(all(vec3<bool>(false, true, true)) | false, all(vec3<bool>(true, true, true))), vec2<bool>(true, !all(vec2<bool>(true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 26>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(347f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1109f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(261f, -630f)))));
    let var_1 = Struct_2(Struct_1(countOneBits(countOneBits(~vec4<u32>(12835u, 4292u, 4294967295u, u_input.a.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-552f, 650f, var_0.x)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -1811f, var_0.x) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 493f, -269f) + vec3<f32>(120f, -355f, -499f)))), vec4<u32>(~u_input.a.x, ~u_input.a.x, countOneBits(4294967295u), ~22193u) >> (~(vec4<u32>(u_input.b.x, u_input.b.x, u_input.a.x, 4294967295u) & vec4<u32>(u_input.a.x, 102143u, 30593u, u_input.b.x)) % vec4<u32>(32u)), !(!func_1(Struct_3(u_input.b.x, vec2<i32>(-2147483647i, 23425i)))), 1i), Struct_1(vec4<u32>(~u_input.b.x, u_input.a.x, abs(0u), u_input.a.x), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -1036f, 837f))))), vec4<u32>(_wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.a.x, 4294967295u, 1u), 94577u), 0u, ~_wgslsmith_div_u32(u_input.b.x, 0u), u_input.a.x & 0u), all(vec2<bool>(any(vec4<bool>(false, false, false, true)), true)), -2147483647i >> (min(0u, u_input.a.x) % 32u)));
    global0 = array<Struct_3, 26>();
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -2272f);
    let var_3 = vec2<u32>(abs(_wgslsmith_clamp_u32(reverseBits(countOneBits(1u)), u_input.b.x, ~(~var_1.b.a.x))), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.e, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.b.b.x, _wgslsmith_div_f32(-1048f, var_0.x)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(100f * _wgslsmith_f_op_f32(-400f - var_2)), var_2)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.b.x, 774f, var_2, -187f) + vec4<f32>(404f, var_1.b.b.x, var_0.x, -383f))))));
}

