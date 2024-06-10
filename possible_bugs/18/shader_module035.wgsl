struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 28> = array<vec2<f32>, 28>(vec2<f32>(1604f, -364f), vec2<f32>(-103f, -223f), vec2<f32>(-440f, 716f), vec2<f32>(904f, -1108f), vec2<f32>(-1000f, -1190f), vec2<f32>(-251f, -401f), vec2<f32>(332f, 418f), vec2<f32>(1550f, -366f), vec2<f32>(673f, -1986f), vec2<f32>(-667f, -1028f), vec2<f32>(-431f, 848f), vec2<f32>(-1000f, 203f), vec2<f32>(-1000f, 537f), vec2<f32>(-2156f, 3233f), vec2<f32>(-823f, 892f), vec2<f32>(207f, -397f), vec2<f32>(464f, 515f), vec2<f32>(-159f, -101f), vec2<f32>(715f, 566f), vec2<f32>(-252f, 793f), vec2<f32>(1049f, 157f), vec2<f32>(-269f, 1523f), vec2<f32>(-336f, 811f), vec2<f32>(-1655f, -1592f), vec2<f32>(-474f, 218f), vec2<f32>(-844f, 731f), vec2<f32>(-367f, -763f), vec2<f32>(-1026f, -1284f));

var<private> global1: u32 = 74790u;

var<private> global2: i32 = 38375i;

var<private> global3: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(Struct_1(-315f, false, false), vec2<bool>(true, false), vec4<bool>(true, true, false, false)), Struct_2(Struct_1(-1799f, true, false), vec2<bool>(false, false), vec4<bool>(true, false, false, true)), Struct_2(Struct_1(417f, true, false), vec2<bool>(false, false), vec4<bool>(true, false, false, true)), Struct_2(Struct_1(-984f, false, true), vec2<bool>(false, true), vec4<bool>(true, false, false, false)), Struct_2(Struct_1(896f, true, true), vec2<bool>(false, false), vec4<bool>(true, true, true, false)), Struct_2(Struct_1(910f, false, false), vec2<bool>(true, false), vec4<bool>(false, true, true, false)), Struct_2(Struct_1(734f, true, false), vec2<bool>(true, false), vec4<bool>(false, true, true, false)), Struct_2(Struct_1(131f, false, true), vec2<bool>(true, false), vec4<bool>(true, true, false, true)), Struct_2(Struct_1(357f, false, false), vec2<bool>(true, false), vec4<bool>(true, true, true, false)), Struct_2(Struct_1(1000f, false, true), vec2<bool>(true, false), vec4<bool>(false, false, false, false)), Struct_2(Struct_1(-108f, true, false), vec2<bool>(true, false), vec4<bool>(false, true, false, true)), Struct_2(Struct_1(-1045f, true, true), vec2<bool>(true, false), vec4<bool>(false, true, true, false)), Struct_2(Struct_1(-993f, false, false), vec2<bool>(false, true), vec4<bool>(true, false, false, false)), Struct_2(Struct_1(1000f, false, true), vec2<bool>(false, true), vec4<bool>(true, false, false, true)), Struct_2(Struct_1(954f, false, false), vec2<bool>(false, true), vec4<bool>(true, false, false, true)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> i32 {
    var var_0 = select(vec2<bool>(true, true), vec2<bool>(false, select((2147483647i | u_input.a.x) > 2147483647i, true, true)), !vec2<bool>(true, all(vec3<bool>(true, true, false))));
    var var_1 = var_0.x;
    var_0 = !vec2<bool>(any(!vec3<bool>(false, var_0.x, var_0.x)) | any(select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(true, true, var_0.x), vec3<bool>(false, var_0.x, false))), any(vec2<bool>(var_0.x, true)) || false);
    let var_2 = ~_wgslsmith_mod_vec2_u32(vec2<u32>(~(~0u), 4294967295u), abs(vec2<u32>(1u, 11839u)) | vec2<u32>(_wgslsmith_add_u32(4294967295u, 0u), _wgslsmith_clamp_u32(63997u, 1u, 4294967295u)));
    var var_3 = var_0.x;
    return ~_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, abs(-u_input.a.x), -abs(u_input.a.x), -u_input.a.x));
}

