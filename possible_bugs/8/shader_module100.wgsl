struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: i32,
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

var<private> global0: array<Struct_1, 7>;

var<private> global1: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec4<u32>(1u, 48827u, 96905u, 51326u), vec4<i32>(34750i, -35677i, -48122i, 1i), 15546i), Struct_1(vec4<u32>(57857u, 44608u, 4294967295u, 23267u), vec4<i32>(37006i, 2147483647i, -53739i, 20612i), 0i), Struct_1(vec4<u32>(4294967295u, 11835u, 71393u, 20982u), vec4<i32>(2147483647i, 1i, -1i, 0i), -24994i), Struct_1(vec4<u32>(22014u, 47688u, 80696u, 42019u), vec4<i32>(52690i, 0i, i32(-2147483648), 1i), -1i), Struct_1(vec4<u32>(1u, 0u, 32161u, 15187u), vec4<i32>(-1i, 17643i, i32(-2147483648), -20602i), 1450i), Struct_1(vec4<u32>(42255u, 0u, 4294967295u, 1359u), vec4<i32>(i32(-2147483648), -20229i, 37902i, 29775i), -1i), Struct_1(vec4<u32>(18406u, 100608u, 0u, 22818u), vec4<i32>(-73872i, 1i, 18464i, 21827i), -44851i), Struct_1(vec4<u32>(1u, 113057u, 1u, 3421u), vec4<i32>(-7100i, -1i, -14720i, 3627i), i32(-2147483648)), Struct_1(vec4<u32>(0u, 1u, 86315u, 27328u), vec4<i32>(1i, 8614i, i32(-2147483648), 0i), 16481i), Struct_1(vec4<u32>(4035u, 4294967295u, 42199u, 38664u), vec4<i32>(1i, 142i, -17064i, 2172i), -49126i), Struct_1(vec4<u32>(15797u, 4294967295u, 3860u, 22223u), vec4<i32>(-30724i, 0i, 39715i, 31673i), 21335i), Struct_1(vec4<u32>(5679u, 4294967295u, 0u, 83412u), vec4<i32>(-1i, 40822i, -22248i, -51993i), 0i), Struct_1(vec4<u32>(1u, 4885u, 1u, 18692u), vec4<i32>(0i, -1i, 0i, -1i), -34781i), Struct_1(vec4<u32>(0u, 17584u, 42047u, 4294967295u), vec4<i32>(31192i, 0i, 0i, -46500i), 20455i));

var<private> global2: i32;

var<private> global3: bool;

var<private> global4: Struct_1 = Struct_1(vec4<u32>(17347u, 9918u, 23714u, 1u), vec4<i32>(-53566i, -14402i, 2147483647i, 56787i), -7475i);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<i32>, arg_1: u32, arg_2: bool) -> u32 {
    var var_0 = vec2<i32>(countOneBits(-35423i), _wgslsmith_div_i32(0i << (~u_input.a.x % 32u), -_wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.b, arg_0.x, global4.c, global4.b.x)), vec4<i32>(2147483647i, global4.c, arg_0.x, u_input.c.x))));
    global4 = Struct_1(abs(global4.a), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(~(-2963i), 37242i, 2147483647i), ~global4.b.zxw & vec3<i32>(29458i, -30659i, 2147483647i)), global4.b.x, -12122i, _wgslsmith_dot_vec4_i32(vec4<i32>(min(arg_0.x, 2147483647i), _wgslsmith_mult_i32(var_0.x, arg_0.x), _wgslsmith_mod_i32(u_input.d.x, arg_0.x), countOneBits(var_0.x)), vec4<i32>(firstLeadingBit(var_0.x), 1i, arg_0.x, global4.b.x))), -19002i);
    var var_1 = vec3<i32>(-global4.b.x, arg_0.x, arg_0.x) << (firstTrailingBit(select(max(_wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.a.x, 5892u), vec3<u32>(0u, 9865u, 1u)), vec3<u32>(arg_1, u_input.a.x, 9201u)), _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(global4.a.zzx, vec3<u32>(arg_1, u_input.a.x, 9543u)), global4.a.wxx & global4.a.yxw, global4.a.wxy), all(vec3<bool>(arg_2, false, arg_2)))) % vec3<u32>(32u));
    global2 = global4.c;
    global0 = array<Struct_1, 7>();
    return _wgslsmith_dot_vec3_u32(global4.a.yyx, countOneBits(_wgslsmith_div_vec3_u32(select(global4.a.zwz, vec3<u32>(u_input.a.x, global4.a.x, u_input.a.x), select(vec3<bool>(true, arg_2, arg_2), vec3<bool>(arg_2, arg_2, arg_2), true)), global4.a.yyz)));
}

