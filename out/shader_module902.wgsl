struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_mult_vec2_u32(~((vec2<u32>(13755u, u_input.a) >> (abs(vec2<u32>(42642u, 24271u)) % vec2<u32>(32u))) | ~(~vec2<u32>(u_input.b, u_input.b))), vec2<u32>(4294967295u, u_input.d));
    let var_1 = -85015i;
    return ~_wgslsmith_add_i32(var_1, -_wgslsmith_mult_i32(18645i, 4929i));
}

fn func_3() -> vec4<bool> {
    let var_0 = vec3<i32>(-1i, -15271i, -(~u_input.c.x));
    var var_1 = u_input.b | max(~(~firstTrailingBit(u_input.b)), 65736u);
    var var_2 = _wgslsmith_f_op_f32(-465f + _wgslsmith_div_f32(-346f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1074f, _wgslsmith_f_op_f32(-1301f + -446f))), _wgslsmith_f_op_f32(sign(1701f)))));
    let var_3 = Struct_2(var_0.x, Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-473f, 707f, 416f))))), u_input.d, vec4<bool>(true, select(u_input.c.x == var_0.x, true, true), true, !(-2147483647i > var_0.x))), vec4<bool>(true, true, true, any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false))));
    let var_4 = select(!(!(!select(vec3<bool>(false, var_3.c.x, var_3.b.c.x), var_3.b.c.zyx, var_3.b.c.x))), select(var_3.c.yyy, !(!(!vec3<bool>(var_3.c.x, var_3.b.c.x, false))), select(vec3<bool>(!var_3.c.x, true, 8938u <= var_3.b.b), vec3<bool>(!var_3.b.c.x, var_3.c.x, false), select(select(vec3<bool>(true, false, true), vec3<bool>(var_3.c.x, false, false), var_3.b.c.zyy), vec3<bool>(var_3.c.x, var_3.b.c.x, false), var_3.b.a.x <= var_3.b.a.x))), true);
    return select(vec4<bool>(var_3.b.c.x, any(var_4) && false, var_4.x && var_4.x, true), var_3.c, !var_3.c);
}

