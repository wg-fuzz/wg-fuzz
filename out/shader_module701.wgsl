struct Struct_1 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(Struct_1(vec3<u32>(753u, 20526u, 25127u), vec2<f32>(-1384f, -1483f), vec4<i32>(-34856i, 28714i, 1i, 2147483647i)), Struct_1(vec3<u32>(1u, 33716u, 26115u), vec2<f32>(-811f, -570f), vec4<i32>(73896i, 0i, 0i, 25874i)), Struct_1(vec3<u32>(52961u, 93220u, 31686u), vec2<f32>(-507f, -1222f), vec4<i32>(0i, 1i, -16473i, -18330i)), vec4<f32>(-983f, 259f, -1204f, -2498f), Struct_1(vec3<u32>(4294967295u, 0u, 1u), vec2<f32>(-1201f, -1197f), vec4<i32>(1i, 8468i, 1i, 14410i))), Struct_2(Struct_1(vec3<u32>(4294967295u, 4294967295u, 1u), vec2<f32>(-567f, -1097f), vec4<i32>(2147483647i, 1i, 42761i, 16224i)), Struct_1(vec3<u32>(72060u, 23472u, 1u), vec2<f32>(1141f, -193f), vec4<i32>(3177i, 1176i, -67376i, -58829i)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 1777u), vec2<f32>(-1042f, -1572f), vec4<i32>(1i, 1i, 9172i, 1i)), vec4<f32>(868f, 330f, 788f, -2002f), Struct_1(vec3<u32>(4294967295u, 4294967295u, 0u), vec2<f32>(-1000f, 553f), vec4<i32>(0i, -39689i, -12258i, 1i))), Struct_2(Struct_1(vec3<u32>(67592u, 0u, 0u), vec2<f32>(927f, 2267f), vec4<i32>(i32(-2147483648), 14033i, 0i, i32(-2147483648))), Struct_1(vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec2<f32>(-1614f, -1076f), vec4<i32>(2147483647i, -1i, 2147483647i, -178i)), Struct_1(vec3<u32>(6193u, 65411u, 6347u), vec2<f32>(1043f, -634f), vec4<i32>(1i, -1i, -10115i, 1i)), vec4<f32>(-421f, -644f, 193f, -266f), Struct_1(vec3<u32>(14729u, 1u, 1u), vec2<f32>(2786f, -144f), vec4<i32>(19723i, 0i, 11021i, i32(-2147483648)))), Struct_2(Struct_1(vec3<u32>(4294967295u, 1u, 70087u), vec2<f32>(-637f, -1152f), vec4<i32>(-3386i, 0i, -55196i, 0i)), Struct_1(vec3<u32>(20498u, 1u, 92648u), vec2<f32>(-182f, 396f), vec4<i32>(-7798i, 2147483647i, -10971i, 58404i)), Struct_1(vec3<u32>(4294967295u, 0u, 33745u), vec2<f32>(1167f, -172f), vec4<i32>(2147483647i, -3558i, 2889i, i32(-2147483648))), vec4<f32>(315f, -1113f, 393f, -315f), Struct_1(vec3<u32>(7312u, 39520u, 1u), vec2<f32>(-248f, -900f), vec4<i32>(21551i, 2147483647i, -10276i, -46246i))), Struct_2(Struct_1(vec3<u32>(62562u, 28724u, 0u), vec2<f32>(557f, 521f), vec4<i32>(1i, 2147483647i, 2147483647i, 28961i)), Struct_1(vec3<u32>(0u, 0u, 1u), vec2<f32>(1294f, -805f), vec4<i32>(1i, -35200i, 5101i, -1i)), Struct_1(vec3<u32>(76233u, 28253u, 27734u), vec2<f32>(1052f, -1122f), vec4<i32>(1529i, i32(-2147483648), 0i, i32(-2147483648))), vec4<f32>(1737f, 622f, -1492f, 570f), Struct_1(vec3<u32>(71145u, 4294967295u, 0u), vec2<f32>(795f, -850f), vec4<i32>(23135i, 1i, -1i, 24167i))), Struct_2(Struct_1(vec3<u32>(1u, 90051u, 12395u), vec2<f32>(-963f, 127f), vec4<i32>(0i, 0i, -1i, 1i)), Struct_1(vec3<u32>(1u, 64829u, 21695u), vec2<f32>(661f, -1000f), vec4<i32>(1i, 0i, -14129i, 15913i)), Struct_1(vec3<u32>(9450u, 73231u, 40633u), vec2<f32>(1264f, -467f), vec4<i32>(1i, 10100i, -17134i, -1i)), vec4<f32>(-1255f, 1764f, -1766f, 400f), Struct_1(vec3<u32>(64496u, 1u, 18131u), vec2<f32>(-1289f, 180f), vec4<i32>(2147483647i, 2147483647i, -61425i, i32(-2147483648)))), Struct_2(Struct_1(vec3<u32>(4294967295u, 20020u, 0u), vec2<f32>(-1564f, 1755f), vec4<i32>(25865i, 1i, 1i, 24640i)), Struct_1(vec3<u32>(41032u, 19586u, 4294967295u), vec2<f32>(-495f, -921f), vec4<i32>(8187i, -24349i, -11692i, 32638i)), Struct_1(vec3<u32>(4528u, 38233u, 40248u), vec2<f32>(171f, -330f), vec4<i32>(1i, 0i, 18625i, 55381i)), vec4<f32>(1000f, 376f, -1731f, -772f), Struct_1(vec3<u32>(4294967295u, 4294967295u, 77374u), vec2<f32>(993f, 1235f), vec4<i32>(-9896i, 0i, i32(-2147483648), -1i))), Struct_2(Struct_1(vec3<u32>(4294967295u, 4294967295u, 1u), vec2<f32>(-1000f, 683f), vec4<i32>(0i, 0i, 67669i, 0i)), Struct_1(vec3<u32>(19635u, 70883u, 33853u), vec2<f32>(-1000f, 536f), vec4<i32>(40270i, i32(-2147483648), 2147483647i, 1i)), Struct_1(vec3<u32>(4294967295u, 43230u, 72974u), vec2<f32>(844f, 1268f), vec4<i32>(-1i, -1i, -48304i, 2147483647i)), vec4<f32>(1841f, -1659f, 584f, -468f), Struct_1(vec3<u32>(0u, 3240u, 4294967295u), vec2<f32>(722f, -229f), vec4<i32>(13516i, 0i, i32(-2147483648), 2147483647i))), Struct_2(Struct_1(vec3<u32>(1u, 1u, 524u), vec2<f32>(-119f, -1497f), vec4<i32>(-1i, -5346i, -56733i, 2147483647i)), Struct_1(vec3<u32>(61994u, 0u, 11232u), vec2<f32>(-374f, -690f), vec4<i32>(-16010i, 1i, 2147483647i, 1i)), Struct_1(vec3<u32>(0u, 1u, 1u), vec2<f32>(322f, -636f), vec4<i32>(41654i, i32(-2147483648), 0i, i32(-2147483648))), vec4<f32>(-568f, -717f, -2327f, 450f), Struct_1(vec3<u32>(39529u, 6258u, 39849u), vec2<f32>(-470f, 842f), vec4<i32>(-57678i, 0i, 12692i, 1i))), Struct_2(Struct_1(vec3<u32>(30444u, 1u, 4294967295u), vec2<f32>(-1470f, 1000f), vec4<i32>(-1i, 0i, -9408i, i32(-2147483648))), Struct_1(vec3<u32>(41245u, 73575u, 1u), vec2<f32>(-385f, 538f), vec4<i32>(i32(-2147483648), 61023i, i32(-2147483648), -41347i)), Struct_1(vec3<u32>(4294967295u, 36406u, 1u), vec2<f32>(-766f, 582f), vec4<i32>(-21323i, -55687i, -6912i, 2147483647i)), vec4<f32>(742f, 430f, 288f, 575f), Struct_1(vec3<u32>(0u, 43884u, 1u), vec2<f32>(-796f, 237f), vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, 1i))), Struct_2(Struct_1(vec3<u32>(0u, 48053u, 4294967295u), vec2<f32>(-1170f, -287f), vec4<i32>(-1i, 0i, 0i, -1i)), Struct_1(vec3<u32>(4294967295u, 1u, 1u), vec2<f32>(-1000f, -658f), vec4<i32>(0i, 1i, -25719i, 41607i)), Struct_1(vec3<u32>(48406u, 4294967295u, 0u), vec2<f32>(1535f, -1715f), vec4<i32>(66884i, i32(-2147483648), -5138i, i32(-2147483648))), vec4<f32>(608f, 177f, -1841f, -319f), Struct_1(vec3<u32>(18242u, 1u, 4294967295u), vec2<f32>(-640f, 472f), vec4<i32>(0i, -1i, 0i, 0i))), Struct_2(Struct_1(vec3<u32>(0u, 37731u, 16620u), vec2<f32>(1030f, 850f), vec4<i32>(59270i, -1i, 1i, 33244i)), Struct_1(vec3<u32>(1u, 1u, 898u), vec2<f32>(1000f, -144f), vec4<i32>(1i, 85183i, i32(-2147483648), 1i)), Struct_1(vec3<u32>(1u, 24529u, 0u), vec2<f32>(-474f, 425f), vec4<i32>(2147483647i, 1570i, -13668i, -33393i)), vec4<f32>(1062f, -734f, -230f, -2046f), Struct_1(vec3<u32>(37148u, 15891u, 0u), vec2<f32>(1000f, 212f), vec4<i32>(2748i, -1i, 8431i, i32(-2147483648)))), Struct_2(Struct_1(vec3<u32>(49433u, 4294967295u, 60382u), vec2<f32>(-1000f, -1000f), vec4<i32>(-38650i, 52669i, 1i, -39103i)), Struct_1(vec3<u32>(15552u, 30456u, 0u), vec2<f32>(-1820f, -1128f), vec4<i32>(0i, -1i, 1i, 0i)), Struct_1(vec3<u32>(96363u, 1u, 4294967295u), vec2<f32>(-926f, 852f), vec4<i32>(-1i, 2689i, 44967i, 1i)), vec4<f32>(-537f, -1052f, -783f, 320f), Struct_1(vec3<u32>(4294967295u, 0u, 35921u), vec2<f32>(-386f, 1683f), vec4<i32>(-26091i, 35608i, i32(-2147483648), 53763i))), Struct_2(Struct_1(vec3<u32>(0u, 4294967295u, 91338u), vec2<f32>(193f, -893f), vec4<i32>(0i, 8027i, i32(-2147483648), -14886i)), Struct_1(vec3<u32>(1u, 372u, 1u), vec2<f32>(1073f, 785f), vec4<i32>(-75303i, 0i, 38395i, 0i)), Struct_1(vec3<u32>(0u, 1u, 27608u), vec2<f32>(-1313f, -369f), vec4<i32>(2147483647i, 256i, -1i, i32(-2147483648))), vec4<f32>(-1539f, -1000f, 656f, -1195f), Struct_1(vec3<u32>(0u, 1u, 68375u), vec2<f32>(-766f, -1000f), vec4<i32>(-1i, 41758i, 16953i, -14538i))), Struct_2(Struct_1(vec3<u32>(1u, 0u, 10921u), vec2<f32>(1269f, -980f), vec4<i32>(2147483647i, 1i, -46025i, i32(-2147483648))), Struct_1(vec3<u32>(0u, 16394u, 4294967295u), vec2<f32>(466f, 978f), vec4<i32>(9137i, 2147483647i, 1i, 2147483647i)), Struct_1(vec3<u32>(46733u, 14015u, 4294967295u), vec2<f32>(1006f, 1000f), vec4<i32>(27848i, 0i, i32(-2147483648), -16054i)), vec4<f32>(540f, -138f, -979f, -397f), Struct_1(vec3<u32>(0u, 37912u, 28017u), vec2<f32>(1000f, 531f), vec4<i32>(0i, -1i, 21330i, -17031i))), Struct_2(Struct_1(vec3<u32>(29932u, 1u, 12761u), vec2<f32>(777f, -642f), vec4<i32>(-1i, i32(-2147483648), 2147483647i, -32502i)), Struct_1(vec3<u32>(36704u, 1476u, 45637u), vec2<f32>(-175f, 617f), vec4<i32>(-8202i, -43467i, -36950i, 19671i)), Struct_1(vec3<u32>(24372u, 32366u, 0u), vec2<f32>(-224f, -438f), vec4<i32>(i32(-2147483648), 16887i, -17732i, 92178i)), vec4<f32>(643f, -712f, 433f, 1023f), Struct_1(vec3<u32>(74472u, 0u, 3480u), vec2<f32>(598f, -892f), vec4<i32>(i32(-2147483648), -1i, 1i, 2147483647i))), Struct_2(Struct_1(vec3<u32>(20321u, 4294967295u, 0u), vec2<f32>(1115f, 1000f), vec4<i32>(-45249i, 31369i, 0i, -1i)), Struct_1(vec3<u32>(4594u, 1u, 16867u), vec2<f32>(-1157f, 591f), vec4<i32>(2147483647i, 20659i, 58750i, 0i)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 1u), vec2<f32>(1422f, 1087f), vec4<i32>(-33478i, -3728i, -21228i, 54238i)), vec4<f32>(-1579f, 541f, 997f, -1217f), Struct_1(vec3<u32>(1u, 1u, 22148u), vec2<f32>(-480f, 1132f), vec4<i32>(-29266i, 2147483647i, i32(-2147483648), -2190i))), Struct_2(Struct_1(vec3<u32>(6523u, 78701u, 30597u), vec2<f32>(-977f, 1093f), vec4<i32>(0i, -1i, 2077i, -10049i)), Struct_1(vec3<u32>(41880u, 45817u, 13319u), vec2<f32>(-162f, -571f), vec4<i32>(0i, 30440i, -1i, -57189i)), Struct_1(vec3<u32>(1u, 50972u, 0u), vec2<f32>(-778f, -1364f), vec4<i32>(40696i, -7447i, 2147483647i, 2147483647i)), vec4<f32>(-535f, 137f, -160f, -1949f), Struct_1(vec3<u32>(55287u, 11082u, 3731u), vec2<f32>(-1541f, 1081f), vec4<i32>(-27100i, -51148i, -31576i, 1i))), Struct_2(Struct_1(vec3<u32>(1u, 0u, 52282u), vec2<f32>(1234f, -931f), vec4<i32>(1i, 0i, i32(-2147483648), -15504i)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 26259u), vec2<f32>(-1000f, 1269f), vec4<i32>(1i, -3539i, 2147483647i, 2147483647i)), Struct_1(vec3<u32>(27496u, 27111u, 1u), vec2<f32>(-246f, 704f), vec4<i32>(0i, -55072i, -25520i, 2147483647i)), vec4<f32>(1000f, -128f, 1248f, 2070f), Struct_1(vec3<u32>(34800u, 44605u, 36346u), vec2<f32>(-147f, 271f), vec4<i32>(1i, 49285i, 4965i, 2147483647i))), Struct_2(Struct_1(vec3<u32>(48820u, 4294967295u, 1u), vec2<f32>(326f, 752f), vec4<i32>(i32(-2147483648), 1i, -8331i, i32(-2147483648))), Struct_1(vec3<u32>(0u, 16931u, 38530u), vec2<f32>(1352f, 1658f), vec4<i32>(28745i, 2147483647i, -39182i, -31004i)), Struct_1(vec3<u32>(4294967295u, 1u, 68031u), vec2<f32>(1299f, 459f), vec4<i32>(0i, 2147483647i, -15954i, 67205i)), vec4<f32>(1000f, 1637f, 1000f, -122f), Struct_1(vec3<u32>(50510u, 4294967295u, 4294967295u), vec2<f32>(1083f, -1000f), vec4<i32>(-21388i, 1i, 12553i, 1i))));

