struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_1,
    c: i32,
    d: vec4<bool>,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 8> = array<Struct_5, 8>(Struct_5(vec4<f32>(-248f, -1299f, -1280f, 1338f), Struct_1(vec4<f32>(-1470f, 1815f, -494f, 1000f), vec4<i32>(-28850i, -2358i, 36077i, -14731i), vec2<u32>(0u, 1u), vec2<bool>(false, false)), -11296i, vec4<bool>(false, false, true, false), true), Struct_5(vec4<f32>(-695f, 1819f, 294f, 844f), Struct_1(vec4<f32>(708f, -695f, 564f, -854f), vec4<i32>(-15771i, 26470i, -954i, 0i), vec2<u32>(32614u, 0u), vec2<bool>(true, true)), -1i, vec4<bool>(true, true, false, false), false), Struct_5(vec4<f32>(1182f, 611f, -316f, -622f), Struct_1(vec4<f32>(1596f, -576f, 199f, -1433f), vec4<i32>(i32(-2147483648), 20624i, 0i, 0i), vec2<u32>(4558u, 14970u), vec2<bool>(true, true)), -3034i, vec4<bool>(true, true, true, true), true), Struct_5(vec4<f32>(281f, 167f, 704f, 1073f), Struct_1(vec4<f32>(-1444f, 949f, 503f, 421f), vec4<i32>(-63213i, -1i, i32(-2147483648), -31714i), vec2<u32>(1918u, 10635u), vec2<bool>(false, false)), 2147483647i, vec4<bool>(false, false, true, false), true), Struct_5(vec4<f32>(-462f, -484f, -239f, -1242f), Struct_1(vec4<f32>(1137f, -1000f, 1546f, -233f), vec4<i32>(-24677i, 1i, -68508i, 2154i), vec2<u32>(64646u, 0u), vec2<bool>(false, false)), -21926i, vec4<bool>(true, false, true, true), false), Struct_5(vec4<f32>(1404f, 340f, 518f, -307f), Struct_1(vec4<f32>(-832f, -621f, 796f, -264f), vec4<i32>(-79i, -3444i, 2147483647i, 0i), vec2<u32>(16678u, 1u), vec2<bool>(false, true)), 14872i, vec4<bool>(false, true, true, false), true), Struct_5(vec4<f32>(-735f, 930f, -1138f, -664f), Struct_1(vec4<f32>(1903f, -1112f, -595f, 124f), vec4<i32>(i32(-2147483648), 1i, -1i, 14526i), vec2<u32>(4294967295u, 16261u), vec2<bool>(false, true)), -1i, vec4<bool>(true, false, false, true), false), Struct_5(vec4<f32>(356f, -1000f, -159f, -702f), Struct_1(vec4<f32>(-1835f, 1519f, 509f, 594f), vec4<i32>(2147483647i, 20606i, 1i, -45724i), vec2<u32>(85311u, 68984u), vec2<bool>(false, false)), -645i, vec4<bool>(false, true, false, false), false));

var<private> global1: u32 = 1u;

