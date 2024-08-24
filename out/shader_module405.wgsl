struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_2,
    d: i32,
    e: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 18> = array<Struct_4, 18>(Struct_4(Struct_2(Struct_1(-268f, vec3<i32>(1i, 47524i, 36789i)), Struct_1(407f, vec3<i32>(685i, -14190i, i32(-2147483648)))), Struct_3(Struct_2(Struct_1(584f, vec3<i32>(1i, 1i, i32(-2147483648))), Struct_1(1168f, vec3<i32>(-1979i, -2056i, 2147483647i))), -879f, Struct_2(Struct_1(1041f, vec3<i32>(-4078i, -47524i, -995i)), Struct_1(1225f, vec3<i32>(i32(-2147483648), 12605i, i32(-2147483648)))), 0i, 2147483647i)), Struct_4(Struct_2(Struct_1(-1697f, vec3<i32>(-6120i, -1i, 5662i)), Struct_1(712f, vec3<i32>(2147483647i, -1i, 47598i))), Struct_3(Struct_2(Struct_1(-822f, vec3<i32>(12194i, 0i, 1i)), Struct_1(-566f, vec3<i32>(0i, 0i, -45605i))), -1668f, Struct_2(Struct_1(-447f, vec3<i32>(9032i, -38834i, -12102i)), Struct_1(-1381f, vec3<i32>(i32(-2147483648), -14633i, -1i))), 27830i, -31442i)), Struct_4(Struct_2(Struct_1(375f, vec3<i32>(-28069i, -28051i, -40467i)), Struct_1(366f, vec3<i32>(-16495i, -21146i, -28241i))), Struct_3(Struct_2(Struct_1(-1241f, vec3<i32>(-6636i, 1i, 50147i)), Struct_1(-829f, vec3<i32>(38510i, 20537i, 22695i))), -225f, Struct_2(Struct_1(812f, vec3<i32>(3490i, 0i, 25786i)), Struct_1(459f, vec3<i32>(-2203i, 0i, i32(-2147483648)))), 5625i, -1i)), Struct_4(Struct_2(Struct_1(-731f, vec3<i32>(1i, 0i, 48936i)), Struct_1(-1512f, vec3<i32>(-18228i, 29990i, 41323i))), Struct_3(Struct_2(Struct_1(-1829f, vec3<i32>(40011i, -1i, -54170i)), Struct_1(667f, vec3<i32>(1i, 2147483647i, 31798i))), 1631f, Struct_2(Struct_1(-718f, vec3<i32>(-30894i, -42980i, 2147483647i)), Struct_1(-2559f, vec3<i32>(-40401i, 2147483647i, i32(-2147483648)))), -21149i, -24974i)), Struct_4(Struct_2(Struct_1(-1173f, vec3<i32>(46310i, 16110i, -23359i)), Struct_1(690f, vec3<i32>(19579i, 2147483647i, 0i))), Struct_3(Struct_2(Struct_1(549f, vec3<i32>(16845i, 21631i, -16198i)), Struct_1(129f, vec3<i32>(-50180i, -1i, -26508i))), -296f, Struct_2(Struct_1(-352f, vec3<i32>(-1i, 1i, -1i)), Struct_1(-1230f, vec3<i32>(41535i, -1i, 38013i))), i32(-2147483648), 2147483647i)), Struct_4(Struct_2(Struct_1(-924f, vec3<i32>(37271i, 12884i, i32(-2147483648))), Struct_1(592f, vec3<i32>(-4017i, -10112i, 49962i))), Struct_3(Struct_2(Struct_1(974f, vec3<i32>(-51104i, -8601i, i32(-2147483648))), Struct_1(892f, vec3<i32>(-31902i, 2147483647i, 0i))), -536f, Struct_2(Struct_1(268f, vec3<i32>(-1i, 1i, -57483i)), Struct_1(-1191f, vec3<i32>(43364i, -82740i, 0i))), -1i, 36704i)), Struct_4(Struct_2(Struct_1(-868f, vec3<i32>(86018i, -27196i, i32(-2147483648))), Struct_1(1000f, vec3<i32>(i32(-2147483648), 36732i, 1i))), Struct_3(Struct_2(Struct_1(1979f, vec3<i32>(1i, -28000i, 20592i)), Struct_1(199f, vec3<i32>(2147483647i, 27204i, 0i))), 996f, Struct_2(Struct_1(-1275f, vec3<i32>(-47210i, 2147483647i, 1i)), Struct_1(719f, vec3<i32>(0i, -30282i, i32(-2147483648)))), -1i, 11980i)), Struct_4(Struct_2(Struct_1(-673f, vec3<i32>(61884i, 0i, -10719i)), Struct_1(120f, vec3<i32>(17469i, 2147483647i, -63145i))), Struct_3(Struct_2(Struct_1(572f, vec3<i32>(-22017i, 1i, -29771i)), Struct_1(-678f, vec3<i32>(2147483647i, 2147483647i, 0i))), 1000f, Struct_2(Struct_1(422f, vec3<i32>(-49987i, 0i, 0i)), Struct_1(-1773f, vec3<i32>(-36349i, -23482i, 25643i))), i32(-2147483648), 0i)), Struct_4(Struct_2(Struct_1(323f, vec3<i32>(11174i, 2147483647i, -8387i)), Struct_1(-192f, vec3<i32>(-16950i, 0i, -1i))), Struct_3(Struct_2(Struct_1(1386f, vec3<i32>(80219i, 19857i, -98022i)), Struct_1(187f, vec3<i32>(-1i, -9348i, 39944i))), 1013f, Struct_2(Struct_1(-1244f, vec3<i32>(i32(-2147483648), -65282i, 2147483647i)), Struct_1(190f, vec3<i32>(0i, 9891i, 15573i))), 3989i, 14726i)), Struct_4(Struct_2(Struct_1(-363f, vec3<i32>(i32(-2147483648), -1i, 0i)), Struct_1(828f, vec3<i32>(-1i, 17996i, -1i))), Struct_3(Struct_2(Struct_1(-114f, vec3<i32>(71586i, 2147483647i, -39103i)), Struct_1(-192f, vec3<i32>(-3622i, 1i, -12241i))), 3294f, Struct_2(Struct_1(849f, vec3<i32>(0i, -42921i, 1i)), Struct_1(-932f, vec3<i32>(35241i, -14320i, 37191i))), i32(-2147483648), i32(-2147483648))), Struct_4(Struct_2(Struct_1(-1580f, vec3<i32>(-1i, -1i, -28399i)), Struct_1(900f, vec3<i32>(-1i, 1i, -1i))), Struct_3(Struct_2(Struct_1(241f, vec3<i32>(0i, 2147483647i, i32(-2147483648))), Struct_1(1533f, vec3<i32>(-56871i, 45604i, -427i))), -552f, Struct_2(Struct_1(-699f, vec3<i32>(-28227i, i32(-2147483648), -10753i)), Struct_1(-1000f, vec3<i32>(-23916i, 30999i, i32(-2147483648)))), 0i, 2147483647i)), Struct_4(Struct_2(Struct_1(-224f, vec3<i32>(22511i, -79513i, 0i)), Struct_1(-1053f, vec3<i32>(i32(-2147483648), i32(-2147483648), 13157i))), Struct_3(Struct_2(Struct_1(-2253f, vec3<i32>(-17175i, 13472i, i32(-2147483648))), Struct_1(320f, vec3<i32>(26845i, 0i, -1911i))), -784f, Struct_2(Struct_1(439f, vec3<i32>(-38615i, -1i, -9514i)), Struct_1(1396f, vec3<i32>(2147483647i, -4759i, -72800i))), 21077i, i32(-2147483648))), Struct_4(Struct_2(Struct_1(1000f, vec3<i32>(34351i, 1i, -48694i)), Struct_1(632f, vec3<i32>(i32(-2147483648), 0i, 2147483647i))), Struct_3(Struct_2(Struct_1(-1243f, vec3<i32>(-42777i, 0i, -13457i)), Struct_1(-679f, vec3<i32>(-21676i, 4284i, 14204i))), 1682f, Struct_2(Struct_1(-1000f, vec3<i32>(-13726i, 0i, i32(-2147483648))), Struct_1(-1012f, vec3<i32>(43149i, 2147483647i, 0i))), -9199i, i32(-2147483648))), Struct_4(Struct_2(Struct_1(356f, vec3<i32>(10841i, 50081i, 15490i)), Struct_1(905f, vec3<i32>(-1i, i32(-2147483648), -5318i))), Struct_3(Struct_2(Struct_1(697f, vec3<i32>(0i, 2147483647i, 40395i)), Struct_1(577f, vec3<i32>(1820i, 0i, 0i))), -1538f, Struct_2(Struct_1(-435f, vec3<i32>(-1i, 15931i, -10093i)), Struct_1(-1449f, vec3<i32>(-22567i, -14931i, 49704i))), 0i, i32(-2147483648))), Struct_4(Struct_2(Struct_1(-2355f, vec3<i32>(2147483647i, 35207i, -1i)), Struct_1(-1713f, vec3<i32>(0i, 1i, -11967i))), Struct_3(Struct_2(Struct_1(527f, vec3<i32>(0i, -19906i, 36620i)), Struct_1(1039f, vec3<i32>(52652i, 1318i, 1i))), -859f, Struct_2(Struct_1(-2062f, vec3<i32>(2147483647i, 1i, -20027i)), Struct_1(175f, vec3<i32>(5629i, -63875i, 24327i))), i32(-2147483648), 2147483647i)), Struct_4(Struct_2(Struct_1(1000f, vec3<i32>(16366i, 2147483647i, i32(-2147483648))), Struct_1(546f, vec3<i32>(2147483647i, i32(-2147483648), -1i))), Struct_3(Struct_2(Struct_1(517f, vec3<i32>(0i, 46056i, -28860i)), Struct_1(-642f, vec3<i32>(-30481i, -8582i, 65329i))), 392f, Struct_2(Struct_1(-510f, vec3<i32>(-15831i, 1i, -25709i)), Struct_1(340f, vec3<i32>(8748i, 15521i, -6765i))), 1i, 0i)), Struct_4(Struct_2(Struct_1(2314f, vec3<i32>(44621i, -20698i, 42518i)), Struct_1(-1946f, vec3<i32>(-1i, -30748i, 2147483647i))), Struct_3(Struct_2(Struct_1(-697f, vec3<i32>(14730i, 0i, -20289i)), Struct_1(-1000f, vec3<i32>(2147483647i, 32i, 6345i))), 2211f, Struct_2(Struct_1(-318f, vec3<i32>(-11897i, -19553i, 25638i)), Struct_1(-322f, vec3<i32>(0i, -44387i, 0i))), -25060i, -26555i)), Struct_4(Struct_2(Struct_1(-160f, vec3<i32>(1i, i32(-2147483648), -1i)), Struct_1(-506f, vec3<i32>(0i, 0i, 1i))), Struct_3(Struct_2(Struct_1(867f, vec3<i32>(0i, 0i, 0i)), Struct_1(-739f, vec3<i32>(-34426i, 0i, 47097i))), -1000f, Struct_2(Struct_1(433f, vec3<i32>(-22158i, i32(-2147483648), 2147483647i)), Struct_1(348f, vec3<i32>(2147483647i, 0i, -1i))), 19627i, 1i)));

