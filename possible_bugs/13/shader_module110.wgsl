struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 19>;

var<private> global1: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(vec2<u32>(0u, 47679u), Struct_1(vec4<f32>(128f, -126f, 235f, 280f)), Struct_1(vec4<f32>(1000f, -217f, -1107f, 138f)), vec4<i32>(47211i, 16238i, i32(-2147483648), -11029i), vec2<u32>(0u, 4294967295u)), Struct_2(vec2<u32>(1u, 1u), Struct_1(vec4<f32>(1134f, -814f, -586f, 1461f)), Struct_1(vec4<f32>(252f, 641f, -1000f, 1652f)), vec4<i32>(0i, -11125i, 0i, 43167i), vec2<u32>(1u, 14955u)), Struct_2(vec2<u32>(1u, 4294967295u), Struct_1(vec4<f32>(337f, 2915f, 952f, 626f)), Struct_1(vec4<f32>(1150f, -741f, -258f, 1115f)), vec4<i32>(1i, 33117i, 41417i, 0i), vec2<u32>(41214u, 4294967295u)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: f32) -> vec4<f32> {
    global0 = array<i32, 19>();
    let var_0 = u_input.a << (u_input.a % 32u);
    var var_1 = true;
    var var_2 = vec3<f32>(-440f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2))), arg_2);
    let var_3 = ~(~(~_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.a, 5329u), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 1u, u_input.a), vec3<u32>(var_0, u_input.a, u_input.a)))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_2.x * -859f), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(trunc(var_2.x)), 1407f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(629f, arg_2, _wgslsmith_f_op_f32(abs(405f)), _wgslsmith_f_op_f32(-1000f - -1001f)))) + arg_1.a);
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    let var_0 = arg_0;
    global1 = array<Struct_2, 3>();
    var var_1 = Struct_2(vec2<u32>(countOneBits(var_0.a.x), 4294967295u), var_0.c, var_0.b, reverseBits(vec4<i32>(1i, 0i, -25373i ^ -arg_0.d.x, _wgslsmith_div_i32(11559i, arg_0.d.x))), ~vec2<u32>(select(47152u, u_input.a, true), firstTrailingBit(_wgslsmith_mod_u32(var_0.e.x, var_0.e.x))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(func_3(-(vec2<i32>(var_0.d.x, var_1.d.x) & reverseBits(vec2<i32>(arg_0.d.x, 1i))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1012f, var_0.b.a.x, 761f, 1325f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(337f - -1000f)))));
    var_1 = global1[_wgslsmith_index_u32(var_0.a.x & 48193u, 3u)];
    return global1[_wgslsmith_index_u32(4294967295u << (select(u_input.a, 27910u, true) % 32u), 3u)];
}

