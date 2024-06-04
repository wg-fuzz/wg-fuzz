struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 8> = array<f32, 8>(-463f, 1000f, 1269f, -637f, 149f, -1000f, -631f, 923f);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> vec3<bool> {
    var var_0 = vec2<i32>(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.a.x), -vec2<i32>(u_input.b.x, -2147483647i)), u_input.b.x), vec3<i32>(select(u_input.a.x, u_input.a.x, false), firstTrailingBit(0i) & 0i, u_input.b.x)));
    var var_1 = 858f;
    var_0 = -u_input.a.wx;
    global0 = array<f32, 8>();
    var var_2 = select(!vec3<bool>(true, all(vec4<bool>(false, false, true, false)), true), select(select(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true), (global0[_wgslsmith_index_u32(0u, 8u)] < -1010f) | any(vec3<bool>(false, false, true))), select(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), vec3<bool>(false, true, false), true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), all(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false))), true);
    return vec3<bool>(true, true, true);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: vec3<bool>) -> vec2<i32> {
    let var_0 = vec3<i32>(arg_2.x, u_input.a.x, firstTrailingBit((i32(-1i) * -15347i) ^ (u_input.b.x ^ (i32(-1i) * -25640i))));
    var var_1 = arg_1;
    let var_2 = ~16759u;
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(arg_0.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a.x), global0[_wgslsmith_index_u32(~1u, 8u)])))));
    global0 = array<f32, 8>();
    return arg_0.b;
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(ceil(-523f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(4294967295u, 8u)]))), global0[_wgslsmith_index_u32(~(~26836u), 8u)]))), func_4(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(3101u, 8u)], -838f, global0[_wgslsmith_index_u32(4294967295u, 8u)])) * vec3<f32>(global0[_wgslsmith_index_u32(0u, 8u)], global0[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(1439u, 8u)])), _wgslsmith_mult_vec2_i32(~vec2<i32>(u_input.b.x, 2147483647i), u_input.b.xz)), Struct_2(vec2<bool>(true, true)), abs(-(~u_input.a.wx)), select(func_3(), !select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true))));
    var var_1 = Struct_1(var_0.a, max(reverseBits(-var_0.b), firstTrailingBit(-vec2<i32>(0i, var_0.b.x))));
    var var_2 = ~vec3<u32>(4294967295u, 0u, ~(~max(4294967295u, 44130u)));
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -762f);
    var var_4 = _wgslsmith_f_op_f32(ceil(1849f));
    return Struct_3(u_input.b.x);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1) -> u32 {
    var var_0 = vec3<f32>(-113f, global0[_wgslsmith_index_u32(~(~1u), 8u)], _wgslsmith_f_op_f32(f32(-1f) * -942f));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(exp2(arg_1.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * -1333f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.x) - -509f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-447f * -578f), _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(round(arg_1.a.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_1.a.x, global0[_wgslsmith_index_u32(29912u, 8u)]), -706f)))))));
    return ~(~1u);
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<i32>) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(func_5(func_2(), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -469f) - global0[_wgslsmith_index_u32(~85466u, 8u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))), global0[_wgslsmith_index_u32(4294967295u, 8u)]), ~abs(_wgslsmith_mult_vec2_i32(u_input.b.zx, u_input.a.wx)))), 8u)];
    let var_1 = select(!vec2<bool>(all(vec4<bool>(true, true, true, true)), false), !select(vec2<bool>(arg_1.x == arg_1.x, false), !select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), u_input.b.x != ~arg_1.x), all(!func_3().zx));
    var var_2 = Struct_2(func_3().xz);
    var var_3 = Struct_1(vec3<f32>(global0[_wgslsmith_index_u32(~51489u, 8u)], _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-685f))))), _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(~(~1u), 8u)]))), reverseBits(arg_1.zz));
    let var_4 = Struct_3(-1i);
    return abs(select(~_wgslsmith_div_u32(~6853u, 1u), 20210u, false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(~reverseBits(_wgslsmith_mult_u32(1u, firstLeadingBit(3724u))), 4294967295u, _wgslsmith_mult_u32(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 13652u, 0u), vec3<u32>(44395u, 66662u, 65198u))) >> (func_1(min(vec4<u32>(0u, 12385u, 0u, 26665u), vec4<u32>(4294967295u, 53943u, 6411u, 4294967295u)), abs(vec3<i32>(u_input.b.x, u_input.b.x, -9032i))) % 32u), ~1u), 4294967295u);
    global0 = array<f32, 8>();
    var_0 = ~_wgslsmith_sub_vec4_u32(firstTrailingBit(firstLeadingBit(firstTrailingBit(vec4<u32>(var_0.x, var_0.x, 11635u, 13407u)))), _wgslsmith_mult_vec4_u32(~vec4<u32>(var_0.x, var_0.x, 1u, var_0.x), vec4<u32>(_wgslsmith_add_u32(var_0.x, var_0.x), ~0u, 1u, var_0.x)));
    let var_1 = !vec2<bool>(true && !func_3().x, true);
    var var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(abs(-2092f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(65845u, 8u)])))) + global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(78070u, var_0.x), 28317u), 8u)]), -1000f), firstLeadingBit(u_input.a.zx << (var_0.xz % vec2<u32>(32u))));
    var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(var_2.a)) + vec3<f32>(_wgslsmith_f_op_f32(260f - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(38452u, 8u)] + 644f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-550f - global0[_wgslsmith_index_u32(0u, 8u)])), global0[_wgslsmith_index_u32(var_0.x, 8u)])), _wgslsmith_sub_vec2_i32(~((var_2.b << (vec2<u32>(50241u, 4294967295u) % vec2<u32>(32u))) & vec2<i32>(5700i, var_2.b.x)), -vec2<i32>(_wgslsmith_sub_i32(var_2.b.x, 2147483647i), min(u_input.b.x, 0i))));
    var var_3 = Struct_1(vec3<f32>(722f, 511f, var_2.a.x), vec2<i32>(-firstLeadingBit(~48268i), u_input.b.x));
    var var_4 = Struct_2(!(!(!var_1)));
    var var_5 = Struct_1(_wgslsmith_div_vec3_f32(var_3.a, vec3<f32>(-439f, _wgslsmith_f_op_f32(f32(-1f) * -492f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-785f + -1637f) + 857f))), vec2<i32>(var_2.b.x, reverseBits(65432i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_i32(var_2.b, vec2<i32>(-23705i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_5.b.x, -9395i, -895i), _wgslsmith_add_vec3_i32(vec3<i32>(var_3.b.x, u_input.b.x, var_3.b.x), vec3<i32>(var_5.b.x, u_input.a.x, 0i))))), var_5.b);
}

