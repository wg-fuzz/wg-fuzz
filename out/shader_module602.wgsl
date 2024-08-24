struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec3<i32>,
    d: vec4<f32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(1u, 4294967295u, 105895u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: i32) -> vec3<u32> {
    let var_0 = Struct_4(vec3<u32>(~u_input.c.x ^ (~global0.x ^ ~4294967295u), u_input.c.x, global0.x), Struct_1(max(u_input.e, countOneBits(~u_input.e)), -(vec3<i32>(-1i) * -u_input.b.yzz), countOneBits(-1i), vec4<bool>(false, false, true, true)), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-284f, 505f) - _wgslsmith_f_op_f32(round(-1125f))) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -809f), -187f, Struct_1(~vec3<u32>(u_input.a.x, 1u, 95057u), countOneBits(vec3<i32>(u_input.b.x, arg_0, arg_0)), 37304i, vec4<bool>(true, true, false, true))), select(-vec3<i32>(arg_0, -1i, arg_0) & vec3<i32>(-26367i, arg_0, u_input.b.x), u_input.b.xxw, false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(2008f, 638f, -551f, -816f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-317f, -812f, 500f, -1023f)), vec4<bool>(true, true, true, true))))));
    var var_1 = var_0.a.x;
    var_1 = _wgslsmith_div_u32(select(4294967295u, ~60056u, select(all(select(vec4<bool>(true, true, false, true), var_0.b.d, var_0.b.d.x)), any(var_0.c.b.c.d.xx), !(u_input.d >= var_0.c.b.c.b.x))), 19386u >> (~_wgslsmith_add_u32(var_0.a.x | global0.x, var_0.a.x ^ 47543u) % 32u));
    let var_2 = ~abs(~firstLeadingBit(vec4<i32>(-1i, -102294i, var_0.c.c.x, -40610i))) >> (u_input.a % vec4<u32>(32u));
    var_1 = var_0.c.b.c.a.x;
    return vec3<u32>(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(var_0.b.a.x, global0.x, 25849u) & var_0.b.a), ~vec3<u32>(u_input.a.x, global0.x, 1u)), ~(~global0.x >> (_wgslsmith_dot_vec2_u32(var_0.c.b.c.a.yx, vec2<u32>(global0.x, 67265u)) % 32u)), u_input.a.x) >> (min(u_input.e, countOneBits(u_input.c)) % vec3<u32>(32u));
}

