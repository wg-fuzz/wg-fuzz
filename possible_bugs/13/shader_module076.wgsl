struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: f32,
    d: vec2<i32>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21>;

var<private> global1: array<vec3<u32>, 24> = array<vec3<u32>, 24>(vec3<u32>(4294967295u, 6251u, 0u), vec3<u32>(22762u, 4294967295u, 9607u), vec3<u32>(1u, 0u, 0u), vec3<u32>(391u, 29805u, 9437u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(35791u, 0u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 28680u), vec3<u32>(41561u, 1u, 4294967295u), vec3<u32>(1u, 1u, 7141u), vec3<u32>(23799u, 28908u, 1u), vec3<u32>(1u, 39795u, 1u), vec3<u32>(36395u, 49350u, 0u), vec3<u32>(38200u, 4632u, 4294967295u), vec3<u32>(7157u, 42404u, 40164u), vec3<u32>(44716u, 32634u, 2031u), vec3<u32>(21048u, 0u, 56802u), vec3<u32>(4294967295u, 2152u, 0u), vec3<u32>(36196u, 1u, 37028u), vec3<u32>(31799u, 0u, 22688u), vec3<u32>(1u, 0u, 94628u), vec3<u32>(48136u, 24659u, 10973u), vec3<u32>(56704u, 17236u, 0u), vec3<u32>(39089u, 0u, 1u), vec3<u32>(1u, 44465u, 0u));

var<private> global2: array<Struct_1, 27>;

var<private> global3: bool = false;

var<private> global4: Struct_1;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec2<i32>) -> u32 {
    let var_0 = ~u_input.a.yz;
    let var_1 = vec2<u32>(global0[_wgslsmith_index_u32(0u & reverseBits(abs(firstTrailingBit(global0[_wgslsmith_index_u32(77144u, 21u)]))), 21u)], firstTrailingBit(25043u));
    let var_2 = !(!(true && !all(vec3<bool>(false, true, false))));
    global0 = array<u32, 21>();
    var var_3 = global4.d.x;
    return 4294967295u;
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<f32>) -> vec2<f32> {
    global1 = array<vec3<u32>, 24>();
    let var_0 = firstTrailingBit(_wgslsmith_div_i32(-131928i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.d.x, arg_1.d.x, global4.d.x) >> (~arg_2.a % vec3<u32>(32u)), reverseBits(max(u_input.a, vec3<i32>(global4.d.x, global4.d.x, arg_1.d.x))))));
    let var_1 = arg_2;
    var var_2 = arg_2;
    var var_3 = var_1.d.x;
    return vec2<f32>(-1436f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), 420f), var_1.c))));
}

fn func_4(arg_0: vec2<f32>, arg_1: i32, arg_2: u32, arg_3: Struct_1) -> vec3<u32> {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.c - _wgslsmith_f_op_f32(-1913f - arg_3.c)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-324f + 315f)))), arg_3.c);
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -452f);
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.c) - _wgslsmith_f_op_f32(1153f * 376f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -980f)), 311f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(global4.c, 668f), _wgslsmith_f_op_f32(arg_3.c - -302f), _wgslsmith_div_f32(675f, arg_0.x)) * vec3<f32>(_wgslsmith_f_op_f32(arg_0.x + arg_3.c), 986f, -556f))));
    let var_2 = Struct_1(global4.a, 18726u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_0.x, var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -270f), true))) * var_1.x), _wgslsmith_sub_vec2_i32(-select(arg_3.d, arg_3.d, vec2<bool>(true, false)), -(~(~vec2<i32>(36812i, global4.d.x)))), arg_3.e);
    let var_3 = !select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, var_2.b < arg_3.a.x), all(vec4<bool>(true, true, true, true))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec3<bool>(true, false, true))), vec3<bool>(true, true, true), true), vec3<bool>(all(vec4<bool>(true, true, true, true)), all(vec2<bool>(true, true)), any(select(vec2<bool>(true, false), vec2<bool>(false, false), false))));
    return var_2.a;
}

