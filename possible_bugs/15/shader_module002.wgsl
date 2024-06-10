struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<f32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_2,
    d: vec4<u32>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(Struct_1(vec2<u32>(3838u, 8086u), vec4<u32>(31662u, 26u, 58661u, 36899u), 8369u, vec2<f32>(1472f, 1000f), 41473i));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: u32) -> bool {
    var var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(-u_input.a, _wgslsmith_add_i32(2147483647i, min(-u_input.b, u_input.b)), ~(i32(-1i) * -10529i), _wgslsmith_dot_vec2_i32(reverseBits(countOneBits(vec2<i32>(global0.a.e, global0.a.e))), vec2<i32>(~u_input.b, -2147483647i))), firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(-21102i, u_input.b, global0.a.e, -1i) | vec4<i32>(-4547i, global0.a.e, 25548i, 0i), min(vec4<i32>(19682i, 35348i, global0.a.e, -2147483647i), vec4<i32>(global0.a.e, 37742i, 0i, u_input.a)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, global0.a.e, 23879i, u_input.b), vec4<i32>(u_input.a, u_input.a, global0.a.e, 4025i))) << (vec4<u32>(16843u | global0.a.a.x, 1u, 1u, 1369u) % vec4<u32>(32u))));
    var var_1 = Struct_2(Struct_1(~(~global0.a.b.xx), ~(~(~vec4<u32>(1u, global0.a.b.x, 60890u, 3210u))), ~global0.a.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.d.x, -653f) - _wgslsmith_div_vec2_f32(global0.a.d, global0.a.d)) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1, -557f)))), ~13274i), select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(true, false)) && true, all(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true)), any(vec3<bool>(true, true, false)), false), !(!all(vec4<bool>(true, false, true, true)))), Struct_1(vec2<u32>(countOneBits(1u), 1u) >> (~(~global0.a.a) % vec2<u32>(32u)), global0.a.b, global0.a.b.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_1, 366f)))), ~(-2147483647i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-3956f, arg_0, _wgslsmith_div_f32(arg_0, 909f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-660f, global0.a.d.x, -475f)), ~global0.a.e >= var_0.x))), Struct_1(_wgslsmith_sub_vec2_u32(global0.a.a, _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_2, global0.a.c) | global0.a.b.yx, global0.a.b.wx << (vec2<u32>(arg_2, arg_2) % vec2<u32>(32u)), ~vec2<u32>(global0.a.a.x, 19546u))), select(global0.a.b, ~abs(global0.a.b), true == any(vec4<bool>(false, false, false, false))), global0.a.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.a.d.x, 1506f))) - vec2<f32>(arg_0, 146f))), ~(-(-30489i | global0.a.e))));
    var var_2 = Struct_4(_wgslsmith_clamp_vec2_i32(~_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(var_0.wy, var_0.xx), ~vec2<i32>(var_1.a.e, var_1.e.e)), vec2<i32>(~6143i, -1i), _wgslsmith_mod_vec2_i32(var_0.xy, vec2<i32>(47686i, _wgslsmith_sub_i32(2147483647i, 2147483647i)))), var_1.e, Struct_2(global0.a, var_1.b, global0.a, var_1.d, Struct_1((global0.a.b.xz >> (global0.a.b.zz % vec2<u32>(32u))) >> (var_1.a.a % vec2<u32>(32u)), max(vec4<u32>(49681u, var_1.a.a.x, 0u, global0.a.a.x), global0.a.b), reverseBits(arg_2), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a.d)), i32(-1i) * -var_1.c.e)), global0.a.b);
    var var_3 = ~(global0.a.a.x << (var_2.d.x % 32u));
    let var_4 = any(select(vec3<bool>(var_2.c.b.x | !var_2.c.b.x, false, any(var_1.b.wxz)), select(select(vec3<bool>(false, false, true), !var_2.c.b.wxw, true), select(vec3<bool>(false, var_2.c.b.x, true), vec3<bool>(false, true, false), all(vec3<bool>(false, var_2.c.b.x, true))), var_2.c.b.zwx), (-var_2.a.x >> (47647u % 32u)) >= countOneBits(_wgslsmith_div_i32(var_0.x, var_0.x))));
    return var_2.c.b.x;
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: Struct_4) -> vec4<bool> {
    let var_0 = Struct_1(arg_2.d.xz, _wgslsmith_add_vec4_u32(global0.a.b, (global0.a.b << (~global0.a.b % vec4<u32>(32u))) | (_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.c.b.x, arg_1, 11575u, global0.a.a.x), vec4<u32>(58534u, arg_2.b.a.x, 0u, arg_0.e.b.x), vec4<u32>(arg_1, 98302u, arg_2.d.x, 0u)) ^ vec4<u32>(global0.a.a.x, 3940u, arg_2.d.x, arg_2.c.a.c))), (4294967295u << ((_wgslsmith_mult_u32(13116u, 0u) << (1u % 32u)) % 32u)) & global0.a.b.x, arg_0.c.d, arg_0.a.e);
    let var_1 = arg_0.b.xz;
    let var_2 = arg_2.c;
    return vec4<bool>(false, var_2.b.x, func_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(506f * 618f), _wgslsmith_f_op_f32(ceil(-274f)), true)))), arg_0.a.d.x, firstTrailingBit(countOneBits(min(var_0.b.x, var_0.c)))), (arg_0.b.x && true) || !any(vec4<bool>(false, arg_2.c.b.x, true, false)));
}

