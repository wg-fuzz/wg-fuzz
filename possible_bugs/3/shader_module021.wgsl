struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: vec2<bool>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: u32,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_3,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

var<private> global1: array<Struct_3, 32>;

var<private> global2: vec2<bool>;

var<private> global3: array<u32, 29> = array<u32, 29>(4294967295u, 7085u, 38286u, 38079u, 30756u, 12635u, 0u, 0u, 68958u, 0u, 1u, 0u, 0u, 1661u, 0u, 4294967295u, 0u, 66254u, 81715u, 23312u, 0u, 12137u, 1u, 30361u, 0u, 1u, 13945u, 44160u, 4294967295u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: u32, arg_1: Struct_3, arg_2: vec3<i32>, arg_3: vec4<u32>) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(floor(-926f))));
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> u32 {
    var var_0 = _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(select(_wgslsmith_mod_vec3_u32(u_input.a, vec3<u32>(78325u, u_input.b, u_input.c)), vec3<u32>(firstLeadingBit(2021u), 1u, ~arg_1.b.a.x), vec3<bool>(any(vec4<bool>(true, false, true, global0.x)), false, false)), u_input.a), firstLeadingBit(select(_wgslsmith_add_u32(select(0u, u_input.a.x, arg_1.d.x), 0u), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(28396u, 1u, 8438u), arg_1.a.a.wyw), vec3<u32>(1u, 4294967295u, 1u)), any(vec3<bool>(false, global0.x, true)))));
    var_0 = u_input.b;
    let var_1 = global1[_wgslsmith_index_u32(~(~min(firstLeadingBit(u_input.a.x) & 30952u, (arg_1.a.a.x ^ u_input.a.x) & ~u_input.b)), 32u)];
    global0 = var_1.c.d;
    let var_2 = _wgslsmith_f_op_f32(ceil(arg_0));
    return 0u;
}

fn func_2() -> u32 {
    global0 = select(vec2<bool>(true, !(!global0.x) || true), vec2<bool>(!select(global2.x, true, true), true && select(any(vec2<bool>(global0.x, false)), global0.x, true)), 21251u <= ~countOneBits(~u_input.b));
    var var_0 = Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(func_3(1085f, Struct_2(Struct_1(vec4<u32>(4294967295u, u_input.a.x, u_input.c, global3[_wgslsmith_index_u32(4294967295u, 29u)])), Struct_1(vec4<u32>(4294967295u, 15380u, u_input.c, 4294967295u)), vec3<i32>(-2147483647i, 12553i, -1i), vec2<bool>(true, global2.x), vec4<i32>(0i, 0i, -35316i, 2147483647i))), 29u)], _wgslsmith_add_u32(global3[_wgslsmith_index_u32(u_input.c, 29u)], 1u), 0u, u_input.b) ^ _wgslsmith_add_vec4_u32(max(vec4<u32>(global3[_wgslsmith_index_u32(u_input.c, 29u)], 1u, 1u, 1u), vec4<u32>(75091u, 116824u, u_input.a.x, 9158u)), reverseBits(vec4<u32>(43982u, u_input.b, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(112219u, 29u)], 29u)], 23081u))), vec4<u32>(_wgslsmith_div_u32(5326u << (u_input.b % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(39075u, 29u)], 29u)], 29u)], 29u)], global3[_wgslsmith_index_u32(u_input.c, 29u)]), u_input.a.xy)), u_input.b, _wgslsmith_clamp_u32(~u_input.b, ~u_input.b, ~0u), _wgslsmith_clamp_u32(1u, ~u_input.c, 1298u << (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 29u)], 29u)] % 32u)))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-761f + -326f)), -2089f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-162f)) + _wgslsmith_f_op_f32(ceil(-1027f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1f))));
    let var_2 = Struct_1(var_0.a << (~vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a), global3[_wgslsmith_index_u32(0u, 29u)], ~var_0.a.x, var_0.a.x) % vec4<u32>(32u)));
    var_0 = var_2;
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1023f <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-285f - -637f)) * 143f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(abs(4294967295u), Struct_3(vec2<bool>(false, false), u_input.a.x, Struct_2(Struct_1(vec4<u32>(global3[_wgslsmith_index_u32(7341u, 29u)], 1u, u_input.b, u_input.a.x)), Struct_1(vec4<u32>(global3[_wgslsmith_index_u32(54849u, 29u)], 4294967295u, u_input.a.x, u_input.c)), vec3<i32>(16044i, -96453i, 18846i), vec2<bool>(false, global0.x), vec4<i32>(-12794i, -2147483647i, -12252i, -1i))), vec3<i32>(2147483647i, 1i, 34142i), vec4<u32>(u_input.b, 1u, u_input.a.x, 4294967295u))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(878f + -201f))));
    global3 = array<u32, 29>();
    global1 = array<Struct_3, 32>();
    global2 = !(!vec2<bool>(func_2() > global3[_wgslsmith_index_u32(0u | global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 29u)], 29u)], 29u)], all(vec2<bool>(var_0, true))));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_1(abs(_wgslsmith_add_u32(60318u, 31482u)), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(u_input.b), _wgslsmith_mod_u32(0u, 4294967295u)), 32u)], ~(vec3<i32>(-10338i, -2289i, -24946i) << (vec3<u32>(global3[_wgslsmith_index_u32(4294967295u, 29u)], u_input.c, 62799u) % vec3<u32>(32u))), ~(~vec4<u32>(93225u, 0u, global3[_wgslsmith_index_u32(75929u, 29u)], 0u)))), 1327f, -753f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(-2138f)), -319f, _wgslsmith_f_op_f32(1000f + -2092f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(540f, 367f, -156f) - vec3<f32>(-646f, 1546f, 1035f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(504f, 438f, -1114f) - vec3<f32>(-1986f, -962f, -1000f))))));
    var var_2 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1064f + var_1.x), 584f)), var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1192f)), Struct_1(~(~abs(vec4<u32>(u_input.c, 4294967295u, 1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 29u)], 29u)])))), Struct_3(!select(vec2<bool>(true, true), select(vec2<bool>(true, global2.x), vec2<bool>(global2.x, global0.x), vec2<bool>(false, false)), !vec2<bool>(true, var_0)), ~82410u, Struct_2(Struct_1(vec4<u32>(42913u, 1u, 28923u, global3[_wgslsmith_index_u32(1u, 29u)]) & vec4<u32>(u_input.b, 1427u, global3[_wgslsmith_index_u32(1u, 29u)], 0u)), Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, global3[_wgslsmith_index_u32(u_input.b, 29u)], global3[_wgslsmith_index_u32(1u, 29u)], 81736u), vec4<u32>(global3[_wgslsmith_index_u32(24335u, 29u)], 4294967295u, u_input.b, 1u))), -firstLeadingBit(vec3<i32>(-48776i, -28508i, -51399i)), vec2<bool>(select(var_0, global0.x, var_0), !global0.x), ~vec4<i32>(1i, 1i, 1i, 1i))));
    let var_3 = 1i;
    let var_4 = Struct_3(var_2.c.c.d, global3[_wgslsmith_index_u32(~(~0u | firstTrailingBit(global3[_wgslsmith_index_u32(u_input.a.x, 29u)])), 29u)], var_2.c.c);
    var var_5 = var_2.c;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c.c.x, -var_2.c.c.e.xwx, _wgslsmith_clamp_vec2_u32(var_2.b.a.wz, ~vec2<u32>(0u, var_5.b << (var_4.b % 32u)), var_4.c.b.a.xw), u_input.a.zx << (~vec2<u32>(u_input.a.x, ~86740u) % vec2<u32>(32u)));
}

