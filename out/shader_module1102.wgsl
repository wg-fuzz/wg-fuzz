struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 20> = array<bool, 20>(true, true, false, false, true, true, false, false, true, true, false, false, false, true, false, true, false, true, true, true);

var<private> global1: Struct_1;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> i32 {
    let var_0 = Struct_1(-reverseBits(firstTrailingBit(u_input.a.wx)), 11796i);
    let var_1 = ~(~46857u);
    return ~2147483647i ^ _wgslsmith_dot_vec2_i32(select(-(vec2<i32>(global1.b, -35369i) >> (vec2<u32>(u_input.d.x, 33853u) % vec2<u32>(32u))), global1.a, !(!vec2<bool>(global0[_wgslsmith_index_u32(44826u, 20u)], false))), vec2<i32>(_wgslsmith_div_i32(~2147483647i, countOneBits(global1.b)), -2147483647i));
}

fn func_2() -> i32 {
    let var_0 = vec3<i32>(-1i) * -vec3<i32>(i32(-1i) * -u_input.a.x, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, 0i, u_input.a.x), u_input.c.xxw, u_input.c.www), vec3<i32>(-1i, -2147483647i, global1.b)), firstTrailingBit(-global1.a.x));
    let var_1 = select(~(var_0.xz | global1.a) | vec2<i32>(~u_input.c.x, -func_3()), _wgslsmith_mod_vec2_i32(-u_input.c.xw, min(_wgslsmith_div_vec2_i32(var_0.zx, vec2<i32>(var_0.x, -54924i)), select(-var_0.xz, -vec2<i32>(var_0.x, var_0.x), vec2<bool>(false, false)))), vec2<bool>(global0[_wgslsmith_index_u32(abs(0u), 20u)], false));
    let var_2 = _wgslsmith_div_vec4_u32(~vec4<u32>(reverseBits(u_input.d.x), countOneBits(52905u), ~26785u, ~56828u), (u_input.d & u_input.d) >> (vec4<u32>(_wgslsmith_div_u32(u_input.d.x, 11450u), _wgslsmith_div_u32(1u, 63077u), u_input.d.x, _wgslsmith_add_u32(u_input.d.x, 1u)) % vec4<u32>(32u))) | vec4<u32>(54730u, 20959u, ~u_input.d.x, u_input.d.x);
    var var_3 = Struct_1(global1.a, -global1.b);
    global0 = array<bool, 20>();
    return 1i;
}

fn func_4(arg_0: i32) -> Struct_1 {
    global1 = Struct_1(-_wgslsmith_sub_vec2_i32(firstTrailingBit(-u_input.a.xx), global1.a), arg_0);
    global1 = Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c.x, firstLeadingBit(_wgslsmith_sub_i32(17249i, arg_0))), firstTrailingBit(firstLeadingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, -1i), vec2<i32>(-18273i, -21331i)))), select(abs(~global1.a), max(vec2<i32>(2147483647i, -5636i), reverseBits(vec2<i32>(global1.b, u_input.c.x))), true)), ~(~_wgslsmith_dot_vec3_i32(u_input.c.zwy ^ u_input.a.wwy, -vec3<i32>(global1.b, u_input.a.x, -41022i))));
    global1 = Struct_1(-vec2<i32>(-1i, min(0i, u_input.a.x)), firstLeadingBit(-1i));
    global1 = Struct_1(u_input.c.zx, u_input.b);
    global0 = array<bool, 20>();
    return Struct_1(min(u_input.c.yy, u_input.c.wy), -8661i);
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: vec3<f32>, arg_3: f32) -> u32 {
    global1 = func_4(_wgslsmith_clamp_i32(0i, -(~22004i), firstTrailingBit(func_2()) >> (u_input.d.x % 32u)));
    var var_0 = func_4(58621i);
    global0 = array<bool, 20>();
    var var_1 = func_4(_wgslsmith_mod_i32(firstTrailingBit(func_4(-arg_0.x).a.x), global1.b));
    let var_2 = func_3();
    return 25015u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -u_input.a.x;
    var var_1 = vec4<u32>(~max(abs(4294967295u), ~1u & reverseBits(u_input.d.x)), 0u, ~(~(_wgslsmith_add_u32(1u, u_input.d.x) ^ 137276u)), min(~4294967295u, 4294967295u));
    var_1 = ~(~abs(_wgslsmith_sub_vec4_u32(select(u_input.d, vec4<u32>(0u, u_input.d.x, u_input.d.x, 4294967295u), vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 20u)], global0[_wgslsmith_index_u32(1u, 20u)], true)), vec4<u32>(u_input.d.x, var_1.x, u_input.d.x, u_input.d.x))));
    global0 = array<bool, 20>();
    global0 = array<bool, 20>();
    let var_2 = _wgslsmith_add_vec4_u32(vec4<u32>(firstLeadingBit(0u), var_1.x, _wgslsmith_mult_u32(1u | ~var_1.x, u_input.d.x | _wgslsmith_mult_u32(1u, 4294967295u)), ~(~func_1(u_input.c, vec2<f32>(140f, 1000f), vec3<f32>(1000f, -1000f, 984f), 434f))), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d.x | 4294967295u, u_input.d.x & u_input.d.x, 25381u, 48900u), ~vec4<u32>(2161u, 83339u, var_1.x, 0u)), select(_wgslsmith_mod_vec4_u32(u_input.d ^ u_input.d, _wgslsmith_sub_vec4_u32(u_input.d, vec4<u32>(41806u, 36875u, var_1.x, 85741u))), u_input.d, vec4<bool>(true, global0[_wgslsmith_index_u32(24244u, 20u)] && global0[_wgslsmith_index_u32(var_1.x, 20u)], true, !global0[_wgslsmith_index_u32(4294967295u, 20u)]))));
    global0 = array<bool, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(~_wgslsmith_mod_u32(22348u, u_input.d.x)), _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, var_2.x, 69253u, u_input.d.x) & var_2, _wgslsmith_mult_vec4_u32(vec4<u32>(var_2.x, var_1.x, var_1.x, 4294967295u), var_2)), ~(var_2 | vec4<u32>(19607u, 4294967295u, var_1.x, var_1.x))) >> (vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, var_2.x, var_1.x, 0u), abs(var_2)), ~abs(var_2.x), 1u, var_1.x) % vec4<u32>(32u)), vec3<u32>(u_input.d.x, 0u, abs(~min(33973u, var_2.x))));
}

