struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_2() -> vec3<f32> {
    var var_0 = ~(~(~(-(-17474i & u_input.a))));
    var_0 = u_input.b;
    var_0 = u_input.a;
    var_0 = _wgslsmith_mod_i32(-5389i, _wgslsmith_div_i32(u_input.b, min(-(2147483647i & u_input.b), ~(~(-2147483647i)))));
    var_0 = 0i;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1803f), -290f, -750f))))));
}

fn func_3() -> bool {
    var var_0 = true;
    let var_1 = _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(~(vec2<i32>(7537i, 0i) & vec2<i32>(u_input.a, -18406i)), vec2<i32>(u_input.b, i32(-1i) * -1i)), -_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, 40547i), vec2<i32>(u_input.a, 0i)), vec2<i32>(-14762i, -1i))), _wgslsmith_mult_vec2_i32(min(~vec2<i32>(u_input.a, 0i), firstTrailingBit(vec2<i32>(16953i, -2147483647i))) >> (~(~u_input.d.zy) % vec2<u32>(32u)), ~vec2<i32>(-26897i, -u_input.a)));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -438f, -872f) - vec3<f32>(652f, 471f, -1213f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1562f, 856f, 1540f), vec3<f32>(-299f, 105f, 1539f), vec3<bool>(true, false, false))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1000f, -1451f, 1161f), vec3<f32>(161f, -338f, -470f))))) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(399f, -787f, -249f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(701f, 1558f, 1000f)))))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-409f, -1798f, 1195f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(577f, -1000f, 1907f)))))));
    var_0 = any(select(vec4<bool>(true, true, true, true), !vec4<bool>(var_2.x >= -639f, true, true, true), !select(false, all(vec3<bool>(true, false, false)), any(vec2<bool>(false, false)))));
    let var_3 = vec2<bool>(select(u_input.b <= ~(-1i | var_1.x), var_2.x < _wgslsmith_f_op_vec3_f32(func_2()).x, true), !select(any(vec3<bool>(false, true, false)), true, -872f != _wgslsmith_f_op_f32(trunc(var_2.x))));
    return var_3.x;
}

fn func_1(arg_0: vec4<u32>, arg_1: i32, arg_2: u32, arg_3: Struct_1) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2()));
    let var_1 = var_0.x;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0));
    var var_3 = Struct_2(select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), -1386f <= var_1), vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), u_input.a > arg_3.c.x)), vec2<bool>(false, true), !vec2<bool>(select(true, false, false), func_3())), select(select(vec2<bool>(true, true), vec2<bool>(true, true), !(u_input.d.x >= 23370u)), select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), 1i == arg_1), !select(true, true, false)), false), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-564f, -414f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1171f, var_2.x, true)) + _wgslsmith_f_op_f32(-var_0.x)))));
    let var_4 = var_3.a;
    return countOneBits(arg_3.c.zy);
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: vec2<f32>) -> Struct_2 {
    var var_0 = ~(-1i) < u_input.b;
    var var_1 = select(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(5672u, u_input.d.x), ~u_input.e, 28954u >> (u_input.c % 32u), 0u ^ u_input.c) & vec4<u32>(212u, 50212u, select(4294967295u, u_input.e, false), _wgslsmith_div_u32(1u, u_input.e)), firstLeadingBit(min(select(vec4<u32>(4212u, 4294967295u, u_input.c, 4294967295u), vec4<u32>(u_input.e, u_input.c, u_input.c, u_input.c), false), vec4<u32>(u_input.d.x, 4294967295u, 97020u, u_input.e)))), ~vec4<u32>(u_input.e, ~u_input.e, _wgslsmith_add_u32(countOneBits(54625u), u_input.d.x & u_input.d.x), ~(~4294967295u)), select(select(vec4<bool>(true, true, select(false, true, true), true), select(vec4<bool>(false, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), false), vec4<bool>(true, true, true, true)), true), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), true), true), !(true | all(vec2<bool>(true, true)))));
    var_0 = firstLeadingBit(-(~0i)) > firstTrailingBit(reverseBits(_wgslsmith_add_i32(19655i, ~(-1i))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -451f) * -1731f)))), _wgslsmith_dot_vec3_i32(-vec3<i32>(arg_1.x, ~(-1i), arg_1.x), select(_wgslsmith_add_vec3_i32(vec3<i32>(12083i, u_input.b, -16770i), vec3<i32>(u_input.a, arg_1.x, u_input.a)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, 2147483647i, -2147483647i), vec3<i32>(-2147483647i, arg_1.x, u_input.b)), false) >> (vec3<u32>(~var_1.x, ~6663u, var_1.x) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_i32(min(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, -1i, arg_1.x) | vec3<i32>(u_input.b, u_input.b, u_input.a), vec3<i32>(u_input.a, arg_1.x, 9370i)), max(vec3<i32>(u_input.a, u_input.b, u_input.b), vec3<i32>(-3287i, arg_1.x, u_input.b))), countOneBits(vec3<i32>(arg_1.x, firstLeadingBit(1i), arg_1.x)), select(-vec3<i32>(108i, arg_1.x, u_input.b), vec3<i32>(-1i, arg_1.x, u_input.b), vec3<bool>(all(vec4<bool>(true, true, false, false)), true, any(vec4<bool>(true, false, true, true))))));
    var_1 = ~vec4<u32>(_wgslsmith_sub_u32(u_input.c, 0u) >> (abs(1u) % 32u), 11702u, var_1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(14154u, 0u), vec2<u32>(53048u, var_1.x))) ^ ~max(reverseBits(vec4<u32>(0u, var_1.x, 33005u, 1u) | vec4<u32>(35944u, var_1.x, u_input.d.x, 1u)), firstLeadingBit(select(vec4<u32>(4294967295u, 11356u, 47904u, 38256u), vec4<u32>(var_1.x, 6326u, 15714u, u_input.d.x), false)));
    return Struct_2(select(vec2<bool>(true, !(arg_0.x == 393f)), vec2<bool>(select(true, false, select(false, true, false)), false), false), select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))), !vec2<bool>(true, select(false, true, false)), func_3()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec3_f32(func_2()).x, 882f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a - 2178f)) * _wgslsmith_f_op_f32(max(arg_2.x, -2030f)))));
}

