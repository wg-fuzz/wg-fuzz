struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1050f;

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 9>;

var<private> global3: array<u32, 15>;

var<private> global4: array<Struct_1, 30>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1) -> i32 {
    let var_0 = vec2<bool>(!(-31600i <= (global1.c | arg_1.c)), all(select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false), vec3<bool>(true, false, false)), !select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-global1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(global1.b, -442f)))))), u_input.c.x);
    let var_2 = 5575i;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b, arg_1.b, 219f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b, -1945f, arg_1.a.x))))))));
    let var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.a * global1.a)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1652f, arg_1.a.x)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2225f))))), _wgslsmith_add_i32(2147483647i, -11732i));
    return _wgslsmith_dot_vec4_i32(vec4<i32>(-var_2 ^ -13461i, arg_0.x, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, var_4.c), u_input.c, vec2<i32>(-30139i, -21028i)), _wgslsmith_div_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(-24637i, -2147483647i))), 0i) >> (~(vec4<u32>(u_input.b, u_input.b, 0u, 0u) >> (countOneBits(vec4<u32>(u_input.b, u_input.b, global3[_wgslsmith_index_u32(5955u, 15u)], 0u)) % vec4<u32>(32u))) % vec4<u32>(32u)), -(-abs(vec4<i32>(-33475i, -52674i, 49810i, global1.c)) | vec4<i32>(-u_input.c.x, abs(-14087i), ~var_4.c, u_input.c.x | var_4.c)));
}

fn func_2() -> vec4<bool> {
    var var_0 = _wgslsmith_mult_vec3_i32(select(vec3<i32>(-1i, min(func_3(vec2<i32>(u_input.c.x, -22704i), global4[_wgslsmith_index_u32(u_input.a, 30u)]), 0i << (1u % 32u)), _wgslsmith_mod_i32(firstLeadingBit(global1.c), -37672i)), vec3<i32>(global1.c, u_input.c.x, select(global1.c, 19621i, true)), all(vec4<bool>(true, true, true, true))), max(_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(u_input.c.x, u_input.c.x, global1.c)), vec3<i32>(u_input.c.x, global1.c, 0i)), max(vec3<i32>(0i, u_input.c.x, -2147483647i) >> (vec3<u32>(u_input.b, 4294967295u, u_input.b) % vec3<u32>(32u)), vec3<i32>(u_input.c.x, -44952i, global1.c)), ~select(vec3<i32>(global1.c, global1.c, u_input.c.x), vec3<i32>(u_input.c.x, 1i, -2147483647i), true)), vec3<i32>(0i << (u_input.a % 32u), ~u_input.c.x | 39897i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, global1.c, u_input.c.x), vec3<i32>(u_input.c.x, u_input.c.x, global1.c)) << (1u % 32u))));
    var var_1 = global2[_wgslsmith_index_u32(0u, 9u)];
    return !select(vec4<bool>(true, !all(vec2<bool>(false, true)), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true)), !(global1.b < var_1.a.x)), select(vec4<bool>(true, any(vec3<bool>(true, false, true)), true, true), !select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false)), vec4<bool>(global1.b >= global1.b, true, any(vec4<bool>(true, false, false, false)), all(vec2<bool>(true, false)))), !all(vec4<bool>(true, true, true, true)));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-157f, -750f, 173f) + vec3<f32>(-1242f, -712f, 1766f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1018f, 1603f, 1849f)))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(696f, global1.b, 1296f)))), vec3<f32>(arg_2.b, _wgslsmith_f_op_f32(step(arg_2.b, -1458f)), global1.a.x), arg_0.ywx))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_2.b, arg_1.a.x, arg_1.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(762f, arg_3, 450f)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(635f, -346f, global1.b), vec3<f32>(-1000f, 954f, arg_2.b))), vec3<f32>(arg_3, -2489f, -1696f), arg_0.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1097f, arg_3, global1.a.x))))));
    global0 = arg_2.b;
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(global1.a.x, global1.b))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - -402f), _wgslsmith_f_op_f32(-arg_3))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.b, _wgslsmith_f_op_f32(-503f + arg_2.a.x)))), min(func_3(vec2<i32>(-17418i, i32(-1i) * -38094i), Struct_1(vec2<f32>(var_0.x, arg_2.b), _wgslsmith_f_op_f32(trunc(global1.a.x)), 1i)), u_input.c.x));
    let var_2 = !select(!vec2<bool>(true && arg_0.x, true), vec2<bool>(true, !all(vec2<bool>(arg_0.x, false))), arg_0.x);
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1.a.x, 909f, arg_1.b, 1198f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(117f, var_0.x, 1000f, arg_2.b), vec4<f32>(-1296f, global1.b, global1.b, var_1.b))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, global1.b, var_1.b, arg_2.a.x), vec4<f32>(arg_2.a.x, 625f, var_0.x, arg_3))))))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3, global1.a.x, -929f, -118f) - vec4<f32>(var_0.x, -734f, arg_3, var_0.x)) * vec4<f32>(var_0.x, -215f, 612f, var_1.a.x)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-366f, var_0.x, -737f, -326f) - vec4<f32>(-285f, arg_2.b, 277f, 1410f))))))));
    return Struct_1(arg_1.a, 881f, reverseBits(~reverseBits(-global1.c)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global1.a.x)), _wgslsmith_f_op_f32(floor(arg_0.b)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-232f + 1095f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.b)) - global1.a.x), any(vec2<bool>(true, true)) | any(vec4<bool>(true, false, true, false)))))));
    var var_1 = vec4<u32>(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(min(4294967295u, 22831u), _wgslsmith_add_u32(u_input.b, 73542u)), 15u)], ~(~firstLeadingBit(u_input.a)), u_input.b, 1u & (0u >> (u_input.a % 32u)));
    var_0 = _wgslsmith_f_op_f32(-global1.a.x);
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -647f))))));
    var var_3 = reverseBits(select(_wgslsmith_add_vec4_u32(~reverseBits(vec4<u32>(1u, global3[_wgslsmith_index_u32(4294967295u, 15u)], 21805u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 15u)], 15u)])), ~(~vec4<u32>(global3[_wgslsmith_index_u32(5733u, 15u)], var_1.x, var_1.x, var_1.x))), ~_wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(4294967295u, 15u)], u_input.a, global3[_wgslsmith_index_u32(var_1.x, 15u)]), ~vec4<u32>(4294967295u, u_input.b, 14355u, 56791u)), true));
    return func_4(!func_2(), global2[_wgslsmith_index_u32(~125u, 9u)], global2[_wgslsmith_index_u32(59581u, 9u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.a.x)) + global1.a.x))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec4<i32>) -> u32 {
    var var_0 = countOneBits(select(arg_1.xy, min(~arg_1.wx, ~select(arg_1.zz, vec2<u32>(arg_1.x, 4294967295u), false)), !vec2<bool>(any(vec4<bool>(false, false, true, true)), true)));
    var var_1 = func_5(global2[_wgslsmith_index_u32(9712u, 9u)], Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-163f - -388f) * _wgslsmith_div_f32(global1.b, 323f)), arg_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-613f * global1.a.x)) * -358f), ~2147483647i), global1.c, func_4(func_2(), Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1317f, 702f), vec2<f32>(-626f, -1420f))))), _wgslsmith_f_op_f32(-global1.b), abs(max(-26776i, -11737i))), global2[_wgslsmith_index_u32(0u >> (~var_0.x % 32u), 9u)], -288f));
    return 1u;
}

