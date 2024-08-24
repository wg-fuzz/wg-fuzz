struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec3<bool>,
    e: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec2<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(854f, 597f, -979f);

var<private> global1: Struct_1 = Struct_1(1u, vec4<u32>(0u, 20537u, 475u, 4294967295u), 1u, vec3<bool>(true, true, false), -42433i);

var<private> global2: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(15688u, vec4<u32>(23537u, 63017u, 29964u, 3455u), 1u, vec3<bool>(true, true, false), 31116i), Struct_1(6077u, vec4<u32>(47719u, 16308u, 4294967295u, 0u), 14994u, vec3<bool>(false, false, true), 1i), Struct_1(93090u, vec4<u32>(1u, 1u, 4294967295u, 15206u), 6665u, vec3<bool>(false, false, true), -13541i), Struct_1(4294967295u, vec4<u32>(1u, 4294967295u, 30995u, 8111u), 1u, vec3<bool>(true, true, true), i32(-2147483648)), Struct_1(4294967295u, vec4<u32>(40646u, 24866u, 0u, 26864u), 4294967295u, vec3<bool>(false, true, false), -21617i), Struct_1(4294967295u, vec4<u32>(31553u, 66556u, 9456u, 10787u), 65773u, vec3<bool>(false, false, true), 1i), Struct_1(32702u, vec4<u32>(0u, 4294967295u, 82342u, 4294967295u), 4294967295u, vec3<bool>(false, true, true), -40899i), Struct_1(1u, vec4<u32>(4294967295u, 0u, 121274u, 23435u), 1u, vec3<bool>(false, false, true), -1i), Struct_1(18298u, vec4<u32>(1u, 0u, 2951u, 8352u), 1u, vec3<bool>(false, true, false), 0i), Struct_1(1u, vec4<u32>(1u, 1u, 1u, 52977u), 12100u, vec3<bool>(true, false, false), 2101i), Struct_1(4294967295u, vec4<u32>(1u, 4294967295u, 0u, 1u), 4294967295u, vec3<bool>(true, false, false), -49843i), Struct_1(1u, vec4<u32>(443u, 0u, 4294967295u, 27365u), 4294967295u, vec3<bool>(false, false, false), -53348i), Struct_1(7159u, vec4<u32>(4294967295u, 86992u, 0u, 0u), 0u, vec3<bool>(false, false, false), -3544i), Struct_1(19876u, vec4<u32>(1u, 30897u, 90092u, 13452u), 1u, vec3<bool>(false, true, true), i32(-2147483648)), Struct_1(0u, vec4<u32>(8751u, 2992u, 72684u, 0u), 79667u, vec3<bool>(false, true, true), -1i), Struct_1(4294967295u, vec4<u32>(4294967295u, 0u, 9500u, 22422u), 13251u, vec3<bool>(false, true, false), 1i), Struct_1(4294967295u, vec4<u32>(1u, 4294967295u, 14772u, 60177u), 85881u, vec3<bool>(false, true, false), 17932i), Struct_1(1u, vec4<u32>(4294967295u, 54451u, 4294967295u, 0u), 4294967295u, vec3<bool>(true, true, true), i32(-2147483648)), Struct_1(0u, vec4<u32>(0u, 1u, 1u, 24470u), 41758u, vec3<bool>(true, true, false), -1i), Struct_1(26982u, vec4<u32>(58100u, 4294967295u, 1u, 47068u), 4294967295u, vec3<bool>(false, false, true), 2147483647i), Struct_1(1u, vec4<u32>(1u, 4294967295u, 66157u, 4294967295u), 83441u, vec3<bool>(false, false, true), 155i), Struct_1(1u, vec4<u32>(97248u, 64938u, 0u, 1u), 73216u, vec3<bool>(true, false, true), -20392i), Struct_1(1u, vec4<u32>(50751u, 0u, 1u, 39059u), 17392u, vec3<bool>(true, true, false), -1i), Struct_1(1u, vec4<u32>(6875u, 4294967295u, 26745u, 59687u), 47962u, vec3<bool>(false, false, false), 0i), Struct_1(0u, vec4<u32>(1764u, 12620u, 9830u, 1u), 0u, vec3<bool>(true, true, true), 1i), Struct_1(0u, vec4<u32>(0u, 23311u, 44192u, 4294967295u), 15606u, vec3<bool>(true, false, true), -1i), Struct_1(24296u, vec4<u32>(45744u, 1u, 1u, 52724u), 1u, vec3<bool>(true, true, false), 25302i), Struct_1(35532u, vec4<u32>(52310u, 1u, 59318u, 18186u), 11234u, vec3<bool>(true, false, false), 9911i));

