struct Struct_1 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<bool>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 22> = array<i32, 22>(-70099i, 1i, 2748i, -10889i, -1i, 56245i, i32(-2147483648), 1i, -32767i, 22580i, 1i, 2147483647i, 1i, -1i, -1i, 6367i, -1i, 2204i, -47831i, i32(-2147483648), -23817i, -16991i);

var<private> global1: Struct_2 = Struct_2(vec4<bool>(true, false, true, true), vec3<bool>(false, true, false), vec4<u32>(79169u, 3371u, 37773u, 4294967295u), vec3<u32>(0u, 89330u, 28546u));

var<private> global2: bool = false;

var<private> global3: vec3<u32> = vec3<u32>(19489u, 4294967295u, 1u);

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<u32> {
    var var_0 = u_input.c;
    return global1.c.wyy;
}

fn func_4(arg_0: Struct_4, arg_1: vec3<u32>) -> vec2<bool> {
    let var_0 = arg_1.zy;
    var var_1 = global1.c;
    global2 = any(vec2<bool>(true, !(!global1.b.x)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1207f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -934f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1766f - -873f) + 407f))));
    global1 = Struct_2(vec4<bool>(false, _wgslsmith_clamp_u32(20678u, _wgslsmith_sub_u32(6147u, global3.x), global3.x) != _wgslsmith_sub_u32(func_3().x, ~var_1.x), arg_0.a.x, all(select(vec2<bool>(arg_0.a.x, true), arg_0.a, select(arg_0.a, arg_0.a, global1.b.x)))), !global1.b, reverseBits(_wgslsmith_clamp_vec4_u32(global1.c, vec4<u32>(u_input.d, arg_1.x, 4072u, 0u) << (~vec4<u32>(global3.x, global3.x, global3.x, 15867u) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(u_input.d, 1u, global3.x, global3.x)), select(vec4<u32>(1u, var_1.x, var_0.x, 0u), vec4<u32>(var_1.x, 4294967295u, 51141u, var_0.x), false), global1.c))), ~firstLeadingBit(var_1.zzz));
    return arg_0.a;
}

