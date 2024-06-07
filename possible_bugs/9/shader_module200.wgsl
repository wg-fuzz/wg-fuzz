struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3>;

var<private> global1: vec3<f32> = vec3<f32>(-155f, 409f, 640f);

var<private> global2: bool = false;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: vec3<i32>, arg_3: Struct_4) -> f32 {
    var var_0 = vec2<bool>(true, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~0u), 1u), 3u)]);
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1246f - _wgslsmith_f_op_f32(min(global1.x, _wgslsmith_f_op_f32(abs(416f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.x))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(arg_3.a.b.x, global1.x)))))))));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_mult_i32(_wgslsmith_mod_i32(2147483647i, -2147483647i), ~(~u_input.b.x)) | (max((18097i << (u_input.c % 32u)) | ~u_input.b.x, ~u_input.a ^ u_input.d.x) << (0u % 32u));
    let var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-global1.xz), _wgslsmith_div_vec2_f32(global1.zy, vec2<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.x)))))));
    global0 = array<bool, 3>();
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, var_1.x, 293f, -1427f), vec4<f32>(-1000f, var_1.x, global1.x, global1.x), true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 286f, var_1.x, 255f) - vec4<f32>(var_1.x, global1.x, var_1.x, -1789f))))), vec4<f32>(global1.x, var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(false, 35688u, u_input.b, Struct_4(Struct_1(vec2<i32>(u_input.a, 1i), var_1, u_input.c), u_input.b.x)))), -257f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(444f, 150f, -298f, 1407f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, 187f, global1.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 1479f, 1000f, -1000f) - vec4<f32>(163f, var_1.x, 403f, global1.x)) - vec4<f32>(var_1.x, var_1.x, 1505f, -194f)))));
    let var_3 = Struct_1(reverseBits(_wgslsmith_mult_vec2_i32(abs(vec2<i32>(-7646i, -1i)), u_input.e.yy)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1250f, var_2.x))))) + var_1), 34391u ^ u_input.c);
    return var_3;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1) -> Struct_4 {
    var var_0 = vec2<f32>(-721f, _wgslsmith_f_op_f32(trunc(3146f)));
    let var_1 = Struct_4(func_2(), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(~vec2<i32>(2147483647i, 14715i) ^ u_input.e.yy, arg_1.a, min(arg_1.a, arg_1.a) << ((vec2<u32>(arg_1.c, 1076u) >> (vec2<u32>(4294967295u, u_input.c) % vec2<u32>(32u))) % vec2<u32>(32u))), u_input.e.yx));
    let var_2 = _wgslsmith_mult_u32(select(16050u, firstLeadingBit(~4294967295u), global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~arg_1.c, u_input.c | 55245u), 3u)]), min(1u, arg_1.c));
    global2 = var_1.a.b.x == var_0.x;
    var var_3 = 164f;
    return Struct_4(Struct_1(~vec2<i32>(countOneBits(1i), _wgslsmith_mod_i32(u_input.a, u_input.b.x)), vec2<f32>(1679f, _wgslsmith_f_op_f32(f32(-1f) * -322f)), 4294967295u), firstTrailingBit(-2147483647i));
}

