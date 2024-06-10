struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec3<f32>,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(1u, 5881u, 0u);

var<private> global1: i32 = 0i;

var<private> global2: i32;

var<private> global3: array<vec4<i32>, 29>;

var<private> global4: vec3<i32>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<f32>) -> vec2<f32> {
    let var_0 = Struct_5(vec4<i32>(0i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(global4.x, 37016i, -12094i)), u_input.a.xxz), _wgslsmith_sub_i32(u_input.a.x, _wgslsmith_clamp_i32(-52176i, -1i, 8310i)), u_input.d), -u_input.a.x, -global4.x), ~32035u ^ _wgslsmith_add_u32(~1u, ~_wgslsmith_mod_u32(u_input.c.x, u_input.c.x)));
    var var_1 = _wgslsmith_dot_vec4_i32(~u_input.a, _wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -u_input.b, select(~_wgslsmith_mult_vec4_i32(global3[_wgslsmith_index_u32(global0.x, 29u)], vec4<i32>(u_input.b.x, u_input.e, -39500i, 16810i)), vec4<i32>(4721i << (global0.x % 32u), global4.x, reverseBits(u_input.b.x), reverseBits(global4.x)), all(vec4<bool>(true, true, true, true)))));
    let var_2 = 1i;
    let var_3 = Struct_5(var_0.a, _wgslsmith_mult_u32(global0.x, ~var_0.b));
    var var_4 = (u_input.c.ww >> (select(firstTrailingBit(min(vec2<u32>(1u, var_0.b), vec2<u32>(global0.x, var_3.b))), vec2<u32>(~8210u, var_0.b), vec2<bool>(true, var_3.b <= 1u)) % vec2<u32>(32u))) & vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(53799u, 61460u) | global0.xz, firstLeadingBit(u_input.c.zy)), ~34778u);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, arg_0.x)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0.x, arg_0.x))) + vec2<f32>(arg_0.x, 606f))))));
}

fn func_2(arg_0: bool) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(func_3(vec4<f32>(1285f, -2284f, 470f, 1952f))), vec2<f32>(2349f, 877f))))) * vec2<f32>(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(394f, -867f, -1160f, -1668f))), vec4<f32>(574f, 2061f, -476f, -1000f)))).x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-592f + 557f))), -1714f)));
    global1 = -1i;
    global0 = ~firstLeadingBit(~vec3<u32>(u_input.c.x, global0.x, 21283u)) ^ vec3<u32>(2853u << (u_input.c.x % 32u), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(u_input.c, u_input.c) >> (~global0.x % 32u), ~_wgslsmith_add_u32(u_input.c.x, 1u)), 8764u);
    return Struct_3(Struct_2(4294967295u, (global0.x <= ~u_input.c.x) & true, Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, var_0.x, 2110f), vec3<f32>(var_0.x, -977f, -951f)), vec3<f32>(var_0.x, var_0.x, -1339f)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-3097i, 2147483647i) | global4.xy, ~u_input.a.zz, max(vec2<i32>(0i, 8703i), u_input.b.yx)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(242f, var_0.x, var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-724f, -2076f))), !vec3<bool>(arg_0, true, arg_0), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -400f, -116f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(956f, var_0.x, -622f))), _wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.b.yy, global4.yy, u_input.b.zz), vec2<i32>(1i, u_input.b.x), global4.xz), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -3113f))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.x, -278f, var_0.x))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.x, var_0.x, -1000f))), vec3<f32>(var_0.x, -1133f, var_0.x)))), vec2<i32>(min(0i, 2147483647i), _wgslsmith_dot_vec4_i32(max(vec4<i32>(13605i, u_input.e, global4.x, -30272i), vec4<i32>(-1i, 2147483647i, global4.x, u_input.a.x)), vec4<i32>(1i, -1i, global4.x, -45408i))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), 1f, var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_div_vec3_u32(vec3<u32>(0u, ~16174u, global0.x), u_input.c.xyw) | ~(~_wgslsmith_clamp_vec3_u32(u_input.c.xyw, u_input.c.yyy, u_input.c.wyz)));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: vec2<bool>) -> Struct_3 {
    global1 = (countOneBits(global4.x) ^ 5406i) << (u_input.c.x % 32u);
    var var_0 = select(arg_0.c.xz & ~(~abs(arg_0.c.yx)), global0.yz, any(vec3<bool>(any(vec4<bool>(false, false, false, false)), !arg_1.x, _wgslsmith_f_op_f32(trunc(2262f)) >= _wgslsmith_f_op_f32(abs(-829f)))));
    global2 = -2147483647i;
    let var_1 = _wgslsmith_clamp_i32(_wgslsmith_div_i32(global4.x >> (30055u % 32u), -(3134i | u_input.e)), _wgslsmith_mod_i32(abs(12710i ^ arg_0.a.e.b.x), ~arg_0.a.e.b.x), 2147483647i);
    var var_2 = Struct_4(firstTrailingBit(1u));
    return func_2(arg_0.a.b);
}

