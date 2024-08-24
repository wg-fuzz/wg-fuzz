struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
    c: i32,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec2<bool>, 21> = array<vec2<bool>, 21>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true));

var<private> global2: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(-731f, vec4<f32>(127f, 464f, -469f, -409f), vec2<u32>(12106u, 80417u)), Struct_1(-321f, vec4<f32>(-555f, -1352f, -975f, 737f), vec2<u32>(42994u, 18141u)), Struct_1(1000f, vec4<f32>(376f, 1842f, 1000f, -213f), vec2<u32>(60987u, 4294967295u)), Struct_1(849f, vec4<f32>(1108f, 1314f, 1251f, -3108f), vec2<u32>(23343u, 9549u)), Struct_1(-1000f, vec4<f32>(-1632f, 485f, -569f, 1521f), vec2<u32>(1u, 1u)), Struct_1(-250f, vec4<f32>(1092f, -539f, -480f, -843f), vec2<u32>(29551u, 22863u)), Struct_1(1180f, vec4<f32>(691f, 1000f, -1122f, 1441f), vec2<u32>(0u, 1u)), Struct_1(-744f, vec4<f32>(-1315f, 630f, 142f, -733f), vec2<u32>(62301u, 3745u)), Struct_1(1013f, vec4<f32>(-2142f, 1391f, 1069f, -546f), vec2<u32>(0u, 23472u)), Struct_1(274f, vec4<f32>(407f, -844f, 1000f, 929f), vec2<u32>(0u, 68104u)), Struct_1(-308f, vec4<f32>(-1180f, -180f, 1454f, 772f), vec2<u32>(4294967295u, 1u)), Struct_1(-1004f, vec4<f32>(-1393f, 1793f, -467f, -1371f), vec2<u32>(4294967295u, 45413u)), Struct_1(-355f, vec4<f32>(-1216f, 1000f, -1638f, 890f), vec2<u32>(29128u, 4294967295u)), Struct_1(-766f, vec4<f32>(591f, -706f, 405f, -344f), vec2<u32>(138519u, 28395u)), Struct_1(-1257f, vec4<f32>(-1000f, 857f, -915f, -674f), vec2<u32>(4294967295u, 4294967295u)), Struct_1(-1238f, vec4<f32>(-504f, 542f, -1000f, 435f), vec2<u32>(4294967295u, 4294967295u)), Struct_1(-417f, vec4<f32>(527f, -1150f, -116f, 1211f), vec2<u32>(0u, 4294967295u)), Struct_1(-1163f, vec4<f32>(-1000f, 155f, -370f, 723f), vec2<u32>(0u, 24371u)), Struct_1(752f, vec4<f32>(-1921f, 709f, -528f, -1000f), vec2<u32>(30217u, 1u)), Struct_1(-973f, vec4<f32>(-276f, -1439f, 961f, -855f), vec2<u32>(1u, 4294967295u)), Struct_1(1206f, vec4<f32>(148f, -479f, -2173f, 2969f), vec2<u32>(6737u, 4294967295u)), Struct_1(1000f, vec4<f32>(-725f, -753f, 310f, -1000f), vec2<u32>(5867u, 4294967295u)), Struct_1(-390f, vec4<f32>(808f, -169f, 487f, -1000f), vec2<u32>(1u, 1u)), Struct_1(-270f, vec4<f32>(810f, 479f, 751f, 1017f), vec2<u32>(18478u, 4294967295u)), Struct_1(1577f, vec4<f32>(101f, 535f, -2501f, 603f), vec2<u32>(35131u, 1u)), Struct_1(-251f, vec4<f32>(612f, 905f, 894f, 1041f), vec2<u32>(4294967295u, 4294967295u)), Struct_1(105f, vec4<f32>(-634f, -566f, -418f, 1907f), vec2<u32>(1u, 4294967295u)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> u32 {
    var var_0 = vec3<bool>(false, all(vec3<bool>(_wgslsmith_f_op_f32(trunc(arg_0.b.x)) <= 1000f, true, global0.a.x)), select(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(5842u, arg_0.e.c.x, arg_0.e.c.x), ~15897u) < _wgslsmith_dot_vec4_u32(~vec4<u32>(25144u, 1u, 1u, global0.d.c.x), ~arg_0.d), (select(1i, arg_1, true) < 14536i) | global0.a.x, all(vec3<bool>(true, false, select(global0.a.x, false, global0.a.x)))));
    var var_1 = vec4<u32>(1u, firstTrailingBit(0u | (~global0.d.c.x ^ ~global0.d.c.x)), _wgslsmith_add_u32(1u, arg_0.e.c.x), _wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_0.d.x), vec2<u32>(arg_0.d.x, arg_0.e.c.x)), countOneBits(arg_0.d.x & global0.d.c.x)) << ((~abs(35607u) ^ u_input.a) % 32u));
    var var_2 = ~_wgslsmith_sub_vec3_u32(~_wgslsmith_sub_vec3_u32(var_1.zzw << (arg_0.d.zzx % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 8604u, 4558u), vec3<u32>(var_1.x, arg_0.d.x, arg_0.e.c.x))), _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 66735u), var_1.xxy, vec3<u32>(u_input.a, 10195u, global0.c.c.x)) | ~vec3<u32>(var_1.x, arg_0.d.x, 0u), max(max(vec3<u32>(global0.c.c.x, arg_0.d.x, u_input.a), vec3<u32>(1u, 18810u, u_input.a)), arg_0.d.yyx)));
    global0 = Struct_3(select(!global0.a, !(!select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), global0.a, global0.a)), false), _wgslsmith_add_i32(arg_1, _wgslsmith_dot_vec4_i32(vec4<i32>(firstLeadingBit(-40404i), arg_0.a, ~(-27906i), 2147483647i), vec4<i32>(u_input.b.x | arg_0.a, arg_0.c & u_input.b.x, arg_1, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 1i), vec2<i32>(1i, arg_0.c))))), global0.c, Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(165f * 539f)), _wgslsmith_f_op_f32(max(global0.d.b.x, global0.c.b.x)))), global0.c.b, ~(~(~vec2<u32>(1u, 4294967295u)))), -vec4<i32>(-2147483647i, -(i32(-1i) * -1i), -14276i, 2147483647i));
    var var_3 = vec4<i32>(-1312i, -reverseBits(select(-1i, _wgslsmith_dot_vec4_i32(global0.e, global0.e), var_0.x)), ~(~_wgslsmith_dot_vec4_i32(global0.e, _wgslsmith_mod_vec4_i32(vec4<i32>(global0.e.x, u_input.c, -2147483647i, -23584i), global0.e))), _wgslsmith_dot_vec4_i32(global0.e, global0.e));
    return var_2.x;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2, arg_3: vec3<bool>) -> f32 {
    global2 = array<Struct_1, 27>();
    let var_0 = Struct_3(global0.a, u_input.b.x, global2[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 55751u, 4294967295u), ~vec4<u32>(arg_1, arg_0.c.x, arg_0.c.x, 98523u))) ^ (11379u & ~(~arg_0.c.x)), 27u)], global2[_wgslsmith_index_u32(14895u, 27u)], vec4<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(global0.e, max(global0.e << (vec4<u32>(arg_2.d.x, u_input.a, 44832u, 56442u) % vec4<u32>(32u)), vec4<i32>(global0.e.x, u_input.c, 23204i, -2147483647i))), _wgslsmith_sub_i32(abs(-4034i) | ~global0.e.x, -max(u_input.b.x, global0.b)), ~(~_wgslsmith_mod_i32(global0.b, 9915i))));
    var var_1 = global2[_wgslsmith_index_u32(reverseBits(_wgslsmith_mod_u32(arg_1, var_0.c.c.x)), 27u)];
    var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(624f - -1234f) - _wgslsmith_f_op_f32(var_1.b.x - var_1.a)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-181f)) * _wgslsmith_f_op_f32(-var_1.a)))), _wgslsmith_f_op_vec4_f32(step(var_0.d.b, var_0.d.b)), select(~_wgslsmith_sub_vec2_u32(vec2<u32>(53884u, var_1.c.x) << (arg_2.d.yy % vec2<u32>(32u)), vec2<u32>(arg_0.c.x, global0.d.c.x)), _wgslsmith_add_vec2_u32(vec2<u32>(1u, ~arg_0.c.x), ~max(arg_2.d.yy, vec2<u32>(27853u, var_1.c.x))), all(vec2<bool>(any(global0.a.yx), global0.a.x))));
    var_1 = Struct_1(1f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(949f, _wgslsmith_f_op_f32(round(var_0.d.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.a, var_0.d.a))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1052f, var_0.c.b.x))), _wgslsmith_f_op_f32(-1000f + 403f))), ~_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(global0.d.c, vec2<u32>(66301u, 39396u)), global0.c.c), vec2<u32>(min(4261u, arg_2.d.x), ~6874u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.a, 799f), _wgslsmith_f_op_f32(628f + -1332f)) * -775f), _wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -348f)))));
}

