struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: u32,
    d: vec3<i32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
    e: vec2<bool>,
}

struct Struct_5 {
    a: bool,
    b: vec2<u32>,
    c: Struct_3,
    d: Struct_3,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: i32,
    d: vec3<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(false, vec2<u32>(4294967295u, 56941u), Struct_3(vec4<f32>(-1465f, -1505f, -798f, 283f), Struct_1(vec2<i32>(0i, 0i), true, 35541u, vec3<i32>(-30392i, i32(-2147483648), -35871i), true), vec4<i32>(1i, 1i, -8852i, 2147483647i)), Struct_3(vec4<f32>(-1030f, -270f, -2074f, 547f), Struct_1(vec2<i32>(2147483647i, 1i), false, 0u, vec3<i32>(i32(-2147483648), -49012i, 32566i), false), vec4<i32>(i32(-2147483648), -1i, -1i, 0i)), 329f);

var<private> global1: vec3<f32> = vec3<f32>(374f, -235f, 781f);

var<private> global2: array<f32, 10>;

var<private> global3: array<Struct_4, 19> = array<Struct_4, 19>(Struct_4(Struct_2(Struct_1(vec2<i32>(-54714i, i32(-2147483648)), true, 5207u, vec3<i32>(-8952i, -10292i, 3666i), false)), vec3<i32>(i32(-2147483648), 3003i, 1i), 64395u, vec3<i32>(i32(-2147483648), -43131i, 43525i), vec2<bool>(false, true)), Struct_4(Struct_2(Struct_1(vec2<i32>(2147483647i, 2147483647i), true, 0u, vec3<i32>(2147483647i, 789i, 2147483647i), false)), vec3<i32>(0i, -1i, 2147483647i), 65747u, vec3<i32>(2147483647i, 2147483647i, 0i), vec2<bool>(false, true)), Struct_4(Struct_2(Struct_1(vec2<i32>(-41090i, -36633i), false, 21824u, vec3<i32>(1i, -645i, 1i), true)), vec3<i32>(1i, 0i, 0i), 11954u, vec3<i32>(37120i, -1i, 2147483647i), vec2<bool>(true, false)), Struct_4(Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 0i), false, 11343u, vec3<i32>(-1i, 42251i, 0i), false)), vec3<i32>(0i, 11350i, 0i), 0u, vec3<i32>(-16017i, i32(-2147483648), 0i), vec2<bool>(true, true)), Struct_4(Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), true, 4294967295u, vec3<i32>(2147483647i, 2147483647i, 1i), false)), vec3<i32>(28263i, 55806i, -1i), 26290u, vec3<i32>(-87221i, -18761i, -9849i), vec2<bool>(true, true)), Struct_4(Struct_2(Struct_1(vec2<i32>(-16247i, 8120i), false, 4294967295u, vec3<i32>(1i, i32(-2147483648), -54297i), true)), vec3<i32>(34263i, 2147483647i, 9851i), 1u, vec3<i32>(0i, 2147483647i, 2394i), vec2<bool>(false, false)), Struct_4(Struct_2(Struct_1(vec2<i32>(44944i, 61625i), true, 42906u, vec3<i32>(69203i, -1i, -23569i), false)), vec3<i32>(i32(-2147483648), -45268i, -22298i), 11709u, vec3<i32>(1i, 2147483647i, -60716i), vec2<bool>(false, false)), Struct_4(Struct_2(Struct_1(vec2<i32>(-40495i, -1i), false, 19681u, vec3<i32>(2147483647i, -48505i, 2147483647i), true)), vec3<i32>(-28092i, 36574i, -1i), 21161u, vec3<i32>(-43i, 36319i, -38611i), vec2<bool>(false, true)), Struct_4(Struct_2(Struct_1(vec2<i32>(-24977i, -1042i), true, 15004u, vec3<i32>(36051i, 1i, 56745i), false)), vec3<i32>(2147483647i, 0i, 24521i), 0u, vec3<i32>(-10057i, -1i, 6025i), vec2<bool>(false, false)), Struct_4(Struct_2(Struct_1(vec2<i32>(50636i, 1i), false, 36931u, vec3<i32>(i32(-2147483648), -327i, 1i), true)), vec3<i32>(-34702i, 59363i, -1i), 2469u, vec3<i32>(21766i, 39568i, -23508i), vec2<bool>(true, false)), Struct_4(Struct_2(Struct_1(vec2<i32>(20506i, 1i), true, 7558u, vec3<i32>(2147483647i, 1i, 0i), true)), vec3<i32>(i32(-2147483648), -13471i, 0i), 83458u, vec3<i32>(-25132i, 9668i, 0i), vec2<bool>(true, false)), Struct_4(Struct_2(Struct_1(vec2<i32>(-965i, -58732i), false, 5292u, vec3<i32>(0i, 0i, 0i), true)), vec3<i32>(45471i, -4177i, 2147483647i), 4294967295u, vec3<i32>(19792i, 13168i, 1i), vec2<bool>(true, false)), Struct_4(Struct_2(Struct_1(vec2<i32>(-43220i, -1420i), false, 15518u, vec3<i32>(-38396i, 60188i, 32342i), true)), vec3<i32>(4000i, i32(-2147483648), i32(-2147483648)), 16327u, vec3<i32>(18112i, 15155i, 46591i), vec2<bool>(true, true)), Struct_4(Struct_2(Struct_1(vec2<i32>(14979i, i32(-2147483648)), true, 4294967295u, vec3<i32>(-11919i, -27105i, 2147483647i), true)), vec3<i32>(-62963i, -60461i, 2147483647i), 40297u, vec3<i32>(2147483647i, i32(-2147483648), -1i), vec2<bool>(true, true)), Struct_4(Struct_2(Struct_1(vec2<i32>(46i, -43513i), true, 1u, vec3<i32>(-1i, 0i, 70637i), true)), vec3<i32>(-38606i, 2147483647i, 1i), 1u, vec3<i32>(-80112i, 22348i, 0i), vec2<bool>(false, true)), Struct_4(Struct_2(Struct_1(vec2<i32>(3124i, 2147483647i), false, 0u, vec3<i32>(-47345i, 1i, 2147483647i), false)), vec3<i32>(-43002i, 2147483647i, -13067i), 46043u, vec3<i32>(0i, i32(-2147483648), -1i), vec2<bool>(false, true)), Struct_4(Struct_2(Struct_1(vec2<i32>(23033i, -5406i), false, 35528u, vec3<i32>(0i, i32(-2147483648), i32(-2147483648)), true)), vec3<i32>(-42939i, 5880i, -21878i), 73262u, vec3<i32>(42384i, 44835i, 2147483647i), vec2<bool>(true, true)), Struct_4(Struct_2(Struct_1(vec2<i32>(5228i, -36083i), false, 16359u, vec3<i32>(0i, -754i, -27713i), false)), vec3<i32>(-6171i, 2147483647i, -7079i), 55607u, vec3<i32>(7606i, -1i, 1i), vec2<bool>(true, true)), Struct_4(Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 0i), true, 4294967295u, vec3<i32>(i32(-2147483648), i32(-2147483648), 1i), false)), vec3<i32>(8917i, 18402i, -15509i), 14219u, vec3<i32>(-2303i, 2996i, 12710i), vec2<bool>(true, false)));

