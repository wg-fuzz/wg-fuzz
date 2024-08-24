struct Struct_1 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_2,
    d: vec3<u32>,
}

struct Struct_4 {
    a: i32,
    b: vec3<u32>,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
    c: vec2<u32>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 1> = array<f32, 1>(426f);

var<private> global1: i32 = 2147483647i;

var<private> global2: u32;

var<private> global3: array<Struct_5, 29>;

var<private> global4: i32;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: bool, arg_1: vec4<f32>, arg_2: vec2<f32>) -> i32 {
    var var_0 = _wgslsmith_mod_i32(-(0i >> (u_input.a.x % 32u)), countOneBits(abs(_wgslsmith_clamp_i32(0i, 28288i, 1i)))) <= -(_wgslsmith_div_i32(firstTrailingBit(-1i), ~2147483647i) | _wgslsmith_dot_vec2_i32(min(vec2<i32>(1i, 1i), vec2<i32>(9348i, -21258i)), -vec2<i32>(-1i, 25454i)));
    var var_1 = select(vec2<bool>(true, !any(!vec4<bool>(true, false, arg_0, true))), vec2<bool>(true, false), vec2<bool>(arg_0, (true && any(vec4<bool>(false, false, false, true))) & true));
    global0 = array<f32, 1>();
    var var_2 = var_1.x;
    return 31361i;
}

fn func_2(arg_0: Struct_1) -> Struct_3 {
    let var_0 = false;
    var var_1 = vec2<i32>(firstLeadingBit(i32(-1i) * -(~(-50934i))), ~func_3(firstTrailingBit(73482u) <= ~u_input.a.x, _wgslsmith_div_vec4_f32(vec4<f32>(-485f, arg_0.a, 224f, 2453f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(927f, 689f, global0[_wgslsmith_index_u32(8173u, 1u)], 984f))), _wgslsmith_f_op_vec2_f32(-arg_0.b)));
    var var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 1u)])) * arg_0.b.x), arg_0.a), vec2<f32>(arg_0.a, 1000f));
    var var_3 = Struct_3(arg_0, reverseBits(_wgslsmith_add_vec4_i32(~(vec4<i32>(var_1.x, var_1.x, 890i, var_1.x) | vec4<i32>(var_1.x, var_1.x, var_1.x, var_1.x)), ~vec4<i32>(2654i, var_1.x, var_1.x, var_1.x))), Struct_2(Struct_1(_wgslsmith_f_op_f32(-459f + _wgslsmith_f_op_f32(sign(1103f))), vec2<f32>(-1593f, -1296f)), arg_0, select(vec3<bool>(var_0, true, true), select(vec3<bool>(true, false, var_0), vec3<bool>(true, var_0, var_0), vec3<bool>(true, false, var_0)), false), var_1.x), firstLeadingBit(u_input.a));
    let var_4 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-630f - 423f))), vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 1u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_2.x)) + arg_0.a))), vec4<i32>(firstTrailingBit(-1i), ~(-1i << (1u % 32u)), ~abs(1i) & var_1.x, -2147483647i), Struct_2(arg_0, arg_0, var_3.c.c, var_1.x << ((min(1u, 28048u) & firstTrailingBit(1u)) % 32u)), var_3.d);
    return var_4;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> Struct_3 {
    global0 = array<f32, 1>();
    var var_0 = vec4<bool>(func_2(arg_1.c.b).c.c.x && all(vec4<bool>(all(vec3<bool>(false, false, true)), !arg_1.c.c.x, any(arg_1.c.c.yx), arg_1.c.c.x || arg_1.c.c.x)), true, false, (all(arg_1.c.c.zz) | (~arg_1.b.x > 1i)) | true);
    let var_1 = vec4<i32>(i32(-1i) * -2147483647i, arg_1.b.x, 54999i, _wgslsmith_dot_vec2_i32(-arg_1.b.wz, ~(~(-vec2<i32>(1i, arg_1.b.x)))));
    var var_2 = Struct_4(func_2(func_2(Struct_1(_wgslsmith_f_op_f32(arg_1.c.b.a + global0[_wgslsmith_index_u32(44476u, 1u)]), _wgslsmith_f_op_vec2_f32(-arg_1.a.b))).c.a).c.d, u_input.a, arg_1.c, Struct_1(arg_0.b.x, _wgslsmith_f_op_vec2_f32(func_2(arg_1.a).a.b * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(arg_0.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 1u)], -729f))))));
    var_2 = Struct_4(firstLeadingBit(36619i), select(var_2.b, arg_1.d, all(vec3<bool>(false, arg_1.c.c.x, false)) | (var_2.b.x <= var_2.b.x)) | (var_2.b >> (u_input.a % vec3<u32>(32u))), var_2.c, Struct_1(_wgslsmith_f_op_f32(sign(arg_1.a.b.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(549f, global0[_wgslsmith_index_u32(16076u, 1u)])) - _wgslsmith_f_op_vec2_f32(floor(arg_0.b))) * vec2<f32>(global0[_wgslsmith_index_u32(~var_2.b.x, 1u)], _wgslsmith_f_op_f32(ceil(-943f))))));
    return arg_1;
}

