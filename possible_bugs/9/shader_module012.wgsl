struct Struct_1 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 23>;

var<private> global1: Struct_2;

var<private> global2: array<Struct_1, 31>;

var<private> global3: array<vec4<u32>, 32>;

var<private> global4: array<Struct_2, 28>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec3<u32>, arg_1: u32) -> f32 {
    var var_0 = vec2<bool>(true, true);
    let var_1 = vec2<bool>(!var_0.x, var_0.x);
    let var_2 = u_input.d.yw;
    global0 = array<Struct_2, 23>();
    var var_3 = Struct_1(vec3<f32>(-1878f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1294f - _wgslsmith_f_op_f32(global1.a.b - -548f)) + 1060f), _wgslsmith_f_op_f32(1380f * _wgslsmith_div_f32(-822f, global1.a.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1873f - -1096f)));
    return global1.a.a.x;
}

fn func_3(arg_0: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1357f);
    let var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.b, -1000f, arg_0, var_0))), vec4<f32>(-1305f, _wgslsmith_f_op_f32(ceil(-2589f)), _wgslsmith_div_f32(934f, -666f), global1.a.a.x)) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -277f), -1419f, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-638f)))))));
    global1 = Struct_2(global1.a, u_input.a.x);
    global2 = array<Struct_1, 31>();
    global2 = array<Struct_1, 31>();
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -1661f, arg_0)), _wgslsmith_f_op_vec3_f32(-var_1.yxy)), _wgslsmith_div_vec3_f32(vec3<f32>(global1.a.a.x, var_0, global1.a.a.x), vec3<f32>(global1.a.a.x, var_1.x, global1.a.b)), true)) * _wgslsmith_f_op_vec3_f32(ceil(global1.a.a))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.a.a.x + 1418f), 1022f)));
}

fn func_4(arg_0: Struct_1) -> vec4<bool> {
    global2 = array<Struct_1, 31>();
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(99209u, max(_wgslsmith_mult_u32(_wgslsmith_mult_u32(min(u_input.a.x, 7989u), reverseBits(u_input.e)), firstTrailingBit(64261u)), _wgslsmith_add_u32(_wgslsmith_mod_u32(714u, u_input.e) >> (u_input.a.x % 32u), global1.b))), 23u)];
    global1 = Struct_2(Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.a.a + vec3<f32>(global1.a.b, var_0.a.a.x, arg_0.b))), var_0.a.a), 193f), 0u);
    global1 = Struct_2(global2[_wgslsmith_index_u32(u_input.a.x, 31u)], _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(abs(u_input.e), u_input.e, (global1.b | u_input.a.x) ^ _wgslsmith_clamp_u32(0u, 4294967295u, 49051u), 0u)));
    let var_1 = select(select(true, (false & any(vec4<bool>(false, false, true, true))) & true, ((u_input.c.x ^ -2147483647i) == u_input.b.x) || false), false, false);
    return !(!select(vec4<bool>(false || var_1, true, !var_1, var_1), vec4<bool>(any(vec4<bool>(true, true, false, true)), 0i == u_input.b.x, true, false), select(!vec4<bool>(false, var_1, var_1, false), select(vec4<bool>(var_1, true, var_1, false), vec4<bool>(false, true, var_1, var_1), vec4<bool>(true, true, var_1, true)), vec4<bool>(var_1, false, var_1, false))));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    var var_0 = !func_4(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(u_input.a.yyz, 6658u)) + _wgslsmith_f_op_f32(f32(-1f) * -250f))));
    return func_3(arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 23>();
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.a.a.x), _wgslsmith_div_f32(-430f, _wgslsmith_div_f32(163f, global1.a.b)))))));
    global3 = array<vec4<u32>, 32>();
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(560f))));
    let var_2 = Struct_2(func_1(~u_input.a.wz & u_input.a.xz, global1.a, _wgslsmith_f_op_f32(sign(-1486f))), ~u_input.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(func_3(global1.a.b).a.zx - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(775f, global1.a.a.x, true)) - _wgslsmith_f_op_f32(705f * 451f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(var_2.a.b)), var_2.a.b)))), ~u_input.c, _wgslsmith_mult_i32(abs(1i), min(reverseBits(-2534i), -1i) >> ((global1.b ^ 52505u) % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-727f))) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * func_1(vec2<u32>(countOneBits(u_input.a.x), ~global1.b), var_2.a, _wgslsmith_f_op_f32(f32(-1f) * -826f)).b));
}

