struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(0i, i32(-2147483648), i32(-2147483648)), 419f, vec4<i32>(-1i, -56027i, -4384i, -7656i));

var<private> global1: array<vec2<u32>, 29> = array<vec2<u32>, 29>(vec2<u32>(19958u, 3338u), vec2<u32>(5420u, 21955u), vec2<u32>(59073u, 1u), vec2<u32>(1u, 5755u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 27698u), vec2<u32>(0u, 1u), vec2<u32>(44168u, 6405u), vec2<u32>(1u, 17054u), vec2<u32>(47319u, 1u), vec2<u32>(15638u, 34749u), vec2<u32>(1u, 25739u), vec2<u32>(1u, 4294967295u), vec2<u32>(18362u, 7757u), vec2<u32>(36265u, 0u), vec2<u32>(2007u, 39306u), vec2<u32>(18439u, 0u), vec2<u32>(48411u, 0u), vec2<u32>(64677u, 0u), vec2<u32>(29221u, 54558u), vec2<u32>(74987u, 1u), vec2<u32>(4294967295u, 38518u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(87446u, 4294967295u), vec2<u32>(27943u, 36291u), vec2<u32>(2882u, 78724u), vec2<u32>(1u, 72943u), vec2<u32>(1u, 0u), vec2<u32>(23798u, 69775u));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> vec2<u32> {
    global0 = arg_0;
    let var_0 = all(select(vec3<bool>(true, true, true), vec3<bool>(true, select(true, false, true), u_input.d.x >= 16719u), true)) | true;
    return firstTrailingBit(_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d.x, u_input.d.x) << (vec2<u32>(4294967295u, 29042u) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, arg_1), firstLeadingBit(vec2<u32>(arg_1, 1u)))), vec2<u32>(u_input.c, ~_wgslsmith_mult_u32(0u, u_input.c))));
}

fn func_2(arg_0: bool, arg_1: vec4<f32>) -> u32 {
    global1 = array<vec2<u32>, 29>();
    let var_0 = -299f;
    let var_1 = ~(~func_3(Struct_1(~global0.c.xzz, _wgslsmith_f_op_f32(floor(arg_1.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(40317i, global0.a.x, -24968i, -28014i), global0.c)), abs(1u) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), u_input.d.yx) % 32u)));
    global0 = Struct_1(min(vec3<i32>(4903i, global0.a.x, u_input.a.x), global0.a), 1000f, -vec4<i32>(reverseBits(global0.c.x), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.a.x, 1i, -37297i, -2147483647i), global0.c), min(u_input.a.x, -6185i), ~2147483647i) | ~firstLeadingBit(global0.c));
    global1 = array<vec2<u32>, 29>();
    return 40962u;
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = u_input.d.yz;
    let var_1 = u_input.b;
    global1 = array<vec2<u32>, 29>();
    let var_2 = _wgslsmith_f_op_f32(global0.b * -217f);
    var var_3 = arg_1;
    return !(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false));
}

fn func_1() -> f32 {
    let var_0 = func_4(func_2(false, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, global0.b, global0.b, global0.b) + vec4<f32>(global0.b, global0.b, global0.b, -827f)) - vec4<f32>(-737f, global0.b, global0.b, global0.b))))), Struct_1(reverseBits(~abs(global0.c.yww)), _wgslsmith_f_op_f32(step(1950f, global0.b)), vec4<i32>(reverseBits(~628i), global0.c.x, global0.a.x, 25688i)));
    let var_1 = Struct_1(-vec3<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(global0.a.x, -1i, global0.c.x), -u_input.a.wxz), abs(10846i), countOneBits(max(u_input.a.x, u_input.b))), -314f, reverseBits(global0.c));
    let var_2 = all(!vec4<bool>(true & (true != var_0.x), !all(var_0), var_0.x, all(var_0)));
    let var_3 = false;
    let var_4 = Struct_1(_wgslsmith_sub_vec3_i32(~(vec3<i32>(global0.a.x, 18408i, 21888i) >> (u_input.d % vec3<u32>(32u))), -(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, global0.c.x, global0.a.x), vec3<i32>(u_input.b, global0.a.x, 1i)) ^ ~var_1.c.xzx)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1979f, global0.b)) + var_1.b))))), vec4<i32>(81882i, _wgslsmith_div_i32(global0.a.x, 2147483647i) << (u_input.c % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, global0.c.x) ^ _wgslsmith_sub_vec2_i32(vec2<i32>(0i, u_input.b), vec2<i32>(0i, 0i)), select(_wgslsmith_add_vec2_i32(var_1.a.yz, global0.a.xy), vec2<i32>(2147483647i, -2147483647i), vec2<bool>(false, var_0.x))), global0.c.x));
    return global0.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(vec3<i32>(-1i, global0.a.x, firstLeadingBit(i32(-1i) * -1i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())) + -1000f) + _wgslsmith_f_op_f32(abs(1068f))), -(~(global0.c & global0.c)));
    global1 = array<vec2<u32>, 29>();
    let var_0 = _wgslsmith_add_vec2_u32(~(u_input.d.xx & global1[_wgslsmith_index_u32(abs(81592u), 29u)]), min(vec2<u32>(0u, _wgslsmith_add_u32(abs(u_input.d.x), 21532u)), ~u_input.d.xx));
    global0 = Struct_1(vec3<i32>(_wgslsmith_mult_i32(global0.a.x, 10739i), _wgslsmith_dot_vec3_i32(vec3<i32>(max(1426i, 37919i), global0.c.x << (46210u % 32u), countOneBits(global0.c.x)), vec3<i32>(-u_input.b, -u_input.b, ~u_input.b)), _wgslsmith_dot_vec4_i32(global0.c, u_input.a)), _wgslsmith_f_op_f32(step(global0.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) + _wgslsmith_f_op_f32(-global0.b)), -817f)))), min(vec4<i32>(-(~(-30808i)), global0.c.x, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.a.xzw, vec3<i32>(global0.c.x, -25130i, 25924i)), vec3<i32>(global0.c.x, -2147483647i, -1i)), abs(abs(1i))), ~(~(vec4<i32>(1i, 8681i, global0.c.x, -2147483647i) ^ vec4<i32>(global0.a.x, -36812i, global0.c.x, global0.c.x)))));
    var var_1 = vec2<u32>(var_0.x, u_input.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(max(0u, ~firstLeadingBit(var_1.x)), 4294967295u, abs(~(~1u))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-493f, _wgslsmith_f_op_f32(global0.b * _wgslsmith_f_op_f32(f32(-1f) * -1910f)))))), ~vec3<i32>(max(2147483647i, -1i), -2147483647i, global0.c.x));
}

