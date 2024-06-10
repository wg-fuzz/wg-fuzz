struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec4<bool>(true, false, true, true), vec2<bool>(true, false)), 63389u, Struct_1(vec4<bool>(true, true, false, false), vec2<bool>(false, true)), vec3<u32>(1u, 1u, 1u));

var<private> global1: vec3<bool>;

var<private> global2: array<vec2<i32>, 9> = array<vec2<i32>, 9>(vec2<i32>(3181i, -67955i), vec2<i32>(-1i, 27484i), vec2<i32>(1i, 0i), vec2<i32>(18193i, -1i), vec2<i32>(i32(-2147483648), -17068i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(-36105i, -3148i), vec2<i32>(37888i, 2147483647i), vec2<i32>(i32(-2147483648), 18821i));

var<private> global3: array<vec3<i32>, 13> = array<vec3<i32>, 13>(vec3<i32>(1i, -1i, 46092i), vec3<i32>(8041i, -15917i, 38318i), vec3<i32>(i32(-2147483648), 2147483647i, -2404i), vec3<i32>(-34185i, -7796i, 6118i), vec3<i32>(-16348i, 5650i, 20640i), vec3<i32>(-10886i, -1i, i32(-2147483648)), vec3<i32>(-26393i, 9657i, -1i), vec3<i32>(1i, -6437i, i32(-2147483648)), vec3<i32>(38742i, 49065i, 48784i), vec3<i32>(-9897i, -23525i, i32(-2147483648)), vec3<i32>(-19139i, -1i, 1i), vec3<i32>(0i, 76932i, 2147483647i), vec3<i32>(0i, -45631i, -37264i));

var<private> global4: array<vec3<f32>, 23>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> f32 {
    let var_0 = firstLeadingBit(34307u);
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1374f + _wgslsmith_f_op_f32(-1000f + 441f))))), 18164i);
    global0 = Struct_2(global0.c, _wgslsmith_dot_vec4_u32(select(_wgslsmith_div_vec4_u32(select(vec4<u32>(39053u, 5507u, 0u, 7533u), vec4<u32>(24943u, var_0, 22975u, var_0), vec4<bool>(true, global0.c.a.x, true, global0.a.a.x)), vec4<u32>(var_0, global0.b, 4294967295u, 23459u)), vec4<u32>(1u, var_0, var_0, global0.b & global0.b), vec4<bool>(!global0.a.a.x, -2147483647i > var_1.b, true, true)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(27453u, 17227u, 1u, var_0), vec4<u32>(60981u, 4294967295u, 76452u, global0.d.x) | vec4<u32>(var_0, var_0, 23631u, 0u)), 83319u, 16975u, max(global0.b, global0.b))), Struct_1(!global0.a.a, select(global1.yx, vec2<bool>(global0.c.b.x, global0.a.a.x), !global1.x)), _wgslsmith_add_vec3_u32(global0.d, ~select(~vec3<u32>(global0.d.x, var_0, 114563u), vec3<u32>(var_0, var_0, 3209u), global1.x)));
    global0 = Struct_2(global0.c, ~((var_0 | 1u) << (var_0 % 32u)) >> (1u % 32u), Struct_1(select(select(!vec4<bool>(global1.x, true, false, global1.x), select(global0.c.a, global0.c.a, global1.x), select(vec4<bool>(false, global0.a.a.x, true, false), global0.c.a, global0.a.a)), select(global0.c.a, !global0.a.a, global0.c.a), all(global0.a.a)), select(select(select(global0.c.a.zy, global1.zx, vec2<bool>(global0.c.a.x, false)), select(vec2<bool>(true, false), global1.zy, true), !global0.c.b.x), global0.a.a.yz, true)), ~abs(~(~global0.d)));
    global1 = select(global0.a.a.wzy, global0.a.a.xwx, global0.a.a.yzy);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)));
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> Struct_3 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))) - _wgslsmith_f_op_f32(-arg_1)), abs(2147483647i));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(_wgslsmith_div_f32(610f, var_0.a) + _wgslsmith_div_f32(arg_1, -930f))) - _wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_0.a, var_0.a), _wgslsmith_f_op_f32(exp2(arg_1)), var_0.a < -482f)))), var_0.b);
    var var_2 = all(vec4<bool>(!(true == any(global0.c.a.yx)), !global1.x, select(select(true, false, false), true, all(global0.c.a)) & global0.a.a.x, true));
    var var_3 = Struct_2(Struct_1(arg_0.c.a, !select(select(vec2<bool>(global0.a.b.x, false), vec2<bool>(global1.x, global1.x), arg_0.c.b), vec2<bool>(true, true), global1.yz)), ~_wgslsmith_add_u32(14694u, global0.d.x), Struct_1(select(global0.a.a, !select(arg_0.c.a, vec4<bool>(false, global1.x, true, false), vec4<bool>(true, global0.c.b.x, arg_0.c.b.x, true)), global0.a.b.x), select(select(select(global1.xx, vec2<bool>(false, global0.a.a.x), false), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(global0.a.a.x, true), arg_0.d.x >= global0.d.x), true)), ~_wgslsmith_mult_vec3_u32(~vec3<u32>(arg_0.b, 13168u, arg_0.d.x), arg_0.d));
    let var_4 = var_1;
    return var_4;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec2<bool>, arg_3: Struct_3) -> Struct_1 {
    let var_0 = arg_0;
    global2 = array<vec2<i32>, 9>();
    global0 = Struct_2(global0.c, ~global0.b, Struct_1(vec4<bool>(any(global0.c.a), true, arg_2.x, false), vec2<bool>(!all(global0.a.a), global1.x)), ~_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(14947u, global0.d.x, global0.d.x), ~global0.d), abs(_wgslsmith_mult_vec3_u32(global0.d, vec3<u32>(11899u, 0u, 6787u)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-615f, arg_3.a)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.a, arg_1.a), vec2<f32>(-2700f, var_0.a))), all(global0.a.a))), vec2<f32>(_wgslsmith_f_op_f32(var_0.a * arg_0.a), arg_0.a), !arg_2.x)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_1.a, 321f), vec2<f32>(2062f, 105f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, -833f)), vec2<bool>(arg_2.x, false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(672f, arg_0.a), vec2<f32>(-949f, var_0.a), global0.c.b.x))))))));
    var var_2 = arg_0.a;
    return Struct_1(select(global0.a.a, global0.a.a, _wgslsmith_f_op_f32(func_3()) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.a, arg_3.a, true)))), select(!global1.xz, select(vec2<bool>(arg_1.a > 1164f, !global1.x), select(select(vec2<bool>(true, global1.x), vec2<bool>(arg_2.x, global1.x), global1.zx), vec2<bool>(true, false), false | global1.x), !select(global0.a.a.xw, global1.zy, global1.x)), !(!select(true, global1.x, true))));
}

