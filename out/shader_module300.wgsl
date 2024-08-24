struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<f32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: Struct_3,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 22> = array<vec4<i32>, 22>(vec4<i32>(1i, 2147483647i, 1i, 18169i), vec4<i32>(-1i, -21644i, 0i, 0i), vec4<i32>(0i, -1i, -1i, 2147483647i), vec4<i32>(-1i, 0i, i32(-2147483648), i32(-2147483648)), vec4<i32>(0i, -59936i, i32(-2147483648), i32(-2147483648)), vec4<i32>(2147483647i, i32(-2147483648), 0i, 0i), vec4<i32>(-32920i, 2147483647i, i32(-2147483648), 40275i), vec4<i32>(2147483647i, 3025i, 22855i, 67245i), vec4<i32>(28511i, -8183i, 7464i, -17294i), vec4<i32>(45444i, 0i, -1i, 3408i), vec4<i32>(2147483647i, 22884i, 11175i, -1i), vec4<i32>(-1i, 0i, -44248i, -3590i), vec4<i32>(1i, 2147483647i, 5151i, -22514i), vec4<i32>(i32(-2147483648), 0i, 2147483647i, 4308i), vec4<i32>(0i, 0i, -22119i, 0i), vec4<i32>(1i, 88329i, i32(-2147483648), 19160i), vec4<i32>(1i, i32(-2147483648), -1i, 0i), vec4<i32>(-14842i, 2147483647i, 16137i, 1i), vec4<i32>(i32(-2147483648), 33995i, -38925i, 1i), vec4<i32>(0i, 2147483647i, 26107i, 9949i), vec4<i32>(1i, 57340i, 2147483647i, 29461i), vec4<i32>(28596i, i32(-2147483648), -25413i, i32(-2147483648)));

var<private> global1: array<Struct_3, 27> = array<Struct_3, 27>(Struct_3(vec3<bool>(true, false, true), vec3<f32>(-714f, 1381f, -395f)), Struct_3(vec3<bool>(false, true, false), vec3<f32>(388f, -832f, 944f)), Struct_3(vec3<bool>(false, true, true), vec3<f32>(-2126f, 641f, -1052f)), Struct_3(vec3<bool>(false, true, true), vec3<f32>(-147f, 1429f, -1025f)), Struct_3(vec3<bool>(false, true, true), vec3<f32>(1000f, -1000f, -122f)), Struct_3(vec3<bool>(true, true, true), vec3<f32>(-349f, 607f, -160f)), Struct_3(vec3<bool>(true, false, false), vec3<f32>(-615f, -1626f, 872f)), Struct_3(vec3<bool>(false, true, false), vec3<f32>(-1081f, -121f, -1000f)), Struct_3(vec3<bool>(true, false, false), vec3<f32>(1044f, -1115f, 1563f)), Struct_3(vec3<bool>(true, true, true), vec3<f32>(229f, -1284f, 117f)), Struct_3(vec3<bool>(false, false, false), vec3<f32>(1000f, -199f, 148f)), Struct_3(vec3<bool>(true, true, false), vec3<f32>(-318f, 915f, 167f)), Struct_3(vec3<bool>(false, false, false), vec3<f32>(-1144f, -1425f, -1000f)), Struct_3(vec3<bool>(true, false, false), vec3<f32>(1000f, -817f, 865f)), Struct_3(vec3<bool>(false, false, true), vec3<f32>(678f, 745f, -105f)), Struct_3(vec3<bool>(true, false, true), vec3<f32>(-1264f, 683f, 168f)), Struct_3(vec3<bool>(false, true, false), vec3<f32>(269f, -858f, -305f)), Struct_3(vec3<bool>(false, true, false), vec3<f32>(-981f, -785f, 1627f)), Struct_3(vec3<bool>(false, true, true), vec3<f32>(-277f, 1207f, -540f)), Struct_3(vec3<bool>(true, false, false), vec3<f32>(-1602f, 147f, -617f)), Struct_3(vec3<bool>(true, false, false), vec3<f32>(1347f, -465f, -823f)), Struct_3(vec3<bool>(false, true, false), vec3<f32>(1730f, -232f, -1000f)), Struct_3(vec3<bool>(false, true, true), vec3<f32>(-1000f, 252f, -929f)), Struct_3(vec3<bool>(false, false, false), vec3<f32>(-1024f, -242f, 189f)), Struct_3(vec3<bool>(true, true, false), vec3<f32>(1848f, -423f, -133f)), Struct_3(vec3<bool>(false, false, true), vec3<f32>(-970f, 1000f, 339f)), Struct_3(vec3<bool>(true, false, true), vec3<f32>(2014f, -423f, 661f)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_5) -> f32 {
    global0 = array<vec4<i32>, 22>();
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-arg_1.d.ww)))));
    let var_1 = u_input.a;
    var var_2 = min(abs(~(~firstTrailingBit(vec3<u32>(24413u, 0u, 11354u)))), reverseBits(~vec3<u32>(1u, 1u, 1u)));
    global0 = array<vec4<i32>, 22>();
    return arg_0;
}

fn func_2(arg_0: i32, arg_1: Struct_4) -> Struct_4 {
    var var_0 = -159f;
    return Struct_4(Struct_2(_wgslsmith_f_op_f32(step(-229f, _wgslsmith_f_op_f32(f32(-1f) * -1913f))), vec2<f32>(-507f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_1.a.a, Struct_5(vec3<i32>(arg_0, arg_0, 0i), vec3<f32>(-297f, arg_1.a.a, 1774f), global1[_wgslsmith_index_u32(4294967295u, 27u)], vec4<f32>(1292f, arg_1.a.a, arg_1.a.a, arg_1.a.a))))))));
}

fn func_1(arg_0: i32, arg_1: Struct_5, arg_2: Struct_2, arg_3: vec3<i32>) -> u32 {
    var var_0 = func_2(~0i, Struct_4(arg_2));
    global1 = array<Struct_3, 27>();
    var var_1 = 0i;
    var var_2 = ~vec3<i32>(arg_3.x, ~arg_3.x, firstLeadingBit(_wgslsmith_clamp_i32(arg_0, _wgslsmith_dot_vec3_i32(arg_3, u_input.b), ~u_input.b.x)));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.b.x, -1000f, arg_2.a)))) + arg_1.b), arg_1.b, all(vec2<bool>(select(arg_1.c.a.x, arg_1.c.a.x, true), arg_1.c.a.x)))) + arg_1.d.ywz);
    return 9880u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 22>();
    global1 = array<Struct_3, 27>();
    var var_0 = Struct_4(Struct_2(511f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -983f))))));
    var var_1 = all(vec2<bool>(true, true));
    var var_2 = global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~firstLeadingBit(select(17960u, 2880u, true)), 1u), 27u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_f_op_f32(max(730f, 2169f))))), reverseBits(global0[_wgslsmith_index_u32(~(~21403u) << (_wgslsmith_add_u32(~21996u, func_1(u_input.a, Struct_5(u_input.b, vec3<f32>(var_2.b.x, var_0.a.b.x, var_0.a.b.x), global1[_wgslsmith_index_u32(4294967295u, 27u)], vec4<f32>(var_0.a.a, var_2.b.x, 606f, var_2.b.x)), var_0.a, u_input.b)) % 32u), 22u)]));
}

