struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec4<i32>,
    d: bool,
    e: vec2<bool>,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 2>;

var<private> global1: vec2<u32> = vec2<u32>(4294967295u, 72978u);

var<private> global2: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec3<f32>(133f, 437f, -1119f), 5736i, vec4<u32>(4294967295u, 1u, 48774u, 0u), vec2<u32>(11109u, 84685u), 21733u), Struct_1(vec3<f32>(-581f, -667f, -801f), 50405i, vec4<u32>(4294967295u, 8707u, 6613u, 84347u), vec2<u32>(28433u, 1u), 0u), Struct_1(vec3<f32>(743f, -590f, 1516f), -15508i, vec4<u32>(0u, 4294967295u, 0u, 4294967295u), vec2<u32>(0u, 23883u), 1u), Struct_1(vec3<f32>(-487f, 857f, -535f), -1846i, vec4<u32>(29581u, 1u, 4294967295u, 103699u), vec2<u32>(6802u, 4294967295u), 4294967295u), Struct_1(vec3<f32>(-680f, -2021f, 894f), -47710i, vec4<u32>(59687u, 7066u, 1u, 0u), vec2<u32>(4294967295u, 1u), 4294967295u), Struct_1(vec3<f32>(215f, 661f, 1000f), -6457i, vec4<u32>(4294967295u, 1u, 3411u, 15285u), vec2<u32>(50619u, 1u), 0u), Struct_1(vec3<f32>(1747f, -1000f, -387f), -38650i, vec4<u32>(0u, 49344u, 1u, 1u), vec2<u32>(14559u, 92724u), 0u), Struct_1(vec3<f32>(2251f, 539f, 1000f), 12285i, vec4<u32>(9519u, 23273u, 29568u, 18214u), vec2<u32>(1u, 4067u), 29612u), Struct_1(vec3<f32>(-711f, -1043f, 997f), -27666i, vec4<u32>(60049u, 71863u, 7623u, 11155u), vec2<u32>(22795u, 34183u), 84559u), Struct_1(vec3<f32>(392f, 778f, -2039f), -51929i, vec4<u32>(0u, 69835u, 92680u, 4294967295u), vec2<u32>(0u, 15476u), 1u), Struct_1(vec3<f32>(286f, 278f, 1000f), 0i, vec4<u32>(66456u, 1u, 1u, 47300u), vec2<u32>(0u, 105786u), 38791u), Struct_1(vec3<f32>(518f, -1661f, -595f), 63613i, vec4<u32>(18056u, 7508u, 28635u, 55800u), vec2<u32>(4294967295u, 4294967295u), 22600u), Struct_1(vec3<f32>(395f, -1262f, -377f), 3946i, vec4<u32>(67545u, 35861u, 4294967295u, 58017u), vec2<u32>(29251u, 30242u), 1u), Struct_1(vec3<f32>(-2005f, -1567f, 1679f), -32536i, vec4<u32>(4294967295u, 0u, 32436u, 0u), vec2<u32>(4294967295u, 4294967295u), 45326u), Struct_1(vec3<f32>(-816f, 726f, 389f), -1i, vec4<u32>(94466u, 20353u, 14858u, 10603u), vec2<u32>(0u, 14033u), 1u), Struct_1(vec3<f32>(-2089f, 444f, 392f), 0i, vec4<u32>(38445u, 15286u, 1u, 45034u), vec2<u32>(4294967295u, 0u), 0u), Struct_1(vec3<f32>(-491f, 936f, -647f), 0i, vec4<u32>(3997u, 37078u, 6363u, 0u), vec2<u32>(3595u, 1u), 1u), Struct_1(vec3<f32>(784f, 145f, -1721f), -27728i, vec4<u32>(1u, 82357u, 7039u, 1u), vec2<u32>(1u, 4294967295u), 1u), Struct_1(vec3<f32>(-1153f, -2067f, -1359f), -7333i, vec4<u32>(4294967295u, 9843u, 4294967295u, 12701u), vec2<u32>(4294967295u, 63322u), 0u), Struct_1(vec3<f32>(-356f, 689f, -1000f), 1i, vec4<u32>(4294967295u, 57785u, 4294967295u, 0u), vec2<u32>(24612u, 77032u), 0u));

var<private> global3: Struct_1;

var<private> global4: Struct_1;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: u32) -> vec3<f32> {
    let var_0 = any(vec3<bool>((u_input.a <= 1u) | true, _wgslsmith_clamp_u32(~global4.e, ~u_input.d.x, ~global1.x) <= ~select(global4.d.x, 0u, false), false));
    let var_1 = ~(-abs(vec4<i32>(1i, _wgslsmith_div_i32(global3.b, 2147483647i), 22433i, min(-2140i, 11571i))));
    var var_2 = global2[_wgslsmith_index_u32(0u, 20u)];
    let var_3 = global3.a.x;
    global2 = array<Struct_1, 20>();
    return var_2.a;
}

