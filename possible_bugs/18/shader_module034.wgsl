struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec2<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
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

var<private> global0: i32 = 28854i;

var<private> global1: u32 = 1u;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: vec2<u32>) -> vec4<u32> {
    global1 = 1u;
    var var_0 = Struct_2(select(true, (true && all(vec2<bool>(false, true))) & false, all(vec2<bool>(true, true))), ~vec2<u32>(4294967295u, ~11716u), Struct_1(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false)));
    global1 = _wgslsmith_mult_u32(~_wgslsmith_add_u32(~_wgslsmith_mod_u32(arg_0.x, var_0.b.x), arg_0.x), ~(countOneBits(var_0.b.x | u_input.a.x) << (23465u % 32u)));
    global1 = 4247u;
    global0 = -(1i >> (select(46294u, firstTrailingBit(~1u), var_0.c.a.x) % 32u));
    return u_input.a;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32) -> vec4<bool> {
    var var_0 = arg_0.c;
    let var_1 = Struct_1(!vec4<bool>(true, !(!arg_0.c.a.x), all(var_0.a.xxw), any(select(vec4<bool>(false, false, var_0.a.x, true), vec4<bool>(arg_1.a, false, arg_1.c.a.x, true), arg_1.c.a))));
    var_0 = Struct_1(!var_0.a);
    var var_2 = vec3<i32>(~(~min(9952i, 0i)), ~(-_wgslsmith_add_i32(firstTrailingBit(34547i), ~13921i)), _wgslsmith_div_i32(-2147483647i, _wgslsmith_add_i32(_wgslsmith_clamp_i32(~(-1i), 0i, max(2147483647i, 2147483647i)), _wgslsmith_div_i32(reverseBits(-2147483647i), abs(11379i)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(-1380f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2294f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 - arg_2) + arg_2), _wgslsmith_f_op_f32(step(-107f, _wgslsmith_f_op_f32(arg_2 - 1069f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1598f, -159f, arg_2, -339f), vec4<f32>(arg_2, 883f, -149f, -3045f))), vec4<f32>(422f, _wgslsmith_f_op_f32(select(arg_2, -603f, true)), -987f, _wgslsmith_div_f32(837f, arg_2)), arg_0.c.a))));
    return vec4<bool>(!all(vec3<bool>(arg_0.c.a.x, true, var_0.a.x)) | false, !(!all(select(vec2<bool>(true, false), vec2<bool>(true, true), true))), any(vec4<bool>(arg_1.c.a.x | true, true, true, !(!arg_1.c.a.x))), true);
}

fn func_1() -> Struct_1 {
    global1 = ~(~(~u_input.c.x));
    var var_0 = ~(~func_2(~countOneBits(u_input.a.xy)));
    return Struct_1(vec4<bool>(true, true, true, select(true, all(func_3(Struct_2(true, vec2<u32>(66029u, 4294967295u), Struct_1(vec4<bool>(true, true, false, true))), Struct_2(false, u_input.a.zw, Struct_1(vec4<bool>(false, true, false, false))), -670f)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = func_1();
    let var_2 = vec3<u32>(max(~(~u_input.c.x), ~_wgslsmith_dot_vec3_u32(u_input.a.wxz, vec3<u32>(11297u, u_input.a.x, 4294967295u))) << (firstTrailingBit(~(~u_input.a.x)) % 32u), ~u_input.a.x, u_input.b);
    global1 = func_2(firstTrailingBit(_wgslsmith_clamp_vec2_u32(var_2.xz, var_2.xy, var_2.yx) >> (vec2<u32>(var_2.x, 48562u) % vec2<u32>(32u)))).x ^ var_2.x;
    var var_3 = func_1().a.yw;
    var_3 = var_1.a.yz;
    global1 = u_input.b;
    var var_4 = Struct_2(func_1().a.x, max(~reverseBits(u_input.a.wx), vec2<u32>(33071u, var_2.x)), var_1);
    var var_5 = select(~(37216u >> (var_2.x % 32u)), ~var_4.b.x, var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(1028f);
}