fn func_5(arg_0: Struct_3) -> Struct_1 {
    global2 = u_input.a.x;
    var var_0 = func_4(arg_0.a, arg_0).c.b;
    var var_1 = firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(60737u, arg_0.d.x, u_input.a.x, ~arg_0.d.x), vec4<u32>(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 0u, 0u), vec4<u32>(arg_0.d.x, 0u, arg_0.d.x, 1u))), arg_0.d.x, ~_wgslsmith_sub_u32(1u, arg_0.d.x), min(_wgslsmith_mult_u32(29757u, 15212u), ~100662u))));
    var var_2 = vec3<bool>(true, false, arg_0.c.c.x);
    let var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1749f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-547f))))));
    return arg_0.c.b;
}

fn func_1() -> u32 {
    global3 = array<Struct_5, 29>();
    var var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(-513f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(839f)))), global0[_wgslsmith_index_u32(u_input.a.x, 1u)]), 752f);
    global2 = u_input.a.x;
    let var_1 = Struct_2(Struct_1(var_0.x, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -835f)), global0[_wgslsmith_index_u32(u_input.a.x, 1u)])), func_5(func_4(Struct_1(_wgslsmith_f_op_f32(min(-342f, global0[_wgslsmith_index_u32(u_input.a.x, 1u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x))), func_2(Struct_1(var_0.x, vec2<f32>(global0[_wgslsmith_index_u32(1u, 1u)], var_0.x))))), select(vec3<bool>(!func_2(Struct_1(global0[_wgslsmith_index_u32(0u, 1u)], vec2<f32>(var_0.x, global0[_wgslsmith_index_u32(27704u, 1u)]))).c.c.x, true, false), !(!func_4(Struct_1(var_0.x, vec2<f32>(435f, -2361f)), Struct_3(Struct_1(184f, vec2<f32>(-1291f, -159f)), vec4<i32>(29421i, 1462i, -2147483647i, -2147483647i), Struct_2(Struct_1(-1000f, vec2<f32>(1553f, 448f)), Struct_1(global0[_wgslsmith_index_u32(u_input.a.x, 1u)], vec2<f32>(var_0.x, var_0.x)), vec3<bool>(true, false, true), 2147483647i), u_input.a)).c.c), vec3<bool>(true, true, any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), false)))), i32(-1i) * -1i);
    var var_2 = u_input.a.x;
    return select(~1u, (_wgslsmith_mod_u32(u_input.a.x, ~4294967295u) | _wgslsmith_clamp_u32(~0u, 1490u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x), vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x)))) & select(u_input.a.x, u_input.a.x, var_1.c.x), all(vec4<bool>(all(!vec4<bool>(var_1.c.x, var_1.c.x, var_1.c.x, false)), true, var_1.c.x || var_1.c.x, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 27475i;
    global3 = array<Struct_5, 29>();
    let var_0 = func_1();
    global0 = array<f32, 1>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(u_input.a.x, 1u)], 398f))) * global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.a.x, 17103u), 1u)]) * global0[_wgslsmith_index_u32(u_input.a.x, 1u)]), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(16779u, 1u)])), 1168f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 1u)] + -1105f)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 1u)]), global0[_wgslsmith_index_u32(27005u, 1u)]) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2825f, 383f))))));
    var var_2 = -762f;
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}