fn func_3(arg_0: Struct_3) -> f32 {
    let var_0 = arg_0.b;
    global3 = Struct_1(global4.a, arg_0.b.x, ~vec4<u32>(u_input.b.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 0u, 16955u, 4294967295u), vec4<u32>(u_input.b.x, global3.c.x, global3.e, 62631u)) % 32u), global1.x & reverseBits(global1.x), 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(38956u, 4294967295u), ~global4.d)), ~(~u_input.b), firstTrailingBit(~52081u));
    global2 = array<Struct_1, 20>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-174f + _wgslsmith_f_op_f32(-global3.a.x)) + global3.a.x) * _wgslsmith_f_op_f32(global3.a.x + _wgslsmith_f_op_f32(-global3.a.x))) + _wgslsmith_f_op_f32(global3.a.x - 890f));
    return 1559f;
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: vec4<u32>, arg_3: Struct_1) -> i32 {
    var var_0 = Struct_4(Struct_3(_wgslsmith_mult_vec2_i32(~vec2<i32>(-1i, arg_3.b) >> (vec2<u32>(59781u, 961u) % vec2<u32>(32u)), vec2<i32>(~global3.b, 1i | global3.b)), -max(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global4.c.x, global1.x, global1.x, 2872u), arg_3.c), 2u)], vec3<i32>(arg_3.b, 0i, -1i) & vec3<i32>(arg_1, -26723i, 13636i))), Struct_2(Struct_1(vec3<f32>(-980f, _wgslsmith_f_op_f32(round(-1616f)), _wgslsmith_f_op_f32(global3.a.x * global3.a.x)), ~(arg_3.b & global4.b), global4.c, arg_3.d, 65021u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.a.x, global4.a.x, -1484f, global3.a.x) * vec4<f32>(global3.a.x, arg_0, -1165f, arg_0)), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0, arg_3.a.x, global3.a.x, 881f), vec4<f32>(-1058f, arg_3.a.x, -401f, 657f))))), select(_wgslsmith_clamp_vec4_i32(min(vec4<i32>(1i, 5847i, -19393i, -593i), vec4<i32>(arg_1, -1i, 13531i, global3.b)), abs(vec4<i32>(arg_1, arg_1, arg_3.b, 0i)), -vec4<i32>(arg_3.b, 0i, arg_1, global3.b)), -vec4<i32>(arg_3.b, 10107i, arg_1, global4.b), vec4<bool>(true, 8338u == global1.x, select(true, false, true), true)) << (u_input.d % vec4<u32>(32u)), any(vec2<bool>(true, true)) & false, select(select(vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(true, false)), true), select(vec2<bool>(true, false), vec2<bool>(false, false), false)), select(vec2<bool>(all(vec2<bool>(false, false)), false), vec2<bool>(true, true), false), true || (~global3.b < 2147483647i)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.a.x + arg_0))))));
    let var_2 = 514f;
    let var_3 = true;
    var var_4 = var_0.a;
    return reverseBits(-abs(var_4.b.x)) ^ var_4.b.x;
}

