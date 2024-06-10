struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> vec2<bool> {
    global0 = array<Struct_1, 23>();
    var var_0 = Struct_1(select(select(arg_0.a, select(vec4<bool>(arg_0.a.x, arg_0.a.x, true, arg_0.a.x), vec4<bool>(arg_0.a.x, arg_0.a.x, true, arg_0.a.x), false), !select(arg_0.a, arg_0.a, false)), arg_0.a, !(!(!vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x)))), abs(vec4<i32>(~arg_1, arg_0.b.x, 63705i, 1i)));
    let var_1 = u_input.b;
    let var_2 = arg_0;
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-1000f)))), 324f, !var_0.a.x | true)), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -930f))))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1572f, -569f), _wgslsmith_f_op_f32(floor(245f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    return !vec2<bool>(any(select(select(var_0.a, var_2.a, vec4<bool>(var_0.a.x, var_2.a.x, arg_0.a.x, false)), vec4<bool>(var_0.a.x, true, true, var_0.a.x), true)), u_input.b.x >= _wgslsmith_div_u32(_wgslsmith_mod_u32(17882u, u_input.b.x), u_input.b.x));
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(u_input.b.x, 23u)];
    global0 = array<Struct_1, 23>();
    var var_1 = vec2<f32>(-594f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_div_f32(-590f, 129f)) - _wgslsmith_f_op_f32(f32(-1f) * -665f)))));
    let var_2 = all(select(func_3(global0[_wgslsmith_index_u32(u_input.b.x, 23u)], select(-2147483647i, var_0.b.x, true) << (4294967295u % 32u)), var_0.a.yx, (~u_input.b.x > 11492u) & true));
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_1.x, var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1505f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, 1000f, -480f, var_1.x), vec4<f32>(var_1.x, var_1.x, var_1.x, -428f)))))));
    return global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.b.zz), _wgslsmith_mult_vec2_u32(u_input.b.wz, u_input.b.xx)), 23u)];
}

fn func_4(arg_0: Struct_1) -> vec2<f32> {
    global0 = array<Struct_1, 23>();
    var var_0 = global0[_wgslsmith_index_u32(reverseBits(0u), 23u)];
    global0 = array<Struct_1, 23>();
    global0 = array<Struct_1, 23>();
    var_0 = func_2(true);
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-869f + _wgslsmith_f_op_f32(f32(-1f) * -541f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f - 768f))))));
}

fn func_5(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_1 {
    global0 = array<Struct_1, 23>();
    var var_0 = _wgslsmith_f_op_f32(round(arg_1.x));
    let var_1 = vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.b.x, u_input.b.x), u_input.b.x), ~(~52365u)), 52938u), 0u);
    global0 = array<Struct_1, 23>();
    var var_2 = false;
    return global0[_wgslsmith_index_u32(u_input.b.x, 23u)];
}

fn func_1(arg_0: vec2<i32>, arg_1: i32, arg_2: vec4<i32>, arg_3: u32) -> Struct_1 {
    let var_0 = func_5(-vec4<i32>(-31638i, ~(-arg_1), reverseBits(27800i), 1i), _wgslsmith_f_op_vec2_f32(func_4(func_2(all(vec4<bool>(false, false, true, true)) == all(vec4<bool>(false, false, true, false))))), vec4<bool>(-1000f != _wgslsmith_f_op_f32(-350f + _wgslsmith_f_op_f32(ceil(1000f))), false, true, false), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3, 20411u, arg_3, 0u), u_input.b), 0u & arg_3) & ~47132u, 23u)]);
    let var_1 = (u_input.b.wxx | vec3<u32>(_wgslsmith_add_u32(44167u, arg_3), 73547u, 45233u)) & ~_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(arg_3, u_input.b.x, u_input.b.x), select(vec3<u32>(u_input.b.x, 0u, arg_3), vec3<u32>(16491u, 1u, 1u), var_0.a.xwy)), ~_wgslsmith_mod_vec3_u32(u_input.b.xyz, vec3<u32>(u_input.b.x, 25616u, 16940u)));
    var var_2 = Struct_1(vec4<bool>(func_3(global0[_wgslsmith_index_u32(var_1.x, 23u)], arg_2.x).x, !(var_0.a.x & any(vec3<bool>(var_0.a.x, false, var_0.a.x))), all(var_0.a.xzx), !func_3(func_2(true), -33852i).x), select(func_5(var_0.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(314f, 194f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(550f, 1013f))), func_2(true).a, global0[_wgslsmith_index_u32(4294967295u, 23u)]).b, vec4<i32>(abs(1i), -40549i, var_0.b.x, ~(-2147483647i << (var_1.x % 32u))), func_2(any(var_0.a.wx)).a));
    var var_3 = !(var_0.a.x & var_0.a.x);
    global0 = array<Struct_1, 23>();
    return Struct_1(!select(vec4<bool>(true, true, true, true), !vec4<bool>(true, false, var_0.a.x, false), any(vec3<bool>(true, var_0.a.x, var_2.a.x)) | all(vec2<bool>(true, var_2.a.x))), vec4<i32>(_wgslsmith_mult_i32(i32(-1i) * -15739i, countOneBits(-var_2.b.x)), var_2.b.x, 38022i, var_0.b.x));
}

fn func_6(arg_0: u32, arg_1: Struct_1) -> bool {
    global0 = array<Struct_1, 23>();
    global0 = array<Struct_1, 23>();
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-1000f))))));
    let var_1 = u_input.b;
    let var_2 = ~reverseBits(vec3<u32>(firstTrailingBit(u_input.b.x), ~43022u, reverseBits(var_1.x)));
    return !func_2(arg_1.a.x).a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 23>();
    global0 = array<Struct_1, 23>();
    var var_0 = !(!(u_input.b.x > 8403u) && all(vec3<bool>(true, true, true))) & (true | func_6(1u, func_1(~vec2<i32>(u_input.a, 0i), _wgslsmith_sub_i32(u_input.a, -24152i), _wgslsmith_mult_vec4_i32(vec4<i32>(51123i, -12895i, 9564i, -17911i), vec4<i32>(u_input.a, 54390i, 41412i, 2147483647i)), u_input.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-531f, -342f) + vec2<f32>(1797f, -1000f))), _wgslsmith_f_op_vec2_f32(func_4(global0[_wgslsmith_index_u32(min(26568u, u_input.b.x), 23u)])))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1497f, _wgslsmith_f_op_f32(select(436f, 842f, false))))));
}

