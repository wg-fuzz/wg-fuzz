struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: Struct_2 = Struct_2(0u, 210f, Struct_1(vec4<bool>(true, false, false, false), vec3<u32>(69164u, 4294967295u, 33670u)), Struct_1(vec4<bool>(false, false, false, true), vec3<u32>(1u, 4294967295u, 0u)), Struct_1(vec4<bool>(true, true, false, true), vec3<u32>(0u, 1u, 77538u)));

var<private> global2: bool;

var<private> global3: array<Struct_2, 13>;

var<private> global4: array<vec4<i32>, 25>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec4<bool> {
    var var_0 = ~(~global1.d.b);
    let var_1 = countOneBits(0i);
    let var_2 = Struct_1(!vec4<bool>(true, ~var_1 > firstLeadingBit(var_1), true, global0.x), ~vec3<u32>(~(~59630u), u_input.a, _wgslsmith_sub_u32(~var_0.x, var_0.x)));
    global2 = global0.x;
    global2 = false;
    return select(vec4<bool>(false, !(all(global1.d.a.yzw) && (global1.c.a.x || var_2.a.x)), true, !(!global1.c.a.x)), global1.d.a, global1.e.a.x);
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: vec2<u32>, arg_3: vec2<u32>) -> u32 {
    var var_0 = Struct_2(arg_3.x, global1.b, global1.d, global1.c, global1.d);
    let var_1 = -_wgslsmith_sub_i32(select(reverseBits(-1i), 2147483647i, true) >> (~u_input.a % 32u), ~0i);
    let var_2 = Struct_1(vec4<bool>(all(func_3()), global1.d.a.x, var_0.d.a.x, (firstTrailingBit(var_1) > var_1) == true), _wgslsmith_mod_vec3_u32(vec3<u32>(select(countOneBits(var_0.c.b.x), ~var_0.d.b.x, any(vec2<bool>(global1.e.a.x, false))), _wgslsmith_div_u32(min(22968u, 1u), u_input.a >> (var_0.d.b.x % 32u)), abs(reverseBits(7486u))), select(vec3<u32>(3465u, max(116631u, 49073u), _wgslsmith_clamp_u32(arg_3.x, u_input.a, arg_3.x)), firstLeadingBit(vec3<u32>(arg_3.x, arg_2.x, global1.d.b.x)), select(!vec3<bool>(arg_0, true, false), global1.e.a.xxz, var_0.d.a.zxw))));
    global3 = array<Struct_2, 13>();
    return ~_wgslsmith_clamp_u32(~_wgslsmith_div_u32(~0u, arg_2.x), _wgslsmith_dot_vec3_u32(vec3<u32>(36561u | var_2.b.x, u_input.a, min(arg_2.x, u_input.a)), global1.c.b), _wgslsmith_mult_u32(arg_2.x, var_2.b.x));
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = global1.e;
    global4 = array<vec4<i32>, 25>();
    var var_1 = Struct_4(1i << (func_2(any(!global1.c.a), _wgslsmith_f_op_f32(-443f * global1.b), global1.c.b.xy, var_0.b.yx) % 32u));
    var var_2 = -global4[_wgslsmith_index_u32(abs(0u), 25u)];
    var var_3 = vec4<u32>(11444u, 25302u, 4294967295u, _wgslsmith_sub_u32(select(var_0.b.x, 1u, !global1.c.a.x || (global1.e.a.x && global0.x)), var_0.b.x));
    return global1.e;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> vec3<bool> {
    global1 = global3[_wgslsmith_index_u32(~abs(_wgslsmith_dot_vec2_u32(~abs(arg_1.b.zz), arg_0.b.yy)), 13u)];
    return global1.e.a.yxw;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(global1.d, func_1(-1748f), _wgslsmith_dot_vec2_u32(~(~(~global1.c.b.yz)), vec2<u32>(max(global1.e.b.x | 0u, _wgslsmith_dot_vec2_u32(global1.e.b.xz, vec2<u32>(4294967295u, global1.c.b.x))), global1.a)));
    var var_0 = firstTrailingBit(~(-(~(-15539i)))) ^ -3096i;
    let var_1 = 1i;
    global3 = array<Struct_2, 13>();
    let var_2 = Struct_4(~var_1);
    global1 = global3[_wgslsmith_index_u32(u_input.a, 13u)];
    global1 = global3[_wgslsmith_index_u32(u_input.a, 13u)];
    global4 = array<vec4<i32>, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.b - -1510f)))), _wgslsmith_f_op_f32(global1.b - _wgslsmith_div_f32(global1.b, _wgslsmith_div_f32(-455f, 1452f))), _wgslsmith_f_op_f32(trunc(global1.b))), 101452u, _wgslsmith_mult_i32(-var_2.a, (var_2.a & 1i) << (~abs(global1.d.b.x) % 32u)));
}

