struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_3;

var<private> global2: vec4<u32> = vec4<u32>(89759u, 0u, 4733u, 0u);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> vec3<f32> {
    let var_0 = Struct_1(u_input.a.zz, ~1u, reverseBits(~(~abs(17124i))), arg_0.d, -arg_0.e);
    var var_1 = Struct_3(global1.a, vec4<bool>(!(!(!global1.a.c)), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-275f, arg_0.d))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-650f)) + _wgslsmith_f_op_f32(global0.a.a.d + 617f)), global1.b.x), Struct_2(Struct_1(_wgslsmith_clamp_vec2_u32(u_input.a.zx, vec2<u32>(19383u, 0u), ~u_input.a.zy), ~firstTrailingBit(global2.x), -4450i, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(395f + global0.a.a.d))), 16836i), (-global0.a.b >> (55714u % 32u)) & -(~global0.c.b), any(select(global0.b, select(vec4<bool>(global1.a.c, global1.b.x, false, global1.a.c), vec4<bool>(false, true, false, global0.a.c), vec4<bool>(true, false, true, false)), global1.a.c))));
    let var_2 = -(firstLeadingBit(vec3<i32>(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(7620i, -2147483647i), vec2<i32>(0i, global1.a.a.e)), ~1i)) >> (global2.xzz % vec3<u32>(32u)));
    let var_3 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(global0.a.a.d, -153f, global1.a.a.d), vec3<f32>(var_1.c.a.d, -200f, var_0.d)), vec3<f32>(1000f, global1.a.a.d, var_0.d))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.a.d, global1.c.a.d, var_1.c.a.d)))))));
    var var_4 = Struct_1(var_1.c.a.a, global1.a.a.b, ~var_0.e, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.a.d) * _wgslsmith_f_op_f32(f32(-1f) * -943f)), _wgslsmith_f_op_f32(-arg_0.d)), global1.a.b);
    return vec3<f32>(_wgslsmith_f_op_f32(-global1.a.a.d), -365f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1f, var_3.x), _wgslsmith_f_op_f32(-242f - var_1.c.a.d))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2) -> vec3<f32> {
    global2 = ~select(firstTrailingBit(vec4<u32>(global0.c.a.b, ~global1.a.a.b, _wgslsmith_clamp_u32(global0.c.a.a.x, 4294967295u, u_input.b), u_input.b)), ~(firstTrailingBit(vec4<u32>(global0.a.a.a.x, 0u, 0u, global0.c.a.b)) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(global1.c.a.b, global1.a.a.a.x, 64364u, 4294967295u), vec4<u32>(78347u, u_input.c, global0.a.a.a.x, 65875u)) % vec4<u32>(32u))), any(vec2<bool>(false & arg_1.c, true)));
    var var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-arg_0.zz)));
    global1 = Struct_3(Struct_2(global0.c.a, select(45167i, global1.c.b, global1.b.x) >> (global2.x % 32u), true), global1.b, global1.c);
    var var_1 = ~vec4<u32>(firstLeadingBit(_wgslsmith_mod_u32(u_input.a.x, 1u) << ((0u & global1.c.a.b) % 32u)), reverseBits(global0.a.a.b), (32283u ^ select(0u, global0.c.a.a.x, false)) << (global0.a.a.a.x % 32u), ~(~(~82165u)));
    let var_2 = global1.a.a;
    return arg_0;
}

fn func_2(arg_0: Struct_3, arg_1: i32, arg_2: Struct_1) -> u32 {
    let var_0 = !any(!vec4<bool>(select(false, arg_0.b.x, false), global0.a.c, arg_0.b.x, global1.c.c));
    let var_1 = -(~(~vec3<i32>(-52507i, -arg_2.c, abs(global0.a.a.e))));
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(global0.c.a.a, ~global2.x, 1i, _wgslsmith_f_op_f32(-arg_2.d), select(-43127i, -1i, true)))), global0.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.a.d, -260f, global0.a.a.d)))))));
    let var_3 = arg_0;
    global1 = Struct_3(Struct_2(Struct_1(global1.a.a.a, _wgslsmith_mod_u32(7693u ^ var_3.c.a.b, var_3.c.a.b ^ 4294967295u), 1i, 534f, _wgslsmith_mult_i32(-1i, -2147483647i) >> (_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(0u, 4294967295u, global2.x)) % 32u)), ~_wgslsmith_mod_i32(-global0.a.b, _wgslsmith_add_i32(-1i, 50550i)), arg_0.c.c), arg_0.b, Struct_2(Struct_1(max(_wgslsmith_mod_vec2_u32(arg_2.a, vec2<u32>(1u, global1.a.a.b)), vec2<u32>(0u, arg_0.c.a.b)), var_3.c.a.b, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, global1.c.b, arg_1), var_1), _wgslsmith_f_op_f32(abs(1412f)), firstTrailingBit(_wgslsmith_mod_i32(-1i, -12198i))), -2147483647i, true));
    return global1.a.a.a.x;
}