fn func_2(arg_0: bool) -> Struct_1 {
    return Struct_1(vec3<f32>(-1582f, -232f, _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1375f, 1080f)) - 569f)))), _wgslsmith_div_u32(~4294967295u, 79058u), select(vec4<bool>(true, !(false & arg_0), !all(vec3<bool>(false, arg_0, true)), all(select(vec3<bool>(true, true, arg_0), vec3<bool>(arg_0, arg_0, arg_0), false))), vec4<bool>(any(!vec2<bool>(arg_0, true)), true, false, true), func_3()));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_mult_i32(arg_0.a & -1i, _wgslsmith_clamp_i32(countOneBits(-abs(1519i)), _wgslsmith_clamp_i32(func_1(), arg_0.a, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(u_input.c.zz, u_input.c.xx), countOneBits(2147483647i))), _wgslsmith_add_i32(min(firstTrailingBit(2147483647i), _wgslsmith_clamp_i32(arg_0.a, -2147483647i, 2147483647i)), -(~(-17470i)))));
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(927f, arg_2.b.a.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1058f, func_2(arg_0.b.c.x).a.x) + _wgslsmith_f_op_f32(-644f - _wgslsmith_f_op_f32(ceil(-1858f))))))));
    var var_2 = arg_0.a;
    let var_3 = ~_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(select(max(vec4<u32>(u_input.b, 4294967295u, u_input.a, 8916u), vec4<u32>(4294967295u, 1u, 4294967295u, arg_0.b.b)), abs(vec4<u32>(arg_0.b.b, 52740u, 0u, u_input.d)), arg_0.c), vec4<u32>(arg_2.b.b << (arg_2.b.b % 32u), _wgslsmith_div_u32(26912u, u_input.b), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 53745u), vec3<u32>(4294967295u, arg_0.b.b, 65531u)), ~70460u)), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.b.b, arg_0.b.b, u_input.a ^ 9027u, abs(arg_2.b.b)), _wgslsmith_add_vec4_u32(vec4<u32>(36515u, arg_2.b.b, 4189u, arg_0.b.b) ^ vec4<u32>(4294967295u, arg_0.b.b, 4294967295u, 18634u), vec4<u32>(u_input.d, 1u, 41363u, u_input.d) & vec4<u32>(arg_0.b.b, 1u, u_input.d, 3060u))));
    var_2 = min(arg_0.a ^ u_input.c.x, firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(40498i, 1i, arg_0.a, -2147483647i), -vec4<i32>(arg_0.a, arg_2.a, 2147483647i, arg_2.a)))) & u_input.c.x;
    return arg_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1(), func_4(Struct_2(~(~u_input.c.x), func_2(true), vec4<bool>(true, true, true, true)), firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, -34420i, -11929i), max(u_input.c, u_input.c))), Struct_2(-1i, Struct_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1546f, 229f, -524f))), 70442u, func_2(true).c), vec4<bool>(u_input.c.x == -1i, select(true, true, true), true, all(vec2<bool>(false, false))))), vec4<bool>(false, select(true, false, func_4(Struct_2(u_input.c.x, Struct_1(vec3<f32>(-481f, 623f, 1475f), u_input.b, vec4<bool>(false, true, false, false)), vec4<bool>(true, false, true, true)), vec3<i32>(-20364i, 2147483647i, 1i) ^ u_input.c, Struct_2(u_input.c.x, Struct_1(vec3<f32>(-498f, -733f, -121f), 70593u, vec4<bool>(false, true, true, true)), vec4<bool>(true, false, true, false))).c.x), 1i >= _wgslsmith_add_i32(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.c.x), u_input.c.zz)), false));
    var var_1 = !(!func_4(Struct_2(select(var_0.a, 8365i, var_0.b.c.x), func_4(Struct_2(u_input.c.x, var_0.b, vec4<bool>(false, false, true, false)), u_input.c, Struct_2(u_input.c.x, Struct_1(vec3<f32>(-244f, var_0.b.a.x, -798f), u_input.d, vec4<bool>(var_0.c.x, var_0.b.c.x, var_0.b.c.x, var_0.c.x)), var_0.c)), func_4(Struct_2(var_0.a, var_0.b, var_0.c), u_input.c, Struct_2(var_0.a, Struct_1(vec3<f32>(var_0.b.a.x, 388f, var_0.b.a.x), var_0.b.b, vec4<bool>(true, false, true, true)), vec4<bool>(false, false, var_0.c.x, var_0.b.c.x))).c), vec3<i32>(-u_input.c.x, var_0.a, countOneBits(u_input.c.x)), Struct_2(2147483647i, func_4(Struct_2(var_0.a, Struct_1(var_0.b.a, u_input.d, vec4<bool>(var_0.b.c.x, var_0.b.c.x, var_0.c.x, var_0.c.x)), vec4<bool>(var_0.c.x, var_0.b.c.x, var_0.b.c.x, var_0.c.x)), vec3<i32>(0i, -38567i, -33660i), Struct_2(var_0.a, Struct_1(vec3<f32>(var_0.b.a.x, 773f, var_0.b.a.x), 24725u, vec4<bool>(var_0.b.c.x, var_0.b.c.x, var_0.b.c.x, var_0.c.x)), var_0.b.c)), var_0.b.c)).c.zz);
    let var_2 = firstLeadingBit(vec4<i32>(select(var_0.a, reverseBits(_wgslsmith_add_i32(7077i, var_0.a)), false), reverseBits(_wgslsmith_clamp_i32(2147483647i, abs(-34682i), var_0.a)), _wgslsmith_sub_i32(max(-14868i, 0i), min(var_0.a, var_0.a)), _wgslsmith_sub_i32(-2147483647i, _wgslsmith_add_i32(var_0.a, var_0.a)) >> (72608u % 32u)));
    var var_3 = var_0.b;
    var var_4 = _wgslsmith_sub_vec2_i32(vec2<i32>(-u_input.c.x, ~(~1i)), vec2<i32>(-2147483647i, min(var_0.a, 0i)));
    let var_5 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.a.x, _wgslsmith_f_op_f32(808f * var_3.a.x), _wgslsmith_f_op_f32(-var_3.a.x)))), 1u, func_4(Struct_2(var_2.x, var_0.b, var_0.b.c), vec3<i32>(1i, i32(-1i) * -var_4.x, 1i), Struct_2(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a, 31140i), vec2<i32>(-2147483647i, 42612i)), Struct_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.b.a.x, 497f, 804f))), firstLeadingBit(1u), var_0.b.c), vec4<bool>(true, var_0.c.x, func_3().x, var_0.c.x))).c);
    var_0 = Struct_2(256i, func_4(Struct_2(-1i, var_0.b, !var_0.b.c), ~u_input.c, Struct_2(_wgslsmith_mult_i32(_wgslsmith_sub_i32(var_4.x, u_input.c.x), ~(-16051i)), var_0.b, func_2(var_1.x).c)), !(!(!(!var_5.c))));
    var var_6 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1568f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1118f * -500f), _wgslsmith_f_op_f32(ceil(var_0.b.a.x))), var_0.b.a.x))), _wgslsmith_dot_vec3_u32(firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(6347u, 0u, 1u), vec3<u32>(u_input.a, var_3.b, 7899u)) << (abs(vec3<u32>(var_5.b, var_0.b.b, var_5.b)) % vec3<u32>(32u))), ~min(vec3<u32>(u_input.a, var_5.b, var_5.b), ~vec3<u32>(u_input.b, var_3.b, u_input.d))), select(!var_5.c, func_2(var_0.b.c.x).c, abs(var_5.b) < 2801u));
    var_1 = var_3.c.yw;
    let x = u_input.a;
    s_output = StorageBuffer(max(var_3.b, min(1u, firstLeadingBit(27594u))));
}