var<private> global2: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(false, Struct_1(vec4<f32>(-1347f, 780f, -616f, -131f), vec4<i32>(1i, 0i, -40411i, 2147483647i), vec2<u32>(0u, 0u), vec2<bool>(false, false))), Struct_2(false, Struct_1(vec4<f32>(1000f, 1335f, 1000f, 1134f), vec4<i32>(-1i, 4558i, 2147483647i, -13583i), vec2<u32>(4294967295u, 41283u), vec2<bool>(false, true))), Struct_2(true, Struct_1(vec4<f32>(-1310f, 1377f, -682f, -162f), vec4<i32>(9181i, -37505i, 38943i, -13663i), vec2<u32>(4294967295u, 1u), vec2<bool>(false, false))), Struct_2(false, Struct_1(vec4<f32>(1534f, 1816f, -357f, -301f), vec4<i32>(16976i, 11670i, 1i, 1i), vec2<u32>(94033u, 4294967295u), vec2<bool>(false, false))), Struct_2(true, Struct_1(vec4<f32>(2416f, 930f, -501f, 1050f), vec4<i32>(-33867i, i32(-2147483648), 51794i, i32(-2147483648)), vec2<u32>(58471u, 1u), vec2<bool>(false, false))), Struct_2(true, Struct_1(vec4<f32>(1905f, -2315f, 263f, 1214f), vec4<i32>(1i, 6462i, 1i, -24995i), vec2<u32>(96819u, 0u), vec2<bool>(true, true))), Struct_2(false, Struct_1(vec4<f32>(1427f, -1051f, -344f, 213f), vec4<i32>(-18723i, 42412i, 8556i, -1i), vec2<u32>(10876u, 1u), vec2<bool>(true, false))), Struct_2(true, Struct_1(vec4<f32>(1000f, 2483f, -1646f, 1524f), vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, -28348i), vec2<u32>(1u, 47845u), vec2<bool>(false, true))), Struct_2(true, Struct_1(vec4<f32>(947f, 244f, 842f, -2315f), vec4<i32>(-1i, 89977i, 42459i, 61i), vec2<u32>(1u, 1u), vec2<bool>(false, true))), Struct_2(false, Struct_1(vec4<f32>(-1536f, 412f, 628f, 618f), vec4<i32>(29468i, -17947i, -10154i, 1646i), vec2<u32>(4294967295u, 0u), vec2<bool>(false, true))), Struct_2(true, Struct_1(vec4<f32>(1567f, 262f, 1000f, 1000f), vec4<i32>(i32(-2147483648), -5270i, -5333i, i32(-2147483648)), vec2<u32>(0u, 4294967295u), vec2<bool>(true, false))), Struct_2(true, Struct_1(vec4<f32>(1270f, -508f, 2059f, 580f), vec4<i32>(11654i, 18233i, 1i, -1i), vec2<u32>(4294967295u, 1u), vec2<bool>(true, false))), Struct_2(false, Struct_1(vec4<f32>(-530f, -586f, 735f, -114f), vec4<i32>(42711i, -1i, 0i, 1i), vec2<u32>(45229u, 72184u), vec2<bool>(false, true))), Struct_2(false, Struct_1(vec4<f32>(-1161f, 1028f, 743f, 1574f), vec4<i32>(-52162i, 37587i, 1i, 12654i), vec2<u32>(1u, 4294967295u), vec2<bool>(true, false))), Struct_2(false, Struct_1(vec4<f32>(280f, 380f, -414f, -804f), vec4<i32>(-51698i, 2147483647i, 83214i, 27881i), vec2<u32>(4294967295u, 16002u), vec2<bool>(true, false))), Struct_2(false, Struct_1(vec4<f32>(-142f, 331f, -1000f, 486f), vec4<i32>(i32(-2147483648), -1i, -1i, 0i), vec2<u32>(41434u, 1064u), vec2<bool>(true, true))), Struct_2(true, Struct_1(vec4<f32>(316f, -860f, -342f, 466f), vec4<i32>(-1i, 0i, 1i, i32(-2147483648)), vec2<u32>(4294967295u, 4294967295u), vec2<bool>(true, false))), Struct_2(true, Struct_1(vec4<f32>(323f, -501f, -278f, 408f), vec4<i32>(-1i, i32(-2147483648), 54509i, -703i), vec2<u32>(1u, 0u), vec2<bool>(false, true))), Struct_2(false, Struct_1(vec4<f32>(-453f, 322f, 844f, 666f), vec4<i32>(17831i, 32010i, 26322i, 27449i), vec2<u32>(21470u, 0u), vec2<bool>(true, true))), Struct_2(false, Struct_1(vec4<f32>(-290f, -1230f, -194f, -444f), vec4<i32>(-34906i, 64673i, 1i, -1i), vec2<u32>(1u, 29875u), vec2<bool>(false, true))), Struct_2(false, Struct_1(vec4<f32>(-1000f, -567f, -368f, 1410f), vec4<i32>(-1i, 23512i, -25623i, 10484i), vec2<u32>(37273u, 187u), vec2<bool>(true, true))), Struct_2(false, Struct_1(vec4<f32>(734f, -421f, 1000f, 1971f), vec4<i32>(0i, 1i, 55581i, -7793i), vec2<u32>(0u, 81272u), vec2<bool>(false, true))), Struct_2(true, Struct_1(vec4<f32>(1139f, 1500f, -752f, -1000f), vec4<i32>(-21559i, 0i, 28258i, i32(-2147483648)), vec2<u32>(4294967295u, 7698u), vec2<bool>(false, false))));

