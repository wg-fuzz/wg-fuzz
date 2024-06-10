struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: i32,
    d: Struct_2,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> bool {
    var var_0 = Struct_3(Struct_2(Struct_1(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), true)), Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false)))), countOneBits(max(countOneBits(u_input.a ^ u_input.a), _wgslsmith_add_vec4_u32(~vec4<u32>(54054u, 4294967295u, 77181u, u_input.a.x), ~u_input.a))), 1i, Struct_2(Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, true, true))), ~vec2<i32>(63272i, -6587i));
    var_0 = Struct_3(Struct_2(var_0.a.b, var_0.a.a), ~_wgslsmith_mult_vec4_u32(select(firstTrailingBit(vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x)), select(vec4<u32>(5181u, 24763u, 4294967295u, 4294967295u), vec4<u32>(1u, u_input.a.x, var_0.b.x, var_0.b.x), false), true), _wgslsmith_add_vec4_u32(max(var_0.b, vec4<u32>(var_0.b.x, u_input.a.x, u_input.a.x, var_0.b.x)), ~u_input.a)), reverseBits(var_0.e.x) >> (var_0.b.x % 32u), Struct_2(var_0.d.a, var_0.d.a), var_0.e);
    var var_1 = -21024i;
    var_0 = Struct_3(var_0.d, ~(~u_input.a), u_input.b.x, Struct_2(var_0.a.a, Struct_1(select(select(var_0.a.a.a, vec3<bool>(false, var_0.a.b.a.x, var_0.d.b.a.x), false), var_0.d.b.a, select(vec3<bool>(true, var_0.d.b.a.x, true), vec3<bool>(var_0.d.b.a.x, var_0.a.a.a.x, var_0.a.b.a.x), var_0.a.b.a.x)))), _wgslsmith_mult_vec2_i32(vec2<i32>(abs(2147483647i) | _wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(u_input.b.x, -2147483647i, u_input.d.x, u_input.d.x)), var_0.e.x), var_0.e));
    return true;
}

fn func_2(arg_0: bool, arg_1: u32) -> vec3<bool> {
    var var_0 = u_input.c;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-130f)));
    var var_2 = u_input.b.x;
    var_0 = firstTrailingBit(-89228i);
    var_2 = 2147483647i;
    return vec3<bool>(!(!arg_0), func_3(), _wgslsmith_f_op_f32(var_1 * var_1) <= var_1);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    let var_0 = ~u_input.a.xx;
    let var_1 = true;
    let var_2 = -u_input.d.zxx;
    let var_3 = -226f;
    var var_4 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-180f, _wgslsmith_f_op_f32(-var_3), var_3)) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3, var_3, 916f)))))))));
    return arg_0.a;
}

fn func_1(arg_0: vec3<f32>, arg_1: u32) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1262f, arg_0.x))))), arg_0.yx)));
    let var_1 = true;
    var var_2 = func_4(Struct_2(Struct_1(func_2(var_1, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 0u, 1u), vec3<u32>(50383u, u_input.a.x, arg_1)))), Struct_1(!(!vec3<bool>(var_1, var_1, false)))), Struct_2(Struct_1(select(vec3<bool>(false, var_1, true), select(vec3<bool>(var_1, false, var_1), vec3<bool>(var_1, var_1, true), vec3<bool>(var_1, false, var_1)), !vec3<bool>(var_1, var_1, true))), Struct_1(select(vec3<bool>(false, var_1, false), vec3<bool>(true, var_1, var_1), var_1))));
    let var_3 = abs(u_input.a.x);
    var var_4 = var_2.a.x;
    return u_input.c > firstLeadingBit(-76651i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec3<bool>(func_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-339f, 140f, -304f))))), ~(0u << (u_input.a.x % 32u))), any(vec2<bool>(true, true)), func_2(true, 11457u).x));
    let var_1 = abs(max(4294967295u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.a.zw, u_input.a.xz), u_input.a.x), (u_input.a.x << (0u % 32u)) << (4294967295u % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_f_op_f32(floor(1266f)));
}

