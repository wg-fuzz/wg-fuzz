struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_2,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 25> = array<i32, 25>(2147483647i, -1i, 21180i, -24664i, 40414i, 0i, 0i, 24321i, 0i, 15193i, i32(-2147483648), 29359i, -51102i, 36884i, -23749i, 22307i, -15687i, -25299i, 2147483647i, 2147483647i, 60593i, -55359i, -26466i, 1i, -1i);

var<private> global1: array<vec2<f32>, 23>;

var<private> global2: array<vec2<i32>, 5>;

var<private> global3: array<Struct_4, 18> = array<Struct_4, 18>(Struct_4(4294967295u, Struct_1(1405f, vec4<u32>(0u, 23106u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 0u, 4294967295u), 649f, 0i)), Struct_4(77474u, Struct_1(-154f, vec4<u32>(4294967295u, 45392u, 1u, 42541u), vec3<u32>(27033u, 91571u, 4294967295u), -690f, 26062i)), Struct_4(11108u, Struct_1(1116f, vec4<u32>(4294967295u, 0u, 4294967295u, 0u), vec3<u32>(0u, 1u, 6850u), -515f, 2147483647i)), Struct_4(0u, Struct_1(-1096f, vec4<u32>(4294967295u, 4294967295u, 1u, 1u), vec3<u32>(10873u, 4294967295u, 31554u), 407f, 2147483647i)), Struct_4(7809u, Struct_1(-2182f, vec4<u32>(21478u, 78219u, 57723u, 28340u), vec3<u32>(23083u, 193u, 0u), -1000f, 0i)), Struct_4(34143u, Struct_1(1525f, vec4<u32>(39578u, 11003u, 4294967295u, 1u), vec3<u32>(4294967295u, 1u, 18740u), -105f, -1i)), Struct_4(24943u, Struct_1(-773f, vec4<u32>(4294967295u, 4804u, 18457u, 1u), vec3<u32>(43821u, 1u, 80221u), 373f, -1i)), Struct_4(4294967295u, Struct_1(874f, vec4<u32>(49634u, 15015u, 0u, 57318u), vec3<u32>(18962u, 35403u, 68357u), 415f, -5855i)), Struct_4(1u, Struct_1(-276f, vec4<u32>(52244u, 27018u, 63526u, 0u), vec3<u32>(55498u, 0u, 37445u), -479f, 31419i)), Struct_4(0u, Struct_1(-1000f, vec4<u32>(52733u, 4294967295u, 4294967295u, 121330u), vec3<u32>(0u, 1u, 4294967295u), 760f, -67652i)), Struct_4(3588u, Struct_1(939f, vec4<u32>(76748u, 88058u, 7096u, 26112u), vec3<u32>(4294967295u, 4294967295u, 1u), 319f, 62135i)), Struct_4(4294967295u, Struct_1(-1000f, vec4<u32>(23082u, 33471u, 1u, 1u), vec3<u32>(1u, 1u, 0u), -1985f, -21395i)), Struct_4(1u, Struct_1(697f, vec4<u32>(0u, 17437u, 48820u, 1u), vec3<u32>(0u, 1u, 4294967295u), -1226f, 21790i)), Struct_4(0u, Struct_1(-203f, vec4<u32>(0u, 1u, 11703u, 16689u), vec3<u32>(12828u, 1u, 69873u), -588f, 0i)), Struct_4(1u, Struct_1(1654f, vec4<u32>(7711u, 4294967295u, 15520u, 51686u), vec3<u32>(32846u, 3794u, 0u), -340f, 4159i)), Struct_4(72220u, Struct_1(1000f, vec4<u32>(4294967295u, 25821u, 56708u, 26118u), vec3<u32>(24947u, 0u, 2201u), -1430f, 0i)), Struct_4(5541u, Struct_1(2124f, vec4<u32>(35277u, 1u, 4294967295u, 0u), vec3<u32>(40306u, 4294967295u, 97875u), -545f, 0i)), Struct_4(1u, Struct_1(1984f, vec4<u32>(4294967295u, 69140u, 35719u, 0u), vec3<u32>(1157u, 37964u, 4294967295u), -2356f, i32(-2147483648))));

var<private> global4: array<bool, 29> = array<bool, 29>(true, true, true, false, true, false, false, true, true, false, false, false, true, false, false, false, false, true, true, false, false, true, false, true, true, false, false, false, true);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> bool {
    global3 = array<Struct_4, 18>();
    return any(vec4<bool>(any(!(!vec2<bool>(global4[_wgslsmith_index_u32(u_input.c.x, 29u)], global4[_wgslsmith_index_u32(u_input.c.x, 29u)]))), any(select(select(vec3<bool>(global4[_wgslsmith_index_u32(u_input.c.x, 29u)], false, global4[_wgslsmith_index_u32(u_input.c.x, 29u)]), vec3<bool>(false, global4[_wgslsmith_index_u32(40242u, 29u)], global4[_wgslsmith_index_u32(u_input.c.x, 29u)]), global4[_wgslsmith_index_u32(u_input.c.x, 29u)]), select(vec3<bool>(global4[_wgslsmith_index_u32(4046u, 29u)], global4[_wgslsmith_index_u32(52554u, 29u)], false), vec3<bool>(global4[_wgslsmith_index_u32(u_input.c.x, 29u)], global4[_wgslsmith_index_u32(u_input.c.x, 29u)], false), global4[_wgslsmith_index_u32(31264u, 29u)]), vec3<bool>(global4[_wgslsmith_index_u32(60716u, 29u)], global4[_wgslsmith_index_u32(4294967295u, 29u)], true))), true, any(select(select(vec2<bool>(global4[_wgslsmith_index_u32(24150u, 29u)], false), vec2<bool>(global4[_wgslsmith_index_u32(u_input.c.x, 29u)], global4[_wgslsmith_index_u32(4294967295u, 29u)]), global4[_wgslsmith_index_u32(u_input.c.x, 29u)]), !vec2<bool>(global4[_wgslsmith_index_u32(u_input.c.x, 29u)], true), !vec2<bool>(false, global4[_wgslsmith_index_u32(22102u, 29u)])))));
}

