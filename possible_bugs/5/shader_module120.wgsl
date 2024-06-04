struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: vec4<u32>,
    d: Struct_1,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 29>;

var<private> global1: array<i32, 10>;

var<private> global2: i32;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> i32 {
    let var_0 = arg_0.a;
    global2 = ~(~arg_2.b.c.x);
    return 0i;
}

fn func_2(arg_0: vec4<f32>) -> bool {
    var var_0 = Struct_3(Struct_1(vec4<i32>(~u_input.a, min(~1i, abs(-59i)), global1[_wgslsmith_index_u32(4791u, 10u)], _wgslsmith_clamp_i32(-2147483647i, u_input.a, -1i)), _wgslsmith_mult_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(12524u, 10u)] ^ 2147483647i, global1[_wgslsmith_index_u32(31340u, 10u)] << (4294967295u % 32u), func_3(Struct_2(Struct_1(vec4<i32>(u_input.a, global1[_wgslsmith_index_u32(0u, 10u)], u_input.a, u_input.a), vec3<i32>(global1[_wgslsmith_index_u32(59203u, 10u)], -72345i, -36827i), vec4<i32>(u_input.a, u_input.a, 1i, -2147483647i), 27944u), Struct_1(vec4<i32>(12141i, global1[_wgslsmith_index_u32(47573u, 10u)], 2147483647i, u_input.a), vec3<i32>(u_input.a, 27756i, u_input.a), vec4<i32>(1i, global1[_wgslsmith_index_u32(1u, 10u)], 1037i, global1[_wgslsmith_index_u32(4294967295u, 10u)]), 4294967295u)), Struct_2(Struct_1(vec4<i32>(u_input.a, u_input.a, u_input.a, global1[_wgslsmith_index_u32(4294967295u, 10u)]), vec3<i32>(global1[_wgslsmith_index_u32(4455u, 10u)], 0i, -1662i), vec4<i32>(2147483647i, 14308i, global1[_wgslsmith_index_u32(0u, 10u)], global1[_wgslsmith_index_u32(4294967295u, 10u)]), 21727u), Struct_1(vec4<i32>(u_input.a, 1i, -13773i, -22286i), vec3<i32>(global1[_wgslsmith_index_u32(69180u, 10u)], global1[_wgslsmith_index_u32(0u, 10u)], -21944i), vec4<i32>(1i, u_input.a, 17022i, -1i), 56397u)), Struct_2(Struct_1(vec4<i32>(1i, global1[_wgslsmith_index_u32(5649u, 10u)], u_input.a, u_input.a), vec3<i32>(global1[_wgslsmith_index_u32(0u, 10u)], global1[_wgslsmith_index_u32(53528u, 10u)], u_input.a), vec4<i32>(u_input.a, -2147483647i, u_input.a, -2147483647i), 14123u), Struct_1(vec4<i32>(u_input.a, u_input.a, global1[_wgslsmith_index_u32(1u, 10u)], 2147483647i), vec3<i32>(global1[_wgslsmith_index_u32(3707u, 10u)], global1[_wgslsmith_index_u32(25967u, 10u)], global1[_wgslsmith_index_u32(0u, 10u)]), vec4<i32>(u_input.a, u_input.a, -2723i, global1[_wgslsmith_index_u32(4294967295u, 10u)]), 14682u)))), vec3<i32>(func_3(Struct_2(Struct_1(vec4<i32>(0i, global1[_wgslsmith_index_u32(4294967295u, 10u)], u_input.a, -29358i), vec3<i32>(global1[_wgslsmith_index_u32(37604u, 10u)], global1[_wgslsmith_index_u32(4294967295u, 10u)], 2147483647i), vec4<i32>(u_input.a, -2147483647i, -2880i, -18570i), 17601u), Struct_1(vec4<i32>(-2147483647i, global1[_wgslsmith_index_u32(56376u, 10u)], u_input.a, -1i), vec3<i32>(-14300i, u_input.a, global1[_wgslsmith_index_u32(4294967295u, 10u)]), vec4<i32>(global1[_wgslsmith_index_u32(18708u, 10u)], 2147483647i, u_input.a, -38573i), 12426u)), Struct_2(Struct_1(vec4<i32>(-1i, -5910i, u_input.a, 0i), vec3<i32>(global1[_wgslsmith_index_u32(638u, 10u)], -14249i, 2147483647i), vec4<i32>(2147483647i, u_input.a, global1[_wgslsmith_index_u32(4294967295u, 10u)], 0i), 30852u), Struct_1(vec4<i32>(-1i, 2147483647i, 0i, -2147483647i), vec3<i32>(global1[_wgslsmith_index_u32(30975u, 10u)], -2147483647i, u_input.a), vec4<i32>(u_input.a, 46261i, 34524i, global1[_wgslsmith_index_u32(75605u, 10u)]), 1u)), Struct_2(Struct_1(vec4<i32>(-32622i, u_input.a, global1[_wgslsmith_index_u32(1u, 10u)], -2147483647i), vec3<i32>(-1i, u_input.a, u_input.a), vec4<i32>(-24596i, u_input.a, 14550i, -23777i), 0u), Struct_1(vec4<i32>(u_input.a, 12945i, global1[_wgslsmith_index_u32(1u, 10u)], -26978i), vec3<i32>(-21324i, u_input.a, u_input.a), vec4<i32>(91i, -43300i, 0i, global1[_wgslsmith_index_u32(11410u, 10u)]), 48096u))), i32(-1i) * -2278i, 0i)), ~_wgslsmith_clamp_vec4_i32(max(vec4<i32>(1i, u_input.a, -13557i, u_input.a), vec4<i32>(u_input.a, -17024i, global1[_wgslsmith_index_u32(44610u, 10u)], -1827i)), vec4<i32>(-2147483647i, 55479i, -2147483647i, u_input.a), select(vec4<i32>(u_input.a, 3136i, 1i, u_input.a), vec4<i32>(2147483647i, -42129i, -2147483647i, u_input.a), vec4<bool>(true, false, false, true))), ~1u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0 - _wgslsmith_div_vec4_f32(arg_0, vec4<f32>(arg_0.x, 1301f, 148f, arg_0.x))))), Struct_1(_wgslsmith_mult_vec4_i32(abs(_wgslsmith_div_vec4_i32(vec4<i32>(-44675i, 0i, 10379i, 31786i), vec4<i32>(-15301i, -1i, u_input.a, -4955i))), vec4<i32>(_wgslsmith_add_i32(-1i, -1i), global1[_wgslsmith_index_u32(~1u, 10u)], -global1[_wgslsmith_index_u32(11930u, 10u)], func_3(Struct_2(Struct_1(vec4<i32>(-2147483647i, 1i, -2900i, -1i), vec3<i32>(1419i, -35079i, -2147483647i), vec4<i32>(12721i, u_input.a, global1[_wgslsmith_index_u32(64550u, 10u)], u_input.a), 71233u), Struct_1(vec4<i32>(-14830i, u_input.a, -2147483647i, u_input.a), vec3<i32>(2147483647i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, global1[_wgslsmith_index_u32(15848u, 10u)], -20687i), 41884u)), Struct_2(Struct_1(vec4<i32>(global1[_wgslsmith_index_u32(12018u, 10u)], -7929i, global1[_wgslsmith_index_u32(0u, 10u)], 1i), vec3<i32>(global1[_wgslsmith_index_u32(1u, 10u)], -1i, u_input.a), vec4<i32>(-2147483647i, u_input.a, 2147483647i, u_input.a), 4294967295u), Struct_1(vec4<i32>(0i, 2147483647i, 87427i, -2147483647i), vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 10u)], 2147483647i, -9760i), vec4<i32>(32622i, -2147483647i, u_input.a, 1i), 74607u)), Struct_2(Struct_1(vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 10u)], -1i, global1[_wgslsmith_index_u32(11052u, 10u)], 1i), vec3<i32>(46721i, 2943i, u_input.a), vec4<i32>(-16892i, u_input.a, u_input.a, 2147483647i), 58932u), Struct_1(vec4<i32>(u_input.a, global1[_wgslsmith_index_u32(10708u, 10u)], global1[_wgslsmith_index_u32(4294967295u, 10u)], -24479i), vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 10u)], -58144i, -9730i), vec4<i32>(u_input.a, u_input.a, global1[_wgslsmith_index_u32(0u, 10u)], -1i), 4294967295u))))), ~vec3<i32>(u_input.a ^ global1[_wgslsmith_index_u32(0u, 10u)], u_input.a, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(17081u, 21581u), 10u)]), vec4<i32>(-16194i & _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(18852u, 10u)], 0i), 1i ^ _wgslsmith_div_i32(1i, global1[_wgslsmith_index_u32(0u, 10u)]), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 0u, 23345u, 107607u), vec4<u32>(12315u, 1907u, 4294967295u, 19161u)), 10u)], 0i), 16557u), Struct_1(~(select(vec4<i32>(global1[_wgslsmith_index_u32(6687u, 10u)], 0i, -28593i, global1[_wgslsmith_index_u32(4294967295u, 10u)]), vec4<i32>(-1i, global1[_wgslsmith_index_u32(4294967295u, 10u)], u_input.a, u_input.a), true) | (vec4<i32>(u_input.a, u_input.a, 1i, u_input.a) << (vec4<u32>(43176u, 0u, 37949u, 49871u) % vec4<u32>(32u)))), vec3<i32>(min(global1[_wgslsmith_index_u32(86394u, 10u)], ~2147483647i), -1i, min(global1[_wgslsmith_index_u32(13935u, 10u)], 32071i)), vec4<i32>(i32(-1i) * -9004i, ~global1[_wgslsmith_index_u32(57164u, 10u)], _wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(15363u, 10u)], -1i, 2147483647i), vec3<i32>(-1i, -1i, -14592i)), -1i) | vec4<i32>(_wgslsmith_add_i32(global1[_wgslsmith_index_u32(4294967295u, 10u)], 1i), min(-45162i, global1[_wgslsmith_index_u32(5429u, 10u)]), u_input.a << (0u % 32u), -global1[_wgslsmith_index_u32(0u, 10u)]), (_wgslsmith_clamp_u32(42150u, 20040u, 22839u) | ~102433u) ^ 124085u));
    let var_1 = var_0.c;
    global1 = array<i32, 10>();
    let var_2 = var_0.d;
    var_0 = global0[_wgslsmith_index_u32(var_0.c.d, 29u)];
    return !select(select(true, all(vec2<bool>(true, true)), true), any(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true))), _wgslsmith_div_f32(705f, arg_0.x) < arg_0.x) & true;
}

