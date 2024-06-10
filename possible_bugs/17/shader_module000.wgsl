struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27>;

var<private> global1: array<vec2<u32>, 26>;

var<private> global2: array<vec3<i32>, 31>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_1(arg_0: u32) -> u32 {
    var var_0 = max(_wgslsmith_clamp_vec2_i32(-_wgslsmith_mult_vec2_i32(u_input.a.xx, vec2<i32>(u_input.a.x, u_input.a.x)), -u_input.a.xy, vec2<i32>(1i, _wgslsmith_mod_i32(-32758i, -55319i)) | _wgslsmith_clamp_vec2_i32(min(u_input.a.yx, vec2<i32>(u_input.a.x, 28877i)), vec2<i32>(-1i, 17625i) >> (global1[_wgslsmith_index_u32(75650u, 26u)] % vec2<u32>(32u)), min(vec2<i32>(-1i, 33164i), vec2<i32>(-8564i, u_input.a.x)))), abs(reverseBits(vec2<i32>(13334i, u_input.a.x) >> (~vec2<u32>(arg_0, arg_0) % vec2<u32>(32u)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-402f, 928f, -1888f, 457f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-137f, 630f, -647f, 1000f) - vec4<f32>(205f, 1048f, 178f, 617f))))))));
    var var_2 = 58339u;
    return _wgslsmith_mult_u32(~_wgslsmith_div_u32(1u, arg_0), arg_0);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: Struct_3) -> Struct_2 {
    let var_0 = ~min(~1u >> (1u % 32u), select(1u, 1u, true)) << (1u % 32u);
    global2 = array<vec3<i32>, 31>();
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(step(arg_2.a, arg_2.a)));
    let var_2 = !(!(!all(vec4<bool>(true, true, true, true))));
    let var_3 = !(!(!var_2));
    return Struct_2(Struct_1(arg_2.a.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.a.x, -602f, arg_2.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1465f, var_1.a.x, 2581f)), select(vec3<bool>(var_2, true, var_3), vec3<bool>(var_3, var_3, var_3), var_2))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(958f, -1685f, var_1.a.x) + vec3<f32>(var_1.a.x, -3048f, var_1.a.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-368f, -1000f, var_1.a.x) - vec3<f32>(1447f, 792f, arg_2.a.x)))), firstTrailingBit(vec4<u32>(var_0, var_0, 4294967295u, var_0) | _wgslsmith_add_vec4_u32(vec4<u32>(59966u, 1u, var_0, 17992u), vec4<u32>(var_0, var_0, var_0, 78830u)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(709f + arg_2.a.x))) + var_1.a.x), _wgslsmith_f_op_f32(ceil(var_1.a.x))), global0[_wgslsmith_index_u32(~firstLeadingBit(~18919u), 27u)]);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = select(!select(true, true, !arg_3.x) && true, arg_2 & !(all(vec2<bool>(false, false)) && true), !(all(!vec3<bool>(arg_2, false, arg_3.x)) || arg_2));
    global1 = array<vec2<u32>, 26>();
    global0 = array<Struct_1, 27>();
    var var_1 = func_2(abs(-vec3<i32>(-u_input.a.x, select(-54546i, u_input.a.x, false), _wgslsmith_add_i32(-33084i, 1i))), countOneBits(-vec3<i32>(u_input.a.x, min(u_input.a.x, u_input.a.x), _wgslsmith_mult_i32(-41833i, u_input.a.x))), Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_1.b.xx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-271f, 1057f))) * arg_1.b.yz)));
    global0 = array<Struct_1, 27>();
    return Struct_1(640f, vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(arg_0.a.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1424f)) - _wgslsmith_f_op_f32(f32(-1f) * -434f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-155f)) - arg_0.b.x) + _wgslsmith_f_op_f32(abs(-470f)))), (~(~vec4<u32>(3864u, 0u, 4294967295u, var_1.c.c.x)) << (abs(arg_1.c) % vec4<u32>(32u))) >> (reverseBits(~var_1.a.c & vec4<u32>(arg_1.c.x, var_1.c.c.x, 64432u, arg_1.c.x)) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 27>();
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(step(724f, 425f)), _wgslsmith_f_op_f32(-235f + -477f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-2300f, -173f), -1000f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -1539f) + _wgslsmith_f_op_f32(f32(-1f) * -506f)))));
    let var_1 = vec3<u32>(~func_1(firstLeadingBit(99052u)), 1u, ~_wgslsmith_div_u32(1u, 1u));
    var var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1325f - var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -598f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-779f)) - _wgslsmith_f_op_f32(trunc(1127f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-725f, -1000f, var_0.x, -1128f))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2214f, 1000f, 1000f, 656f))) + vec4<f32>(var_0.x, _wgslsmith_f_op_f32(round(var_0.x)), -699f, 1898f))))));
    let var_3 = Struct_2(func_3(func_2(firstTrailingBit(global2[_wgslsmith_index_u32(var_1.x, 31u)]), u_input.a, Struct_3(var_0.yz)), global0[_wgslsmith_index_u32(~var_1.x, 27u)], true, !select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true), true)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_0.zz), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1142f, var_2.x)))))), Struct_1(355f, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(903f + -1000f), var_0.x), var_2.wwz)), firstTrailingBit(vec4<u32>(1u, var_1.x, ~var_1.x, 4294967295u))));
    var var_4 = vec2<bool>(~4294967295u < var_1.x, (select(true, true, true) || any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), false))) | !(!all(vec4<bool>(false, false, true, true))));
    global0 = array<Struct_1, 27>();
    var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x + -698f), _wgslsmith_f_op_f32(-var_0.x))) + _wgslsmith_div_f32(-269f, _wgslsmith_f_op_f32(abs(573f)))), -941f, var_0.x, _wgslsmith_f_op_f32(var_0.x * -1232f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(808f, -864f, 181f, var_0.x), vec4<f32>(var_2.x, var_3.b.x, var_2.x, 958f)))))), var_4.x && (true && (_wgslsmith_f_op_f32(f32(-1f) * -376f) < _wgslsmith_f_op_f32(-var_0.x)))));
    let var_5 = any(vec2<bool>(var_4.x && var_4.x, true));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, ~(~firstLeadingBit(vec2<u32>(1u, var_1.x)) >> (_wgslsmith_add_vec2_u32(~var_3.c.c.zy, ~global1[_wgslsmith_index_u32(21646u, 26u)]) % vec2<u32>(32u))), vec3<i32>(u_input.a.x, -(1i >> (var_3.a.c.x % 32u)) << (func_2(vec3<i32>(-2147483647i, -1i, u_input.a.x), vec3<i32>(u_input.a.x, -4449i, 2147483647i), Struct_3(vec2<f32>(var_2.x, var_0.x))).a.c.x % 32u), _wgslsmith_mod_i32(-2147483647i, min(~(-1109i), _wgslsmith_div_i32(u_input.a.x, -2188i)))), 190f);
}

