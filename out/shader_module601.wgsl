struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec2<u32>,
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

var<private> global0: f32;

var<private> global1: array<vec3<f32>, 15> = array<vec3<f32>, 15>(vec3<f32>(618f, -389f, -865f), vec3<f32>(-307f, 1793f, -1049f), vec3<f32>(-543f, -765f, 1286f), vec3<f32>(383f, 1318f, 170f), vec3<f32>(-727f, 582f, -716f), vec3<f32>(1534f, -583f, 387f), vec3<f32>(773f, 549f, 1000f), vec3<f32>(-901f, -151f, 1388f), vec3<f32>(-1172f, -295f, -583f), vec3<f32>(-1000f, -1286f, 437f), vec3<f32>(745f, 1000f, -147f), vec3<f32>(-1000f, 161f, 1786f), vec3<f32>(-1833f, -1120f, -411f), vec3<f32>(-1615f, -175f, 908f), vec3<f32>(-1000f, -1630f, 703f));

var<private> global2: array<u32, 13> = array<u32, 13>(26461u, 64961u, 4294967295u, 0u, 4294967295u, 0u, 1u, 41272u, 1u, 4294967295u, 42089u, 76019u, 4294967295u);

var<private> global3: Struct_4;

var<private> global4: array<Struct_4, 14>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: i32) -> bool {
    var var_0 = global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(max(23201u, 15710u | global2[_wgslsmith_index_u32(101857u, 13u)]), 1u)), 13u)], 14u)];
    var_0 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(arg_0.a.x - arg_0.a.x), -1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -636f)))), _wgslsmith_f_op_f32(-1336f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.x)))));
    return true;
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: f32) -> f32 {
    var var_0 = all(select(select(!select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(true, true), true), !select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, false), false), any(vec4<bool>(true, true, false, true))), 1i < _wgslsmith_add_i32(u_input.a, 2147483647i & u_input.b.x)));
    let var_1 = ~u_input.b.x;
    let var_2 = u_input.d;
    global3 = Struct_4(vec4<f32>(-393f, _wgslsmith_f_op_f32(-119f * _wgslsmith_f_op_f32(max(-1616f, 2588f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.x)), -1209f));
    let var_3 = Struct_2(all(vec3<bool>(true, true, true)), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(arg_2)), 2140f) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_2, arg_0))))))));
    return 1186f;
}

fn func_4(arg_0: Struct_4, arg_1: f32, arg_2: vec3<bool>, arg_3: f32) -> bool {
    var var_0 = -1i;
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-781f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.a.x, arg_1)))), _wgslsmith_f_op_f32(-arg_1))), arg_1));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) + global3.a.x)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(abs(global3.a));
    global1 = array<vec3<f32>, 15>();
    return select((arg_2.x && true) & false, arg_2.x & true, all(!(!vec3<bool>(arg_2.x, arg_2.x, false))));
}

fn func_1() -> vec2<i32> {
    var var_0 = vec2<bool>(true, func_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global3.a.zx - vec2<f32>(global3.a.x, 562f)) - global3.a.yw)), _wgslsmith_sub_u32(min(64373u, 60793u), 1u), reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(34936i, 1i, u_input.a, 2147483647i), vec4<i32>(-83258i, u_input.b.x, 19869i, u_input.b.x)) & (u_input.b.x >> (1u % 32u)))));
    let var_1 = Struct_2(func_4(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(abs(global2[_wgslsmith_index_u32(u_input.c, 13u)]), 13u)], 14u)], _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(func_3(_wgslsmith_div_f32(global3.a.x, 263f), Struct_1(vec2<f32>(541f, 334f)), _wgslsmith_f_op_f32(537f + 259f)))), select(vec3<bool>(true, all(vec4<bool>(false, true, false, var_0.x)), true), select(vec3<bool>(false, false, var_0.x), !vec3<bool>(var_0.x, var_0.x, false), all(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x))), false), 1210f), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global3.a.yx * vec2<f32>(global3.a.x, global3.a.x)) * _wgslsmith_f_op_vec2_f32(global3.a.wz - _wgslsmith_f_op_vec2_f32(exp2(global3.a.xy))))));
    global1 = array<vec3<f32>, 15>();
    let var_2 = var_1;
    var var_3 = -_wgslsmith_dot_vec3_i32(-vec3<i32>(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -1i, u_input.a, u_input.b.x), vec4<i32>(u_input.a, 1i, -2147483647i, u_input.b.x)), ~1i), vec3<i32>(u_input.a, u_input.a, u_input.b.x & max(u_input.b.x, u_input.a)));
    return vec2<i32>(u_input.a, abs(-2147483647i));
}