var<private> global1: Struct_2;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_4) -> vec3<i32> {
    global0 = array<Struct_4, 18>();
    global0 = array<Struct_4, 18>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-arg_0.a.b.a)), 936f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1149f, arg_0.b.c.b.a), global1.a.a)), _wgslsmith_f_op_f32(1000f - 669f));
    var var_1 = Struct_1(arg_0.a.b.a, vec3<i32>(i32(-1i) * -3854i, ~(i32(-1i) * -global1.b.b.x), 38468i));
    let var_2 = !(!any(vec3<bool>(u_input.c.x < 4294967295u, var_1.a <= global1.b.a, all(vec4<bool>(true, true, true, true)))));
    return abs(countOneBits(firstTrailingBit(vec3<i32>(firstTrailingBit(u_input.d), _wgslsmith_sub_i32(var_1.b.x, 0i), arg_0.b.c.b.b.x))));
}

fn func_2(arg_0: vec4<f32>, arg_1: i32, arg_2: Struct_1, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-374f - 511f), _wgslsmith_f_op_f32(-arg_0.x));
    global1 = Struct_2(Struct_1(arg_0.x, func_3(Struct_4(Struct_2(global1.a, arg_2), Struct_3(Struct_2(arg_2, Struct_1(arg_2.a, global1.b.b)), -1230f, Struct_2(Struct_1(global1.a.a, vec3<i32>(12812i, -1i, 13407i)), Struct_1(arg_2.a, global1.a.b)), -21152i, -29719i)))), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(395f)))))), ~global1.a.b));
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x))), _wgslsmith_f_op_f32(arg_0.x * 176f))))));
    let var_2 = min(26881u, ~(~u_input.b));
    var var_3 = Struct_2(Struct_1(-732f, vec3<i32>(arg_3.x, 23261i, arg_1)), arg_2);
    return Struct_1(arg_2.a, vec3<i32>(var_3.b.b.x, _wgslsmith_mult_i32(arg_2.b.x, max(arg_2.b.x, _wgslsmith_mult_i32(2147483647i, u_input.d))), 1i));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1) -> Struct_3 {
    var var_0 = u_input.a.yz;
    global1 = Struct_2(func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-755f, 1247f, arg_1.a, arg_0.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.a, 563f, -1690f, arg_1.a) + vec4<f32>(arg_1.a, 393f, -490f, global1.b.a))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1759f, arg_1.a, arg_0.x, global1.b.a)), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, -656f, global1.a.a, arg_1.a), vec4<f32>(arg_1.a, global1.b.a, arg_0.x, arg_1.a)))), _wgslsmith_clamp_i32(arg_1.b.x, 0i, u_input.d), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -342f) + _wgslsmith_f_op_f32(round(527f))), arg_1.b), -max(~vec2<i32>(1i, -4209i), vec2<i32>(-2147483647i, arg_1.b.x) | global1.b.b.xy)), arg_1);
    var_0 = reverseBits(min(vec2<u32>(4294967295u, ~1u), _wgslsmith_sub_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c.x, 1u), vec2<u32>(u_input.c.x, var_0.x)), abs(countOneBits(vec2<u32>(u_input.b, 4294967295u))))));
    let var_1 = 0i;
    var var_2 = _wgslsmith_f_op_vec2_f32(-arg_0.yy);
    return Struct_3(Struct_2(func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, 315f, var_2.x, global1.b.a), vec4<f32>(-393f, 995f, global1.a.a, -620f))), _wgslsmith_dot_vec3_i32(global1.a.b, vec3<i32>(u_input.d, global1.a.b.x, var_1)), arg_1, _wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, var_1), global1.b.b.yy) >> (firstLeadingBit(u_input.a.zz) % vec2<u32>(32u))), Struct_1(_wgslsmith_f_op_f32(-arg_1.a), global1.a.b)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.b.a), _wgslsmith_f_op_f32(-var_2.x), all(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true))))))), Struct_2(func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, 295f, arg_1.a))), -8535i, Struct_1(-700f, _wgslsmith_div_vec3_i32(global1.a.b, vec3<i32>(u_input.d, u_input.d, 15834i))), global1.b.b.xx), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, arg_1.a, arg_0.x, global1.b.a) * vec4<f32>(-249f, var_2.x, -1415f, -1572f))), ~global1.b.b.x, Struct_1(_wgslsmith_f_op_f32(global1.b.a * -536f), -vec3<i32>(2147483647i, -1826i, global1.b.b.x)), -_wgslsmith_sub_vec2_i32(vec2<i32>(2981i, 2147483647i), vec2<i32>(arg_1.b.x, -2873i)))), 4595i, var_1);
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec3<u32>) -> Struct_1 {
    global1 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.c.a.a, -253f, arg_2.c.b.a) + vec3<f32>(-554f, arg_1.a, 913f)), vec3<f32>(arg_2.c.b.a, arg_2.c.b.a, 1058f), vec3<bool>(true, true, true)))))), global1.a).a;
    global1 = arg_2.c;
    var var_0 = Struct_1(_wgslsmith_f_op_f32(exp2(arg_1.a)), ~max(vec3<i32>(-13893i, u_input.d, ~1i), vec3<i32>(_wgslsmith_dot_vec3_i32(global1.b.b, vec3<i32>(arg_1.b.x, u_input.d, u_input.d)), _wgslsmith_clamp_i32(-2147483647i, -2147483647i, -4957i), u_input.d)));
    let var_1 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.b.a, -757f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.a.a)))))), any(vec2<bool>((false | arg_0) && arg_0, true == (arg_3.x <= u_input.c.x)))));
    let var_2 = false;
    return arg_2.a.a;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec4<f32>) -> Struct_2 {
    let var_0 = -652f;
    global1 = func_4(_wgslsmith_f_op_vec3_f32(sign(arg_3.wzx)), global1.a).c;
    var var_1 = select(vec2<bool>(all(vec3<bool>(true, true, true)) & true, any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))), vec2<bool>(true, _wgslsmith_mod_u32(select(0u, u_input.c.x, false), ~11829u) >= u_input.b), select(select(vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(false, true)), all(vec3<bool>(false, true, true))), vec2<bool>(true, true)), vec2<bool>(true, any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)))), select(vec2<bool>(false, select(true, false, false)), vec2<bool>(true, true), vec2<bool>(true, true))));
    var var_2 = vec4<f32>(-636f, _wgslsmith_f_op_f32(-1508f + -1555f), func_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.a, 713f, 741f)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-arg_3.xyz), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1787f, arg_1.b.a, 1110f) + arg_3.xxw)))), arg_2.a).a.a.a, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 * global1.a.a), arg_3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2(vec4<f32>(-133f, 952f, arg_0.a, global1.b.a), arg_2.a.b.x, Struct_1(-172f, vec3<i32>(global1.b.b.x, -42947i, arg_2.b.b.x)), arg_2.a.b.zx).a)))));
    var var_3 = arg_3.wwz;
    return arg_2;
}