fn func_5(arg_0: vec3<i32>, arg_1: bool, arg_2: i32, arg_3: Struct_3) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.a.e.c.x, -1000f, arg_3.b.a.x, arg_3.b.d)))).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1071f) - _wgslsmith_f_op_f32(f32(-1f) * -443f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.a.c.a.x, -695f, -683f, 701f)))).x, arg_3.b.c.x)))));
    global0 = ~vec3<u32>(0u, 4294967295u << (u_input.c.x % 32u), reverseBits(_wgslsmith_mult_u32(16558u, 8105u & u_input.c.x)));
    let var_1 = _wgslsmith_mult_i32(_wgslsmith_div_i32(max(u_input.d, 0i) << (~global0.x % 32u), abs(func_2(arg_3.a.d.x).b.b.x)), -31768i) << (_wgslsmith_div_u32(firstLeadingBit(~(~25379u)), global0.x) % 32u);
    global2 = firstLeadingBit(_wgslsmith_dot_vec3_i32(arg_0, -vec3<i32>(arg_2, arg_3.a.e.b.x, arg_0.x)));
    let var_2 = arg_3.a.d.x;
    return select(select(select(!vec4<bool>(true, true, arg_1, arg_3.a.b), vec4<bool>(var_2 || true, true, true, any(vec3<bool>(var_2, var_2, false))), vec4<bool>(any(arg_3.a.d), arg_1, any(vec4<bool>(arg_1, var_2, true, var_2)), true)), vec4<bool>(arg_1, func_4(Struct_3(Struct_2(global0.x, var_2, Struct_1(vec3<f32>(arg_3.a.e.d, var_0, arg_3.a.c.c.x), vec2<i32>(40595i, -78066i), arg_3.b.c, 568f), arg_3.a.d, Struct_1(arg_3.b.a, vec2<i32>(u_input.e, arg_2), arg_3.b.a, arg_3.b.a.x)), Struct_1(arg_3.a.c.c, vec2<i32>(arg_0.x, 62818i), arg_3.b.c, arg_3.a.e.a.x), arg_3.c), select(arg_3.a.d.zz, arg_3.a.d.xx, true), !arg_3.a.d.zz).a.d.x, arg_3.a.b, func_2(false).a.d.x), (arg_1 | any(vec4<bool>(true, var_2, true, true))) | arg_1), select(select(!(!vec4<bool>(arg_3.a.d.x, arg_3.a.d.x, false, false)), !vec4<bool>(arg_1, arg_1, var_2, var_2), !select(vec4<bool>(arg_3.a.d.x, false, var_2, arg_3.a.b), vec4<bool>(false, arg_3.a.b, arg_3.a.b, true), arg_3.a.b)), select(vec4<bool>(var_2 & var_2, func_2(false).a.d.x, true, false), select(vec4<bool>(false, arg_3.a.d.x, false, true), !vec4<bool>(false, true, arg_1, false), !vec4<bool>(arg_3.a.d.x, arg_3.a.d.x, arg_1, arg_1)), true), false), vec4<bool>(_wgslsmith_dot_vec4_i32(-global3[_wgslsmith_index_u32(u_input.c.x, 29u)], ~u_input.b) == (_wgslsmith_div_i32(u_input.d, 28639i) & 0i), arg_3.a.b, true, all(select(arg_3.a.d.yx, !vec2<bool>(var_2, true), 1541f < var_0))));
}

