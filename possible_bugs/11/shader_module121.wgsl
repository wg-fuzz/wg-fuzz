struct Struct_1 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: vec4<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: bool,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 27>;

var<private> global1: bool = false;

var<private> global2: vec2<bool> = vec2<bool>(true, false);

var<private> global3: array<vec4<f32>, 13>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> bool {
    let var_0 = -abs(_wgslsmith_div_vec4_i32(u_input.b, select(abs(u_input.b), -vec4<i32>(global0[_wgslsmith_index_u32(36815u, 27u)], -2147483647i, u_input.b.x, global0[_wgslsmith_index_u32(1u, 27u)]), !global2.x)));
    let var_1 = -15187i;
    let var_2 = -241f;
    global3 = array<vec4<f32>, 13>();
    let var_3 = Struct_5(true, select(~(~u_input.d), u_input.d, vec3<bool>(true, global2.x, firstTrailingBit(-35302i) != var_1)));
    return all(vec4<bool>(_wgslsmith_f_op_f32(trunc(-624f)) >= var_2, !all(!vec4<bool>(var_3.a, var_3.a, var_3.a, var_3.a)), var_3.a, true && var_3.a));
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    global2 = !vec2<bool>(arg_0.a.b < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -706f)), select(func_3() && global2.x, _wgslsmith_f_op_f32(-806f * arg_0.a.a.x) > _wgslsmith_f_op_f32(882f * arg_0.b.b), true));
    global2 = vec2<bool>(false, !(!(max(-8628i, u_input.b.x) != abs(19590i))));
    let var_0 = i32(-1i) * -52624i;
    let var_1 = vec4<u32>(~9395u, u_input.d.x, _wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.a, 1u >> (u_input.a % 32u)), 0u), 198u);
    global2 = select(!select(vec2<bool>(true, arg_0.b.b >= arg_0.b.a.x), select(vec2<bool>(global2.x, global2.x), vec2<bool>(global2.x, global2.x), vec2<bool>(false, global2.x)), !vec2<bool>(global2.x, true)), select(select(vec2<bool>(any(vec3<bool>(global2.x, true, global2.x)), true), vec2<bool>(select(global2.x, false, global2.x), true), select(vec2<bool>(global2.x, true), vec2<bool>(global2.x, true), false)), vec2<bool>(false, global2.x), global2.x), select(vec2<bool>(all(vec3<bool>(true, true, true)), global2.x || !global2.x), select(vec2<bool>(all(vec3<bool>(false, false, global2.x)), !global2.x), select(!vec2<bool>(global2.x, global2.x), vec2<bool>(global2.x, global2.x), select(global2.x, global2.x, global2.x)), !any(vec2<bool>(false, global2.x))), select(!select(vec2<bool>(global2.x, false), vec2<bool>(global2.x, true), vec2<bool>(false, false)), !select(vec2<bool>(false, global2.x), vec2<bool>(global2.x, global2.x), vec2<bool>(global2.x, true)), true)));
    return arg_0.a;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_4) -> vec2<i32> {
    let var_0 = select(!arg_1.b.zy, vec2<bool>(true, true), arg_2.a.yy);
    var var_1 = vec2<i32>(~abs(firstLeadingBit(_wgslsmith_div_i32(-2147483647i, global0[_wgslsmith_index_u32(4294967295u, 27u)]))), arg_1.a.x);
    var var_2 = -13354i;
    global0 = array<i32, 27>();
    var_1 = reverseBits(vec2<i32>(reverseBits(-32360i), ~_wgslsmith_mult_i32(2147483647i, arg_1.a.x)) >> (arg_1.c.xw % vec2<u32>(32u)));
    return vec2<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 17405i, global0[_wgslsmith_index_u32(4294967295u, 27u)], 1i), reverseBits(u_input.b)) ^ abs(max(-5005i, var_1.x)), var_1.x);
}

