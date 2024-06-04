struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<i32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec2<f32>,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: f32,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(false, vec3<bool>(true, true, false), Struct_1(true, -36465i, vec2<i32>(0i, 42523i), vec4<bool>(true, false, false, true)), vec3<u32>(3354u, 0u, 1u)), Struct_2(true, vec3<bool>(false, false, true), Struct_1(true, -27920i, vec2<i32>(0i, 2147483647i), vec4<bool>(false, true, false, true)), vec3<u32>(1u, 4294967295u, 10425u)), Struct_2(false, vec3<bool>(false, false, false), Struct_1(true, 45703i, vec2<i32>(2147483647i, i32(-2147483648)), vec4<bool>(true, true, true, false)), vec3<u32>(15168u, 1u, 11961u)), Struct_2(true, vec3<bool>(true, true, false), Struct_1(true, 0i, vec2<i32>(-1i, 2147483647i), vec4<bool>(false, true, false, true)), vec3<u32>(0u, 68555u, 0u)), Struct_2(true, vec3<bool>(false, true, false), Struct_1(false, 16837i, vec2<i32>(-7946i, 25096i), vec4<bool>(true, true, true, false)), vec3<u32>(6527u, 1292u, 4294967295u)), Struct_2(true, vec3<bool>(true, false, true), Struct_1(false, -1i, vec2<i32>(-1i, i32(-2147483648)), vec4<bool>(false, false, false, true)), vec3<u32>(44565u, 4294967295u, 62889u)), Struct_2(false, vec3<bool>(false, true, true), Struct_1(true, -54452i, vec2<i32>(i32(-2147483648), 2147483647i), vec4<bool>(true, true, true, true)), vec3<u32>(1u, 33049u, 771u)), Struct_2(true, vec3<bool>(true, false, false), Struct_1(false, -1i, vec2<i32>(22200i, 18515i), vec4<bool>(false, false, true, true)), vec3<u32>(1u, 45160u, 4294967295u)), Struct_2(false, vec3<bool>(true, true, false), Struct_1(true, 23515i, vec2<i32>(0i, i32(-2147483648)), vec4<bool>(false, false, true, false)), vec3<u32>(1u, 4294967295u, 44891u)), Struct_2(true, vec3<bool>(false, true, false), Struct_1(false, 0i, vec2<i32>(14473i, 1i), vec4<bool>(false, true, false, false)), vec3<u32>(0u, 4294967295u, 43250u)), Struct_2(true, vec3<bool>(false, false, false), Struct_1(true, -5973i, vec2<i32>(1i, -8062i), vec4<bool>(true, true, true, false)), vec3<u32>(0u, 4294967295u, 38966u)), Struct_2(false, vec3<bool>(true, false, true), Struct_1(false, -76712i, vec2<i32>(-1i, 36314i), vec4<bool>(true, false, true, false)), vec3<u32>(36230u, 4294967295u, 62747u)), Struct_2(true, vec3<bool>(true, false, false), Struct_1(false, i32(-2147483648), vec2<i32>(1i, -24702i), vec4<bool>(true, false, false, false)), vec3<u32>(4294967295u, 0u, 4294967295u)), Struct_2(true, vec3<bool>(false, false, true), Struct_1(false, 2147483647i, vec2<i32>(1i, -6336i), vec4<bool>(false, true, false, true)), vec3<u32>(0u, 1u, 32584u)), Struct_2(true, vec3<bool>(false, false, false), Struct_1(false, 0i, vec2<i32>(i32(-2147483648), 25118i), vec4<bool>(true, true, true, true)), vec3<u32>(1u, 0u, 1u)), Struct_2(false, vec3<bool>(true, true, true), Struct_1(false, -41256i, vec2<i32>(-452i, 56541i), vec4<bool>(false, true, true, false)), vec3<u32>(4294967295u, 31847u, 4094u)), Struct_2(true, vec3<bool>(true, false, false), Struct_1(true, 2147483647i, vec2<i32>(2198i, -8859i), vec4<bool>(true, true, false, true)), vec3<u32>(4294967295u, 0u, 1u)), Struct_2(false, vec3<bool>(true, true, false), Struct_1(false, -28806i, vec2<i32>(-1i, i32(-2147483648)), vec4<bool>(true, true, true, false)), vec3<u32>(1u, 4294967295u, 0u)), Struct_2(true, vec3<bool>(false, false, true), Struct_1(false, 2147483647i, vec2<i32>(2147483647i, 0i), vec4<bool>(true, false, false, false)), vec3<u32>(1u, 4294967295u, 0u)), Struct_2(true, vec3<bool>(false, false, true), Struct_1(true, -45535i, vec2<i32>(-7961i, 12641i), vec4<bool>(false, true, false, false)), vec3<u32>(49523u, 1u, 20284u)), Struct_2(true, vec3<bool>(true, true, false), Struct_1(true, 1i, vec2<i32>(-12975i, 0i), vec4<bool>(false, true, true, true)), vec3<u32>(23375u, 1u, 3410u)), Struct_2(false, vec3<bool>(false, true, true), Struct_1(false, i32(-2147483648), vec2<i32>(0i, 1i), vec4<bool>(true, false, false, false)), vec3<u32>(1u, 51974u, 38882u)), Struct_2(true, vec3<bool>(false, false, true), Struct_1(true, 1i, vec2<i32>(58253i, 0i), vec4<bool>(false, false, false, true)), vec3<u32>(4294967295u, 6376u, 1u)), Struct_2(false, vec3<bool>(false, false, true), Struct_1(true, -1i, vec2<i32>(41807i, -1i), vec4<bool>(true, false, true, false)), vec3<u32>(4294967295u, 8884u, 27039u)), Struct_2(false, vec3<bool>(true, true, false), Struct_1(true, 58166i, vec2<i32>(0i, -1i), vec4<bool>(false, false, false, false)), vec3<u32>(29388u, 60577u, 18080u)), Struct_2(true, vec3<bool>(false, false, false), Struct_1(false, 26819i, vec2<i32>(-17334i, 1i), vec4<bool>(false, true, true, false)), vec3<u32>(58873u, 1u, 4470u)));

