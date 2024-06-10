struct Struct_1 {
    a: i32,
    b: u32,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: vec4<f32>,
    d: u32,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: Struct_3,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<f32, 13> = array<f32, 13>(-1000f, 1140f, 1657f, -162f, 217f, 449f, -128f, 888f, -1430f, 166f, -373f, 1000f, 900f);

var<private> global2: array<vec3<u32>, 22> = array<vec3<u32>, 22>(vec3<u32>(5043u, 0u, 41371u), vec3<u32>(62749u, 44490u, 4294967295u), vec3<u32>(79350u, 0u, 34989u), vec3<u32>(14610u, 19641u, 1u), vec3<u32>(21732u, 7240u, 60894u), vec3<u32>(4294967295u, 15146u, 0u), vec3<u32>(1u, 20020u, 0u), vec3<u32>(5176u, 1u, 1u), vec3<u32>(70065u, 0u, 1u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(8798u, 4294967295u, 1u), vec3<u32>(4294967295u, 4765u, 0u), vec3<u32>(0u, 1u, 0u), vec3<u32>(0u, 31359u, 1u), vec3<u32>(32106u, 23725u, 60159u), vec3<u32>(4294967295u, 23207u, 16410u), vec3<u32>(0u, 1u, 1u), vec3<u32>(111793u, 4294967295u, 30228u), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(80059u, 44846u, 4294967295u), vec3<u32>(53383u, 0u, 0u), vec3<u32>(20188u, 35966u, 24013u));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_3) -> u32 {
    var var_0 = reverseBits(_wgslsmith_add_vec4_u32(~((vec4<u32>(1u, arg_3.a.d, u_input.b.x, arg_3.a.d) & vec4<u32>(arg_2.a.d, 4294967295u, 4294967295u, arg_0.c.a.d)) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.d, u_input.b.x, arg_3.a.d, 1u), vec4<u32>(1u, 1u, arg_3.a.d, arg_1.d), vec4<u32>(arg_1.d, 15333u, u_input.b.x, arg_1.d))), vec4<u32>(_wgslsmith_mod_u32(23345u, 4294967295u), 0u | arg_0.c.a.d, _wgslsmith_add_u32(u_input.b.x, 19378u), firstTrailingBit(arg_0.c.a.d)) & countOneBits(abs(vec4<u32>(arg_0.c.a.d, 76992u, arg_1.d, arg_0.c.a.d)))));
    let var_1 = vec4<u32>(~firstTrailingBit(~arg_2.a.d), reverseBits(arg_2.a.d & reverseBits(arg_2.a.d)), ~1u, 4253u);
    let var_2 = Struct_1(0i, arg_3.a.d, u_input.a.x, all(!vec3<bool>(true, arg_0.a, !arg_0.a)));
    var_0 = var_1;
    var_0 = var_1;
    return _wgslsmith_mult_u32(countOneBits(_wgslsmith_add_u32(var_2.b, _wgslsmith_dot_vec2_u32(u_input.b.yz, vec2<u32>(var_2.b, var_2.b))) >> (var_2.b % 32u)), reverseBits(abs(47730u)));
}

