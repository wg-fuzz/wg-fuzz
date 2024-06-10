struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: Struct_2;

var<private> global2: Struct_1;

var<private> global3: f32 = -2669f;

var<private> global4: array<vec4<u32>, 31>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(global1.a.x, 2147483647i, 13266i, 5674i) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(global1.a.x, -34478i, global1.a.x, global1.a.x) << (vec4<u32>(0u, global1.c.b.x, 1u, global2.b.x) % vec4<u32>(32u)), max(global1.a, vec4<i32>(global1.a.x, 1i, global1.a.x, global1.a.x))), (global1.a & _wgslsmith_div_vec4_i32(global1.a, vec4<i32>(0i, 0i, -15066i, global1.a.x))) & (-global1.a | _wgslsmith_clamp_vec4_i32(vec4<i32>(global1.a.x, -4837i, 16821i, global1.a.x), vec4<i32>(global1.a.x, global1.a.x, global1.a.x, global1.a.x), vec4<i32>(global1.a.x, -9152i, global1.a.x, 32524i)))), ~(firstLeadingBit(global1.a) | (global1.a ^ global1.a)) & firstLeadingBit(~vec4<i32>(-1i, global1.a.x, global1.a.x, global1.a.x) & _wgslsmith_add_vec4_i32(global1.a, global1.a)));
    let var_1 = select(vec2<bool>(false, false), vec2<bool>(all(global1.c.a), global2.a.x), select(select(vec2<bool>(true, false && global1.b.a.x), !select(vec2<bool>(true, global2.a.x), vec2<bool>(global1.b.a.x, false), global0.xy), true), vec2<bool>(!select(global2.a.x, false, global2.a.x), true), false));
    global1 = Struct_2(~min(-var_0, global1.a), Struct_1(!(!select(global2.a, global1.b.a, true)), abs(vec2<u32>(19652u, _wgslsmith_mult_u32(u_input.a.x, 5128u)))), Struct_1(vec2<bool>(false, global1.c.a.x), ~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, global1.b.b.x), ~vec2<u32>(12185u, global2.b.x))));
    global0 = vec3<bool>(_wgslsmith_f_op_f32(floor(-1384f)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1856f) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-193f)), -1000f))), all(select(global1.b.a, var_1, !(false | global2.a.x))), !global1.b.a.x);
    var var_2 = Struct_2(_wgslsmith_div_vec4_i32(vec4<i32>(abs(-27722i), var_0.x, abs(var_0.x), -21845i), vec4<i32>(_wgslsmith_div_i32(-50679i, global1.a.x), ~_wgslsmith_dot_vec3_i32(global1.a.zxx, var_0.zzy), (global1.a.x & global1.a.x) & countOneBits(global1.a.x), i32(-1i) * -global1.a.x)), Struct_1(vec2<bool>(any(vec4<bool>(false, false, var_1.x, true)) == global0.x, false), ~((vec2<u32>(global2.b.x, global1.b.b.x) | vec2<u32>(0u, u_input.a.x)) & ~vec2<u32>(global1.c.b.x, 4294967295u))), Struct_1(select(!global1.c.a, !var_1, global2.a.x), ~_wgslsmith_div_vec2_u32(global1.c.b, vec2<u32>(4294967295u, global1.c.b.x))));
    return 4885u;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: i32, arg_3: vec3<i32>) -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_sub_vec4_i32(~max(global1.a << (global4[_wgslsmith_index_u32(global1.c.b.x, 31u)] % vec4<u32>(32u)), ~vec4<i32>(global1.a.x, arg_2, global1.a.x, -2147483647i)), ~(~min(global1.a, vec4<i32>(global1.a.x, 19079i, arg_2, 2147483647i)))), global1.b, arg_1);
    var var_1 = Struct_2(vec4<i32>(_wgslsmith_div_i32(var_0.a.x, 23089i & arg_2), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(~var_0.a.wyx, reverseBits(var_0.a.xzz)), global1.a.x), ~var_0.a.x, 4564i << (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global2.b.x, global2.b.x, var_0.b.b.x), vec4<u32>(u_input.a.x, arg_1.b.x, 62061u, 0u) ^ global4[_wgslsmith_index_u32(var_0.c.b.x, 31u)]) % 32u)), var_0.c, Struct_1(select(global2.a, !vec2<bool>(arg_1.a.x, arg_1.a.x), global0.x), vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(1869u, global1.c.b.x), ~var_0.c.b), var_0.c.b.x)));
    let var_2 = global1.b;
    var var_3 = _wgslsmith_div_u32(~_wgslsmith_mult_u32(select(func_3(), 75866u, true), 1u), abs(var_2.b.x));
    var var_4 = Struct_2(vec4<i32>(_wgslsmith_clamp_i32(arg_3.x, 57164i, -2147483647i), abs(1i), _wgslsmith_dot_vec3_i32(-vec3<i32>(var_1.a.x, -7158i, -3137i), var_1.a.zzz), -2147483647i), arg_1, Struct_1(var_1.b.a, vec2<u32>(52818u, 1u)));
    return Struct_2(var_4.a, arg_1, global1.c);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: f32, arg_3: i32) -> vec2<i32> {
    var var_0 = ~(~(~abs(vec4<u32>(global1.b.b.x, arg_1.c.b.x, global1.b.b.x, 18159u))));
    global4 = array<vec4<u32>, 31>();
    global1 = Struct_2(vec4<i32>(_wgslsmith_div_i32(-arg_3, ~arg_3), firstTrailingBit(min(2147483647i, 0i)), 1i, -2147483647i) ^ global1.a, arg_1.b, arg_1.b);
    var var_1 = Struct_2(~_wgslsmith_add_vec4_i32(vec4<i32>(arg_3, 1i, -25355i, ~(-1i)), vec4<i32>(0i, -8580i, abs(-7797i), ~(-2147483647i))), global1.b, arg_1.b);
    let var_2 = arg_1;
    return ~vec2<i32>(_wgslsmith_mod_i32(-65334i, _wgslsmith_mod_i32(global1.a.x, global1.a.x) & reverseBits(arg_3)), _wgslsmith_dot_vec4_i32(~(~arg_1.a), -(var_2.a | var_1.a)));
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = -477f;
    var var_1 = _wgslsmith_mult_i32(countOneBits(-54533i), _wgslsmith_dot_vec2_i32(func_4(!select(vec3<bool>(global2.a.x, global1.c.a.x, true), vec3<bool>(false, global1.c.a.x, global0.x), vec3<bool>(true, global0.x, true)), func_2(global2.a, Struct_1(global1.b.a, vec2<u32>(11507u, 0u)), ~global1.a.x, global1.a.zyw << (u_input.a % vec3<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1072f + 639f) - _wgslsmith_f_op_f32(-828f + -287f)), global1.a.x), vec2<i32>(-1i, select(global1.a.x, _wgslsmith_div_i32(20716i, 62272i), global2.a.x))));
    let var_2 = ~vec2<i32>(global1.a.x, 2147483647i);
    global0 = !(!select(vec3<bool>(true, true, any(vec3<bool>(global0.x, true, false))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, global1.b.a.x, false), vec3<bool>(global2.a.x, false, false), true), !vec3<bool>(false, global1.c.a.x, false)), vec3<bool>(global2.a.x || global2.a.x, true | global2.a.x, global2.a.x)));
    return func_2(func_2(vec2<bool>(any(!vec3<bool>(global1.b.a.x, true, false)), any(select(vec3<bool>(global0.x, true, true), vec3<bool>(true, global0.x, true), true))), global1.c, 1i, -func_2(vec2<bool>(false, true), func_2(global2.a, global1.b, 0i, vec3<i32>(var_2.x, 2147483647i, 2147483647i)).c, ~global1.a.x, global1.a.zzx).a.yxx).c.a, func_2(select(global0.zx, !(!global2.a), 26023u != _wgslsmith_sub_u32(u_input.a.x, u_input.a.x)), global1.b, i32(-1i) * -2147483647i, global1.a.xyy).c, -2147483647i, vec3<i32>(-7828i, var_2.x, firstLeadingBit(var_2.x))).b;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(global1.b.b.x);
    var var_0 = -countOneBits(~firstTrailingBit(vec2<i32>(global1.a.x, global1.a.x)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-992f)));
    var var_2 = vec2<f32>(var_1, _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(step(var_1, 1000f)))));
    global1 = func_2(global2.a, global1.c, -2147483647i & global1.a.x, _wgslsmith_mult_vec3_i32(select(_wgslsmith_sub_vec3_i32(vec3<i32>(global1.a.x, 0i, -2147483647i), global1.a.zyz), _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, 1i, -7386i), global1.a.wzx, vec3<i32>(var_0.x, -22105i, -2147483647i)), true) | abs(_wgslsmith_div_vec3_i32(global1.a.ywx, vec3<i32>(-2147483647i, -8722i, 48389i))), vec3<i32>(2147483647i, global1.a.x, var_0.x)));
    global4 = array<vec4<u32>, 31>();
    var var_3 = Struct_1(select(select(global2.a, vec2<bool>(true, true), all(vec2<bool>(global0.x, true))), vec2<bool>(global0.x, true), func_2(vec2<bool>(global1.c.a.x, global2.a.x), Struct_1(global2.a, abs(vec2<u32>(3567u, 12053u))), var_0.x, _wgslsmith_clamp_vec3_i32(func_2(global2.a, global1.b, -19812i, vec3<i32>(-2147483647i, 1i, var_0.x)).a.yyx, _wgslsmith_mod_vec3_i32(vec3<i32>(global1.a.x, -19422i, -42665i), vec3<i32>(0i, global1.a.x, 34200i)), global1.a.zwy)).b.a), ~vec2<u32>(global1.c.b.x, 21571u));
    var var_4 = Struct_1(func_1(55792u).a, abs(vec2<u32>(u_input.a.x, ~global2.b.x) << (vec2<u32>(26502u, min(0u, global2.b.x)) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(global1.a.x, -2147483647i) ^ vec2<i32>(-2147483647i, var_0.x), global1.a.xw >> (var_4.b % vec2<u32>(32u))), global1.a.yz, select(vec2<i32>(var_0.x, -2147483647i) << (global2.b % vec2<u32>(32u)), ~global1.a.yx, !var_4.a))), ~(~0u), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1310f, 273f, var_2.x))), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(188f, 1083f), -650f)), -1000f, _wgslsmith_f_op_f32(-var_1)))));
}

