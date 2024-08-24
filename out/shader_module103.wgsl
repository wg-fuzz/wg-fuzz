struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
    c: vec4<f32>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec3<u32>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 3>;

var<private> global1: array<vec3<u32>, 12> = array<vec3<u32>, 12>(vec3<u32>(31101u, 0u, 14581u), vec3<u32>(0u, 75245u, 27465u), vec3<u32>(47723u, 0u, 2366u), vec3<u32>(21468u, 1u, 54473u), vec3<u32>(58879u, 1u, 4294967295u), vec3<u32>(116759u, 4294967295u, 0u), vec3<u32>(4294967295u, 2190u, 31222u), vec3<u32>(0u, 49522u, 0u), vec3<u32>(1u, 30721u, 52937u), vec3<u32>(1u, 1u, 0u), vec3<u32>(27419u, 105524u, 1u), vec3<u32>(0u, 25681u, 131551u));

var<private> global2: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec2<u32>(1u, 1u), vec4<u32>(15969u, 1u, 4294967295u, 4294967295u), 4294967295u, vec4<bool>(true, false, true, true)), Struct_1(vec2<u32>(39273u, 4294967295u), vec4<u32>(1u, 15571u, 1u, 0u), 4294967295u, vec4<bool>(false, true, true, false)), Struct_1(vec2<u32>(41801u, 39081u), vec4<u32>(12995u, 1u, 0u, 44950u), 12236u, vec4<bool>(true, true, true, true)), Struct_1(vec2<u32>(27849u, 89117u), vec4<u32>(44204u, 3385u, 33624u, 99500u), 0u, vec4<bool>(true, true, false, false)), Struct_1(vec2<u32>(39740u, 1u), vec4<u32>(0u, 120993u, 1u, 1u), 11055u, vec4<bool>(false, false, false, true)), Struct_1(vec2<u32>(4294967295u, 36556u), vec4<u32>(14611u, 37824u, 34u, 1u), 1u, vec4<bool>(false, false, true, true)), Struct_1(vec2<u32>(1u, 108337u), vec4<u32>(27192u, 31213u, 46904u, 4229u), 116130u, vec4<bool>(false, false, true, false)), Struct_1(vec2<u32>(4791u, 22479u), vec4<u32>(1u, 0u, 1u, 1u), 1u, vec4<bool>(false, true, false, false)), Struct_1(vec2<u32>(1u, 137982u), vec4<u32>(0u, 4294967295u, 5795u, 4294967295u), 4294967295u, vec4<bool>(true, false, true, false)), Struct_1(vec2<u32>(1u, 16246u), vec4<u32>(4294967295u, 1u, 1u, 0u), 28935u, vec4<bool>(true, false, false, true)), Struct_1(vec2<u32>(0u, 40639u), vec4<u32>(14742u, 0u, 30294u, 4294967295u), 4294967295u, vec4<bool>(false, false, false, true)), Struct_1(vec2<u32>(51567u, 26084u), vec4<u32>(68699u, 53690u, 26609u, 31173u), 4294967295u, vec4<bool>(true, true, true, true)), Struct_1(vec2<u32>(38566u, 0u), vec4<u32>(63996u, 34457u, 38272u, 58505u), 1u, vec4<bool>(false, false, false, false)), Struct_1(vec2<u32>(59234u, 1u), vec4<u32>(0u, 4294967295u, 25831u, 78544u), 53913u, vec4<bool>(true, true, false, true)), Struct_1(vec2<u32>(1u, 15965u), vec4<u32>(0u, 0u, 14650u, 0u), 76777u, vec4<bool>(false, false, true, false)), Struct_1(vec2<u32>(16201u, 69923u), vec4<u32>(34432u, 4294967295u, 4294967295u, 1u), 1666u, vec4<bool>(false, true, false, true)), Struct_1(vec2<u32>(107349u, 0u), vec4<u32>(4294967295u, 8129u, 0u, 17469u), 1u, vec4<bool>(false, false, true, false)), Struct_1(vec2<u32>(1u, 2913u), vec4<u32>(4294967295u, 4294967295u, 13222u, 62920u), 24496u, vec4<bool>(true, false, true, false)), Struct_1(vec2<u32>(44935u, 21006u), vec4<u32>(60869u, 1u, 4294967295u, 15272u), 1u, vec4<bool>(true, false, true, true)), Struct_1(vec2<u32>(3717u, 1u), vec4<u32>(5u, 4294967295u, 4294967295u, 1u), 19522u, vec4<bool>(true, true, true, false)), Struct_1(vec2<u32>(42031u, 9748u), vec4<u32>(1u, 17138u, 54333u, 13332u), 25221u, vec4<bool>(true, false, false, true)), Struct_1(vec2<u32>(33838u, 4294967295u), vec4<u32>(17693u, 0u, 8469u, 20111u), 1u, vec4<bool>(true, true, false, false)), Struct_1(vec2<u32>(17212u, 1u), vec4<u32>(5105u, 4294967295u, 37256u, 4294967295u), 23359u, vec4<bool>(false, false, true, true)), Struct_1(vec2<u32>(30599u, 55849u), vec4<u32>(22303u, 7499u, 1u, 1u), 0u, vec4<bool>(true, true, false, false)), Struct_1(vec2<u32>(19475u, 19469u), vec4<u32>(4294967295u, 0u, 48678u, 29042u), 25802u, vec4<bool>(true, false, false, false)), Struct_1(vec2<u32>(0u, 2362u), vec4<u32>(1u, 9018u, 0u, 12286u), 0u, vec4<bool>(true, false, true, true)));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<u32>) -> bool {
    let var_0 = _wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(countOneBits(u_input.b.x), 4294967295u), max(u_input.c, countOneBits(arg_1.x)), (u_input.c >> (0u % 32u)) << ((0u << (arg_1.x % 32u)) % 32u)) ^ _wgslsmith_clamp_u32(12398u, ~115728u, u_input.b.x), ~(~_wgslsmith_clamp_u32(min(arg_1.x, 43097u), countOneBits(u_input.b.x), _wgslsmith_sub_u32(89116u, arg_1.x))));
    let var_1 = _wgslsmith_f_op_f32(853f - 989f);
    let var_2 = abs(firstLeadingBit(firstTrailingBit(-firstLeadingBit(u_input.a))));
    var var_3 = Struct_3(Struct_1(_wgslsmith_div_vec2_u32(max(vec2<u32>(u_input.b.x, u_input.c), ~vec2<u32>(1u, var_0)), firstTrailingBit(u_input.b.xx)), u_input.b, _wgslsmith_clamp_u32(~arg_1.x, 35511u, ~(~u_input.c)), vec4<bool>(true, true, true, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1, var_1)) - _wgslsmith_f_op_f32(max(-632f, _wgslsmith_f_op_f32(var_1 - -658f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - var_1)) * -699f)), _wgslsmith_mod_vec3_u32(vec3<u32>(38400u, 1555u, u_input.c), u_input.b.xxw), any(!select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), select(vec2<bool>(false, false), vec2<bool>(false, true), true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)))));
    global2 = array<Struct_1, 26>();
    return !(_wgslsmith_f_op_f32(-596f - var_1) < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b)))));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: vec3<i32>, arg_3: vec4<bool>) -> bool {
    global0 = array<i32, 3>();
    let var_0 = ~(((~u_input.b.wx | select(vec2<u32>(u_input.b.x, 95855u), vec2<u32>(u_input.b.x, 30683u), arg_3.x)) << (~(~u_input.b.yw) % vec2<u32>(32u))) ^ countOneBits(u_input.b.wz));
    let var_1 = !arg_3.x;
    var var_2 = 1566f;
    var var_3 = countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(select(42482u, 50513u, var_1), u_input.c, var_0.x, _wgslsmith_clamp_u32(u_input.c, u_input.c, 0u)) << (~(~vec4<u32>(var_0.x, 4294967295u, 13581u, var_0.x)) % vec4<u32>(32u)), ~(~u_input.b)));
    return !(!func_3(abs(-u_input.a), vec2<u32>(_wgslsmith_add_u32(0u, 1u), _wgslsmith_div_u32(4294967295u, var_3.x))));
}

