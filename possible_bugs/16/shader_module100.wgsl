struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
    c: vec4<bool>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_3,
    c: Struct_2,
    d: u32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(0u, 29965u);

var<private> global1: array<bool, 20>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: vec3<i32>, arg_3: i32) -> vec3<u32> {
    global1 = array<bool, 20>();
    let var_0 = arg_0.a.x;
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.a.x)))));
    global1 = array<bool, 20>();
    global0 = _wgslsmith_mod_vec2_u32(~(~(~vec2<u32>(u_input.b, arg_0.e.x))), _wgslsmith_div_vec2_u32(vec2<u32>(1u, ~u_input.b), _wgslsmith_sub_vec2_u32(~vec2<u32>(75586u, arg_0.e.x), arg_0.e))) & vec2<u32>(global0.x, ~17119u);
    return ~firstLeadingBit(~abs(vec3<u32>(1u, global0.x, 4294967295u)));
}

fn func_2(arg_0: bool) -> f32 {
    var var_0 = ~(-1i);
    let var_1 = vec2<bool>(true, false);
    var var_2 = _wgslsmith_div_vec3_u32(max(vec3<u32>(~41713u >> (u_input.b % 32u), ~7602u & (u_input.b | u_input.b), global0.x), firstLeadingBit(func_3(Struct_4(vec3<f32>(-343f, 1000f, 148f), Struct_3(-1783i), Struct_2(-611f, vec4<f32>(-213f, -227f, 897f, 643f), vec4<bool>(false, true, false, true)), 4294967295u, vec2<u32>(0u, 15573u)), vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 20u)], var_1.x, false), vec3<i32>(u_input.a, -39227i, -5600i), min(u_input.a, 0i)))), _wgslsmith_mod_vec3_u32(vec3<u32>(25283u, _wgslsmith_add_u32(~4294967295u, u_input.b << (u_input.b % 32u)), _wgslsmith_sub_u32(u_input.b, u_input.b)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(global0.x, 0u, u_input.b), ~vec3<u32>(u_input.b, 35390u, 71251u))));
    var var_3 = firstLeadingBit(-1i);
    var_3 = ~abs(0i) ^ -u_input.a;
    return 483f;
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: Struct_3) -> u32 {
    let var_0 = !vec3<bool>(true, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(u_input.b | 2957u), max(global0.x, _wgslsmith_div_u32(arg_1, u_input.b))), 20u)], false);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(func_2(all(vec3<bool>(global1[_wgslsmith_index_u32(46376u, 20u)], global1[_wgslsmith_index_u32(0u, 20u)], global1[_wgslsmith_index_u32(0u, 20u)])))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(2385f, 1000f))))))));
    global0 = vec2<u32>(_wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 0u, global0.x, arg_1), vec4<u32>(37876u, 37263u, 1u, u_input.b)) ^ ~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 4294967295u, arg_1, 21188u), vec4<u32>(0u, global0.x, arg_1, arg_0)), vec4<u32>(arg_0, 51150u, arg_0, 0u)), 1u);
    global1 = array<bool, 20>();
    var var_2 = true & var_0.x;
    return min(~firstLeadingBit(global0.x), firstTrailingBit(~(~arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(4294967295u);
    global0 = vec2<u32>(func_1(reverseBits(u_input.b), _wgslsmith_clamp_u32(~global0.x, global0.x, 1u), Struct_3(65944i)), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, ~(1u & global0.x), _wgslsmith_div_u32(64703u, global0.x << (global0.x % 32u)), _wgslsmith_div_u32(u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(40272u, global0.x), vec2<u32>(0u, 4294967295u)))), firstLeadingBit(select(vec4<u32>(49738u, u_input.b, u_input.b, u_input.b) << (vec4<u32>(global0.x, u_input.b, 32211u, 96937u) % vec4<u32>(32u)), select(vec4<u32>(0u, global0.x, 4294967295u, u_input.b), vec4<u32>(u_input.b, u_input.b, 59784u, 15483u), true), !vec4<bool>(true, global1[_wgslsmith_index_u32(global0.x, 20u)], global1[_wgslsmith_index_u32(26781u, 20u)], global1[_wgslsmith_index_u32(1u, 20u)])))));
    let var_1 = (vec2<i32>(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, 66940i), vec3<i32>(u_input.a, -1i, u_input.a))), u_input.a) ^ -_wgslsmith_mult_vec2_i32(vec2<i32>(18477i, u_input.a) | vec2<i32>(-56086i, -2458i), max(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a)))) >> (vec2<u32>(u_input.b, ~85284u) % vec2<u32>(32u));
    var_0 = countOneBits(~(~(~max(13972u, 5512u))));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-741f)) * -1302f), -1199f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2122f, -377f, -766f, -1021f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(227f, -1467f, -590f, 1891f) - vec4<f32>(-184f, -902f, -1000f, 1066f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1526f, 877f, 735f, -1154f))) * vec4<f32>(246f, 1111f, -277f, 1581f)))), vec4<bool>(!(!(global0.x < u_input.b)), true, global1[_wgslsmith_index_u32(u_input.b, 20u)], true));
    var_0 = 17738u;
    var var_3 = 500f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(~4294967295u, u_input.b), var_1.x, vec3<u32>(_wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b, 4294967295u, global0.x), vec4<u32>(4294967295u, 0u, global0.x, 9685u) << (vec4<u32>(97868u, u_input.b, global0.x, u_input.b) % vec4<u32>(32u)))), _wgslsmith_sub_u32(_wgslsmith_mult_u32(global0.x, 50998u & global0.x), global0.x), func_3(Struct_4(_wgslsmith_f_op_vec3_f32(var_2.b.wwz * var_2.b.zyy), Struct_3(var_1.x), Struct_2(1730f, var_2.b, var_2.c), ~0u, ~vec2<u32>(4294967295u, 4294967295u)), vec3<bool>(false, !var_2.c.x, true), -countOneBits(vec3<i32>(var_1.x, u_input.a, -61298i)), firstLeadingBit(countOneBits(u_input.a))).x), select(~u_input.b, ~abs(u_input.b), all(!select(vec4<bool>(global1[_wgslsmith_index_u32(global0.x, 20u)], var_2.c.x, var_2.c.x, global1[_wgslsmith_index_u32(global0.x, 20u)]), var_2.c, vec4<bool>(global1[_wgslsmith_index_u32(1u, 20u)], global1[_wgslsmith_index_u32(11931u, 20u)], var_2.c.x, true)))));
}

