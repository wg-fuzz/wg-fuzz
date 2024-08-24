struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: f32,
    e: i32,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: Struct_4) -> f32 {
    let var_0 = 0u;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(arg_1.d * _wgslsmith_div_f32(arg_0, 644f)), 306f, _wgslsmith_f_op_f32(f32(-1f) * -119f), arg_0);
    var var_2 = var_1.x;
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-arg_0)))));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2, arg_3: f32) -> i32 {
    let var_0 = _wgslsmith_sub_i32(i32(-1i) * -35852i, _wgslsmith_sub_i32(2147483647i, -2147483647i ^ ((-3212i >> (arg_2.b.a.x % 32u)) << (~12415u % 32u))));
    let var_1 = select(!(!vec2<bool>(any(vec4<bool>(false, true, false, true)), false)), select(vec2<bool>(false, !select(true, true, true)), vec2<bool>(true, true), vec2<bool>(true, any(vec2<bool>(true, true)))), vec2<bool>(false, all(vec3<bool>(true, true, true))));
    var var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(544f, arg_3), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 394f) + vec2<f32>(616f, -559f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 1105f))))))));
    var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, _wgslsmith_f_op_f32(func_3(434f, Struct_2(var_2.x, Struct_1(arg_1.a), 0i, arg_2.d, arg_2.e), Struct_4(Struct_1(arg_2.b.a), vec4<bool>(var_1.x, false, false, true)))))))));
    var_2 = vec2<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-arg_2.a), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2.a))), arg_1, _wgslsmith_add_i32(min(arg_2.c, arg_2.c), 1i), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_2.d, -180f), var_2.x)), (var_0 & 13934i) | firstLeadingBit(2147483647i)), Struct_4(Struct_1(firstLeadingBit(vec4<u32>(1u, u_input.a, arg_1.a.x, u_input.a))), select(!vec4<bool>(true, var_1.x, false, var_1.x), vec4<bool>(true, false, false, var_1.x), select(vec4<bool>(true, var_1.x, false, true), vec4<bool>(var_1.x, var_1.x, false, var_1.x), false))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1358f + 492f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    return 0i;
}

fn func_1(arg_0: Struct_4) -> Struct_1 {
    let var_0 = 35261u;
    var var_1 = Struct_2(-712f, Struct_1(~(~select(vec4<u32>(var_0, u_input.a, u_input.a, u_input.a), vec4<u32>(arg_0.a.a.x, arg_0.a.a.x, var_0, arg_0.a.a.x), vec4<bool>(true, true, true, false)))), func_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -504f), _wgslsmith_f_op_f32(723f + -2696f))), arg_0.a, Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1569f), Struct_1(countOneBits(arg_0.a.a)), 41096i, -465f, reverseBits(~(-1i))), 611f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -213f)))))), 0i);
    let var_2 = firstLeadingBit(arg_0.a.a);
    var var_3 = Struct_1(~max(~var_2, ~vec4<u32>(var_1.b.a.x, 0u, 0u, arg_0.a.a.x)) << (vec4<u32>(arg_0.a.a.x, 0u, var_1.b.a.x, ~(~34796u)) % vec4<u32>(32u)));
    var_3 = var_1.b;
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(Struct_1(_wgslsmith_add_vec4_u32(~vec4<u32>(5638u, 0u, u_input.a, 50721u) & (vec4<u32>(u_input.a, 51612u, 5942u, u_input.a) ^ vec4<u32>(1u, u_input.a, u_input.a, u_input.a)), vec4<u32>(select(78442u, u_input.a, false), 4294967295u, ~10522u, 1u))), vec4<bool>(any(vec3<bool>(true, any(vec4<bool>(true, true, true, false)), true)), (u_input.a >> (u_input.a % 32u)) == _wgslsmith_mult_u32(~u_input.a, reverseBits(3879u)), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false))), !any(vec3<bool>(false, true, true)) & (_wgslsmith_add_i32(u_input.b, 21560i) >= -u_input.c.x)));
    let var_1 = var_0.a.a.x;
    let var_2 = Struct_4(func_1(Struct_4(Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 0u, var_1, 1u), vec4<u32>(var_1, var_0.a.a.x, var_1, 7362u))), !var_0.b)), vec4<bool>(false, false, var_0.b.x, any(vec3<bool>(true, var_0.b.x, true))));
    var var_3 = Struct_1(vec4<u32>(var_1, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(33705u, 0u, 4294967295u, 0u)), firstLeadingBit(var_2.a.a)), var_0.a.a.x & 0u, _wgslsmith_clamp_u32(20064u, 49905u, var_2.a.a.x)));
    let var_4 = var_3.a.yw;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a);
}