fn func_6(arg_0: i32, arg_1: i32, arg_2: vec4<u32>, arg_3: Struct_1) -> StorageBuffer {
    let var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -879f)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global1.a.x, _wgslsmith_f_op_f32(round(global1.b)))))), arg_3.b, -1831i);
    global4 = array<Struct_1, 30>();
    var var_1 = -2342f;
    global2 = array<Struct_1, 9>();
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1346f, global1.b) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.x, var_0.a.x))) * arg_3.a)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(372f))))))), 48187i);
    return StorageBuffer(1u, u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<u32, 15>();
    global0 = global1.a.x;
    let x = u_input.a;
    s_output = func_6(u_input.c.x & reverseBits(global1.c), -2147483647i, _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(~(~vec4<u32>(u_input.b, 0u, u_input.b, 90813u)), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(52596u, u_input.b, 5168u, global3[_wgslsmith_index_u32(u_input.b, 15u)]), vec4<u32>(53431u, global3[_wgslsmith_index_u32(u_input.a, 15u)], u_input.b, 65804u)), firstTrailingBit(vec4<u32>(1u, global3[_wgslsmith_index_u32(u_input.a, 15u)], global3[_wgslsmith_index_u32(0u, 15u)], 0u)))), vec4<u32>(max(0u, 12817u << (global3[_wgslsmith_index_u32(1u, 15u)] % 32u)), ~u_input.a, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(30851u, 1u), func_1(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(62367u, 15u)], 9u)], vec4<u32>(0u, 38851u, 51065u, u_input.b), vec4<i32>(u_input.c.x, -30430i, u_input.c.x, global1.c)), min(u_input.b, 0u)), _wgslsmith_mod_u32(max(76437u, global3[_wgslsmith_index_u32(u_input.a, 15u)]), u_input.b))), func_5(global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 15u)], 30u)], func_5(global2[_wgslsmith_index_u32(~max(global3[_wgslsmith_index_u32(u_input.b, 15u)], global3[_wgslsmith_index_u32(53851u, 15u)]), 9u)], Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.x, -1475f) - vec2<f32>(global1.a.x, -1995f)), -115f, global1.c), u_input.c.x, Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2574f, -1120f) * vec2<f32>(global1.b, -2005f)), -1164f, global1.c)), _wgslsmith_sub_i32((global1.c << (4294967295u % 32u)) >> (85439u % 32u), u_input.c.x), Struct_1(_wgslsmith_f_op_vec2_f32(-global1.a), _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(round(global1.b)))), min(1i, reverseBits(0i)))));
}

