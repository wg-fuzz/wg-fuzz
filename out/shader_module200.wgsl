struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<f32>,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(false, vec2<i32>(60456i, 2147483647i), vec4<u32>(0u, 6835u, 19128u, 49348u), vec2<i32>(1i, i32(-2147483648)), vec4<u32>(16416u, 4294967295u, 20479u, 0u));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = Struct_2(-(_wgslsmith_add_vec2_i32(global0.b >> (global1.c.wz % vec2<u32>(32u)), vec2<i32>(10751i, arg_0.b.x) << (vec2<u32>(1u, 39406u) % vec2<u32>(32u))) ^ max(global0.b, arg_0.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-836f, -544f) * vec2<f32>(1526f, -1000f)))) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-450f, -1994f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1026f, -3018f) + vec2<f32>(1122f, 533f))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-484f + -1000f), _wgslsmith_f_op_f32(min(-363f, -565f))) - vec2<f32>(_wgslsmith_div_f32(1187f, -1000f), _wgslsmith_f_op_f32(-216f - 1051f)))), select(select(!vec2<bool>(global1.a, arg_0.a), select(vec2<bool>(global0.a, global0.a), !vec2<bool>(global0.a, global0.a), select(vec2<bool>(false, global0.a), vec2<bool>(true, false), true)), false), vec2<bool>((true | global0.a) | any(vec2<bool>(true, global0.a)), true), !select(select(vec2<bool>(global0.a, arg_0.a), vec2<bool>(global0.a, false), global0.a), select(vec2<bool>(global1.a, true), vec2<bool>(true, global0.a), vec2<bool>(false, true)), true)));
    let var_1 = u_input.a.zxx;
    global0 = Struct_1(!(1000f <= _wgslsmith_f_op_f32(exp2(var_0.b.x))), abs(_wgslsmith_mult_vec2_i32(reverseBits(global0.b) << (global1.c.zz % vec2<u32>(32u)), abs(vec2<i32>(-27133i, 43722i)) | (var_0.a ^ global0.d))), ~vec4<u32>(abs(0u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 2972u, global0.e.x), global1.c.wxw), _wgslsmith_mult_u32(min(global1.c.x, 119346u), ~2449u), _wgslsmith_dot_vec3_u32(min(vec3<u32>(arg_0.c.x, u_input.c, global1.e.x), vec3<u32>(u_input.c, arg_0.c.x, u_input.c)), ~arg_0.c.zyw)), reverseBits(max(vec2<i32>(1320i, var_1.x), -select(vec2<i32>(-25729i, -1i), vec2<i32>(-2147483647i, 1i), vec2<bool>(global0.a, true)))), ~min(vec4<u32>(~arg_0.c.x, u_input.c, arg_0.c.x, 4294967295u), abs(_wgslsmith_sub_vec4_u32(arg_0.e, global0.c))));
    global0 = Struct_1(true, firstLeadingBit(global1.d), ~arg_0.e, _wgslsmith_mult_vec2_i32(min(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(_wgslsmith_dot_vec3_i32(var_1, var_1), firstTrailingBit(u_input.d))), firstTrailingBit(~firstTrailingBit(arg_0.d))), (~_wgslsmith_mult_vec4_u32(vec4<u32>(global1.c.x, 3117u, 17417u, 0u), vec4<u32>(u_input.c, u_input.c, 4923u, global1.e.x)) | ~global1.c) >> (global0.e % vec4<u32>(32u)));
    global0 = arg_0;
    return _wgslsmith_mod_i32(-var_1.x, var_0.a.x);
}

