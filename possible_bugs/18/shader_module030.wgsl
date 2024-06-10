struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: Struct_2;

var<private> global2: array<vec3<u32>, 15>;

var<private> global3: bool = true;

var<private> global4: array<i32, 15> = array<i32, 15>(1i, -9491i, -18364i, 5379i, 0i, 23038i, 2147483647i, 1i, 0i, 0i, i32(-2147483648), 1i, i32(-2147483648), -5783i, 1i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2) -> f32 {
    var var_0 = arg_0.a.a;
    global2 = array<vec3<u32>, 15>();
    global1 = Struct_2(Struct_1(arg_0.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-689f + arg_0.a.b))))), Struct_1(arg_0.b.a, 396f), u_input.b.x, arg_0.d);
    var var_1 = arg_0;
    var var_2 = Struct_1(vec4<bool>(true, arg_0.b.a.x, any(select(var_1.a.a.zzx, vec3<bool>(true, global1.b.a.x, false), select(global1.a.a.xxz, var_0.xyy, var_0.wyw))), true), _wgslsmith_f_op_f32(select(-801f, -657f, false)));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.a.b))))) * _wgslsmith_f_op_f32(-var_1.a.b))));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1) -> vec2<u32> {
    var var_0 = 0u;
    var var_1 = Struct_1(vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b)) < _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(global1.b.a, arg_0.x), global1.a, 5711i, vec4<bool>(true, false, global1.a.a.x, true)))), any(vec4<bool>(arg_1.a.x, arg_1.a.x, any(global1.b.a), u_input.b.x < global1.c)), !(!(!global1.a.a.x)), true), 2943f);
    let var_2 = _wgslsmith_clamp_vec4_u32(vec4<u32>(106706u, (37199u & _wgslsmith_clamp_u32(1u, 28916u, 0u)) << (_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(global2[_wgslsmith_index_u32(6009u, 15u)], vec3<u32>(0u, 0u, 48542u)), ~vec3<u32>(28873u, 3361u, 41715u)) % 32u), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 10167u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 6597u)), vec2<u32>(1u, 1u)) & ~_wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(25725u, 15u)], global2[_wgslsmith_index_u32(1u, 15u)]), ~(0u & _wgslsmith_dot_vec4_u32(vec4<u32>(4520u, 0u, 0u, 0u), vec4<u32>(43705u, 62342u, 4294967295u, 1u)))), ~(~vec4<u32>(1u, countOneBits(1u), 4294967295u, 0u)), ~(~(~(~vec4<u32>(20148u, 1u, 38968u, 4294967295u)))));
    var var_3 = arg_1.a.xyw;
    global1 = Struct_2(arg_1, global1.b, -11969i, vec4<bool>(3602u > var_2.x, true, true, false));
    return vec2<u32>(select(var_2.x, 24699u, var_3.x || var_1.a.x), var_2.x);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(vec4<bool>(true, false, all(vec2<bool>(false, arg_1.a.x)), false), _wgslsmith_f_op_f32(-1211f * _wgslsmith_f_op_f32(-1409f + _wgslsmith_f_op_f32(987f * arg_0.b)))), arg_1, -6333i, !(!vec4<bool>(false, !global1.a.a.x, arg_1.a.x, true)));
    let var_1 = ~abs(select(func_2(vec3<f32>(195f, -739f, var_0.a.b), Struct_1(vec4<bool>(global1.b.a.x, arg_0.a.x, false, arg_0.a.x), arg_1.b)) & vec2<u32>(22518u, 1u), vec2<u32>(_wgslsmith_add_u32(1u, 18670u), 38601u), true));
    let var_2 = arg_0.a.yz;
    var var_3 = u_input.b;
    let var_4 = _wgslsmith_dot_vec2_u32(~(abs(firstTrailingBit(var_1)) | vec2<u32>(~133u, min(var_1.x, var_1.x))), _wgslsmith_sub_vec2_u32(vec2<u32>(firstTrailingBit(var_1.x), ~var_1.x), select(var_1, ~(~vec2<u32>(var_1.x, var_1.x)), false)));
    return Struct_2(Struct_1(select(select(vec4<bool>(false, true, false, true), select(arg_1.a, vec4<bool>(global1.b.a.x, false, false, var_0.b.a.x), false), arg_1.a), !select(vec4<bool>(var_2.x, false, arg_1.a.x, arg_0.a.x), vec4<bool>(false, arg_0.a.x, global1.a.a.x, false), vec4<bool>(false, var_2.x, false, true)), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, global1.d.x), select(arg_1.a, arg_1.a, var_0.b.a))), -1000f), Struct_1(arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(463f * -174f))), _wgslsmith_dot_vec3_i32(vec3<i32>(global4[_wgslsmith_index_u32(min(var_1.x, 0u), 15u)], firstLeadingBit(_wgslsmith_mod_i32(u_input.a, 42595i)), -21861i), ~firstTrailingBit(vec3<i32>(u_input.b.x, global1.c, var_0.c)) << (global2[_wgslsmith_index_u32(34423u, 15u)] % vec3<u32>(32u))), select(!arg_0.a, select(select(arg_1.a, vec4<bool>(global1.a.a.x, var_0.d.x, var_0.b.a.x, true), vec4<bool>(var_0.b.a.x, false, false, true)), vec4<bool>(arg_0.a.x, !var_2.x, arg_0.a.x, var_0.c > 1i), true), vec4<bool>((global1.c >= -2147483647i) & any(var_2), true, true, !(arg_1.a.x || global1.d.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(global1.b.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(134f + 581f) + _wgslsmith_f_op_f32(f32(-1f) * -850f)), _wgslsmith_f_op_f32(global1.b.b + _wgslsmith_div_f32(2412f, -2921f))))), Struct_1(vec4<bool>(global1.b.a.x, true, !global1.a.a.x, true), -233f));
    let var_1 = vec3<i32>(u_input.b.x, _wgslsmith_div_i32(global1.c, -8480i), var_0.c);
    let var_2 = select(!select(vec2<bool>(global1.d.x || global1.a.a.x, global4[_wgslsmith_index_u32(0u, 15u)] < -1i), !var_0.b.a.wz, ~0u >= select(56810u, 1509u, false)), select(vec2<bool>(func_1(Struct_1(vec4<bool>(true, global1.b.a.x, global1.d.x, global1.a.a.x), global1.a.b), var_0.a).a.a.x, true), select(vec2<bool>(any(vec3<bool>(var_0.d.x, true, var_0.a.a.x)), global1.b.a.x), !var_0.d.xx, select(select(vec2<bool>(var_0.b.a.x, false), vec2<bool>(true, var_0.a.a.x), vec2<bool>(global1.b.a.x, global1.d.x)), vec2<bool>(true, global1.b.a.x), true)), vec2<bool>(select(all(var_0.a.a.wx), var_0.d.x, true), var_0.d.x & any(var_0.a.a))), vec2<bool>(!func_1(func_1(var_0.b, Struct_1(vec4<bool>(global1.d.x, global1.d.x, global1.d.x, var_0.a.a.x), 100f)).b, global1.a).b.a.x, (global1.a.a.x && !var_0.a.a.x) && !(global1.a.a.x || true)));
    var var_3 = Struct_2(Struct_1(global1.d, _wgslsmith_f_op_f32(abs(1f))), func_1(Struct_1(vec4<bool>(false, true, var_0.b.a.x, any(var_0.a.a)), 1741f), func_1(global1.a, Struct_1(select(vec4<bool>(true, var_0.b.a.x, var_2.x, true), vec4<bool>(var_0.b.a.x, var_2.x, false, false), true), _wgslsmith_f_op_f32(abs(var_0.b.b)))).b).b, global4[_wgslsmith_index_u32(~1u, 15u)], !(!vec4<bool>(all(var_0.d), any(global1.b.a), true, any(vec3<bool>(var_0.a.a.x, true, true)))));
    var_3 = func_1(var_0.b, Struct_1(var_0.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.b + _wgslsmith_f_op_f32(select(var_0.b.b, -162f, var_2.x))))));
    let var_4 = var_1.xx ^ -(vec2<i32>(-1i) * -u_input.b);
    var_0 = Struct_2(var_0.a, var_3.a, var_4.x, !vec4<bool>(global1.a.a.x, _wgslsmith_f_op_f32(global1.b.b * var_3.a.b) >= 560f, var_0.a.a.x & true, var_0.b.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(-544f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(global1.b, var_3.b, ~1i, var_3.a.a))) - global1.b.b), 0u);
}