fn func_2() -> bool {
    let var_0 = Struct_2(global0.a, func_4(Struct_2(Struct_1(vec2<u32>(global0.a.a.x, 4294967295u), max(vec4<u32>(global0.a.c, global0.a.c, global0.a.b.x, 37744u), global0.a.b), global0.a.a.x, _wgslsmith_f_op_vec2_f32(global0.a.d + vec2<f32>(global0.a.d.x, global0.a.d.x)), u_input.b), vec4<bool>(true, func_3(global0.a.d.x, -1000f, 17024u), true, true), Struct_1(vec2<u32>(global0.a.b.x, 22795u), vec4<u32>(0u, global0.a.a.x, global0.a.a.x, global0.a.a.x), 8060u, vec2<f32>(-483f, 748f), _wgslsmith_add_i32(u_input.a, global0.a.e)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-393f, global0.a.d.x, 553f) - vec3<f32>(global0.a.d.x, global0.a.d.x, -1237f)))), Struct_1(global0.a.a, reverseBits(vec4<u32>(global0.a.a.x, 90969u, global0.a.c, global0.a.c)), 0u, _wgslsmith_f_op_vec2_f32(sign(global0.a.d)), i32(-1i) * -9400i)), global0.a.b.x, Struct_4(reverseBits(min(vec2<i32>(0i, u_input.a), vec2<i32>(global0.a.e, 40267i))), Struct_1(global0.a.b.xw, ~vec4<u32>(21114u, 0u, global0.a.b.x, 4294967295u), 17695u, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1001f, global0.a.d.x), global0.a.d)), ~u_input.b), Struct_2(global0.a, select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false)), Struct_1(vec2<u32>(global0.a.b.x, global0.a.a.x), vec4<u32>(global0.a.b.x, 30101u, 1u, global0.a.a.x), 10577u, global0.a.d, 57761i), vec3<f32>(832f, global0.a.d.x, 1000f), global0.a), global0.a.b)), global0.a, vec3<f32>(_wgslsmith_f_op_f32(1655f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.a.d.x)))), _wgslsmith_f_op_f32(-global0.a.d.x), _wgslsmith_f_op_f32(ceil(1931f))), Struct_1(vec2<u32>(20269u, ~_wgslsmith_dot_vec4_u32(global0.a.b, vec4<u32>(0u, global0.a.c, 0u, 1u))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, 4425u, global0.a.c, global0.a.a.x), ~vec4<u32>(global0.a.a.x, 4294967295u, 20967u, global0.a.b.x) & ~global0.a.b, vec4<u32>(global0.a.c, global0.a.c, 0u, 1u) ^ ~global0.a.b), min(global0.a.c, global0.a.a.x ^ 1u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1080f, global0.a.d.x)))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.d.x, -557f) - global0.a.d), _wgslsmith_f_op_vec2_f32(global0.a.d - global0.a.d)))), max(global0.a.e, global0.a.e)));
    let var_1 = var_0;
    let var_2 = vec2<i32>(1i, 1i);
    return true;
}

