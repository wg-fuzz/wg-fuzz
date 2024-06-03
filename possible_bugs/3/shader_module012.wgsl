struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: f32,
}

struct Struct_4 {
    a: bool,
    b: vec2<i32>,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<bool>, 9> = array<vec3<bool>, 9>(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false));

var<private> global2: array<Struct_2, 18>;

var<private> global3: vec2<i32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: f32) -> vec2<i32> {
    global1 = array<vec3<bool>, 9>();
    var var_0 = Struct_1(vec3<i32>(_wgslsmith_sub_i32(1i, _wgslsmith_mult_i32(global0.a.x, -global3.x)), 1i, global0.a.x));
    var var_1 = firstLeadingBit(vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.d, 0u) >> (arg_1.a % 32u), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.d, arg_1.a)), min(vec2<u32>(0u, 1u), vec2<u32>(u_input.d, arg_0.a)))), u_input.d, 1u, u_input.c & (abs(arg_0.a) & min(arg_0.a, arg_1.a))));
    var_1 = ~_wgslsmith_sub_vec4_u32((vec4<u32>(arg_1.a, 3585u, arg_0.a, arg_0.a) ^ vec4<u32>(1u, arg_0.a, var_1.x, 1u)) | reverseBits(vec4<u32>(u_input.c, arg_1.a, var_1.x, arg_0.a)), ~vec4<u32>(arg_1.a, 4294967295u, 121178u, u_input.d)) & ~(~(~vec4<u32>(u_input.d, var_1.x, arg_0.a, arg_0.a)));
    var var_2 = global0.a.yz;
    return -firstLeadingBit(u_input.a.yx | u_input.a.yy);
}

fn func_2(arg_0: vec2<f32>) -> Struct_3 {
    var var_0 = Struct_3(4294967295u, !vec4<bool>(true, (u_input.d > u_input.c) != true, all(vec3<bool>(true, true, false)), true), _wgslsmith_f_op_f32(abs(1525f)));
    global3 = _wgslsmith_mod_vec2_i32(func_3(Struct_3(u_input.d, var_0.b, var_0.c), Struct_3(var_0.a, !var_0.b, -2260f), 2436f), reverseBits(firstTrailingBit(min(vec2<i32>(2147483647i, global3.x), global0.a.zz) << ((vec2<u32>(var_0.a, 32809u) & vec2<u32>(var_0.a, var_0.a)) % vec2<u32>(32u)))));
    let var_1 = ~4294967295u;
    global3 = -vec2<i32>(reverseBits(~_wgslsmith_clamp_i32(global0.a.x, 37331i, global0.a.x)), 1i);
    var var_2 = vec3<bool>(!(var_0.b.x | !(!var_0.b.x)), var_0.b.x == var_0.b.x, var_0.b.x);
    return Struct_3(1u, var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.c))));
}

fn func_1() -> Struct_1 {
    var var_0 = -vec2<i32>(global3.x, global3.x);
    var var_1 = global2[_wgslsmith_index_u32(u_input.c, 18u)];
    let var_2 = func_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(sign(1048f)), _wgslsmith_f_op_f32(var_1.a.x - var_1.a.x)), vec2<f32>(894f, -584f), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), false))))));
    let var_3 = ~countOneBits(select(vec2<u32>(52291u, var_2.a) << (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u)), min(vec2<u32>(4294967295u, 13433u), vec2<u32>(40333u, 1u)), vec2<bool>(var_2.b.x, false)) >> (((vec2<u32>(u_input.c, 4294967295u) >> (vec2<u32>(1u, u_input.d) % vec2<u32>(32u))) ^ _wgslsmith_mult_vec2_u32(vec2<u32>(var_2.a, 53368u), vec2<u32>(u_input.c, u_input.c))) % vec2<u32>(32u)));
    var var_4 = var_2;
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global3 = vec2<i32>(2147483647i, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(min(u_input.b, u_input.b), ~u_input.a), -2147483647i));
    global3 = u_input.a.zz;
    var_0 = func_1();
    var var_1 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(1f)), _wgslsmith_sub_vec2_u32((vec2<u32>(64346u, 0u) & vec2<u32>(65328u, u_input.d)) >> (~_wgslsmith_mult_vec2_u32(vec2<u32>(943u, u_input.c), vec2<u32>(u_input.c, 370u)) % vec2<u32>(32u)), ~(~vec2<u32>(1u, 1u))));
}

