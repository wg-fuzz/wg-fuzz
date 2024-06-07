struct Struct_1 {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32, arg_1: vec2<i32>) -> f32 {
    var var_0 = Struct_1(u_input.c, u_input.c | (u_input.c ^ ~1u), 1u, u_input.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-916f, _wgslsmith_f_op_f32(618f * -507f))))))));
    let var_1 = Struct_2(Struct_1(max(_wgslsmith_clamp_u32(94624u << (0u % 32u), ~u_input.c, ~var_0.c), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.c, var_0.b), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.b, u_input.c, 1u), vec3<u32>(36728u, 0u, u_input.c), vec3<u32>(0u, u_input.c, u_input.c)))), abs(select(1u, 1u, var_0.e != 195f)), 25678u, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(13339u, u_input.c, var_0.a, var_0.b), vec4<u32>(var_0.c, 32277u, 0u, u_input.c)), _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 0u, u_input.c, 1u), vec4<u32>(84767u, 45535u, 1u, var_0.a))), -921f), u_input.c);
    let var_2 = ~(-firstTrailingBit(u_input.b));
    var_0 = Struct_1(_wgslsmith_mult_u32(firstLeadingBit(1u), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.c, u_input.c, var_1.a.a)), ~(~vec3<u32>(16106u, 2220u, 25381u)))), 0u, ~var_0.b, ~_wgslsmith_mod_u32(u_input.c, ~u_input.c) | 4294967295u, -408f);
    var var_3 = u_input.b.xx << (~(_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, var_1.a.d), vec2<u32>(4294967295u, 40807u)), ~vec2<u32>(4294967295u, 4294967295u)) | vec2<u32>(u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b, u_input.c, 31048u), vec3<u32>(u_input.c, 23139u, 10223u)))) % vec2<u32>(32u));
    return -2093f;
}

fn func_2() -> Struct_2 {
    var var_0 = 1i;
    let var_1 = Struct_1(u_input.c, _wgslsmith_clamp_u32(u_input.c, 0u, ~(~_wgslsmith_add_u32(91632u, u_input.c))), 1u, ~u_input.c, _wgslsmith_f_op_f32(func_3(-21340i, vec2<i32>(-(u_input.d | u_input.a), 1i))));
    let var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1280f, -476f, -1771f) * vec4<f32>(748f, -1060f, var_1.e, 308f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.e, 953f, var_1.e, var_1.e)), vec4<f32>(var_1.e, -1000f, var_1.e, var_1.e))))));
    var_0 = -(~((i32(-1i) * -55080i) << (1u % 32u)));
    var var_3 = var_1;
    return Struct_2(var_1, ~(89571u & _wgslsmith_add_u32(u_input.c, ~17708u)));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = func_2();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.a.e))))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(-arg_0, ~abs(vec2<i32>(28607i, u_input.b.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1364f) + _wgslsmith_f_op_f32(-arg_1.a.e)))));
    var var_2 = var_0.a;
    var_2 = var_0.a;
    return func_2().a;
}

fn func_1(arg_0: vec2<i32>, arg_1: f32, arg_2: f32) -> f32 {
    let var_0 = func_4(-(_wgslsmith_mod_i32(select(-1i, 0i, true), i32(-1i) * -49899i) & (15034i & _wgslsmith_mod_i32(2147483647i, u_input.a))), func_2(), ~vec3<u32>(14368u, countOneBits(func_2().b), u_input.c), func_2().a);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1));
    var_1 = 128f;
    let var_2 = min(_wgslsmith_add_u32(4598u, var_0.a), select(~(var_0.d >> (func_2().b % 32u)), 0u, select(!(0i > arg_0.x), true, true)));
    var var_3 = -(~(-min(vec2<i32>(-1i, 8257i), u_input.b.xz)));
    return var_0.e;
}

fn func_5(arg_0: vec3<u32>, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = true;
    var var_1 = u_input.c;
    var_1 = reverseBits(19289u) | arg_0.x;
    var_1 = ~1u;
    var var_2 = true;
    return Struct_1(_wgslsmith_add_u32(_wgslsmith_add_u32((u_input.c & 1u) | ~0u, u_input.c), u_input.c), _wgslsmith_mult_u32(arg_0.x, ~40522u), ~(~(u_input.c | ~4294967295u)), 1u, 495f);
}

fn func_6(arg_0: Struct_1) -> Struct_2 {
    return Struct_2(func_5(~reverseBits(~vec3<u32>(19597u, 4294967295u, 1u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1595f, 2451f, arg_0.e, arg_0.e)))))), u_input.c >> ((_wgslsmith_div_u32(arg_0.a, 1u) >> ((_wgslsmith_clamp_u32(1u, 41359u, arg_0.a) << (18789u % 32u)) % 32u)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(~(~vec3<u32>(u_input.c, 1u, u_input.c)) & vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 67910u, 33618u, u_input.c), vec4<u32>(34728u, 4294967295u, u_input.c, 800u)), ~34613u, 4294967295u), vec4<f32>(_wgslsmith_f_op_f32(-258f - _wgslsmith_f_op_f32(f32(-1f) * -871f)), 2166f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(979f)))), _wgslsmith_f_op_f32(func_1(~u_input.b.wy, 1609f, _wgslsmith_f_op_f32(min(-444f, 1403f)))))));
    var var_1 = func_2();
    let var_2 = vec4<i32>(u_input.a, -(~(~firstLeadingBit(u_input.b.x))), _wgslsmith_mod_i32(12223i, -1i), -30001i);
    let var_3 = var_0.a.e;
    var_1 = func_2();
    var_0 = Struct_2(var_0.a, ~(~var_1.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-525f, _wgslsmith_div_f32(-216f, 1788f), _wgslsmith_f_op_f32(-var_1.a.e), -840f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(557f, var_1.a.e, 1344f, var_0.a.e) - vec4<f32>(-262f, var_1.a.e, var_1.a.e, -401f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(797f, -1699f, var_0.a.e, var_1.a.e))))), ~countOneBits(~vec3<u32>(var_0.b, 62286u, var_0.a.b)), _wgslsmith_div_i32(-(33356i | select(2147483647i, -6187i, true)), 0i), var_2);
}

