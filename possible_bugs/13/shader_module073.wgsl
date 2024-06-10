struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec4<u32>, 27> = array<vec4<u32>, 27>(vec4<u32>(52454u, 1u, 0u, 1u), vec4<u32>(74101u, 1086u, 1u, 4294967295u), vec4<u32>(29646u, 99072u, 35534u, 0u), vec4<u32>(9348u, 1u, 29936u, 50240u), vec4<u32>(19232u, 103246u, 139u, 0u), vec4<u32>(1905u, 0u, 4723u, 14074u), vec4<u32>(20457u, 0u, 63999u, 38783u), vec4<u32>(0u, 71562u, 1u, 0u), vec4<u32>(73581u, 1u, 66410u, 1u), vec4<u32>(0u, 34879u, 4294967295u, 3097u), vec4<u32>(1u, 4560u, 34879u, 1u), vec4<u32>(4294967295u, 4294967295u, 1u, 9812u), vec4<u32>(74505u, 93780u, 1u, 4294967295u), vec4<u32>(2758u, 4321u, 87659u, 4294967295u), vec4<u32>(4294967295u, 63583u, 100992u, 3384u), vec4<u32>(62472u, 4294967295u, 0u, 9942u), vec4<u32>(4294967295u, 0u, 63465u, 101327u), vec4<u32>(1u, 9558u, 4294967295u, 23348u), vec4<u32>(0u, 1u, 10656u, 1u), vec4<u32>(37742u, 1u, 1u, 1u), vec4<u32>(16477u, 19571u, 42141u, 0u), vec4<u32>(59677u, 0u, 0u, 4294967295u), vec4<u32>(28894u, 38244u, 28313u, 1u), vec4<u32>(0u, 1u, 69285u, 1u), vec4<u32>(1u, 72074u, 32263u, 1u), vec4<u32>(0u, 4294967295u, 1u, 1u), vec4<u32>(4294967295u, 18290u, 1u, 1u));

var<private> global2: array<vec3<bool>, 24> = array<vec3<bool>, 24>(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false));

var<private> global3: array<u32, 28>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(global0.a);
    let var_1 = true;
    global3 = array<u32, 28>();
    global2 = array<vec3<bool>, 24>();
    global0 = var_0;
    return Struct_2(Struct_1(vec2<i32>(var_0.a.a.x, 47420i)));
}

fn func_3() -> Struct_1 {
    return func_2().a;
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> f32 {
    let var_0 = ~(-select(u_input.b, abs(-16770i), arg_0) >> (~_wgslsmith_clamp_u32(u_input.c << (4294967295u % 32u), ~u_input.a.x, 1u) % 32u));
    let var_1 = func_2();
    var var_2 = Struct_2(Struct_1(var_1.a.a >> (u_input.a.zz % vec2<u32>(32u))));
    var_2 = Struct_2(func_3());
    return 865f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 7993u;
    var var_1 = _wgslsmith_mult_vec2_u32(u_input.d, max(_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(u_input.d, vec2<u32>(4927u, global3[_wgslsmith_index_u32(1u, 28u)]) | u_input.a.zz), ~vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c, 28u)], 28u)], u_input.a.x), vec2<u32>(u_input.e, 20558u)), ~(~u_input.d)));
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(782f, -619f, 840f, -1030f)))))), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1200f + 1059f), 952f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-717f)))), 2380f, 170f));
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(all(!global2[_wgslsmith_index_u32(u_input.e, 24u)]), Struct_1(_wgslsmith_mod_vec2_i32(global0.a.a, vec2<i32>(u_input.b, global0.a.a.x))))))));
    var_1 = _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(~90373u, 0u), vec2<u32>(~(~29382u), u_input.a.x)), _wgslsmith_sub_vec2_u32(u_input.a.yx, abs(~u_input.a.zy)));
    var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(368f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-554f - var_2.x))))) + _wgslsmith_f_op_f32(f32(-1f) * -830f)), 1142f));
    var_0 = 77609u;
    global1 = array<vec4<u32>, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-var_2.zyw), 1063f, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 28u)], 28u)]);
}