var<private> global1: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(true, vec3<bool>(false, true, true), Struct_1(true, -1i, vec2<i32>(-1i, -1i), vec4<bool>(false, false, true, true)), vec3<u32>(0u, 1u, 4294967295u)), Struct_2(true, vec3<bool>(false, true, true), Struct_1(false, 23284i, vec2<i32>(0i, -1i), vec4<bool>(false, true, false, false)), vec3<u32>(4294967295u, 1u, 13860u)), Struct_2(false, vec3<bool>(true, false, false), Struct_1(true, -20288i, vec2<i32>(18826i, 16359i), vec4<bool>(false, true, true, true)), vec3<u32>(1u, 27132u, 1u)), Struct_2(false, vec3<bool>(true, true, true), Struct_1(true, i32(-2147483648), vec2<i32>(-26110i, 3509i), vec4<bool>(true, true, true, true)), vec3<u32>(4294967295u, 2901u, 1u)), Struct_2(true, vec3<bool>(false, false, false), Struct_1(true, -1i, vec2<i32>(-58348i, 31732i), vec4<bool>(true, false, false, false)), vec3<u32>(1u, 0u, 0u)), Struct_2(false, vec3<bool>(false, false, true), Struct_1(false, 4662i, vec2<i32>(2147483647i, -24165i), vec4<bool>(true, false, true, true)), vec3<u32>(25975u, 1u, 2383u)), Struct_2(true, vec3<bool>(true, true, true), Struct_1(false, 1i, vec2<i32>(8148i, -19271i), vec4<bool>(true, true, false, false)), vec3<u32>(0u, 1u, 4294967295u)), Struct_2(true, vec3<bool>(true, true, false), Struct_1(true, 1i, vec2<i32>(-12149i, -1i), vec4<bool>(false, false, true, false)), vec3<u32>(1u, 0u, 2442u)), Struct_2(false, vec3<bool>(false, false, true), Struct_1(true, 1i, vec2<i32>(-42032i, 2147483647i), vec4<bool>(false, true, true, false)), vec3<u32>(39994u, 15229u, 27919u)), Struct_2(true, vec3<bool>(true, true, false), Struct_1(false, -6923i, vec2<i32>(-24870i, 33951i), vec4<bool>(false, false, true, true)), vec3<u32>(0u, 25216u, 0u)), Struct_2(false, vec3<bool>(true, false, true), Struct_1(false, 59408i, vec2<i32>(-16746i, -9052i), vec4<bool>(false, true, false, false)), vec3<u32>(6064u, 24767u, 0u)), Struct_2(false, vec3<bool>(false, false, false), Struct_1(false, -1i, vec2<i32>(-54105i, -7966i), vec4<bool>(true, true, true, false)), vec3<u32>(510u, 0u, 5171u)), Struct_2(true, vec3<bool>(true, false, false), Struct_1(false, -62647i, vec2<i32>(i32(-2147483648), 3332i), vec4<bool>(false, true, true, false)), vec3<u32>(12085u, 34034u, 0u)), Struct_2(true, vec3<bool>(false, true, false), Struct_1(false, 1i, vec2<i32>(-12366i, 2147483647i), vec4<bool>(false, true, true, false)), vec3<u32>(45725u, 4294967295u, 0u)), Struct_2(false, vec3<bool>(false, false, false), Struct_1(false, 31041i, vec2<i32>(2147483647i, 1i), vec4<bool>(false, true, false, true)), vec3<u32>(6099u, 15196u, 4294967295u)), Struct_2(false, vec3<bool>(false, true, true), Struct_1(false, 1415i, vec2<i32>(35875i, -14330i), vec4<bool>(true, false, false, false)), vec3<u32>(0u, 4294967295u, 10055u)), Struct_2(false, vec3<bool>(true, false, false), Struct_1(true, 0i, vec2<i32>(-18025i, -1i), vec4<bool>(true, true, false, true)), vec3<u32>(4294967295u, 47496u, 11590u)), Struct_2(false, vec3<bool>(true, false, true), Struct_1(true, -8578i, vec2<i32>(25857i, -36105i), vec4<bool>(false, false, false, false)), vec3<u32>(4294967295u, 4294967295u, 70455u)), Struct_2(true, vec3<bool>(false, false, false), Struct_1(true, 67333i, vec2<i32>(1i, 1i), vec4<bool>(false, false, false, true)), vec3<u32>(26341u, 87438u, 4294967295u)), Struct_2(true, vec3<bool>(true, false, false), Struct_1(true, 46309i, vec2<i32>(-5603i, 11016i), vec4<bool>(true, true, false, false)), vec3<u32>(0u, 4294967295u, 4294967295u)), Struct_2(true, vec3<bool>(true, false, true), Struct_1(false, 31872i, vec2<i32>(-13270i, 46530i), vec4<bool>(false, false, true, false)), vec3<u32>(43310u, 60408u, 26688u)), Struct_2(true, vec3<bool>(false, true, true), Struct_1(true, 0i, vec2<i32>(-1i, 1i), vec4<bool>(true, true, false, true)), vec3<u32>(8224u, 48022u, 10765u)), Struct_2(false, vec3<bool>(true, false, true), Struct_1(false, -5446i, vec2<i32>(-7915i, 2147483647i), vec4<bool>(true, true, true, false)), vec3<u32>(0u, 15617u, 1u)), Struct_2(false, vec3<bool>(true, true, true), Struct_1(false, 16376i, vec2<i32>(1i, 2147483647i), vec4<bool>(false, true, true, false)), vec3<u32>(48128u, 11469u, 13131u)), Struct_2(false, vec3<bool>(false, false, false), Struct_1(true, -1i, vec2<i32>(-48648i, 0i), vec4<bool>(false, false, true, true)), vec3<u32>(1u, 31583u, 7436u)));