fn func_4(arg_0: vec3<bool>, arg_1: u32, arg_2: f32, arg_3: i32) -> Struct_3 {
    var var_0 = Struct_2(!arg_0.x, ~max(vec4<i32>(1i, -12684i, -20662i, countOneBits(-2147483647i)), u_input.a), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_2, _wgslsmith_f_op_f32(-2149f - arg_2), arg_2, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-597f, -1887f)))))), Struct_1(vec2<u32>(1u, u_input.c), max(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_1, u_input.b.x), vec3<u32>(26757u, 56985u, u_input.c)), 1u, _wgslsmith_mod_u32(arg_1, 0u), firstLeadingBit(1167u)), max(select(vec4<u32>(u_input.c, 4294967295u, 4294967295u, u_input.b.x), vec4<u32>(arg_1, 38727u, 4294967295u, 1u), true), _wgslsmith_clamp_vec4_u32(vec4<u32>(74200u, 33775u, u_input.b.x, 42082u), vec4<u32>(4294967295u, u_input.b.x, u_input.c, 4294967295u), u_input.b))), countOneBits(max(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b), u_input.c << (arg_1 % 32u))), vec4<bool>(all(vec3<bool>(arg_0.x, true, arg_0.x)), 2147483647i > _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(1i, 2147483647i, 28860i, -1i)), !arg_0.x, false)), arg_0.x & true);
    var_0 = Struct_2(false, -var_0.b, var_0.c, Struct_1(~select(vec2<u32>(u_input.b.x, var_0.d.a.x), vec2<u32>(4294967295u, 0u), func_3(vec4<i32>(global0[_wgslsmith_index_u32(1u, 3u)], 2147483647i, 1393i, 0i), vec2<u32>(4294967295u, var_0.d.a.x))), var_0.d.b, 1u, vec4<bool>(arg_0.x, var_0.e, var_0.e, true)), select(true, _wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(-1000f + -156f)) <= _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1125f, var_0.c.x))), any(select(select(vec3<bool>(var_0.d.d.x, false, false), vec3<bool>(var_0.a, false, false), false), arg_0, !vec3<bool>(arg_0.x, true, true)))));
    let var_1 = ~select(vec3<u32>(1u, _wgslsmith_sub_u32(~u_input.b.x, 0u >> (var_0.d.c % 32u)), ~59329u), vec3<u32>(4294967295u, ~38877u, _wgslsmith_dot_vec4_u32(vec4<u32>(446u, 0u, arg_1, u_input.c), var_0.d.b)) | _wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(49408u, 4294967295u, var_0.d.c)), any(vec3<bool>(2442i >= u_input.a.x, true, true)));
    var var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(227f, arg_2), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(var_0.c.x)), 1015f))), vec2<f32>(var_0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 + var_0.c.x) - -1000f))));
    return Struct_3(Struct_1(~(~var_1.yx), var_0.d.b, min(~max(var_1.x, 36646u), 0u), vec4<bool>(any(select(vec3<bool>(true, var_0.a, var_2.x), var_0.d.d.yyw, vec3<bool>(false, arg_0.x, false))), !arg_0.x, all(select(var_0.d.d.wxz, arg_0, var_2.x)), var_0.e)), 1000f, vec3<u32>(46878u, ~min(64793u, 86097u), _wgslsmith_add_u32(~select(var_1.x, var_0.d.b.x, arg_0.x), ~(4294967295u << (var_1.x % 32u)))), var_2.x != var_2.x);
}