fn func_6(arg_0: u32, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = true;
    let var_1 = Struct_5(global3[_wgslsmith_index_u32(global0.x, 29u)], ~(~global0.x));
    var var_2 = arg_1.ww;
    let var_3 = 1215f;
    global0 = func_4(Struct_3(Struct_2(1u, true, Struct_1(vec3<f32>(-1000f, var_3, 1000f), reverseBits(global4.yz), vec3<f32>(-881f, 1049f, -2040f), _wgslsmith_f_op_f32(abs(var_3))), vec3<bool>(func_5(var_1.a.xzx, var_0, u_input.d, Struct_3(Struct_2(4294967295u, var_2.x, Struct_1(vec3<f32>(1000f, var_3, -546f), vec2<i32>(var_1.a.x, -2147483647i), vec3<f32>(-763f, var_3, var_3), -1187f), vec3<bool>(arg_1.x, true, var_0), Struct_1(vec3<f32>(1000f, var_3, -634f), vec2<i32>(-23123i, var_1.a.x), vec3<f32>(var_3, 1000f, -681f), 549f)), Struct_1(vec3<f32>(var_3, var_3, -760f), var_1.a.ww, vec3<f32>(1663f, 255f, 1000f), 959f), u_input.c.xxx)).x, arg_1.x == var_0, !arg_1.x), func_2(!arg_1.x).a.c), func_4(Struct_3(Struct_2(36155u, false, Struct_1(vec3<f32>(var_3, -1902f, -1280f), var_1.a.yw, vec3<f32>(-332f, var_3, var_3), var_3), vec3<bool>(arg_1.x, true, arg_1.x), Struct_1(vec3<f32>(659f, var_3, 1067f), vec2<i32>(-34929i, var_1.a.x), vec3<f32>(-1352f, var_3, 524f), var_3)), func_2(false).b, vec3<u32>(53549u, 1u, arg_0) ^ u_input.c.xxw), vec2<bool>(global4.x >= -37008i, !var_2.x), arg_1.zy).a.e, ~func_2(false && var_0).c), vec2<bool>(true, arg_1.x), !vec2<bool>(!(!arg_1.x), func_2(var_1.b < global0.x).a.b)).c;
    return func_2(false).b;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec3<u32>, arg_3: bool) -> vec3<i32> {
    let var_0 = Struct_2(global0.x, ~0u >= (firstLeadingBit(_wgslsmith_mod_u32(global0.x, arg_1.a)) & arg_2.x), Struct_1(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -451f), -2702f, -1534f))), vec2<i32>(_wgslsmith_add_i32(-25699i, 0i), _wgslsmith_clamp_i32(2147483647i, 1i, 8085i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, -846f, arg_0.a.x)))) * vec3<f32>(_wgslsmith_f_op_f32(-1581f - arg_0.a.x), _wgslsmith_f_op_f32(arg_0.c.x * -1725f), _wgslsmith_f_op_f32(round(arg_0.d)))), -2304f), select(vec3<bool>(arg_3 | arg_3, any(select(vec2<bool>(false, true), vec2<bool>(false, true), true)), true), !select(vec3<bool>(true, true, true), select(vec3<bool>(arg_3, arg_3, false), vec3<bool>(false, true, arg_3), arg_3), true), arg_3), func_6(4294967295u, func_5(~u_input.a.wxx, false, ~_wgslsmith_dot_vec2_i32(arg_0.b, u_input.b.zy), func_4(func_2(arg_3), !vec2<bool>(arg_3, true), select(vec2<bool>(false, arg_3), vec2<bool>(arg_3, true), arg_3)))));
    var var_1 = select(vec4<bool>(!(var_0.d.x && func_4(Struct_3(var_0, Struct_1(vec3<f32>(-401f, arg_0.a.x, 402f), vec2<i32>(-21827i, 2147483647i), vec3<f32>(arg_0.a.x, arg_0.c.x, 486f), 744f), vec3<u32>(arg_2.x, var_0.a, 75752u)), vec2<bool>(arg_3, false), var_0.d.zz).a.d.x), !var_0.d.x, any(!select(var_0.d, vec3<bool>(arg_3, arg_3, false), vec3<bool>(arg_3, var_0.d.x, arg_3))), all(select(var_0.d, vec3<bool>(true, false, true), var_0.b)) && !(!arg_3)), vec4<bool>(true, !var_0.b, var_0.d.x, !(!(!arg_3))), func_2(!(_wgslsmith_f_op_f32(select(-905f, var_0.c.a.x, var_0.d.x)) == var_0.e.c.x)).a.b);
    var_1 = !vec4<bool>(var_0.d.x, select(true, false, true), false, true);
    global1 = 0i ^ -var_0.e.b.x;
    var_1 = vec4<bool>(!(!arg_3), false, var_0.b | (true | (false == all(var_1.yx))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -630f)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e.d * -1000f)));
    return vec3<i32>(-47628i, global4.x >> (~max(max(u_input.c.x, 0u), ~70749u) % 32u), -(max(global4.x, arg_0.b.x >> (58945u % 32u)) | -var_0.c.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = firstLeadingBit(u_input.b.yxw & min(-func_1(Struct_1(vec3<f32>(1000f, 141f, 986f), vec2<i32>(u_input.d, u_input.a.x), vec3<f32>(638f, 361f, -156f), 958f), Struct_4(u_input.c.x), vec3<u32>(global0.x, u_input.c.x, 4294967295u), true), _wgslsmith_div_vec3_i32(vec3<i32>(global4.x, -25225i, 0i), abs(vec3<i32>(global4.x, u_input.b.x, u_input.e)))));
    let var_0 = vec4<f32>(123f, -336f, _wgslsmith_f_op_f32(-func_2(any(func_5(vec3<i32>(u_input.a.x, global4.x, u_input.d), false, u_input.b.x, Struct_3(Struct_2(1u, true, Struct_1(vec3<f32>(-812f, -595f, -236f), vec2<i32>(u_input.d, 2147483647i), vec3<f32>(-132f, -544f, -1594f), 478f), vec3<bool>(false, false, false), Struct_1(vec3<f32>(268f, -1708f, -197f), global4.zz, vec3<f32>(-372f, 1244f, 1000f), 1109f)), Struct_1(vec3<f32>(183f, -692f, 1111f), vec2<i32>(58612i, global4.x), vec3<f32>(1739f, -1000f, -651f), -1000f), vec3<u32>(global0.x, global0.x, 0u))))).a.e.c.x), _wgslsmith_f_op_f32(-608f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-2185f, 569f)))), -586f)));
    global4 = -u_input.a.zxx;
    global0 = u_input.c.wyz;
    let var_1 = Struct_3(Struct_2(func_4(Struct_3(Struct_2(418u, true, Struct_1(var_0.zxw, vec2<i32>(u_input.b.x, u_input.a.x), var_0.wxz, -603f), vec3<bool>(true, true, true), Struct_1(vec3<f32>(var_0.x, var_0.x, 147f), vec2<i32>(0i, 2147483647i), var_0.xzw, 288f)), func_4(Struct_3(Struct_2(92604u, true, Struct_1(var_0.ywz, global4.zy, var_0.zzx, var_0.x), vec3<bool>(true, true, true), Struct_1(var_0.wyw, global4.zz, var_0.yyz, -182f)), Struct_1(vec3<f32>(var_0.x, 1358f, -1000f), global4.yx, var_0.xxy, var_0.x), vec3<u32>(global0.x, 4294967295u, 58865u)), vec2<bool>(false, true), vec2<bool>(true, false)).a.e, u_input.c.yww), func_4(func_2(false), vec2<bool>(true, true), vec2<bool>(true, true)).a.d.yx, vec2<bool>(true, true)).a.a, false, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.yxx) * vec3<f32>(-1358f, var_0.x, 1566f)), func_6(17015u, vec4<bool>(false, true, false, false)).b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, -1264f) - vec3<f32>(1222f, var_0.x, var_0.x))), _wgslsmith_f_op_f32(129f + -140f)), select(vec3<bool>(u_input.c.x < u_input.c.x, any(vec2<bool>(false, true)), true), vec3<bool>(true, true, any(vec4<bool>(false, true, false, true))), vec3<bool>(u_input.d < global4.x, true, true)), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, 1227f, 355f), var_0.wyy, vec3<bool>(false, false, false))), _wgslsmith_f_op_vec3_f32(-var_0.xxz)), global4.yx >> (~vec2<u32>(global0.x, u_input.c.x) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1011f, var_0.x, -1343f)), var_0.x)), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(step(var_0.x, var_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), var_0.x), _wgslsmith_f_op_f32(-771f * _wgslsmith_f_op_f32(-var_0.x))), ~vec2<i32>(func_6(71003u, vec4<bool>(false, true, false, true)).b.x, u_input.e >> (global0.x % 32u)), vec3<f32>(func_6(4294967295u, func_5(vec3<i32>(u_input.b.x, global4.x, global4.x), true, 54854i, Struct_3(Struct_2(u_input.c.x, true, Struct_1(var_0.wyz, vec2<i32>(global4.x, -1i), vec3<f32>(var_0.x, 1337f, -1749f), var_0.x), vec3<bool>(true, false, false), Struct_1(vec3<f32>(var_0.x, 367f, -421f), global4.xz, vec3<f32>(1000f, 626f, var_0.x), 1181f)), Struct_1(var_0.xzx, global4.yx, vec3<f32>(-251f, -602f, var_0.x), 311f), u_input.c.ywx))).c.x, 927f, func_4(Struct_3(Struct_2(u_input.c.x, false, Struct_1(vec3<f32>(1513f, 1000f, var_0.x), vec2<i32>(-16154i, 0i), var_0.zwy, 323f), vec3<bool>(false, false, true), Struct_1(var_0.yxx, global4.zz, vec3<f32>(var_0.x, 384f, 857f), var_0.x)), Struct_1(vec3<f32>(var_0.x, 619f, 726f), global4.zx, var_0.xxw, -279f), u_input.c.xzx), vec2<bool>(true, true), vec2<bool>(true, true)).a.e.d), var_0.x), firstLeadingBit(~_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 4294967295u, 0u), u_input.c.yyx)));
    let var_2 = Struct_2(_wgslsmith_mod_u32(global0.x, ~global0.x), true, func_2(!var_1.a.b).a.c, var_1.a.d, Struct_1(var_1.b.c, vec2<i32>(0i, 2147483647i), vec3<f32>(1065f, 889f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(632f + 984f)))), _wgslsmith_f_op_f32(-func_6(_wgslsmith_mult_u32(u_input.c.x, 61454u), !vec4<bool>(false, true, var_1.a.d.x, var_1.a.b)).c.x)));
    global3 = array<vec4<i32>, 29>();
    var var_3 = _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2.e.d, 201f, 1497f, -337f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(320f, var_1.a.e.c.x, 688f, 1099f))))))).x;
    let var_4 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.x, ~reverseBits(var_1.a.e.b), select(vec3<i32>(_wgslsmith_mod_i32(global4.x << (var_2.a % 32u), global4.x), i32(-1i) * -1i, var_2.c.b.x), ~abs(~u_input.a.zwz), select(var_1.a.d, var_1.a.d, false)));
}

