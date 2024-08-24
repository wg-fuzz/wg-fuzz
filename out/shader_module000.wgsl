struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<u32>,
    d: f32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<Struct_3, 1>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec3<bool>) -> vec2<u32> {
    let var_0 = arg_1.b;
    let var_1 = ~vec4<u32>(arg_1.e.x << (abs(arg_1.c.x) % 32u), global0.x, _wgslsmith_dot_vec3_u32(global0.zxw, firstLeadingBit(global0.zxw)), abs(58712u));
    global0 = _wgslsmith_add_vec4_u32(u_input.b, vec4<u32>(~1u, global0.x, 41092u, 1u)) >> (select(~u_input.b, vec4<u32>(~65012u, _wgslsmith_mult_u32(~4294967295u, ~var_1.x), ~(~0u), ~reverseBits(global0.x)), !select(select(vec4<bool>(true, false, arg_2.x, true), vec4<bool>(arg_2.x, arg_2.x, false, arg_2.x), false), select(vec4<bool>(true, true, false, arg_2.x), vec4<bool>(false, false, arg_2.x, true), false), true)) % vec4<u32>(32u));
    global1 = array<Struct_3, 1>();
    var var_2 = _wgslsmith_f_op_f32(ceil(arg_0));
    return _wgslsmith_sub_vec2_u32(u_input.a, countOneBits(vec2<u32>(25732u, arg_1.e.x)));
}

fn func_4(arg_0: vec2<u32>) -> i32 {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -241f);
    var var_2 = vec2<bool>(_wgslsmith_sub_i32(63862i, _wgslsmith_mod_i32(20281i, ~21832i)) > _wgslsmith_dot_vec3_i32(vec3<i32>(39483i, ~(-1i), select(0i, 17560i, false)), _wgslsmith_add_vec3_i32(abs(vec3<i32>(21651i, -1i, 1i)), vec3<i32>(-43353i, 0i, 1i))), var_0 | true);
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(firstLeadingBit(9435u) | _wgslsmith_div_u32(~57853u, ~u_input.a.x), 29013u) << (17399u % 32u), 1u)];
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-584f - 1516f)))) * var_1);
    return firstTrailingBit(firstTrailingBit(var_3.c.b));
}