fn func_2() -> vec2<i32> {
    let var_0 = -1000f;
    let var_1 = -49198i;
    var var_2 = Struct_2(vec2<i32>(firstLeadingBit(func_3(Struct_1(global1.a, u_input.b, vec4<u32>(global0.e.x, 1u, 1u, 5455u), global0.d, vec4<u32>(2868u, 1u, 4294967295u, 44754u)))), abs(reverseBits(~(-1i)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0, -1085f))))) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0, 161f)))))))), select(vec2<bool>(true, true), select(select(vec2<bool>(global1.a, global1.a), !vec2<bool>(false, global1.a), vec2<bool>(false, global1.a)), select(!vec2<bool>(global1.a, true), vec2<bool>(true, true), !vec2<bool>(true, global0.a)), true), !global0.a));
    let var_3 = _wgslsmith_f_op_vec2_f32(round(var_2.b));
    global0 = Struct_1(false, _wgslsmith_mult_vec2_i32(global0.b, vec2<i32>(-(~global0.b.x), global1.b.x)), _wgslsmith_mod_vec4_u32(global1.e, ~max(global1.c, global0.c ^ global0.e)), abs(-((var_2.a | vec2<i32>(var_2.a.x, 1i)) >> (global1.e.ww % vec2<u32>(32u)))), vec4<u32>(~global1.c.x, 45433u, reverseBits(global1.c.x), 0u));
    return select(u_input.a.yw, vec2<i32>(_wgslsmith_mod_i32(-_wgslsmith_add_i32(15258i, -18505i), global1.b.x), firstLeadingBit(-23954i)), global1.a);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<f32>) -> bool {
    global1 = Struct_1(global0.a, u_input.b, vec4<u32>(45507u, ~min(0u, global1.e.x) << (_wgslsmith_div_u32(~arg_1.e.x, 1u) % 32u), ~max(_wgslsmith_div_u32(26732u, 4294967295u), ~0u), ~u_input.c | max(29006u, 48371u)), func_2(), vec4<u32>(0u, _wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 25350u), vec2<u32>(4294967295u, 4294967295u)), _wgslsmith_sub_u32(countOneBits(global0.e.x), reverseBits(0u))), ~firstTrailingBit(~0u), 1u));
    global0 = arg_1;
    let var_0 = u_input.a.xwx;
    global0 = Struct_1(select(_wgslsmith_f_op_f32(371f * _wgslsmith_f_op_f32(sign(arg_2.x))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1657f, arg_0.b.x, true))), !global0.a, all(vec2<bool>(!global0.a, all(vec4<bool>(false, true, arg_1.a, arg_1.a))))), select(vec2<i32>(_wgslsmith_clamp_i32(15801i, 1i, 0i) << (4023u % 32u), -(arg_0.a.x >> (global0.e.x % 32u))), vec2<i32>(global0.b.x, i32(-1i) * -6016i), true), global0.e, arg_0.a >> (_wgslsmith_sub_vec2_u32(reverseBits(global1.e.yx) ^ firstTrailingBit(vec2<u32>(global1.c.x, 0u)), vec2<u32>(min(1u, arg_1.e.x), ~arg_1.c.x)) % vec2<u32>(32u)), abs(_wgslsmith_sub_vec4_u32(~reverseBits(vec4<u32>(1u, u_input.c, u_input.c, global1.c.x)), vec4<u32>(countOneBits(global1.c.x), _wgslsmith_dot_vec2_u32(vec2<u32>(41588u, 0u), vec2<u32>(0u, global1.e.x)), 4898u, ~global0.c.x))));
    var var_1 = Struct_1(((global1.c.x << (28452u % 32u)) >> (abs(select(u_input.c, global0.e.x, false)) % 32u)) >= 1u, _wgslsmith_sub_vec2_i32(-u_input.a.yx, firstLeadingBit(var_0.zy)), firstTrailingBit(global0.c), vec2<i32>(_wgslsmith_clamp_i32(var_0.x << (4294967295u % 32u), u_input.b.x, arg_1.b.x), -16911i), _wgslsmith_sub_vec4_u32(abs(min(global0.c, vec4<u32>(arg_1.c.x, 4294967295u, 0u, global0.e.x))) << (countOneBits(countOneBits(arg_1.c)) % vec4<u32>(32u)), ~vec4<u32>(u_input.c | 4294967295u, arg_1.e.x, 35182u >> (0u % 32u), 89065u)));
    return !(!(!any(!vec4<bool>(arg_1.a, global0.a, global1.a, true))));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2) -> Struct_1 {
    let var_0 = Struct_1(true, global0.d, _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(global0.c.x, arg_0.x, 4128u, global0.c.x), vec4<u32>(4294967295u, arg_0.x, 29806u, 0u)), _wgslsmith_sub_vec4_u32(global0.c << (vec4<u32>(global1.c.x, 31098u, global0.c.x, u_input.c) % vec4<u32>(32u)), vec4<u32>(80013u, 1u, global0.c.x, global1.e.x))), global0.e), -(~arg_1.a) & _wgslsmith_add_vec2_i32(func_2(), reverseBits(global0.b)), select(~global1.e, global0.e, !(!select(vec4<bool>(global1.a, false, true, false), vec4<bool>(arg_1.c.x, false, false, true), vec4<bool>(true, global0.a, global0.a, true)))));
    let var_1 = arg_1;
    var var_2 = ~min(arg_0 & firstTrailingBit(global0.c.zyx), _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(select(global1.c.wwy, vec3<u32>(15990u, 0u, arg_0.x), vec3<bool>(true, false, global0.a)), vec3<u32>(var_0.e.x, 6809u, global1.c.x)), ~vec3<u32>(0u, 4294967295u, 15018u)));
    var var_3 = Struct_2(var_0.d, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(arg_1.b.x, var_1.b.x, any(vec4<bool>(global0.a, false, global0.a, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.b.x)) - 1f))), vec2<bool>(false, !(!var_0.a & false)));
    var_3 = var_1;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(global0.c.zwx, Struct_2(countOneBits(countOneBits(~vec2<i32>(u_input.a.x, global1.d.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-841f, 1569f)))), select(vec2<bool>(global0.a, func_1(Struct_2(vec2<i32>(34848i, global1.d.x), vec2<f32>(-113f, 346f), vec2<bool>(true, false)), Struct_1(true, vec2<i32>(-13900i, 2147483647i), global1.e, vec2<i32>(global1.d.x, u_input.b.x), vec4<u32>(global0.c.x, 0u, global0.e.x, global1.c.x)), vec4<f32>(-1816f, 1223f, 683f, -893f))), vec2<bool>(all(vec4<bool>(true, global1.a, global0.a, global1.a)), true), vec2<bool>(true, true))));
    var var_1 = select(!select(select(!vec4<bool>(false, global0.a, false, var_0.a), !vec4<bool>(global0.a, false, true, global1.a), select(vec4<bool>(global0.a, true, global1.a, false), vec4<bool>(global1.a, global0.a, true, false), false)), vec4<bool>(false, true, var_0.a, any(vec4<bool>(false, var_0.a, true, false))), (var_0.a || false) | any(vec4<bool>(true, true, global0.a, false))), select(vec4<bool>(_wgslsmith_f_op_f32(select(-1000f, -847f, true)) > _wgslsmith_f_op_f32(min(-1205f, -613f)), !any(vec4<bool>(global1.a, false, false, true)), select(any(vec3<bool>(true, global0.a, true)), func_1(Struct_2(vec2<i32>(13665i, 0i), vec2<f32>(297f, -770f), vec2<bool>(true, true)), Struct_1(true, vec2<i32>(global0.d.x, 10615i), vec4<u32>(u_input.c, 0u, global1.c.x, global0.e.x), var_0.b, vec4<u32>(0u, global0.e.x, 4329u, 1u)), vec4<f32>(1646f, -329f, 746f, 1096f)), true), true), select(select(vec4<bool>(true, global1.a, false, global1.a), vec4<bool>(true, global1.a, true, global1.a), vec4<bool>(global0.a, global0.a, global0.a, false)), select(vec4<bool>(global1.a, global0.a, var_0.a, true), select(vec4<bool>(global1.a, false, false, var_0.a), vec4<bool>(true, true, var_0.a, var_0.a), vec4<bool>(true, global1.a, global1.a, global0.a)), true), select(select(vec4<bool>(var_0.a, global1.a, global1.a, var_0.a), vec4<bool>(global0.a, var_0.a, false, global1.a), true), select(vec4<bool>(global1.a, var_0.a, var_0.a, false), vec4<bool>(true, global0.a, true, global1.a), true), !vec4<bool>(var_0.a, global0.a, var_0.a, true))), global0.a), select(vec4<bool>(1i != _wgslsmith_div_i32(-20277i, u_input.a.x), global0.a, false, false), !(!(!vec4<bool>(false, global0.a, true, false))), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(var_0.a, global1.a, global0.a, true), vec4<bool>(true, global0.a, true, true), vec4<bool>(global0.a, false, false, false)), !vec4<bool>(true, var_0.a, var_0.a, false)), select(vec4<bool>(var_0.a, true, var_0.a, var_0.a), vec4<bool>(false, true, global0.a, true), all(vec4<bool>(global1.a, var_0.a, true, true))), var_0.a)));
    var_1 = vec4<bool>(true, true, true, all(!vec3<bool>(!global0.a, global1.a, true)));
    let var_2 = Struct_2(_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(reverseBits(select(u_input.b, vec2<i32>(-1i, var_0.d.x), vec2<bool>(false, true))), vec2<i32>(-global1.d.x, ~0i)), -func_4(~var_0.c.xxx, Struct_2(vec2<i32>(1i, var_0.d.x), vec2<f32>(-1447f, 1033f), vec2<bool>(false, true))).d), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-1261f + -287f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2128f, 1632f))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-354f, _wgslsmith_f_op_f32(ceil(594f))))), _wgslsmith_f_op_f32(ceil(385f)) < 1f)), select(vec2<bool>(global0.a, false), select(var_1.yw, select(select(var_1.zy, vec2<bool>(true, true), global1.a), var_1.zw, !vec2<bool>(var_1.x, false)), true), vec2<bool>(true, var_0.a)));
    var var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_clamp_u32(var_0.c.x, u_input.c, 35546u), abs(0u), !any(!var_1.zz)), 1u, vec2<f32>(_wgslsmith_f_op_f32(min(var_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x)))), -744f), select(var_0.e.ww, var_0.c.wz, !select(var_1.yy, vec2<bool>(global0.a, false), func_1(Struct_2(var_0.b, vec2<f32>(-846f, 1395f), var_2.c), var_0, vec4<f32>(1550f, var_2.b.x, var_2.b.x, var_2.b.x)))), _wgslsmith_sub_u32(~(~_wgslsmith_mod_u32(u_input.c, 1u)), _wgslsmith_dot_vec3_u32(vec3<u32>(var_3.e.x, var_0.c.x, 10113u), abs(global1.e.wzy)) ^ 4294967295u));
}