var<private> global3: u32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: bool) -> i32 {
    let var_0 = Struct_1(~global1.c, vec4<u32>(~0u, ~_wgslsmith_add_u32(~30057u, global1.b.x), global1.b.x, 1u), global1.c, global1.d, firstTrailingBit(u_input.a | _wgslsmith_dot_vec2_i32(vec2<i32>(-10970i, 8948i), ~vec2<i32>(-1i, 0i))));
    var var_1 = ~vec3<u32>(1u, global1.c, var_0.a);
    global3 = var_1.x;
    var var_2 = global2[_wgslsmith_index_u32(3234u, 28u)];
    var var_3 = global1.d.x;
    return i32(-1i) * -_wgslsmith_dot_vec2_i32(reverseBits(~vec2<i32>(-20199i, -1i)), vec2<i32>(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_0.e, global1.e, u_input.a), vec4<i32>(var_2.e, -10075i, u_input.a, var_0.e))));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: f32) -> vec4<bool> {
    var var_0 = select(vec2<i32>(_wgslsmith_mod_i32(~select(u_input.a, global1.e, false), ~func_3(true)), _wgslsmith_dot_vec2_i32(abs(-vec2<i32>(global1.e, -42994i)), max(vec2<i32>(25177i, -2412i), vec2<i32>(-78910i, global1.e)) ^ firstTrailingBit(vec2<i32>(global1.e, u_input.a)))), ~(-(~_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(global1.e, -2147483647i)))), !vec2<bool>(max(u_input.a, u_input.a) != global1.e, true));
    let var_1 = ~vec4<i32>(2147483647i, i32(-1i) * -u_input.a, firstLeadingBit(_wgslsmith_sub_i32(u_input.a, _wgslsmith_mult_i32(u_input.a, u_input.a))), -var_0.x ^ ~2147483647i);
    return select(!vec4<bool>(true, global1.d.x, !(!global1.d.x), !(!arg_0)), vec4<bool>(global1.d.x, !(!all(vec4<bool>(arg_0, true, arg_0, global1.d.x))), !(!(arg_2 > arg_2)), true), any(global1.d.zz));
}

fn func_4(arg_0: vec4<bool>, arg_1: i32, arg_2: vec2<f32>, arg_3: i32) -> Struct_1 {
    global1 = Struct_1(global1.b.x, _wgslsmith_mult_vec4_u32(global1.b, ~(~global1.b)), _wgslsmith_mult_u32(1u, reverseBits(global1.b.x)), !select(vec3<bool>(false, true, arg_0.x | false), !vec3<bool>(global1.d.x, global1.d.x, true), !(!global1.d.x)), arg_3);
    global0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(arg_2.x, -449f, global0.x), vec3<f32>(114f, -101f, 265f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, global0.x, -114f))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, 566f, global0.x)), vec3<f32>(-163f, global0.x, arg_2.x))))) * vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_2.x + 684f))), 1538f, _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(sign(global0.x)))))));
    let var_0 = firstLeadingBit(firstTrailingBit(_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(abs(vec3<i32>(-2147483647i, u_input.a, u_input.a)), select(vec3<i32>(2506i, -10895i, u_input.a), vec3<i32>(arg_3, -49975i, arg_1), arg_0.wxz)), vec3<i32>(~(-48712i), countOneBits(0i), _wgslsmith_add_i32(-42140i, 18419i)))));
    var var_1 = vec3<bool>(true, arg_0.x, !((~(-2147483647i) ^ abs(u_input.a)) <= -1i));
    var var_2 = global2[_wgslsmith_index_u32(9563u, 28u)];
    return Struct_1(select(var_2.a, _wgslsmith_add_u32(var_2.b.x, 1u ^ (global1.c | var_2.b.x)), var_1.x), vec4<u32>(_wgslsmith_sub_u32(~54965u, ~(~var_2.a)), ~(~(~32664u)), ~0u, global1.c), ~1u, arg_0.xzx, arg_1);
}