fn func_2() -> u32 {
    global1 = array<Struct_3, 1>();
    global0 = abs(~countOneBits(u_input.b) ^ reverseBits(~select(u_input.b, vec4<u32>(1u, 70819u, u_input.b.x, 1u), vec4<bool>(true, false, false, true))));
    var var_0 = func_4(~func_3(-1263f, Struct_1(1000f, -19958i, u_input.a, 1155f, u_input.b.xxz), vec3<bool>(true, false, true)) << (global0.ww % vec2<u32>(32u))) < max(~firstTrailingBit(-44650i) ^ -_wgslsmith_dot_vec2_i32(vec2<i32>(2553i, 23817i), vec2<i32>(-2147483647i, -1i)), _wgslsmith_dot_vec2_i32(firstTrailingBit(select(vec2<i32>(2147483647i, -2147483647i), vec2<i32>(48856i, 40536i), vec2<bool>(false, false))), vec2<i32>(_wgslsmith_div_i32(0i, 13180i), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 779i, 56363i, -477i), vec4<i32>(-1i, -2147483647i, 2147483647i, 61257i)))));
    let var_1 = false;
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, ~(~1u)) << (~(~0u) % 32u), 1u)];
    return firstLeadingBit(32192u);
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: vec4<f32>, arg_3: vec2<u32>) -> Struct_2 {
    global1 = array<Struct_3, 1>();
    global0 = select(vec4<u32>(arg_3.x, func_2(), min(abs(global0.x), 0u), ~_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.b.x, arg_0), arg_0 ^ 4294967295u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(~91619u, arg_0, arg_3.x, 80459u), u_input.b ^ ~(~vec4<u32>(4294967295u, arg_0, 46085u, global0.x)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, 2552u, global0.x, 25681u), vec4<u32>(0u, u_input.a.x, 4294967295u, arg_3.x)) << (~vec4<u32>(global0.x, 33449u, global0.x, 86953u) % vec4<u32>(32u))), vec4<bool>(select(true, false, true), false, false, false));
    global0 = vec4<u32>(func_2(), ~abs(arg_0), _wgslsmith_add_u32(_wgslsmith_mult_u32(34149u, global0.x), arg_3.x), func_2());
    let var_0 = vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(1188i, reverseBits(-17694i), arg_1), func_4(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 4294967295u), min(vec2<u32>(4294967295u, arg_3.x), global0.xx)))), -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(~_wgslsmith_div_i32(arg_1, 1i), -2147483647i, arg_1 & min(-78986i, arg_1), arg_1), _wgslsmith_div_vec4_i32(select(~vec4<i32>(-23255i, 2147483647i, -2147483647i, arg_1), vec4<i32>(arg_1, -10455i, -2147483647i, -1i) & vec4<i32>(-2833i, arg_1, arg_1, arg_1), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false))), vec4<i32>(arg_1, 2147483647i, countOneBits(-27785i), ~2147483647i))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_2.x, -1000f))), firstLeadingBit(_wgslsmith_add_i32(45207i, var_0.x | -2481i)), max(~(~u_input.b.xz), global0.wz), _wgslsmith_f_op_f32(arg_2.x * 1000f), abs(u_input.b.zww)));
    return Struct_2(var_1.a);
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    global1 = array<Struct_3, 1>();
    var var_0 = Struct_2(arg_0.a);
    global1 = array<Struct_3, 1>();
    global0 = min(u_input.b, u_input.b ^ reverseBits(vec4<u32>(var_0.a.c.x, 0u, 1u, global0.x) ^ (u_input.b | vec4<u32>(arg_0.a.e.x, global0.x, 4294967295u, 4294967295u))));
    global0 = ~vec4<u32>(~0u, 40223u, ~func_1(~1u, arg_0.a.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-846f, -1000f, 1367f, var_0.a.d)), max(vec2<u32>(1u, 1u), var_0.a.c)).a.c.x, 0u << (arg_0.a.e.x % 32u));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(min(45378u, 0u) >= (~(~u_input.a.x) & 60137u));
    var var_1 = global1[_wgslsmith_index_u32(u_input.b.x, 1u)];
    var var_2 = abs(u_input.b);
    var var_3 = func_5(func_1(u_input.a.x, _wgslsmith_mult_i32(firstLeadingBit(var_1.c.b), _wgslsmith_mod_i32(var_1.d.a.b, -2147483647i)) >> (abs(~23905u) % 32u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(929f, var_1.d.a.a, var_1.a.a.d, -444f))))), var_2.yw));
    var var_4 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(func_1(~(86721u & ~var_2.x), _wgslsmith_dot_vec4_i32(~vec4<i32>(53058i, var_1.c.b, var_1.b.a.b, 2147483647i) >> (~vec4<u32>(24u, 15398u, 12195u, global0.x) % vec4<u32>(32u)), vec4<i32>(-12823i, func_1(var_3.a.c.x, 2147483647i, vec4<f32>(var_3.a.d, var_1.c.a, 1088f, 477f), vec2<u32>(5141u, var_2.x)).a.b, _wgslsmith_mult_i32(var_1.d.a.b, -1i), var_1.d.a.b)), vec4<f32>(_wgslsmith_f_op_f32(round(-513f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-255f * var_1.a.a.d), _wgslsmith_f_op_f32(step(1000f, -407f)))), func_1(u_input.a.x << (global0.x % 32u), ~var_1.b.a.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.a.d, -795f, var_1.b.a.a, 223f)), u_input.b.wz << (vec2<u32>(var_2.x, 35950u) % vec2<u32>(32u))).a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_3.a.a)))), ~vec2<u32>(select(4294967295u, var_2.x, true), u_input.b.x)).a.e.x, u_input.b.ww, _wgslsmith_mod_vec2_u32(vec2<u32>(~var_1.b.a.c.x, ~(~1u)), firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(global0.x, 3081u), var_1.b.a.e.yz))), _wgslsmith_add_u32(abs(16435u), firstLeadingBit(4294967295u)), firstLeadingBit(select(firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(var_1.b.a.b, var_1.a.a.b, 0i, 0i), vec4<i32>(var_3.a.b, -1i, 2147483647i, 108165i))), ~vec4<i32>(1i, var_3.a.b, var_3.a.b, 9358i), !var_0 || all(vec2<bool>(true, true)))));
}