var<private> global1: Struct_3 = Struct_3(Struct_2(Struct_1(vec3<u32>(48719u, 1u, 0u), vec2<f32>(-194f, 768f), vec4<i32>(-12512i, 2147483647i, -1587i, -20924i)), Struct_1(vec3<u32>(8827u, 29053u, 64685u), vec2<f32>(-273f, 1260f), vec4<i32>(-31215i, 1i, -11938i, i32(-2147483648))), Struct_1(vec3<u32>(94775u, 0u, 120576u), vec2<f32>(-894f, -269f), vec4<i32>(-1084i, 15072i, 10232i, 1i)), vec4<f32>(233f, 1695f, 191f, -235f), Struct_1(vec3<u32>(34317u, 4294967295u, 46062u), vec2<f32>(1133f, 147f), vec4<i32>(10024i, 0i, 3806i, 25607i))), Struct_1(vec3<u32>(0u, 17048u, 0u), vec2<f32>(1343f, 1604f), vec4<i32>(-18770i, 1i, 3191i, 23373i)), 935f);

var<private> global2: bool;

var<private> global3: Struct_4 = Struct_4(Struct_2(Struct_1(vec3<u32>(4294967295u, 61649u, 12565u), vec2<f32>(1089f, -101f), vec4<i32>(0i, 32827i, 31877i, -35591i)), Struct_1(vec3<u32>(114199u, 1u, 57431u), vec2<f32>(-2448f, 1160f), vec4<i32>(1i, -65737i, 0i, 24565i)), Struct_1(vec3<u32>(1u, 0u, 0u), vec2<f32>(586f, -734f), vec4<i32>(36397i, -23568i, -7359i, 1i)), vec4<f32>(275f, -1126f, -2474f, -470f), Struct_1(vec3<u32>(41612u, 22527u, 0u), vec2<f32>(819f, 336f), vec4<i32>(2147483647i, -74833i, 0i, -6215i))), Struct_1(vec3<u32>(24506u, 5591u, 1u), vec2<f32>(787f, 880f), vec4<i32>(i32(-2147483648), 1633i, i32(-2147483648), -1i)), true);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32) -> vec3<f32> {
    var var_0 = -(vec3<i32>((u_input.b.x | 0i) | _wgslsmith_clamp_i32(u_input.b.x, 2147483647i, 41359i), _wgslsmith_div_i32(max(u_input.b.x, u_input.b.x), ~u_input.b.x), countOneBits(-1i)) ^ countOneBits(_wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(global3.b.c.x, global3.b.c.x, global3.a.c.c.x)), select(global1.a.c.c.xxy, global1.a.a.c.zzw, vec3<bool>(false, true, global3.c)), global3.b.c.yzx ^ vec3<i32>(global3.a.b.c.x, 2147483647i, -27891i))));
    global2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.b.b.x), _wgslsmith_f_op_f32(global1.c * 1639f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -348f)) + _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(global3.b.b.x * global3.b.b.x))), all(vec2<bool>(global3.c, global3.c)))) > _wgslsmith_f_op_f32(-633f + _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var var_1 = !select(select(vec3<bool>(any(vec2<bool>(true, global3.c)), true, true), vec3<bool>(true | global3.c, -8745i < global1.b.c.x, false), vec3<bool>(global3.c, false, !global3.c)), select(vec3<bool>(global3.c, global3.c, false), select(vec3<bool>(global3.c, true, true), vec3<bool>(false, global3.c, true), select(vec3<bool>(false, global3.c, false), vec3<bool>(global3.c, global3.c, false), global3.c)), select(vec3<bool>(true, global3.c, global3.c), !vec3<bool>(true, true, global3.c), vec3<bool>(global3.c, false, global3.c))), select(vec3<bool>(global3.c, global3.c, global3.c), vec3<bool>(false, true, global3.c == global3.c), global3.c));
    global2 = ~4936u != ~_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, arg_0) << (vec4<u32>(arg_0, 36728u, 0u, global1.a.b.a.x) % vec4<u32>(32u))), abs(~vec4<u32>(u_input.a.x, 4294967295u, 18200u, 1u)));
    global1 = Struct_3(Struct_2(global3.b, Struct_1(~reverseBits(global1.b.a), vec2<f32>(_wgslsmith_f_op_f32(-1571f - -396f), -1148f), global3.a.c.c), global1.a.e, global3.a.d, global1.b), global3.a.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -375f), -182f, var_1.x)), 1000f)));
    return vec3<f32>(_wgslsmith_f_op_f32(min(global1.b.b.x, _wgslsmith_f_op_f32(-global1.a.b.b.x))), 265f, global3.b.b.x);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<f32>) -> i32 {
    global0 = array<Struct_2, 20>();
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1056f, _wgslsmith_f_op_f32(max(-1400f, -1857f)), _wgslsmith_f_op_f32(f32(-1f) * -1122f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, arg_0.a.b.x, 815f) - arg_2) - arg_0.d.yzw))));
    global1 = Struct_3(global3.a, global1.a.c, _wgslsmith_f_op_f32(abs(global1.a.e.b.x)));
    let var_1 = Struct_2(Struct_1(select(~arg_1.a, vec3<u32>(0u, global3.a.c.a.x, abs(45984u)), select(vec3<bool>(global3.c, true, true), select(vec3<bool>(global3.c, false, false), vec3<bool>(global3.c, global3.c, false), global3.c), vec3<bool>(false, false, false))), global3.b.b, _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(-16346i, global1.a.b.c.x), ~arg_0.b.c.x, min(-4359i, global3.b.c.x), -29370i), global3.a.c.c)), arg_0.e, arg_1, _wgslsmith_div_vec4_f32(global1.a.d, arg_0.d), global1.a.a);
    let var_2 = Struct_1(reverseBits(vec3<u32>(~global1.b.a.x, ~(~36944u), var_1.e.a.x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.b.b - var_0.zz)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_1.b, vec2<f32>(347f, arg_0.e.b.x)) + _wgslsmith_f_op_vec3_f32(func_3(1u)).zz)), select(vec2<bool>(false, global3.c), select(select(vec2<bool>(global3.c, true), vec2<bool>(global3.c, false), vec2<bool>(true, global3.c)), !vec2<bool>(false, global3.c), global3.c), select(!vec2<bool>(global3.c, false), vec2<bool>(true, true), !vec2<bool>(global3.c, global3.c))))), vec4<i32>(1i, firstLeadingBit(-1i), max(-max(9211i, u_input.b.x), _wgslsmith_add_i32(1i, 1i)), ~9878i));
    return ~(-reverseBits(var_2.c.x | 2147483647i) >> (abs(_wgslsmith_dot_vec3_u32(vec3<u32>(8910u, global3.b.a.x, 12700u), arg_1.a) & var_1.c.a.x) % 32u));
}