fn func_1() -> i32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(round(532f)), 495f, _wgslsmith_div_f32(-712f, _wgslsmith_f_op_f32(-810f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-275f, -849f)))), 1076f);
    let var_1 = vec4<bool>(true || all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), select(false, false, false))), true, !(!func_2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, var_0.x, var_0.x, -1134f), vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))))), -469f < _wgslsmith_f_op_f32(select(1f, var_0.x, any(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true))))));
    global2 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 27269u, _wgslsmith_mod_u32(16025u, 11641u), 1u)), 19481u) << (1u % 32u), 10u)];
    return _wgslsmith_dot_vec4_i32(vec4<i32>(max(global1[_wgslsmith_index_u32(1u, 10u)], ~1i), ~_wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(0u, 10u)], 35932i, u_input.a), vec3<i32>(global1[_wgslsmith_index_u32(1u, 10u)], 34236i, u_input.a)), u_input.a, u_input.a), ~_wgslsmith_div_vec4_i32(-vec4<i32>(u_input.a, 0i, global1[_wgslsmith_index_u32(10296u, 10u)], 2147483647i), vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 10u)], 1i, 0i, global1[_wgslsmith_index_u32(4294967295u, 10u)]) & vec4<i32>(2147483647i, 2147483647i, global1[_wgslsmith_index_u32(0u, 10u)], global1[_wgslsmith_index_u32(1u, 10u)]))) ^ ~global1[_wgslsmith_index_u32(1u, 10u)];
}