var<private> global4: Struct_5 = Struct_5(false, vec2<u32>(23296u, 40673u), Struct_3(vec4<f32>(-447f, 1000f, 993f, 203f), Struct_1(vec2<i32>(6590i, 1i), false, 11012u, vec3<i32>(1148i, i32(-2147483648), -1i), true), vec4<i32>(-1i, 7713i, -54778i, 35240i)), Struct_3(vec4<f32>(825f, -477f, 785f, 334f), Struct_1(vec2<i32>(i32(-2147483648), -45065i), false, 287u, vec3<i32>(-12051i, -7261i, -36905i), true), vec4<i32>(0i, 33791i, 21390i, -18395i)), 2129f);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(global1.x)), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~global4.b.x << (~1u % 32u), ~_wgslsmith_mult_u32(13284u, u_input.b)), 10u)]), _wgslsmith_div_vec2_f32(global4.d.a.wy, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.e, -649f) - vec2<f32>(1247f, global0.e)))))));
    let var_1 = _wgslsmith_clamp_i32(global4.d.b.a.x, _wgslsmith_dot_vec2_i32(-(~global0.d.c.xz & vec2<i32>(21707i, global4.c.b.d.x)), global4.d.b.a), global0.c.c.x);
    let var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(614f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_div_f32(-110f, _wgslsmith_f_op_f32(f32(-1f) * -275f)))), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 32238u, 0u, 0u) & vec4<u32>(33310u, global0.b.x, 1u, u_input.b), vec4<u32>(global0.b.x, 1u, 10808u, 0u)), ~_wgslsmith_div_u32(4294967295u, global0.b.x)), 10u)]), global4.c.a.zwz);
    global3 = array<Struct_4, 19>();
    let var_3 = Struct_2(global4.d.b);
    return var_2.x;
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> f32 {
    var var_0 = u_input.c;
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(global4.c.a + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(global0.d.a, vec4<f32>(-278f, -784f, arg_0, global1.x))))), global4.c.b, vec4<i32>(firstTrailingBit(arg_1.d.x), arg_1.d.x, global0.d.c.x, arg_1.a.x));
    global3 = array<Struct_4, 19>();
    let var_2 = _wgslsmith_f_op_f32(func_3());
    var var_3 = var_1.a.zy;
    return _wgslsmith_f_op_f32(var_2 + _wgslsmith_div_f32(-882f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_3.x)))))));
}