fn func_1(arg_0: vec2<bool>) -> u32 {
    let var_0 = u_input.a.yx;
    let var_1 = global0[_wgslsmith_index_u32(u_input.b.x, 3u)];
    let var_2 = func_4(!vec3<bool>(true, func_2(vec4<i32>(var_0.x, var_0.x, var_0.x, global0[_wgslsmith_index_u32(u_input.c, 3u)]), vec3<bool>(arg_0.x, true, arg_0.x), -u_input.a.zyy, select(vec4<bool>(false, true, false, false), vec4<bool>(arg_0.x, true, arg_0.x, true), vec4<bool>(true, arg_0.x, arg_0.x, false))), true), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.b.zyy >> (u_input.b.wyx % vec3<u32>(32u)), vec3<u32>(u_input.b.x, 21320u, u_input.c)), u_input.c), (~vec2<u32>(0u, 0u) ^ select(vec2<u32>(4294967295u, 1u), vec2<u32>(u_input.b.x, 111190u), vec2<bool>(true, false))) | (vec2<u32>(4294967295u, u_input.c) & ~u_input.b.ww)), _wgslsmith_f_op_f32(-844f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-1086f))))))), var_0.x);
    let var_3 = Struct_1(var_2.a.a, ~vec4<u32>(min(var_2.a.b.x, 27000u) ^ (4294967295u & var_2.c.x), ~_wgslsmith_clamp_u32(var_2.a.a.x, var_2.a.a.x, 1u), var_2.a.c, ~88325u), u_input.b.x, var_2.a.d);
    let var_4 = firstLeadingBit(47159i);
    return _wgslsmith_dot_vec4_u32(vec4<u32>(var_3.c, var_2.c.x, var_3.c, var_2.c.x), firstTrailingBit(_wgslsmith_div_vec4_u32(select(select(vec4<u32>(u_input.c, 186116u, 12425u, 0u), vec4<u32>(4294967295u, 0u, u_input.b.x, 45160u), var_3.d), var_2.a.b, vec4<bool>(false, false, var_3.d.x, arg_0.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(48681u, var_3.c, var_2.a.a.x, 1u), var_2.a.b, vec4<u32>(var_3.b.x, 4294967295u, 4294967295u, 0u) & vec4<u32>(0u, 1u, u_input.c, 1u)))));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>) -> bool {
    global0 = array<i32, 3>();
    let var_0 = -2147483647i;
    let var_1 = Struct_3(func_4(arg_0.d.zyx, 1u, -1231f, firstLeadingBit(_wgslsmith_div_i32(-1i, var_0 | u_input.a.x))).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-294f + 459f), -363f) * -1807f)), abs(~max(~u_input.b.xwx, vec3<u32>(0u, u_input.b.x, 43040u))), true);
    let var_2 = ~select(func_4(vec3<bool>(true, false, true), u_input.b.x, 931f, ~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_1.a.a, arg_1.zx), 3u)]).c.zx, select(~select(arg_0.b.wy, arg_0.a, var_1.a.d.x), countOneBits(vec2<u32>(60506u, u_input.b.x)), false), !arg_0.d.wy);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(165f + var_1.b) * -1110f);
    return var_1.a.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!vec3<bool>(any(vec4<bool>(false, true, true, false)), false, false)));
    global1 = array<vec3<u32>, 12>();
    var var_1 = global2[_wgslsmith_index_u32(u_input.c, 26u)];
    var var_2 = vec2<i32>(u_input.a.x, ~max(30655i, firstTrailingBit(_wgslsmith_sub_i32(-2147483647i, -1i))));
    var_1 = global2[_wgslsmith_index_u32(var_1.b.x, 26u)];
    var var_3 = func_5(global2[_wgslsmith_index_u32(4294967295u, 26u)], vec4<u32>(func_1(!(!vec2<bool>(var_0.x, var_0.x))), u_input.b.x, 0u, firstTrailingBit(u_input.b.x)));
    var_2 = _wgslsmith_mod_vec2_i32(u_input.a.yw, -vec2<i32>(_wgslsmith_clamp_i32(-2147483647i, 1i, -u_input.a.x), -4286i));
    global2 = array<Struct_1, 26>();
    let var_4 = func_4(func_4(var_0, var_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1039f)), _wgslsmith_mod_i32(u_input.a.x, var_2.x)).a.d.wyy, reverseBits(_wgslsmith_clamp_u32(var_1.a.x, _wgslsmith_dot_vec4_u32(var_1.b, vec4<u32>(u_input.b.x, var_1.b.x, var_1.c, 18472u)), func_1(vec2<bool>(var_0.x, var_1.d.x)))), func_4(var_0, var_1.c, -177f, 32602i).b, u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(abs(-6737i), var_1.c);
}

