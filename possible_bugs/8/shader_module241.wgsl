struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<i32>,
    d: i32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: Struct_1,
    d: u32,
    e: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct Struct_5 {
    a: bool,
    b: vec2<u32>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<bool, 22> = array<bool, 22>(true, false, true, false, true, false, false, true, true, true, false, false, false, true, true, true, false, true, false, false, true, false);

var<private> global2: array<vec4<u32>, 11>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: Struct_5) -> vec2<bool> {
    var var_0 = arg_2;
    var var_1 = any(arg_0.xz);
    var var_2 = Struct_2(_wgslsmith_sub_vec2_u32(global0.a.yx | ~arg_2.b, vec2<u32>(global0.a.x, _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(1u, arg_2.b.x)), arg_2.b | arg_2.b))), ~global0.a.x, Struct_1(u_input.a.x, _wgslsmith_f_op_f32(arg_2.c - _wgslsmith_f_op_f32(-arg_2.c)), vec4<i32>(~(~u_input.a.x), u_input.a.x, ~u_input.a.x, 1i & _wgslsmith_dot_vec2_i32(u_input.a, u_input.a)), _wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, -39569i, 45467i, -26264i) << (~global0.a % vec4<u32>(32u)), select(firstTrailingBit(vec4<i32>(10171i, u_input.a.x, 2147483647i, 2147483647i)), vec4<i32>(u_input.a.x, u_input.a.x, -19131i, 516i), all(arg_1))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1360f + 2500f), _wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_div_f32(arg_2.c, 1705f), var_0.c))), var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.c, -592f))));
    var_1 = false;
    var var_3 = global0.a.xxx << (vec3<u32>(~_wgslsmith_clamp_u32(4294967295u, var_2.a.x << (var_2.d % 32u), 0u << (var_2.d % 32u)), select(arg_2.b.x, min(26525u, 21894u) << (_wgslsmith_mod_u32(5231u, 1u) % 32u), true), var_2.d) % vec3<u32>(32u));
    return vec2<bool>(false & arg_1.x, !global1[_wgslsmith_index_u32(abs(global0.a.x | var_3.x), 22u)]);
}

fn func_2(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: bool, arg_3: vec3<f32>) -> Struct_5 {
    var var_0 = ~vec4<u32>(1u, ~(~1u), ~abs(0u), reverseBits(41873u) >> (_wgslsmith_mult_u32(global0.a.x, 3705u) % 32u));
    let var_1 = Struct_3(!func_3(!select(vec4<bool>(true, global1[_wgslsmith_index_u32(global0.a.x, 22u)], arg_2, true), vec4<bool>(arg_2, arg_2, global1[_wgslsmith_index_u32(arg_1.x, 22u)], arg_2), vec4<bool>(global1[_wgslsmith_index_u32(11922u, 22u)], arg_2, arg_2, arg_2)), !(!vec3<bool>(true, false, arg_2)), Struct_5(arg_2, vec2<u32>(4294967295u, var_0.x), arg_3.x)), -1000f, Struct_1(_wgslsmith_dot_vec3_i32(abs(~vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec3<i32>(-28390i, 12138i, 1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(725f - arg_3.x), _wgslsmith_f_op_f32(-arg_3.x)))), -select(vec4<i32>(u_input.a.x, 36124i, u_input.a.x, -2147483647i), vec4<i32>(u_input.a.x, 28688i, -64277i, 55060i), arg_2) << (~vec4<u32>(6772u, arg_0.a.x, 109394u, 39222u) % vec4<u32>(32u)), reverseBits(_wgslsmith_add_i32(u_input.a.x, u_input.a.x) & (i32(-1i) * -16472i)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x + 429f)), arg_3.x, _wgslsmith_f_op_f32(f32(-1f) * -568f), _wgslsmith_f_op_f32(sign(-210f)))));
    let var_2 = _wgslsmith_div_vec2_u32(arg_1.xy, _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(~arg_1.yz, vec2<u32>(52258u, 59118u)), ~_wgslsmith_mod_vec2_u32(arg_1.wy, vec2<u32>(36303u, 16691u))), global0.a.wz));
    var var_3 = arg_0;
    var var_4 = arg_0;
    return Struct_5(true, _wgslsmith_sub_vec2_u32(~max(vec2<u32>(var_3.a.x, var_3.a.x), vec2<u32>(5113u, 8485u)), countOneBits(var_3.a.xw)) & var_4.a.yw, arg_3.x);
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: i32) -> Struct_5 {
    let var_0 = select(vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 22u)], !global1[_wgslsmith_index_u32(47065u, 22u)], false), !select(!select(vec4<bool>(global1[_wgslsmith_index_u32(arg_1.d, 22u)], global1[_wgslsmith_index_u32(global0.a.x, 22u)], true, global1[_wgslsmith_index_u32(arg_0, 22u)]), vec4<bool>(true, true, true, false), true), vec4<bool>(all(vec4<bool>(false, global1[_wgslsmith_index_u32(arg_1.a.x, 22u)], global1[_wgslsmith_index_u32(4294967295u, 22u)], false)), !global1[_wgslsmith_index_u32(arg_0, 22u)], global1[_wgslsmith_index_u32(arg_0, 22u)] || true, any(vec3<bool>(true, global1[_wgslsmith_index_u32(global0.a.x, 22u)], true))), !(!vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 22u)], global1[_wgslsmith_index_u32(1788u, 22u)], global1[_wgslsmith_index_u32(1u, 22u)], global1[_wgslsmith_index_u32(arg_0, 22u)]))), all(select(select(!vec4<bool>(true, true, false, global1[_wgslsmith_index_u32(4294967295u, 22u)]), select(vec4<bool>(false, false, global1[_wgslsmith_index_u32(global0.a.x, 22u)], global1[_wgslsmith_index_u32(0u, 22u)]), vec4<bool>(true, true, true, global1[_wgslsmith_index_u32(arg_2.x, 22u)]), false), -1i == arg_3), vec4<bool>(all(vec4<bool>(global1[_wgslsmith_index_u32(2273u, 22u)], global1[_wgslsmith_index_u32(1u, 22u)], true, false)), all(vec2<bool>(false, global1[_wgslsmith_index_u32(arg_2.x, 22u)])), true, !global1[_wgslsmith_index_u32(4294967295u, 22u)]), select(select(vec4<bool>(false, true, global1[_wgslsmith_index_u32(arg_0, 22u)], true), vec4<bool>(true, false, global1[_wgslsmith_index_u32(4294967295u, 22u)], global1[_wgslsmith_index_u32(4294967295u, 22u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 22u)], true, global1[_wgslsmith_index_u32(4294967295u, 22u)])), !vec4<bool>(global1[_wgslsmith_index_u32(arg_2.x, 22u)], true, true, true), vec4<bool>(global1[_wgslsmith_index_u32(1u, 22u)], global1[_wgslsmith_index_u32(global0.a.x, 22u)], global1[_wgslsmith_index_u32(global0.a.x, 22u)], global1[_wgslsmith_index_u32(arg_1.d, 22u)])))));
    global0 = Struct_4(vec4<u32>(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(34499u, arg_2.x), global0.a.wx)), 4294967295u, ~(arg_0 ^ 1u), 27389u) & vec4<u32>(0u, arg_2.x, ~0u, 0u));
    global2 = array<vec4<u32>, 11>();
    var var_1 = -28691i;
    global2 = array<vec4<u32>, 11>();
    return func_2(Struct_4(global0.a), _wgslsmith_mult_vec4_u32(arg_2 ^ vec4<u32>(~arg_2.x, arg_1.b, ~39761u, abs(4294967295u)), abs(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.a.x, 0u, arg_1.b, global0.a.x) & global0.a, abs(vec4<u32>(arg_1.d, arg_2.x, arg_0, 19654u))))), all(select(vec4<bool>(global1[_wgslsmith_index_u32(~0u, 22u)], global1[_wgslsmith_index_u32(arg_0, 22u)], select(var_0.x, var_0.x, global1[_wgslsmith_index_u32(global0.a.x, 22u)]), false | var_0.x), !var_0, !select(vec4<bool>(global1[_wgslsmith_index_u32(arg_1.b, 22u)], global1[_wgslsmith_index_u32(arg_1.b, 22u)], false, global1[_wgslsmith_index_u32(32384u, 22u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(27282u, 22u)], var_0.x, global1[_wgslsmith_index_u32(global0.a.x, 22u)]), var_0))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-arg_1.c.e.wyy), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-438f, -1842f, _wgslsmith_f_op_f32(step(arg_1.e, arg_1.c.e.x)))))));
}

