struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18>;

var<private> global1: vec2<bool> = vec2<bool>(true, true);

var<private> global2: array<u32, 8>;

var<private> global3: array<f32, 22> = array<f32, 22>(1016f, 1000f, 783f, -225f, 104f, -288f, -938f, -550f, -2500f, -826f, -1009f, -1615f, 155f, 368f, -1000f, -549f, 562f, -300f, -2180f, -579f, -366f, -1000f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: vec3<i32>) -> vec2<f32> {
    let var_0 = Struct_1(select((_wgslsmith_mult_i32(u_input.d.x, u_input.d.x) != arg_2.x) && global1.x, (firstTrailingBit(u_input.a.x) >> (select(1u, arg_1.x, global1.x) % 32u)) != firstTrailingBit(_wgslsmith_clamp_u32(u_input.a.x, 1u, 4294967295u)), select(any(vec3<bool>(false, false, true)), true, true)), reverseBits(-(~u_input.d.xy)), _wgslsmith_sub_vec2_u32(select(~max(vec2<u32>(38950u, 1u), u_input.c), vec2<u32>(u_input.c.x, max(arg_0.x, arg_0.x)), select(select(vec2<bool>(global1.x, global1.x), vec2<bool>(false, global1.x), global1.x), vec2<bool>(false, global1.x), vec2<bool>(true, true))), arg_1), _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(108839u, 1u, 31049u, u_input.b.x), vec4<u32>(1u, arg_0.x, 1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], 8u)])), vec4<u32>(74745u, 0u, arg_0.x, 59334u)) & (reverseBits(vec4<u32>(arg_1.x, arg_0.x, u_input.c.x, 0u)) >> (~vec4<u32>(25893u, 18053u, global2[_wgslsmith_index_u32(0u, 8u)], 75686u) % vec4<u32>(32u))), _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.c.x, u_input.a.x, arg_0.x), vec4<u32>(24437u, arg_1.x, 1u, 1u)), countOneBits(vec4<u32>(14069u, 81991u, global2[_wgslsmith_index_u32(1u, 8u)], 46482u)) & max(vec4<u32>(4294967295u, arg_1.x, 43641u, arg_0.x), vec4<u32>(45820u, u_input.b.x, 14194u, arg_0.x)))), min(reverseBits(u_input.d.x), abs(17603i)));
    let var_1 = var_0.d.xyz;
    let var_2 = var_0;
    var var_3 = var_2;
    global3 = array<f32, 22>();
    return _wgslsmith_f_op_vec2_f32(step(vec2<f32>(476f, _wgslsmith_div_f32(global3[_wgslsmith_index_u32(34042u, 22u)], _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1153f + -661f), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(var_0.d.x, 22u)] * 560f), false)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-2086f * global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_2.d.x, 8u)], 22u)]), _wgslsmith_div_f32(-1054f, 2179f))))));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.x, -746f));
    var var_1 = arg_1.a;
    global2 = array<u32, 8>();
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(313f, _wgslsmith_f_op_f32(f32(-1f) * -1596f)) * _wgslsmith_f_op_vec2_f32(func_3(u_input.a, ~max(_wgslsmith_sub_vec2_u32(vec2<u32>(6173u, 0u), vec2<u32>(u_input.a.x, 25781u)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, arg_1.c.d.x), arg_0.zy)), abs(u_input.d.xzz & (vec3<i32>(26644i, arg_1.c.b.x, var_1.e) ^ vec3<i32>(-1i, -24648i, var_1.b.x))))));
    global1 = !vec2<bool>(true, arg_1.c.b.x <= _wgslsmith_sub_i32(firstLeadingBit(arg_1.a.e), min(1i, var_1.b.x)));
    return arg_1.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1) -> i32 {
    let var_0 = select(vec3<bool>(arg_0.a, arg_2.a, false), vec3<bool>(all(select(select(vec4<bool>(true, global1.x, arg_2.a, true), vec4<bool>(global1.x, arg_1.a.a, global1.x, false), arg_0.a), select(vec4<bool>(global1.x, arg_1.a.a, false, global1.x), vec4<bool>(false, arg_0.a, arg_2.a, false), vec4<bool>(arg_2.a, false, arg_2.a, arg_2.a)), select(vec4<bool>(false, arg_1.b.a, true, false), vec4<bool>(false, arg_2.a, true, true), false))), true, any(!select(vec3<bool>(true, false, false), vec3<bool>(global1.x, arg_1.a.a, false), vec3<bool>(arg_1.c.a, false, true)))), !vec3<bool>(any(vec2<bool>(false, arg_1.b.a)), true, !arg_2.a));
    let var_1 = global0[_wgslsmith_index_u32(~firstTrailingBit(arg_1.d), 18u)];
    var var_2 = _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_div_u32(arg_2.d.x | 22305u, _wgslsmith_clamp_u32(u_input.a.x, var_1.d, arg_0.c.x)), firstTrailingBit(arg_1.b.d.x)) & vec2<u32>(~firstLeadingBit(4294967295u), ~78167u | _wgslsmith_mod_u32(0u, arg_1.d)), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, _wgslsmith_sub_u32(~arg_0.d.x, ~global2[_wgslsmith_index_u32(0u, 8u)])), _wgslsmith_add_vec2_u32(vec2<u32>(61653u, ~4294967295u), _wgslsmith_mult_vec2_u32(~u_input.c, vec2<u32>(0u, 43252u)))));
    var var_3 = func_2(countOneBits(select(~(~vec3<u32>(0u, u_input.b.x, 22281u)), _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, var_1.c.d.x, 16345u), var_1.b.d.yyx, vec3<u32>(var_2.x, 60294u, var_1.b.c.x)), arg_1.b.d.yyy), !var_0)), Struct_2(func_2(arg_2.d.wyw | vec3<u32>(u_input.c.x, global2[_wgslsmith_index_u32(u_input.a.x, 8u)], 0u), Struct_2(func_2(vec3<u32>(var_1.d, 77454u, global2[_wgslsmith_index_u32(var_1.b.c.x, 8u)]), Struct_2(arg_2, Struct_1(false, arg_2.b, var_1.b.c, vec4<u32>(arg_1.a.d.x, 4294967295u, arg_1.a.d.x, arg_0.d.x), 1i), Struct_1(global1.x, arg_2.b, arg_0.d.xw, arg_2.d, 0i), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_1.c.c.x, 8u)], 8u)]), vec2<f32>(-1176f, global3[_wgslsmith_index_u32(0u, 22u)]), vec3<f32>(global3[_wgslsmith_index_u32(53017u, 22u)], global3[_wgslsmith_index_u32(51593u, 22u)], 1147f)), Struct_1(false, vec2<i32>(-2147483647i, -36524i), vec2<u32>(0u, var_2.x), var_1.c.d, u_input.d.x), func_2(vec3<u32>(44508u, 18115u, arg_1.a.d.x), arg_1, vec2<f32>(140f, 278f), vec3<f32>(global3[_wgslsmith_index_u32(18308u, 22u)], global3[_wgslsmith_index_u32(0u, 22u)], global3[_wgslsmith_index_u32(arg_0.c.x, 22u)])), global2[_wgslsmith_index_u32(arg_2.d.x, 8u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global3[_wgslsmith_index_u32(u_input.c.x, 22u)], -514f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global3[_wgslsmith_index_u32(61001u, 22u)], global3[_wgslsmith_index_u32(arg_1.d, 22u)], 329f))) - vec3<f32>(global3[_wgslsmith_index_u32(u_input.c.x, 22u)], 194f, 400f))), var_1.c, arg_1.a, 0u ^ (7070u >> (_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(1u, 8u)], arg_0.d.x) % 32u))), vec2<f32>(782f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(86374u, 22u)]), _wgslsmith_f_op_f32(622f * global3[_wgslsmith_index_u32(arg_2.d.x, 22u)])))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1710f, global3[_wgslsmith_index_u32(4294967295u, 22u)], global3[_wgslsmith_index_u32(arg_0.c.x, 22u)]))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(var_2.x, 22u)], -195f, 1112f) - vec3<f32>(global3[_wgslsmith_index_u32(u_input.b.x, 22u)], -186f, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(41005u, 8u)], 22u)])))), vec3<f32>(878f, -284f, _wgslsmith_f_op_f32(ceil(1051f))))));
    var var_4 = 0i;
    return -1i;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    global1 = vec2<bool>(any(select(select(vec3<bool>(false, arg_0.a, false), vec3<bool>(global1.x, true, false), true), !vec3<bool>(true, global1.x, false), vec3<bool>(true, false, arg_0.a))) & arg_0.a, _wgslsmith_div_i32(2147483647i, -arg_0.b.x) != u_input.d.x);
    var var_0 = ~(~(-27409i));
    var var_1 = false;
    var var_2 = select(!(!vec2<bool>(any(vec4<bool>(false, arg_0.a, false, true)), all(vec2<bool>(false, true)))), vec2<bool>(global1.x, global1.x), !(!(!vec2<bool>(arg_0.a, global1.x))));
    return arg_0;
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: vec2<f32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(-arg_2);
    let var_1 = func_5(Struct_1(any(vec4<bool>(0u <= global2[_wgslsmith_index_u32(4294967295u, 8u)], true, arg_0.a.a, true)), vec2<i32>(func_4(func_2(vec3<u32>(u_input.b.x, 0u, 4294967295u), Struct_2(arg_0.a, Struct_1(global1.x, vec2<i32>(-2147483647i, 2147483647i), arg_0.c.c, vec4<u32>(arg_0.d, 12130u, arg_0.d, u_input.c.x), 25561i), Struct_1(global1.x, vec2<i32>(-28995i, arg_0.a.e), vec2<u32>(45814u, 63834u), vec4<u32>(global2[_wgslsmith_index_u32(arg_0.a.d.x, 8u)], 0u, global2[_wgslsmith_index_u32(u_input.c.x, 8u)], global2[_wgslsmith_index_u32(28056u, 8u)]), arg_0.c.b.x), global2[_wgslsmith_index_u32(u_input.a.x, 8u)]), var_0, vec3<f32>(var_0.x, global3[_wgslsmith_index_u32(66326u, 22u)], -319f)), Struct_2(arg_0.a, Struct_1(global1.x, vec2<i32>(arg_1, arg_0.c.b.x), u_input.c, arg_0.a.d, -1i), Struct_1(arg_0.c.a, vec2<i32>(arg_1, -1i), u_input.a, arg_0.b.d, 17973i), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.b.c.x, 8u)], 8u)]), Struct_1(arg_0.c.a, arg_0.b.b, u_input.b, arg_0.b.d, -21437i)), -1i), firstLeadingBit(~firstLeadingBit(vec2<u32>(arg_0.a.c.x, u_input.a.x))), ~(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.a.d.x, u_input.c.x, global2[_wgslsmith_index_u32(4294967295u, 8u)], 29666u), arg_0.b.d, arg_0.a.d) >> (arg_0.c.d % vec4<u32>(32u))), 2147483647i >> (arg_0.c.d.x % 32u)));
    global1 = select(select(!vec2<bool>(var_1.a, true), vec2<bool>(any(vec2<bool>(false, arg_0.a.a)), !(u_input.c.x > global2[_wgslsmith_index_u32(1u, 8u)])), _wgslsmith_div_u32(global2[_wgslsmith_index_u32(var_1.c.x, 8u)], 12951u) < 23536u), select(vec2<bool>(arg_0.b.a, global1.x), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(false, var_1.a)), arg_0.a.a)), vec2<bool>(false, false)), !var_1.a);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2294f, _wgslsmith_div_f32(1000f, arg_2.x)))), 2366f, -1267f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-230f, -1000f) * -561f));
    global2 = array<u32, 8>();
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(_wgslsmith_div_u32(u_input.a.x, ~select(firstLeadingBit(28790u), u_input.a.x, 1000f >= global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 8u)], 22u)])));
    var var_1 = vec4<bool>(true & any(!(!vec2<bool>(true, global1.x))), global1.x | !(!global1.x), global1.x, !global1.x & any(vec4<bool>(any(vec4<bool>(global1.x, false, false, global1.x)), global1.x, true, func_1(Struct_2(Struct_1(true, vec2<i32>(u_input.d.x, 2147483647i), u_input.c, vec4<u32>(38583u, 38135u, u_input.b.x, var_0), 43350i), Struct_1(false, u_input.d.yx, u_input.b, vec4<u32>(4294967295u, 24520u, 4294967295u, global2[_wgslsmith_index_u32(1u, 8u)]), 1i), Struct_1(true, vec2<i32>(u_input.d.x, u_input.d.x), u_input.c, vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u), u_input.d.x), 42178u), 3521i, vec2<f32>(global3[_wgslsmith_index_u32(19380u, 22u)], -1840f)))));
    global2 = array<u32, 8>();
    let var_2 = 960f;
    global3 = array<f32, 22>();
    global0 = array<Struct_2, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(443f, 27011u, vec4<u32>(4294967295u, _wgslsmith_dot_vec2_u32(u_input.c >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(u_input.c >> (u_input.a % vec2<u32>(32u)), ~u_input.c)), max(var_0, func_2(_wgslsmith_add_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(13415u, 8u)], u_input.a.x, global2[_wgslsmith_index_u32(56450u, 8u)]), vec3<u32>(u_input.a.x, var_0, 72278u)), Struct_2(Struct_1(false, vec2<i32>(2147483647i, u_input.d.x), u_input.a, vec4<u32>(u_input.c.x, var_0, u_input.b.x, u_input.b.x), u_input.d.x), Struct_1(true, vec2<i32>(-2147483647i, 25045i), u_input.c, vec4<u32>(65303u, 1u, 37662u, u_input.b.x), -5338i), Struct_1(var_1.x, u_input.d.ww, u_input.c, vec4<u32>(global2[_wgslsmith_index_u32(u_input.a.x, 8u)], var_0, 27337u, var_0), u_input.d.x), u_input.b.x), vec2<f32>(var_2, 1000f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 705f, var_2) * vec3<f32>(global3[_wgslsmith_index_u32(1u, 22u)], -489f, global3[_wgslsmith_index_u32(0u, 22u)]))).c.x), _wgslsmith_mult_u32(var_0, 1u)), u_input.d.x);
}

