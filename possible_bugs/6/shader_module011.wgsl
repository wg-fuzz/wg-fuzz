struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(803f, -1000f, 943f, 859f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1) -> bool {
    global0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(global0.x * arg_1.b), 1159f, arg_0.x) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.x, -272f, 499f, -1244f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 743f, 873f, -1939f) * vec4<f32>(1706f, global0.x, arg_1.b, arg_0.x)), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, arg_1.a.x, true), vec4<bool>(arg_1.a.x, arg_1.a.x, true, arg_1.a.x))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - 408f) * _wgslsmith_f_op_f32(269f - -140f)), 465f, global0.x, global0.x))));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b, 478f, arg_1.b, arg_1.b)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_1.b)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(727f, 769f, -1677f, arg_0.x)))))) + _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.b, _wgslsmith_f_op_f32(arg_1.b - _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.x + global0.x), global0.x)), -476f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(global0.x * arg_1.b), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(ceil(global0.x)), arg_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, arg_1.b, arg_1.b)), 1f < _wgslsmith_f_op_f32(arg_0.x + -508f)))));
    global0 = vec4<f32>(_wgslsmith_div_f32(global0.x, 1f), _wgslsmith_f_op_f32(arg_1.b * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.x))) * 746f)), 919f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2433f, -391f)))))));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1465f, global0.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-978f * -319f) - _wgslsmith_f_op_f32(exp2(arg_1.b))))))), arg_0.x, arg_1.b, arg_0.x);
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))))), -981f, arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -175f)));
    return true;
}

