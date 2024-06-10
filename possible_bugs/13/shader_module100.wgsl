struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 10> = array<f32, 10>(-366f, 1172f, -1620f, -232f, 1026f, -785f, -157f, -144f, -392f, 1256f);

var<private> global1: array<f32, 25> = array<f32, 25>(378f, -633f, 1641f, -580f, 1370f, 286f, -376f, 1000f, -1648f, 1243f, 2062f, -1206f, -1360f, -502f, -1000f, 1444f, 1281f, -663f, -418f, -2118f, -1279f, 400f, 754f, -1000f, 673f);

var<private> global2: i32 = i32(-2147483648);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> bool {
    let var_0 = Struct_2(-2147483647i, Struct_1(421f, !vec3<bool>(-45625i <= u_input.c, false, all(vec3<bool>(false, false, false))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), true)), !select(vec4<bool>(49727i > u_input.c, select(false, true, false), true, any(vec3<bool>(true, true, false))), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), true), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 10u)]) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(0u, 10u)], -1000f)) * 146f)), vec3<bool>(true, true, true), select(select(vec4<bool>(true, false, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false)), true), vec4<bool>(true, true, true, true), vec4<bool>(false, any(vec4<bool>(true, false, true, true)), true, true))), abs(-_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c, 6677i, u_input.c), vec3<i32>(u_input.c, u_input.c, -18956i)) >> (~(~vec3<u32>(4294967295u, u_input.d, u_input.b)) % vec3<u32>(32u))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -777f))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 25u)]), var_0.c.x)));
    let var_2 = abs(var_0.e.yz);
    var var_3 = var_0.b;
    global1 = array<f32, 25>();
    return !var_0.d.b.x;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(117802u, 25u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.a.zwz, u_input.a.xwz), ~u_input.a.wyz), 25u)]), !any(vec2<bool>(true, true)))), select(!vec3<bool>(true, u_input.c != u_input.c, all(vec2<bool>(true, true))), vec3<bool>(true, true, true), true), vec4<bool>(select(true, any(select(vec2<bool>(true, false), vec2<bool>(false, true), true)), min(u_input.c, 41875i) != -67225i), true, true, true));
    global1 = array<f32, 25>();
    var var_1 = Struct_2(-2147483647i, Struct_1(var_0.a, !vec3<bool>(all(var_0.b), all(var_0.c.yzx), var_0.c.x), vec4<bool>(select(true, var_0.c.x, var_0.c.x) | (u_input.c >= u_input.c), all(vec4<bool>(false, var_0.b.x, var_0.b.x, true)) & false, all(var_0.c), func_3())), !var_0.c, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 25u)] + global1[_wgslsmith_index_u32(0u, 25u)]))) - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, u_input.b), 10u)] * _wgslsmith_f_op_f32(-var_0.a))), !select(vec3<bool>(true, true, true), vec3<bool>(false, var_0.b.x, var_0.c.x), select(vec3<bool>(false, var_0.c.x, var_0.b.x), vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x), var_0.c.x)), vec4<bool>(all(!vec2<bool>(var_0.b.x, var_0.c.x)), var_0.c.x, true, true)), ((-vec3<i32>(-19022i, u_input.c, -2147483647i) >> (~vec3<u32>(u_input.a.x, u_input.a.x, u_input.d) % vec3<u32>(32u))) ^ _wgslsmith_div_vec3_i32(-vec3<i32>(-13313i, 0i, -1i), -vec3<i32>(u_input.c, u_input.c, -2147483647i))) >> (abs(reverseBits(vec3<u32>(4697u, 8411u, u_input.d))) % vec3<u32>(32u)));
    let var_2 = Struct_2(-_wgslsmith_dot_vec2_i32(vec2<i32>(abs(4175i), 2147483647i), firstLeadingBit(var_1.e.xz ^ var_1.e.yx)), var_1.b, var_0.c, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1331f + 204f) + _wgslsmith_f_op_f32(ceil(var_1.b.a))), 1991f), var_0.c.ywz, select(var_1.c, select(var_0.c, var_0.c, var_1.d.c), vec4<bool>(var_0.b.x, true, select(var_1.d.b.x, var_1.c.x, true), var_1.d.c.x))), vec3<i32>(~_wgslsmith_mod_i32(1i, _wgslsmith_div_i32(u_input.c, 1i)), u_input.c, u_input.c >> (firstLeadingBit(_wgslsmith_mult_u32(u_input.a.x, u_input.b)) % 32u)));
    var_0 = Struct_1(-1798f, !vec3<bool>(var_0.c.x, _wgslsmith_div_f32(var_1.d.a, global0[_wgslsmith_index_u32(u_input.a.x, 10u)]) > -274f, true), !(!(!var_0.c)));
    return Struct_2(46032i, Struct_1(-178f, !(!(!var_0.b)), !vec4<bool>(any(vec3<bool>(false, true, var_1.d.b.x)), true, var_0.b.x, var_1.b.c.x)), var_2.d.c, var_2.b, -(~(-vec3<i32>(u_input.c, 5790i, 13069i))));
}

fn func_1() -> Struct_2 {
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(trunc(-1197f));
    global1 = array<f32, 25>();
    global1 = array<f32, 25>();
    let var_1 = func_1();
    var var_2 = var_1;
    var var_3 = var_2.c;
    var var_4 = -var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.x, 1u);
}

