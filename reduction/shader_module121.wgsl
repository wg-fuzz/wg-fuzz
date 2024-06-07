struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: bool,
    d: u32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

var<private> global1: array<vec3<i32>, 18> = array<vec3<i32>, 18>(vec3<i32>(-10341i, 17267i, -8102i), vec3<i32>(20602i, -1i, 10393i), vec3<i32>(1i, i32(-2147483648), -1663i), vec3<i32>(-14765i, -2134i, 2147483647i), vec3<i32>(51253i, -17503i, 0i), vec3<i32>(0i, 7254i, 79364i), vec3<i32>(1128i, -34406i, 2147483647i), vec3<i32>(i32(-2147483648), -22465i, -42926i), vec3<i32>(-19448i, 19057i, 0i), vec3<i32>(-33528i, i32(-2147483648), 0i), vec3<i32>(0i, -1i, 29913i), vec3<i32>(0i, -1i, 2147483647i), vec3<i32>(0i, 8188i, -11512i), vec3<i32>(2147483647i, i32(-2147483648), 2147483647i), vec3<i32>(68493i, 48552i, 0i), vec3<i32>(0i, -45815i, -1i), vec3<i32>(-47646i, -36586i, 2853i), vec3<i32>(39065i, -1i, 1i));

var<private> global2: array<u32, 9>;

var<private> global3: array<vec3<bool>, 29> = array<vec3<bool>, 29>(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false));

var<private> global4: vec2<f32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1() -> f32 {
    var var_0 = vec2<i32>(-2147483647i, firstLeadingBit(reverseBits(u_input.b)) | u_input.b) | ~firstTrailingBit(vec2<i32>(1i, u_input.b) ^ vec2<i32>(-2147483647i, u_input.b));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1826f)));
}