fn func_2() -> u32 {
    var var_0 = vec3<u32>(_wgslsmith_mod_u32(abs(u_input.b.x), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.b.x), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 42831u, 4294967295u, u_input.b.x), vec4<u32>(u_input.b.x, 71044u, 0u, u_input.b.x)))), ~(~(~u_input.b.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(max(u_input.b.x, _wgslsmith_mult_u32(u_input.b.x, u_input.b.x)), _wgslsmith_div_u32(countOneBits(4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 23481u, u_input.b.x), vec4<u32>(8175u, 26312u, u_input.b.x, u_input.b.x)))), select(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 16454u, 1u), vec3<u32>(u_input.b.x, 29734u, u_input.b.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 1u, u_input.b.x, 5458u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x))), _wgslsmith_add_vec2_u32(u_input.b.yx, reverseBits(vec2<u32>(u_input.b.x, 19347u))), vec2<bool>(true, true))));
    let var_1 = vec2<f32>(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(func_3(Struct_4(any(vec2<bool>(false, true)), ~0i, Struct_3(Struct_2(vec4<f32>(-396f, global1[_wgslsmith_index_u32(u_input.b.x, 13u)], -372f, global1[_wgslsmith_index_u32(var_0.x, 13u)]), global1[_wgslsmith_index_u32(u_input.b.x, 13u)], vec4<f32>(global1[_wgslsmith_index_u32(57788u, 13u)], global1[_wgslsmith_index_u32(4294967295u, 13u)], -452f, global1[_wgslsmith_index_u32(var_0.x, 13u)]), 0u, u_input.a)), ~0i), Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 13u)], global1[_wgslsmith_index_u32(var_0.x, 13u)], global1[_wgslsmith_index_u32(39667u, 13u)], -815f) - vec4<f32>(global1[_wgslsmith_index_u32(12907u, 13u)], -116f, global1[_wgslsmith_index_u32(u_input.b.x, 13u)], global1[_wgslsmith_index_u32(u_input.b.x, 13u)])), 1144f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(74576u, 13u)], -1000f, global1[_wgslsmith_index_u32(u_input.b.x, 13u)], global1[_wgslsmith_index_u32(u_input.b.x, 13u)])), abs(var_0.x), u_input.a), Struct_3(Struct_2(vec4<f32>(global1[_wgslsmith_index_u32(0u, 13u)], -1212f, global1[_wgslsmith_index_u32(var_0.x, 13u)], global1[_wgslsmith_index_u32(u_input.b.x, 13u)]), -2330f, vec4<f32>(global1[_wgslsmith_index_u32(var_0.x, 13u)], global1[_wgslsmith_index_u32(0u, 13u)], global1[_wgslsmith_index_u32(var_0.x, 13u)], global1[_wgslsmith_index_u32(127867u, 13u)]), u_input.b.x, u_input.a)), Struct_3(Struct_2(vec4<f32>(-135f, global1[_wgslsmith_index_u32(var_0.x, 13u)], global1[_wgslsmith_index_u32(var_0.x, 13u)], global1[_wgslsmith_index_u32(u_input.b.x, 13u)]), -527f, vec4<f32>(401f, -1279f, global1[_wgslsmith_index_u32(90637u, 13u)], -1033f), u_input.b.x, vec2<i32>(u_input.a.x, u_input.a.x)))), countOneBits(var_0.x ^ 64764u)), 13u)], -1000f);
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(755f, 1021f, 302f, 388f)))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, global1[_wgslsmith_index_u32(u_input.b.x, 13u)], -370f)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(1u, 13u)], 402f, var_1.x, 1164f))))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1[_wgslsmith_index_u32(1u, 13u)], 2174f, 1016f, var_1.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(1u, 13u)], global1[_wgslsmith_index_u32(39722u, 13u)], var_1.x, global1[_wgslsmith_index_u32(1u, 13u)])))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1073f, 888f, var_1.x, var_1.x) + vec4<f32>(2218f, var_1.x, var_1.x, -882f))))))), 4294967295u, _wgslsmith_mult_vec2_i32(max(_wgslsmith_sub_vec2_i32(-vec2<i32>(-1i, -2147483647i), u_input.a | u_input.a), vec2<i32>(u_input.a.x, u_input.a.x) << (u_input.b.yz % vec2<u32>(32u))), vec2<i32>(u_input.a.x, _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x & u_input.a.x, -u_input.a.x))));
    let var_3 = true;
    global0 = 4294967295u;
    return 4294967295u;
}