fn func_2() -> i32 {
    var var_0 = true;
    global0 = ~countOneBits(~(vec3<u32>(u_input.a.x, 7416u, u_input.a.x) << (vec3<u32>(131589u, global0.x, u_input.e.x) % vec3<u32>(32u)))) & _wgslsmith_div_vec3_u32(u_input.a.zwy, min(firstLeadingBit(u_input.c) & ~u_input.c, ~func_3(-43258i)));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-152f, -403f, 857f, 780f) + vec4<f32>(-595f, 1461f, 496f, -371f))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -866f) - _wgslsmith_f_op_f32(616f * 903f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1049f, 870f, true)) + -461f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -925f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1095f, 117f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(select(-418f, -1000f, true)), _wgslsmith_f_op_f32(700f - 1863f), _wgslsmith_f_op_f32(653f + 594f), 1791f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(2280f, 482f, -1321f, 1000f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1359f, -196f, 2536f, -553f) - vec4<f32>(441f, -1430f, 1124f, -317f)))))));
    var_0 = true;
    var var_2 = Struct_3(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-var_1.x)), Struct_2(_wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -357f))), _wgslsmith_f_op_f32(-var_1.x), Struct_1(~(~u_input.a.zxz), _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.b.zzy, u_input.b.yzw), select(vec3<i32>(0i, u_input.d, -2147483647i), vec3<i32>(u_input.d, 13152i, 108375i), vec3<bool>(false, true, false))), i32(-1i) * -356i, select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), true), vec4<bool>(false, true, true, true), true))), abs(_wgslsmith_clamp_vec3_i32(-vec3<i32>(-1i, -38730i, u_input.d), -u_input.b.zwz, ~u_input.b.xyy)), var_1);
    return ~_wgslsmith_mult_i32(_wgslsmith_div_i32(i32(-1i) * -26601i, var_2.c.x & _wgslsmith_div_i32(-2147483647i, -49306i)), ~(~firstTrailingBit(var_2.b.c.b.x)));
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_1(vec3<u32>(_wgslsmith_add_u32(0u, _wgslsmith_mult_u32(6156u, global0.x)), ~firstLeadingBit(60078u), u_input.e.x >> (global0.x % 32u)), -u_input.b.zyz ^ vec3<i32>(func_2(), ~(i32(-1i) * -1i), 61356i), u_input.d, vec4<bool>(!(true | any(vec2<bool>(true, true))), !(!(8261i > u_input.b.x)), !(52154i < u_input.d) == true, !(true | any(vec3<bool>(true, true, true)))));
    var var_1 = ~(~(-_wgslsmith_clamp_i32(u_input.d, var_0.c ^ u_input.d, _wgslsmith_mult_i32(var_0.b.x, 2147483647i))));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-1f), -109f, Struct_1(vec3<u32>(firstTrailingBit(4294967295u), u_input.e.x, _wgslsmith_clamp_u32(var_0.a.x, 0u, u_input.a.x)), vec3<i32>(_wgslsmith_sub_i32(var_0.b.x, u_input.b.x), _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.d, 0i, var_0.c), u_input.b.wyy), abs(~(-25708i))), 46295i >> (~global0.x % 32u), !vec4<bool>(false, var_0.d.x, any(var_0.d.yyy), any(var_0.d.yy))));
    var var_3 = ~_wgslsmith_div_i32(abs(52153i), _wgslsmith_dot_vec4_i32(~(-vec4<i32>(-1i, -2147483647i, var_0.b.x, -11375i)), _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, var_0.b.x, var_2.c.c, 1i), vec4<i32>(-3817i, 2147483647i, u_input.d, -1i)), -vec4<i32>(-1i, u_input.b.x, 0i, -1i))));
    var_3 = -select(var_2.c.c, i32(-1i) * -37515i, select(var_2.a != -674f, select(false, true, !var_2.c.d.x), true));
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a))) * _wgslsmith_f_op_f32(-var_2.a)), _wgslsmith_div_f32(var_2.a, var_2.a), Struct_1(~var_0.a, vec3<i32>(-1i) * -var_2.c.b, var_0.c, vec4<bool>(var_0.d.x, var_0.d.x, true, !(!var_2.c.d.x))));
}

fn func_4(arg_0: Struct_2) -> Struct_3 {
    global0 = vec3<u32>(~(~_wgslsmith_mod_u32(u_input.a.x, abs(arg_0.c.a.x))), arg_0.c.a.x, 1u);
    let var_0 = arg_0.c.d.xw;
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-arg_0.a), func_1(), vec3<i32>(1i, -1i, u_input.b.x), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -587f) + -580f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.a)) * _wgslsmith_f_op_f32(arg_0.a + 243f)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a, arg_0.a) + 1f)), _wgslsmith_f_op_f32(min(-766f, 1099f))));
    let var_2 = Struct_4(vec3<u32>(~4294967295u, global0.x & var_1.b.c.a.x, arg_0.c.a.x), func_1().c, Struct_3(1332f, func_1(), firstTrailingBit(vec3<i32>(1i, -var_1.b.c.b.x, -var_1.c.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.a, arg_0.a, 982f, arg_0.b)))))));
    global0 = ~arg_0.c.a;
    return Struct_3(_wgslsmith_f_op_f32(sign(var_2.c.b.b)), arg_0, _wgslsmith_add_vec3_i32(arg_0.c.b, ((u_input.b.wyz & vec3<i32>(1i, 1i, arg_0.c.c)) & _wgslsmith_add_vec3_i32(u_input.b.wzx, var_2.b.b)) >> (vec3<u32>(firstLeadingBit(global0.x), 23303u | global0.x, _wgslsmith_sub_u32(arg_0.c.a.x, var_1.b.c.a.x)) % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.c.d)) + vec4<f32>(_wgslsmith_f_op_f32(var_1.d.x - 284f), _wgslsmith_f_op_f32(-881f - var_2.c.d.x), -955f, _wgslsmith_f_op_f32(272f + var_1.d.x)))));
}