fn func_2(arg_0: i32, arg_1: Struct_5) -> i32 {
    var var_0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(vec2<i32>(global3.b, global3.b), global0[_wgslsmith_index_u32(42473u, 2u)]))))), 1i, vec4<u32>(_wgslsmith_mult_u32(global3.c.x & _wgslsmith_clamp_u32(72301u, 24762u, 83937u), firstTrailingBit(52301u)), global1.x, _wgslsmith_mod_u32(~(1u << (u_input.c.x % 32u)), 39966u), 14634u), Struct_1(global4.a, global3.b << (global1.x % 32u), vec4<u32>(_wgslsmith_mod_u32(global4.c.x, firstTrailingBit(u_input.c.x)), ~(~global4.e), ~global3.d.x, ~countOneBits(42117u)), vec2<u32>(~firstLeadingBit(4292u), ~4294967295u), 41706u));
    global1 = vec2<u32>(_wgslsmith_add_u32(~(~global3.c.x), global3.c.x), 1u) | global3.c.xz;
    let var_1 = vec2<u32>(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(global4.c.x, u_input.a, 22940u), global4.c.yxy)), ~_wgslsmith_mod_u32(firstTrailingBit(1u), _wgslsmith_add_u32(7379u, 1u))) | (vec2<u32>(_wgslsmith_mod_u32(~global4.d.x, max(global4.d.x, 31926u)), global3.c.x) | ~vec2<u32>(26449u, firstLeadingBit(global3.c.x)));
    global4 = global2[_wgslsmith_index_u32(~910u, 20u)];
    let var_2 = arg_1;
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2) -> Struct_1 {
    global1 = ~global4.d;
    global3 = arg_0;
    var var_0 = vec2<bool>(true, true);
    var var_1 = global4.c.x;
    global3 = Struct_1(global4.a, (_wgslsmith_mod_i32(arg_2.a.b, _wgslsmith_mult_i32(1i, 1143i)) & global4.b) >> (global1.x % 32u), arg_2.a.c, vec2<u32>(14674u, global3.c.x), select(86537u, _wgslsmith_mod_u32(arg_0.c.x, ~abs(4294967295u)), !var_0.x));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(arg_2.a.a, arg_2.a.a))), _wgslsmith_dot_vec2_i32(abs(reverseBits(-vec2<i32>(25351i, arg_0.b))), -(~_wgslsmith_sub_vec2_i32(vec2<i32>(1i, global3.b), vec2<i32>(-2058i, arg_2.a.b)))), global4.c, abs((arg_0.c.yz & vec2<u32>(global3.c.x, 30171u)) | vec2<u32>(12297u, 87831u)) & global3.d, ~1u);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_5(Struct_1(_wgslsmith_f_op_vec3_f32(func_1(1u)), _wgslsmith_clamp_i32(reverseBits(-23893i), func_2(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 29341i), vec2<i32>(global3.b, -16640i)), Struct_5(-607f)), global3.b), _wgslsmith_add_vec4_u32(vec4<u32>(~63805u, 22060u, _wgslsmith_mod_u32(4294967295u, global1.x), ~17935u), ~(~global3.c)), _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(global4.d, global3.c.yz >> (global3.c.yw % vec2<u32>(32u))), vec2<u32>(global4.d.x, max(9287u, 4294967295u))), min(~_wgslsmith_mult_u32(global3.c.x, global3.e), abs(~global4.c.x))), 8741u, Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-global4.a))), _wgslsmith_add_i32(~global4.b, 1i), ~(global4.c ^ vec4<u32>(25002u, 4294967295u, global3.c.x, 0u)), min(vec2<u32>(97351u, u_input.d.x) ^ global4.c.yy, global3.c.ww), ~(global3.e << (global4.e % 32u))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1037f, -1348f, 646f, global3.a.x), vec4<f32>(-582f, global3.a.x, global4.a.x, global4.a.x)))))));
    var var_0 = -1i;
    var var_1 = Struct_3(countOneBits(vec2<i32>(global3.b, -(global3.b & global4.b))), vec3<i32>(max(~15847i, ~global4.b), global4.b, countOneBits(func_5(global2[_wgslsmith_index_u32(22902u, 20u)], global1.x, Struct_2(Struct_1(global3.a, 113311i, vec4<u32>(global1.x, u_input.b.x, 7774u, global4.c.x), vec2<u32>(4294967295u, 1u), global3.e), vec4<f32>(global4.a.x, global3.a.x, global4.a.x, -1000f))).b)) << ((vec3<u32>(1u, firstTrailingBit(u_input.b.x), global1.x) << (_wgslsmith_mult_vec3_u32(global3.c.yzz, vec3<u32>(global1.x, 4294967295u, 103772u)) % vec3<u32>(32u))) % vec3<u32>(32u)));
    global4 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -844f), _wgslsmith_f_op_f32(625f * _wgslsmith_f_op_f32(-507f * global3.a.x)), _wgslsmith_f_op_f32(floor(252f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1604f, global4.a.x, global3.a.x)) * global4.a))), global3.b, vec4<u32>(global3.d.x, _wgslsmith_sub_u32(abs(~37957u), _wgslsmith_dot_vec3_u32(global3.c.xzz, u_input.c.yww | vec3<u32>(0u, 65372u, global4.c.x))), abs(u_input.b.x) << (global3.e % 32u), ~u_input.a & global3.c.x), _wgslsmith_add_vec2_u32(vec2<u32>(1u, 0u), max(abs(~global3.d), global4.c.wy)), 0u);
    var_0 = global4.b;
    let var_2 = global3.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(~22722i, -1i, _wgslsmith_clamp_i32(global3.b, global3.b, global3.b), -var_1.a.x), vec4<i32>(_wgslsmith_add_i32(global4.b, global3.b), ~1i, global3.b, _wgslsmith_mod_i32(var_1.a.x, var_1.b.x))), ~(func_5(Struct_1(vec3<f32>(244f, 946f, global4.a.x), var_1.b.x, global4.c, vec2<u32>(global3.e, 23373u), global4.c.x), 59511u, Struct_2(Struct_1(vec3<f32>(global3.a.x, global4.a.x, 1582f), 10556i, global3.c, u_input.b, 21285u), vec4<f32>(-403f, global4.a.x, 1471f, global4.a.x))).b ^ 1i)), ~_wgslsmith_sub_u32(global1.x, 1u));
}

