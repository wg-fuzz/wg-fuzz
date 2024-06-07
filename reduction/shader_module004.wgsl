struct Struct_1 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, true, false, true);

var<private> global1: array<u32, 7>;

var<private> global2: vec2<f32> = vec2<f32>(725f, -2049f);

var<private> global3: i32 = i32(-2147483648);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: vec4<i32>) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-global2.x), true);
    var var_1 = vec4<u32>(u_input.c, abs(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c, global1[_wgslsmith_index_u32(43596u, 7u)]), vec3<u32>(global1[_wgslsmith_index_u32(54554u, 7u)], global1[_wgslsmith_index_u32(u_input.c, 7u)], u_input.c)) << (~1u % 32u)), u_input.c, 49292u);
    global3 = -21132i;
    let var_2 = u_input.c;
    let var_3 = 1i;
    return arg_0.x;
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_1) -> u32 {
    var var_0 = !global0.x;
    let var_1 = select(vec4<bool>(global0.x, all(vec4<bool>(arg_2.b, arg_1 >= 0u, false, all(global0.ww))), any(global0.zx), true), select(vec4<bool>(arg_2.b, !arg_2.b, !(!arg_2.b), (u_input.a.x >> (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_1, 7u)], 7u)] % 32u)) >= _wgslsmith_div_i32(-1i, -51696i)), vec4<bool>(!(!arg_2.b), false, !select(global0.x, global0.x, true), false), !vec4<bool>(true, global0.x && false, false, any(vec2<bool>(global0.x, false)))), vec4<bool>(any(vec3<bool>(true, global0.x, false)), ((u_input.a.x & u_input.b.x) & ~(-42580i)) <= select(func_1(vec4<i32>(u_input.b.x, 1i, u_input.a.x, u_input.b.x)), u_input.b.x, !arg_2.b), true, true));
    var var_2 = Struct_1(_wgslsmith_div_f32(arg_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - -125f))), select(any(select(vec3<bool>(global0.x, false, var_1.x), vec3<bool>(false, false, false), all(var_1.xy))), arg_2.b, false));
    global3 = 15683i;
    var var_3 = ~reverseBits(u_input.b.yy);
    return ~(~_wgslsmith_mod_u32(arg_1, abs(~u_input.c)));
}

fn func_2(arg_0: Struct_1) -> StorageBuffer {
    global2 = vec2<f32>(161f, _wgslsmith_f_op_f32(-global2.x));
    let var_0 = select(select(!(!vec2<bool>(global0.x, true)), global0.yz, global0.ww), vec2<bool>(u_input.c > ~(~u_input.c), _wgslsmith_div_f32(-1651f, _wgslsmith_f_op_f32(floor(1000f))) >= _wgslsmith_div_f32(arg_0.a, -655f)), arg_0.b);
    global0 = !select(!select(vec4<bool>(global0.x, false, true, global0.x), vec4<bool>(true, false, false, false), vec4<bool>(global0.x, false, var_0.x, arg_0.b)), select(vec4<bool>(false, !var_0.x, global0.x, 0u >= u_input.c), vec4<bool>(var_0.x, !arg_0.b, select(global0.x, true, var_0.x), all(vec4<bool>(var_0.x, global0.x, true, true))), false), all(global0.zww));
    var var_1 = func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(579f * arg_0.a)), -843f), 4294967295u, arg_0) << (~(~(~reverseBits(u_input.c))) % 32u);
    var var_2 = ~abs(vec4<u32>(~0u, ~46994u, u_input.c, countOneBits(45622u)) >> (firstLeadingBit(firstTrailingBit(vec4<u32>(17916u, u_input.c, 4294967295u, 33801u))) % vec4<u32>(32u)));
    return StorageBuffer(u_input.a, -_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.b.x, u_input.a.x) & reverseBits(u_input.b), _wgslsmith_add_vec4_i32(countOneBits(u_input.b), u_input.b), -vec4<i32>(-15984i, u_input.b.x, u_input.b.x, u_input.b.x)), ~(~reverseBits(min(4294967295u, var_2.x))), var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    let var_1 = -firstLeadingBit(_wgslsmith_mod_i32(39440i, 2218i) | _wgslsmith_sub_i32(-1i, var_0.x)) ^ func_1(-(vec4<i32>(var_0.x, u_input.a.x, 5844i, -2147483647i) & _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, u_input.a.x, u_input.a.x, u_input.b.x), u_input.b)));
    global3 = 0i;
    let x = u_input.a;
    s_output = func_2(Struct_1(global2.x, select(false, all(select(vec4<bool>(global0.x, global0.x, false, false), vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(true, false, false, global0.x))), !(!global0.x))));
}

