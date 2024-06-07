struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(4294967295u), Struct_2(133354u), Struct_2(1u), Struct_2(91944u), Struct_2(54065u), Struct_2(0u), Struct_2(57905u), Struct_2(1u), Struct_2(10736u), Struct_2(1u), Struct_2(12520u), Struct_2(70262u), Struct_2(0u), Struct_2(1u), Struct_2(0u));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32, arg_1: f32) -> f32 {
    var var_0 = global1[_wgslsmith_index_u32(firstLeadingBit(13976u), 15u)];
    global0 = u_input.c;
    var var_1 = 39780i;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -664f), _wgslsmith_f_op_f32(step(-856f, -453f))))))));
    var var_3 = global1[_wgslsmith_index_u32(~countOneBits(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(65861u, 24264u, var_0.a, 4294967295u), vec4<u32>(4294u, 1388u, var_0.a, 4294967295u)), _wgslsmith_div_vec4_u32(~vec4<u32>(2648u, 79912u, var_0.a, 30598u), ~vec4<u32>(var_0.a, 18086u, 57894u, 1u)))), 15u)];
    return arg_1;
}

fn func_2() -> u32 {
    global0 = 26291i;
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(u_input.c ^ abs(u_input.b), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -947f))))), -483f));
    global0 = 12294i;
    global1 = array<Struct_2, 15>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1560f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(718f)))))));
    return 94818u;
}

fn func_1(arg_0: i32) -> u32 {
    return func_2();
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = arg_0.a;
    var var_1 = arg_1.x;
    global1 = array<Struct_2, 15>();
    var var_2 = _wgslsmith_f_op_f32(abs(-1733f));
    let var_3 = firstTrailingBit(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.a, 0u), vec2<u32>(var_0, 21243u)), ~vec2<u32>(arg_0.a, arg_0.a)) & ~var_0, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0, arg_0.a, 20952u), vec3<u32>(10956u, arg_0.a, arg_0.a)), vec3<u32>(var_0, var_0, 4294967295u) | vec3<u32>(var_0, arg_0.a, arg_0.a), _wgslsmith_clamp_vec3_u32(vec3<u32>(19660u, arg_0.a, 71699u), vec3<u32>(arg_0.a, arg_0.a, arg_0.a), vec3<u32>(4294967295u, 4294967295u, arg_0.a))), countOneBits(vec3<u32>(4294967295u, 1u, 0u) >> (vec3<u32>(var_0, 1u, 1u) % vec3<u32>(32u))))));
    return Struct_1(-236f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(0u, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 38373u), vec3<u32>(28632u, 1u, 0u)) >> (~86034u % 32u), max(~73445u, 3198u))));
    global0 = u_input.a;
    let var_1 = 1u;
    let var_2 = func_4(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_1, firstTrailingBit(func_1(u_input.c))), 15u)], vec4<bool>(all(select(vec3<bool>(false, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), true)), true, true, all(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), true), true))));
    global1 = array<Struct_2, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(31779u, ~(~var_1), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(78232u, 1u)), _wgslsmith_clamp_vec2_u32(~vec2<u32>(6843u, var_1), _wgslsmith_mult_vec2_u32(var_0.wx, vec2<u32>(9486u, 10397u)), var_0.ww)), var_0.x), ~_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.a, u_input.c, u_input.d, u_input.a), select(vec4<i32>(45012i, 63459i, u_input.d, -6043i), vec4<i32>(u_input.a, u_input.d, -1i, 2147483647i), vec4<bool>(false, false, false, true))), vec4<i32>(_wgslsmith_div_i32(u_input.c, u_input.c), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 1i, 30572i), vec3<i32>(u_input.c, -9833i, -69627i)), -1i, abs(-35433i))), reverseBits(vec2<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(0i, -19067i)), vec2<i32>(u_input.b, u_input.b) >> (vec2<u32>(var_1, var_0.x) % vec2<u32>(32u))))));
}