fn func_1() -> Struct_2 {
    global1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global1.b.zwx, global1.b.xxw), 28u)];
    global1 = func_4(select(!select(select(vec4<bool>(true, true, global1.d.x, global1.d.x), vec4<bool>(global1.d.x, false, global1.d.x, global1.d.x), vec4<bool>(global1.d.x, global1.d.x, false, global1.d.x)), func_2(true, false, 624f), global1.d.x), vec4<bool>(all(select(global1.d, vec3<bool>(true, true, true), global1.d)), func_2(global1.d.x | true, global1.d.x, global0.x).x, !all(global1.d), !global1.d.x && select(global1.d.x, global1.d.x, global1.d.x)), global1.d.x), -2147483647i, vec2<f32>(-163f, _wgslsmith_div_f32(-515f, global0.x)), _wgslsmith_mult_i32(select(1i, abs(global1.e), all(vec3<bool>(false, true, global1.d.x))), 12049i) | (i32(-1i) * -1i));
    var var_0 = global2[_wgslsmith_index_u32((81117u >> (_wgslsmith_sub_u32(max(~global1.c, 0u << (global1.b.x % 32u)), reverseBits(global1.b.x)) % 32u)) | 53342u, 28u)];
    global3 = firstLeadingBit(~_wgslsmith_add_u32(global1.c, abs(var_0.b.x))) << (countOneBits((~0u ^ var_0.b.x) & 1u) % 32u);
    var_0 = global2[_wgslsmith_index_u32(4294967295u, 28u)];
    return Struct_2(global0.xy, select(select(!select(var_0.d, vec3<bool>(var_0.d.x, var_0.d.x, var_0.d.x), global1.d.x), !(!vec3<bool>(global1.d.x, true, true)), true), !func_4(select(vec4<bool>(global1.d.x, var_0.d.x, var_0.d.x, true), vec4<bool>(global1.d.x, global1.d.x, false, var_0.d.x), true), max(global1.e, global1.e), _wgslsmith_f_op_vec2_f32(abs(global0.xz)), -23820i << (var_0.a % 32u)).d, ~var_0.c <= ~reverseBits(48332u)), global2[_wgslsmith_index_u32(abs(~_wgslsmith_add_u32(countOneBits(4294967295u), ~global1.b.x)), 28u)], func_4(vec4<bool>(true, true, false, true), 32153i, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 808f)), _wgslsmith_f_op_vec2_f32(global0.yx * global0.xy), global1.d.yx)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1454f, global0.x)), _wgslsmith_f_op_vec2_f32(global0.yy - global0.xx))))), -1i), all(vec3<bool>(var_0.d.x, var_0.d.x, global1.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 28>();
    var var_0 = vec3<f32>(1206f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -794f) - global0.x));
    var var_1 = func_1();
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -731f))))), var_0.x);
    global0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_1.a.x, -821f)) + vec3<f32>(-710f, -952f, 1298f)) * _wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, global0.x, 513f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-299f, var_1.a.x, 1000f) + vec3<f32>(861f, global0.x, var_1.a.x)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.x, -367f, var_0.x)))))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1064f), _wgslsmith_f_op_f32(1000f + _wgslsmith_div_f32(global0.x, global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - 1061f))))));
    let var_3 = Struct_1(1u, firstLeadingBit(var_1.c.b), var_1.c.b.x, global1.d, firstLeadingBit(-u_input.a));
    var var_4 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -767f, var_1.a.x)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.x, var_0.x, var_1.a.x, 413f))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, -1000f, global0.x, global0.x) - vec4<f32>(var_1.a.x, var_1.a.x, 895f, global0.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, var_1.a.x, -238f, global0.x))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -817f, 1426f, 889f) - vec4<f32>(var_1.a.x, -656f, -1365f, global0.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~select(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(u_input.a, global1.e, 1i, 47838i)), ~vec4<i32>(1i, var_3.e, 1i, -2147483647i)), ~max(vec4<i32>(global1.e, -31092i, var_3.e, 1i), vec4<i32>(-2147483647i, 1i, u_input.a, -23973i)), !vec4<bool>(var_3.d.x, false, global1.d.x, var_1.b.x)), func_1().a.x, vec2<u32>(1u, min(select(4294967295u, 0u, false) << (_wgslsmith_sub_u32(global1.c, 0u) % 32u), ~4294967295u >> (~var_3.a % 32u))), ~vec2<u32>(var_3.c, max(global1.a, 0u)) << (~(~func_1().d.b.zy) % vec2<u32>(32u)));
}