fn func_2(arg_0: f32, arg_1: vec3<bool>) -> Struct_1 {
    var var_0 = Struct_3(!vec4<bool>(global0.a.x, select(arg_1.x, !global0.a.x, false), arg_1.x, any(!vec4<bool>(global0.a.x, global0.a.x, true, global0.a.x))), ~(-9787i), global0.d, Struct_1(_wgslsmith_f_op_f32(func_4(Struct_1(1102f, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1193f, 1213f, global0.d.b.x, 2554f) * global0.c.b), global0.d.c), reverseBits(func_3(Struct_2(global0.e.x, global0.d.b.xy, u_input.b.x, vec4<u32>(u_input.a, 1u, u_input.a, 1u), global0.c), global0.e.x)), Struct_2(global0.b, global0.c.b.wy, u_input.b.x, ~vec4<u32>(11806u, u_input.a, u_input.a, global0.d.c.x), global0.d), !vec3<bool>(arg_1.x, true, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-931f, 444f, 1520f, 446f), global0.d.b))))), ~(~_wgslsmith_mult_vec2_u32(global0.c.c, global0.d.c))), -(_wgslsmith_add_vec4_i32(-global0.e, abs(global0.e)) | vec4<i32>(global0.e.x, -77733i ^ global0.b, ~u_input.c, 1i)));
    let var_1 = vec2<i32>(_wgslsmith_mod_i32(global0.b, 43465i), -_wgslsmith_mult_i32(-30402i, -1i) >> (~_wgslsmith_clamp_u32(abs(u_input.a), ~0u, global0.d.c.x) % 32u));
    global2 = array<Struct_1, 27>();
    var var_2 = true;
    let var_3 = var_0.c.c.x;
    return global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_0.d.c.x, var_0.c.c.x ^ u_input.a, global0.d.c.x), 27u)];
}