fn func_1(arg_0: f32, arg_1: Struct_3) -> Struct_4 {
    global0 = Struct_5(-25909i >= arg_1.b.a.x, countOneBits(~global4.b), global0.d, global0.d, global0.d.a.x);
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global4.c.a.wzw) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(371f, 1100f, global4.e))))))));
    var var_0 = arg_1.c;
    var var_1 = global3[_wgslsmith_index_u32(abs(arg_1.b.c), 19u)];
    let var_2 = vec2<f32>(2011f, _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 10u)]))) + _wgslsmith_f_op_f32(arg_1.a.x * _wgslsmith_f_op_f32(select(-329f, -969f, global4.c.b.b)))), Struct_1(vec2<i32>(global0.d.c.x, _wgslsmith_sub_i32(-31401i, -12415i)), !arg_1.b.e, var_1.a.a.c >> (~67984u % 32u), vec3<i32>(i32(-1i) * -21667i, 86283i, -1i), true))));
    return Struct_4(Struct_2(Struct_1(var_0.zy, true, 50793u, var_1.a.a.d, false)), vec3<i32>(21416i, firstLeadingBit(~reverseBits(global0.d.c.x)), 2147483647i), _wgslsmith_dot_vec4_u32(~max(~vec4<u32>(3606u, 6404u, 1u, global4.d.b.c), ~vec4<u32>(91704u, 1u, arg_1.b.c, 25149u)), _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.c.b.c, 0u, var_1.a.a.c, 4294967295u), vec4<u32>(62771u, 0u, global0.b.x, arg_1.b.c)) << (~vec4<u32>(var_1.a.a.c, 0u, 50419u, var_1.c) % vec4<u32>(32u)), max(vec4<u32>(48327u, global0.c.b.c, global4.c.b.c, 0u), vec4<u32>(global0.b.x, 41020u, 4294967295u, var_1.c)))), ~global4.d.b.d, var_1.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_div_f32(global0.c.a.x, _wgslsmith_f_op_f32(-2161f + global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(18653u, 67854u), 10u)])), Struct_3(_wgslsmith_f_op_vec4_f32(global0.d.a * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(719f, global2[_wgslsmith_index_u32(global0.b.x, 10u)], global1.x, -1000f) + vec4<f32>(-318f, global0.c.a.x, 176f, global1.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.c.a.x, global2[_wgslsmith_index_u32(4294967295u, 10u)], -754f, global0.d.a.x)))), global4.c.b, -global0.c.c));
    let var_1 = global0.c.b;
    var var_2 = ~(max(~(global4.d.c >> (vec4<u32>(global4.c.b.c, global0.c.b.c, var_0.c, 31312u) % vec4<u32>(32u))), global4.c.c) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.d.x, var_1.d.x, ~var_0.b.x, -11091i), global4.c.c));
    let var_3 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_1.c, 10u)])))) - _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3()))), func_1(_wgslsmith_f_op_f32(min(global0.c.a.x, -989f)), global0.c).a.a))), global4.c).a;
    var var_4 = true;
    let var_5 = var_0.a;
    var var_6 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, global2[_wgslsmith_index_u32(global4.c.b.c, 10u)], -183f) * global0.c.a.yzx), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global4.c.a.xzz * global0.d.a.ywx)))))), vec3<f32>(_wgslsmith_f_op_f32(-1456f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3())))), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(f32(-1f) * -311f)), global1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(global0.d.a, 84612u, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(var_1.d, var_1.d), _wgslsmith_clamp_vec3_i32(abs(global0.c.c.zxw), global4.d.c.zzw, _wgslsmith_add_vec3_i32(var_5.a.d, select(var_5.a.d, vec3<i32>(2147483647i, -1i, -6411i), var_1.e)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d.a.x, var_6.x, global2[_wgslsmith_index_u32(global4.d.b.c, 10u)])) + _wgslsmith_div_vec3_f32(global4.d.a.wwz, global0.c.a.yxx))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(global4.c.a.xxx * global0.d.a.yyz))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-global4.c.a.yyw))))), vec3<u32>(var_1.c, abs(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.c, 41791u, var_1.c), vec3<u32>(68954u, var_5.a.c, global4.b.x)), func_1(303f, Struct_3(vec4<f32>(-1000f, var_6.x, -1103f, 587f), Struct_1(global4.d.b.d.xy, false, var_1.c, var_0.b, false), vec4<i32>(var_3.a.a.x, var_0.b.x, -19209i, -2147483647i))).a.a.c)), var_1.c));
}