fn func_4(arg_0: vec3<f32>, arg_1: f32, arg_2: i32, arg_3: Struct_1) -> vec2<u32> {
    var var_0 = true;
    global0 = _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(func_2(), 0u), firstLeadingBit(vec2<u32>(0u, 4294967295u) ^ u_input.b.yy)), ~(~_wgslsmith_add_vec2_u32(u_input.b.zy, vec2<u32>(20196u, 4294967295u)))) >> (_wgslsmith_mult_u32(0u, ~abs(abs(u_input.b.x))) % 32u);
    var var_1 = Struct_3(Struct_2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -423f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.x)) + _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(1u, 13u)]))), arg_1, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~u_input.b.x, 13u)])), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(1u, 13u)], 315f)) - _wgslsmith_f_op_f32(f32(-1f) * -1971f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1272f, global1[_wgslsmith_index_u32(arg_3.b, 13u)], arg_1, -123f))))), vec4<f32>(_wgslsmith_f_op_f32(select(arg_1, 3224f, arg_3.d)), _wgslsmith_f_op_f32(min(-1000f, -607f)), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_3.b, 4294967295u), 13u)], _wgslsmith_f_op_f32(abs(-117f)))), arg_3.b, u_input.a));
    var var_2 = arg_3.d;
    var var_3 = arg_3;
    return vec2<u32>(0u, ~_wgslsmith_mult_u32(0u, ~var_3.b));
}

