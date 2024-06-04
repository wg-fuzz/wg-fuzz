struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<f32>(195f, -262f), -17877i, -737f, vec4<u32>(11368u, 1u, 125586u, 16535u)), vec3<i32>(-1i, -1i, -25888i), Struct_1(vec2<f32>(330f, 1000f), 24549i, 332f, vec4<u32>(0u, 67802u, 0u, 40451u)), 1i);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_1, arg_3: Struct_2) -> Struct_2 {
    global0 = arg_3;
    global0 = arg_3;
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(arg_3.a.a * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0 - vec2<f32>(arg_0.x, -2343f)))))));
    global0 = arg_3;
    global0 = arg_3;
    return arg_3;
}

fn func_3() -> bool {
    global0 = func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.a.a + vec2<f32>(_wgslsmith_f_op_f32(global0.c.c + global0.a.a.x), _wgslsmith_f_op_f32(sign(global0.a.a.x)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(260f, -216f))), ~_wgslsmith_mult_u32(global0.c.d.x, u_input.a) != 0u, func_2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1322f, _wgslsmith_f_op_f32(-924f * 583f)))), true, global0.c, Struct_2(func_2(vec2<f32>(862f, 628f), true, func_2(vec2<f32>(-1326f, -1256f), true, global0.c, Struct_2(global0.a, global0.b, Struct_1(vec2<f32>(global0.c.c, -3146f), global0.c.b, -221f, global0.c.d), 0i)).c, Struct_2(global0.a, vec3<i32>(global0.b.x, global0.b.x, global0.c.b), global0.c, global0.b.x)).a, global0.b, func_2(global0.c.a, all(vec2<bool>(false, false)), func_2(vec2<f32>(-993f, global0.c.c), false, Struct_1(global0.a.a, global0.d, -1688f, vec4<u32>(u_input.a, u_input.a, global0.a.d.x, global0.a.d.x)), Struct_2(global0.a, vec3<i32>(7833i, global0.d, 24848i), global0.a, global0.b.x)).a, func_2(vec2<f32>(global0.c.c, -944f), true, Struct_1(global0.a.a, global0.a.b, -382f, vec4<u32>(23925u, 38284u, u_input.a, 12399u)), Struct_2(global0.a, vec3<i32>(-3691i, global0.d, -1i), Struct_1(vec2<f32>(1165f, global0.a.c), global0.a.b, global0.a.a.x, vec4<u32>(44060u, 41215u, 15012u, global0.c.d.x)), global0.d))).c, (-61975i ^ global0.b.x) >> (u_input.a % 32u))).c, func_2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_div_f32(global0.c.c, global0.c.c), _wgslsmith_f_op_f32(trunc(-1087f))))), true & (-1224f >= global0.c.a.x), func_2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-266f, -270f) * global0.a.a))), reverseBits(4294967295u) != global0.c.d.x, func_2(_wgslsmith_div_vec2_f32(global0.a.a, vec2<f32>(-1000f, global0.c.c)), all(vec2<bool>(false, true)), func_2(vec2<f32>(global0.a.a.x, -309f), true, Struct_1(vec2<f32>(1267f, global0.a.a.x), global0.b.x, global0.c.a.x, global0.c.d), Struct_2(global0.a, vec3<i32>(2147483647i, 11250i, global0.c.b), Struct_1(global0.a.a, 13636i, global0.a.c, global0.a.d), -2147483647i)).a, Struct_2(Struct_1(global0.c.a, -16586i, global0.a.c, vec4<u32>(37344u, global0.a.d.x, global0.a.d.x, u_input.a)), global0.b, global0.c, global0.d)).c, func_2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.c.c, -1257f))), true, global0.c, Struct_2(global0.a, global0.b, global0.c, global0.b.x))).c, func_2(global0.c.a, true, global0.c, Struct_2(func_2(global0.c.a, true, Struct_1(global0.c.a, global0.d, -392f, vec4<u32>(3205u, u_input.a, 61326u, 4294967295u)), Struct_2(Struct_1(vec2<f32>(403f, -1000f), global0.c.b, global0.a.c, global0.a.d), vec3<i32>(-21089i, global0.d, global0.c.b), global0.a, global0.b.x)).c, global0.b ^ vec3<i32>(2147483647i, global0.c.b, 2147483647i), Struct_1(global0.c.a, -49645i, 455f, vec4<u32>(3795u, global0.c.d.x, global0.a.d.x, 4294967295u)), firstTrailingBit(1i)))));
    global0 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(round(-1588f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.c.c)))), firstTrailingBit(global0.b.x), _wgslsmith_f_op_f32(-1048f - global0.c.c), select(global0.a.d, global0.a.d, false)), global0.b, Struct_1(global0.a.a, _wgslsmith_add_i32(-37261i, global0.c.b << (global0.a.d.x % 32u)) | min(global0.b.x, 0i), 244f, global0.c.d), -33053i);
    let var_0 = Struct_2(global0.a, global0.b << (global0.a.d.yww % vec3<u32>(32u)), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1784f, global0.c.a.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1205f, 591f)))), true, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-112f + 3514f), _wgslsmith_f_op_f32(abs(global0.a.a.x))), ~select(11465i, -25323i, false), _wgslsmith_f_op_f32(-1000f * func_2(global0.a.a, true, Struct_1(vec2<f32>(-131f, 2694f), -2147483647i, global0.a.c, global0.a.d), Struct_2(global0.a, global0.b, Struct_1(global0.a.a, -33831i, 2012f, vec4<u32>(60346u, u_input.a, u_input.a, 60426u)), 0i)).c.a.x), global0.c.d), Struct_2(func_2(_wgslsmith_f_op_vec2_f32(sign(global0.c.a)), true, Struct_1(global0.a.a, -15183i, 1040f, vec4<u32>(u_input.a, 1u, 17180u, u_input.a)), func_2(vec2<f32>(global0.a.a.x, -1886f), true, global0.c, Struct_2(global0.c, global0.b, Struct_1(global0.a.a, 0i, global0.a.a.x, vec4<u32>(global0.c.d.x, global0.a.d.x, global0.c.d.x, 0u)), global0.a.b))).c, reverseBits(-global0.b), global0.a, global0.b.x)).c, min(2323i, abs(~abs(global0.d))));
    return any(select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), all(vec2<bool>(true, false))), vec3<bool>(true, true, true), true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), true)));
}

