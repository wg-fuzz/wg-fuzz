struct Struct_1 {
    a: u32,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<f32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: Struct_4;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: u32, arg_1: vec2<u32>, arg_2: i32, arg_3: Struct_5) -> bool {
    global0 = vec3<u32>(69023u, ~8199u, arg_0);
    var var_0 = arg_3.c.a.c != _wgslsmith_add_i32(~63422i, _wgslsmith_clamp_i32(-677i, _wgslsmith_div_i32(arg_2 | 2147483647i, ~global1.b.a.c), 2147483647i));
    var var_1 = arg_3.c.a.c;
    let var_2 = ~u_input.b.x;
    let var_3 = arg_3.b;
    return !all(!(!vec2<bool>(var_3.a.x, true)));
}

fn func_3(arg_0: vec2<i32>) -> i32 {
    let var_0 = Struct_3(vec3<bool>(true, all(vec4<bool>(true, true, true, true)), true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.a.b, -330f, _wgslsmith_f_op_f32(abs(global1.a.x)), _wgslsmith_f_op_f32(floor(-532f))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-191f, global1.b.a.b, 1111f, -253f), global1.a))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1883f, global1.a.x, 417f, 245f))) + global1.a)));
    global1 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-103f, _wgslsmith_f_op_f32(max(780f, global1.b.a.b)), !var_0.a.x)) + _wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -153f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(389f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.a.x, -299f)))), -597f), global1.b);
    global1 = Struct_4(var_0.b, global1.b);
    var var_1 = firstLeadingBit(global0.x);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -284f))))))));
    return 2147483647i;
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: vec3<i32>) -> vec4<f32> {
    var var_0 = Struct_5(52740u, Struct_3(select(vec3<bool>(true, true, true), vec3<bool>(u_input.b.x != 14862u, true, any(vec4<bool>(false, true, false, false))), all(vec3<bool>(true, true, true))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(global1.a + global1.a))), vec4<f32>(-440f, global1.b.a.b, _wgslsmith_f_op_f32(1199f * 297f), 115f))), Struct_2(Struct_1(global1.b.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.b.a.b))), _wgslsmith_dot_vec3_i32(vec3<i32>(global1.b.a.c, 2147483647i, 38803i) & vec3<i32>(arg_2.x, 12034i, 0i), vec3<i32>(2147483647i, -1i, -2147483647i)))));
    var var_1 = true;
    let var_2 = ~(8771u << (_wgslsmith_div_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_1.b.a.a), vec2<u32>(88159u, 0u))) % 32u));
    let var_3 = select(vec2<bool>(true, true), !var_0.b.a.zx, select(!(!vec2<bool>(var_0.b.a.x, true)), var_0.b.a.zz, vec2<bool>(true, reverseBits(-29625i) > (0i & arg_0))));
    let var_4 = 498f;
    return _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.c.a.b))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1260f, var_0.b.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.b.x))), 219f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1914f, var_0.c.a.b, -1889f, 1339f), _wgslsmith_f_op_vec4_f32(arg_1.a + var_0.b.b)), global1.a)));
}

fn func_2(arg_0: vec2<bool>) -> Struct_4 {
    global0 = u_input.a;
    let var_0 = Struct_5(~(~(~(~global1.b.a.a))), Struct_3(!vec3<bool>(arg_0.x, true, global1.b.a.b < -422f), global1.a), Struct_2(global1.b.a));
    let var_1 = var_0.c.a;
    global1 = Struct_4(var_0.b.b, Struct_2(var_1));
    var var_2 = Struct_2(Struct_1(abs(var_0.a), -124f, 1i));
    return Struct_4(_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_add_i32(var_2.a.c, var_2.a.c), Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.b, -895f, var_0.c.a.b, -133f))), global1.b), _wgslsmith_add_vec3_i32(vec3<i32>(-var_1.c, func_3(vec2<i32>(0i, var_2.a.c)), 0i), vec3<i32>(reverseBits(var_2.a.c), var_0.c.a.c, -8100i)))), var_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true, false);
    let var_1 = var_0.x;
    let var_2 = select(!(!vec4<bool>(all(vec3<bool>(var_0.x, true, var_0.x)), var_0.x, any(vec4<bool>(false, false, var_0.x, true)), !var_0.x)), vec4<bool>(var_0.x & true, -2147483647i > _wgslsmith_mod_i32(37739i, _wgslsmith_add_i32(global1.b.a.c, global1.b.a.c)), true, true | select(func_1(global0.x, vec2<u32>(0u, 1u), 1i, Struct_5(u_input.a.x, Struct_3(vec3<bool>(var_0.x, var_0.x, false), global1.a), Struct_2(Struct_1(8976u, global1.b.a.b, -10625i)))), !var_0.x, var_0.x)), vec4<bool>(true, true, var_0.x, !((i32(-1i) * -7327i) != (1i >> (global1.b.a.a % 32u)))));
    global1 = func_2(!var_2.yy);
    global1 = Struct_4(_wgslsmith_f_op_vec4_f32(max(global1.a, global1.a)), Struct_2(global1.b.a));
    let var_3 = _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(global0.yx, reverseBits(~abs(vec2<u32>(1u, 4294967295u)))), vec2<u32>(1u, ~(~(~u_input.a.x))));
    let var_4 = _wgslsmith_div_vec4_i32(vec4<i32>(global1.b.a.c, -46371i, global1.b.a.c, max(max(_wgslsmith_mult_i32(-1965i, global1.b.a.c), select(8992i, -2147483647i, true)), max(global1.b.a.c, global1.b.a.c) & _wgslsmith_mod_i32(global1.b.a.c, global1.b.a.c))), ~abs(vec4<i32>(0i, reverseBits(global1.b.a.c), 2147483647i, -global1.b.a.c)));
    let var_5 = global1.b.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -492f))), 1139f, any(select(vec4<bool>(false, false, false, false), var_2, var_2.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_5.b, 605f), func_2(var_2.wz).a.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.b)))), _wgslsmith_f_op_f32(min(var_5.b, -1033f))), var_3.x, firstLeadingBit(~reverseBits(~vec4<u32>(4294967295u, 48570u, u_input.a.x, 4294967295u))));
}