fn func_2() -> Struct_1 {
    let var_0 = global4.a.zy;
    let var_1 = var_0.x;
    let var_2 = global0[_wgslsmith_index_u32(~(4294967295u ^ var_0.x) >> (~(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(86131u, 0u, 33189u), 4294967295u) | 95459u) % 32u), 7u)];
    let var_3 = global4.a.wz;
    var var_4 = Struct_1(~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, _wgslsmith_add_u32(var_3.x, 64297u), func_3(global4.b.wy, var_3.x, false), ~0u), min(global4.a, min(var_2.a, vec4<u32>(4294967295u, 36839u, 42413u, 32104u))), ~(~vec4<u32>(global4.a.x, u_input.a.x, var_3.x, 44792u))), max(global4.b, u_input.d), countOneBits(u_input.c.x >> (~0u % 32u)));
    return global1[_wgslsmith_index_u32(max(var_2.a.x, countOneBits(~u_input.a.x)), 14u)];
}

fn func_1(arg_0: Struct_1) -> vec4<u32> {
    global3 = !any(!vec4<bool>(true, true, any(vec3<bool>(false, false, false)), true));
    var var_0 = func_2();
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1271f + _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1063f, 516f, true)), _wgslsmith_f_op_f32(130f * -1000f)), -521f))), -882f));
    let var_2 = func_2();
    var var_3 = Struct_1(vec4<u32>(arg_0.a.x >> (u_input.a.x % 32u), 39210u, ~_wgslsmith_dot_vec3_u32(arg_0.a.yyz, ~var_0.a.wwz), ~16650u), global4.b, max(_wgslsmith_div_i32(var_2.b.x, arg_0.c), i32(-1i) * -10408i));
    return arg_0.a;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<i32>) -> bool {
    var var_0 = !any(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), select(true, true, false)));
    global4 = Struct_1(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(~arg_1.a.x, 33745u, 4294967295u & u_input.a.x, arg_2.a.x ^ global4.a.x), ~vec4<u32>(arg_1.a.x, 4650u, 0u, 34033u)), 35541u, ~_wgslsmith_mult_u32(select(39595u, arg_1.a.x, false), _wgslsmith_add_u32(global4.a.x, arg_2.a.x)), 23040u), global4.b, abs(1i));
    let var_1 = Struct_1(global4.a, ~(-(arg_2.b >> (vec4<u32>(19719u, global4.a.x, u_input.a.x, 1u) % vec4<u32>(32u)))) & u_input.d, func_2().c);
    let var_2 = _wgslsmith_clamp_vec4_i32(vec4<i32>(~(-31464i), _wgslsmith_add_i32(u_input.e, abs(-1i >> (u_input.a.x % 32u))), arg_2.c, -_wgslsmith_dot_vec2_i32(arg_0.wy, -arg_3.zx)), ~(((arg_0 >> (vec4<u32>(37507u, arg_2.a.x, 4294967295u, 34739u) % vec4<u32>(32u))) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, global4.c, -5048i), vec4<i32>(global4.c, 57944i, 5361i, -33738i))) ^ firstLeadingBit(_wgslsmith_mod_vec4_i32(arg_0, arg_1.b))), vec4<i32>(11449i, 0i, firstLeadingBit(countOneBits(u_input.d.x)), reverseBits(-2147483647i)));
    global2 = min(u_input.b, ~51656i);
    return all(vec4<bool>(true, all(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true))), true, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(949f))) - _wgslsmith_f_op_f32(abs(426f)))) - -556f);
    global1 = array<Struct_1, 14>();
    var var_1 = func_4(global4.b, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(max(_wgslsmith_sub_u32(~38595u, 0u), 44463u), max(1u, select(6218u, u_input.a.x, global4.a.x != 1u))), 14u)], Struct_1(_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(global4.a.x, 23687u, 15557u, global4.a.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 0u, 65569u, u_input.a.x), func_1(Struct_1(global4.a, vec4<i32>(-62022i, 24206i, -1i, 134425i), u_input.b))), reverseBits(global4.a)), -_wgslsmith_add_vec4_i32(u_input.d, ~u_input.d), _wgslsmith_clamp_i32(reverseBits(global4.b.x), -33810i, u_input.e)), min(vec3<i32>(global4.b.x, _wgslsmith_sub_i32(-45948i >> (1u % 32u), u_input.e), global4.c), _wgslsmith_div_vec3_i32(func_2().b.zyz, _wgslsmith_mod_vec3_i32(~vec3<i32>(global4.b.x, u_input.c.x, 1i), -vec3<i32>(global4.b.x, u_input.b, global4.b.x)))));
    var var_2 = true;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(1042f))))))) != 371f;
    let var_3 = global0[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 7u)];
    var var_4 = Struct_1(~(_wgslsmith_mult_vec4_u32(func_1(Struct_1(vec4<u32>(global4.a.x, u_input.a.x, u_input.a.x, u_input.a.x), u_input.d, -8229i)), var_3.a) | var_3.a), global4.b, _wgslsmith_div_i32(~(-2147483647i), 11999i));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.x);
}

