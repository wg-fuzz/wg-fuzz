struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec4<f32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec2<i32>(-22873i, 40216i), vec2<u32>(36858u, 72267u), vec4<f32>(1531f, 237f, 770f, -1128f), 27837u));

var<private> global2: vec2<bool> = vec2<bool>(false, true);

var<private> global3: array<Struct_2, 27>;

var<private> global4: array<u32, 11>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> Struct_1 {
    return global1.a;
}

fn func_3(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_2) -> vec3<i32> {
    global4 = array<u32, 11>();
    var var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(282f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.a.c.x), 123f)))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(max(-1000f, 1000f))), -181f, _wgslsmith_f_op_f32(-591f * _wgslsmith_f_op_f32(1000f - global1.a.c.x))))));
    global1 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(max(select(u_input.a, 1u, global2.x), u_input.a), _wgslsmith_add_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(33632u, 11u)], 11u)] & 0u, 1u)), 0u, abs(u_input.b.x)), _wgslsmith_clamp_vec3_u32(u_input.b.wxw, u_input.b.zxz, firstLeadingBit(u_input.b.xxw))), 27u)];
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -720f);
    var_1 = 271f;
    return firstLeadingBit(~_wgslsmith_mod_vec3_i32(firstTrailingBit(~vec3<i32>(6558i, u_input.c, u_input.d)), vec3<i32>(abs(0i), arg_2.a.a.x >> (1u % 32u), arg_0 | u_input.e.x)));
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    global3 = array<Struct_2, 27>();
    global4 = array<u32, 11>();
    var var_0 = _wgslsmith_sub_vec3_i32(-(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, u_input.e.x, -1i), ~vec3<i32>(global1.a.a.x, 2147483647i, global1.a.a.x)) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 0u, arg_0.a.d), vec3<u32>(49687u, 71500u, global1.a.b.x), min(vec3<u32>(global1.a.b.x, 0u, 8508u), u_input.b.yxy)) % vec3<u32>(32u))), firstTrailingBit(func_3(~max(u_input.e.x, global1.a.a.x), _wgslsmith_f_op_vec3_f32(min(global1.a.c.xyz, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.a.c.x, -1020f, 106f), vec3<f32>(-1435f, arg_0.a.c.x, arg_0.a.c.x), global2.x)))), Struct_2(func_2()))));
    global2 = vec2<bool>(all(select(vec4<bool>(true, true, any(vec3<bool>(false, false, false)), true), vec4<bool>(global2.x, !global2.x, any(vec2<bool>(true, global2.x)), any(vec3<bool>(true, true, false))), select(!vec4<bool>(global2.x, true, false, false), vec4<bool>(global2.x, false, global2.x, false), select(vec4<bool>(global2.x, global2.x, global2.x, global2.x), vec4<bool>(global2.x, global2.x, false, true), vec4<bool>(true, false, global2.x, true))))), global2.x);
    global4 = array<u32, 11>();
    return Struct_2(Struct_1(min(-vec2<i32>(u_input.e.x, -43482i), vec2<i32>(global1.a.a.x, 0i)) | countOneBits(_wgslsmith_mult_vec2_i32(u_input.e, vec2<i32>(0i, -16143i))), ~(~reverseBits(global1.a.b)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.c.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.a.c.x * global1.a.c.x))), 244f, -1226f), 38925u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(26234u, _wgslsmith_div_u32(global4[_wgslsmith_index_u32(global1.a.d, 11u)], global1.a.d ^ (global4[_wgslsmith_index_u32(global1.a.d, 11u)] | max(global1.a.d, u_input.a))), any(vec2<bool>(true, true)));
    global4 = array<u32, 11>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.c.x, -391f) - vec2<f32>(1409f, -1461f)));
    let var_1 = vec4<bool>(select(false == global2.x, any(vec3<bool>(false, global2.x, false)), global2.x | any(vec3<bool>(global2.x, true, true))) & any(select(!vec4<bool>(true, false, global2.x, global2.x), vec4<bool>(global2.x, global2.x, true, true), !vec4<bool>(true, false, false, global2.x))), true, true, all(!select(vec4<bool>(false, global2.x, global2.x, global2.x), !vec4<bool>(true, true, global2.x, global2.x), !global2.x)));
    let var_2 = global1.a;
    let var_3 = true;
    var var_4 = func_1(global3[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(~12978u, 1u)), 27u)]);
    var var_5 = min(~21703u, func_1(Struct_2(global1.a)).a.b.x);
    let var_6 = _wgslsmith_sub_i32(_wgslsmith_mod_i32(i32(-1i) * -5540i, -22227i), 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(~global1.a.b.x, 65739u), var_2.d), u_input.a), abs(vec3<i32>(u_input.d, _wgslsmith_add_i32(1i, u_input.e.x), func_3(25230i, vec3<f32>(global1.a.c.x, -180f, global1.a.c.x), global3[_wgslsmith_index_u32(32574u, 27u)]).x)), reverseBits(u_input.b.x), -max(_wgslsmith_mult_vec4_i32(vec4<i32>(var_4.a.a.x, var_4.a.a.x, global1.a.a.x, u_input.d), vec4<i32>(4636i, -1i, global1.a.a.x, 1i)) & ~vec4<i32>(-20157i, -1i, u_input.e.x, var_2.a.x), min(select(vec4<i32>(global1.a.a.x, var_4.a.a.x, var_4.a.a.x, var_6), vec4<i32>(u_input.d, 1i, var_4.a.a.x, 1i), true), firstLeadingBit(vec4<i32>(-72287i, -1i, var_2.a.x, 2147483647i)))), _wgslsmith_mod_vec4_i32(max(-_wgslsmith_mod_vec4_i32(vec4<i32>(0i, global1.a.a.x, var_6, var_2.a.x), vec4<i32>(u_input.c, -24073i, -1i, 1i)), abs(vec4<i32>(var_6, -19109i, 2147483647i, 1i))), vec4<i32>(max(~0i, -global1.a.a.x), ~(0i << (var_4.a.b.x % 32u)), _wgslsmith_add_i32(-var_2.a.x, _wgslsmith_mod_i32(-35176i, global1.a.a.x)), abs(-var_6))));
}