fn func_2(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_1) -> vec2<f32> {
    let var_0 = vec3<i32>((-188i >> (global3.x % 32u)) & u_input.c, -33917i, -12643i);
    let var_1 = Struct_4(func_4(Struct_4(global1.a.xz, global1.b.x, var_0.x), func_3()), true, _wgslsmith_add_i32(u_input.b, min(arg_2.a, _wgslsmith_add_i32(29484i, 29990i)) ^ _wgslsmith_mod_i32(-63510i ^ var_0.x, 1i)));
    var var_2 = Struct_2(global1.a, global1.a.yyw, arg_0, ~global1.d);
    global1 = Struct_2(select(var_2.a, !vec4<bool>(true, var_2.b.x, any(global1.a), true), any(!var_2.a.wxx)), select(vec3<bool>(true, !(var_1.b && var_1.a.x), true), var_2.b, select(select(vec3<bool>(true, false, var_2.b.x), !global1.b, var_2.a.yyz), select(!var_2.a.yyw, !global1.b, !var_1.a.x), !global1.b)), ~countOneBits(vec4<u32>(arg_0.x, 12577u, 1u, ~1u)), var_2.d);
    var_2 = Struct_2(vec4<bool>(any(var_2.a), (global1.a.x != true) & select(true, true, false), reverseBits(_wgslsmith_add_i32(var_0.x, var_0.x)) > abs(global0[_wgslsmith_index_u32(4294967295u >> (var_2.d.x % 32u), 22u)]), global0[_wgslsmith_index_u32(~(0u ^ var_2.c.x), 22u)] == ~(var_1.c & arg_2.a)), !vec3<bool>(false, all(!global1.b), func_4(var_1, firstLeadingBit(vec3<u32>(115675u, 1u, global3.x))).x), global1.c, var_2.d);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1096f, 1301f) * vec2<f32>(119f, arg_1)) - vec2<f32>(arg_1, 770f))) - vec2<f32>(_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(f32(-1f) * -1618f)), _wgslsmith_f_op_f32(select(arg_1, _wgslsmith_f_op_f32(select(-1000f, -1636f, true)), var_2.b.x)))));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: bool) -> bool {
    global1 = Struct_2(vec4<bool>(select(!arg_2, true, any(vec3<bool>(true, false, true))), (!global1.a.x & true) | false, !any(vec2<bool>(true, true)), true), select(select(global1.a.xwz, select(!global1.b, !global1.a.xyx, arg_2), global1.b), !select(!vec3<bool>(global1.b.x, arg_2, global1.a.x), !global1.b, select(global1.a.x, true, global1.b.x)), vec3<bool>(arg_2, global1.a.x, all(vec4<bool>(true, global1.b.x, arg_2, global1.b.x)) | false)), _wgslsmith_mod_vec4_u32(~_wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, global3.x, global1.c.x, u_input.e), vec4<u32>(1u, global1.d.x, global1.c.x, global1.d.x)), select(~firstLeadingBit(global1.c), countOneBits(reverseBits(vec4<u32>(54869u, u_input.e, global1.c.x, global3.x))), true)), global1.c.xzw);
    global2 = !(!(-1000f != arg_1.x) && true);
    global3 = ~vec3<u32>((func_3().x ^ _wgslsmith_div_u32(global3.x, global3.x)) | max(_wgslsmith_clamp_u32(19017u, 1u, global1.d.x), 79671u), _wgslsmith_mod_u32(min(11102u, global1.c.x), 44761u), ~65185u);
    let var_0 = -741f;
    let var_1 = Struct_1(i32(-1i) * -global0[_wgslsmith_index_u32(~(u_input.a & 4294967295u), 22u)], vec4<i32>(u_input.c | -(~19539i), -_wgslsmith_mod_i32(-u_input.c, ~u_input.b), firstLeadingBit(11046i), _wgslsmith_div_i32(-18535i, reverseBits(global0[_wgslsmith_index_u32(~4294967295u, 22u)]))));
    return false;
}

fn func_1(arg_0: i32, arg_1: vec3<u32>, arg_2: bool, arg_3: vec2<f32>) -> Struct_2 {
    var var_0 = vec3<i32>(_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(0u, 22u)], -26263i), u_input.c, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global3.x, global3.x), 22u)]);
    let var_1 = abs(38723i);
    let var_2 = Struct_4(vec2<bool>(!func_5(Struct_1(var_1, vec4<i32>(-2147483647i, 1i, var_0.x, 2147483647i)), _wgslsmith_f_op_vec2_f32(func_2(vec4<u32>(13701u, 16478u, u_input.d, 27849u), arg_3.x, Struct_1(var_1, vec4<i32>(49279i, u_input.b, 26620i, 54850i)))), any(vec4<bool>(global1.a.x, true, true, arg_2))), arg_2), true, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(-41988i, -3212i, 1i), -35287i, -1i), select(~vec3<i32>(-2147483647i, arg_0, var_1), vec3<i32>(4043i, -2147483647i, var_0.x), global1.a.xzz)), min(1i & var_1, max(firstTrailingBit(-43758i), u_input.b ^ -14462i))));
    var var_3 = Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(4502i, 0i), vec2<i32>(~0i, _wgslsmith_sub_i32(36251i, -1i))), (-vec4<i32>(var_0.x, arg_0, 1i, 0i) | vec4<i32>(_wgslsmith_div_i32(-2147483647i, -36719i), var_1, var_1, ~1i)) << (_wgslsmith_add_vec4_u32(global1.c, select(global1.c, vec4<u32>(u_input.e, u_input.a, global1.d.x, 17033u) >> (global1.c % vec4<u32>(32u)), arg_2)) % vec4<u32>(32u)));
    return Struct_2(!vec4<bool>(func_5(Struct_1(-35485i, var_3.b), arg_3, !var_2.b), true & arg_2, global1.b.x, false), global1.b, _wgslsmith_mod_vec4_u32(vec4<u32>(41602u, _wgslsmith_dot_vec3_u32(vec3<u32>(22098u, global1.c.x, global3.x), _wgslsmith_div_vec3_u32(arg_1, global1.d)), max(global1.d.x, 25254u) ^ 4294967295u, 4294967295u), global1.c), vec3<u32>(global3.x, select(global1.c.x, 0u & u_input.d, func_5(Struct_1(11522i, var_3.b), _wgslsmith_f_op_vec2_f32(arg_3 + arg_3), !var_2.a.x)), 1u));
}