fn func_2(arg_0: i32, arg_1: bool) -> u32 {
    var var_0 = func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_div_f32(1000f, global4.c), _wgslsmith_f_op_f32(f32(-1f) * -259f)))) * _wgslsmith_f_op_vec2_f32(func_3(vec4<f32>(_wgslsmith_f_op_f32(min(-2201f, -818f)), global4.c, -478f, _wgslsmith_f_op_f32(sign(447f))), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(19210u, global4.e), 33817u), 27u)], Struct_1(vec3<u32>(0u, global4.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 21u)], 21u)], 21u)]), _wgslsmith_sub_u32(global4.a.x, global4.e), _wgslsmith_f_op_f32(max(global4.c, global4.c)), max(global4.d, vec2<i32>(-2147483647i, 2147483647i)), ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global4.a.x, 21u)], 21u)]), vec3<f32>(230f, _wgslsmith_f_op_f32(-global4.c), _wgslsmith_f_op_f32(-global4.c))))), i32(-1i) * -(-u_input.a.x >> (~global4.e % 32u)), ~countOneBits(~reverseBits(global4.b)), Struct_1(~vec3<u32>(firstTrailingBit(6447u), _wgslsmith_add_u32(0u, 62113u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global4.a.x, 1u, 84103u), vec4<u32>(4294967295u, 149431u, global4.b, global0[_wgslsmith_index_u32(1u, 21u)]))), global0[_wgslsmith_index_u32(max(_wgslsmith_mult_u32(~global0[_wgslsmith_index_u32(18208u, 21u)], global4.a.x), abs(global0[_wgslsmith_index_u32(0u | global0[_wgslsmith_index_u32(79746u, 21u)], 21u)])), 21u)], -1497f, u_input.a.xx, ~1u));
    global0 = array<u32, 21>();
    var var_1 = firstLeadingBit(vec3<u32>(_wgslsmith_add_u32(~29222u & (4294967295u >> (global4.b % 32u)), _wgslsmith_mod_u32(_wgslsmith_div_u32(global4.b, 40480u), 1u)), global0[_wgslsmith_index_u32(~max(122984u, 4294967295u), 21u)] >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.x, 1u, 2561u), global1[_wgslsmith_index_u32(global4.e, 24u)] ^ global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 21u)], 24u)]) % 32u), firstTrailingBit(~(global0[_wgslsmith_index_u32(0u, 21u)] | 4294967295u))));
    var_1 = global1[_wgslsmith_index_u32(~(~(~abs(0u))), 24u)];
    let var_2 = Struct_1(global4.a, ~(~global4.e), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global4.c, _wgslsmith_f_op_f32(select(244f, global4.c, arg_1))))))), ~global4.d, global0[_wgslsmith_index_u32(~global4.e, 21u)]);
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = Struct_1(vec3<u32>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(firstLeadingBit(global0[_wgslsmith_index_u32(62196u, 21u)]), 21u)], ~global0[_wgslsmith_index_u32(4294967295u, 21u)])), 21u)], ~global4.e, func_1(u_input.a.xy)), func_2(u_input.a.x | u_input.a.x, all(vec3<bool>(true, true, true))), 263f, -global4.d, ~global4.b);
    global0 = array<u32, 21>();
    global4 = Struct_1(~vec3<u32>(56408u, global4.a.x, ~global0[_wgslsmith_index_u32(3013u, 21u)]), ~global0[_wgslsmith_index_u32(~(~global4.a.x), 21u)], 710f, reverseBits(global4.d), 50189u);
    var var_0 = Struct_1(global4.a, reverseBits(global0[_wgslsmith_index_u32(~(~func_1(vec2<i32>(1i, u_input.a.x))), 21u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global4.c + global4.c), global4.c))) * global4.c), _wgslsmith_clamp_vec2_i32(max(~(-vec2<i32>(global4.d.x, 79506i)), vec2<i32>(26473i, global4.d.x)), global4.d, _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(-vec2<i32>(global4.d.x, 20511i), -u_input.a.yz), -(~vec2<i32>(1i, global4.d.x)))), 1u | func_1(min(vec2<i32>(global4.d.x, 0i), global4.d)));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(min(global4.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.c + global4.c) * var_0.c) * 186f))), var_0.c, _wgslsmith_div_f32(1122f, _wgslsmith_f_op_f32(trunc(global4.c))));
    let var_2 = Struct_1(_wgslsmith_clamp_vec3_u32(~(~var_0.a), ~reverseBits(vec3<u32>(global0[_wgslsmith_index_u32(global4.e, 21u)], 5727u, global0[_wgslsmith_index_u32(1u, 21u)])) ^ vec3<u32>(0u, ~global0[_wgslsmith_index_u32(var_0.e, 21u)], countOneBits(64340u)), vec3<u32>(16063u, _wgslsmith_mult_u32(var_0.a.x & 0u, ~var_0.a.x), 0u)), 4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.x))), ~var_0.d, ~select(~0u ^ func_4(var_1.xz, 14443i, 31535u, Struct_1(vec3<u32>(33442u, 125954u, 0u), 4294967295u, 209f, vec2<i32>(var_0.d.x, global4.d.x), global0[_wgslsmith_index_u32(1u, 21u)])).x, ~func_4(var_1.zz, 1i, global0[_wgslsmith_index_u32(35811u, 21u)], global2[_wgslsmith_index_u32(var_0.a.x, 27u)]).x, true));
    let var_3 = Struct_1(vec3<u32>(1u, 0u << (~firstTrailingBit(var_2.e) % 32u), ~0u), 1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c - var_0.c)), var_1.x)) + global4.c), var_0.d, var_2.b);
    global3 = any(vec3<bool>(true, true, true));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b, var_1.x, var_0.d.x);
}