fn func_4(arg_0: Struct_5) -> f32 {
    global2 = array<vec4<u32>, 11>();
    let var_0 = -u_input.a;
    let var_1 = u_input.a;
    let var_2 = arg_0;
    let var_3 = ~abs(reverseBits(global0.a.zxw) >> (_wgslsmith_div_vec3_u32(~global0.a.ywy, vec3<u32>(128112u, var_2.b.x, global0.a.x)) % vec3<u32>(32u)));
    return -448f;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<u32>, 11>();
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(699f, _wgslsmith_f_op_f32(func_4(func_1(59313u, Struct_2(vec2<u32>(global0.a.x, global0.a.x), global0.a.x, Struct_1(-2147483647i, -2295f, vec4<i32>(2147483647i, u_input.a.x, 2147483647i, 2147483647i), 20077i, vec4<f32>(196f, 766f, 512f, -1504f)), global0.a.x, -551f), vec4<u32>(4294967295u, 0u, 24078u, global0.a.x), u_input.a.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(815f, -233f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(273f, -627f)))))));
    global0 = Struct_4(global0.a);
    var var_1 = u_input.a;
    global1 = array<bool, 22>();
    global2 = array<vec4<u32>, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x) + _wgslsmith_f_op_f32(-var_0.x))), -315f), _wgslsmith_mult_u32(0u, 50130u >> (firstLeadingBit(1u) % 32u)), _wgslsmith_sub_vec2_u32(abs(firstLeadingBit(global0.a.zw) >> (~global0.a.wy % vec2<u32>(32u))), _wgslsmith_div_vec2_u32(reverseBits(global0.a.yy), ~vec2<u32>(global0.a.x, global0.a.x))), _wgslsmith_f_op_f32(abs(func_1(func_2(Struct_4(global2[_wgslsmith_index_u32(0u, 11u)]), vec4<u32>(global0.a.x, 1u, global0.a.x, 19298u), true, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.x, 479f, var_0.x)))).b.x, Struct_2(vec2<u32>(global0.a.x, 4294967295u), 62474u, Struct_1(u_input.a.x, var_0.x, vec4<i32>(var_1.x, u_input.a.x, 3471i, var_1.x), var_1.x, vec4<f32>(341f, var_0.x, var_0.x, var_0.x)), 17481u, -1000f), reverseBits(global2[_wgslsmith_index_u32(48777u, 11u)]) ^ global2[_wgslsmith_index_u32(min(global0.a.x, 23248u), 11u)], -59506i).c)));
}