fn func_2() -> Struct_1 {
    global2 = func_3();
    global3 = array<Struct_2, 15>();
    global1 = ~_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(24911u, 0u, 51066u), vec3<u32>(4294967295u, 1u, 18056u))), abs(abs(vec3<u32>(4294967295u, 4294967295u, 0u)))), ~abs(vec3<u32>(1u, 1u, 1u)));
    let var_0 = firstTrailingBit(u_input.a.ywx);
    global2 = -_wgslsmith_div_i32(select(1i, ~(-54998i), select(true, true, true) || true), _wgslsmith_mult_i32(_wgslsmith_add_i32(~(-7447i), select(-17883i, var_0.x, false)), _wgslsmith_div_i32(-11805i, 55940i)));
    return Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(129f, _wgslsmith_f_op_f32(648f - 1000f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-919f - 1316f))))))), all(!vec2<bool>(any(vec3<bool>(false, false, false)), any(vec3<bool>(false, false, true)))), true);
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> f32 {
    var var_0 = Struct_3(false, Struct_2(arg_0, !(!vec2<bool>(arg_0.b, true)), vec4<bool>(true, arg_0.b, arg_0.b | all(vec4<bool>(false, true, arg_0.b, arg_0.b)), 1i == arg_1)));
    global3 = array<Struct_2, 15>();
    global1 = firstLeadingBit(~max(~0u, ~20607u));
    let var_1 = Struct_2(Struct_1(-2101f, true, all(!var_0.b.c.wy)), vec2<bool>(select(false | arg_0.c, true, any(var_0.b.c.wzy)) && arg_0.c, true), select(vec4<bool>(true, true, true, true), vec4<bool>(var_0.b.c.x, true, false, (i32(-1i) * -37290i) == (u_input.a.x & arg_1)), select(!var_0.b.c, var_0.b.c, !select(vec4<bool>(var_0.a, true, false, arg_0.b), var_0.b.c, arg_0.b))));
    var_0 = Struct_3(func_2().c, Struct_2(var_1.a, select(var_0.b.b, vec2<bool>(var_0.a && var_1.c.x, any(var_0.b.c.wxz)), all(vec3<bool>(false, false, var_0.b.a.c))), var_1.c));
    return 1524f;
}

fn func_5(arg_0: f32, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: f32) -> vec2<i32> {
    global3 = array<Struct_2, 15>();
    let var_0 = arg_1.b.a;
    let var_1 = true;
    global3 = array<Struct_2, 15>();
    global1 = select(511u, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 73205u), vec2<u32>(0u, 36682u)), ~_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(81420u, 0u))), vec2<u32>(4294967295u, ~1u) << ((select(vec2<u32>(59217u, 79233u), vec2<u32>(4294967295u, 0u), arg_2.yz) << (vec2<u32>(13740u, 1u) % vec2<u32>(32u))) % vec2<u32>(32u))), _wgslsmith_f_op_f32(exp2(var_0.a)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) - -1352f));
    return u_input.a.yy;
}

fn func_1() -> Struct_1 {
    let var_0 = abs(func_5(_wgslsmith_f_op_f32(func_4(func_2(), min(-u_input.a.x, _wgslsmith_mod_i32(1i, -9296i)))), Struct_3(any(vec4<bool>(true, false, false, false)), global3[_wgslsmith_index_u32(1u << (0u % 32u), 15u)]), vec4<bool>(!all(vec3<bool>(true, false, true)), false, true, true), _wgslsmith_f_op_f32(444f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f * 2007f))))));
    let var_1 = Struct_3(!any(vec3<bool>(any(vec3<bool>(false, true, true)), false, true)), global3[_wgslsmith_index_u32(1u << (_wgslsmith_mult_u32(45609u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(1u, 43243u))) % 32u), 15u)]);
    let var_2 = var_1.b.a.a;
    var var_3 = _wgslsmith_f_op_f32(-func_2().a);
    let var_4 = reverseBits(abs(u_input.a));
    return func_2();
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> Struct_2 {
    global3 = array<Struct_2, 15>();
    let var_0 = 737f;
    var var_1 = !all(arg_0.c.yz);
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_1.a, 563f)));
    var var_3 = Struct_3(arg_2.b, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(select(vec3<u32>(34394u, 23087u, 17053u), vec3<u32>(0u, 11491u, 1u), false), _wgslsmith_clamp_vec3_u32(vec3<u32>(11685u, 123170u, 24553u), vec3<u32>(0u, 1u, 61862u), vec3<u32>(93303u, 1u, 0u))), ~(~max(vec3<u32>(20383u, 0u, 111154u), vec3<u32>(0u, 2294u, 0u)))), 15u)]);
    return Struct_2(func_2(), !vec2<bool>(all(!arg_0.c), arg_1.b), select(vec4<bool>(_wgslsmith_mult_u32(0u, 13327u) >= firstTrailingBit(12939u), false, u_input.a.x > u_input.a.x, arg_1.c), var_3.b.c, var_3.b.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(abs(_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(2147483647i, u_input.a.x)), ~u_input.a.zw)) | -u_input.a.zw);
    global0 = array<vec2<f32>, 28>();
    let var_1 = func_6(Struct_2(func_1(), !select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), u_input.a.x < 13083i), vec4<bool>(min(u_input.a.x, -2147483647i) >= u_input.a.x, func_1().c, true, func_2().b)), func_2(), func_2());
    var var_2 = Struct_3(true && any(!(!var_1.b)), var_1);
    let var_3 = func_1();
    var var_4 = abs(-1i);
    var_2 = Struct_3(any(!var_2.b.c), Struct_2(Struct_1(var_2.b.a.a, var_1.b.x, all(select(vec2<bool>(false, var_2.b.c.x), var_1.c.ww, vec2<bool>(var_1.c.x, var_2.a)))), vec2<bool>(all(vec2<bool>(false, var_2.a)), var_1.b.x), var_1.c));
    var_4 = 1i;
    var var_5 = Struct_1(func_2().a, true, any(select(var_1.c, select(vec4<bool>(true, true, var_2.b.c.x, var_1.b.x), var_1.c, true), select(!var_2.b.c, var_2.b.c, !var_3.c))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, -18564i);
}

