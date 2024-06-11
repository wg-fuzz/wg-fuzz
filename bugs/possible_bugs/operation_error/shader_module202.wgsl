struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: Struct_2,
    d: f32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 25> = array<Struct_3, 25>(Struct_3(vec3<f32>(-2478f, -1000f, -461f), vec2<u32>(25056u, 54295u), Struct_2(vec2<u32>(161u, 51843u)), 959f), Struct_3(vec3<f32>(661f, -158f, -973f), vec2<u32>(0u, 0u), Struct_2(vec2<u32>(0u, 40484u)), -568f), Struct_3(vec3<f32>(404f, 2247f, 289f), vec2<u32>(1u, 55732u), Struct_2(vec2<u32>(1u, 25542u)), 294f), Struct_3(vec3<f32>(983f, 196f, 295f), vec2<u32>(1u, 4294967295u), Struct_2(vec2<u32>(26678u, 1u)), -806f), Struct_3(vec3<f32>(833f, -1000f, -999f), vec2<u32>(41984u, 45130u), Struct_2(vec2<u32>(1u, 0u)), 1427f), Struct_3(vec3<f32>(849f, 266f, -788f), vec2<u32>(59952u, 19563u), Struct_2(vec2<u32>(0u, 4071u)), -684f), Struct_3(vec3<f32>(1671f, -1450f, 324f), vec2<u32>(4294967295u, 0u), Struct_2(vec2<u32>(1u, 96458u)), 559f), Struct_3(vec3<f32>(495f, -609f, 403f), vec2<u32>(4294967295u, 1u), Struct_2(vec2<u32>(0u, 35759u)), -1000f), Struct_3(vec3<f32>(1000f, -417f, 1000f), vec2<u32>(4294967295u, 40266u), Struct_2(vec2<u32>(1u, 4294967295u)), 928f), Struct_3(vec3<f32>(1000f, 293f, -1866f), vec2<u32>(1u, 0u), Struct_2(vec2<u32>(48673u, 11265u)), -828f), Struct_3(vec3<f32>(-1172f, -155f, -554f), vec2<u32>(24236u, 33215u), Struct_2(vec2<u32>(4294967295u, 4294967295u)), 163f), Struct_3(vec3<f32>(-1287f, 1000f, 1315f), vec2<u32>(62181u, 42155u), Struct_2(vec2<u32>(66343u, 0u)), 965f), Struct_3(vec3<f32>(1177f, -1485f, 656f), vec2<u32>(23713u, 0u), Struct_2(vec2<u32>(0u, 23755u)), 255f), Struct_3(vec3<f32>(-543f, -1000f, 771f), vec2<u32>(10819u, 4294967295u), Struct_2(vec2<u32>(1u, 18990u)), 862f), Struct_3(vec3<f32>(1151f, 1000f, -450f), vec2<u32>(0u, 0u), Struct_2(vec2<u32>(0u, 59020u)), 712f), Struct_3(vec3<f32>(-456f, -864f, 245f), vec2<u32>(61094u, 16078u), Struct_2(vec2<u32>(0u, 4294967295u)), -2201f), Struct_3(vec3<f32>(-788f, -1035f, 1000f), vec2<u32>(31844u, 50482u), Struct_2(vec2<u32>(4294967295u, 0u)), -823f), Struct_3(vec3<f32>(-259f, -1000f, -999f), vec2<u32>(1u, 1u), Struct_2(vec2<u32>(36521u, 29683u)), 492f), Struct_3(vec3<f32>(-893f, 355f, -1456f), vec2<u32>(1u, 25619u), Struct_2(vec2<u32>(44187u, 1u)), -122f), Struct_3(vec3<f32>(185f, 1088f, -347f), vec2<u32>(55027u, 1u), Struct_2(vec2<u32>(70982u, 1u)), -340f), Struct_3(vec3<f32>(214f, -325f, 2653f), vec2<u32>(4294967295u, 71304u), Struct_2(vec2<u32>(4294967295u, 0u)), 107f), Struct_3(vec3<f32>(336f, 143f, 1479f), vec2<u32>(27668u, 0u), Struct_2(vec2<u32>(11252u, 1u)), 2257f), Struct_3(vec3<f32>(1007f, 647f, 970f), vec2<u32>(1u, 4294967295u), Struct_2(vec2<u32>(0u, 18973u)), -772f), Struct_3(vec3<f32>(-549f, 149f, 1000f), vec2<u32>(0u, 1u), Struct_2(vec2<u32>(105064u, 18819u)), -2404f), Struct_3(vec3<f32>(-1715f, -955f, 1226f), vec2<u32>(23077u, 36166u), Struct_2(vec2<u32>(49932u, 50159u)), 1101f));

var<private> global1: Struct_4 = Struct_4(Struct_2(vec2<u32>(58949u, 72738u)));

