struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: i32,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: vec2<f32>,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(2631i, 1i);

var<private> global1: vec2<u32> = vec2<u32>(4294967295u, 0u);

var<private> global2: Struct_1 = Struct_1(vec4<f32>(144f, 940f, 1452f, -1261f), vec4<bool>(false, true, false, false));

var<private> global3: i32 = -1498i;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> f32 {
    let var_0 = u_input.a.x;
    let var_1 = Struct_4(1294f, Struct_3(519i, max(1i, -25327i)), global2.a.xz, Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.x, global2.a.x, -1359f, 548f)), vec4<f32>(global2.a.x, 1906f, -1589f, global2.a.x))), !select(global2.b, global2.b, global2.b)), _wgslsmith_sub_vec2_i32(~(vec2<i32>(var_0, -26354i) | vec2<i32>(1i, 0i)), u_input.a.zy), vec2<bool>(false, all(!vec2<bool>(global2.b.x, false)))), _wgslsmith_f_op_f32(sign(global2.a.x)));
    global1 = _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_div_u32(1u, global1.x), global1.x), firstTrailingBit(~firstLeadingBit(~vec2<u32>(global1.x, global1.x))), _wgslsmith_add_vec2_u32(max(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, global1.x), ~vec2<u32>(global1.x, global1.x), vec2<u32>(0u, global1.x)), select(_wgslsmith_add_vec2_u32(vec2<u32>(13668u, global1.x), vec2<u32>(global1.x, 26307u)), countOneBits(vec2<u32>(global1.x, global1.x)), global2.b.yy)), ~select(vec2<u32>(global1.x, global1.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(global1.x, global1.x), vec2<u32>(3591u, global1.x), vec2<u32>(1u, 0u)), var_1.d.a.b.x | true)));
    global3 = ~_wgslsmith_mult_i32(_wgslsmith_mult_i32(firstLeadingBit(~var_0), global0.x), -7774i);
    let var_2 = var_1;
    return -472f;
}

fn func_2() -> Struct_2 {
    let var_0 = -247f;
    global2 = Struct_1(vec4<f32>(_wgslsmith_div_f32(191f, var_0), var_0, _wgslsmith_f_op_f32(-295f * -1329f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.x * global2.a.x)), _wgslsmith_f_op_f32(-global2.a.x)))), !global2.b);
    global0 = vec2<i32>(~global0.x, _wgslsmith_div_i32(_wgslsmith_sub_i32(min(_wgslsmith_dot_vec3_i32(u_input.a.www, vec3<i32>(2147483647i, -1i, u_input.a.x)), -1773i & u_input.a.x), abs(-16782i)), u_input.a.x));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(func_3()), Struct_3(-47085i, 43543i), global2.a.wx, Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, global2.a.x, 653f) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(536f, -1000f, var_0, 588f), global2.a))), !select(global2.b, global2.b, false)), _wgslsmith_clamp_vec2_i32(u_input.a.yy, abs(u_input.a.zx), vec2<i32>(-1i, _wgslsmith_add_i32(-1i, u_input.a.x))), vec2<bool>((global0.x ^ 0i) <= 1i, global2.b.x)), global2.a.x);
    var var_2 = var_1.d;
    return var_1.d;
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> u32 {
    var var_0 = 1u;
    let var_1 = Struct_2(func_2().a, ~vec2<i32>(abs(arg_0.b.x), 67635i), select(vec2<bool>(true, !(arg_0.c.x && arg_1)), select(select(global2.b.yx, vec2<bool>(false, arg_0.a.b.x), global2.b.x), !vec2<bool>(true, arg_1), !select(vec2<bool>(true, false), global2.b.xy, global2.b.yy)), select(vec2<bool>(true, global2.b.x), select(!vec2<bool>(false, global2.b.x), !vec2<bool>(global2.b.x, false), func_2().c), any(vec4<bool>(false, false, arg_1, false)))));
    global2 = arg_0.a;
    var var_2 = Struct_3(u_input.a.x, arg_0.b.x);
    var var_3 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1421f)))), Struct_3(u_input.a.x, _wgslsmith_add_i32(-2147483647i, max(var_2.a, arg_0.b.x))), vec2<f32>(919f, arg_0.a.a.x), Struct_2(func_2().a, abs(var_1.b), func_2().a.b.ww), global2.a.x);
    return global1.x;
}