fn func_3(arg_0: vec2<u32>) -> u32 {
    global2 = array<u32, 9>();
    var var_0 = Struct_1(all(select(select(!vec3<bool>(global0.x, global0.x, false), select(global3[_wgslsmith_index_u32(0u, 29u)], global3[_wgslsmith_index_u32(18246u, 29u)], vec3<bool>(true, global0.x, global0.x)), !global3[_wgslsmith_index_u32(arg_0.x, 29u)]), select(!vec3<bool>(true, global0.x, false), global3[_wgslsmith_index_u32(max(49169u, u_input.a.x), 29u)], !global0.x), select(!global3[_wgslsmith_index_u32(arg_0.x, 29u)], global3[_wgslsmith_index_u32(75809u, 29u)], !global0.x))), vec2<u32>(_wgslsmith_div_u32(arg_0.x, 1u), _wgslsmith_dot_vec4_u32(max(vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 9u)], 9u)], 9u)], u_input.a.x, u_input.a.x) & vec4<u32>(6896u, u_input.a.x, 64134u, u_input.a.x), max(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(98325u, 9u)], 9u)], arg_0.x, 59242u, 58906u), vec4<u32>(17179u, arg_0.x, arg_0.x, global2[_wgslsmith_index_u32(arg_0.x, 9u)]))), ~(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], 9u)], 1u, u_input.a.x, u_input.a.x) & vec4<u32>(0u, u_input.a.x, 72777u, 38038u)))), true, 51406u, ~abs(~vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 9u)], 9u)], 4294967295u, 4294967295u, u_input.a.x)));
    global0 = select(!vec2<bool>(!(global0.x || global0.x), false), !select(select(vec2<bool>(true, true), vec2<bool>(false, var_0.a), vec2<bool>(false, var_0.c)), select(vec2<bool>(true, true), !vec2<bool>(var_0.c, false), !vec2<bool>(global0.x, var_0.a)), vec2<bool>(all(vec4<bool>(global0.x, var_0.c, true, global0.x)), false)), !(!global0.x));
    let var_1 = arg_0.x;
    var var_2 = Struct_1((false && global0.x) & (abs(u_input.b ^ u_input.b) < ~(u_input.b << (arg_0.x % 32u))), ~(~min(vec2<u32>(var_0.b.x, 41375u), vec2<u32>(12162u, u_input.a.x))) & vec2<u32>(~_wgslsmith_dot_vec3_u32(var_0.e.wyz, var_0.e.yxy), ~arg_0.x), global0.x, var_1, vec4<u32>(~0u, 11534u, 15988u, _wgslsmith_dot_vec2_u32(u_input.a.xz ^ vec2<u32>(64777u, 17592u), vec2<u32>(arg_0.x, arg_0.x | 1u))));
    return _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(select(~var_0.e.zxx, _wgslsmith_mod_vec3_u32(~vec3<u32>(0u, 4294967295u, 126u), var_0.e.wxx), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_0.e.xzz | u_input.a, _wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.x, 1u, u_input.a.x), vec3<u32>(45431u, 0u, u_input.a.x))), 29u)]), abs(vec3<u32>(u_input.a.x, _wgslsmith_dot_vec4_u32(var_0.e, vec4<u32>(u_input.a.x, 1u, 4294967295u, 1u)), firstLeadingBit(0u)))), 0u, 0u);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(!global0.x, ~(~u_input.a.xy), (global0.x || ((-1097f == global4.x) == global0.x)) || true, func_3(vec2<u32>(_wgslsmith_sub_u32(~0u, 43625u), 1u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(27988u, 9u)], u_input.a.x, u_input.a.x) >> ((vec4<u32>(0u, 1u, 1u, global2[_wgslsmith_index_u32(0u, 9u)]) << (vec4<u32>(u_input.a.x, 0u, u_input.a.x, global2[_wgslsmith_index_u32(25028u, 9u)]) % vec4<u32>(32u))) % vec4<u32>(32u)), ~vec4<u32>(87958u, global2[_wgslsmith_index_u32(u_input.a.x, 9u)], global2[_wgslsmith_index_u32(68854u, 9u)], u_input.a.x)));
    var var_1 = Struct_1(global4.x != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(806f - global4.x), _wgslsmith_f_op_f32(step(699f, global4.x))))), reverseBits(~vec2<u32>(reverseBits(18878u), var_0.b.x)), ~(~(-1i)) < ~_wgslsmith_sub_i32(~u_input.b, _wgslsmith_add_i32(1i, u_input.b)), ~(~(~(~var_0.d))), min(~reverseBits(~vec4<u32>(1u, u_input.a.x, global2[_wgslsmith_index_u32(0u, 9u)], 33876u)), vec4<u32>(var_0.b.x, var_0.b.x, u_input.a.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4467u, 4294967295u, u_input.a.x), var_0.e.zzz), min(1u, global2[_wgslsmith_index_u32(97095u, 9u)])))));
    var var_2 = _wgslsmith_dot_vec2_u32(firstTrailingBit(~vec2<u32>(var_1.e.x, var_0.d)), vec2<u32>(1u, 20109u));
    let var_3 = Struct_1(global0.x, reverseBits(~vec2<u32>(33453u, u_input.a.x)) & ~_wgslsmith_mult_vec2_u32(countOneBits(var_0.e.xx), var_0.e.xw), all(vec3<bool>(var_1.c, var_1.c, global0.x || all(vec4<bool>(true, var_1.c, var_1.c, false)))), var_0.b.x, max(var_1.e, vec4<u32>(_wgslsmith_mod_u32(~1u, ~u_input.a.x), u_input.a.x, 4294967295u, _wgslsmith_mult_u32(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.e.x, 9u)], 9u)], var_0.b.x), 1194u))));
    let var_4 = !select(!(!select(vec4<bool>(false, true, var_0.c, true), vec4<bool>(false, false, true, var_0.c), vec4<bool>(var_0.a, true, false, var_0.a))), !select(select(vec4<bool>(false, var_0.a, false, false), vec4<bool>(true, true, false, var_0.c), vec4<bool>(true, global0.x, true, true)), !vec4<bool>(true, true, false, var_3.a), !vec4<bool>(var_3.c, var_1.c, var_0.a, false)), select(any(select(vec2<bool>(var_0.c, var_3.c), vec2<bool>(false, var_1.c), true)), var_1.c, false));
    return Struct_1(true, ~vec2<u32>(_wgslsmith_sub_u32(0u, u_input.a.x), var_3.d), true, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~var_0.b.x, global2[_wgslsmith_index_u32(0u >> (global2[_wgslsmith_index_u32(34970u, 9u)] % 32u), 9u)], 4294967295u), vec3<u32>(_wgslsmith_dot_vec2_u32(var_3.e.zy, var_0.e.ww), min(31931u, u_input.a.x), u_input.a.x)), _wgslsmith_mult_u32(~(~var_1.b.x), 0u)), ~_wgslsmith_mod_vec4_u32(~abs(vec4<u32>(37582u, 1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(104064u, 9u)], 9u)], global2[_wgslsmith_index_u32(u_input.a.x, 9u)])), ~var_0.e));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(global4.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -389f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(trunc(global4.x))) * global4.x), false)), _wgslsmith_f_op_f32(func_1()), global4.x);
    global3 = array<vec3<bool>, 29>();
    let var_1 = func_2();
    global1 = array<vec3<i32>, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_i32(vec2<i32>(22041i << (var_1.e.x % 32u), u_input.b), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(2147483647i, u_input.b)) << (firstTrailingBit(vec2<u32>(61210u, 4294967295u)) % vec2<u32>(32u))) & vec2<i32>(u_input.b, u_input.b), ~u_input.b, vec3<f32>(-379f, global4.x, -1234f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(f32(-1f) * -2453f), all(global3[_wgslsmith_index_u32(0u, 29u)]))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-810f * global4.x))));
}