var<private> global3: vec2<i32> = vec2<i32>(1i, i32(-2147483648));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> f32 {
    var var_0 = Struct_3(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(1755f * -1000f), _wgslsmith_f_op_f32(1216f * _wgslsmith_f_op_f32(abs(-638f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-409f * -773f) * _wgslsmith_f_op_f32(round(749f))), -312f), _wgslsmith_clamp_vec4_i32(~(vec4<i32>(-4996i, 0i, global3.x, 2147483647i) << (vec4<u32>(u_input.b.x, 17731u, u_input.c, u_input.b.x) % vec4<u32>(32u))), countOneBits(abs(vec4<i32>(u_input.a.x, -1i, 2131i, 15374i))), vec4<i32>(-2147483647i, -6334i, -28984i, u_input.a.x) >> (reverseBits(vec4<u32>(0u, u_input.b.x, 87756u, 3312u)) % vec4<u32>(32u))), u_input.b.xy, vec2<bool>(_wgslsmith_f_op_f32(floor(1000f)) > _wgslsmith_f_op_f32(-181f * -340f), true)), firstTrailingBit(u_input.b.x));
    global0 = array<Struct_5, 8>();
    var var_1 = countOneBits(59519i);
    var_1 = var_0.a.b.x;
    global0 = array<Struct_5, 8>();
    return _wgslsmith_f_op_f32(-411f - var_0.a.a.x);
}

fn func_2(arg_0: bool) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-552f, _wgslsmith_f_op_f32(func_3()))))));
    let var_1 = Struct_5(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1355f, var_0, var_0, var_0), vec4<f32>(-279f, var_0, var_0, var_0))))), vec4<f32>(_wgslsmith_f_op_f32(floor(var_0)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, var_0)), var_0, _wgslsmith_f_op_f32(func_3()))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-305f, var_0, var_0, var_0) * vec4<f32>(-1725f, var_0, 1398f, 392f))))), select(vec4<i32>(u_input.a.x ^ -1i, -19666i, 1i, -1i), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 48798i, u_input.a.x, 2147483647i), vec4<i32>(u_input.a.x, 2269i, global3.x, 2147483647i)), firstTrailingBit(vec4<i32>(-54282i, global3.x, u_input.a.x, -41136i))), arg_0), ~vec2<u32>(1u, u_input.c), vec2<bool>(false, false)), _wgslsmith_sub_i32(1i, global3.x), !(!(!vec4<bool>(false, arg_0, false, arg_0))), arg_0 || (firstLeadingBit(1u) >= (u_input.b.x >> (~18373u % 32u))));
    let var_2 = vec2<u32>(u_input.b.x, _wgslsmith_div_u32((u_input.b.x | _wgslsmith_div_u32(var_1.b.c.x, 4294967295u)) | ~_wgslsmith_add_u32(u_input.c, 4294967295u), _wgslsmith_sub_u32(10595u, 0u)));
    global0 = array<Struct_5, 8>();
    let var_3 = (global3.x ^ 13885i) & _wgslsmith_add_i32(-18139i, u_input.a.x);
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(1212f))))) + -916f), -1781f, _wgslsmith_div_f32(994f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x * -1000f) * _wgslsmith_f_op_f32(floor(2253f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.b.a.x, 635f))))));
}

fn func_1(arg_0: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(true)), vec3<f32>(arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_0.a.x, arg_0.a.x), _wgslsmith_f_op_f32(-arg_0.a.x)))))));
    var var_1 = Struct_3(arg_0, ~arg_0.c.x);
    var var_2 = 1u;
    let var_3 = !arg_0.d.x;
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_1.a.a.zzy, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-751f, 2754f, 1401f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0.a.x, var_1.a.a.x, 889f))), _wgslsmith_f_op_vec3_f32(round(arg_0.a.wwx)))))));
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1076f, 1495f, -485f, -530f))), vec4<f32>(1f, 1f, 1f, 1f), select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false))))))));
    let var_1 = select(vec3<i32>(min(firstTrailingBit(u_input.a.x), abs(-global3.x)), -33653i, firstLeadingBit(_wgslsmith_mod_i32(func_1(Struct_1(var_0, vec4<i32>(global3.x, -1i, 4598i, 0i), u_input.b.yx, vec2<bool>(true, false))), u_input.a.x & global3.x))), ~countOneBits(_wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(u_input.a.x, global3.x, -2147483647i)), select(vec3<i32>(u_input.a.x, global3.x, 2147483647i), vec3<i32>(u_input.a.x, global3.x, global3.x), vec3<bool>(true, true, false)))), select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), true));
    global3 = var_1.xz;
    var var_2 = var_0.x;
    let var_3 = -920f;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, var_0.wx, vec3<i32>(~u_input.a.x, 2147483647i, -32329i), vec3<u32>(~u_input.c, 2232u, 0u));
}