fn func_1(arg_0: Struct_5, arg_1: Struct_1) -> Struct_3 {
    global0 = array<i32, 27>();
    let var_0 = Struct_3(func_4(Struct_2(func_2(Struct_2(Struct_1(global3[_wgslsmith_index_u32(u_input.a, 13u)], arg_1.a.x), Struct_1(arg_1.a, arg_1.a.x))), arg_1), Struct_3(reverseBits(-u_input.c.xy), select(!vec3<bool>(global2.x, arg_0.a, true), vec3<bool>(global2.x, true, arg_0.a), true), vec4<u32>(1u, _wgslsmith_dot_vec2_u32(u_input.d.yy, vec2<u32>(u_input.d.x, arg_0.b.x)), u_input.d.x, ~u_input.d.x), Struct_2(func_2(Struct_2(Struct_1(global3[_wgslsmith_index_u32(u_input.d.x, 13u)], 636f), Struct_1(global3[_wgslsmith_index_u32(5058u, 13u)], arg_1.b))), arg_1)), Struct_4(!vec3<bool>(global2.x, arg_0.a, false))), !(!vec3<bool>(all(vec4<bool>(true, arg_0.a, global2.x, true)), any(vec3<bool>(arg_0.a, arg_0.a, true)), true)), ~vec4<u32>(~abs(53765u), ~(~84172u), _wgslsmith_sub_u32(firstTrailingBit(23448u), u_input.d.x), 85310u), Struct_2(arg_1, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(ceil(1127f)), 1369f, 373f, 1f), arg_1.b)));
    let var_1 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.a), _wgslsmith_f_op_vec4_f32(arg_1.a + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(245f, var_0.d.b.a.x, -1140f, -931f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.a.a.x, -534f, 1666f, var_0.d.a.a.x))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(arg_1.a.x, func_2(Struct_2(var_0.d.b, arg_1)).b)))));
    let var_2 = select(select(select(!vec4<bool>(global2.x, false, false, true), !select(vec4<bool>(arg_0.a, var_0.b.x, true, true), vec4<bool>(var_0.b.x, global2.x, arg_0.a, false), var_0.b.x), u_input.d.x < _wgslsmith_dot_vec3_u32(vec3<u32>(8889u, 59734u, var_0.c.x), var_0.c.wwy)), select(vec4<bool>(global2.x, arg_0.a, true, true), !vec4<bool>(arg_0.a, global2.x, true, false), _wgslsmith_f_op_f32(max(arg_1.a.x, 467f)) >= _wgslsmith_f_op_f32(max(-485f, 1000f))), vec4<bool>(!all(vec3<bool>(arg_0.a, global2.x, arg_0.a)), false, global2.x, true)), select(!vec4<bool>(all(var_0.b.yz), true & var_0.b.x, var_0.c.x <= var_0.c.x, !arg_0.a), vec4<bool>(var_0.b.x, true, global2.x, any(select(vec4<bool>(arg_0.a, global2.x, var_0.b.x, global2.x), vec4<bool>(true, true, arg_0.a, var_0.b.x), global2.x))), any(!vec3<bool>(global2.x, var_0.b.x, global2.x))), func_2(Struct_2(func_2(var_0.d), var_0.d.a)).b == _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-970f, var_1.a.x)));
    global2 = var_0.b.zz;
    return Struct_3(u_input.e.yy, select(!(!(!var_0.b)), select(!select(vec3<bool>(false, global2.x, true), vec3<bool>(var_0.b.x, var_0.b.x, false), false), vec3<bool>(!arg_0.a, true, var_0.b.x), any(select(vec3<bool>(false, true, var_2.x), vec3<bool>(true, false, var_2.x), vec3<bool>(false, false, false)))), !(!var_2.yxw)), firstTrailingBit(var_0.c), var_0.d);
}

