struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: bool,
    d: vec2<bool>,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 25>;

var<private> global1: bool = false;

var<private> global2: array<Struct_3, 6>;

var<private> global3: vec2<u32> = vec2<u32>(0u, 26308u);

var<private> global4: array<vec3<i32>, 20> = array<vec3<i32>, 20>(vec3<i32>(-1i, 4181i, i32(-2147483648)), vec3<i32>(2147483647i, 2786i, 2147483647i), vec3<i32>(i32(-2147483648), i32(-2147483648), 39863i), vec3<i32>(i32(-2147483648), 1i, 2147483647i), vec3<i32>(-12098i, -30871i, 1i), vec3<i32>(-1i, 20011i, 2147483647i), vec3<i32>(-27298i, 25035i, 2147483647i), vec3<i32>(-12489i, 57933i, -28556i), vec3<i32>(i32(-2147483648), 0i, i32(-2147483648)), vec3<i32>(0i, 1i, 1i), vec3<i32>(1i, -1i, -35044i), vec3<i32>(-1i, 1i, 0i), vec3<i32>(1i, 30435i, 45574i), vec3<i32>(-9480i, 49723i, 1i), vec3<i32>(i32(-2147483648), 22066i, 34058i), vec3<i32>(-11259i, 0i, -2637i), vec3<i32>(10492i, -33962i, -50536i), vec3<i32>(-16922i, -27406i, -1i), vec3<i32>(1i, 5345i, 49461i), vec3<i32>(-14233i, 0i, 2147483647i));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: bool, arg_1: Struct_2) -> Struct_3 {
    global4 = array<vec3<i32>, 20>();
    var var_0 = 1i;
    global1 = true;
    let var_1 = _wgslsmith_div_f32(arg_1.c, -542f);
    global4 = array<vec3<i32>, 20>();
    return Struct_3(Struct_2(17754u, vec4<u32>(14289u, _wgslsmith_mod_u32(arg_1.b.x, 4294967295u) ^ (15156u & global3.x), _wgslsmith_sub_u32(~arg_1.b.x, _wgslsmith_clamp_u32(1u, 4294967295u, global0[_wgslsmith_index_u32(1u, 25u)])), ~0u ^ arg_1.b.x), var_1), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(183f, _wgslsmith_f_op_f32(128f * var_1))), vec2<f32>(arg_1.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1174f, var_1)), _wgslsmith_f_op_f32(-arg_1.c)))), _wgslsmith_div_i32(-1i, countOneBits(_wgslsmith_clamp_i32(~(-9982i), _wgslsmith_div_i32(1i, -19769i), 1i))), arg_1);
}

fn func_3(arg_0: Struct_3, arg_1: u32) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1546f, 420f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d.c + arg_0.a.c) * 679f)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(func_2(false, arg_0.a).a.c, arg_0.d.c)))));
    var var_1 = 4294967295u;
    let var_2 = reverseBits(~(vec3<u32>(~arg_1, 1u, _wgslsmith_div_u32(u_input.a.x, global3.x)) & _wgslsmith_div_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global3.x, 25u)], global3.x, global0[_wgslsmith_index_u32(47488u, 25u)]) ^ arg_0.a.b.xxw, min(arg_0.a.b.zzz, vec3<u32>(31312u, global0[_wgslsmith_index_u32(u_input.a.x, 25u)], 15433u)))));
    var var_3 = 1u << (global0[_wgslsmith_index_u32(~94395u >> (_wgslsmith_clamp_u32(~var_2.x, abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~7928u, 25u)], 25u)]), u_input.a.x) % 32u), 25u)] % 32u);
    let var_4 = Struct_2(~(~global0[_wgslsmith_index_u32(0u, 25u)]), func_2(false, arg_0.d).a.b, var_0.x);
    return true;
}

fn func_4(arg_0: u32, arg_1: bool) -> i32 {
    return -59898i;
}