fn func_5(arg_0: u32, arg_1: vec2<i32>, arg_2: vec3<f32>, arg_3: Struct_1) -> bool {
    var var_0 = _wgslsmith_sub_vec3_i32(abs(_wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(-2147483647i, -3509i, arg_1.x)), vec3<i32>(6355i, arg_1.x | 28508i, u_input.a | 10742i))), vec3<i32>(firstLeadingBit(abs(-u_input.b.x)), arg_1.x, countOneBits(-1i)));
    let var_1 = Struct_2(!func_2(arg_3, firstLeadingBit(firstTrailingBit(10328u)), ~39704i), Struct_1(arg_2.xx));
    var var_2 = ~(-12717i);
    let var_3 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a.x + -1000f)) + -162f), arg_3.a.x, global3.a.x, 1f));
    return func_4(Struct_4(vec4<f32>(-1189f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-751f * -779f), _wgslsmith_f_op_f32(1000f - -1635f)), _wgslsmith_f_op_f32(-2222f + _wgslsmith_f_op_f32(-global3.a.x)), -844f)), arg_2.x, !vec3<bool>(true, var_1.a, select(true, false, true)), 1279f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<f32>, 15>();
    var var_0 = func_5(global2[_wgslsmith_index_u32(10265u, 13u)], func_1(), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a.x, 614f, _wgslsmith_f_op_f32(-global3.a.x))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.a.wy)))));
    global1 = array<vec3<f32>, 15>();
    var_0 = func_4(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(global2[_wgslsmith_index_u32(32958u, 13u)], u_input.c), 13u)], 4294967295u), 13u)], 14u)], 1558f, vec3<bool>(any(select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true))), !any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true))), !(!any(vec3<bool>(false, false, true)))), global3.a.x);
    var var_1 = Struct_2(!(!all(vec2<bool>(true, true))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1876f - 777f), _wgslsmith_f_op_f32(global3.a.x - -876f)))));
    var_0 = !any(!vec2<bool>(true, false & var_1.a));
    var_1 = Struct_2(true, var_1.b);
    let var_2 = 52667u;
    let var_3 = Struct_3(vec3<u32>(~(~var_2 & 20103u), 0u, var_2), 65171i, Struct_2(var_1.a, var_1.b));
    let x = u_input.a;
    s_output = StorageBuffer(max(firstTrailingBit(vec4<i32>(37451i, -24382i, -40390i, -6455i) ^ vec4<i32>(var_3.b, 2147483647i, var_3.b, u_input.a)), _wgslsmith_div_vec4_i32(max(vec4<i32>(2147483647i, u_input.b.x, u_input.a, 24286i), vec4<i32>(-3307i, var_3.b, u_input.a, u_input.b.x)), ~select(vec4<i32>(u_input.b.x, -83426i, -1i, 4887i), vec4<i32>(1i, u_input.a, var_3.b, var_3.b), vec4<bool>(false, true, var_3.c.a, var_1.a)))), _wgslsmith_div_i32(~max(_wgslsmith_mod_i32(var_3.b, -22946i), u_input.b.x << (1u % 32u)), _wgslsmith_sub_i32(select(0i, 2147483647i, var_3.c.a), select(53782i, -1i, true)) & u_input.a));
}