var<private> global2: array<f32, 20> = array<f32, 20>(-1000f, 2220f, 923f, -773f, -2327f, -1194f, -560f, 1188f, -236f, 191f, -204f, 858f, -1108f, -754f, 746f, -1393f, -1141f, -218f, -372f, -356f);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> vec2<i32> {
    global2 = array<f32, 20>();
    var var_0 = ~_wgslsmith_mult_i32(max(min(2147483647i, _wgslsmith_mult_i32(26474i, -1i)), _wgslsmith_div_i32(-1i, ~0i)), -42688i);
    let var_1 = vec2<i32>(arg_0.c.c.x, arg_0.c.b);
    var var_2 = !(!(all(!vec3<bool>(arg_0.b.x, true, arg_0.a)) && true));
    global2 = array<f32, 20>();
    return u_input.c.zx >> ((~_wgslsmith_sub_vec2_u32(arg_0.d.yx, max(arg_0.d.zy, arg_0.d.yz)) >> ((arg_0.d.yz ^ ~_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.d.x, arg_1), arg_0.d.xy)) % vec2<u32>(32u))) % vec2<u32>(32u));
}

fn func_2() -> f32 {
    let var_0 = -801f;
    global1 = array<Struct_2, 25>();
    global1 = array<Struct_2, 25>();
    var var_1 = Struct_1(true, 32246i, abs(func_3(Struct_2(any(vec4<bool>(true, false, true, true)), vec3<bool>(false, false, true), Struct_1(false, -2147483647i, vec2<i32>(44595i, u_input.a), vec4<bool>(true, true, true, true)), firstTrailingBit(vec3<u32>(0u, 4294967295u, 44893u))), ~1u)), vec4<bool>(true, true, true, true));
    var var_2 = global0[_wgslsmith_index_u32(1u, 26u)];
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(abs(33655u), 20u)]) * -1814f)) + _wgslsmith_f_op_f32(-397f * 381f));
}