fn func_1() -> Struct_3 {
    var var_0 = func_4(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2407f, global1[_wgslsmith_index_u32(19861u, 13u)]))), _wgslsmith_f_op_f32(round(-1209f)))), -1481f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~u_input.b.x, 13u)] - _wgslsmith_f_op_f32(1000f - global1[_wgslsmith_index_u32(6686u, 13u)]))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.b.x, 13u)], global1[_wgslsmith_index_u32(u_input.b.x, 13u)])), _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b.x, u_input.b.x), 13u)])), false))), ~_wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.a.x, _wgslsmith_add_i32(u_input.a.x, u_input.a.x)), reverseBits(-19337i)), Struct_1(0i, func_2(), -19296i, true));
    var var_1 = Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-550f, _wgslsmith_f_op_f32(f32(-1f) * -324f), -1476f, _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(var_0.x, 13u)]))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(930f, 428f, 1254f, global1[_wgslsmith_index_u32(27299u, 13u)]))) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 13u)], -1631f, -509f, -300f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1[_wgslsmith_index_u32(var_0.x, 13u)], 1252f, global1[_wgslsmith_index_u32(1u, 13u)], global1[_wgslsmith_index_u32(82097u, 13u)]), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(0u, 13u)], 210f, -1000f, global1[_wgslsmith_index_u32(u_input.b.x, 13u)]) - vec4<f32>(global1[_wgslsmith_index_u32(58726u, 13u)], global1[_wgslsmith_index_u32(29873u, 13u)], global1[_wgslsmith_index_u32(var_0.x, 13u)], global1[_wgslsmith_index_u32(var_0.x, 13u)])), true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(2814u, 13u)])) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(4294967295u, 13u)])))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1707f, -1470f, global1[_wgslsmith_index_u32(var_0.x, 13u)], 1054f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 13u)], 1278f, global1[_wgslsmith_index_u32(var_0.x, 13u)], global1[_wgslsmith_index_u32(u_input.b.x, 13u)]))))), ~(~16659u), u_input.a);
    var var_2 = vec2<i32>(var_1.e.x << (4294967295u % 32u), select(2892i, 43656i, (all(vec4<bool>(false, true, false, true)) && true) && true));
    global1 = array<f32, 13>();
    let var_3 = global1[_wgslsmith_index_u32(abs(firstTrailingBit(~u_input.b.x)), 13u)];
    return Struct_3(Struct_2(vec4<f32>(var_1.b, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_1.d, 13u)]), _wgslsmith_f_op_f32(-var_1.c.x), var_1.a.x), global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(19442u, 104082u, 0u, 13945u), vec4<u32>(23243u, var_0.x, u_input.b.x, 33398u)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, 27329u, var_1.d), vec4<u32>(1u, var_1.d, u_input.b.x, var_0.x))), 13u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, 1000f, -1606f, 2083f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-503f, var_1.c.x, var_1.b, var_1.c.x))) * var_1.c), var_1.d, vec2<i32>(19659i, var_2.x)));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_3, arg_2: vec2<bool>, arg_3: f32) -> StorageBuffer {
    var var_0 = Struct_1(~_wgslsmith_mod_i32(-29261i, firstTrailingBit(34335i)), (arg_1.a.d & 1u) | _wgslsmith_mult_u32(arg_0.c.a.d, func_3(arg_0, arg_0.c.a, func_1(), Struct_3(arg_1.a))), ~_wgslsmith_mult_i32(~(-19788i) << (~u_input.b.x % 32u), arg_1.a.e.x), arg_2.x);
    var var_1 = Struct_1(var_0.a, ~func_1().a.d, -(~reverseBits(var_0.a)), true);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(598f + 166f))), arg_1.a.c.x) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.a.x - arg_1.a.a.x)))))));
    let var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(max(arg_1.a.a, vec4<f32>(-552f, 1009f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.c.x) * arg_0.c.a.c.x), _wgslsmith_f_op_f32(-arg_3)))), arg_0.c.a.c.x, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.c.x) * _wgslsmith_f_op_f32(-arg_0.c.a.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.a.a.x) * arg_1.a.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) + _wgslsmith_f_op_f32(702f - -332f)), func_1().a.c.x), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(186f - global1[_wgslsmith_index_u32(37995u, 13u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(331f - 1000f) * _wgslsmith_div_f32(arg_1.a.b, -569f)), _wgslsmith_f_op_f32(max(-1069f, arg_3)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(arg_0.c.a.a.x, global1[_wgslsmith_index_u32(7581u, 13u)], var_0.d))))))), _wgslsmith_mult_u32(~2588u, ~_wgslsmith_div_u32(_wgslsmith_add_u32(0u, var_1.b), 1u)), u_input.a);
    global2 = array<vec3<u32>, 22>();
    return StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(44269u, 13u)])), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_3.c.x, arg_0.c.a.b)))), ~1u, 1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(276f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<u32>, 22>();
    global1 = array<f32, 13>();
    var var_0 = ~_wgslsmith_add_vec3_u32(u_input.b, _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, _wgslsmith_add_u32(113250u, u_input.b.x), abs(1u)), vec3<u32>(50201u, ~u_input.b.x, abs(0u))));
    var_0 = vec3<u32>(var_0.x, var_0.x, _wgslsmith_mod_u32(~0u, 4294967295u)) << (_wgslsmith_mod_vec3_u32(select(select(select(vec3<u32>(4294967295u, var_0.x, 1u), vec3<u32>(8263u, u_input.b.x, u_input.b.x), false), u_input.b, select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false))), (u_input.b ^ u_input.b) ^ vec3<u32>(u_input.b.x, 93418u, 4294967295u), true), vec3<u32>(30453u, 38123u >> (firstTrailingBit(var_0.x) % 32u), ~(~var_0.x))) % vec3<u32>(32u));
    let var_1 = _wgslsmith_add_vec4_i32(abs(~(_wgslsmith_mult_vec4_i32(vec4<i32>(-36393i, 6573i, 2147483647i, u_input.a.x), vec4<i32>(u_input.a.x, 0i, -1i, u_input.a.x)) << (vec4<u32>(u_input.b.x, 35192u, 39856u, 1u) % vec4<u32>(32u)))), -_wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.a.x, 16184i, u_input.a.x, -1i), countOneBits(vec4<i32>(7022i, u_input.a.x, 0i, 2147483647i))));
    let x = u_input.a;
    s_output = func_5(Struct_4(any(vec2<bool>(true, true)), 0i, func_1(), 0i), Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(var_0.x, 13u)], global1[_wgslsmith_index_u32(var_0.x, 13u)], 1303f, global1[_wgslsmith_index_u32(36720u, 13u)]) * vec4<f32>(440f, global1[_wgslsmith_index_u32(0u, 13u)], global1[_wgslsmith_index_u32(1u, 13u)], 615f))), 1127f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-756f, -618f, global1[_wgslsmith_index_u32(u_input.b.x, 13u)], global1[_wgslsmith_index_u32(u_input.b.x, 13u)]) * vec4<f32>(290f, 1290f, -1259f, -1000f))), ~u_input.b.x, firstLeadingBit(-var_1.ww))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, any(vec3<bool>(false, false, false)))), func_1().a.b);
}

