struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec2<i32>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<bool>,
    d: vec3<i32>,
    e: i32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 31>;

var<private> global1: array<vec2<u32>, 14> = array<vec2<u32>, 14>(vec2<u32>(4294967295u, 29608u), vec2<u32>(4536u, 8426u), vec2<u32>(0u, 4294967295u), vec2<u32>(15953u, 736u), vec2<u32>(4392u, 4294967295u), vec2<u32>(60477u, 1u), vec2<u32>(1u, 1u), vec2<u32>(1u, 59319u), vec2<u32>(43257u, 46856u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 17096u), vec2<u32>(68316u, 23952u), vec2<u32>(4294967295u, 32308u), vec2<u32>(1u, 4294967295u));

var<private> global2: array<vec3<bool>, 7>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>) -> vec4<u32> {
    let var_0 = countOneBits(u_input.b);
    var var_1 = arg_0;
    let var_2 = arg_0;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-438f)), _wgslsmith_f_op_f32(-var_2.a.x)), _wgslsmith_div_f32(_wgslsmith_div_f32(var_1.a.x, arg_0.a.x), var_2.b.x), var_2.b.x, var_2.a.x)));
    var_1 = Struct_1(_wgslsmith_div_vec3_f32(arg_0.b, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(max(var_1.b.x, 358f)), 519f), vec3<f32>(_wgslsmith_f_op_f32(step(var_1.b.x, var_3.x)), _wgslsmith_f_op_f32(-1000f + 1097f), 767f))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_3.x, -1000f, var_2.b.x))))) - var_3.xww))), vec2<i32>(var_2.c.x, _wgslsmith_dot_vec2_i32(~var_1.c >> (~global1[_wgslsmith_index_u32(4294967295u, 14u)] % vec2<u32>(32u)), arg_1.zz << (countOneBits(global1[_wgslsmith_index_u32(var_0, 14u)]) % vec2<u32>(32u)))), !(!all(vec4<bool>(true, true, true, false))), var_1.e);
    return ~(~vec4<u32>(~(~var_0), var_0, 13420u, var_0));
}

fn func_1(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: bool) -> vec4<u32> {
    global0 = array<Struct_3, 31>();
    global1 = array<vec2<u32>, 14>();
    var var_0 = any(arg_0.a.c.wy);
    var var_1 = arg_1;
    var_1 = abs(_wgslsmith_mult_vec2_u32(global1[_wgslsmith_index_u32(~abs(26092u), 14u)], arg_1));
    return _wgslsmith_clamp_vec4_u32(~(~_wgslsmith_add_vec4_u32(vec4<u32>(arg_1.x, arg_1.x, 377u, arg_1.x) & vec4<u32>(9214u, 0u, arg_1.x, arg_0.a.b.x), ~vec4<u32>(arg_1.x, 1u, 1u, 2512u))), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, _wgslsmith_mod_u32(4294967295u, 33163u), 48658u, 12196u) ^ vec4<u32>(~arg_1.x, arg_1.x, u_input.b, ~1298u), ~vec4<u32>(1u, arg_1.x, ~var_1.x, 1u), ~_wgslsmith_mod_vec4_u32(vec4<u32>(26184u, 1u, var_1.x, var_1.x), vec4<u32>(18546u, 15072u, 1u, var_1.x)) & (func_2(Struct_1(vec3<f32>(-1000f, -1000f, 688f), vec3<f32>(-675f, 1076f, -1254f), vec2<i32>(-14068i, 1i), arg_2, -2147483647i), vec3<i32>(u_input.c.x, -10896i, -48833i)) ^ ~vec4<u32>(u_input.b, 61915u, var_1.x, arg_1.x))), ~vec4<u32>(var_1.x, 2094u, ~arg_1.x, 1u));
}

fn func_3(arg_0: vec4<bool>, arg_1: i32) -> vec4<i32> {
    return vec4<i32>(u_input.a, -23674i, -1i, -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<u32>, 14>();
    var var_0 = abs(max(select(vec4<u32>(u_input.b, _wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(u_input.b, 14u)], vec2<u32>(u_input.b, 1u)), 1u, ~u_input.b), firstLeadingBit(countOneBits(vec4<u32>(u_input.b, 6465u, u_input.b, u_input.b))), true), ~func_1(Struct_4(Struct_3(vec4<i32>(u_input.a, 0i, 1i, u_input.c.x), vec3<u32>(u_input.b, u_input.b, u_input.b), vec4<bool>(true, true, false, false), vec3<i32>(u_input.c.x, u_input.a, u_input.c.x), u_input.c.x)), ~global1[_wgslsmith_index_u32(41546u, 14u)], true)));
    global2 = array<vec3<bool>, 7>();
    var var_1 = vec2<i32>(_wgslsmith_dot_vec3_i32(countOneBits(~(vec3<i32>(u_input.c.x, 4294i, u_input.a) & vec3<i32>(u_input.c.x, -22336i, 0i))), vec3<i32>(_wgslsmith_mult_i32(1i, max(u_input.a, -74101i)), _wgslsmith_div_i32(219i ^ u_input.c.x, u_input.c.x), -(~u_input.a))), 1i);
    var var_2 = _wgslsmith_dot_vec2_i32(u_input.c, min(~u_input.c, ~u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(~func_3(vec4<bool>(true, false, true, true), -25000i), -vec4<i32>(abs(u_input.c.x), -u_input.c.x, -2147483647i, var_1.x)), reverseBits(u_input.c.x) >> (select(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, var_0.x, var_0.x, u_input.b), _wgslsmith_add_vec4_u32(vec4<u32>(58855u, 1u, var_0.x, 4294967295u), vec4<u32>(var_0.x, u_input.b, u_input.b, 4294967295u))), ~abs(var_0.x), false) % 32u));
}