fn func_6(arg_0: Struct_4, arg_1: Struct_3) -> Struct_2 {
    let var_0 = 0i;
    global3 = ~(min(arg_1.b.c.ywz, ~func_3()) << (_wgslsmith_add_vec3_u32(vec3<u32>(16164u, 28771u, arg_1.a.d.x) >> (~global1.c.yxz % vec3<u32>(32u)), vec3<u32>(~global3.x, 0u, _wgslsmith_mod_u32(global1.c.x, 1u))) % vec3<u32>(32u)));
    global0 = array<i32, 22>();
    global2 = all(select(vec2<bool>(select(true, !arg_0.b, !global1.a.x), true), arg_0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1319f), -1000f) != _wgslsmith_f_op_f32(sign(-724f))));
    var var_1 = ~(arg_1.a.c.zw >> (vec2<u32>(0u, 1u) % vec2<u32>(32u)));
    return arg_1.b;
}

fn func_7(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: bool) -> Struct_3 {
    let var_0 = Struct_2(arg_2.a, global1.a.zyw, firstTrailingBit(_wgslsmith_add_vec4_u32(firstLeadingBit(~arg_2.c), ~max(vec4<u32>(8797u, arg_2.d.x, u_input.d, 23538u), vec4<u32>(arg_2.d.x, u_input.a, arg_2.c.x, u_input.e)))), _wgslsmith_clamp_vec3_u32(vec3<u32>(~85779u, ~33336u, 59313u), global1.d, global1.d));
    var var_1 = Struct_1(u_input.b, firstLeadingBit(max(~vec4<i32>(u_input.b, -3908i, u_input.c, global0[_wgslsmith_index_u32(global1.d.x, 22u)]), -vec4<i32>(-48826i, u_input.c, global0[_wgslsmith_index_u32(4294967295u, 22u)], u_input.b))) >> (var_0.c % vec4<u32>(32u)));
    global3 = vec3<u32>(_wgslsmith_div_u32(1u, func_1(var_1.a, var_0.d, var_0.b.x, _wgslsmith_f_op_vec2_f32(func_2(firstLeadingBit(vec4<u32>(var_0.c.x, arg_2.c.x, 6322u, 4294967295u)), _wgslsmith_f_op_f32(-arg_1.x), Struct_1(var_1.a, vec4<i32>(-9341i, 25084i, -12071i, -1i))))).c.x), arg_2.c.x, abs(arg_2.c.x));
    global0 = array<i32, 22>();
    let var_2 = abs(u_input.b << (min(reverseBits(0u), 26253u & global3.x) % 32u)) ^ -2147483647i;
    return Struct_3(arg_2, Struct_2(!(!(!vec4<bool>(true, var_0.b.x, global1.b.x, true))), vec3<bool>(false, false, any(arg_2.b.yz)), firstTrailingBit(~(~vec4<u32>(global1.c.x, global3.x, u_input.d, 0u))), _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(global1.c.zwx, vec3<u32>(31224u, u_input.a, 60528u)), ~arg_2.c.yxx, ~(~vec3<u32>(var_0.d.x, global1.c.x, arg_2.d.x)))), vec3<bool>(false, true || !(1u < global1.c.x), true), func_6(Struct_4(global1.a.yx, var_0.b.x, abs(_wgslsmith_add_i32(-2147483647i, var_2))), Struct_3(func_1(var_1.b.x, select(arg_2.c.xxw, vec3<u32>(global1.d.x, arg_2.d.x, 14388u), true), !arg_0, _wgslsmith_f_op_vec2_f32(arg_1.yy - arg_1.yy)), Struct_2(!var_0.a, vec3<bool>(arg_3, arg_3, var_0.a.x), vec4<u32>(17220u, 0u, 11955u, arg_2.d.x) | var_0.c, vec3<u32>(u_input.d, 4294967295u, global1.d.x) & vec3<u32>(1u, 4294967295u, 94933u)), var_0.a.yzx, Struct_2(vec4<bool>(true, var_0.b.x, global1.a.x, var_0.a.x), vec3<bool>(arg_2.a.x, true, true), vec4<u32>(global3.x, 39735u, u_input.e, 0u), vec3<u32>(global1.c.x, arg_2.c.x, u_input.a) ^ global1.d))));
}

