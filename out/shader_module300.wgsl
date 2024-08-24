struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: vec4<i32>,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -33236i;

var<private> global1: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(-1i, false, vec4<i32>(1i, 0i, -1i, 5811i), vec2<u32>(33481u, 0u), Struct_1(1u)), Struct_2(1i, false, vec4<i32>(-12215i, -15757i, -1i, i32(-2147483648)), vec2<u32>(29861u, 1u), Struct_1(1u)), Struct_2(-68632i, true, vec4<i32>(i32(-2147483648), i32(-2147483648), -19591i, -1i), vec2<u32>(4294967295u, 0u), Struct_1(4356u)), Struct_2(1i, true, vec4<i32>(2147483647i, 2147483647i, 27384i, 59424i), vec2<u32>(1u, 99249u), Struct_1(67238u)), Struct_2(i32(-2147483648), false, vec4<i32>(16610i, 29002i, 0i, 1i), vec2<u32>(66207u, 4294967295u), Struct_1(0u)));

var<private> global2: Struct_1 = Struct_1(14427u);

var<private> global3: array<Struct_3, 10> = array<Struct_3, 10>(Struct_3(vec3<i32>(13417i, 5856i, -11679i), vec2<u32>(4294967295u, 1322u), 57395u), Struct_3(vec3<i32>(8726i, -27529i, 3998i), vec2<u32>(4294967295u, 4294967295u), 0u), Struct_3(vec3<i32>(2147483647i, -16852i, -5646i), vec2<u32>(114082u, 34138u), 1u), Struct_3(vec3<i32>(-3170i, -3138i, 17280i), vec2<u32>(1u, 0u), 0u), Struct_3(vec3<i32>(-23355i, i32(-2147483648), 2147483647i), vec2<u32>(0u, 8560u), 23488u), Struct_3(vec3<i32>(2147483647i, 34186i, 2147483647i), vec2<u32>(0u, 152u), 11858u), Struct_3(vec3<i32>(2147483647i, i32(-2147483648), 0i), vec2<u32>(1u, 4294967295u), 1u), Struct_3(vec3<i32>(2147483647i, i32(-2147483648), -30018i), vec2<u32>(58263u, 0u), 14936u), Struct_3(vec3<i32>(1i, 9720i, -43855i), vec2<u32>(1u, 64795u), 0u), Struct_3(vec3<i32>(2147483647i, -11934i, 2147483647i), vec2<u32>(1u, 18780u), 29072u));

var<private> global4: array<bool, 27>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2() -> u32 {
    var var_0 = Struct_1(firstTrailingBit(u_input.c.x) | u_input.c.x);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -628f) + 363f), _wgslsmith_f_op_f32(-1616f * 1f));
    global3 = array<Struct_3, 10>();
    global2 = Struct_1(~u_input.c.x);
    return global2.a;
}

fn func_3(arg_0: i32) -> i32 {
    global2 = Struct_1(global2.a);
    var var_0 = global1[_wgslsmith_index_u32(1u, 5u)];
    var var_1 = global1[_wgslsmith_index_u32(47624u, 5u)];
    var var_2 = -1i & ~var_0.c.x;
    global4 = array<bool, 27>();
    return 2147483647i >> (func_2() % 32u);
}