fn func_7(arg_0: vec2<u32>, arg_1: Struct_2) -> Struct_1 {
    global0 = array<Struct_4, 18>();
    var var_0 = Struct_2(func_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1.a.a, -1000f, arg_1.b.a, global1.b.a))), _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.a.a, arg_1.a.a, -915f, arg_1.b.a), vec4<f32>(181f, -134f, 679f, arg_1.b.a)), vec4<bool>(true, true, true, true))))), _wgslsmith_add_i32(firstTrailingBit(-1i), global1.a.b.x), global1.b, global1.b.b.zx), global1.b);
    global1 = arg_1;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-569f, global1.a.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b.a, arg_1.b.a)), true))) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-893f, _wgslsmith_f_op_f32(ceil(1630f)))))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-116f))), global1.a.a));
    let var_2 = _wgslsmith_f_op_f32(var_1.x + var_0.b.a);
    return Struct_1(var_1.x, -(~(~(-global1.b.b))));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<f32>, arg_2: vec3<i32>) -> Struct_2 {
    global0 = array<Struct_4, 18>();
    let var_0 = func_7(~select(~vec2<u32>(u_input.c.x, u_input.c.x), u_input.c.xy, vec2<bool>(true, true)), func_6(func_5(_wgslsmith_f_op_f32(1000f + global1.a.a) <= _wgslsmith_f_op_f32(global1.b.a - -1330f), global1.a, func_4(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1.a.a, 1217f, global1.b.a), arg_1.yzy)), func_2(vec4<f32>(arg_1.x, -1461f, arg_1.x, global1.b.a), u_input.d, Struct_1(global1.a.a, vec3<i32>(0i, u_input.d, 0i)), global1.b.b.yz)), vec3<u32>(~u_input.a.x, 9114u | u_input.c.x, 1u)), Struct_2(func_5(false, func_2(arg_1, arg_2.x, global1.a, vec2<i32>(-134i, -825i)), func_4(arg_1.xwy, Struct_1(339f, arg_2)), max(vec3<u32>(1u, 4294967295u, 14955u), vec3<u32>(39671u, 4294967295u, 22081u))), Struct_1(_wgslsmith_f_op_f32(-global1.a.a), vec3<i32>(u_input.d, arg_0.x, arg_0.x))), Struct_2(Struct_1(1684f, arg_2), Struct_1(-509f, vec3<i32>(-2147483647i, global1.a.b.x, arg_2.x))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(266f, arg_1.x, global1.b.a, global1.a.a)) - _wgslsmith_f_op_vec4_f32(arg_1 - vec4<f32>(-189f, -1009f, global1.a.a, arg_1.x)))))));
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.a))))), global1.a.b), global1.b);
}