fn func_2(arg_0: bool, arg_1: vec2<i32>) -> Struct_3 {
    var var_0 = vec2<i32>(2147483647i, func_4(global0[_wgslsmith_index_u32(~(~global3.b.a.x) & global1.b.a.x, 20u)], global3.a.e, _wgslsmith_f_op_vec3_f32(func_3(1u))));
    var var_1 = max(abs(global1.b.a), select(~u_input.a, ~vec3<u32>(36355u, global3.a.c.a.x, 17490u), _wgslsmith_f_op_f32(select(global1.c, global1.b.b.x, arg_0)) == global3.b.b.x) ^ ~_wgslsmith_add_vec3_u32(u_input.a, _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, global1.b.a.x, global1.a.c.a.x), u_input.a)));
    var var_2 = Struct_4(global0[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 20u)], Struct_1(~vec3<u32>(global3.b.a.x, 1u, select(global3.a.e.a.x, u_input.a.x, false)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global3.b.b.x))), 1f), -vec4<i32>(min(-6018i, -39464i), max(global1.a.c.c.x, global1.a.e.c.x), _wgslsmith_dot_vec2_i32(global3.a.e.c.xy, u_input.b.zz), i32(-1i) * -1i)), false);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global1.b.b.x, global3.a.e.b.x), _wgslsmith_f_op_f32(-1081f - 1284f))), -743f))));
    let var_4 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global3.a.d.yyy * global1.a.d.wxy), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(global1.a.d.zyz))))), vec3<bool>(true, true, (global1.a.e.a.x < global1.b.a.x) && arg_0)))));
    return Struct_3(global3.a, Struct_1(~vec3<u32>(_wgslsmith_mod_u32(var_2.a.a.a.x, var_2.b.a.x), var_2.a.a.a.x, ~var_2.b.a.x), _wgslsmith_f_op_vec2_f32(-global3.a.b.b), -firstLeadingBit(vec4<i32>(-21089i, var_0.x, var_2.b.c.x, var_2.b.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3)) - var_2.a.c.b.x) * _wgslsmith_div_f32(var_2.a.e.b.x, -492f)));
}