fn func_4(arg_0: i32, arg_1: vec4<bool>, arg_2: Struct_4, arg_3: Struct_4) -> Struct_3 {
    let var_0 = !(!vec4<bool>(false, true, true, !arg_1.x));
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2304f), -887f));
    global2 = select(-1i, abs(func_1()) ^ ~(~(~arg_3.e.x)), !(_wgslsmith_mod_i32(arg_2.e.x ^ 12346i, arg_0) == u_input.a));
    let var_2 = ~55107u | ~arg_2.a.a.d;
    let var_3 = _wgslsmith_div_vec3_u32(arg_3.c.xxx, max(arg_3.c.xyw, max(vec3<u32>(_wgslsmith_mod_u32(50194u, 9488u), _wgslsmith_add_u32(30231u, var_2), 1u), arg_3.c.wxw)));
    return Struct_3(Struct_1(arg_3.a.a.c, ~vec3<i32>(countOneBits(global1[_wgslsmith_index_u32(arg_3.d.d, 10u)]), ~(-1180i), arg_2.e.x >> (122516u % 32u)), arg_2.a.a.a, ~(~(~51509u))), vec4<f32>(-1257f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_2.b)), var_1))), var_1, -156f), Struct_1(vec4<i32>(~_wgslsmith_add_i32(14977i, u_input.a), ~(~arg_2.d.a.x), -_wgslsmith_mod_i32(u_input.a, global1[_wgslsmith_index_u32(arg_2.d.d, 10u)]), global1[_wgslsmith_index_u32(34892u ^ ~arg_3.c.x, 10u)]), arg_2.d.a.xxw, select(arg_2.d.c, vec4<i32>(1i, arg_2.e.x ^ u_input.a, -arg_3.d.a.x, 12310i), (arg_3.a.a.a.x ^ global1[_wgslsmith_index_u32(4294967295u, 10u)]) < _wgslsmith_dot_vec2_i32(vec2<i32>(-46642i, -2147483647i), vec2<i32>(-1i, arg_3.e.x))), arg_3.c.x), arg_2.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(~func_1(), vec4<bool>(any(vec4<bool>(true, false, false, false)) & false, true, true, global1[_wgslsmith_index_u32(43436u, 10u)] <= -10543i), Struct_4(Struct_2(Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, 22573i, -10720i, -1i), vec4<i32>(1i, global1[_wgslsmith_index_u32(24284u, 10u)], -1i, 36530i), vec4<i32>(u_input.a, global1[_wgslsmith_index_u32(4294967295u, 10u)], -1i, global1[_wgslsmith_index_u32(33394u, 10u)])), min(vec3<i32>(u_input.a, -45071i, -23248i), vec3<i32>(-28220i, global1[_wgslsmith_index_u32(29546u, 10u)], -17994i)), _wgslsmith_mod_vec4_i32(vec4<i32>(-24379i, 23378i, u_input.a, -6298i), vec4<i32>(5992i, 0i, global1[_wgslsmith_index_u32(4294967295u, 10u)], global1[_wgslsmith_index_u32(47695u, 10u)])), _wgslsmith_div_u32(4294967295u, 16902u)), Struct_1(vec4<i32>(u_input.a, -24i, global1[_wgslsmith_index_u32(17480u, 10u)], u_input.a), ~vec3<i32>(global1[_wgslsmith_index_u32(1u, 10u)], -20000i, 16115i), vec4<i32>(0i, -1i, global1[_wgslsmith_index_u32(0u, 10u)], u_input.a) & vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 10u)], global1[_wgslsmith_index_u32(1u, 10u)], u_input.a, -1i), 1u)), 1000f, ~vec4<u32>(_wgslsmith_mult_u32(26423u, 0u), reverseBits(27796u), 1u, 1u), Struct_1(firstLeadingBit(vec4<i32>(global1[_wgslsmith_index_u32(1u, 10u)], 0i, 1i, -26823i)), abs(select(vec3<i32>(17884i, 2147483647i, 2147483647i), vec3<i32>(u_input.a, u_input.a, 2147483647i), false)), -(vec4<i32>(18072i, 1i, u_input.a, global1[_wgslsmith_index_u32(0u, 10u)]) ^ vec4<i32>(8101i, 20570i, u_input.a, global1[_wgslsmith_index_u32(0u, 10u)])), reverseBits(~17679u)), vec4<i32>(u_input.a, ~_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(37024u, 10u)], 2147483647i), -(u_input.a | u_input.a), 1i)), Struct_4(Struct_2(Struct_1(~vec4<i32>(2147483647i, 76240i, global1[_wgslsmith_index_u32(4294967295u, 10u)], -11452i), abs(vec3<i32>(global1[_wgslsmith_index_u32(124518u, 10u)], 15825i, 0i)), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, 47133i, global1[_wgslsmith_index_u32(1u, 10u)]), vec4<i32>(u_input.a, global1[_wgslsmith_index_u32(0u, 10u)], -27654i, global1[_wgslsmith_index_u32(84043u, 10u)])), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 31930u, 4294967295u), vec4<u32>(23324u, 1u, 4294967295u, 4822u))), Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, 0i, -3753i, global1[_wgslsmith_index_u32(0u, 10u)]), vec4<i32>(global1[_wgslsmith_index_u32(66076u, 10u)], global1[_wgslsmith_index_u32(0u, 10u)], global1[_wgslsmith_index_u32(0u, 10u)], global1[_wgslsmith_index_u32(4294967295u, 10u)])), _wgslsmith_clamp_vec3_i32(vec3<i32>(-58757i, -41052i, 14349i), vec3<i32>(9866i, global1[_wgslsmith_index_u32(0u, 10u)], -2147483647i), vec3<i32>(-8600i, u_input.a, global1[_wgslsmith_index_u32(51465u, 10u)])), ~vec4<i32>(-8171i, global1[_wgslsmith_index_u32(16173u, 10u)], 13629i, global1[_wgslsmith_index_u32(49348u, 10u)]), 16181u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -735f)))), vec4<u32>(~firstLeadingBit(4294967295u), ~0u, ~1u, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(46104u, 1u, 63670u, 11586u)), ~vec4<u32>(31290u, 0u, 47802u, 22193u))), Struct_1((vec4<i32>(0i, 8569i, 0i, u_input.a) >> (vec4<u32>(134818u, 58574u, 26329u, 26518u) % vec4<u32>(32u))) ^ select(vec4<i32>(1i, 2147483647i, 121558i, -2147483647i), vec4<i32>(global1[_wgslsmith_index_u32(0u, 10u)], u_input.a, u_input.a, global1[_wgslsmith_index_u32(1u, 10u)]), vec4<bool>(false, true, true, false)), ~reverseBits(vec3<i32>(1i, global1[_wgslsmith_index_u32(37388u, 10u)], u_input.a)), vec4<i32>(1i, -u_input.a, -13284i, i32(-1i) * -37830i), 1u), vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 10u)], u_input.a, global1[_wgslsmith_index_u32(~16666u, 10u)], _wgslsmith_div_i32(u_input.a, 1i))));
    let var_1 = _wgslsmith_div_i32(_wgslsmith_clamp_i32(~func_4(_wgslsmith_div_i32(u_input.a, -1i), vec4<bool>(false, false, true, true), Struct_4(Struct_2(Struct_1(var_0.a.a, var_0.c.c.wxw, var_0.d.c, var_0.d.d), var_0.d), var_0.b.x, vec4<u32>(0u, var_0.a.d, var_0.d.d, var_0.c.d), Struct_1(vec4<i32>(27835i, u_input.a, u_input.a, var_0.a.c.x), vec3<i32>(global1[_wgslsmith_index_u32(1u, 10u)], 0i, u_input.a), var_0.d.c, var_0.c.d), vec4<i32>(30191i, 2147483647i, -21991i, u_input.a)), Struct_4(Struct_2(Struct_1(var_0.a.c, var_0.a.c.wxx, vec4<i32>(var_0.d.a.x, -45667i, u_input.a, -33466i), 0u), Struct_1(var_0.a.a, vec3<i32>(u_input.a, u_input.a, -2147483647i), vec4<i32>(-1i, 1i, u_input.a, -1i), var_0.c.d)), var_0.b.x, vec4<u32>(1u, var_0.c.d, var_0.a.d, 1u), Struct_1(var_0.a.a, var_0.c.a.wwx, var_0.a.a, 4294967295u), var_0.c.c)).c.c.x, firstTrailingBit(_wgslsmith_add_i32(u_input.a & u_input.a, _wgslsmith_add_i32(global1[_wgslsmith_index_u32(100958u, 10u)], 0i))), -2147483647i), var_0.c.a.x);
    global0 = array<Struct_3, 29>();
    let var_2 = var_0.d.c.x;
    var var_3 = _wgslsmith_mult_u32(1u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(~1u, firstTrailingBit(var_0.c.d), 72720u), _wgslsmith_mod_vec3_u32(vec3<u32>(81540u, var_0.a.d, 2046u), vec3<u32>(var_0.c.d, 10888u, 57287u)) << (~vec3<u32>(var_0.a.d, var_0.d.d, 18718u) % vec3<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(func_4(var_0.d.a.x, vec4<bool>(true, true, false, false), Struct_4(Struct_2(Struct_1(vec4<i32>(1i, var_0.d.c.x, 17279i, var_1), vec3<i32>(var_2, var_0.a.c.x, -15775i), var_0.a.c, 19630u), Struct_1(vec4<i32>(1i, 19257i, var_1, -2147483647i), var_0.c.c.xxx, var_0.a.c, var_0.a.d)), -526f, vec4<u32>(var_0.a.d, 35464u, var_0.d.d, var_0.c.d), Struct_1(var_0.a.c, var_0.d.c.wwy, vec4<i32>(88232i, 2147483647i, var_2, var_0.c.a.x), 24465u), var_0.a.c), Struct_4(Struct_2(var_0.c, Struct_1(var_0.c.c, var_0.d.b, var_0.a.a, 1u)), var_0.b.x, vec4<u32>(1u, var_0.c.d, 0u, var_0.d.d), Struct_1(var_0.c.a, var_0.c.b, vec4<i32>(var_2, u_input.a, -3124i, -4260i), var_0.d.d), vec4<i32>(global1[_wgslsmith_index_u32(var_0.c.d, 10u)], var_0.d.c.x, 35598i, var_0.c.c.x))).a.d ^ _wgslsmith_mult_u32(35855u, var_0.d.d), _wgslsmith_sub_u32(var_0.a.d ^ 27437u, ~var_0.d.d)) ^ _wgslsmith_mult_u32(~select(1u, var_0.d.d, false), 0u));
}