fn func_8(arg_0: Struct_3, arg_1: vec2<u32>) -> u32 {
    var var_0 = ~_wgslsmith_sub_vec4_u32(~select(vec4<u32>(4294967295u, 12287u, 1u, u_input.a.x) << (vec4<u32>(1u, u_input.b, 80773u, 37820u) % vec4<u32>(32u)), ~vec4<u32>(u_input.a.x, arg_1.x, 14526u, arg_1.x), false), vec4<u32>(1u ^ arg_1.x, _wgslsmith_add_u32(0u, ~arg_1.x), arg_1.x, u_input.b));
    global0 = array<Struct_4, 18>();
    let var_1 = global0[_wgslsmith_index_u32(19193u, 18u)];
    var var_2 = ~_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(var_1.b.c.a.b, vec3<i32>(global1.a.b.x, _wgslsmith_add_i32(-14778i, var_1.b.a.b.b.x), -var_1.b.c.b.b.x)), arg_0.c.b.b << (reverseBits(u_input.a) % vec3<u32>(32u)));
    global1 = Struct_2(func_1(_wgslsmith_mod_vec2_i32(vec2<i32>(var_1.a.a.b.x, -2147483647i) << (abs(vec2<u32>(u_input.a.x, u_input.c.x)) % vec2<u32>(32u)), countOneBits(global1.a.b.yy)), vec4<f32>(761f, global1.b.a, _wgslsmith_f_op_f32(-func_5(true, Struct_1(var_1.a.a.a, global1.a.b), var_1.b, vec3<u32>(11555u, u_input.a.x, u_input.a.x)).a), var_1.b.a.b.a), ~firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(-11258i, global1.b.b.x, 2147483647i), vec3<i32>(var_2.x, -1i, var_1.b.e), vec3<i32>(-1i, var_1.a.a.b.x, u_input.d)))).a, Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -398f)))), vec3<i32>(0i, global1.b.b.x, -2147483647i)));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global1.b.a, global1.b.b);
    var var_1 = u_input.c;
    let var_2 = func_8(Struct_3(func_1((var_0.b.xz << (vec2<u32>(u_input.b, u_input.c.x) % vec2<u32>(32u))) << (u_input.c.yx % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.a, global1.b.a, global1.a.a, var_0.a)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-846f, global1.a.a, 573f, 709f))), global1.b.b), var_0.a, Struct_2(global1.b, Struct_1(_wgslsmith_f_op_f32(-1596f + global1.a.a), vec3<i32>(global1.a.b.x, var_0.b.x, -1i))), i32(-1i) * -35560i, ~max(19416i ^ global1.b.b.x, var_0.b.x)), vec2<u32>(u_input.a.x, var_1.x));
    var_1 = ~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.b, 0u, 1u) ^ vec4<u32>(0u, u_input.a.x, 29194u, 0u), _wgslsmith_mult_vec4_u32(vec4<u32>(var_1.x, var_1.x, 1u, u_input.a.x), vec4<u32>(4294967295u, var_2, var_1.x, 4294967295u))), ~_wgslsmith_mod_u32(u_input.b, 64945u), abs(var_2)) | ~_wgslsmith_add_vec3_u32(max(~vec3<u32>(1u, 12242u, u_input.a.x), u_input.a), vec3<u32>(1u, 25025u, 1u) & (u_input.a ^ u_input.a));
    var_0 = global1.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(~_wgslsmith_add_u32(var_2, abs(0u)), _wgslsmith_sub_u32(u_input.b, ~var_1.x)), u_input.c, var_0.b.x ^ _wgslsmith_add_i32(~func_2(vec4<f32>(-308f, 1000f, var_0.a, global1.a.a), var_0.b.x, Struct_1(global1.a.a, var_0.b), var_0.b.yx).b.x, -33749i), _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(var_0.b << (vec3<u32>(var_2, 23005u, 4294967295u) % vec3<u32>(32u)), var_0.b, var_0.b | global1.a.b) << (u_input.a % vec3<u32>(32u)), vec3<i32>(u_input.d, firstLeadingBit(~(-40816i)), 2147483647i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(global1.b.a)), 1f), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1f, 1f)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1330f), -604f) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1.b.a, -520f))))))));
}