fn func_1(arg_0: vec3<bool>) -> Struct_3 {
    var var_0 = vec3<i32>(max(2147483647i, firstTrailingBit(-1i)), ~func_4(23795u, func_3(func_2(arg_0.x, Struct_2(global3.x, vec4<u32>(global3.x, global0[_wgslsmith_index_u32(global3.x, 25u)], u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 25u)], 25u)]), 328f)), global3.x)), firstLeadingBit(~(-26198i)));
    global2 = array<Struct_3, 6>();
    let var_1 = firstTrailingBit(vec3<i32>(~var_0.x, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(5121i, var_0.x), var_0.x, countOneBits(i32(-1i) * -14045i)), max(0i | (103231i ^ var_0.x), 2544i)));
    var var_2 = u_input.a << (~select(abs(min(vec2<u32>(59751u, 1u), vec2<u32>(1u, 4294967295u))), ~vec2<u32>(global0[_wgslsmith_index_u32(global3.x, 25u)], 1u) >> (vec2<u32>(4294967295u, u_input.a.x) % vec2<u32>(32u)), arg_0.x) % vec2<u32>(32u));
    var var_3 = vec4<u32>(select(37114u, ~_wgslsmith_mult_u32(u_input.a.x, ~var_2.x), func_3(Struct_3(func_2(arg_0.x, Struct_2(global0[_wgslsmith_index_u32(57984u, 25u)], vec4<u32>(global0[_wgslsmith_index_u32(0u, 25u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 25u)], 25u)], global3.x, global0[_wgslsmith_index_u32(1u, 25u)]), -2148f)).a, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-170f, 1125f), vec2<f32>(1509f, 540f))), abs(1i), Struct_2(global0[_wgslsmith_index_u32(var_2.x, 25u)], vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 25u)], 25u)], var_2.x, 26964u, 16407u), 401f)), _wgslsmith_div_u32(12888u, 14444u << (var_2.x % 32u)))), ~(0u << (_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(var_2.x, global0[_wgslsmith_index_u32(global3.x, 25u)])), ~vec2<u32>(57437u, 4294967295u)) % 32u)), 1u, var_2.x);
    return Struct_3(Struct_2(firstLeadingBit(~_wgslsmith_div_u32(u_input.a.x, var_2.x)), max(vec4<u32>(global3.x, global3.x, ~global0[_wgslsmith_index_u32(var_3.x, 25u)], global3.x), max(_wgslsmith_mod_vec4_u32(vec4<u32>(48729u, var_2.x, 66479u, 0u), vec4<u32>(global3.x, 39024u, global3.x, 2877u)), ~vec4<u32>(global0[_wgslsmith_index_u32(63695u, 25u)], 97105u, 0u, var_3.x))), _wgslsmith_f_op_f32(-863f * _wgslsmith_f_op_f32(trunc(-958f)))), func_2(arg_0.x, func_2(true, func_2(global0[_wgslsmith_index_u32(4294967295u, 25u)] <= 1u, func_2(true, Struct_2(13065u, vec4<u32>(var_2.x, 0u, var_3.x, 40717u), 1907f)).d).a).d).b, i32(-1i) * -max(var_0.x, -1i), func_2(4373i <= countOneBits(max(1i, var_0.x)), Struct_2(global0[_wgslsmith_index_u32(~(~var_3.x), 25u)], ~firstTrailingBit(vec4<u32>(49192u, 4294967295u, 147u, u_input.a.x)), _wgslsmith_f_op_f32(658f * 1000f))).d);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_4, arg_2: u32) -> i32 {
    let var_0 = 0i;
    let var_1 = min(vec2<u32>(~19886u, firstLeadingBit(max(countOneBits(4294967295u), 173u))), arg_1.c.a.b.xw);
    global1 = any(!(!select(vec2<bool>(true, true), vec2<bool>(true, false), true)));
    global4 = array<vec3<i32>, 20>();
    let var_2 = _wgslsmith_sub_vec3_u32(arg_0.c.d.b.xxy << (arg_1.c.a.b.zyy % vec3<u32>(32u)), arg_1.c.a.b.zxz);
    return -abs(-39656i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(vec4<i32>(-reverseBits(~(-24589i)), -(-4082i << (~4294967295u % 32u)), 0i, func_5(Struct_4(-1087f, _wgslsmith_f_op_f32(abs(403f)), func_1(vec3<bool>(true, true, false))), Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -655f), _wgslsmith_f_op_f32(trunc(-1105f)), Struct_3(Struct_2(global3.x, vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(32344u, 25u)], 25u)], u_input.a.x, 0u, 42477u), -1257f), vec2<f32>(161f, 400f), -29450i, Struct_2(u_input.a.x, vec4<u32>(global3.x, 47783u, global0[_wgslsmith_index_u32(1u, 25u)], u_input.a.x), 394f))), reverseBits(~global3.x))));
    global1 = any(select(select(vec3<bool>(true, all(vec2<bool>(false, true)), any(vec3<bool>(false, true, false))), vec3<bool>(-2147483647i != var_0.x, true, true), true), vec3<bool>(true, global0[_wgslsmith_index_u32(~4294967295u, 25u)] >= func_1(vec3<bool>(false, true, true)).d.a, true), !vec3<bool>(true, any(vec4<bool>(true, false, false, true)), false)));
    var_0 = max(vec4<i32>(2147483647i, var_0.x, abs(2147483647i), 1541i), _wgslsmith_mod_vec4_i32(~vec4<i32>(var_0.x, 1i, ~var_0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, -12744i), vec2<i32>(var_0.x, 10060i))), ~_wgslsmith_div_vec4_i32(vec4<i32>(var_0.x, var_0.x, var_0.x, -5258i) ^ vec4<i32>(var_0.x, 17434i, 135i, -36033i), vec4<i32>(-1i, 0i, var_0.x, 2147483647i))));
    var var_1 = Struct_4(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1070f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1414f, 583f), _wgslsmith_f_op_f32(trunc(-597f))))))), func_1(vec3<bool>(!any(vec4<bool>(true, true, true, true)), true, any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true)))));
    let var_2 = vec3<i32>(1i, ~(-var_0.x), _wgslsmith_mult_i32(-_wgslsmith_mod_i32(var_1.c.c, func_5(Struct_4(-1330f, -366f, Struct_3(var_1.c.d, vec2<f32>(var_1.b, 756f), -57707i, var_1.c.d)), Struct_4(539f, 851f, global2[_wgslsmith_index_u32(1u, 6u)]), global3.x)), _wgslsmith_div_i32(var_0.x, -2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(1212f, func_2(all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false))) & any(vec4<bool>(true, true, true, true)), Struct_2((var_1.c.d.a | 22483u) << (global3.x % 32u), ~(~vec4<u32>(global3.x, 0u, var_1.c.d.b.x, 4294967295u)), func_1(vec3<bool>(false, true, false)).d.c)).d.b.x, var_2.x);
}