fn func_2() -> Struct_2 {
    var var_0 = vec4<bool>(true, global4[_wgslsmith_index_u32(abs(countOneBits(u_input.c.x)), 29u)], !all(!(!vec2<bool>(global4[_wgslsmith_index_u32(u_input.c.x, 29u)], global4[_wgslsmith_index_u32(u_input.c.x, 29u)]))), func_3());
    global0 = array<i32, 25>();
    global4 = array<bool, 29>();
    let var_1 = _wgslsmith_sub_i32(1i, _wgslsmith_dot_vec2_i32(~(~global2[_wgslsmith_index_u32(~u_input.c.x, 5u)]), -vec2<i32>(u_input.a.x & -1i, countOneBits(12735i))));
    global1 = array<vec2<f32>, 23>();
    return Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1724f, 815f, _wgslsmith_f_op_f32(-745f * 1658f))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1316f, -700f, -1696f), vec3<f32>(-1557f, -1161f, 322f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1198f, -2246f, -1040f)), vec3<bool>(true, !global4[_wgslsmith_index_u32(u_input.c.x, 29u)], !var_0.x)))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: vec4<bool>) -> f32 {
    let var_0 = Struct_4(u_input.c.x, Struct_1(arg_2.a.x, ~min(~vec4<u32>(u_input.c.x, 0u, 0u, u_input.c.x), max(vec4<u32>(28582u, u_input.c.x, 4294967295u, u_input.c.x), vec4<u32>(74443u, u_input.c.x, u_input.c.x, 24608u))), _wgslsmith_add_vec3_u32(~firstLeadingBit(u_input.c), firstTrailingBit(_wgslsmith_mult_vec3_u32(u_input.c, vec3<u32>(4294967295u, u_input.c.x, u_input.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(175f))), -3559i));
    global1 = array<vec2<f32>, 23>();
    let var_1 = max(select(u_input.c.x, u_input.c.x, var_0.b.c.x >= firstTrailingBit(var_0.a)), 72531u) > 1u;
    global3 = array<Struct_4, 18>();
    var var_2 = arg_1.yzz << (vec3<u32>(abs(var_0.b.c.x), abs(reverseBits(4294967295u)), var_0.b.c.x) % vec3<u32>(32u));
    return 1000f;
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec3<i32>) -> StorageBuffer {
    global4 = array<bool, 29>();
    global0 = array<i32, 25>();
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.x, arg_1.a.x, _wgslsmith_f_op_f32(func_4(Struct_2(vec3<f32>(arg_0.x, arg_0.x, 790f)), countOneBits(~vec4<i32>(arg_2.x, 0i, global0[_wgslsmith_index_u32(26515u, 25u)], -7734i)), func_2(), select(vec4<bool>(global4[_wgslsmith_index_u32(14675u, 29u)], global4[_wgslsmith_index_u32(u_input.c.x, 29u)], false, true), !vec4<bool>(global4[_wgslsmith_index_u32(4294967295u, 29u)], false, true, global4[_wgslsmith_index_u32(7808u, 29u)]), false))), arg_1.a.x)));
    global1 = array<vec2<f32>, 23>();
    var var_1 = all(!select(vec3<bool>(true, true, true), !vec3<bool>(global4[_wgslsmith_index_u32(12735u, 29u)], global4[_wgslsmith_index_u32(41784u, 29u)], global4[_wgslsmith_index_u32(4294967295u, 29u)]), select(global4[_wgslsmith_index_u32(u_input.c.x, 29u)], global4[_wgslsmith_index_u32(0u, 29u)], false))) != global4[_wgslsmith_index_u32(~(~u_input.c.x), 29u)];
    return StorageBuffer(abs(~vec3<i32>(2147483647i | u_input.d.x, global0[_wgslsmith_index_u32(firstLeadingBit(9855u), 25u)], global0[_wgslsmith_index_u32(8982u, 25u)])));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~1u;
    global1 = array<vec2<f32>, 23>();
    let var_1 = ~vec2<u32>(12264u, ~countOneBits(1u)) | (_wgslsmith_sub_vec2_u32(firstLeadingBit(u_input.c.yy), u_input.c.zx) & vec2<u32>(firstTrailingBit(u_input.c.x), 1u));
    global1 = array<vec2<f32>, 23>();
    global2 = array<vec2<i32>, 5>();
    let x = u_input.a;
    s_output = func_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -186f) * 1f)), _wgslsmith_f_op_f32(ceil(569f)), _wgslsmith_f_op_f32(ceil(-265f))), Struct_2(vec3<f32>(1f, 1f, 1f)), _wgslsmith_sub_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0, u_input.c.x >> (var_1.x % 32u)), 25u)], u_input.a.x, min(-2147483647i, reverseBits(u_input.d.x))), select(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, 20799i, global0[_wgslsmith_index_u32(u_input.c.x, 25u)]), select(vec3<i32>(global0[_wgslsmith_index_u32(27915u, 25u)], -1i, u_input.a.x), vec3<i32>(global0[_wgslsmith_index_u32(var_1.x, 25u)], u_input.d.x, u_input.d.x), false)), -_wgslsmith_sub_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 25u)], 48232i, u_input.b.x), vec3<i32>(global0[_wgslsmith_index_u32(var_1.x, 25u)], u_input.b.x, 18405i)), false)));
}

