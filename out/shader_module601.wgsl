struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec2<bool>,
    d: vec2<u32>,
    e: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec4<f32>,
    d: vec4<f32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

var<private> global1: array<bool, 8> = array<bool, 8>(true, false, false, false, false, false, true, false);

var<private> global2: array<Struct_2, 18>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec4<i32>) -> vec2<bool> {
    global2 = array<Struct_2, 18>();
    var var_0 = global2[_wgslsmith_index_u32(~(~firstLeadingBit(_wgslsmith_dot_vec2_u32(arg_1.d, vec2<u32>(13649u, 1u))) & firstTrailingBit(_wgslsmith_clamp_u32(~478u, ~50597u, ~arg_1.a))), 18u)];
    var var_1 = _wgslsmith_add_vec2_i32(min(reverseBits(abs(abs(arg_2.yy))), u_input.b), arg_2.xw);
    var var_2 = false;
    var var_3 = Struct_2(firstLeadingBit(42537u & u_input.d.x));
    return vec2<bool>(global0.x, true);
}

fn func_2(arg_0: i32) -> Struct_1 {
    global0 = !(!(!func_3(true, Struct_1(u_input.a.x, vec2<f32>(973f, 739f), vec2<bool>(true, global0.x), u_input.a, u_input.b.x), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, arg_0), vec4<i32>(u_input.b.x, u_input.b.x, 1i, -1i)))));
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1746f, 864f, -1000f, 354f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(327f, 1292f, 1184f, 567f) * vec4<f32>(-1042f, -184f, -164f, -459f)))))));
    let var_1 = 761f;
    var var_2 = Struct_4(Struct_3(select(_wgslsmith_div_i32(-21939i, u_input.b.x), ~(-1159i), any(select(vec4<bool>(true, global1[_wgslsmith_index_u32(92188u, 8u)], false, global1[_wgslsmith_index_u32(39666u, 8u)]), vec4<bool>(true, global0.x, global0.x, true), global1[_wgslsmith_index_u32(1u, 8u)]))), Struct_1(50664u, _wgslsmith_f_op_vec2_f32(round(var_0.xz)), vec2<bool>(true, true), u_input.c.zz, abs(1i)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, 213f, var_0.x, var_1)) + vec4<f32>(-1000f, var_1, -1722f, var_1)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-571f, 1102f, 567f, var_0.x)))), global2[_wgslsmith_index_u32(1u, 18u)]), _wgslsmith_mult_vec4_i32(~firstLeadingBit(vec4<i32>(arg_0, u_input.b.x, u_input.b.x, arg_0)), vec4<i32>(abs(42681i), -3802i, -7266i, 1i)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(14981u, u_input.a.x), countOneBits(0u), ~u_input.c.x, _wgslsmith_clamp_u32(u_input.a.x, u_input.d.x, 61821u)), vec4<u32>(u_input.d.x, ~u_input.d.x, _wgslsmith_div_u32(u_input.d.x, u_input.d.x), 0u), _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.c.x, 42078u, u_input.d.x, 7278u), reverseBits(vec4<u32>(u_input.c.x, 7052u, 55353u, 4294967295u)), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 52084u, u_input.c.x, 59421u), vec4<u32>(0u, u_input.c.x, 4294967295u, u_input.c.x)))) % vec4<u32>(32u)), min(i32(-1i) * -u_input.b.x, -5786i), Struct_2(0u));
    let var_3 = Struct_2(var_2.d.a);
    return Struct_1(1u, _wgslsmith_f_op_vec2_f32(-var_0.yy), select(!var_2.a.b.c, var_2.a.b.c, !all(!vec4<bool>(false, false, global1[_wgslsmith_index_u32(4294967295u, 8u)], global1[_wgslsmith_index_u32(0u, 8u)]))), u_input.d, arg_0);
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<u32>, arg_2: u32, arg_3: bool) -> vec3<i32> {
    var var_0 = Struct_4(Struct_3(min(-2147483647i, reverseBits(-arg_0.x)), func_2(arg_0.x), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-685f, -1535f, 195f, 206f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-891f, -378f, -1000f, -1283f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(628f, 1456f, 199f, -631f))))), vec4<f32>(-425f, 338f, _wgslsmith_div_f32(-1000f, -1366f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -335f) * _wgslsmith_f_op_f32(f32(-1f) * -1988f))), Struct_2(~20296u)), vec4<i32>(u_input.b.x, firstLeadingBit(_wgslsmith_dot_vec4_i32(arg_0, select(arg_0, vec4<i32>(15122i, 2147483647i, u_input.b.x, arg_0.x), true))), arg_0.x, u_input.b.x), u_input.b.x, Struct_2(func_2(i32(-1i) * -arg_0.x).d.x));
    return -abs(vec3<i32>(~_wgslsmith_mod_i32(-27664i, var_0.a.a), ~48560i, 47009i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(countOneBits(u_input.b.x), -28981i, _wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, ~max(u_input.b.x, 2147483647i))), select(_wgslsmith_mult_vec3_i32(func_1(~vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, 2147483647i), ~vec2<u32>(1u, 0u), u_input.c.x, !global0.x), ~_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, 1137i, u_input.b.x), vec3<i32>(u_input.b.x, -1i, -2147483647i))), (select(vec3<i32>(u_input.b.x, u_input.b.x, -2147483647i), vec3<i32>(-1i, -1i, u_input.b.x), vec3<bool>(global1[_wgslsmith_index_u32(14083u, 8u)], false, global1[_wgslsmith_index_u32(u_input.a.x, 8u)])) ^ abs(vec3<i32>(-2147483647i, -26659i, u_input.b.x))) & vec3<i32>(~(-1i), _wgslsmith_div_i32(u_input.b.x, -11390i), _wgslsmith_mult_i32(-20021i, u_input.b.x)), !select(select(vec3<bool>(false, true, global1[_wgslsmith_index_u32(u_input.d.x, 8u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 8u)], true, global0.x), vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.c.x, 8u)], true)), vec3<bool>(global0.x, false, global1[_wgslsmith_index_u32(u_input.c.x, 8u)]), vec3<bool>(true, true, false))));
    let var_1 = Struct_3(-u_input.b.x, Struct_1(~(~_wgslsmith_mult_u32(37373u, 20009u)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(116f, -560f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(616f, -911f))), _wgslsmith_div_vec2_f32(func_2(u_input.b.x).b, _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1000f) + vec2<f32>(910f, -2131f))), vec2<bool>(false, !global1[_wgslsmith_index_u32(0u, 8u)]))), !(!(!vec2<bool>(true, global0.x))), ~countOneBits(_wgslsmith_mult_vec2_u32(u_input.c.yx, vec2<u32>(u_input.d.x, u_input.c.x))), _wgslsmith_dot_vec2_i32(select(vec2<i32>(u_input.b.x, u_input.b.x), min(vec2<i32>(0i, u_input.b.x), u_input.b), all(vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.d.x, 8u)], true))), vec2<i32>(u_input.b.x, 2147483647i) | u_input.b)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1072f, -1058f, 2116f, 1258f), vec4<f32>(-743f, -105f, 203f, 1475f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-845f, 310f, 1764f, 1198f) - vec4<f32>(-1259f, -487f, -414f, 543f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -734f, -963f, 467f)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-579f, 697f, 738f, -117f), vec4<f32>(-509f, -1044f, 833f, -819f), true)))))), !select(select(vec4<bool>(true, false, false, global1[_wgslsmith_index_u32(u_input.d.x, 8u)]), vec4<bool>(true, true, global1[_wgslsmith_index_u32(u_input.d.x, 8u)], false), vec4<bool>(false, true, global1[_wgslsmith_index_u32(4395u, 8u)], true)), vec4<bool>(true, true, true, true), !vec4<bool>(global0.x, global1[_wgslsmith_index_u32(u_input.c.x, 8u)], global0.x, global1[_wgslsmith_index_u32(u_input.d.x, 8u)])))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-924f + _wgslsmith_f_op_f32(f32(-1f) * -744f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(1313f)), _wgslsmith_f_op_f32(f32(-1f) * -166f), u_input.b.x > 32454i)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(627f, 241f, false)) - _wgslsmith_f_op_f32(max(1000f, -602f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-177f, 844f))) + 1f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-1183f))))))), global2[_wgslsmith_index_u32(~36442u, 18u)]);
    global2 = array<Struct_2, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.d.zy, _wgslsmith_clamp_u32(_wgslsmith_div_u32(~countOneBits(u_input.d.x), max(var_1.e.a, 0u)), ~_wgslsmith_mod_u32(1u, _wgslsmith_dot_vec2_u32(u_input.a, var_1.b.d)), countOneBits(u_input.a.x)), var_1.a, -1864f, var_1.b.b);
}

