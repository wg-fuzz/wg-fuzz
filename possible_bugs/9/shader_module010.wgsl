struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5>;

var<private> global1: vec4<bool> = vec4<bool>(false, false, true, true);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: i32) -> bool {
    var var_0 = max(~arg_1.b.a, vec4<u32>(~44354u >> (_wgslsmith_div_u32(arg_1.a, _wgslsmith_mult_u32(1023u, arg_0.a)) % 32u), firstTrailingBit(8875u), 0u, ~reverseBits(arg_2.b.a.x)));
    global0 = array<Struct_1, 5>();
    global1 = select(select(vec4<bool>(true, true, all(vec4<bool>(global1.x, false, true, true)), global1.x), select(vec4<bool>(true, global1.x == false, global1.x, global1.x), vec4<bool>(any(vec4<bool>(global1.x, false, false, false)), false, select(true, false, false), -2147483647i != arg_3), global1.x), !select(!vec4<bool>(global1.x, false, true, true), select(vec4<bool>(global1.x, global1.x, true, global1.x), vec4<bool>(global1.x, false, false, global1.x), vec4<bool>(global1.x, true, true, global1.x)), all(vec2<bool>(false, global1.x)))), select(vec4<bool>(global1.x, true, _wgslsmith_f_op_f32(step(-356f, -638f)) <= _wgslsmith_f_op_f32(min(-481f, -142f)), all(select(global1.xw, global1.zz, global1.zz))), select(select(vec4<bool>(global1.x, false, true, global1.x), !vec4<bool>(global1.x, true, global1.x, false), vec4<bool>(true, true, true, global1.x)), vec4<bool>(global1.x, false & global1.x, global1.x, any(global1.wzz)), !vec4<bool>(true, global1.x, global1.x, true)), vec4<bool>(true, any(select(vec4<bool>(true, global1.x, global1.x, global1.x), vec4<bool>(global1.x, global1.x, global1.x, false), vec4<bool>(global1.x, false, global1.x, false))), select(true, select(global1.x, true, false), true), (arg_3 << (58944u % 32u)) >= _wgslsmith_mod_i32(-23867i, arg_3))), true);
    global1 = select(select(vec4<bool>(global1.x, (arg_2.a << (44452u % 32u)) <= var_0.x, true, !all(vec4<bool>(false, global1.x, false, false))), !vec4<bool>(true, 1i == arg_3, all(vec2<bool>(global1.x, true)), any(vec4<bool>(true, global1.x, false, global1.x))), true), vec4<bool>(true, any(global1.yzx), true, true), global1.x);
    var var_1 = Struct_2(~var_0.x, global0[_wgslsmith_index_u32(4294967295u, 5u)], abs(vec3<u32>(var_0.x, ~23211u, ~1u)));
    return global1.x;
}

fn func_2() -> bool {
    let var_0 = u_input.a.x;
    let var_1 = vec2<bool>(global1.x, any(select(vec2<bool>(global1.x, func_3(Struct_2(4294967295u, Struct_1(vec4<u32>(39959u, 10439u, 1u, 0u)), vec3<u32>(31645u, 4294967295u, 18358u)), Struct_2(2008u, global0[_wgslsmith_index_u32(27493u, 5u)], vec3<u32>(58795u, 8649u, 39063u)), Struct_2(1u, Struct_1(vec4<u32>(4294967295u, 9302u, 1u, 61472u)), vec3<u32>(4294967295u, 53891u, 0u)), -1i)), !global1.zz, !vec2<bool>(global1.x, global1.x))));
    global0 = array<Struct_1, 5>();
    let var_2 = Struct_2(firstTrailingBit(~19544u), Struct_1(~(~vec4<u32>(10280u, 12479u, 14188u, 4505u))), firstTrailingBit(select(~firstTrailingBit(vec3<u32>(4294967295u, 0u, 1u)), vec3<u32>(1u, 1u, 1u), global1.xxz)));
    global1 = select(!(!vec4<bool>(false, var_0 < var_0, var_1.x | global1.x, false)), !vec4<bool>(false, var_1.x, global1.x, true), select(!select(vec4<bool>(false, global1.x, global1.x, var_1.x), vec4<bool>(var_1.x, false, false, true), false), select(select(vec4<bool>(false, true, var_1.x, true), select(vec4<bool>(var_1.x, global1.x, global1.x, true), vec4<bool>(global1.x, true, global1.x, var_1.x), global1.x), !vec4<bool>(true, var_1.x, var_1.x, false)), select(!vec4<bool>(false, var_1.x, global1.x, var_1.x), vec4<bool>(global1.x, true, var_1.x, false), var_1.x & true), vec4<bool>(global1.x, true, true, var_2.c.x >= 38183u)), vec4<bool>(true, any(select(global1.xzw, global1.zzx, vec3<bool>(global1.x, true, var_1.x))), true, false)));
    return true;
}

