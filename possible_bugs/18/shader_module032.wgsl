struct Struct_1 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_3,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> f32 {
    var var_0 = select(!vec3<bool>(true || any(vec3<bool>(true, false, false)), true, !all(vec3<bool>(true, true, false))), select(vec3<bool>(true != all(vec4<bool>(false, true, false, true)), true, any(select(vec2<bool>(false, true), vec2<bool>(false, false), true))), select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec2<bool>(true, true)), all(vec4<bool>(false, false, true, true))), false), vec3<bool>(true, true, true)), true);
    let var_1 = ~58957i;
    var_0 = vec3<bool>(var_0.x, any(select(!(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), !vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(false, false, false, var_0.x)), vec4<bool>(var_0.x | true, any(var_0.xx), true && var_0.x, var_0.x))), false);
    var_0 = select(select(vec3<bool>(false, var_0.x, !any(vec3<bool>(var_0.x, true, var_0.x))), select(!select(vec3<bool>(true, true, true), vec3<bool>(var_0.x, true, false), vec3<bool>(false, true, var_0.x)), select(vec3<bool>(var_0.x, var_0.x, var_0.x), select(vec3<bool>(true, var_0.x, true), vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.x), all(vec3<bool>(false, true, false))), !var_0.x), !all(var_0.xz)), select(vec3<bool>(!any(vec4<bool>(var_0.x, false, var_0.x, false)), true, all(select(vec4<bool>(false, false, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(false, var_0.x, false, false)))), !vec3<bool>(false && var_0.x, all(vec4<bool>(var_0.x, var_0.x, false, var_0.x)), any(vec4<bool>(var_0.x, false, true, true))), true), vec3<bool>(!select(true, var_0.x, var_0.x), !var_0.x, !(!(var_0.x & var_0.x))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -305f)))) + _wgslsmith_f_op_f32(trunc(-1025f))) * _wgslsmith_f_op_f32(f32(-1f) * -1102f));
}

fn func_4(arg_0: bool, arg_1: vec3<u32>, arg_2: vec2<u32>, arg_3: bool) -> vec3<i32> {
    return ~u_input.a;
}

fn func_2() -> vec3<i32> {
    var var_0 = ~4294967295u;
    let var_1 = false;
    return func_4(-156f >= _wgslsmith_f_op_f32(func_3()), ~(~(~vec3<u32>(11872u, 71634u, 1u))), vec2<u32>(~_wgslsmith_mult_u32(4294967295u, 1u), 0u), var_1);
}

fn func_1() -> Struct_4 {
    let var_0 = Struct_4(func_2(), Struct_3(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true)), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), true)), vec4<bool>(true, true, true, false), all(vec3<bool>(true, true, false)) || false), vec4<i32>(1i, func_2().x, -(~2147483647i), -5520i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1916f, -442f, 1495f) - vec3<f32>(710f, 191f, -517f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-444f, -1088f, -853f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1097f + -572f))))), Struct_1(vec3<i32>(u_input.b.x, -40119i, -1i), 25912u)));
    let var_1 = firstLeadingBit(var_0.b.e.b);
    let var_2 = vec3<u32>(~firstTrailingBit((var_0.b.e.b ^ var_1) | _wgslsmith_dot_vec4_u32(vec4<u32>(20917u, var_1, var_0.b.e.b, 4294967295u), vec4<u32>(0u, 33427u, 45275u, 10521u))), var_1, 2907u & _wgslsmith_mult_u32(firstLeadingBit(var_1) | _wgslsmith_add_u32(88048u, 96544u), _wgslsmith_div_u32(~1225u, 37808u)));
    let var_3 = var_0.b.b;
    var var_4 = _wgslsmith_f_op_f32(step(var_0.b.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1104f, var_0.b.d))))));
    return Struct_4(-select(vec3<i32>(~var_3.x, var_0.b.b.x, -var_0.a.x), _wgslsmith_mod_vec3_i32(select(var_3.zwy, vec3<i32>(u_input.b.x, var_0.b.b.x, -2147483647i), var_0.b.a.x), vec3<i32>(var_0.b.e.a.x, 0i, var_0.a.x)), true), var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    var var_1 = vec4<bool>(any(select(select(vec2<bool>(true, true), vec2<bool>(var_0, true), vec2<bool>(false, false)), vec2<bool>(true, true), true)) != var_0, var_0, var_0, true);
    let var_2 = func_1();
    var_1 = !vec4<bool>(true, var_2.b.a.x, any(var_2.b.a), !(_wgslsmith_f_op_f32(533f + var_2.b.c.x) < _wgslsmith_f_op_f32(min(var_2.b.d, var_2.b.d))));
    let var_3 = Struct_5(vec2<bool>(false, true));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_div_u32(countOneBits(var_2.b.e.b), abs(~0u)), 25798u, ~(~var_2.b.e.b)));
}