fn func_8(arg_0: Struct_3, arg_1: u32, arg_2: bool) -> Struct_1 {
    global1 = Struct_2(!func_1(global0[_wgslsmith_index_u32(7447u, 22u)], max(~global1.c.zwy, vec3<u32>(151100u, 16754u, arg_1)), true, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-310f, -1131f), vec2<f32>(1193f, -1326f)) - vec2<f32>(377f, 1289f))).a, select(global1.a.xzz, global1.b, vec3<bool>(true, global1.a.x, arg_2)), vec4<u32>(func_7(true, vec3<f32>(_wgslsmith_f_op_f32(-607f * -1000f), _wgslsmith_f_op_f32(753f - 828f), _wgslsmith_div_f32(745f, -1582f)), func_7(arg_0.d.a.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1958f, -570f, 307f)), Struct_2(global1.a, arg_0.c, arg_0.a.c, vec3<u32>(0u, 97071u, 4294967295u)), false).a, arg_0.a.b.x).b.d.x, select(~global1.d.x, func_7(false, vec3<f32>(1000f, -1142f, 1897f), arg_0.d, arg_0.a.b.x).d.c.x, func_1(global0[_wgslsmith_index_u32(1u, 22u)], arg_0.b.c.yzy, false, vec2<f32>(715f, 1000f)).a.x) & ~(~global3.x), _wgslsmith_mult_u32(~(arg_1 & global3.x), _wgslsmith_div_u32(global3.x, 0u) | ~16436u), ~_wgslsmith_mult_u32(global3.x & 46951u, 1u)), vec3<u32>(~((global3.x >> (u_input.e % 32u)) << (~global3.x % 32u)), global1.d.x, func_6(Struct_4(!arg_0.b.a.xx, true, firstLeadingBit(u_input.c)), func_7(any(arg_0.c), vec3<f32>(-1931f, 310f, 1344f), arg_0.a, arg_2 | arg_0.c.x)).c.x));
    var var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(1000f - -3404f), _wgslsmith_f_op_f32(1204f + 1408f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -708f), -673f))), vec2<f32>(_wgslsmith_f_op_f32(abs(715f)), 1158f)));
    var var_1 = select(u_input.c ^ _wgslsmith_clamp_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(19246i, 0i, 9467i, global0[_wgslsmith_index_u32(22051u, 22u)]), vec4<i32>(global0[_wgslsmith_index_u32(55102u, 22u)], u_input.c, 2147483647i, u_input.c)), -(global0[_wgslsmith_index_u32(arg_1, 22u)] << (global1.d.x % 32u)), ~_wgslsmith_sub_i32(u_input.b, u_input.c)), _wgslsmith_mult_i32(2147483647i, countOneBits(1i | global0[_wgslsmith_index_u32(u_input.d ^ 0u, 22u)])), _wgslsmith_f_op_f32(-1647f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))) == var_0.x);
    global0 = array<i32, 22>();
    let var_2 = arg_2;
    return Struct_1(u_input.b, select(vec4<i32>(global0[_wgslsmith_index_u32(min(~13727u, firstTrailingBit(global1.d.x)), 22u)], _wgslsmith_mod_i32(~global0[_wgslsmith_index_u32(global3.x, 22u)], -19603i), ~u_input.b, global0[_wgslsmith_index_u32(~arg_1, 22u)]), select(select(_wgslsmith_div_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(1u, 22u)], global0[_wgslsmith_index_u32(1u, 22u)], 0i, u_input.c), vec4<i32>(global0[_wgslsmith_index_u32(arg_1, 22u)], -1i, global0[_wgslsmith_index_u32(70085u, 22u)], u_input.c)), vec4<i32>(2147483647i, -46941i, global0[_wgslsmith_index_u32(arg_0.b.c.x, 22u)], -85418i), vec4<bool>(var_2, arg_2, global1.b.x, arg_2)), _wgslsmith_div_vec4_i32(vec4<i32>(-35449i, 39770i, global0[_wgslsmith_index_u32(4294967295u, 22u)], -9229i), firstLeadingBit(vec4<i32>(16836i, global0[_wgslsmith_index_u32(44539u, 22u)], -2147483647i, global0[_wgslsmith_index_u32(global3.x, 22u)]))), global1.a), vec4<bool>(true, arg_0.d.b.x, func_1(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -19585i), vec2<i32>(global0[_wgslsmith_index_u32(29752u, 22u)], -1i)), _wgslsmith_add_vec3_u32(vec3<u32>(global1.d.x, arg_0.d.c.x, u_input.e), vec3<u32>(0u, global3.x, 19890u)), true, vec2<f32>(-1048f, var_0.x)).b.x, ~arg_0.b.d.x >= 0u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_8(func_7(false, vec3<f32>(1366f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1004f * 836f)), _wgslsmith_f_op_f32(1875f - _wgslsmith_div_f32(-207f, 432f))), func_6(Struct_4(vec2<bool>(true, true), global1.a.x, ~global0[_wgslsmith_index_u32(u_input.e, 22u)]), Struct_3(func_1(-4278i, global1.d, false, vec2<f32>(-1000f, 1494f)), Struct_2(global1.a, vec3<bool>(global1.b.x, true, true), global1.c, global1.d), !vec3<bool>(false, global1.a.x, global1.b.x), Struct_2(global1.a, vec3<bool>(global1.b.x, global1.b.x, global1.b.x), global1.c, global1.c.wxw))), func_5(Struct_1(_wgslsmith_mod_i32(1i, 2147483647i), vec4<i32>(u_input.b, global0[_wgslsmith_index_u32(4294967295u, 22u)], global0[_wgslsmith_index_u32(4294967295u, 22u)], global0[_wgslsmith_index_u32(85389u, 22u)])), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -458f) * vec2<f32>(-1265f, 395f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1527f, 852f))), func_6(Struct_4(vec2<bool>(global1.b.x, false), true, global0[_wgslsmith_index_u32(49092u, 22u)]), Struct_3(Struct_2(vec4<bool>(false, global1.b.x, global1.b.x, false), vec3<bool>(false, true, global1.b.x), global1.c, vec3<u32>(42915u, 4294967295u, 0u)), Struct_2(vec4<bool>(global1.b.x, false, false, true), global1.a.www, global1.c, global1.d), vec3<bool>(global1.a.x, true, true), Struct_2(global1.a, vec3<bool>(global1.b.x, true, false), vec4<u32>(global1.c.x, 52702u, 10750u, global3.x), vec3<u32>(26478u, 34374u, 36706u)))).a.x)), 4294967295u, global1.b.x && true);
    let var_1 = _wgslsmith_dot_vec2_u32(firstLeadingBit(select(~vec2<u32>(32959u, u_input.e), firstTrailingBit(global1.c.xw), global1.a.x)), global1.c.ww);
    let var_2 = Struct_4(!vec2<bool>(global1.a.x, global1.b.x && func_7(true, vec3<f32>(930f, -1000f, 2286f), Struct_2(vec4<bool>(global1.a.x, global1.a.x, true, false), global1.b, vec4<u32>(4294967295u, 19466u, var_1, var_1), vec3<u32>(0u, 1u, var_1)), true).a.a.x), true, 33126i);
    global1 = func_1(-_wgslsmith_add_i32(min(u_input.b, global0[_wgslsmith_index_u32(65682u, 22u)] >> (4294967295u % 32u)), -1i), _wgslsmith_div_vec3_u32(vec3<u32>(34789u, global3.x, u_input.e) | global1.c.xww, ~global1.d) | vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 25626u, 20156u), global1.c.xyw), vec3<u32>(1u, var_1, global1.d.x) | vec3<u32>(var_1, global3.x, u_input.d)), 27395u, var_1), (_wgslsmith_add_i32(var_2.c, var_0.b.x) != abs(firstTrailingBit(2147483647i))) || !select(false, global1.a.x, false), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-244f, -311f), vec2<f32>(-906f, -123f)))) * _wgslsmith_f_op_vec2_f32(func_2(vec4<u32>(var_1, var_1, 69940u, 21814u), _wgslsmith_f_op_f32(f32(-1f) * -1543f), func_8(Struct_3(Struct_2(global1.a, global1.a.zyy, vec4<u32>(u_input.d, 0u, 1u, 67329u), vec3<u32>(global1.d.x, global1.d.x, global3.x)), Struct_2(vec4<bool>(var_2.a.x, var_2.b, false, global1.b.x), global1.b, vec4<u32>(11137u, 13679u, var_1, 34455u), global1.d), global1.b, Struct_2(global1.a, global1.b, vec4<u32>(0u, u_input.a, global1.d.x, 39172u), global1.d)), var_1, true)))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1318f, -1335f), vec2<f32>(-2095f, 110f))))))));
    global0 = array<i32, 22>();
    global0 = array<i32, 22>();
    var_0 = Struct_1(abs(var_0.a), abs(abs(max(~vec4<i32>(-1i, 9386i, -66135i, -6409i), vec4<i32>(u_input.b, u_input.b, -41715i, -56955i) << (vec4<u32>(u_input.e, var_1, global3.x, u_input.d) % vec4<u32>(32u))))));
    var var_3 = abs(24115u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(global1.c.xwy, global1.c.wyw), ~vec3<u32>(global3.x, ~17825u, global1.d.x)), func_7(~var_0.b.x != -2147483647i, _wgslsmith_f_op_vec3_f32(vec3<f32>(942f, 773f, 1400f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1024f, -1202f, 828f))), func_7(any(global1.a.yz), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1104f, 227f, -1000f)), Struct_2(vec4<bool>(true, global1.a.x, var_2.a.x, false), global1.a.xxz, vec4<u32>(u_input.d, global1.d.x, 1u, global1.d.x), global1.d), false).b, global1.b.x).b.c >> (vec4<u32>(54926u, 4294967295u, min(_wgslsmith_div_u32(82777u, global3.x), var_1), _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(u_input.e, global1.c.x)), vec2<u32>(4294967295u, 0u))) % vec4<u32>(32u)), _wgslsmith_mult_i32(-_wgslsmith_div_i32(_wgslsmith_sub_i32(-2147483647i, u_input.c), u_input.b), select(u_input.b, reverseBits(var_2.c >> (4294967295u % 32u)), true)), 20629u);
}