fn func_1() -> bool {
    global1 = func_2(false, -max(global1.a.b.c.zz, _wgslsmith_clamp_vec2_i32(vec2<i32>(global3.b.c.x, -23682i) | vec2<i32>(1i, global3.b.c.x), vec2<i32>(u_input.b.x, -2147483647i), -vec2<i32>(-43485i, global1.b.c.x))));
    var var_0 = u_input.a.x;
    var var_1 = global3.a.a.a.x < 30941u;
    var var_2 = Struct_2(Struct_1(firstTrailingBit(global1.a.c.a), _wgslsmith_f_op_vec2_f32(-global1.b.b), global1.b.c), Struct_1(u_input.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.b.b.x, global1.c) - global1.b.b) - vec2<f32>(global3.b.b.x, global3.b.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.a.c.b))), -(~_wgslsmith_clamp_vec4_i32(vec4<i32>(global1.b.c.x, global3.b.c.x, 30882i, u_input.b.x), global1.b.c, vec4<i32>(-1i, u_input.b.x, -2147483647i, -260i)))), global1.a.a, vec4<f32>(global3.b.b.x, global1.a.b.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a.e.b.x * 192f)), global1.c), global1.c), func_2(true, ~global1.b.c.wy << (u_input.a.yx % vec2<u32>(32u))).a.c);
    let var_3 = any(select(select(!select(vec2<bool>(true, global3.c), vec2<bool>(global3.c, true), true), vec2<bool>(global3.c, true), vec2<bool>(false, any(vec3<bool>(true, global3.c, global3.c)))), select(select(vec2<bool>(false, false), !vec2<bool>(false, global3.c), select(vec2<bool>(global3.c, global3.c), vec2<bool>(false, global3.c), global3.c)), vec2<bool>(global3.c, !global3.c), select(!vec2<bool>(true, global3.c), vec2<bool>(global3.c, global3.c), false)), vec2<bool>(true, true)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(vec2<bool>(!func_1(), global3.c));
    let x = u_input.a;
    s_output = StorageBuffer(min(global1.b.a.x, firstLeadingBit(~(~u_input.a.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-615f, 1673f), _wgslsmith_f_op_f32(-global1.c))))), _wgslsmith_mult_vec2_i32(vec2<i32>(global3.b.c.x, ~1i), firstTrailingBit(select(select(global3.a.e.c.yz, global1.a.b.c.wz, false), firstLeadingBit(global1.a.a.c.xy), select(false, global3.c, false)))), vec4<i32>(global1.b.c.x, ~(-15759i), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(global1.a.a.c.yy, abs(u_input.b.zz)), -31719i), abs(-24169i & -u_input.b.x)));
}