fn func_1(arg_0: Struct_1) -> vec4<u32> {
    let var_0 = -_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, (global0.b.x >> (arg_0.d.x % 32u)) ^ -2147483647i, ~_wgslsmith_add_i32(-11953i, arg_0.b), select(72326i, ~arg_0.b, true)), _wgslsmith_mult_vec4_i32(vec4<i32>(select(1i, 0i, true), ~arg_0.b, global0.c.b, -8432i), _wgslsmith_add_vec4_i32(vec4<i32>(-19397i, arg_0.b, -28327i, arg_0.b), vec4<i32>(arg_0.b, 0i, global0.c.b, global0.a.b))));
    let var_1 = countOneBits(~(-_wgslsmith_add_i32(arg_0.b & 11804i, _wgslsmith_mod_i32(2147483647i, arg_0.b))));
    global0 = func_2(vec2<f32>(512f, global0.a.a.x), global0.a.c == _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a.c + _wgslsmith_f_op_f32(min(global0.c.a.x, global0.a.a.x))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(920f, global0.c.a.x), _wgslsmith_f_op_f32(floor(693f))))), global0.a, Struct_2(global0.c, vec3<i32>(global0.a.b, 3200i, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(11192i, -2147483647i, 18515i), vec3<i32>(2147483647i, var_0, -2147483647i)), var_0)), Struct_1(arg_0.a, global0.a.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.a.a.x * global0.a.a.x), global0.a.c)), reverseBits(_wgslsmith_add_vec4_u32(global0.a.d, global0.c.d))), global0.b.x));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(arg_0.a)), -2147483647i, 1480f, vec4<u32>(~u_input.a, _wgslsmith_clamp_u32(_wgslsmith_add_u32(global0.c.d.x, ~49709u), 36870u, select(_wgslsmith_div_u32(9570u, global0.c.d.x), 14191u, true)), ~16307u, 21463u));
    var var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1463f, -1576f, var_2.c, global0.a.c) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-158f, arg_0.a.x, arg_0.c, arg_0.c), vec4<f32>(1143f, 287f, -1230f, global0.c.a.x), false))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-160f, -1000f, arg_0.a.x, 197f) + vec4<f32>(1637f, arg_0.c, global0.a.a.x, -1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1826f, 1822f, -1000f, 870f) * vec4<f32>(1634f, var_2.a.x, 594f, -1584f))))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1395f, var_2.c), var_2.c, true)), -575f, _wgslsmith_f_op_f32(-global0.a.c), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2256f)))), select(vec4<bool>(true, true, func_3(), true), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true)), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true)), true)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(495f, global0.c.c, -1825f, 612f))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(565f, var_2.a.x, -716f, -235f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.c, 447f, 422f, 413f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, arg_0.a.x, global0.a.a.x, global0.c.c) - vec4<f32>(var_2.a.x, -1625f, 639f, var_2.a.x))))))), _wgslsmith_sub_i32(var_2.b, arg_0.b & ~var_1) >= arg_0.b));
    return var_2.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(global0.a.a, ~(-27417i), -658f, vec4<u32>(43016u >> (global0.a.d.x % 32u), global0.c.d.x >> (countOneBits(u_input.a) % 32u), abs(31415u), _wgslsmith_dot_vec4_u32(global0.c.d, func_1(Struct_1(global0.a.a, -2147483647i, 544f, global0.a.d))))), select(countOneBits(abs(vec3<i32>(global0.d, global0.c.b, -13156i))), vec3<i32>(firstTrailingBit(global0.d), _wgslsmith_clamp_i32(global0.d, global0.a.b, -2147483647i), reverseBits(5846i)) & global0.b, !select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), true)), global0.a, _wgslsmith_mult_i32(global0.d, global0.d));
    global0 = Struct_2(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a.a)), any(vec4<bool>(true, true, true, true)), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.c.a + vec2<f32>(global0.c.c, var_0.a.c))), true, Struct_1(_wgslsmith_f_op_vec2_f32(var_0.c.a + global0.c.a), 16413i, _wgslsmith_f_op_f32(f32(-1f) * -893f), vec4<u32>(global0.a.d.x, var_0.c.d.x, var_0.a.d.x, u_input.a)), func_2(_wgslsmith_f_op_vec2_f32(global0.a.a * vec2<f32>(var_0.c.c, var_0.a.a.x)), true, func_2(vec2<f32>(-387f, var_0.a.a.x), true, Struct_1(var_0.a.a, 14326i, global0.c.a.x, global0.a.d), var_0).a, var_0)).c, var_0).a, _wgslsmith_mult_vec3_i32(global0.b, ~global0.b), func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.c.a) * _wgslsmith_f_op_vec2_f32(step(var_0.a.a, _wgslsmith_div_vec2_f32(var_0.c.a, vec2<f32>(var_0.c.c, -1076f))))), false, func_2(global0.c.a, true, Struct_1(_wgslsmith_f_op_vec2_f32(round(var_0.a.a)), -3992i, _wgslsmith_f_op_f32(exp2(var_0.a.c)), var_0.c.d << (global0.a.d % vec4<u32>(32u))), Struct_2(func_2(global0.a.a, false, Struct_1(var_0.a.a, 4815i, 185f, vec4<u32>(global0.c.d.x, 1u, var_0.c.d.x, 1u)), Struct_2(Struct_1(vec2<f32>(-556f, var_0.c.c), -22808i, var_0.a.a.x, global0.a.d), vec3<i32>(1i, global0.a.b, global0.d), Struct_1(global0.c.a, 2147483647i, var_0.a.a.x, vec4<u32>(global0.c.d.x, global0.c.d.x, var_0.a.d.x, var_0.c.d.x)), -2147483647i)).a, var_0.b, global0.a, 28062i >> (u_input.a % 32u))).c, var_0).a, global0.a.b ^ var_0.a.b);
    global0 = var_0;
    global0 = var_0;
    global0 = Struct_2(var_0.c, ~vec3<i32>(global0.d, _wgslsmith_mod_i32(global0.b.x, global0.d), firstTrailingBit(~var_0.c.b)), global0.c, -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec3<i32>(~var_0.c.b, global0.d, 1i)) << ((global0.a.d.zxy ^ ~vec3<u32>(var_0.c.d.x, u_input.a, global0.a.d.x)) % vec3<u32>(32u)));
}

