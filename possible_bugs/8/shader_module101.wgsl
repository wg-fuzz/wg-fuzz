struct Struct_1 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 32> = array<vec4<bool>, 32>(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec4<bool> {
    global0 = array<vec4<bool>, 32>();
    let var_0 = Struct_2(Struct_1(_wgslsmith_div_f32(-148f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-714f - -813f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-239f, -703f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-277f, -180f)), select(vec2<bool>(true, true), vec2<bool>(true, true), true)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -866f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-233f * -276f))), vec2<f32>(_wgslsmith_f_op_f32(abs(-878f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-553f)) * _wgslsmith_f_op_f32(min(-1006f, -151f))))), -860f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-942f, _wgslsmith_f_op_f32(f32(-1f) * -148f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(733f * 955f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-584f * 2238f)))));
    let var_1 = var_0.b.a;
    var var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(138f, var_1)), var_0.b.b)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 + -901f)), 123f), vec2<bool>(true, true)))));
    let var_3 = vec4<u32>(~(~firstLeadingBit(~u_input.b)), ~countOneBits(u_input.b) ^ firstTrailingBit((11142u << (0u % 32u)) >> (select(36548u, 55021u, true) % 32u)), u_input.b, min(1u, u_input.b >> (u_input.b % 32u)));
    return !global0[_wgslsmith_index_u32(~1u, 32u)];
}

fn func_2(arg_0: vec2<i32>) -> vec4<i32> {
    global0 = array<vec4<bool>, 32>();
    let var_0 = u_input.d;
    let var_1 = func_3();
    let var_2 = select(~max(~countOneBits(vec3<u32>(var_0.x, var_0.x, var_0.x)), vec3<u32>(u_input.d.x, var_0.x, u_input.d.x) ^ vec3<u32>(u_input.d.x, var_0.x, var_0.x)), (countOneBits(abs(vec3<u32>(0u, u_input.b, u_input.b))) >> (vec3<u32>(23143u, var_0.x, 0u) % vec3<u32>(32u))) >> (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d.x, 35429u, _wgslsmith_dot_vec2_u32(vec2<u32>(17548u, 0u), u_input.d)), vec3<u32>(~var_0.x, u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(30528u, var_0.x, u_input.b, u_input.b), vec4<u32>(1u, 130503u, var_0.x, 63997u)))) % vec3<u32>(32u)), var_1.zwy);
    var var_3 = any(var_1.zz);
    return -vec4<i32>(-arg_0.x, 0i, ~u_input.e.x, _wgslsmith_mod_i32(-u_input.a, arg_0.x));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> Struct_2 {
    var var_0 = 152f;
    let var_1 = -vec4<i32>(abs(58321i), u_input.c, -1i, i32(-1i) * -(~u_input.c));
    var var_2 = arg_0;
    var var_3 = _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -2147483647i, firstLeadingBit(16839i) & _wgslsmith_dot_vec3_i32(var_1.yzy, ~vec3<i32>(u_input.c, 0i, u_input.e.x)), -2147483647i), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(func_2(vec2<i32>(var_1.x, u_input.e.x)), ~countOneBits(var_1)), var_1));
    let var_4 = ~((reverseBits(min(vec3<u32>(8609u, 61880u, u_input.d.x), vec3<u32>(1u, 16835u, 58290u))) >> (((vec3<u32>(u_input.d.x, 0u, 1u) << (vec3<u32>(u_input.d.x, u_input.b, 42452u) % vec3<u32>(32u))) & abs(vec3<u32>(u_input.b, u_input.d.x, 31219u))) % vec3<u32>(32u))) & select(select(vec3<u32>(u_input.b, u_input.b, 26853u), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d.x, 4294967295u, u_input.b), vec3<u32>(u_input.b, 12454u, 33033u)), vec3<bool>(true, true, true)), vec3<u32>(u_input.d.x, ~u_input.b, u_input.b), vec3<bool>(true, true, true)));
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(select(arg_1, arg_0.b.x, func_3().x)), _wgslsmith_f_op_vec2_f32(-var_2.b)), Struct_1(_wgslsmith_f_op_f32(min(1330f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1405f * 687f), 450f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_2.b)))), _wgslsmith_f_op_f32(2313f * -1064f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.x, 995f, arg_1, -883f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1409f, 140f, arg_1, 1953f)))), global0[_wgslsmith_index_u32(54759u, 32u)]))));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: Struct_2) -> i32 {
    let var_0 = Struct_3(Struct_1(-635f, _wgslsmith_f_op_vec2_f32(arg_1.d.yx * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-arg_3.b.b))))), vec4<bool>(u_input.c == _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(u_input.c, u_input.a)), _wgslsmith_clamp_vec2_i32(u_input.e.zy, u_input.e.zy, vec2<i32>(21359i, -13423i))), any(select(func_3().xzy, select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true))), any(vec4<bool>(false, false, true, false)) || true, !any(vec3<bool>(true, true, true))), _wgslsmith_clamp_i32(-2147483647i, max(~(~u_input.a), 1i), abs(-1i & u_input.c)));
    global0 = array<vec4<bool>, 32>();
    global0 = array<vec4<bool>, 32>();
    let var_1 = var_0.c;
    global0 = array<vec4<bool>, 32>();
    return var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(vec3<i32>(func_4(min(vec3<u32>(0u, 0u, 1u), vec3<u32>(0u, 22723u, 0u)), func_1(Struct_1(-1177f, vec2<f32>(-1574f, -929f)), 115f, Struct_1(713f, vec2<f32>(272f, 1000f))), reverseBits(vec4<u32>(u_input.b, 0u, u_input.d.x, u_input.b)), func_1(Struct_1(-1537f, vec2<f32>(-384f, 638f)), -253f, Struct_1(991f, vec2<f32>(617f, -732f)))), ~u_input.c | _wgslsmith_mult_i32(2147483647i, u_input.c), u_input.a)) | u_input.e;
    let var_1 = Struct_3(func_1(func_1(Struct_1(-1151f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(2006f, 1000f))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1022f, 323f), -1263f)), func_1(func_1(Struct_1(-860f, vec2<f32>(-1694f, -616f)), 1376f, Struct_1(-311f, vec2<f32>(-1024f, 746f))).a, 902f, Struct_1(-421f, vec2<f32>(330f, -147f))).a).a, _wgslsmith_f_op_f32(f32(-1f) * -413f), Struct_1(125f, _wgslsmith_f_op_vec2_f32(vec2<f32>(358f, -643f) + vec2<f32>(-237f, -426f)))).a, func_3(), u_input.e.x);
    var var_2 = u_input.d;
    global0 = array<vec4<bool>, 32>();
    var var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(func_1(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-266f, var_1.a.b.x)), func_1(Struct_1(var_1.a.a, var_1.a.b), _wgslsmith_f_op_f32(max(var_1.a.a, -1000f)), var_1.a).b).b.a, var_1.a.b.x));
}

