struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: u32,
    c: vec3<i32>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: Struct_1,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 26> = array<Struct_4, 26>(Struct_4(vec4<bool>(false, false, false, true), 1u, vec3<i32>(1i, -3231i, 31791i)), Struct_4(vec4<bool>(true, false, true, false), 4294967295u, vec3<i32>(-1i, -1i, 2147483647i)), Struct_4(vec4<bool>(false, false, false, true), 0u, vec3<i32>(2147483647i, 11951i, 1i)), Struct_4(vec4<bool>(true, false, false, false), 1u, vec3<i32>(-21386i, 12297i, 51030i)), Struct_4(vec4<bool>(true, false, true, false), 85680u, vec3<i32>(-21142i, 18560i, -23043i)), Struct_4(vec4<bool>(true, false, false, true), 4294967295u, vec3<i32>(4645i, -19324i, 12590i)), Struct_4(vec4<bool>(false, true, false, false), 0u, vec3<i32>(0i, -1i, -1i)), Struct_4(vec4<bool>(true, true, true, true), 14478u, vec3<i32>(0i, -20281i, 11988i)), Struct_4(vec4<bool>(true, true, false, true), 4294967295u, vec3<i32>(38703i, 1i, 16111i)), Struct_4(vec4<bool>(false, false, false, false), 46054u, vec3<i32>(-1i, 10701i, -5319i)), Struct_4(vec4<bool>(true, true, true, true), 4294967295u, vec3<i32>(-1i, 40575i, i32(-2147483648))), Struct_4(vec4<bool>(false, true, true, false), 4294967295u, vec3<i32>(-12225i, -1i, 38423i)), Struct_4(vec4<bool>(true, true, false, true), 0u, vec3<i32>(1i, 39160i, 2147483647i)), Struct_4(vec4<bool>(true, true, false, false), 1u, vec3<i32>(1i, 695i, i32(-2147483648))), Struct_4(vec4<bool>(true, false, false, true), 0u, vec3<i32>(35372i, 0i, i32(-2147483648))), Struct_4(vec4<bool>(false, false, true, false), 41269u, vec3<i32>(-71798i, -1i, i32(-2147483648))), Struct_4(vec4<bool>(false, true, false, false), 0u, vec3<i32>(-1i, 97i, i32(-2147483648))), Struct_4(vec4<bool>(true, false, false, false), 4294967295u, vec3<i32>(i32(-2147483648), 0i, i32(-2147483648))), Struct_4(vec4<bool>(true, true, true, true), 1u, vec3<i32>(44937i, 14519i, -20563i)), Struct_4(vec4<bool>(false, false, false, false), 4294967295u, vec3<i32>(15919i, 2147483647i, 2147483647i)), Struct_4(vec4<bool>(false, true, true, true), 4294967295u, vec3<i32>(58355i, 2147483647i, 2147483647i)), Struct_4(vec4<bool>(false, true, false, false), 1u, vec3<i32>(-92i, -56951i, -13976i)), Struct_4(vec4<bool>(true, true, false, true), 123792u, vec3<i32>(-9510i, 1i, -15614i)), Struct_4(vec4<bool>(false, false, true, false), 32762u, vec3<i32>(2147483647i, i32(-2147483648), i32(-2147483648))), Struct_4(vec4<bool>(true, true, false, false), 17352u, vec3<i32>(2300i, 9827i, 1i)), Struct_4(vec4<bool>(false, false, false, false), 0u, vec3<i32>(35156i, -17112i, -2961i)));

var<private> global1: vec4<u32> = vec4<u32>(31152u, 68077u, 1u, 14855u);