fn func_4(arg_0: Struct_2, arg_1: u32) -> vec2<u32> {
    var var_0 = _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(_wgslsmith_mod_i32(89502i, global0[_wgslsmith_index_u32(arg_0.e.x, 19u)]), 3665i >> (u_input.a % 32u), global0[_wgslsmith_index_u32(min(2452u, arg_1), 19u)])), vec3<i32>(-35734i, abs(-global0[_wgslsmith_index_u32(1u, 19u)]), 2147483647i)), ~abs(_wgslsmith_sub_vec3_i32(vec3<i32>(30211i, global0[_wgslsmith_index_u32(23888u, 19u)], 34143i), arg_0.d.xwy) & vec3<i32>(0i, arg_0.d.x, arg_0.d.x)));
    var_0 = arg_0.d.x;
    return arg_0.a;
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = abs(select(_wgslsmith_mult_vec2_u32(~reverseBits(vec2<u32>(u_input.a, u_input.a)), func_4(func_2(Struct_2(vec2<u32>(0u, 15754u), Struct_1(vec4<f32>(arg_0.x, -777f, arg_0.x, arg_0.x)), Struct_1(vec4<f32>(1959f, arg_0.x, -413f, -193f)), vec4<i32>(-44044i, -53559i, global0[_wgslsmith_index_u32(u_input.a, 19u)], 2407i), vec2<u32>(u_input.a, u_input.a))), ~41090u)), _wgslsmith_mult_vec2_u32(~vec2<u32>(4294967295u, 0u), _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 28769u), vec2<u32>(19514u, u_input.a)) << ((vec2<u32>(u_input.a, 42135u) << (vec2<u32>(56098u, u_input.a) % vec2<u32>(32u))) % vec2<u32>(32u))), true));
    global0 = array<i32, 19>();
    var var_1 = Struct_2(_wgslsmith_mod_vec2_u32(~func_2(Struct_2(vec2<u32>(80101u, 0u), Struct_1(vec4<f32>(arg_0.x, arg_0.x, -674f, arg_0.x)), Struct_1(vec4<f32>(arg_0.x, arg_0.x, 1470f, 1000f)), vec4<i32>(0i, global0[_wgslsmith_index_u32(u_input.a, 19u)], 44464i, 1i), vec2<u32>(var_0.x, 25954u))).e, select(~(vec2<u32>(4294967295u, u_input.a) ^ vec2<u32>(32278u, 26284u)), abs(vec2<u32>(var_0.x, 40810u)), select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, true), false))), func_2(Struct_2(~abs(vec2<u32>(4294967295u, var_0.x)), func_2(Struct_2(vec2<u32>(u_input.a, 102481u), Struct_1(vec4<f32>(arg_0.x, -1806f, -1013f, 1012f)), Struct_1(vec4<f32>(arg_0.x, arg_0.x, 1385f, 1498f)), vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(u_input.a, 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)], 1i), vec2<u32>(var_0.x, 35175u))).b, Struct_1(vec4<f32>(arg_0.x, -151f, arg_0.x, arg_0.x)), func_2(func_2(global1[_wgslsmith_index_u32(var_0.x, 3u)])).d, vec2<u32>(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 136281u), vec2<u32>(42152u, u_input.a))))).c, func_2(Struct_2(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(57043u, u_input.a)) >> (_wgslsmith_add_vec2_u32(vec2<u32>(1u, 85128u), vec2<u32>(var_0.x, 34778u)) % vec2<u32>(32u)), Struct_1(vec4<f32>(arg_0.x, -1320f, arg_0.x, -173f)), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-682f, arg_0.x, arg_0.x, -1000f))), ~(~vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 19u)], global0[_wgslsmith_index_u32(5811u, 19u)], global0[_wgslsmith_index_u32(44748u, 19u)], global0[_wgslsmith_index_u32(u_input.a, 19u)])), ~vec2<u32>(4294967295u, u_input.a))).c, _wgslsmith_sub_vec4_i32(~countOneBits(vec4<i32>(global0[_wgslsmith_index_u32(var_0.x, 19u)], -1i, -15897i, global0[_wgslsmith_index_u32(1u, 19u)])), ~(~reverseBits(vec4<i32>(global0[_wgslsmith_index_u32(14124u, 19u)], 20706i, global0[_wgslsmith_index_u32(86740u, 19u)], global0[_wgslsmith_index_u32(u_input.a, 19u)])))), _wgslsmith_add_vec2_u32(~(~(~vec2<u32>(u_input.a, var_0.x))), _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(1u, var_0.x), vec2<u32>(var_0.x, 1u)), vec2<u32>(u_input.a, 72570u)), ~countOneBits(vec2<u32>(1u, 1u)))));
    var var_2 = !all(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), true), true));
    let var_3 = _wgslsmith_mult_vec3_i32(vec3<i32>(1i, -38723i, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(var_1.d.wyw, countOneBits(vec3<i32>(-37727i, 1i, 44471i))), 1i)), var_1.d.wyy);
    return var_1.c;
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: f32) -> bool {
    global1 = array<Struct_2, 3>();
    var var_0 = _wgslsmith_mult_u32(arg_1.a.x >> (arg_0.x % 32u), max(u_input.a | ~1u, ~arg_0.x));
    let var_1 = Struct_2(arg_0.yx, arg_1.c, func_2(Struct_2(vec2<u32>(arg_1.e.x, arg_0.x) ^ _wgslsmith_sub_vec2_u32(arg_0.zz, arg_1.a), func_2(Struct_2(arg_0.ww, arg_1.c, arg_1.b, vec4<i32>(arg_1.d.x, arg_1.d.x, arg_1.d.x, global0[_wgslsmith_index_u32(arg_1.e.x, 19u)]), vec2<u32>(arg_1.a.x, arg_0.x))).b, func_2(func_2(Struct_2(vec2<u32>(82780u, arg_1.a.x), Struct_1(arg_1.c.a), arg_1.b, vec4<i32>(-1i, arg_1.d.x, 0i, arg_1.d.x), vec2<u32>(4294967295u, u_input.a)))).c, _wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.d.x, 2147483647i, global0[_wgslsmith_index_u32(arg_0.x, 19u)], arg_1.d.x), vec4<i32>(global0[_wgslsmith_index_u32(80931u, 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)], arg_1.d.x, 0i)), arg_0.yx)).c, arg_1.d, ~_wgslsmith_sub_vec2_u32(max(vec2<u32>(34714u, 68171u), vec2<u32>(arg_1.e.x, 38811u)), countOneBits(arg_1.e)) ^ vec2<u32>(arg_0.x & abs(arg_0.x), arg_1.a.x | _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, 1u, 24213u), arg_0)));
    global1 = array<Struct_2, 3>();
    var var_2 = min(arg_0, vec4<u32>(firstLeadingBit(_wgslsmith_mod_u32(1u, firstTrailingBit(4294967295u))), arg_1.e.x, u_input.a, arg_0.x));
    return !any(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, false, all(vec3<bool>(true, false, false)), false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(select(vec4<i32>(-30596i, -20917i, -32957i, -2147483647i), vec4<i32>(10342i, 3573i, 0i, global0[_wgslsmith_index_u32(u_input.a, 19u)]), vec4<bool>(false, false, true, true)), -vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 19u)], 44261i, 0i, global0[_wgslsmith_index_u32(u_input.a, 19u)])), -(-2147483647i | global0[_wgslsmith_index_u32(u_input.a, 19u)])) << (u_input.a % 32u);
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -102f), _wgslsmith_f_op_f32(2143f * 1000f))), vec2<f32>(1f, 1f)), vec2<f32>(_wgslsmith_f_op_f32(sign(1000f)), 1f), false == func_5(~_wgslsmith_mod_vec4_u32(vec4<u32>(1863u, u_input.a, 82368u, u_input.a), vec4<u32>(u_input.a, 48300u, u_input.a, 12170u)), Struct_2(vec2<u32>(65652u, u_input.a), Struct_1(vec4<f32>(-907f, 1012f, -935f, -589f)), func_1(vec3<f32>(654f, -887f, -406f)), abs(vec4<i32>(var_0, global0[_wgslsmith_index_u32(u_input.a, 19u)], -1i, var_0)), select(vec2<u32>(85253u, 4294967295u), vec2<u32>(30834u, 90630u), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-523f * 302f)))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -479f), var_1.x, _wgslsmith_f_op_f32(abs(640f)), -703f)))));
    var var_3 = 38698i;
    var var_4 = var_1.x;
    global0 = array<i32, 19>();
    var_3 = ~_wgslsmith_dot_vec3_i32(abs(~vec3<i32>(var_0, global0[_wgslsmith_index_u32(u_input.a, 19u)], -1i)), -vec3<i32>(var_0, 50110i, -50057i) | vec3<i32>(2147483647i, -9771i, global0[_wgslsmith_index_u32(u_input.a, 19u)])) ^ (~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), ~vec4<u32>(1u, u_input.a, 46586u, 74474u)), 19u)] | _wgslsmith_mult_i32(reverseBits(_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(u_input.a, 19u)], global0[_wgslsmith_index_u32(2923u, 19u)])), _wgslsmith_sub_i32(0i, 3622i) << (0u % 32u)));
    global1 = array<Struct_2, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.a, max(u_input.a, firstTrailingBit(~u_input.a)), u_input.a), ~_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(59116u, u_input.a, u_input.a)), ~vec3<u32>(27518u, 69833u, 32696u), ~vec3<u32>(86851u, 0u, 73750u)), ~abs(vec3<u32>(u_input.a, u_input.a, 24153u))), var_2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * -1464f)));
}