fn func_1() -> i32 {
    let var_0 = Struct_2(2147483647i, true, select((~vec4<i32>(u_input.b, 1i, 19112i, u_input.a) << (~vec4<u32>(45877u, 4294967295u, u_input.c.x, u_input.c.x) % vec4<u32>(32u))) | _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, 2147483647i, u_input.a, u_input.a), vec4<i32>(u_input.b, u_input.b, u_input.a, u_input.b)), _wgslsmith_div_vec4_i32(vec4<i32>(8578i, u_input.a, -29772i, -33094i), vec4<i32>(u_input.a, u_input.a, 107112i, -47157i))), (abs(vec4<i32>(u_input.a, u_input.b, u_input.b, 0i)) << (~vec4<u32>(global2.a, u_input.c.x, 42711u, 23804u) % vec4<u32>(32u))) << (firstTrailingBit(~vec4<u32>(u_input.c.x, global2.a, global2.a, global2.a)) % vec4<u32>(32u)), global4[_wgslsmith_index_u32(1u, 27u)]), ~_wgslsmith_mod_vec2_u32(u_input.c, select(vec2<u32>(4294967295u, 4462u), u_input.c >> (vec2<u32>(u_input.c.x, global2.a) % vec2<u32>(32u)), global4[_wgslsmith_index_u32(0u, 27u)] == true)), Struct_1(func_2() << (firstTrailingBit(~60834u) % 32u)));
    var var_1 = Struct_2(countOneBits(u_input.b), any(vec2<bool>(true, true)), vec4<i32>(u_input.b, abs(var_0.a & _wgslsmith_clamp_i32(var_0.a, -1i, -28768i)), -2147483647i, (-u_input.b ^ _wgslsmith_dot_vec4_i32(var_0.c, vec4<i32>(var_0.c.x, -4993i, u_input.b, 7047i))) & -func_3(var_0.a)), _wgslsmith_clamp_vec2_u32(max(~(var_0.d | var_0.d), abs(var_0.d)), vec2<u32>(23578u, 4294967295u), ~vec2<u32>(1u, _wgslsmith_add_u32(76856u, 14782u))), Struct_1(u_input.c.x));
    var var_2 = vec4<i32>(18275i, var_1.a, select(_wgslsmith_div_i32(_wgslsmith_sub_i32(-47401i, ~var_1.a), -_wgslsmith_sub_i32(u_input.a, -1i)), var_1.a, !global4[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, global2.a), 27u)] || false), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(abs(var_0.c.x), select(var_0.c.x, 29463i, true)), _wgslsmith_mod_vec2_i32(-var_0.c.wy, var_0.c.yy)), var_1.c.yz));
    return 0i >> (~countOneBits(_wgslsmith_mult_u32(firstTrailingBit(u_input.c.x), u_input.c.x)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global4[_wgslsmith_index_u32(4294967295u, 27u)];
    let var_1 = false;
    global1 = array<Struct_2, 5>();
    var var_2 = ~u_input.b;
    var var_3 = select(vec3<i32>(_wgslsmith_mult_i32(u_input.b, -abs(u_input.b)), -1735i, ~2147483647i), vec3<i32>(75340i, reverseBits(27759i), func_1() & 45633i), any(!select(vec3<bool>(var_1, true, false), vec3<bool>(false, false, var_1), vec3<bool>(true, var_1, global4[_wgslsmith_index_u32(u_input.c.x, 27u)]))) != false);
    var var_4 = global3[_wgslsmith_index_u32(func_2(), 10u)];
    var var_5 = var_1;
    var var_6 = Struct_3(vec3<i32>(-(var_4.a.x | select(var_4.a.x, -2147483647i, global4[_wgslsmith_index_u32(u_input.c.x, 27u)])), _wgslsmith_dot_vec3_i32(vec3<i32>(~u_input.b, func_1(), ~2147483647i), (vec3<i32>(76805i, 1i, var_4.a.x) & vec3<i32>(var_4.a.x, var_4.a.x, var_3.x)) & var_4.a), u_input.b), var_4.b, _wgslsmith_dot_vec4_u32(abs(abs(vec4<u32>(1u, var_4.c, 12506u, global2.a)) >> (reverseBits(vec4<u32>(u_input.c.x, var_4.c, var_4.b.x, 18105u)) % vec4<u32>(32u))), abs(~min(vec4<u32>(u_input.c.x, global2.a, 52881u, 4294967295u), vec4<u32>(58833u, 65428u, u_input.c.x, global2.a)))));
    var var_7 = Struct_1(_wgslsmith_dot_vec3_u32(select(~vec3<u32>(var_6.b.x, 4294967295u, global2.a) & ~vec3<u32>(var_4.b.x, u_input.c.x, 42462u), _wgslsmith_add_vec3_u32(abs(vec3<u32>(var_4.c, var_4.c, u_input.c.x)), firstTrailingBit(vec3<u32>(var_4.b.x, 0u, u_input.c.x))), !global4[_wgslsmith_index_u32(countOneBits(u_input.c.x), 27u)]), vec3<u32>(4294967295u, _wgslsmith_mult_u32(1u, 51097u), ~global2.a) << ((~vec3<u32>(u_input.c.x, global2.a, 33236u) ^ max(vec3<u32>(global2.a, global2.a, var_6.c), vec3<u32>(9118u, 42794u, 41294u))) % vec3<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-360f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-176f * -1578f), _wgslsmith_f_op_f32(select(1054f, 616f, global4[_wgslsmith_index_u32(var_4.b.x, 27u)])), true)), _wgslsmith_f_op_f32(ceil(-1198f)))), ~abs(var_4.a.xz));
}