fn func_5(arg_0: Struct_2) -> u32 {
    let var_0 = vec2<i32>(reverseBits(~_wgslsmith_sub_i32(-2147483647i, u_input.a)), 5777i);
    global3 = array<vec3<i32>, 13>();
    let var_1 = vec2<u32>(4294967295u, ~_wgslsmith_clamp_u32(0u, select(_wgslsmith_add_u32(global0.b, arg_0.b), select(15871u, 1u, global1.x), 0u != arg_0.d.x), _wgslsmith_sub_u32(0u, _wgslsmith_div_u32(1u, global0.d.x))));
    global1 = !arg_0.a.a.zzy;
    var var_2 = min(~min(vec4<u32>(var_1.x, global0.d.x, 4294967295u, 161870u) | vec4<u32>(304u, var_1.x, global0.b, arg_0.b), reverseBits(vec4<u32>(global0.b, global0.d.x, global0.d.x, 4294967295u))) ^ abs(vec4<u32>(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(19318u, arg_0.d.x, global0.b, 0u), vec4<u32>(54464u, var_1.x, global0.d.x, 1u)), 10051u, global0.b << (var_1.x % 32u))), ~abs(reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.d.x, 28031u, global0.d.x, var_1.x), vec4<u32>(4294967295u, 4294967295u, 0u, global0.b)))));
    return 34406u;
}

