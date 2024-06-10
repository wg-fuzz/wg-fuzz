struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: f32 = -793f;

var<private> global2: array<Struct_2, 7>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = countOneBits(_wgslsmith_dot_vec2_i32(u_input.b.zz, ~firstLeadingBit(_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, -1i), u_input.b.xz))));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -556f), -525f, _wgslsmith_f_op_f32(sign(global0.a))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-255f, _wgslsmith_f_op_f32(f32(-1f) * -1199f), -1096f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-217f, 1758f, -954f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, -2197f, global0.a) - vec3<f32>(global0.a, global0.a, global0.a))))))));
    var var_2 = global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(~17419u, _wgslsmith_add_u32(83378u, ~select(global0.b.x, global0.b.x, global0.c.x))), 7u)];
    var var_3 = 15432u;
    global1 = _wgslsmith_f_op_f32(select(var_1.x, global0.a, any(global0.c)));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1212f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(830f - -664f))))), firstLeadingBit(vec3<u32>(firstLeadingBit(max(global0.b.x, 64441u)), ~(~4294967295u), firstTrailingBit(global0.b.x) >> (global0.b.x % 32u))), select(global0.c, global0.c, global0.c));
}

fn func_3(arg_0: i32, arg_1: i32) -> f32 {
    global2 = array<Struct_2, 7>();
    global1 = global0.a;
    var var_0 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-883f)), global0.a)), vec3<u32>(select(4294967295u, global0.b.x, true), global0.b.x, reverseBits(_wgslsmith_add_u32(global0.b.x, global0.b.x) | 0u)), global0.c);
    var var_1 = global0.c;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-global0.a), global0.b, func_2(0u).c);
    return -1000f;
}

fn func_1() -> Struct_2 {
    let var_0 = func_2(global0.b.x);
    global1 = 874f;
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + _wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_f32(func_3(-3351i, _wgslsmith_sub_i32(2147483647i, u_input.a))), var_0.c.x))));
    var var_2 = reverseBits(vec2<u32>(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(var_0.b.x, 23887u)), select(global0.b.yy >> (var_0.b.zx % vec2<u32>(32u)), vec2<u32>(1u, global0.b.x), global0.c.x)), global0.b.x));
    var var_3 = vec3<f32>(1050f, -264f, var_0.a);
    return Struct_2(true, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(-1541f + var_3.x))) >= _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-299f + var_1.x), _wgslsmith_f_op_f32(238f + var_3.x)), var_0.a), u_input.b.xy ^ vec2<i32>(firstTrailingBit(1i), ~12060i | -u_input.b.x), ~_wgslsmith_div_vec3_i32(u_input.b, vec3<i32>(_wgslsmith_div_i32(88806i, -6771i), countOneBits(-1i), 1i)), ~firstTrailingBit(firstLeadingBit(vec3<u32>(var_0.b.x, 75963u, var_2.x))) & abs(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, var_0.b.x, var_2.x), var_0.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global2 = array<Struct_2, 7>();
    let var_1 = global2[_wgslsmith_index_u32(global0.b.x | 18516u, 7u)];
    global1 = global0.a;
    global1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.a), global0.a));
    let var_2 = func_2(~0u);
    global2 = array<Struct_2, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_2.b.x), vec2<f32>(_wgslsmith_f_op_f32(-global0.a), global0.a), 1f);
}

