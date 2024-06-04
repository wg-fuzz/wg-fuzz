struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec3<bool>,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 1>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_1) -> u32 {
    let var_0 = vec2<bool>(!(!arg_0.x), !(arg_2.a.x | (arg_1 >= ~0u)));
    var var_1 = arg_2;
    var var_2 = Struct_1(arg_2.a, -abs(-max(-1i, 1i)), !(!select(vec3<bool>(false, global0[_wgslsmith_index_u32(arg_1, 1u)], true), !var_1.a.zww, vec3<bool>(global0[_wgslsmith_index_u32(40962u, 1u)], false, false))), _wgslsmith_f_op_f32(-arg_2.d), 1813f);
    global0 = array<bool, 1>();
    let var_3 = -1i;
    return ~abs(arg_1);
}

fn func_2() -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2496f), 464f))));
    var var_1 = true;
    global0 = array<bool, 1>();
    let var_2 = global0[_wgslsmith_index_u32(26806u, 1u)];
    let var_3 = vec4<i32>(-1i) * -(_wgslsmith_mod_vec4_i32(vec4<i32>(-5130i, -1i, 1i, 23867i), countOneBits(vec4<i32>(2147483647i, -1i, 1i, 1i))) & vec4<i32>(-10013i, 1i, abs(-1i), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -39713i), vec2<i32>(31937i, 1i))));
    return select(select(vec4<bool>(!(var_3.x != var_3.x), select(true, global0[_wgslsmith_index_u32(func_3(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 1u)], global0[_wgslsmith_index_u32(u_input.a.x, 1u)], global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(u_input.a.x, 1u)]), 1611u, Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 1u)], global0[_wgslsmith_index_u32(u_input.a.x, 1u)], false, global0[_wgslsmith_index_u32(38207u, 1u)]), var_3.x, vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 1u)], global0[_wgslsmith_index_u32(u_input.a.x, 1u)], true), 956f, var_0.x)), 1u)], true), all(select(vec2<bool>(global0[_wgslsmith_index_u32(449u, 1u)], global0[_wgslsmith_index_u32(u_input.a.x, 1u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 1u)]), false)), true), vec4<bool>(false, 96768u > _wgslsmith_div_u32(u_input.a.x, 4294967295u), 1u <= u_input.a.x, !all(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 1u)], global0[_wgslsmith_index_u32(u_input.a.x, 1u)]))), !global0[_wgslsmith_index_u32(u_input.a.x, 1u)]), select(vec4<bool>(true, 1i <= firstLeadingBit(var_3.x), !any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 1u)], global0[_wgslsmith_index_u32(u_input.a.x, 1u)], global0[_wgslsmith_index_u32(u_input.a.x, 1u)])), !(false || global0[_wgslsmith_index_u32(u_input.a.x, 1u)])), !select(select(vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.a.x, 1u)], global0[_wgslsmith_index_u32(u_input.a.x, 1u)]), vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(47903u, 1u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 1u)], false, false)), select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.a.x, 1u)], true), vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.a.x, 1u)], false), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 1u)], false, global0[_wgslsmith_index_u32(1u, 1u)])), !vec4<bool>(global0[_wgslsmith_index_u32(80613u, 1u)], global0[_wgslsmith_index_u32(1u, 1u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 1u)])), all(vec2<bool>(true, var_3.x <= 10525i))), var_3.x > (firstLeadingBit(2147483647i & var_3.x) << (u_input.a.x % 32u)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_1;
    var var_1 = vec3<bool>(arg_3.a.x, arg_1.c.x, firstTrailingBit(func_3(vec4<bool>(false, arg_0.a.x, global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(u_input.a.x, 1u)]), 61590u, Struct_1(vec4<bool>(true, arg_1.a.x, arg_1.a.x, true), arg_2.x, var_0.a.yxw, arg_3.e, arg_3.d))) >= ~u_input.a.x);
    var_1 = arg_3.a.xyz;
    var var_2 = arg_0.a;
    var var_3 = arg_1;
    return arg_3;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(vec4<bool>(true, arg_0.c.x, 1i != _wgslsmith_mult_i32(arg_0.b, min(1i, 40585i)), !((arg_0.b & arg_0.b) < (0i & arg_0.b))), arg_0.b, arg_0.a.wyz, -379f, arg_0.d);
    let var_1 = Struct_1(vec4<bool>(var_0.c.x | all(var_0.c.yz), false, true, arg_0.a.x), firstLeadingBit(_wgslsmith_mod_i32(firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.b, var_0.b, var_0.b), vec3<i32>(2147483647i, -3349i, arg_0.b))), 14644i)), !arg_0.c, var_0.e, func_4(arg_0, func_4(Struct_1(arg_0.a, var_0.b ^ var_0.b, select(vec3<bool>(true, false, arg_0.c.x), vec3<bool>(true, true, true), vec3<bool>(var_0.c.x, arg_0.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 1u)])), _wgslsmith_f_op_f32(arg_0.d + var_0.e), 659f), func_4(func_4(arg_0, arg_0, vec3<i32>(arg_0.b, 2147483647i, 42473i), Struct_1(vec4<bool>(false, arg_0.c.x, false, var_0.a.x), var_0.b, var_0.c, var_0.d, var_0.d)), Struct_1(var_0.a, -35441i, vec3<bool>(false, var_0.a.x, false), -568f, 1893f), abs(vec3<i32>(arg_0.b, var_0.b, var_0.b)), arg_0), _wgslsmith_add_vec3_i32(abs(vec3<i32>(var_0.b, arg_0.b, arg_0.b)), ~vec3<i32>(-18140i, var_0.b, var_0.b)), arg_0), vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(var_0.b, -2147483647i), arg_0.b & arg_0.b), 1i, abs(select(-2147483647i, arg_0.b, var_0.a.x))), arg_0).e);
    let var_2 = (min(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.b, 19040i, var_1.b), vec3<i32>(arg_0.b, var_1.b, arg_0.b))), i32(-1i) * -16786i) | _wgslsmith_div_i32(var_1.b, -countOneBits(-1i))) << (_wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec3_u32(u_input.a.ywx, firstLeadingBit(select(vec3<u32>(u_input.a.x, 1u, 24853u), vec3<u32>(u_input.a.x, 1u, 4294967295u), arg_0.c)))) % 32u);
    let var_3 = vec4<u32>(firstTrailingBit(firstTrailingBit(4294967295u)), func_3(!vec4<bool>(var_0.c.x, true, true, true), 103710u, Struct_1(vec4<bool>(true, false, true, var_0.a.x), var_0.b ^ 51431i, func_2().ywz, -1136f, -630f)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x ^ 1u, u_input.a.x), select(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.yx, vec2<bool>(arg_0.c.x, true))), 13724u) ^ ((~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 61831u) ^ ~(vec4<u32>(3055u, 66695u, u_input.a.x, u_input.a.x) ^ vec4<u32>(25262u, 8241u, u_input.a.x, 4294967295u))) | reverseBits(max(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 55168u), u_input.a)));
    var_0 = Struct_1(vec4<bool>(func_4(Struct_1(!arg_0.a, countOneBits(22833i), !var_0.c, arg_0.e, -1235f), Struct_1(vec4<bool>(false, false, var_1.c.x, var_0.a.x), min(var_1.b, -1i), vec3<bool>(arg_0.c.x, global0[_wgslsmith_index_u32(u_input.a.x, 1u)], global0[_wgslsmith_index_u32(var_3.x, 1u)]), arg_0.d, 234f), vec3<i32>(arg_0.b, var_2, var_1.b), Struct_1(func_2(), -1775i, var_0.a.xxy, _wgslsmith_f_op_f32(742f * arg_0.e), -601f)).a.x, false, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.e, -443f) + -1597f) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e)), var_0.a.x), -2147483647i, !func_2().zyz, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-309f, 1979f, arg_0.c.x))), _wgslsmith_f_op_f32(-var_0.d))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-801f)))))));
    return var_1;
}

