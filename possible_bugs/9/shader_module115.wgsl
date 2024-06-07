struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec4<f32>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 31>;

var<private> global1: Struct_2 = Struct_2(vec3<i32>(i32(-2147483648), -32057i, -36775i));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_2(arg_0: Struct_3, arg_1: vec2<f32>) -> i32 {
    return -2147483647i;
}

fn func_3(arg_0: f32, arg_1: vec2<i32>, arg_2: vec3<f32>, arg_3: Struct_1) -> u32 {
    global0 = array<vec4<bool>, 31>();
    var var_0 = ~u_input.c.wz;
    global1 = Struct_2(vec3<i32>(7616i, _wgslsmith_dot_vec2_i32(~(-vec2<i32>(-12681i, global1.a.x)), firstLeadingBit(vec2<i32>(1i, -1i))), ~2147483647i));
    global1 = Struct_2(_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(select(vec3<i32>(global1.a.x, global1.a.x, -44486i), vec3<i32>(0i, arg_3.b.x, arg_1.x), vec3<bool>(true, true, false)), -vec3<i32>(u_input.b, global1.a.x, u_input.b)) | firstLeadingBit(_wgslsmith_mult_vec3_i32(arg_3.b.zxy, arg_3.b.xxw)), -_wgslsmith_div_vec3_i32(firstTrailingBit(arg_3.b.wyx), vec3<i32>(u_input.b, 22743i, arg_3.b.x))));
    let var_1 = vec3<i32>(-2147483647i, -firstLeadingBit(-(~1114i)), abs(10973i));
    return firstLeadingBit(max(min(_wgslsmith_add_u32(46141u, var_0.x), ~40348u), u_input.a) >> (var_0.x % 32u));
}

fn func_4(arg_0: i32) -> vec4<bool> {
    let var_0 = u_input.c.x;
    global0 = array<vec4<bool>, 31>();
    var var_1 = vec2<i32>(-(~((global1.a.x ^ global1.a.x) & ~arg_0)), u_input.b);
    global1 = Struct_2(vec3<i32>(_wgslsmith_sub_i32(max(-35702i, u_input.b) & (global1.a.x >> (var_0 % 32u)), -(~42952i)), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(8153i, 42638i, global1.a.x, var_1.x), vec4<i32>(66247i, -44699i, -2147483647i, arg_0), max(vec4<i32>(21478i, -2147483647i, 26132i, arg_0), vec4<i32>(0i, var_1.x, -1i, u_input.b))), ~vec4<i32>(-2147483647i, -33215i, -2147483647i, var_1.x) | firstTrailingBit(vec4<i32>(u_input.b, arg_0, 0i, 769i))), -23964i));
    var var_2 = _wgslsmith_add_i32(_wgslsmith_sub_i32(min(select(53160i, countOneBits(var_1.x), true), -_wgslsmith_dot_vec2_i32(global1.a.zx, vec2<i32>(arg_0, 23587i))), 47735i), u_input.b);
    return vec4<bool>(all(!select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true), vec2<bool>(false, false))), all(!select(select(global0[_wgslsmith_index_u32(var_0, 31u)], vec4<bool>(true, true, true, true), global0[_wgslsmith_index_u32(40390u, 31u)]), vec4<bool>(true, false, false, false), all(vec3<bool>(true, true, true)))), true, !(7123i < func_2(Struct_3(Struct_1(804f, vec4<i32>(65372i, arg_0, 30144i, u_input.b), vec3<f32>(-1000f, -485f, 1032f)), -2147483647i, vec4<f32>(-387f, 465f, 731f, -1129f), Struct_2(global1.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-574f, 131f)))));
}

fn func_1() -> f32 {
    let var_0 = func_4(func_2(Struct_3(Struct_1(-1002f, vec4<i32>(global1.a.x, u_input.b, -15390i, u_input.b), vec3<f32>(-167f, -538f, -1000f)), global1.a.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-340f, -433f, 620f, -241f)), Struct_2(vec3<i32>(global1.a.x, global1.a.x, 25470i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-604f, -1184f), vec2<f32>(593f, 649f), false)))) << (min(func_3(_wgslsmith_f_op_f32(1239f + -772f), ~vec2<i32>(u_input.b, 11863i), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-625f, -911f, 715f))), Struct_1(893f, vec4<i32>(u_input.b, -47039i, -3656i, u_input.b), vec3<f32>(1000f, 727f, 1000f))), ~u_input.d ^ ~20251u) % 32u));
    var var_1 = !(!select(global0[_wgslsmith_index_u32(u_input.e, 31u)], select(!vec4<bool>(var_0.x, var_0.x, var_0.x, true), !vec4<bool>(true, true, var_0.x, true), true), true));
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1042f - -2043f) - 308f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -901f))))) - _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-811f)))))))));
    var_1 = select(vec4<bool>(var_1.x, true, all(var_0.wyz), !all(var_1.wyy)), !global0[_wgslsmith_index_u32(u_input.e, 31u)], false);
    let var_3 = !var_0.yz;
    return -1175f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(step(-1174f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1326f)) * -353f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1093f, -587f) + _wgslsmith_f_op_f32(ceil(-955f))), _wgslsmith_f_op_f32(func_1())))));
    let var_1 = select(vec2<bool>(false, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-1045f)))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1392f, -738f)))), !vec2<bool>(true, any(vec2<bool>(true, true))), all(!(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true)))));
    var_0 = _wgslsmith_f_op_f32(-1320f + _wgslsmith_f_op_f32(sign(384f)));
    let var_2 = Struct_2(_wgslsmith_mult_vec3_i32(abs(abs(vec3<i32>(0i, -1i, global1.a.x) >> (u_input.c.yyy % vec3<u32>(32u)))), select((vec3<i32>(-2147483647i, u_input.b, 2147483647i) >> (vec3<u32>(0u, 1u, u_input.a) % vec3<u32>(32u))) << ((u_input.c.xzx << (vec3<u32>(1u, u_input.c.x, 17357u) % vec3<u32>(32u))) % vec3<u32>(32u)), global1.a, select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, var_1.x), vec3<bool>(true, var_1.x, true)), !vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(true, true, var_1.x)))));
    global0 = array<vec4<bool>, 31>();
    var var_3 = func_4(_wgslsmith_mult_i32(2147483647i, u_input.b)).wyz;
    var var_4 = !vec3<bool>(var_3.x, true, false);
    var var_5 = ~firstLeadingBit(u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(1557f, -((vec2<i32>(-1i) * -vec2<i32>(global1.a.x, -18326i)) & ~var_2.a.xx), select(-global1.a, global1.a, !select(select(vec3<bool>(var_3.x, false, false), vec3<bool>(var_4.x, var_1.x, var_4.x), vec3<bool>(true, var_3.x, true)), !vec3<bool>(var_3.x, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, var_4.x, true), vec3<bool>(false, true, true)))), 2339f, select(u_input.a, reverseBits(firstTrailingBit(u_input.d & 4294967295u)), select(var_3.x, true, u_input.c.x == u_input.a)));
}