fn func_1(arg_0: u32) -> f32 {
    var var_0 = all(!select(vec4<bool>(true, true, true, func_2()), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true)));
    var_0 = any(select(vec2<bool>(true, true), vec2<bool>(true, true), true && all(vec4<bool>(true, true, true, false)))) || false;
    var var_1 = vec4<bool>(all(func_4(Struct_2(Struct_1(vec2<u32>(arg_0, 34456u), global0.a.b, global0.a.a.x, vec2<f32>(-644f, -295f), global0.a.e), vec4<bool>(false, false, false, true), Struct_1(vec2<u32>(4294967295u, 1u), global0.a.b, 0u, global0.a.d, -14876i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-836f, global0.a.d.x, 661f)), global0.a), min(158907u, global0.a.a.x), Struct_4(vec2<i32>(-60025i, u_input.b) & vec2<i32>(u_input.b, u_input.a), Struct_1(vec2<u32>(4294967295u, global0.a.b.x), vec4<u32>(global0.a.c, 1u, 4294967295u, arg_0), 0u, vec2<f32>(global0.a.d.x, -123f), 26089i), Struct_2(Struct_1(vec2<u32>(53853u, 4294967295u), vec4<u32>(global0.a.b.x, global0.a.b.x, 1u, arg_0), 9596u, vec2<f32>(global0.a.d.x, global0.a.d.x), 0i), vec4<bool>(true, false, false, true), global0.a, vec3<f32>(-204f, 1115f, -812f), Struct_1(global0.a.b.wz, vec4<u32>(0u, 4294967295u, global0.a.a.x, 52571u), arg_0, global0.a.d, -2147483647i)), vec4<u32>(global0.a.c, arg_0, 4294967295u, 1039u))).yxx), func_2(), true, !select(any(vec2<bool>(false, false)), select(false, false, false) | false, false));
    var_1 = !vec4<bool>(!var_1.x, true && var_1.x, !func_2() || (var_1.x && false), var_1.x || var_1.x);
    let var_2 = -abs(reverseBits(2147483647i));
    return _wgslsmith_f_op_f32(1f * global0.a.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-211f + global0.a.d.x), _wgslsmith_f_op_f32(-1103f - global0.a.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.a.d.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(global0.a.a.x)) + _wgslsmith_f_op_f32(-global0.a.d.x)) - 466f)), global0.a.d.x);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.a.d.x))), _wgslsmith_f_op_f32(select(-1888f, global0.a.d.x, any(select(vec2<bool>(true, true), func_4(Struct_2(Struct_1(vec2<u32>(4294967295u, global0.a.a.x), vec4<u32>(global0.a.b.x, global0.a.a.x, 1u, 35405u), global0.a.c, var_0.xw, 13269i), vec4<bool>(false, true, true, false), global0.a, var_0.wxz, global0.a), global0.a.a.x, Struct_4(vec2<i32>(-23960i, -1i), global0.a, Struct_2(Struct_1(vec2<u32>(60329u, global0.a.c), vec4<u32>(global0.a.c, global0.a.b.x, global0.a.c, 18682u), 10552u, vec2<f32>(global0.a.d.x, global0.a.d.x), 9119i), vec4<bool>(true, true, true, false), Struct_1(vec2<u32>(global0.a.b.x, 47400u), global0.a.b, global0.a.c, vec2<f32>(var_0.x, var_0.x), -1i), vec3<f32>(var_0.x, global0.a.d.x, var_0.x), global0.a), vec4<u32>(global0.a.a.x, 4294967295u, 108177u, global0.a.c))).xz, global0.a.e >= u_input.a)))));
    var var_2 = global0.a.e;
    var var_3 = min(vec3<u32>(0u, ~max(4294967295u, 86783u), global0.a.a.x), _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(global0.a.b.yxx, vec3<u32>(4294967295u, global0.a.c, 14116u)), vec3<u32>(36168u, 0u, 4294967295u)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(13515u, 0u, 4069u), vec3<u32>(1u, global0.a.b.x, 35801u), global0.a.b.yyz))) | global0.a.b.wyx;
    let var_4 = _wgslsmith_clamp_u32(global0.a.b.x, var_3.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(69577u, 12087u, 4294967295u, 4294967295u), global0.a.b), var_3.x, var_3.x), vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(var_3.x, global0.a.c), ~0u), max(global0.a.b.x, global0.a.a.x), 0u)));
    var var_5 = !all(select(vec2<bool>(false, var_4 != var_3.x), vec2<bool>(true, true), false));
    var var_6 = Struct_5(Struct_1(_wgslsmith_sub_vec2_u32(~(~var_3.yx), var_3.zy), reverseBits(_wgslsmith_mod_vec4_u32(abs(global0.a.b), global0.a.b)), global0.a.b.x, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(var_0.wx * vec2<f32>(global0.a.d.x, global0.a.d.x)))), u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(8927u, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-503f, -1223f, var_0.x, -233f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.d.x, var_1.x, 456f, 1529f))) * vec4<f32>(_wgslsmith_f_op_f32(round(var_6.a.d.x)), global0.a.d.x, -106f, 292f)), true)), 1018f, ((6515u | var_4) >> (~var_4 % 32u)) | firstLeadingBit(4294967295u));
}

