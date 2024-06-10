struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<i32>, 10>;

var<private> global2: Struct_1 = Struct_1(vec3<bool>(false, true, true), vec3<bool>(true, true, true));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: bool, arg_1: vec4<f32>) -> f32 {
    var var_0 = Struct_1(vec3<bool>(false, false, false), vec3<bool>(false, false, arg_0));
    let var_1 = reverseBits(countOneBits(~(~(~75821u))));
    global1 = array<vec4<i32>, 10>();
    var var_2 = _wgslsmith_dot_vec2_u32(u_input.a.yw, u_input.a.yy);
    let var_3 = Struct_1(var_0.b, global2.a);
    return arg_1.x;
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: f32, arg_3: vec2<u32>) -> Struct_1 {
    global1 = array<vec4<i32>, 10>();
    let var_0 = arg_0;
    global1 = array<vec4<i32>, 10>();
    let var_1 = Struct_1(select(!global0.a, !vec3<bool>(true, true, global0.a.x), vec3<bool>(arg_0.b.x, !var_0.a.x || false, false)), !arg_0.a);
    let var_2 = ~vec4<u32>(countOneBits(~(44339u >> (u_input.d % 32u))), _wgslsmith_dot_vec3_u32(~(~u_input.a.yxy), max(max(u_input.a.yyy, vec3<u32>(arg_3.x, 0u, 32710u)), u_input.a.wyz)), _wgslsmith_clamp_u32(_wgslsmith_div_u32(arg_3.x, ~u_input.a.x), 1u, 4294967295u | _wgslsmith_mult_u32(94623u, arg_3.x)), ~abs(countOneBits(u_input.a.x)));
    return Struct_1(select(!(!var_1.a), !select(select(global0.b, vec3<bool>(arg_0.a.x, global0.b.x, false), vec3<bool>(false, var_1.a.x, false)), vec3<bool>(false, true, true), select(vec3<bool>(arg_0.b.x, var_1.a.x, false), vec3<bool>(arg_0.b.x, global0.b.x, var_0.a.x), false)), var_1.a), !arg_0.b);
}

fn func_1(arg_0: u32, arg_1: vec2<u32>) -> i32 {
    global2 = func_3(Struct_1(select(!vec3<bool>(global2.a.x, true, global2.a.x), global2.a, true), !(!vec3<bool>(global2.b.x, global0.b.x, global0.a.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(308f - -1360f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(691f))) + _wgslsmith_f_op_f32(func_2(!global2.a.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(-225f, -390f, -399f, 122f) - vec4<f32>(133f, 2124f, 222f, 1080f))))) - -1190f), arg_1);
    global0 = Struct_1(global0.a, select(!vec3<bool>(global0.a.x, global0.b.x, global0.a.x), vec3<bool>(global2.b.x, true, true && any(vec4<bool>(false, global0.a.x, global2.b.x, true))), vec3<bool>((true & global0.b.x) || false, true, global2.b.x)));
    var var_0 = func_3(Struct_1(select(global2.b, global2.b, global2.a), vec3<bool>(any(select(vec4<bool>(global2.b.x, global2.b.x, false, global2.b.x), vec4<bool>(global0.b.x, true, true, true), global2.b.x)), true, global2.b.x)), -1622f, -1116f, vec2<u32>(~(~arg_1.x), _wgslsmith_add_u32(0u, ~arg_0)));
    var var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1147f, 3190f, -215f))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(161f, 705f, -717f) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-865f, 190f, -1610f))))))))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1543f * _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - 2062f), _wgslsmith_f_op_f32(-862f + var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(false, vec4<f32>(1160f, var_1.x, var_1.x, -1413f)))))));
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(~(-u_input.c), -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.c, -30274i), vec3<i32>(-2147483647i, 27509i, u_input.c)), func_1(0u, u_input.a.zw), _wgslsmith_mult_i32(15773i, -1i)) << ((vec4<u32>(86279u, _wgslsmith_sub_u32(u_input.e, 65549u), 20154u, u_input.a.x) & ~u_input.a) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(global1[_wgslsmith_index_u32(~u_input.a.x, 10u)] >> (~(~u_input.a) % vec4<u32>(32u)), select(global1[_wgslsmith_index_u32(u_input.a.x, 10u)], global1[_wgslsmith_index_u32(1u, 10u)], true)));
    global2 = Struct_1(func_3(func_3(Struct_1(global0.b, global2.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-158f - -656f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-1419f)))), max(~u_input.a.xy, _wgslsmith_mult_vec2_u32(vec2<u32>(9701u, 4294967295u), vec2<u32>(u_input.d, u_input.d)))), 1f, _wgslsmith_f_op_f32(step(-503f, _wgslsmith_f_op_f32(trunc(-440f)))), ~vec2<u32>(~6260u, _wgslsmith_add_u32(u_input.a.x, u_input.a.x))).b, !(!select(vec3<bool>(true, global2.b.x, global2.a.x), vec3<bool>(false, global2.b.x, false), global0.b)));
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -949f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -308f) * 1854f), u_input.c < firstTrailingBit(-2147483647i)));
    let var_2 = -695f < var_1;
    let var_3 = u_input.c;
    let var_4 = u_input.d;
    let var_5 = func_3(func_3(Struct_1(vec3<bool>(any(vec4<bool>(var_2, var_2, var_2, true)), global2.b.x, 7173i < u_input.b), vec3<bool>(func_3(Struct_1(global2.b, global2.a), var_1, var_1, u_input.a.zz).b.x, global0.b.x & false, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1343f - 773f), _wgslsmith_f_op_f32(436f - var_1))) * -694f), _wgslsmith_div_f32(var_1, var_1), ~countOneBits(vec2<u32>(0u, 12583u) ^ u_input.a.zx)), _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-var_1), vec2<u32>(var_4, select(16499u, 0u >> (var_4 % 32u), true))).a;
    let var_6 = u_input.a.wwy;
    var var_7 = func_3(Struct_1(vec3<bool>((var_3 >> (19098u % 32u)) != -var_3, all(vec2<bool>(true, true)), global2.a.x), vec3<bool>(func_3(Struct_1(global2.a, var_5), _wgslsmith_f_op_f32(min(-2164f, -1405f)), 2002f, u_input.a.zw).b.x, global2.b.x, func_3(func_3(Struct_1(vec3<bool>(global2.b.x, global0.a.x, var_5.x), global2.a), var_1, -1187f, vec2<u32>(var_6.x, 100957u)), _wgslsmith_f_op_f32(f32(-1f) * -169f), _wgslsmith_f_op_f32(-var_1), _wgslsmith_clamp_vec2_u32(vec2<u32>(36271u, var_6.x), vec2<u32>(var_6.x, u_input.d), vec2<u32>(9685u, u_input.a.x))).b.x)), var_1, -1000f, select(~var_6.zz, vec2<u32>(~var_4, ~var_6.x), select(vec2<bool>(var_2 && false, global2.b.x || var_5.x), global2.a.zx, vec2<bool>(true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(countOneBits(~_wgslsmith_add_u32(26792u, var_4)), 4294967295u & _wgslsmith_mod_u32(19657u, _wgslsmith_add_u32(var_4, u_input.d))));
}