var<private> global2: array<i32, 3>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec3<i32> {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(1924f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -961f) * _wgslsmith_f_op_f32(-1000f - -137f))))), Struct_1(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(-554f + _wgslsmith_f_op_f32(f32(-1f) * -1127f)), true)), u_input.c), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(909f, 440f))), ~firstLeadingBit(_wgslsmith_clamp_vec3_i32(u_input.a.xxy, u_input.c, vec3<i32>(66148i, -1i, -17056i)))), u_input.c.xz, false);
    let var_1 = Struct_3(Struct_1(1f, ~u_input.c), -2147483647i, Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-316f - var_0.b.a)))), var_0.b, Struct_1(_wgslsmith_f_op_f32(ceil(-247f)), vec3<i32>(_wgslsmith_clamp_i32(u_input.b, 21451i, -1i), -2147483647i, -global2[_wgslsmith_index_u32(0u, 3u)])), reverseBits(reverseBits(abs(vec2<i32>(u_input.b, var_0.c.b.x)))), !(var_0.e & (true && var_0.e))));
    let var_2 = var_1.c.a;
    var_0 = var_1.c;
    global2 = array<i32, 3>();
    return -abs(vec3<i32>(_wgslsmith_mod_i32(-u_input.c.x, ~(-17271i)), _wgslsmith_dot_vec4_i32(u_input.a >> (vec4<u32>(2134u, 1u, 57216u, 28078u) % vec4<u32>(32u)), countOneBits(vec4<i32>(var_1.a.b.x, 0i, var_0.c.b.x, var_1.c.d.x))), _wgslsmith_clamp_i32(9080i, var_1.b, -1i)));
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: f32) -> vec3<i32> {
    var var_0 = Struct_5(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-156f, _wgslsmith_f_op_f32(-299f - arg_2)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1)) + arg_0.b.a) * _wgslsmith_f_op_f32(1429f + _wgslsmith_f_op_f32(-arg_0.a))), _wgslsmith_f_op_f32(round(1398f)), -1293f), -vec4<i32>(~_wgslsmith_mod_i32(-1i, -2147483647i), ~global2[_wgslsmith_index_u32(global1.x >> (4294967295u % 32u), 3u)], -2147483647i, _wgslsmith_div_i32(arg_0.b.b.x, -23307i)), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(753f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-1029f)))), false)), -func_3()), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(floor(271f))) * vec3<f32>(_wgslsmith_f_op_f32(step(arg_1, arg_1)), _wgslsmith_f_op_f32(min(arg_1, 302f)), _wgslsmith_f_op_f32(-299f * -1036f)))));
    let var_1 = vec2<u32>(~global1.x, 1u & ~min(0u, _wgslsmith_clamp_u32(4294967295u, global1.x, global1.x)));
    global2 = array<i32, 3>();
    global0 = array<Struct_4, 26>();
    let var_2 = vec2<f32>(arg_2, arg_2);
    return _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(~select(vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 3u)], -2147483647i, global2[_wgslsmith_index_u32(var_1.x, 3u)]), arg_0.b.b, select(vec3<bool>(arg_0.e, arg_0.e, arg_0.e), vec3<bool>(false, true, true), true)), vec3<i32>(-arg_0.b.b.x, u_input.a.x, -(~global2[_wgslsmith_index_u32(global1.x, 3u)]))), firstTrailingBit(arg_0.c.b));
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: Struct_3, arg_3: Struct_4) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.a.a, arg_0.c.b.a, arg_0.a.a), vec3<f32>(arg_2.c.c.a, 1466f, 923f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -264f), arg_2.a.a, -1089f), arg_0.c.e)) + vec3<f32>(_wgslsmith_f_op_f32(arg_2.a.a + 197f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-414f))), arg_2.c.b.a))));
    return arg_3;
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(303f, 1684f) - -314f), func_2(Struct_2(861f, Struct_1(834f, vec3<i32>(-1i, u_input.b, -75233i)), Struct_1(-206f, vec3<i32>(0i, u_input.a.x, u_input.a.x)), vec2<i32>(12818i, 20554i), false), _wgslsmith_f_op_f32(-698f - 161f), -736f)), ~select(~5455i, reverseBits(global2[_wgslsmith_index_u32(29533u, 3u)]), true), Struct_2(_wgslsmith_f_op_f32(trunc(549f)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1599f), firstTrailingBit(u_input.c)), Struct_1(_wgslsmith_f_op_f32(trunc(702f)), _wgslsmith_mod_vec3_i32(u_input.c, vec3<i32>(1i, u_input.b, global2[_wgslsmith_index_u32(1u, 3u)]))), _wgslsmith_div_vec2_i32(select(u_input.a.yz, u_input.c.yy, vec2<bool>(false, true)), u_input.c.zy), all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false))))), all(vec2<bool>(any(select(vec2<bool>(false, false), vec2<bool>(false, false), false)), any(vec3<bool>(false, false, true)))), Struct_3(Struct_1(871f, u_input.c), _wgslsmith_div_i32(9603i, -1588i), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_1(_wgslsmith_f_op_f32(trunc(345f)), vec3<i32>(139i, u_input.c.x, global2[_wgslsmith_index_u32(35517u, 3u)])), Struct_1(_wgslsmith_f_op_f32(step(395f, 1142f)), u_input.a.wxz), max(vec2<i32>(40927i, u_input.b), vec2<i32>(u_input.c.x, u_input.c.x)), select(any(vec4<bool>(false, true, false, false)), all(vec2<bool>(true, true)), true))), Struct_4(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false)), vec4<bool>(false, false, true, u_input.a.x <= global2[_wgslsmith_index_u32(4294967295u, 3u)]), true), ~(~min(4294967295u, global1.x)), u_input.a.wwy));
    let var_1 = ~abs(func_3() << (global1.xzw % vec3<u32>(32u)));
    let var_2 = vec3<u32>(_wgslsmith_div_u32(6657u, ~30660u), _wgslsmith_mod_u32(4294967295u, global1.x), ~_wgslsmith_dot_vec2_u32(firstLeadingBit(select(vec2<u32>(var_0.b, 34965u), global1.yz, var_0.a.yz)), vec2<u32>(global1.x | var_0.b, _wgslsmith_sub_u32(4294967295u, global1.x))));
    var var_3 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-1021f, -521f), -194f, _wgslsmith_f_op_f32(116f + _wgslsmith_f_op_f32(f32(-1f) * -808f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(958f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1100f, 285f, 418f, 2426f) * vec4<f32>(172f, 789f, 783f, -1519f)))))));
    global1 = vec4<u32>(50861u, 1u << (var_0.b % 32u), ~var_2.x << (~(global1.x | _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_0.b), vec2<u32>(42819u, global1.x))) % 32u), global1.x);
    return Struct_1(var_3.x, func_2(Struct_2(-1736f, Struct_1(var_3.x, vec3<i32>(-2147483647i, 0i, -452i)), Struct_1(_wgslsmith_f_op_f32(var_3.x * 1964f), vec3<i32>(0i, 0i, 2147483647i)), -vec2<i32>(48172i, 54299i), var_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1505f))), var_3.x));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_5 {
    var var_0 = Struct_5(vec4<f32>(arg_0.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(480f))))), 552f, _wgslsmith_f_op_f32(floor(arg_0.a))), vec4<i32>(~min(1i, 2147483647i), _wgslsmith_mult_i32(-11045i, u_input.a.x), ~(u_input.a.x ^ firstLeadingBit(global2[_wgslsmith_index_u32(arg_1.x, 3u)])), u_input.c.x), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1355f))), -vec3<i32>(1i, firstLeadingBit(arg_0.b.x), global2[_wgslsmith_index_u32(43737u, 3u)] << (1u % 32u))), vec3<f32>(-709f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1498f, arg_0.a)))), _wgslsmith_f_op_f32(floor(arg_0.a))));
    let var_1 = func_4(Struct_3(Struct_1(1657f, min(arg_0.b | vec3<i32>(2147483647i, 18641i, var_0.c.b.x), var_0.c.b)), 0i, Struct_2(-1000f, Struct_1(_wgslsmith_div_f32(arg_0.a, arg_0.a), func_3()), var_0.c, var_0.c.b.zx, !all(vec4<bool>(true, true, true, false)))), all(vec3<bool>(true, global2[_wgslsmith_index_u32(global1.x, 3u)] >= (i32(-1i) * -2147483647i), true)), Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), arg_0.b), reverseBits(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(28283u, global1.x), max(arg_1, vec2<u32>(83502u, 0u))), 3u)]), Struct_2(_wgslsmith_f_op_f32(-1494f * _wgslsmith_f_op_f32(arg_0.a * var_0.a.x)), arg_0, Struct_1(_wgslsmith_div_f32(375f, arg_0.a), var_0.b.zzy), -(vec2<i32>(14164i, -2147483647i) | vec2<i32>(arg_0.b.x, -17400i)), any(vec2<bool>(true, true)))), global0[_wgslsmith_index_u32(~14714u, 26u)]);
    let var_2 = var_1.a.x;
    let var_3 = firstTrailingBit(global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(0u, abs(~7831u), ~(0u >> (0u % 32u))), 3u)]);
    var_0 = Struct_5(_wgslsmith_f_op_vec4_f32(select(var_0.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a), arg_0.a, arg_0.a, _wgslsmith_f_op_f32(-arg_0.a)) + vec4<f32>(arg_0.a, _wgslsmith_f_op_f32(ceil(-390f)), _wgslsmith_f_op_f32(floor(822f)), -373f)), var_1.a)), -vec4<i32>(max(-2147483647i, -32221i), _wgslsmith_sub_i32(1i, 0i), ~func_3().x, 1i), var_0.c, _wgslsmith_f_op_vec3_f32(-var_0.a.wxx));
    return Struct_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(exp2(var_0.d.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) - _wgslsmith_f_op_f32(sign(395f))), _wgslsmith_f_op_f32(select(var_0.a.x, 1276f, all(vec3<bool>(true, false, var_1.a.x)))), _wgslsmith_f_op_f32(floor(var_0.a.x)))), ~var_0.b, arg_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, 702f, var_0.a.x)) * vec3<f32>(_wgslsmith_f_op_f32(min(arg_0.a, 1583f)), _wgslsmith_f_op_f32(floor(var_0.c.a)), _wgslsmith_f_op_f32(min(1462f, -282f)))) + vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-649f, -1000f, true)))), -430f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.a))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true, true);
    let var_1 = func_5(func_1(), vec2<u32>(global1.x >> (0u % 32u), 0u));
    var var_2 = !select(vec2<bool>(var_0.x, all(vec3<bool>(false, var_0.x, false))), !var_0, true);
    var_2 = !var_0;
    global1 = ~(~(~vec4<u32>(37581u, _wgslsmith_dot_vec2_u32(global1.xw, global1.zy), ~1u, global1.x | 0u)));
    let x = u_input.a;
    s_output = StorageBuffer(min(countOneBits(firstLeadingBit(_wgslsmith_sub_i32(-9i, global2[_wgslsmith_index_u32(global1.x, 3u)]))), _wgslsmith_mod_i32(u_input.a.x, u_input.c.x)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(620f))), 678f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-1127f, 275f)))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.a.x))))), vec4<u32>(~1u, ~global1.x, global1.x, global1.x) >> (~(vec4<u32>(global1.x, 4294967295u, global1.x, 42041u) << ((vec4<u32>(63332u, global1.x, 0u, global1.x) >> (vec4<u32>(global1.x, 30333u, 97841u, global1.x) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u)), global1.x);
}