fn func_1() -> Struct_3 {
    let var_0 = Struct_3(vec4<bool>(true, true, all(!select(global0.a.wy, vec2<bool>(global0.a.x, global0.a.x), global0.a.xx)), false), ~1i, Struct_1(-144f, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-global0.c.b))), global0.d.c), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.c.a)) - 420f), select(global0.a.zyw, global0.a.xxx, vec3<bool>(select(global0.a.x, true, global0.a.x), true, global0.a.x))), vec4<i32>(min(46343i, u_input.b.x), _wgslsmith_mod_i32(global0.b, -6014i & u_input.b.x) & (_wgslsmith_dot_vec2_i32(u_input.b.yz, vec2<i32>(-2147483647i, 1i)) ^ 21549i), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(global0.e, global0.e), u_input.b.x) | _wgslsmith_dot_vec2_i32(global0.e.wx >> (vec2<u32>(global0.c.c.x, u_input.a) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(vec2<i32>(0i, global0.b), u_input.b.yz)), global0.e.x));
    global1 = array<vec2<bool>, 21>();
    let var_1 = func_2(832f, select(vec3<bool>(global0.a.x, any(global1[_wgslsmith_index_u32(0u, 21u)]), true), var_0.a.wwx, global0.a.zwz));
    global2 = array<Struct_1, 27>();
    let var_2 = ~global0.c.c.x;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = func_2(var_0.d.a, var_0.a.zzw);
    global2 = array<Struct_1, 27>();
    var var_2 = Struct_2(-2147483647i, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -181f) + _wgslsmith_f_op_f32(-var_1.b.x)), var_1.a), _wgslsmith_mod_i32(-20458i, ~(-global0.e.x)), vec4<u32>(4294967295u, (_wgslsmith_mult_u32(25784u, var_1.c.x) >> (1u % 32u)) | 4294967295u, _wgslsmith_clamp_u32(u_input.a, firstTrailingBit(global0.c.c.x & 25287u), ~(~var_1.c.x)), var_0.c.c.x), global0.d);
    let var_3 = func_1().c;
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_0.d.b.yz), vec2<f32>(var_3.b.x, var_2.b.x), global0.a.zw)), func_1().d.b.wx, true)));
    var var_5 = vec4<f32>(var_1.a, -306f, var_1.b.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-1010f)))));
    var var_6 = vec3<u32>(_wgslsmith_mod_u32(var_3.c.x, func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.d.a, var_2.b.x)) - _wgslsmith_div_f32(var_4.x, var_4.x)), !(!global0.a.ywy)).c.x), var_1.c.x, ~53711u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.d.a))), _wgslsmith_div_f32(1341f, var_5.x))), var_3.c, var_2.d.wyz);
}

