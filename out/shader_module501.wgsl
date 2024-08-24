struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: i32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 14>;

var<private> global1: Struct_1 = Struct_1(vec3<bool>(false, false, false), vec4<i32>(-54726i, 2147483647i, i32(-2147483648), 1i), 24052i);

var<private> global2: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec3<bool>(false, false, true), vec4<i32>(-35159i, 0i, 7984i, -1i), -5402i), Struct_1(vec3<bool>(false, true, false), vec4<i32>(-24176i, -1i, 17874i, i32(-2147483648)), 0i), Struct_1(vec3<bool>(true, false, false), vec4<i32>(-9224i, i32(-2147483648), -1i, i32(-2147483648)), -1i), Struct_1(vec3<bool>(true, false, true), vec4<i32>(-20442i, 36646i, i32(-2147483648), 36569i), 37127i));

var<private> global3: vec2<u32> = vec2<u32>(13376u, 1u);

var<private> global4: Struct_2;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<bool>) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, -1000f), vec2<f32>(984f, 1000f))))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(873f, -813f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -2360f)), true)))))));
    return vec3<i32>(global1.b.x & ~14186i, reverseBits(_wgslsmith_mult_i32(global1.c, -17407i)), abs(select(_wgslsmith_dot_vec2_i32(global1.b.zw, _wgslsmith_sub_vec2_i32(arg_0.yx, vec2<i32>(-2147483647i, 1i))), _wgslsmith_mult_i32(arg_0.x, -arg_0.x), all(vec3<bool>(false, global4.a, arg_1.x)))));
}

fn func_2(arg_0: vec3<i32>, arg_1: i32) -> i32 {
    var var_0 = vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(541f, _wgslsmith_f_op_f32(1102f + 637f), !global1.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-720f))))));
    let var_1 = global4.a;
    var var_2 = _wgslsmith_mult_vec4_i32(global1.b, global1.b);
    var var_3 = func_3(vec4<i32>(~(~1i), -global1.b.x, -u_input.a, -4180i), !(!(!vec4<bool>(false, global4.a, false, global1.a.x)))) ^ var_2.zxz;
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1827f, _wgslsmith_f_op_f32(floor(var_0.x))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_0.x)), -1198f))), var_0.x, _wgslsmith_f_op_f32(ceil(1568f)));
    return -global1.b.x;
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_mod_i32(u_input.a, _wgslsmith_sub_i32(global1.c, _wgslsmith_mod_i32(u_input.a, -_wgslsmith_add_i32(16019i, global1.b.x))));
    var var_1 = 0i > func_2(~global1.b.xyz, ~min(min(global1.b.x, -1i), ~u_input.a));
    var var_2 = 15426u;
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f - -1281f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1686f, 797f)) - -1351f)))));
    return global2[_wgslsmith_index_u32(~(~(~_wgslsmith_sub_u32(~0u, firstLeadingBit(4294967295u)))), 4u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global2 = array<Struct_1, 4>();
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -338f), _wgslsmith_f_op_f32(-305f - 1000f), _wgslsmith_f_op_f32(459f - -1000f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-680f, -1386f, 2325f))))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-587f - 449f), _wgslsmith_f_op_f32(-1000f + -360f), _wgslsmith_f_op_f32(f32(-1f) * -1092f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(937f, 1285f, -373f), vec3<f32>(191f, -1915f, 345f), vec3<bool>(var_0.a.x, false, true)))), vec3<bool>(true, global1.a.x, true)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1364f, 772f, 387f) + vec3<f32>(695f, 1086f, 306f)))) * vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1530f + -1000f), _wgslsmith_f_op_f32(trunc(631f))), _wgslsmith_f_op_f32(max(-794f, _wgslsmith_f_op_f32(ceil(375f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-176f * 2924f), _wgslsmith_f_op_f32(-898f + 157f))))), false));
    var var_2 = func_1();
    var var_3 = ~_wgslsmith_sub_vec3_i32(global1.b.zyw, _wgslsmith_clamp_vec3_i32(vec3<i32>(func_2(var_2.b.zxz, 26914i), _wgslsmith_add_i32(u_input.a, 2147483647i), var_0.c | 25036i), ~(vec3<i32>(u_input.a, var_0.c, 0i) << (vec3<u32>(16462u, global3.x, global3.x) % vec3<u32>(32u))), _wgslsmith_mult_vec3_i32(~var_2.b.xxw, ~global1.b.yzx)));
    var var_4 = _wgslsmith_f_op_f32(1010f - var_1.x);
    global2 = array<Struct_1, 4>();
    global2 = array<Struct_1, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(-u_input.a, ~reverseBits(-38073i), u_input.a));
}