fn func_5(arg_0: Struct_3) -> vec3<u32> {
    global0 = vec3<u32>(arg_0.b.c.a.x, u_input.a.x & 4294967295u, _wgslsmith_dot_vec2_u32(global0.yy, reverseBits(~_wgslsmith_div_vec2_u32(vec2<u32>(arg_0.b.c.a.x, 1u), vec2<u32>(1u, 1u)))));
    var var_0 = arg_0.b.c;
    global0 = vec3<u32>(reverseBits(var_0.a.x), ~49750u, u_input.e.x);
    var_0 = func_1().c;
    var var_1 = arg_0.d.wz;
    return arg_0.b.c.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-408f + 1423f))), 794f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1111f, 1367f)))));
    var var_1 = global0.yy;
    global0 = func_5(func_4(func_1())) << (~vec3<u32>(~_wgslsmith_dot_vec2_u32(global0.yz, u_input.a.yy), 6548u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(59351u, 4294967295u, 54759u, 50181u), u_input.a)) % vec3<u32>(32u));
    var var_2 = _wgslsmith_add_i32((-_wgslsmith_add_i32(7841i, u_input.d) >> (min(u_input.c.x, 15963u & u_input.e.x) % 32u)) << (u_input.a.x % 32u), u_input.d);
    global0 = vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.a | u_input.a, ~vec4<u32>(func_4(Struct_2(var_0.x, 1786f, Struct_1(vec3<u32>(1u, 26801u, 0u), u_input.b.xyz, u_input.d, vec4<bool>(false, true, true, false)))).b.c.a.x, 1u, _wgslsmith_add_u32(90671u, var_1.x), var_1.x)), func_5(func_4(func_4(func_1()).b)).x, global0.x << (4294967295u % 32u));
    var var_3 = _wgslsmith_dot_vec2_u32(select(u_input.c.yz, global0.zz, all(func_4(func_1()).b.c.d.yx)), func_4(Struct_2(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(385f + var_0.x)), func_1().c)).b.c.a.xz);
    let var_4 = Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(533f)), _wgslsmith_f_op_f32(-var_0.x)) + -1331f), -302f)), func_4(Struct_2(_wgslsmith_f_op_f32(trunc(func_4(Struct_2(var_0.x, var_0.x, Struct_1(u_input.c, u_input.b.zxz, u_input.b.x, vec4<bool>(false, false, true, false)))).a)), -239f, Struct_1(vec3<u32>(148479u, u_input.c.x, 1u), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d, -2147483647i, u_input.b.x), vec3<i32>(8111i, u_input.b.x, u_input.b.x)), 19104i, vec4<bool>(true, true, true, true)))).b, ~u_input.b.xxx, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_0.x, var_0.x, -529f)))), vec4<f32>(122f, _wgslsmith_f_op_f32(-480f * var_0.x), -662f, -287f))), func_4(func_1()).d)));
    var_3 = _wgslsmith_dot_vec2_u32(min(u_input.a.zx, ~global0.xy ^ ~vec2<u32>(var_1.x, 4294967295u)), vec2<u32>(~u_input.e.x, abs(u_input.a.x) << (21261u % 32u)));
    let var_5 = Struct_3(func_4(var_4.b).d.x, Struct_2(235f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_4.a + var_0.x))), var_4.b.c), vec3<i32>((var_4.b.c.b.x ^ -var_4.b.c.c) | abs(var_4.b.c.c ^ var_4.b.c.b.x), _wgslsmith_add_i32(abs(-2147483647i), func_4(var_4.b).b.c.b.x), 0i), var_4.d);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(firstLeadingBit(func_2()), max(_wgslsmith_sub_i32(~var_5.b.c.b.x, u_input.d), max(var_4.c.x, 1333i)), _wgslsmith_div_i32(reverseBits(-1i), _wgslsmith_sub_i32(~u_input.d, -34025i)), var_4.c.x), var_5.a, ~_wgslsmith_mod_i32(_wgslsmith_sub_i32(-1666i, u_input.b.x) ^ _wgslsmith_div_i32(var_5.c.x, 0i), (var_4.c.x ^ var_4.c.x) >> ((4294967295u ^ var_1.x) % 32u)));
}