fn func_1(arg_0: f32, arg_1: i32) -> Struct_2 {
    var var_0 = _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, ~global0.a.a.b, u_input.a.x), vec3<u32>(~_wgslsmith_add_u32(0u, func_2(Struct_3(Struct_2(global1.c.a, -2147483647i, global0.b.x), global0.b, global1.c), global1.a.b, Struct_1(vec2<u32>(4294967295u, global0.c.a.b), u_input.b, global0.a.b, global1.a.a.d, global0.c.a.c))), global2.x, _wgslsmith_clamp_u32(max(42765u, global1.a.a.b) & global0.c.a.b, 4294967295u, 1u)));
    let var_1 = abs(global0.c.a.a.x);
    global1 = Struct_3(Struct_2(Struct_1(~(~var_0.xz), global1.c.a.a.x, global0.a.b, _wgslsmith_f_op_f32(ceil(586f)), ~global1.c.a.c), _wgslsmith_div_i32(1i ^ firstTrailingBit(global0.a.b), 18491i), global1.b.x), vec4<bool>(all(vec3<bool>(all(global0.b.xw), true, false)), max(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(u_input.b, global0.a.a.a.x, u_input.b)), 4294967295u) >= global1.c.a.a.x, !global0.c.c, true), global0.a);
    global2 = select(~vec4<u32>(1u, 4294967295u, u_input.b, 18648u) << (_wgslsmith_mult_vec4_u32(~vec4<u32>(var_0.x, 49130u, global2.x, 21086u), vec4<u32>(u_input.c, global2.x, 0u, global1.a.a.a.x)) % vec4<u32>(32u)), vec4<u32>(4294967295u, _wgslsmith_mod_u32(~var_1, ~global0.c.a.b), 23950u, ~func_2(Struct_3(global1.a, global0.b, Struct_2(global0.c.a, global1.a.b, true)), global1.a.b, global0.c.a)), any(global1.b.yy)) ^ abs(_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, var_0.x, 4294967295u, var_1), vec4<u32>(global2.x, 42415u, var_0.x, 61049u), vec4<u32>(88732u, u_input.c, global2.x, var_0.x)), abs(vec4<u32>(0u, 0u, 0u, 12896u))) & ~vec4<u32>(15019u, 1u, 1u, 18568u));
    var var_2 = vec3<bool>(!global1.b.x, global0.c.c || !any(global1.b), true);
    return Struct_2(Struct_1(_wgslsmith_sub_vec2_u32(global2.xz, vec2<u32>(~0u, firstLeadingBit(var_1))), select(countOneBits(var_0.x), firstLeadingBit(16122u), var_2.x), i32(-1i) * -(0i << (var_0.x % 32u)), global1.c.a.d, arg_1), global1.c.a.e << (~108256u % 32u), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(abs(_wgslsmith_clamp_vec2_u32(global1.c.a.a, vec2<u32>(global0.a.a.a.x << (global0.c.a.a.x % 32u), global0.c.a.b), global2.zz)), 33343u, global0.c.b, global0.c.a.d, ~reverseBits(_wgslsmith_mod_i32(-2147483647i, 29928i)));
    var var_1 = Struct_3(Struct_2(global0.c.a, 0i, all(global1.b)), select(vec4<bool>(!global1.c.c, any(global0.b), false, true), vec4<bool>(global1.b.x, !global1.a.c, global1.b.x, true), !(!(!global1.b))), func_1(_wgslsmith_f_op_f32(min(global1.c.a.d, 831f)), ~(~23264i)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, -233f, 192f));
    global0 = Struct_3(func_1(var_0.d, firstTrailingBit(_wgslsmith_dot_vec3_i32(select(vec3<i32>(var_0.e, -53946i, -17352i), vec3<i32>(2147483647i, -1i, global0.c.a.e), global0.b.yzz), abs(vec3<i32>(1i, var_0.c, global0.a.b))))), vec4<bool>(global0.b.x, any(var_1.b), global1.b.x, true), global1.a);
    let var_3 = ~reverseBits(select(-vec4<i32>(-27696i, -1i, 0i, var_1.a.a.e), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 23138i, 2147483647i, var_1.c.a.c), vec4<i32>(var_0.e, 1i, var_0.e, var_1.a.b)), vec4<bool>(true, false, true, true)) >> (~_wgslsmith_div_vec4_u32(vec4<u32>(var_1.c.a.a.x, 58052u, global2.x, global2.x), vec4<u32>(0u, global2.x, 20247u, 0u)) % vec4<u32>(32u)));
    var var_4 = global0.c;
    let x = u_input.a;
    s_output = StorageBuffer(global1.a.a.b, ~_wgslsmith_dot_vec4_i32(~var_3, _wgslsmith_add_vec4_i32(vec4<i32>(57535i, var_3.x, -9201i, var_1.c.b), var_3)) | global1.a.a.c, _wgslsmith_f_op_vec3_f32(func_3(var_1.c.a)).x, var_3);
}