fn func_5(arg_0: Struct_3) -> Struct_3 {
    var var_0 = Struct_4(vec3<bool>(global2.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(81561u, 27u)], arg_0.a.x, 31551i) ^ vec3<i32>(arg_0.a.x, -56717i, global0[_wgslsmith_index_u32(u_input.a, 27u)]), vec3<i32>(u_input.e.x, 44664i, 25375i)) <= global0[_wgslsmith_index_u32(arg_0.c.x, 27u)], (!global2.x || (global2.x || global2.x)) & arg_0.b.x));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.d.a.b), _wgslsmith_div_f32(1612f, arg_0.d.b.a.x))), 548f)));
    let var_2 = _wgslsmith_f_op_f32(round(var_1.x)) >= _wgslsmith_f_op_f32(f32(-1f) * -1642f);
    global3 = array<vec4<f32>, 13>();
    var var_3 = vec3<i32>(abs(func_4(arg_0.d, arg_0, Struct_4(vec3<bool>(true, false, arg_0.b.x))).x) | 9818i, -u_input.c.x, ~(_wgslsmith_div_i32(2147483647i, u_input.e.x) ^ arg_0.a.x)) & min(vec3<i32>(-1i) * -vec3<i32>(-28557i, u_input.e.x, 1i), -min(_wgslsmith_mod_vec3_i32(u_input.e.wyx, u_input.e.wwy), u_input.e.zzw));
    return func_1(Struct_5(func_3(), _wgslsmith_mult_vec3_u32(arg_0.c.zyw | abs(arg_0.c.xyz), arg_0.c.ywz)), arg_0.d.a);
}

fn func_6(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: f32) -> f32 {
    return 1307f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global2.x;
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-780f + -768f))) * _wgslsmith_f_op_f32(func_6(vec3<bool>(true, true, u_input.c.x <= global0[_wgslsmith_index_u32(25071u, 27u)]), func_5(func_1(Struct_5(false, vec3<u32>(u_input.a, 102606u, u_input.d.x)), Struct_1(vec4<f32>(-1368f, 1171f, 907f, 2502f), -1047f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-913f + 1000f) + _wgslsmith_f_op_f32(767f * -767f))))));
    var var_1 = Struct_5(func_4(Struct_2(func_1(Struct_5(false, u_input.d), Struct_1(global3[_wgslsmith_index_u32(4294967295u, 13u)], -324f)).d.b, Struct_1(global3[_wgslsmith_index_u32(u_input.a, 13u)], -839f)), Struct_3(_wgslsmith_add_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(u_input.d.x, 27u)], u_input.b.x), vec2<i32>(2147483647i, u_input.e.x)), select(vec3<bool>(false, global2.x, global2.x), vec3<bool>(global2.x, global2.x, true), true), vec4<u32>(u_input.a, 0u, u_input.d.x, 0u) & vec4<u32>(57126u, 4528u, u_input.a, 4294967295u), func_1(Struct_5(global2.x, u_input.d), Struct_1(vec4<f32>(-177f, -1837f, 189f, -383f), 472f)).d), Struct_4(vec3<bool>(true, global2.x, global2.x))).x == select(u_input.e.x, 1i, global2.x), _wgslsmith_mult_vec3_u32(((vec3<u32>(40678u, 4294967295u, 15372u) >> (u_input.d % vec3<u32>(32u))) & vec3<u32>(4294967295u, u_input.d.x, 47469u)) & ((vec3<u32>(16736u, 1u, 66730u) >> (u_input.d % vec3<u32>(32u))) | (vec3<u32>(u_input.d.x, u_input.a, u_input.a) << (u_input.d % vec3<u32>(32u)))), ~select(_wgslsmith_add_vec3_u32(u_input.d, u_input.d), _wgslsmith_sub_vec3_u32(vec3<u32>(51703u, u_input.a, u_input.a), u_input.d), !vec3<bool>(global2.x, global2.x, false))));
    global3 = array<vec4<f32>, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(abs(728f)), 2184f, _wgslsmith_f_op_f32(round(1f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-304f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(295f)) + 1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(func_1(Struct_5(global2.x, u_input.d), Struct_1(global3[_wgslsmith_index_u32(23047u, 13u)], -913f)).d.b.a.x, _wgslsmith_f_op_f32(1000f * -1853f), var_1.a & true)) * _wgslsmith_f_op_f32(step(-637f, -284f)))), ~firstTrailingBit(vec4<u32>(8801u, var_1.b.x, 7254u, u_input.d.x)));
}