fn func_5(arg_0: u32, arg_1: Struct_2) -> i32 {
    let var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, _wgslsmith_clamp_i32(firstLeadingBit(u_input.a), 12309i, i32(-1i) * -2147483647i) & u_input.a, _wgslsmith_sub_i32(-(u_input.b & -2198i), -_wgslsmith_mult_i32(-1i, u_input.a))), vec3<i32>(abs(_wgslsmith_clamp_i32(_wgslsmith_add_i32(u_input.b, 41967i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.b, u_input.b), vec3<i32>(1i, u_input.b, u_input.b)), ~u_input.b)), _wgslsmith_div_i32(-(u_input.a & 1i), u_input.b), u_input.a));
    var var_1 = ~(~select(vec3<i32>(select(u_input.b, -13076i, false), -var_0, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.b), vec2<i32>(var_0, 5680i))), vec3<i32>(45811i, -var_0, ~0i), select(vec3<bool>(arg_1.b.x, arg_1.a.x, arg_1.a.x), select(vec3<bool>(true, arg_1.b.x, arg_1.b.x), vec3<bool>(arg_1.a.x, false, arg_1.b.x), vec3<bool>(arg_1.a.x, false, arg_1.b.x)), any(vec2<bool>(arg_1.a.x, arg_1.b.x)))));
    var_1 = vec3<i32>(var_1.x, -1i, abs(-(-27614i ^ max(var_1.x, var_1.x))));
    let var_2 = func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1794f, arg_1.c, -432f, arg_1.c)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1.c, 152f, arg_1.c, arg_1.c), vec4<f32>(135f, 229f, arg_1.c, arg_1.c)))))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.c, -343f, arg_1.c, 630f) * vec4<f32>(arg_1.c, -1615f, arg_1.c, arg_1.c)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(136f, arg_1.c, arg_1.c, arg_1.c) - vec4<f32>(arg_1.c, -355f, arg_1.c, arg_1.c)))), vec4<bool>(true, true, all(vec4<bool>(arg_1.b.x, arg_1.a.x, arg_1.a.x, arg_1.b.x)), true)))), vec2<i32>(1i, 15281i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.c, _wgslsmith_f_op_f32(abs(arg_1.c))) * vec2<f32>(-1411f, -348f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c, 285f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(167f, arg_1.c) - vec2<f32>(arg_1.c, -357f))))));
    var_1 = vec3<i32>(1i, 2147483647i ^ firstTrailingBit(-10877i), abs(~80304i) ^ -_wgslsmith_sub_i32(var_0, _wgslsmith_add_i32(var_0, var_1.x)));
    return -(~(-var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(~func_5(1u << (_wgslsmith_mod_u32(68854u, u_input.c) % 32u), func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-691f, -953f, -133f, 2220f)), func_1(vec4<u32>(u_input.e, u_input.d.x, 44016u, 34185u), u_input.b, u_input.e, Struct_1(-121f, u_input.b, vec3<i32>(u_input.b, u_input.a, u_input.b))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-224f, 355f)))), u_input.b, 8784i);
    let var_1 = ~var_0.xz;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~27269u & ((u_input.c & 1u) & (u_input.d.x >> (u_input.d.x % 32u))), select(0u, 1u, true), 4294967295u));
}