fn func_1(arg_0: u32, arg_1: f32) -> Struct_1 {
    global0 = array<bool, 1>();
    var var_0 = -1000f;
    global0 = array<bool, 1>();
    let var_1 = firstTrailingBit(u_input.a);
    var var_2 = func_5(func_4(Struct_1(!vec4<bool>(false, global0[_wgslsmith_index_u32(46777u, 1u)], global0[_wgslsmith_index_u32(18528u, 1u)], global0[_wgslsmith_index_u32(4294967295u, 1u)]), 1i, !(!vec3<bool>(global0[_wgslsmith_index_u32(var_1.x, 1u)], false, global0[_wgslsmith_index_u32(var_1.x, 1u)])), arg_1, 907f), Struct_1(select(select(vec4<bool>(global0[_wgslsmith_index_u32(var_1.x, 1u)], global0[_wgslsmith_index_u32(arg_0, 1u)], global0[_wgslsmith_index_u32(1267u, 1u)], global0[_wgslsmith_index_u32(1u, 1u)]), vec4<bool>(global0[_wgslsmith_index_u32(arg_0, 1u)], global0[_wgslsmith_index_u32(var_1.x, 1u)], global0[_wgslsmith_index_u32(arg_0, 1u)], global0[_wgslsmith_index_u32(0u, 1u)]), vec4<bool>(global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(arg_0, 1u)], true, global0[_wgslsmith_index_u32(4294967295u, 1u)])), func_2(), func_2()), max(i32(-1i) * -1i, _wgslsmith_add_i32(-1i, -16270i)), vec3<bool>(func_2().x, true, u_input.a.x <= 0u), _wgslsmith_f_op_f32(-arg_1), arg_1), ~(~vec3<i32>(45263i, 11098i, -20885i)), Struct_1(select(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 1u)], true, true, global0[_wgslsmith_index_u32(var_1.x, 1u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 1u)], false, true, global0[_wgslsmith_index_u32(38121u, 1u)]), func_2()), -9192i, select(!vec3<bool>(true, true, global0[_wgslsmith_index_u32(u_input.a.x, 1u)]), select(vec3<bool>(global0[_wgslsmith_index_u32(26077u, 1u)], true, false), vec3<bool>(global0[_wgslsmith_index_u32(1u, 1u)], true, global0[_wgslsmith_index_u32(45409u, 1u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 1u)], false)), true), arg_1, -678f)));
    return func_5(Struct_1(vec4<bool>(!all(var_2.a), ~var_1.x <= (arg_0 ^ arg_0), func_2().x, any(vec2<bool>(true, var_2.c.x))), select(21280i, var_2.b, true), !vec3<bool>(any(vec3<bool>(var_2.a.x, global0[_wgslsmith_index_u32(arg_0, 1u)], var_2.c.x)), all(var_2.a), true == var_2.a.x), 340f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-149f * func_4(Struct_1(vec4<bool>(var_2.c.x, false, true, var_2.c.x), 2147483647i, vec3<bool>(var_2.c.x, var_2.a.x, var_2.a.x), -1000f, arg_1), Struct_1(vec4<bool>(false, var_2.a.x, var_2.c.x, var_2.c.x), 0i, vec3<bool>(true, global0[_wgslsmith_index_u32(var_1.x, 1u)], true), -419f, 1906f), vec3<i32>(2147483647i, 5629i, 16205i), Struct_1(var_2.a, var_2.b, var_2.a.wxy, 911f, 1404f)).d))));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    var var_0 = Struct_1(!vec4<bool>(true, arg_1.c.x, any(vec3<bool>(arg_0.a.x, arg_1.c.x, arg_1.c.x)), func_1(_wgslsmith_div_u32(25167u, u_input.a.x), arg_1.d).a.x), arg_1.b, arg_0.a.wwy, -495f, _wgslsmith_f_op_f32(f32(-1f) * -136f));
    let var_1 = arg_1;
    global0 = array<bool, 1>();
    global0 = array<bool, 1>();
    let var_2 = Struct_1(vec4<bool>(true, var_1.c.x, select(arg_0.c.x, arg_1.e >= arg_1.e, true & !var_1.a.x), var_1.a.x), ~var_0.b, vec3<bool>(!global0[_wgslsmith_index_u32(u_input.a.x, 1u)], false, select(true, any(arg_0.c), any(func_2()))), var_1.d, _wgslsmith_f_op_f32(f32(-1f) * -1487f));
    return Struct_1(vec4<bool>(!var_2.c.x, var_0.c.x, (_wgslsmith_f_op_f32(-var_0.e) > _wgslsmith_f_op_f32(-var_2.d)) || false, true), _wgslsmith_add_i32(func_4(Struct_1(func_4(Struct_1(var_0.a, 2147483647i, var_2.c, arg_0.e, var_2.e), var_1, vec3<i32>(var_0.b, var_1.b, 23618i), arg_1).a, -33206i, arg_1.c, _wgslsmith_f_op_f32(max(arg_1.d, var_0.e)), arg_1.e), func_1(countOneBits(u_input.a.x), arg_0.d), vec3<i32>(_wgslsmith_mod_i32(716i, arg_0.b), func_5(Struct_1(arg_0.a, var_2.b, vec3<bool>(arg_0.c.x, false, var_1.c.x), -625f, var_1.e)).b, 1i), func_4(Struct_1(arg_1.a, var_0.b, arg_1.c, var_2.e, var_2.d), Struct_1(var_2.a, var_2.b, vec3<bool>(arg_0.c.x, var_2.a.x, arg_2), arg_0.d, var_0.d), vec3<i32>(var_2.b, var_1.b, 2147483647i) << (u_input.a.wwx % vec3<u32>(32u)), var_1)).b, 0i), var_2.c, var_1.d, arg_1.d);
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = arg_1;
    var_0 = arg_1;
    var_0 = arg_1;
    var var_1 = Struct_1(vec4<bool>(!((u_input.a.x & u_input.a.x) < select(u_input.a.x, 1u, arg_0.c.x)), func_4(Struct_1(!var_0.a, arg_0.b, select(vec3<bool>(false, true, false), arg_1.a.zyz, arg_0.c.x), arg_1.d, var_0.e), func_5(func_1(u_input.a.x, arg_0.d)), -(~vec3<i32>(arg_0.b, 2147483647i, arg_0.b)), func_5(arg_0)).a.x, arg_0.c.x, true), arg_0.b, arg_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.e - _wgslsmith_f_op_f32(round(1521f)))))), -1420f);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.e, 786f) + _wgslsmith_f_op_f32(f32(-1f) * -209f)));
    return func_4(arg_0, Struct_1(!arg_0.a, -(~(var_1.b >> (u_input.a.x % 32u))), select(vec3<bool>(var_0.a.x, false, true), arg_0.c, var_0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.e), var_0.d))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(202f))))))), _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i & arg_1.b, func_4(func_6(arg_0, Struct_1(vec4<bool>(var_0.a.x, false, true, arg_0.a.x), arg_1.b, arg_0.a.wyz, -575f, arg_1.e), global0[_wgslsmith_index_u32(u_input.a.x, 1u)]), func_1(u_input.a.x, arg_1.e), vec3<i32>(var_0.b, 0i, var_1.b) << (vec3<u32>(0u, 1911u, u_input.a.x) % vec3<u32>(32u)), func_6(Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 1u)], false, false, true), arg_0.b, vec3<bool>(true, false, false), arg_1.d, var_0.e), Struct_1(arg_1.a, var_0.b, var_1.a.xxx, 1142f, var_1.e), arg_1.a.x)).b, var_1.b), -(~vec3<i32>(27408i, var_0.b, var_1.b) & _wgslsmith_mult_vec3_i32(vec3<i32>(var_1.b, 9325i, var_1.b), vec3<i32>(18871i, var_0.b, -1i)))), Struct_1(vec4<bool>(~u_input.a.x < ~78592u, !func_1(u_input.a.x, -459f).a.x, (4294967295u >> (u_input.a.x % 32u)) >= _wgslsmith_mult_u32(u_input.a.x, u_input.a.x), true), arg_1.b, select(vec3<bool>(func_5(Struct_1(arg_1.a, var_0.b, arg_1.a.wzw, var_0.d, 1213f)).a.x, true, false), var_1.a.yzz, arg_1.c), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(f32(-1f) * -1843f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(func_6(func_1(_wgslsmith_clamp_u32(select(1u, 33275u, false), ~u_input.a.x, _wgslsmith_add_u32(u_input.a.x, 0u)), _wgslsmith_div_f32(-224f, 1f)), Struct_1(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 1u)], global0[_wgslsmith_index_u32(49191u, 1u)], global0[_wgslsmith_index_u32(4294967295u, 1u)], false), max(-3664i, ~(-1i)), func_4(func_1(u_input.a.x, 177f), func_4(Struct_1(vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(8911u, 1u)], true), 1i, vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 1u)], global0[_wgslsmith_index_u32(u_input.a.x, 1u)], true), 1710f, -748f), Struct_1(vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.a.x, 1u)], global0[_wgslsmith_index_u32(u_input.a.x, 1u)]), -2147483647i, vec3<bool>(true, global0[_wgslsmith_index_u32(5829u, 1u)], false), 1913f, -1236f), vec3<i32>(-19247i, -3057i, 20867i), Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 1u)], global0[_wgslsmith_index_u32(0u, 1u)], true, true), 18652i, vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 1u)], true), 418f, 357f)), _wgslsmith_mult_vec3_i32(vec3<i32>(-21517i, -1i, -1i), vec3<i32>(-58734i, 1031i, -2147483647i)), func_1(u_input.a.x, -629f)).c, -1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-1082f, 716f))))), global0[_wgslsmith_index_u32(u_input.a.x, 1u)]), Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(~18329u, 1u)], func_4(Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 1u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 1u)], global0[_wgslsmith_index_u32(u_input.a.x, 1u)]), 0i, vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 1u)], global0[_wgslsmith_index_u32(1u, 1u)], true), -1391f, 268f), func_6(Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 1u)], false, global0[_wgslsmith_index_u32(u_input.a.x, 1u)], global0[_wgslsmith_index_u32(u_input.a.x, 1u)]), 1157i, vec3<bool>(false, false, true), 681f, -562f), Struct_1(vec4<bool>(true, false, true, global0[_wgslsmith_index_u32(1u, 1u)]), 12337i, vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 1u)], false, global0[_wgslsmith_index_u32(u_input.a.x, 1u)]), 537f, -531f), false), vec3<i32>(-2147483647i, 20639i, 0i), Struct_1(vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(19147u, 1u)]), 70107i, vec3<bool>(true, global0[_wgslsmith_index_u32(16443u, 1u)], global0[_wgslsmith_index_u32(0u, 1u)]), 169f, 272f)).c.x, !global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a.x, 4294967295u, 1u), 1u)], global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.a.x, 1u), _wgslsmith_add_u32(u_input.a.x, 0u), 94084u), 1u)]), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(select(vec4<i32>(1i, -12678i, -2147483647i, 30029i), vec4<i32>(-13806i, -20971i, 9958i, -1940i), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 1u)], false, false)), vec4<i32>(-6170i, 39797i, 31262i, -44635i)), ~_wgslsmith_div_i32(-1i, 26500i)), func_2().www, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1049f - -180f) + func_1(u_input.a.x, 850f).d) + -1147f)));
    let var_1 = abs(_wgslsmith_div_vec4_u32(u_input.a, u_input.a));
    var var_2 = 4294967295u;
    var_2 = ~(~(~29108u));
    let var_3 = 2147483647i >> (_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~(~var_1.wx), var_1.xy), ~((1u | u_input.a.x) >> ((u_input.a.x ^ var_1.x) % 32u))) % 32u);
    var var_4 = func_6(Struct_1(func_2(), (i32(-1i) * -2147483647i) << (max(41276u, ~u_input.a.x) % 32u), func_2().xyx, func_4(Struct_1(var_0.a, -1i, vec3<bool>(global0[_wgslsmith_index_u32(var_1.x, 1u)], false, true), 464f, _wgslsmith_f_op_f32(f32(-1f) * -1135f)), func_5(Struct_1(vec4<bool>(var_0.a.x, var_0.c.x, global0[_wgslsmith_index_u32(3122u, 1u)], false), var_3, vec3<bool>(true, true, global0[_wgslsmith_index_u32(0u, 1u)]), 585f, 702f)), vec3<i32>(0i, 78224i, -23885i) << ((var_1.xyy ^ vec3<u32>(u_input.a.x, 25047u, 1u)) % vec3<u32>(32u)), func_4(func_5(Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 1u)], var_0.c.x, var_0.a.x, var_0.a.x), -13680i, var_0.c, var_0.e, var_0.d)), Struct_1(vec4<bool>(true, var_0.c.x, true, false), var_3, vec3<bool>(var_0.c.x, true, true), var_0.d, 154f), countOneBits(vec3<i32>(var_0.b, -2147483647i, var_3)), func_5(Struct_1(vec4<bool>(true, true, true, var_0.c.x), 22227i, var_0.c, var_0.d, var_0.d)))).e, var_0.e), func_7(func_6(Struct_1(func_5(Struct_1(var_0.a, var_0.b, var_0.c, -533f, var_0.e)).a, _wgslsmith_div_i32(var_0.b, var_3), !var_0.c, _wgslsmith_f_op_f32(-var_0.d), -467f), Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 1u)], false, false, true), -var_3, var_0.a.wxw, -1713f, _wgslsmith_f_op_f32(-var_0.d)), true), Struct_1(func_2(), ~_wgslsmith_add_i32(var_3, var_0.b), func_6(Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(0u, 1u)], true, false, false), var_0.b, vec3<bool>(false, global0[_wgslsmith_index_u32(var_1.x, 1u)], false), -1000f, -672f), func_4(Struct_1(vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 1u)], var_0.c.x, var_0.a.x), 1i, var_0.c, var_0.d, var_0.d), Struct_1(vec4<bool>(var_0.a.x, global0[_wgslsmith_index_u32(var_1.x, 1u)], var_0.c.x, false), -20661i, var_0.c, var_0.d, var_0.d), vec3<i32>(var_3, var_3, -1i), Struct_1(vec4<bool>(var_0.a.x, false, var_0.c.x, global0[_wgslsmith_index_u32(0u, 1u)]), var_0.b, var_0.a.zxx, -359f, var_0.d)), !var_0.a.x).a.zzz, var_0.d, _wgslsmith_f_op_f32(func_5(Struct_1(var_0.a, var_3, vec3<bool>(var_0.a.x, global0[_wgslsmith_index_u32(var_1.x, 1u)], global0[_wgslsmith_index_u32(u_input.a.x, 1u)]), var_0.e, -1103f)).d + var_0.e))), true);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(reverseBits(vec3<i32>(0i, 0i, -1i))), max(-_wgslsmith_sub_vec3_i32(abs(vec3<i32>(var_3, var_3, var_4.b)), vec3<i32>(19737i, 2147483647i, var_4.b) ^ vec3<i32>(var_3, var_0.b, var_0.b)), vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(2147483647i, var_0.b), var_4.b), -19879i, _wgslsmith_dot_vec4_i32(-vec4<i32>(-19929i, 2147483647i, var_4.b, 1i), reverseBits(vec4<i32>(2147483647i, var_3, -1i, -54687i))))), 41933i);
}