fn func_1(arg_0: vec2<u32>) -> bool {
    global0 = array<bool, 3>();
    global0 = array<bool, 3>();
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - global1.x))) < global1.x;
    var var_0 = _wgslsmith_mod_i32(4738i, _wgslsmith_div_i32(0i ^ u_input.a, -countOneBits(51672i)) & 4441i);
    var var_1 = func_4(select(!vec3<bool>(arg_0.x > u_input.c, u_input.b.x >= -2147483647i, !global0[_wgslsmith_index_u32(50964u, 3u)]), vec3<bool>(true, !global0[_wgslsmith_index_u32(abs(arg_0.x), 3u)], global0[_wgslsmith_index_u32(arg_0.x, 3u)]), select(!vec3<bool>(global0[_wgslsmith_index_u32(48268u, 3u)], true, false), vec3<bool>(global0[_wgslsmith_index_u32(37401u, 3u)] & global0[_wgslsmith_index_u32(u_input.c, 3u)], false, any(vec2<bool>(global0[_wgslsmith_index_u32(1u, 3u)], global0[_wgslsmith_index_u32(arg_0.x, 3u)]))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(31943u, arg_0.x), vec2<u32>(4294967295u, 4294967295u)), 3u)] != (0u <= u_input.c))), func_2());
    return select(true, all(select(!vec4<bool>(true, false, true, global0[_wgslsmith_index_u32(var_1.a.c, 3u)]), !vec4<bool>(false, false, global0[_wgslsmith_index_u32(63131u, 3u)], global0[_wgslsmith_index_u32(0u, 3u)]), select(!vec4<bool>(global0[_wgslsmith_index_u32(4049u, 3u)], false, global0[_wgslsmith_index_u32(arg_0.x, 3u)], true), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.c, 3u)], global0[_wgslsmith_index_u32(113778u, 3u)], global0[_wgslsmith_index_u32(10125u, 3u)]), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(47855u, 0u, var_1.a.c, arg_0.x), vec4<u32>(0u, 1u, 57157u, 0u)), 3u)]))), !select(true, false | global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_0, vec2<u32>(u_input.c, 4294967295u)), 3u)], all(vec2<bool>(global0[_wgslsmith_index_u32(arg_0.x, 3u)], global0[_wgslsmith_index_u32(var_1.a.c, 3u)]))));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec2<i32>) -> Struct_4 {
    var var_0 = firstLeadingBit(min(min(0u, _wgslsmith_sub_u32(18129u, _wgslsmith_mult_u32(0u, 73482u))), 19686u));
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(307f, global1.x, global1.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1053f, -284f, 722f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.b.x, global1.x, global1.x), vec3<f32>(global1.x, arg_0.b.x, arg_0.b.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.x, -872f, global1.x)))))) - vec3<f32>(_wgslsmith_f_op_f32(-259f - -1164f), _wgslsmith_f_op_f32(func_3(!all(vec3<bool>(global0[_wgslsmith_index_u32(arg_0.c, 3u)], true, false)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(u_input.c, arg_0.c)), select(_wgslsmith_sub_vec3_i32(u_input.d.wzz, vec3<i32>(arg_2.x, u_input.b.x, -1i)), vec3<i32>(u_input.d.x, u_input.d.x, u_input.a), vec3<bool>(true, arg_1.x, true)), func_4(vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 3u)], false), arg_0))), arg_0.b.x));
    var_0 = u_input.c;
    global0 = array<bool, 3>();
    var var_1 = Struct_2(arg_0, func_2(), _wgslsmith_div_vec3_u32(vec3<u32>(~64570u, arg_0.c, abs(1u)) & vec3<u32>(1u ^ arg_0.c, reverseBits(0u), ~arg_0.c), countOneBits(abs(vec3<u32>(4294967295u, 12923u, arg_0.c)) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(48568u, u_input.c, 103430u), vec3<u32>(u_input.c, arg_0.c, arg_0.c)) % vec3<u32>(32u)))));
    return Struct_4(Struct_1(~(-vec2<i32>(2701i, u_input.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-679f, 1670f) - vec2<f32>(-446f, global1.x))), var_1.c.x), -1i);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global0[_wgslsmith_index_u32(0u, 3u)];
    var var_0 = func_5(Struct_1(u_input.e.wy, global1.zz, _wgslsmith_dot_vec4_u32(vec4<u32>(reverseBits(u_input.c), ~u_input.c, u_input.c, ~4294967295u), ~min(vec4<u32>(u_input.c, 0u, u_input.c, u_input.c), vec4<u32>(u_input.c, 35313u, u_input.c, 14188u)))), vec4<bool>(!global0[_wgslsmith_index_u32(13226u, 3u)], select(true, func_1(~vec2<u32>(u_input.c, u_input.c)), any(vec4<bool>(global0[_wgslsmith_index_u32(43012u, 3u)], global0[_wgslsmith_index_u32(u_input.c, 3u)], true, false))), func_1(_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(0u, u_input.c), vec2<u32>(77838u, u_input.c)), vec2<u32>(u_input.c, 0u))), any(vec4<bool>(all(vec3<bool>(true, false, true)), all(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 3u)], global0[_wgslsmith_index_u32(14312u, 3u)], global0[_wgslsmith_index_u32(u_input.c, 3u)], global0[_wgslsmith_index_u32(u_input.c, 3u)])), global0[_wgslsmith_index_u32(16476u, 3u)], u_input.c > 20124u))), ~u_input.e.zx);
    let var_1 = !all(vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(52527u, var_0.a.c), vec2<u32>(var_0.a.c, u_input.c)), abs(vec2<u32>(1u, 1u))), 3u)], global0[_wgslsmith_index_u32(~4294967295u, 3u)], true | (global0[_wgslsmith_index_u32(var_0.a.c, 3u)] != true)));
    var var_2 = ~(3884i << (~_wgslsmith_dot_vec4_u32(min(vec4<u32>(var_0.a.c, 33842u, 79074u, 67301u), vec4<u32>(u_input.c, 4895u, u_input.c, u_input.c)), vec4<u32>(1u, 0u, u_input.c, var_0.a.c) & vec4<u32>(0u, 4294967295u, u_input.c, u_input.c)) % 32u));
    var var_3 = select(select(vec4<bool>(abs(var_0.b) >= (-1i << (var_0.a.c % 32u)), any(select(vec2<bool>(var_1, var_1), vec2<bool>(true, false), vec2<bool>(var_1, true))), all(select(vec4<bool>(false, false, global0[_wgslsmith_index_u32(0u, 3u)], false), vec4<bool>(var_1, true, global0[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(1u, 3u)]), var_1)), false), vec4<bool>(global0[_wgslsmith_index_u32(92316u, 3u)], global0[_wgslsmith_index_u32(66196u, 3u)], _wgslsmith_f_op_f32(191f - -2321f) >= _wgslsmith_f_op_f32(var_0.a.b.x * -483f), false), any(vec4<bool>(true, true, false, all(vec2<bool>(global0[_wgslsmith_index_u32(var_0.a.c, 3u)], global0[_wgslsmith_index_u32(u_input.c, 3u)]))))), select(select(!vec4<bool>(global0[_wgslsmith_index_u32(var_0.a.c, 3u)], global0[_wgslsmith_index_u32(u_input.c, 3u)], false, false), select(select(vec4<bool>(true, false, global0[_wgslsmith_index_u32(4294967295u, 3u)], false), vec4<bool>(var_1, global0[_wgslsmith_index_u32(26169u, 3u)], false, false), vec4<bool>(global0[_wgslsmith_index_u32(4115u, 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)], true, global0[_wgslsmith_index_u32(29480u, 3u)])), select(vec4<bool>(false, var_1, false, global0[_wgslsmith_index_u32(var_0.a.c, 3u)]), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 3u)], true, var_1, false), global0[_wgslsmith_index_u32(1u, 3u)]), select(vec4<bool>(true, false, true, true), vec4<bool>(var_1, var_1, global0[_wgslsmith_index_u32(1u, 3u)], var_1), global0[_wgslsmith_index_u32(66319u, 3u)])), false), vec4<bool>(!(!global0[_wgslsmith_index_u32(var_0.a.c, 3u)]), !(0i == var_0.a.a.x), var_1 != (global0[_wgslsmith_index_u32(1u, 3u)] == var_1), false), select(vec4<bool>(true, 34204u != u_input.c, true, !global0[_wgslsmith_index_u32(2821u, 3u)]), select(vec4<bool>(var_1, true, false, true), vec4<bool>(true, var_1, global0[_wgslsmith_index_u32(var_0.a.c, 3u)], false), select(vec4<bool>(false, true, var_1, var_1), vec4<bool>(var_1, true, global0[_wgslsmith_index_u32(u_input.c, 3u)], false), var_1)), select(vec4<bool>(var_1, var_1, true, true), select(vec4<bool>(false, var_1, false, false), vec4<bool>(false, false, var_1, true), vec4<bool>(var_1, false, false, false)), true))), !(!(!vec4<bool>(true, var_1, true, false))));
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(true, _wgslsmith_dot_vec3_u32(~vec3<u32>(36991u, 1u, u_input.c), firstLeadingBit(vec3<u32>(var_0.a.c, 0u, var_0.a.c))), u_input.e.wxz, Struct_4(Struct_1(var_0.a.a, global1.yx, u_input.c), -29760i))))), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-var_0.a.b.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x + -1033f), var_0.a.b.x) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(570f + -298f), -1038f, var_1))))));
    var_3 = select(select(select(!(!vec4<bool>(true, false, var_1, false)), vec4<bool>(true, all(var_3.wy), select(true, global0[_wgslsmith_index_u32(0u, 3u)], false), var_3.x), (global0[_wgslsmith_index_u32(61665u, 3u)] | var_1) && (var_4.x >= global1.x)), select(select(vec4<bool>(var_3.x, var_3.x, false, var_3.x), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 3u)], global0[_wgslsmith_index_u32(var_0.a.c, 3u)], global0[_wgslsmith_index_u32(var_0.a.c, 3u)], var_3.x), vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(3854u, 3u)], var_3.x), var_1), vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 3u)], var_1, var_3.x)), !vec4<bool>(var_3.x, false, global0[_wgslsmith_index_u32(102852u, 3u)], var_1), !select(vec4<bool>(true, var_3.x, var_3.x, var_3.x), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.c, 3u)], var_3.x, var_3.x), var_1)), true), select(!vec4<bool>(var_3.x, var_3.x, var_1, any(vec4<bool>(var_3.x, true, var_3.x, false))), select(vec4<bool>(all(vec3<bool>(true, false, true)), false, var_1 || true, true), vec4<bool>(true, true, true, true), select(select(vec4<bool>(var_1, false, var_3.x, var_3.x), vec4<bool>(true, false, false, false), vec4<bool>(var_3.x, var_3.x, true, true)), select(vec4<bool>(true, var_3.x, global0[_wgslsmith_index_u32(u_input.c, 3u)], false), vec4<bool>(true, false, var_1, var_3.x), false), vec4<bool>(true, var_3.x, var_3.x, global0[_wgslsmith_index_u32(u_input.c, 3u)]))), !vec4<bool>(!var_3.x, var_3.x, true, !global0[_wgslsmith_index_u32(u_input.c, 3u)])), select(vec4<bool>(true, _wgslsmith_f_op_f32(-686f + -2738f) > _wgslsmith_f_op_f32(var_0.a.b.x * 532f), false, !global0[_wgslsmith_index_u32(0u & var_0.a.c, 3u)]), select(vec4<bool>(true, any(vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(1u, 3u)])), false, any(vec2<bool>(var_1, global0[_wgslsmith_index_u32(18172u, 3u)]))), vec4<bool>(global0[_wgslsmith_index_u32(var_0.a.c, 3u)], true, all(vec4<bool>(true, false, global0[_wgslsmith_index_u32(0u, 3u)], global0[_wgslsmith_index_u32(var_0.a.c, 3u)])), u_input.d.x >= 25942i), true), false));
    let var_5 = var_0.a;
    var var_6 = (~(~(~var_0.a.a)) >> (_wgslsmith_mod_vec2_u32(~vec2<u32>(1u, u_input.c), vec2<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 4294967295u, 0u), vec3<u32>(var_0.a.c, var_5.c, u_input.c)))) % vec2<u32>(32u))) | abs(_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.b, -23732i), firstTrailingBit(vec2<i32>(21796i, 21119i))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(firstTrailingBit(4294967295u), var_0.a.c, _wgslsmith_div_u32(4294967295u, var_0.a.c), func_4(vec3<bool>(var_1, false, var_1), Struct_1(vec2<i32>(u_input.e.x, var_6.x), global1.yy, 50970u)).a.c), _wgslsmith_div_vec4_u32(~vec4<u32>(1u, var_0.a.c, u_input.c, var_0.a.c), ~vec4<u32>(19886u, u_input.c, var_0.a.c, 18565u)))));
}