var<private> global2: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(vec2<u32>(34347u, 89833u)), Struct_2(vec2<u32>(0u, 435u)), Struct_2(vec2<u32>(7669u, 4294967295u)), Struct_2(vec2<u32>(1u, 13459u)), Struct_2(vec2<u32>(6740u, 5645u)), Struct_2(vec2<u32>(72672u, 1u)), Struct_2(vec2<u32>(4294967295u, 1u)), Struct_2(vec2<u32>(1u, 1028u)), Struct_2(vec2<u32>(71008u, 46929u)), Struct_2(vec2<u32>(10767u, 5829u)));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: f32) -> vec4<i32> {
    let var_0 = ~7405u;
    global1 = Struct_4(Struct_2(~(vec2<u32>(1u, 1u) >> (global1.a.a % vec2<u32>(32u))) ^ vec2<u32>(var_0 >> (var_0 % 32u), _wgslsmith_mult_u32(1u, 73511u))));
    global0 = array<Struct_3, 25>();
    global2 = array<Struct_2, 10>();
    let var_1 = var_0;
    return min(u_input.b, vec4<i32>(u_input.b.x, ~_wgslsmith_sub_i32(~u_input.c.x, -21456i ^ u_input.a), _wgslsmith_mult_i32(u_input.c.x, 0i), 2147483647i << (var_0 % 32u)));
}

fn func_3(arg_0: Struct_3) -> u32 {
    var var_0 = u_input.c;
    let var_1 = Struct_1(-vec4<i32>(u_input.c.x, -u_input.a, 31078i, var_0.x), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(~1u, 11586u)), global1.a.a), 53544u);
    var var_2 = u_input.b.xzw;
    global0 = array<Struct_3, 25>();
    var var_3 = _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, var_0.x, -1i), ~u_input.b.xxw) << (firstLeadingBit(max(vec3<u32>(83863u, 1u, 21246u), vec3<u32>(var_1.c, 60459u, 1u))) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(firstLeadingBit(~vec3<i32>(var_2.x, var_0.x, var_0.x)), _wgslsmith_div_vec3_i32(~u_input.b.zwx, vec3<i32>(0i, var_0.x, -20256i)))), -(func_2(arg_0.a.x).yww | (vec3<i32>(var_2.x, -33342i, 0i) | (u_input.b.wxw << (vec3<u32>(arg_0.b.x, 85421u, global1.a.a.x) % vec3<u32>(32u))))));
    return (arg_0.b.x | var_1.b) ^ (arg_0.c.a.x ^ 56177u);
}

fn func_1() -> Struct_2 {
    global1 = Struct_4(Struct_2(_wgslsmith_sub_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(global1.a.a.x, global1.a.a.x), global1.a.a), ~global1.a.a)));
    global0 = array<Struct_3, 25>();
    let var_0 = global0[_wgslsmith_index_u32(global1.a.a.x, 25u)];
    let var_1 = Struct_1(func_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.d * _wgslsmith_f_op_f32(var_0.a.x + 432f))))), _wgslsmith_dot_vec3_u32(countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(7665u, 55489u, 0u), vec3<u32>(global1.a.a.x, var_0.b.x, global1.a.a.x)) | vec3<u32>(17443u, 4294967295u, 0u)), vec3<u32>(~reverseBits(var_0.b.x), func_3(Struct_3(vec3<f32>(-1256f, var_0.a.x, var_0.d), vec2<u32>(var_0.c.a.x, global1.a.a.x), global1.a, -1805f)), 0u)), _wgslsmith_mult_u32(~global1.a.a.x, global1.a.a.x << (~countOneBits(4294967295u) % 32u)));
    let var_2 = Struct_4(Struct_2(~firstLeadingBit(vec2<u32>(var_0.b.x, 78015u))));
    return global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(49795u, max(4294967295u, (~var_0.c.a.x | max(1u, 42978u)) & ~0u)), 10u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-998f - 444f), 1f)), -1000f, 1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-2141f, 989f), _wgslsmith_div_f32(-256f, 1517f))), 539f, false))));
    let var_1 = Struct_4(func_1());
    var var_2 = select(!select(vec2<bool>(select(false, false, true), true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), all(vec2<bool>(true, true))), select(select(vec2<bool>(true, true), vec2<bool>(true, all(vec2<bool>(false, true))), false), select(vec2<bool>(true, any(vec3<bool>(false, false, true))), select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, false)), vec2<bool>(true, true)), select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), false), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false))))), !(!all(vec2<bool>(false, true))) || !all(vec4<bool>(true, true, true, true)));
    global0 = array<Struct_3, 25>();
    var var_3 = ~vec3<u32>(var_1.a.a.x, 1u << (~var_1.a.a.x % 32u), max(_wgslsmith_dot_vec2_u32(vec2<u32>(47369u, 84183u) << (var_1.a.a % vec2<u32>(32u)), select(var_1.a.a, global1.a.a, vec2<bool>(var_2.x, var_2.x))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.a.x, 44735u, var_1.a.a.x), vec3<u32>(21038u, 0u, 72141u))));
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1373f, var_0.x, var_0.x)) * vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(step(-325f, var_0.x)), _wgslsmith_f_op_f32(-var_0.x), var_0.x)))));
    let var_5 = _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(var_3.x, var_1.a.a.x, 57840u), ~_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, global1.a.a.x, var_3.x), vec3<u32>(457u, 4294967295u, var_1.a.a.x))), ~(~(vec3<u32>(global1.a.a.x, 28622u, 4294967295u) >> (vec3<u32>(86112u, var_1.a.a.x, var_3.x) % vec3<u32>(32u))))), _wgslsmith_add_u32(var_1.a.a.x, 4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, _wgslsmith_f_op_f32(f32(-1f) * -269f), 2147483647i, _wgslsmith_mult_u32(var_5, _wgslsmith_mod_u32(4294967295u, var_5)));
}