fn func_1(arg_0: Struct_3, arg_1: bool) -> vec4<i32> {
    global3 = array<vec3<i32>, 13>();
    let var_0 = global2[_wgslsmith_index_u32(~func_5(Struct_2(func_4(arg_0, arg_0, select(global1.zz, global0.a.b, false), func_2(Struct_2(Struct_1(vec4<bool>(global0.c.a.x, global0.a.b.x, false, arg_1), vec2<bool>(false, global0.a.a.x)), 39428u, Struct_1(vec4<bool>(false, false, global0.c.b.x, global1.x), vec2<bool>(false, arg_1)), global0.d), arg_0.a)), ~_wgslsmith_mult_u32(global0.d.x, 11747u), Struct_1(select(global0.a.a, vec4<bool>(global0.a.b.x, true, arg_1, global1.x), global0.a.a), select(vec2<bool>(arg_1, global1.x), vec2<bool>(global0.a.a.x, global1.x), vec2<bool>(false, arg_1))), vec3<u32>(global0.b, global0.b, global0.d.x) << (~vec3<u32>(25395u, global0.b, global0.b) % vec3<u32>(32u)))), 9u)];
    return max(~(vec4<i32>(var_0.x, arg_0.b, 65805i, -35134i) >> (vec4<u32>(countOneBits(1u), _wgslsmith_dot_vec3_u32(vec3<u32>(global0.d.x, global0.b, 4294967295u), global0.d), global0.d.x, reverseBits(global0.b)) % vec4<u32>(32u))), vec4<i32>(-14039i, -(u_input.a >> (abs(global0.b) % 32u)), 0i, ~var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec3<f32>, 23>();
    let var_0 = all(global1.yz);
    var var_1 = -_wgslsmith_div_vec4_i32(~firstLeadingBit(-vec4<i32>(u_input.a, u_input.a, -51330i, u_input.a)), max(vec4<i32>(u_input.a, 2147483647i, u_input.a, 38614i) | vec4<i32>(u_input.a, u_input.a, -1i, u_input.a), vec4<i32>(firstTrailingBit(u_input.a), 2147483647i & u_input.a, ~u_input.a, i32(-1i) * -13546i)));
    global0 = Struct_2(Struct_1(!global0.c.a, vec2<bool>(var_0, var_0)), 24415u << (global0.d.x % 32u), Struct_1(!(!select(global0.c.a, global0.c.a, false)), !global0.a.b), ~_wgslsmith_add_vec3_u32(vec3<u32>(global0.b, global0.d.x, global0.b) ^ vec3<u32>(48665u, 1u, global0.b), global0.d));
    var var_2 = ~_wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.x, -1i, _wgslsmith_dot_vec4_i32(func_1(Struct_3(-580f, 0i), global1.x), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.a, 11355i, var_1.x), vec4<i32>(u_input.a, u_input.a, var_1.x, 23873i)))), ~abs(~vec3<i32>(2147483647i, var_1.x, var_1.x)), vec3<i32>(-17293i, var_1.x, u_input.a) >> (vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.d.x, global0.d.x, 4294967295u, global0.b), vec4<u32>(global0.b, global0.d.x, 0u, global0.d.x)), 1u, global0.b) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, abs(abs(~(-vec4<i32>(u_input.a, var_2.x, var_2.x, 77509i)))), _wgslsmith_dot_vec3_i32(-var_1.xzw, var_1.zwz ^ (var_1.yzw << (vec3<u32>(global0.d.x, 29513u, 53250u) % vec3<u32>(32u)))) & var_1.x);
}