fn func_1(arg_0: vec3<u32>) -> vec4<f32> {
    var var_0 = Struct_2(~arg_0.x, global0[_wgslsmith_index_u32(21635u, 5u)], vec3<u32>(0u, arg_0.x, 18095u));
    let var_1 = vec4<bool>(global1.x, true, func_2(), all(!vec4<bool>(global1.x, any(global1.wwz), true, global1.x)));
    var var_2 = Struct_1(~(vec4<u32>(~4294967295u, arg_0.x & 4294967295u, 5093u, var_0.b.a.x & 73575u) | firstTrailingBit(vec4<u32>(arg_0.x, 45485u, 4294967295u, arg_0.x))));
    let var_3 = vec3<i32>(1i & u_input.b, reverseBits(select(min(_wgslsmith_mod_i32(u_input.b, -6981i), firstTrailingBit(u_input.b)), u_input.b, true)), max(min(0i, ~(~4471i)), _wgslsmith_sub_i32(u_input.b, countOneBits(~(-48852i)))));
    let var_4 = var_0.b;
    return vec4<f32>(-642f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-768f, 311f)) * _wgslsmith_f_op_f32(f32(-1f) * -1154f)))), _wgslsmith_f_op_f32(floor(131f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1720f)));
}

fn func_4(arg_0: u32, arg_1: vec2<bool>, arg_2: vec4<f32>, arg_3: Struct_1) -> Struct_2 {
    var var_0 = Struct_2(firstLeadingBit(1u), arg_3, ~firstTrailingBit(max(vec3<u32>(arg_0, 51269u, arg_0), vec3<u32>(1u, arg_0, 4294967295u) & arg_3.a.wyw)));
    var var_1 = Struct_1(arg_3.a);
    let var_2 = true;
    global1 = !select(select(select(vec4<bool>(var_2, var_2, true, var_2), select(vec4<bool>(var_2, false, false, true), vec4<bool>(var_2, arg_1.x, true, true), vec4<bool>(true, arg_1.x, global1.x, false)), !arg_1.x), select(!vec4<bool>(global1.x, global1.x, false, var_2), !vec4<bool>(arg_1.x, var_2, arg_1.x, arg_1.x), global1.x), !vec4<bool>(false, global1.x, var_2, false)), !select(select(vec4<bool>(false, global1.x, var_2, true), vec4<bool>(false, arg_1.x, false, true), vec4<bool>(arg_1.x, false, false, global1.x)), !vec4<bool>(var_2, true, global1.x, true), func_2()), var_2 != all(vec4<bool>(arg_1.x, false, global1.x, true)));
    var_0 = Struct_2(max(_wgslsmith_mult_u32(abs(_wgslsmith_sub_u32(var_0.a, var_1.a.x)), var_0.a), firstLeadingBit(reverseBits(~var_1.a.x))), Struct_1(vec4<u32>(max(var_0.c.x, var_0.c.x), ~arg_3.a.x, _wgslsmith_mult_u32(arg_3.a.x, 1u), ~0u) & vec4<u32>(var_1.a.x, min(var_0.b.a.x, 1u), 70320u, var_1.a.x >> (61765u % 32u))), select(~(~countOneBits(var_1.a.yzw)), ~_wgslsmith_mult_vec3_u32(var_0.c, vec3<u32>(arg_0, var_0.b.a.x, var_0.c.x)), global1.zwy));
    return Struct_2(arg_3.a.x, var_0.b, ~(~_wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(var_1.a.x, 6020u, 4932u)), var_0.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(0u, 5u)];
    var_0 = global0[_wgslsmith_index_u32(var_0.a.x & _wgslsmith_sub_u32(var_0.a.x << (~countOneBits(var_0.a.x) % 32u), 25191u), 5u)];
    let var_1 = 146216u;
    let var_2 = func_4(~var_1, global1.xw, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-223f, -2021f)), 814f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1279f + 784f), 1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1461f + -305f), _wgslsmith_f_op_f32(floor(136f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_1(vec3<u32>(var_1, var_1, 40512u))))))), global0[_wgslsmith_index_u32(var_0.a.x, 5u)]);
    let var_3 = !select(global1.zxy, !(!vec3<bool>(true, global1.x, false)), vec3<bool>(global1.x, all(!vec2<bool>(global1.x, global1.x)), func_2()));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1016f * 106f), _wgslsmith_f_op_f32(floor(-130f))))))), var_2.a, abs(_wgslsmith_mod_vec3_i32(~(-vec3<i32>(u_input.c.x, u_input.c.x, -17456i)), ~(~vec3<i32>(-1i, -1i, u_input.a.x)))));
}