fn func_2(arg_0: Struct_2, arg_1: vec4<i32>) -> f32 {
    let var_0 = !(!arg_0.b.a);
    let var_1 = all(select(!vec3<bool>(func_3(vec2<f32>(-1970f, global0.x), Struct_1(vec4<bool>(var_0.x, true, false, arg_0.b.a.x), 960f)), select(true, false, true), func_3(global0.wx, Struct_1(vec4<bool>(var_0.x, true, arg_0.b.a.x, true), 540f))), !select(select(arg_0.d.a.yzx, arg_0.d.a.yzz, false), vec3<bool>(true, var_0.x, arg_0.c.x), var_0.wzw), false));
    var var_2 = max(max(~(~vec4<u32>(1u, 78947u, 0u, 4294967295u)), _wgslsmith_add_vec4_u32(~(~vec4<u32>(16865u, 40402u, 4294967295u, 65755u)), select(firstLeadingBit(vec4<u32>(1u, 1u, 0u, 1u)), vec4<u32>(75498u, 7632u, 12925u, 1u), select(vec4<bool>(var_1, arg_0.d.a.x, arg_0.d.a.x, true), vec4<bool>(arg_0.d.a.x, false, true, var_0.x), true)))), ~(~(~vec4<u32>(1u, 1u, 1u, 1u))));
    var var_3 = ~_wgslsmith_sub_vec4_u32(~(~select(vec4<u32>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<u32>(var_2.x, 0u, 58701u, 46997u), var_0)), _wgslsmith_clamp_vec4_u32(~(vec4<u32>(0u, 8780u, var_2.x, 4294967295u) >> (vec4<u32>(var_2.x, var_2.x, var_2.x, 1u) % vec4<u32>(32u))), _wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(var_2.x, var_2.x, var_2.x, 0u)), ~vec4<u32>(23365u, var_2.x, 68688u, 4294967295u)), abs(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 8003u, var_2.x, 27978u), vec4<u32>(35898u, var_2.x, var_2.x, var_2.x)))));
    let var_4 = vec4<u32>(firstTrailingBit(min(_wgslsmith_sub_u32(~73708u, select(var_2.x, var_3.x, arg_0.d.a.x)), 4294967295u)), 4294967295u, _wgslsmith_add_u32(~select(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(var_2.x, 42363u)), 1u, func_3(global0.yy, Struct_1(vec4<bool>(var_1, var_0.x, var_0.x, true), -1000f))), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~var_3.xwz, vec3<u32>(var_3.x, 36264u, var_3.x)), ~(~vec3<u32>(4294967295u, 16082u, 47184u)))), _wgslsmith_dot_vec3_u32(vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_3.x, 0u), vec3<u32>(var_3.x, 4294967295u, var_3.x)), ~(0u ^ var_3.x), ~4294967295u), vec3<u32>(~_wgslsmith_sub_u32(24037u, 1u), 34638u, _wgslsmith_dot_vec2_u32(select(vec2<u32>(26027u, 11922u), vec2<u32>(29369u, 1u), var_1), _wgslsmith_add_vec2_u32(vec2<u32>(0u, 1u), var_3.yz)))));
    return _wgslsmith_f_op_f32(567f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1f))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: bool) -> Struct_4 {
    var var_0 = Struct_1(vec4<bool>(false && any(vec4<bool>(true, false, false, arg_2)), true, true, global0.x == 137f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(602f, -1253f) - global0.x));
    var_0 = arg_0.d;
    let var_1 = _wgslsmith_mult_vec4_i32(reverseBits((vec4<i32>(-1i) * -vec4<i32>(-80072i, u_input.b, u_input.b, u_input.b)) & vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(25632i, -25505i, u_input.b), vec3<i32>(u_input.a, u_input.b, -1i)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.a), vec2<i32>(12953i, u_input.a)), u_input.b, _wgslsmith_add_i32(u_input.a, 0i))), -(~(vec4<i32>(1i, 2147483647i, u_input.b, -2147483647i) ^ vec4<i32>(u_input.b, -5435i, u_input.b, -50594i)) << (vec4<u32>(~1257u, firstTrailingBit(11297u), 44905u, 5035u) % vec4<u32>(32u))));
    let var_2 = ~select(var_1.x << (_wgslsmith_mod_u32(0u, ~30332u) % 32u), ~(u_input.b | -1i), true);
    let var_3 = vec2<u32>(1u, 1u);
    return Struct_4(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.x, _wgslsmith_div_f32(911f, 1000f))) - -901f), Struct_1(!vec4<bool>(true, var_0.a.x, false, arg_0.d.a.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.x - arg_1.x), -219f, all(arg_0.b.a)))), !(!vec2<bool>(arg_0.c.x, false)), arg_0.d), -19909i, Struct_2(1545f, Struct_1(select(select(arg_0.b.a, vec4<bool>(arg_0.b.a.x, arg_2, arg_0.b.a.x, false), arg_0.b.a), var_0.a, true), arg_0.d.b), select(select(vec2<bool>(true, true), vec2<bool>(false, false), select(var_0.a.wz, arg_0.b.a.ww, arg_2)), vec2<bool>(true, true), any(!vec4<bool>(arg_2, true, arg_0.b.a.x, true))), arg_0.b));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_3) -> Struct_2 {
    global0 = vec4<f32>(global0.x, 749f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(min(572f, global0.x)))))) * global0.x), global0.x);
    var var_0 = func_4(Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(Struct_2(-1527f, Struct_1(vec4<bool>(true, false, true, false), 1012f), vec2<bool>(true, false), Struct_1(vec4<bool>(false, true, false, true), global0.x)), ~vec4<i32>(arg_0.x, 1i, arg_0.x, 36900i))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.x))))), Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(-1019f + _wgslsmith_f_op_f32(-535f + -810f))), vec2<bool>(false, all(vec2<bool>(true, true))), Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(sign(259f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_div_f32(-339f, global0.x), 346f, _wgslsmith_f_op_f32(-global0.x), global0.x), vec4<f32>(_wgslsmith_f_op_f32(-334f * global0.x), global0.x, _wgslsmith_f_op_f32(f32(-1f) * -960f), 922f))))), select(true, all(vec3<bool>(true, true, true)), (arg_1.a << (19621u % 32u)) > arg_1.a));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1249f, -1000f, 1000f, var_0.c.b.b) * _wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.b.b, -1000f, -1413f, var_0.a.d.b), vec4<f32>(213f, -1361f, -1041f, global0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, var_0.a.a, -598f, 1117f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-359f, 537f, -933f, -422f) + vec4<f32>(1326f, global0.x, -236f, 844f)), vec4<bool>(var_0.c.c.x, var_0.a.b.a.x, false, true))))));
    var_0 = Struct_4(Struct_2(var_0.a.d.b, Struct_1(vec4<bool>(any(vec3<bool>(var_0.a.c.x, var_0.c.b.a.x, var_0.c.d.a.x)), var_0.c.c.x, !var_0.c.c.x, any(var_0.a.c)), 1580f), select(select(var_0.c.c, func_4(var_0.a, var_1, var_0.c.b.a.x).a.d.a.zz, true), vec2<bool>(all(vec2<bool>(false, false)), true), !all(var_0.a.c)), Struct_1(vec4<bool>(var_0.a.b.a.x, select(var_0.c.b.a.x, false, false), var_0.a.d.a.x, false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1468f - var_0.c.a)))), var_0.b, var_0.c);
    let var_2 = true;
    return func_4(func_4(var_0.a, var_1, var_2).c, _wgslsmith_f_op_vec4_f32(var_1 * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), var_1.x, -973f, 1687f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, -494f, var_0.c.a)))), any(!var_0.a.b.a)).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~(vec3<i32>(u_input.a, firstTrailingBit(u_input.a), -6167i) >> (vec3<u32>(1u, ~1u, ~26582u) % vec3<u32>(32u))), Struct_3(_wgslsmith_dot_vec2_u32(~vec2<u32>(19143u, 24822u), abs(vec2<u32>(74438u, 0u))) ^ ~1u));
    let var_1 = Struct_3(4294967295u);
    var var_2 = Struct_4(Struct_2(_wgslsmith_f_op_f32(-var_0.b.b), Struct_1(func_4(func_4(Struct_2(-1000f, Struct_1(var_0.b.a, var_0.a), var_0.b.a.wz, Struct_1(var_0.b.a, -1931f)), vec4<f32>(597f, var_0.b.b, global0.x, var_0.d.b), false).c, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1392f, 778f, 2162f, global0.x))), !var_0.b.a.x).c.d.a, _wgslsmith_div_f32(global0.x, 1292f)), !vec2<bool>(u_input.b > u_input.a, func_3(vec2<f32>(var_0.a, global0.x), Struct_1(vec4<bool>(false, false, var_0.b.a.x, var_0.c.x), -1316f))), Struct_1(var_0.d.a, _wgslsmith_f_op_f32(func_2(Struct_2(global0.x, var_0.d, var_0.b.a.xy, var_0.b), vec4<i32>(-47345i, u_input.b, 0i, u_input.b) | vec4<i32>(-900i, 1i, u_input.a, -13827i))))), 1i, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global0.x, global0.x, false)), global0.x) * var_0.a), func_4(Struct_2(var_0.b.b, var_0.b, !vec2<bool>(var_0.b.a.x, false), Struct_1(var_0.d.a, -675f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, -1166f, 2149f) * vec4<f32>(-1403f, var_0.d.b, global0.x, 1484f))), ~27872u >= var_1.a).c.b, vec2<bool>(var_0.b.a.x, all(select(vec4<bool>(var_0.b.a.x, true, var_0.c.x, var_0.b.a.x), vec4<bool>(var_0.c.x, var_0.d.a.x, false, var_0.c.x), false))), var_0.b));
    var_0 = var_2.c;
    var_2 = func_4(func_4(var_2.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-169f, global0.x, -840f, var_2.c.b.b) * vec4<f32>(var_0.d.b, -558f, var_2.a.b.b, -598f)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c.a, -1949f, var_0.d.b, 108f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 2422f, -1678f, 141f)))), true).c, vec4<f32>(var_2.a.d.b, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b.b - global0.x), 1f))), _wgslsmith_f_op_f32(-func_1(abs(vec3<i32>(var_2.b, 22i, -1i)), var_1).d.b), global0.x), var_2.c.b.a.x);
    let var_3 = (i32(-1i) * -_wgslsmith_div_i32(2147483647i, u_input.b >> (15588u % 32u))) | _wgslsmith_dot_vec4_i32(~vec4<i32>(3044i, _wgslsmith_div_i32(-17017i, -30498i), ~(-2147483647i), -2147483647i), _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(-8020i, u_input.a, u_input.b, 1i), select(vec4<i32>(2147483647i, -13707i, var_2.b, 22455i), vec4<i32>(-1i, -70765i, 47415i, 6489i), var_2.a.b.a), -vec4<i32>(2147483647i, -14310i, -1i, u_input.a)), vec4<i32>(_wgslsmith_div_i32(2147483647i, var_2.b), i32(-1i) * -30070i, u_input.a, -1i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, _wgslsmith_add_i32(firstTrailingBit(u_input.a), func_4(var_2.c, vec4<f32>(global0.x, 190f, 1029f, var_0.b.b), var_2.c.d.a.x).b), -var_2.b >> (4294967295u % 32u)), abs(vec3<i32>(-u_input.b, u_input.a, _wgslsmith_div_i32(-1i, -25833i)))));
}