fn func_1() -> i32 {
    global2 = array<f32, 20>();
    var var_0 = vec4<bool>((true & all(vec3<bool>(true, true, true))) && false, true, any(vec2<bool>(true, all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false)))), _wgslsmith_f_op_f32(func_2()) == _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~select(102306u, 39336u, false), 20u)]));
    let var_1 = Struct_3(Struct_1(true, _wgslsmith_add_i32(reverseBits(35131i), ~(-8517i)) | u_input.a, firstTrailingBit(select(u_input.c.xy, vec2<i32>(u_input.a, 34487i), true)) << (_wgslsmith_mult_vec2_u32(~vec2<u32>(0u, 1u), _wgslsmith_clamp_vec2_u32(vec2<u32>(28371u, 68735u), vec2<u32>(4294967295u, 20738u), vec2<u32>(22252u, 4294967295u))) % vec2<u32>(32u)), !(!(!vec4<bool>(var_0.x, var_0.x, false, false)))), u_input.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-344f, global2[_wgslsmith_index_u32(12161u, 20u)]), vec2<f32>(global2[_wgslsmith_index_u32(1u, 20u)], -580f), true)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1039f, global2[_wgslsmith_index_u32(1u, 20u)]))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -590f))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global2[_wgslsmith_index_u32(10283u, 20u)], -557f), _wgslsmith_div_vec2_f32(vec2<f32>(-2389f, 1132f), vec2<f32>(-114f, global2[_wgslsmith_index_u32(4294967295u, 20u)]))))))), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(abs(0u), 20u)])))));
    return 71932i;
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: vec3<f32>) -> vec3<u32> {
    let var_0 = select(!select(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(any(vec3<bool>(true, false, false)), true)), vec2<bool>(false, select(!any(vec3<bool>(false, true, false)), !any(vec3<bool>(false, true, true)), true)), true);
    let var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-769f, _wgslsmith_f_op_f32(round(1473f)), arg_2.x, _wgslsmith_f_op_f32(min(-413f, arg_2.x))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-287f, arg_2.x, -890f, arg_2.x)))))), vec4<f32>(-515f, _wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(98300u, 20u)])))), global2[_wgslsmith_index_u32(4294967295u, 20u)]), global2[_wgslsmith_index_u32(~abs(4294967295u), 20u)])));
    let var_2 = arg_2;
    var var_3 = _wgslsmith_mult_vec4_i32(u_input.d, vec4<i32>(~(-19287i), -arg_0, ~1i, _wgslsmith_sub_i32(2147483647i, arg_1)));
    let var_4 = global0[_wgslsmith_index_u32(1u, 26u)];
    return ~vec3<u32>(1u, var_4.d.x, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u >> (var_4.d.x % 32u), abs(var_4.d.x)), reverseBits(~var_4.d.yx)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-232f, global2[_wgslsmith_index_u32(19385u, 20u)], -356f, -206f)))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(73997u, 20u)], global2[_wgslsmith_index_u32(3947u, 20u)], 1027f, 227f)), vec4<f32>(global2[_wgslsmith_index_u32(45612u, 20u)], global2[_wgslsmith_index_u32(1u, 20u)], global2[_wgslsmith_index_u32(32009u, 20u)], global2[_wgslsmith_index_u32(0u, 20u)])))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1635f) - -448f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(60745u, 20u)] - global2[_wgslsmith_index_u32(43147u, 20u)]))), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 20u)] + global2[_wgslsmith_index_u32(1u, 20u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(810f - global2[_wgslsmith_index_u32(0u, 20u)]), 502f)))), _wgslsmith_clamp_vec3_u32(abs(~vec3<u32>(4234u, 4294967295u, 0u)) & ~_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 1u, 71550u), vec3<u32>(57289u, 1u, 19513u), vec3<u32>(18129u, 1u, 63560u)), select(_wgslsmith_div_vec3_u32(abs(vec3<u32>(1u, 1u, 4294967295u)), ~vec3<u32>(3662u, 54054u, 0u)), ~vec3<u32>(1u, 1u, 1u), false), abs(func_4(u_input.e >> (4294967295u % 32u), func_1(), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(0u, 20u)], global2[_wgslsmith_index_u32(1u, 20u)], 231f))))), _wgslsmith_f_op_f32(-113f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~64409u, 20u)] * _wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(0u, 20u)]))), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~4294967295u, 20u)])))), max(u_input.a & u_input.e, u_input.d.x) >> ((1u & select(75442u, 4294967295u, true)) % 32u), select(~vec4<i32>(-7027i, u_input.a, u_input.a, u_input.c.x), countOneBits(reverseBits(vec4<i32>(20111i, u_input.b, 42472i, 8043i))), vec4<bool>(true, true, all(vec2<bool>(true, true)), true)) & abs(vec4<i32>(u_input.a >> (1u % 32u), -u_input.d.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-15681i, -1i), u_input.c.xz), -u_input.e)));
}