fn func_5(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_1) -> Struct_2 {
    let var_0 = Struct_4(787f, Struct_3(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i | u_input.a.x, _wgslsmith_mult_i32(u_input.a.x, -1i), abs(arg_0), _wgslsmith_mult_i32(-17163i, 1i)), -reverseBits(vec4<i32>(u_input.a.x, -15912i, arg_0, -2147483647i))), ~_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.a.yyx, vec3<i32>(-5792i, u_input.a.x, -2147483647i), vec3<i32>(31413i, global0.x, -1119i)), vec3<i32>(-11630i, -2147483647i, u_input.a.x))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-422f, 828f)) - vec2<f32>(_wgslsmith_f_op_f32(abs(-914f)), 1195f)))), func_2(), _wgslsmith_f_op_f32(arg_2.a.x + func_2().a.a.x));
    var var_1 = _wgslsmith_add_i32(global0.x, _wgslsmith_sub_i32(var_0.d.b.x, -1i));
    var_1 = abs(_wgslsmith_dot_vec3_i32(u_input.a.zyz, ~u_input.a.yxx));
    global0 = vec2<i32>(-(~0i), -1i);
    var var_2 = _wgslsmith_f_op_vec3_f32(select(global2.a.wxz, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-892f, _wgslsmith_f_op_f32(var_0.a * var_0.a), -1228f))) * vec3<f32>(_wgslsmith_div_f32(global2.a.x, 616f), func_2().a.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-811f, var_0.c.x, global2.b.x)))))), vec3<bool>(false, !(!var_0.d.c.x), true)));
    return Struct_2(func_2().a, _wgslsmith_sub_vec2_i32(min(_wgslsmith_div_vec2_i32(vec2<i32>(1i, u_input.a.x), vec2<i32>(-4812i, arg_0)), firstLeadingBit(vec2<i32>(arg_0, arg_0))), u_input.a.wz), vec2<bool>(var_0.d.a.b.x, all(select(func_2().a.b.wwx, !vec3<bool>(var_0.d.a.b.x, var_0.d.a.b.x, true), any(global2.b.zwz)))));
}

fn func_1(arg_0: u32, arg_1: bool) -> i32 {
    var var_0 = false;
    var var_1 = vec2<u32>(global1.x, ~global1.x);
    var var_2 = func_5(~(-u_input.a.x), select(vec2<u32>(0u | var_1.x, _wgslsmith_div_u32(arg_0, 0u)), vec2<u32>(abs(1u), ~0u), true) >> (vec2<u32>(func_4(func_2(), arg_1), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(20160u, arg_0, 0u), vec3<u32>(var_1.x, 6367u, arg_0)), ~global1.x)) % vec2<u32>(32u)), Struct_1(global2.a, !vec4<bool>(all(global2.b), any(global2.b.xz), arg_1 | arg_1, global2.b.x)));
    global1 = _wgslsmith_mod_vec2_u32(reverseBits(reverseBits(~_wgslsmith_mod_vec2_u32(vec2<u32>(global1.x, global1.x), vec2<u32>(global1.x, arg_0)))), ~_wgslsmith_div_vec2_u32(vec2<u32>(~40673u, arg_0), ~(~vec2<u32>(0u, 50624u))));
    global0 = _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(abs(~u_input.a.xw) >> (vec2<u32>(global1.x, ~0u) % vec2<u32>(32u)), ~abs(-vec2<i32>(global0.x, 14308i))), firstTrailingBit(abs(var_2.b)));
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.a.wz, vec2<i32>(1i, countOneBits(-40155i) >> (~global1.x % 32u)), vec2<i32>(func_1(19874u, true) >> (31129u % 32u), 2147483647i)), u_input.a.zw, ~vec2<i32>(2147483647i, firstTrailingBit(global0.x)));
    var var_0 = func_2().b.x;
    let var_1 = global2.b.x;
    let var_2 = Struct_4(-872f, Struct_3(~countOneBits(_wgslsmith_sub_i32(global0.x, -20800i)), 1i), global2.a.zz, func_2(), 1543f);
    global1 = ~vec2<u32>(firstLeadingBit(41231u), _wgslsmith_div_u32(4294967295u, global1.x));
    global1 = vec2<u32>(4294967295u, global1.x);
    var_0 = -var_2.d.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_mod_vec3_i32(~u_input.a.zxw, select(u_input.a.wxw, vec3<i32>(-3886i, var_2.b.b, 0i), global2.b.wzw)), abs(u_input.a.wzx), !func_5(2147483647i, vec2<u32>(11045u, global1.x), var_2.d.a).a.b.ywz) | _wgslsmith_sub_vec3_i32(u_input.a.wxx, vec3<i32>(~72583i, _wgslsmith_mult_i32(u_input.a.x, 2147483647i), _wgslsmith_add_i32(var_2.b.a, u_input.a.x))), var_2.d.a.a.xzx);
}

