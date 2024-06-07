struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: Struct_2;

var<private> global2: array<Struct_2, 26>;

var<private> global3: array<vec3<f32>, 11>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: vec2<u32>, arg_3: vec3<i32>) -> vec2<u32> {
    global2 = array<Struct_2, 26>();
    var var_0 = global2[_wgslsmith_index_u32(26195u, 26u)];
    let var_1 = global1.b.b;
    var var_2 = global2[_wgslsmith_index_u32(~(~45582u), 26u)];
    var_0 = global2[_wgslsmith_index_u32(1u, 26u)];
    return ~countOneBits(arg_2);
}

fn func_1(arg_0: bool) -> vec2<u32> {
    var var_0 = global0.x;
    global2 = array<Struct_2, 26>();
    let var_1 = select(func_2(select(vec2<bool>(arg_0, arg_0 | global1.c.a), vec2<bool>(true, true), !select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, false), true)), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c, u_input.a), vec2<i32>(u_input.a, global1.b.c), max(vec2<i32>(12172i, -1i), vec2<i32>(u_input.a, global1.b.c))) ^ select(min(vec2<i32>(global1.c.c, u_input.b), vec2<i32>(u_input.b, u_input.b)), _wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, u_input.c), vec2<i32>(global1.c.c, u_input.a)), all(vec3<bool>(global1.b.a, false, arg_0))), vec2<u32>(1u, ~49290u), _wgslsmith_div_vec3_i32(vec3<i32>(~(-15899i), 34463i, i32(-1i) * -5089i), -firstLeadingBit(vec3<i32>(2147483647i, u_input.a, global1.c.c)))), select(countOneBits(vec2<u32>(9153u, 50024u)), vec2<u32>(1u, ~9766u), !global1.b.a) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), vec2<bool>(!all(vec3<bool>(true, true, true)), !select(global1.a.a | global1.c.a, global1.a.a, all(vec4<bool>(global1.a.a, global1.b.a, true, false)))));
    let var_2 = global1.c;
    let var_3 = ~var_1.x | 1u;
    return _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(~var_1, var_1), ~_wgslsmith_add_vec2_u32(vec2<u32>(var_1.x, 4294967295u) & vec2<u32>(1u, 10250u), ~vec2<u32>(var_3, 1u)) & var_1);
}

fn func_3() -> f32 {
    let var_0 = u_input.c;
    global3 = array<vec3<f32>, 11>();
    let var_1 = !global1.a.a;
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -599f), -376f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.a.b, 1594f))), _wgslsmith_div_f32(global0.x, -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1348f - _wgslsmith_f_op_f32(-global1.b.b))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(-global0.x))), 1766f))));
    var var_3 = false && ((_wgslsmith_clamp_u32(~0u, 55043u, ~4294967295u) != select(countOneBits(73559u), abs(4294967295u), global1.b.a)) | true);
    return 1000f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_u32(select(~(~_wgslsmith_mod_u32(27186u, 4294967295u)), _wgslsmith_add_u32(1u, 26250u), global1.a.a), ~countOneBits(4294967295u));
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -910f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1489f), _wgslsmith_f_op_f32(exp2(global0.x))))))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - global0.x))) + 2132f);
    var var_3 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~select(vec2<u32>(17496u, 1u), vec2<u32>(var_0, var_0), global1.a.a), _wgslsmith_mod_vec2_u32(vec2<u32>(var_0, var_0), func_1(global1.b.a))), ~(~var_0 & _wgslsmith_div_u32(4294967295u, var_0)), var_0) >> (~(~var_0) % 32u);
    global1 = Struct_2(Struct_1(all(select(!vec4<bool>(global1.b.a, global1.a.a, global1.a.a, global1.a.a), select(vec4<bool>(global1.a.a, global1.b.a, global1.c.a, global1.b.a), vec4<bool>(true, false, global1.a.a, global1.c.a), false), vec4<bool>(global1.c.a, global1.b.a, global1.c.a, true))), 379f, 0i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(197f))), -646f)), global1.a, Struct_1(true || !(global0.x > -884f), -1301f, _wgslsmith_clamp_i32(22698i, u_input.b, 47831i), _wgslsmith_f_op_f32(-global0.x)));
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(655f + _wgslsmith_f_op_f32(func_3()))), 599f, -170f);
    let x = u_input.a;
    s_output = StorageBuffer(min(~(var_0 & 67832u), ~abs(var_0)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, _wgslsmith_f_op_f32(step(1000f, var_2)), var_4.x, _wgslsmith_f_op_f32(round(global0.x)))))), abs(-abs(vec3<i32>(u_input.c, 0i, u_input.c))) | max(vec3<i32>(_wgslsmith_sub_i32(global1.a.c, 1580i), u_input.b & 32398i, global1.a.c), vec3<i32>(u_input.c, _wgslsmith_mod_i32(89260i, global1.a.c), ~u_input.c)), _wgslsmith_add_vec2_u32(vec2<u32>(1u, var_0), firstLeadingBit(~_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, var_0), vec2<u32>(var_0, 22377u)))));
}

