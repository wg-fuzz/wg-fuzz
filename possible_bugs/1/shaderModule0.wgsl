// {"0:0":[46,123,42,186,142,165,28,6,88,75,199,49,82,47,161,233,156,240,80,172,196,102,134,134,122,184,7,123,56,235,149,135]}
// Seed: 3029415218976201564

struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 12>;

var<private> global1: vec3<i32> = vec3<i32>(-6024, -5220, -20876);

var<private> LOOP_COUNTERS: array<u32, 18>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || ((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2), ((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn func_6(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: f32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_1.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1394.0))))));
    global1 = vec3<i32>(u_input.c.x, -43206, 2147483647);
    global1 = _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.c, u_input.c), u_input.c.x, u_input.c.x) >> (min(vec3<u32>(1u, u_input.b, arg_1.a.x), arg_0.yyy) % vec3<u32>(32u)), vec3<i32>(2147483647 & abs(u_input.c.x), 0, select(global1.x, -2147483648, arg_2.x | false))), _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_add_i32(u_input.a & -38306, 1), reverseBits(-global1.x), min(global1.x, min(u_input.c.x, 23425))), vec3<i32>(reverseBits(-global1.x), min(2147483647, _wgslsmith_add_i32(43979, 49348)), _wgslsmith_div_i32(20036, ~(-2147483648))), u_input.c.xww));
    loop {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
    }
    let var_1 = Struct_1(arg_0.zy, var_0);
    return min(33968u, ~_wgslsmith_mult_u32(0u, 56093u));
}

fn func_5() -> vec4<u32> {
    global1 = u_input.c.yxz;
    if (~countOneBits(u_input.b & firstTrailingBit(u_input.b)) >= ~u_input.b) {
        global1 = _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a | -2147483648, -1, ~2147483647), vec3<i32>(global1.x, _wgslsmith_mult_i32(u_input.a, _wgslsmith_div_i32(-1, -1 << (4294967295u % 32u))), u_input.c.x));
        var var_0 = 322.0;
        for (var var_1: i32; ; var_1 += 1) {
            if (LOOP_COUNTERS[1u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
            var var_2 = Struct_2(abs(~(~(~vec4<u32>(u_input.b, 24854u, u_input.b, 60265u)))), 3152u);
        }
        let var_1 = Struct_2(vec4<u32>(u_input.b, ~func_6(~vec4<u32>(u_input.b, u_input.b, 1u, u_input.b), Struct_1(vec2<u32>(0u, u_input.b), -533.0), !vec2<bool>(true, true), _wgslsmith_f_op_f32(f32(-1.0) * -2375.0)), ~22917u & ~_wgslsmith_mod_u32(1u, 55438u), reverseBits(u_input.b | _wgslsmith_sub_u32(u_input.b, u_input.b))), 49044u);
    }
    return min(_wgslsmith_sub_vec4_u32(max(~vec4<u32>(u_input.b, 0u, u_input.b, 851u), vec4<u32>(u_input.b, 32049u, countOneBits(35884u), u_input.b << (0u % 32u))), _wgslsmith_add_vec4_u32(min(_wgslsmith_mult_vec4_u32(vec4<u32>(24734u, 1u, 23000u, u_input.b), vec4<u32>(25157u, u_input.b, u_input.b, u_input.b)), select(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(101070u, u_input.b, 489u, 4294967295u), false)), ~vec4<u32>(58346u, 4294967295u, u_input.b, u_input.b) | firstLeadingBit(vec4<u32>(1u, u_input.b, u_input.b, u_input.b)))), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 1u, u_input.b, u_input.b), vec4<u32>(0u, func_6(select(vec4<u32>(u_input.b, 29257u, u_input.b, u_input.b), vec4<u32>(u_input.b, 1u, 11606u, u_input.b), false), Struct_1(vec2<u32>(u_input.b, 10655u), -1596.0), !vec2<bool>(true, true), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 12u)])), 13193u, _wgslsmith_mult_u32(reverseBits(0u), ~u_input.b))));
}

fn func_7(arg_0: Struct_2) -> Struct_2 {
    global0 = array<f32, 12>();
    global1 = vec3<i32>(firstLeadingBit(u_input.c.x), _wgslsmith_mod_i32(~firstTrailingBit(firstTrailingBit(u_input.c.x)), 46571), _wgslsmith_mod_i32(~_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, u_input.a), vec3<i32>(global1.x, 24962, global1.x)), u_input.c.x), global1.x));
    var var_0 = u_input.c.x;
    switch (max(global1.x, global1.x)) {
        default: {
        }
    }
    var_0 = ~67564;
    return arg_0;
}

fn func_4(arg_0: i32) -> Struct_2 {
    var var_0 = func_7(Struct_2(min(vec4<u32>(0u, u_input.b, 1u, 29951u), func_5()) & ~(~vec4<u32>(u_input.b, u_input.b, u_input.b, 0u)), 72959u));
    var var_1 = _wgslsmith_f_op_f32(trunc(179.0));
    let var_2 = _wgslsmith_div_i32(_wgslsmith_sub_i32(firstLeadingBit(_wgslsmith_div_i32(reverseBits(-1), _wgslsmith_dot_vec4_i32(u_input.c, u_input.c))), u_input.c.x), firstTrailingBit(abs(-75551)));
    let var_3 = reverseBits(~vec4<u32>(~0u, firstTrailingBit(~u_input.b), var_0.a.x, 1u));
    return Struct_2(var_3, select(~0u, _wgslsmith_dot_vec4_u32(min(~var_0.a, abs(vec4<u32>(22138u, 0u, var_0.a.x, var_0.a.x))), ~select(vec4<u32>(0u, 135270u, 4892u, 4294967295u), vec4<u32>(0u, var_3.x, 49393u, 1u), true)), all(!(!vec2<bool>(false, false)))));
}

fn func_8(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32, arg_3: Struct_2) -> i32 {
    if (!all(!vec2<bool>(true, true))) {
        let var_0 = func_4(2147483647);
        switch (1) {
            case 1: {
            }
            case 2147483647: {
                let var_1 = Struct_1(arg_3.a.yx, arg_1.b);
                let var_2 = vec2<bool>(!(!false), !false);
            }
            default: {
            }
        }
        switch (reverseBits((global1.x | -7833) >> (var_0.b % 32u))) {
            default: {
                var var_1 = arg_1;
                let var_2 = ~25379u;
                let var_3 = select(vec3<bool>(true, !(!(!false)), !select(false, true, !false)), select(vec3<bool>(all(!vec2<bool>(false, true)), -296.0 < _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(arg_0.b, 12u)])), !(!false)), select(select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false), any(vec3<bool>(true, true, false))), !(!vec3<bool>(false, true, false)), !false), select(!vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), !vec3<bool>(false, true, false), vec3<bool>(false, true, true)), true)), !vec3<bool>(1u != abs(1u), any(vec3<bool>(false, false, true)) | !true, false));
                var var_4 = var_0;
            }
        }
    }
    var var_0 = !(_wgslsmith_mod_u32(~0u, ~arg_0.b) != ~u_input.b);
    var var_1 = Struct_2(select(min(abs(func_7(arg_0).a), arg_3.a), _wgslsmith_mult_vec4_u32(~vec4<u32>(arg_0.a.x, arg_3.b, arg_1.a.x, 3574u), _wgslsmith_add_vec4_u32(arg_3.a, arg_3.a)), !select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), false), false & false)), arg_1.a.x);
    switch (~_wgslsmith_mod_i32(min(-22891, ~10580), global1.x) | u_input.c.x) {
        case -28541: {
            switch (~_wgslsmith_mod_i32(u_input.c.x, 2147483647)) {
                case -25491: {
                    let var_2 = vec2<u32>(4294967295u ^ (firstTrailingBit(abs(21191u)) & firstTrailingBit(4294967295u)), arg_0.a.x);
                    var_1 = Struct_2(vec4<u32>(u_input.b, ~(~33835u & abs(arg_3.a.x)), _wgslsmith_mod_u32(arg_3.a.x, _wgslsmith_mod_u32(112070u, var_2.x)) & func_5().x, ~(func_6(arg_3.a, Struct_1(var_1.a.xw, arg_1.b), vec2<bool>(false, false), 895.0) << (14459u % 32u))), func_5().x);
                    let var_3 = _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~arg_1.a.x, 12u)] - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-830.0 - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 12u)] * global0[_wgslsmith_index_u32(0u, 12u)])))));
                    var var_4 = global1.x;
                    var var_5 = var_2;
                }
                case -5297: {
                    global0 = array<f32, 12>();
                    var_1 = arg_3;
                    var_0 = false || (_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.b))) != arg_1.b);
                    var var_2 = !vec4<bool>(!all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true))), false, any(!(!vec4<bool>(false, true, true, false))), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, global1.x, 2147483647, u_input.a), u_input.c), ~6351) > u_input.a);
                    let var_3 = 1u;
                }
                case -1: {
                    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-400.0 - -249.0)) - arg_1.b))) * global0[_wgslsmith_index_u32(~(~(~arg_0.b)), 12u)]);
                    var var_3 = arg_1;
                }
                default: {
                }
            }
        }
        case 24470: {
            return u_input.a;
        }
        default: {
            if (_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-851.0))) - 1000.0))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-134.0) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.b, arg_1.b, false)) * _wgslsmith_f_op_f32(trunc(279.0))))))) {
                var var_2 = ~(~reverseBits(arg_0.a.wwz));
                var var_3 = Struct_2(~func_5(), 49385u);
                var var_4 = any(vec3<bool>(true, false, !true | false));
            }
            let var_2 = arg_3;
            switch (_wgslsmith_dot_vec3_i32(firstTrailingBit(~vec3<i32>(global1.x, _wgslsmith_sub_i32(2147483647, 25493), _wgslsmith_mod_i32(u_input.c.x, 1))), abs(u_input.c.xyw))) {
                default: {
                    var var_3 = Struct_1(vec2<u32>(var_1.a.x, 1u), _wgslsmith_div_f32(126.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(4294967295u, 12u)])) * _wgslsmith_f_op_f32(arg_1.b + _wgslsmith_f_op_f32(-arg_1.b)))));
                    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 12u)] * -768.0)), global0[_wgslsmith_index_u32(arg_0.a.x, 12u)])))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1158.0 * _wgslsmith_f_op_f32(f32(-1.0) * -133.0)) + -166.0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-550.0))))));
                }
            }
            var var_3 = !vec3<bool>(any(!(!vec3<bool>(false, false, true))), false, !true);
            return global1.x;
        }
    }
    var_1 = Struct_2(_wgslsmith_mod_vec4_u32(~_wgslsmith_sub_vec4_u32(~vec4<u32>(arg_2, 86859u, arg_3.b, 29469u), ~vec4<u32>(arg_2, 1u, 4294967295u, u_input.b)), vec4<u32>(46769u, max(4294967295u, ~u_input.b), func_5().x, arg_2)), u_input.b);
    return u_input.c.x | _wgslsmith_add_i32(_wgslsmith_mod_i32(1 << (arg_3.b % 32u), -u_input.c.x) & _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(u_input.c.yxw, u_input.c.yyz), -u_input.c.xyx), reverseBits(firstTrailingBit(u_input.c.x)) << (~var_1.b % 32u));
}

fn func_3(arg_0: i32) -> i32 {
    loop {
        if (LOOP_COUNTERS[2u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
    }
    switch (func_8(func_4(1), Struct_1(~_wgslsmith_add_vec2_u32(vec2<u32>(5655u, u_input.b), vec2<u32>(15318u, 1u)) ^ ~max(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(u_input.b, 4294967295u)), global0[_wgslsmith_index_u32(u_input.b, 12u)]), 1u, func_4(arg_0))) {
        case 1: {
            switch (global1.x) {
                default: {
                }
            }
            loop {
                if (LOOP_COUNTERS[3u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
                global1 = _wgslsmith_sub_vec3_i32(firstLeadingBit(_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(-8179, global1.x, -1)), firstLeadingBit(vec3<i32>(global1.x, u_input.a, 22233)), u_input.c.xxy), firstTrailingBit(_wgslsmith_mult_vec3_i32(u_input.c.xyz, u_input.c.wzz)))), max(vec3<i32>(global1.x | ~16370, u_input.c.x, arg_0), u_input.c.xwx));
                let var_0 = _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(u_input.b, 12u)]));
                var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-183.0 * var_0), _wgslsmith_f_op_f32(trunc(1401.0)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(43392u, 12u)] + var_0), global0[_wgslsmith_index_u32(105000u, 12u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1438.0, global0[_wgslsmith_index_u32(u_input.b, 12u)], -373.0, var_0))))) * _wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 102749u, u_input.b), vec4<u32>(44677u, u_input.b, u_input.b, u_input.b)), 12u)], var_0, 672.0, global0[_wgslsmith_index_u32(~4294967295u, 12u)]), vec4<f32>(-2746.0, _wgslsmith_f_op_f32(abs(var_0)), _wgslsmith_f_op_f32(f32(-1.0) * -396.0), var_0))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(385.0, -1034.0, -1108.0, global0[_wgslsmith_index_u32(1u, 12u)]) - vec4<f32>(var_0, global0[_wgslsmith_index_u32(u_input.b, 12u)], global0[_wgslsmith_index_u32(38009u, 12u)], var_0))))))));
                var var_2 = !vec4<bool>(!(_wgslsmith_dot_vec4_i32(vec4<i32>(3140, u_input.c.x, arg_0, -5096), u_input.c) <= arg_0), all(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))), !(_wgslsmith_f_op_f32(var_0 - var_1.x) == _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 12u)])), false | false);
                var var_3 = Struct_2(~vec4<u32>(~4294967295u, u_input.b, ~0u, u_input.b) << ((func_5() << (~(~vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)) % vec4<u32>(32u))) % vec4<u32>(32u)), func_6(max(vec4<u32>(1u, 25682u, 4294967295u, 0u) & vec4<u32>(4294967295u, u_input.b, 29162u, 0u), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(51063u, u_input.b, u_input.b, 52365u), vec4<u32>(u_input.b, 1u, u_input.b, u_input.b), vec4<u32>(u_input.b, 35967u, 1u, 0u))), Struct_1(~(~vec2<u32>(4294967295u, u_input.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1501.0) * _wgslsmith_f_op_f32(942.0 * global0[_wgslsmith_index_u32(u_input.b, 12u)]))), var_2.xx, _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(u_input.b, 12u)], 1000.0))));
            }
        }
        default: {
            loop {
                if (LOOP_COUNTERS[4u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
                let var_0 = vec3<u32>(_wgslsmith_add_u32(u_input.b, ~firstTrailingBit(0u) & _wgslsmith_div_u32(1u, 494u)), ~15276u, ~u_input.b);
                let var_1 = abs(global1.xx);
                var var_2 = Struct_1(~var_0.yy, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~u_input.b), u_input.b & u_input.b) ^ ~(~u_input.b), 12u)]);
            }
            var var_0 = vec4<bool>(!any(vec4<bool>(true, false, !false, !true)), select(all(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true))), true, true), !select(select(true || false, any(vec4<bool>(false, false, false, false)), any(vec4<bool>(true, true, false, false))), all(vec4<bool>(true, false, true, false)), !false), false);
            let var_1 = func_4(select(~_wgslsmith_clamp_i32(arg_0 | global1.x, -u_input.a, select(u_input.c.x, arg_0, var_0.x)), u_input.a, false));
        }
    }
    global0 = array<f32, 12>();
    for (var var_0 = 1; var_0 > 10676; global1 = vec3<i32>(9367, ~(global1.x ^ func_8(Struct_2(vec4<u32>(4294967295u, u_input.b, 51141u, u_input.b), u_input.b), Struct_1(vec2<u32>(u_input.b, u_input.b), 1140.0), 0u | 0u, Struct_2(vec4<u32>(u_input.b, u_input.b, 4294967295u, 0u), u_input.b))), 0)) {
        if (LOOP_COUNTERS[5u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
        break;
    }
    var var_0 = Struct_1(vec2<u32>(_wgslsmith_mod_u32(u_input.b, u_input.b), ~u_input.b ^ _wgslsmith_div_u32(63599u, 17905u)) & vec2<u32>(u_input.b, ~34114u), global0[_wgslsmith_index_u32(1u >> ((4294967295u | u_input.b) % 32u), 12u)]);
    return func_8(Struct_2(~(firstLeadingBit(vec4<u32>(u_input.b, u_input.b, 0u, 61739u)) << ((vec4<u32>(var_0.a.x, var_0.a.x, 0u, 45588u) << (vec4<u32>(var_0.a.x, u_input.b, 10193u, 0u) % vec4<u32>(32u))) % vec4<u32>(32u))), ~(~(~4294967295u))), Struct_1(vec2<u32>(4294967295u, u_input.b & func_7(Struct_2(vec4<u32>(u_input.b, 4294967295u, 33363u, var_0.a.x), u_input.b)).b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.b, _wgslsmith_f_op_f32(trunc(1774.0)))))), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(var_0.a.x, var_0.a.x) >> ((var_0.a.x | 0u) % 32u), (u_input.b >> (0u % 32u)) << ((23784u << (var_0.a.x % 32u)) % 32u), u_input.b, ~37456u), countOneBits(vec4<u32>(u_input.b, 1u, 23814u, 1u)) >> (~firstTrailingBit(vec4<u32>(var_0.a.x, 1u, 1u, u_input.b)) % vec4<u32>(32u))), Struct_2(~vec4<u32>(firstLeadingBit(u_input.b), var_0.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(6022u, var_0.a.x)), 75083u), 4294967295u << (abs(~30170u) % 32u)));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: vec2<bool>) -> vec4<bool> {
    global0 = array<f32, 12>();
    loop {
        if (LOOP_COUNTERS[6u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
        global0 = array<f32, 12>();
        let var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(countOneBits(u_input.b), arg_1.a.x, 4294967295u, 3241u), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 4294967295u, min(_wgslsmith_clamp_u32(1u, 6956u, 4092u), arg_1.a.x), abs(17018u)), arg_1.a ^ arg_1.a, ~vec4<u32>(u_input.b, ~arg_2.x, 1u, u_input.b)));
        global0 = array<f32, 12>();
    }
    loop {
        if (LOOP_COUNTERS[7u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
        let var_0 = vec4<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(-2147483648, -2147483647 ^ func_3(-7665)), ~(~_wgslsmith_dot_vec4_i32(u_input.c, u_input.c))), _wgslsmith_mod_i32(_wgslsmith_sub_i32((0 ^ -8370) & (i32(-1) * -42714), 21351 >> (min(4294967295u, 1u) % 32u)), u_input.c.x), -_wgslsmith_clamp_i32(firstTrailingBit(_wgslsmith_mod_i32(0, global1.x)), firstTrailingBit(u_input.a), -(~global1.x)), global1.x << ((u_input.b & 29181u) % 32u));
    }
    loop {
        if (LOOP_COUNTERS[8u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
        let var_0 = Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(~4294967295u, ~70445u), vec2<u32>(~arg_1.b, 2337u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -552.0) - global0[_wgslsmith_index_u32((10617u << (65206u % 32u)) << (_wgslsmith_mod_u32(arg_1.b, arg_2.x) % 32u), 12u)]), global0[_wgslsmith_index_u32(~arg_1.a.x, 12u)]));
        let var_1 = false;
        var var_2 = _wgslsmith_f_op_f32(max(724.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-577.0, global0[_wgslsmith_index_u32(4294967295u, 12u)])) + _wgslsmith_div_f32(-1101.0, var_0.b)))))));
        if (true) {
            var var_3 = arg_1;
        }
        var_2 = _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(~(~arg_2.x), 12u)], _wgslsmith_f_op_f32(f32(-1.0) * -959.0), (-(-20505 << (15134u % 32u)) & 2147483647) == (i32(-1) * -51014)));
    }
    global0 = array<f32, 12>();
    return vec4<bool>(any(vec4<bool>(~u_input.a < -u_input.c.x, any(select(vec2<bool>(arg_0.x, true), vec2<bool>(false, arg_3.x), vec2<bool>(arg_0.x, true))), arg_3.x, arg_0.x)), arg_3.x, arg_0.x, arg_3.x);
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = vec2<u32>(2067u, 57232u);
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, global0[_wgslsmith_index_u32(u_input.b, 12u)], 290.0))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, 222.0)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1550.0, 720.0, arg_0), vec3<f32>(arg_0, global0[_wgslsmith_index_u32(4294967295u, 12u)], arg_0), vec3<bool>(true, true, true)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1327.0, 1036.0, arg_0) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, global0[_wgslsmith_index_u32(16066u, 12u)], arg_0))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-766.0, -158.0, arg_0))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, global0[_wgslsmith_index_u32(u_input.b, 12u)], global0[_wgslsmith_index_u32(4294967295u, 12u)])), vec3<f32>(arg_0, 101.0, -153.0))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(var_0.x, 12u)])), arg_0) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(992.0, arg_0, arg_0))))))), vec3<bool>(any(select(vec4<bool>(false, false, false, false), func_2(vec3<bool>(true, false, true), Struct_2(vec4<u32>(37057u, 4294967295u, u_input.b, 6000u), var_0.x), vec3<u32>(4294967295u, 1u, u_input.b), vec2<bool>(true, true)), 43446u >= 10501u)), true, !(!(global1.x < 66832)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1869.0 + 229.0) + -820.0)), global0[_wgslsmith_index_u32(~var_0.x ^ u_input.b, 12u)], -108.0, _wgslsmith_f_op_f32(arg_0 + arg_0))));
    switch (_wgslsmith_add_i32(19397, global1.x)) {
        case -20917: {
            if (any(!vec3<bool>(all(!vec4<bool>(true, true, true, true)), 607.0 > 353.0, !any(vec4<bool>(true, false, false, true))))) {
                var var_3 = func_7(Struct_2(vec4<u32>(min(_wgslsmith_sub_u32(var_0.x, 14720u), var_0.x), 4294967295u, 49270u, var_0.x), func_4(3418).a.x));
            }
        }
        case 1: {
            for (; !(!all(vec3<bool>(!true, !true, false))); ) {
                if (LOOP_COUNTERS[9u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
                var var_3 = Struct_1(~vec2<u32>(~(~4294967295u), ~u_input.b << (var_0.x % 32u)), 1522.0);
                global1 = ~(-u_input.c.wyx);
                let var_4 = Struct_2(_wgslsmith_div_vec4_u32(~reverseBits(vec4<u32>(var_0.x, 0u, 65091u, 4938u)), ~vec4<u32>(4294967295u ^ var_0.x, var_0.x & 1u, ~35963u, _wgslsmith_sub_u32(0u, var_3.a.x))), ~u_input.b);
                global1 = u_input.c.yww;
                var var_5 = func_3(-(~31008)) ^ 38349;
            }
            loop {
                if (LOOP_COUNTERS[10u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
            }
            loop {
                if (LOOP_COUNTERS[11u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
                global0 = array<f32, 12>();
                var var_3 = Struct_1(_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(var_0, ~_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.x, u_input.b), var_0)), _wgslsmith_div_vec2_u32(var_0, ~var_0) & var_0), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-989.0, global0[_wgslsmith_index_u32(40064u, 12u)]))) - var_2.x))));
                let var_4 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(f32(-1.0) * -1885.0)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_3.b + var_1.x))), 3562u >= 44940u)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 * var_2.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1970.0 + 921.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-691.0 * var_2.x)), func_2(vec3<bool>(true, true, false), func_7(Struct_2(vec4<u32>(1u, 15034u, 48339u, var_0.x), 4294967295u)), ~vec3<u32>(u_input.b, u_input.b, 0u), vec2<bool>(true, false)).x))));
                continue;
            }
            if (select(any(vec3<bool>(!all(vec4<bool>(false, false, false, true)), !all(vec2<bool>(false, true)), !false)), false, any(func_2(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), !vec3<bool>(true, true, false)), Struct_2(vec4<u32>(0u, var_0.x, 4294967295u, u_input.b) | vec4<u32>(0u, u_input.b, u_input.b, u_input.b), func_4(global1.x).a.x), vec3<u32>(u_input.b, ~u_input.b, reverseBits(40355u)), select(!vec2<bool>(true, false), vec2<bool>(false, false), 48903u <= u_input.b)).yy))) {
                global0 = array<f32, 12>();
                let var_3 = Struct_1(~(~func_5().zy), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-3060.0, _wgslsmith_f_op_f32(f32(-1.0) * -382.0)))));
                var var_4 = vec3<bool>((any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), true)) != (_wgslsmith_div_f32(338.0, var_2.x) < _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_3.a.x, 12u)]))) || select(all(!vec2<bool>(false, true)), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false)), all(!vec3<bool>(false, false, false))), false, false);
                var var_5 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(var_3.b, -1618.0)))), _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(sign(var_2.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-540.0 * arg_0)))))));
                var var_6 = var_1.x;
            }
            loop {
                if (LOOP_COUNTERS[12u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
            }
        }
        default: {
            if (func_2(select(!vec3<bool>(any(vec4<bool>(false, true, true, true)), func_2(vec3<bool>(false, true, false), Struct_2(vec4<u32>(u_input.b, var_0.x, 0u, 1u), u_input.b), vec3<u32>(var_0.x, 1u, 6513u), vec2<bool>(false, false)).x, false), vec3<bool>(all(!vec4<bool>(true, true, true, true)), !true, -u_input.c.x <= firstLeadingBit(1)), select(!vec3<bool>(true, false, true), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true), _wgslsmith_clamp_u32(var_0.x, var_0.x, u_input.b) == func_5().x)), func_4(~((-66065 & -3575) >> (abs(30019u) % 32u))), func_7(Struct_2(vec4<u32>(min(u_input.b, 87702u), 1u & u_input.b, var_0.x, 0u), ~(~69386u))).a.yyx, !(!(!vec2<bool>(true, false)))).x) {
                global1 = ~(-vec3<i32>(select(~global1.x, global1.x >> (0u % 32u), true), ~global1.x, 0));
                let var_3 = max(~u_input.c, select(_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_div_i32(global1.x, global1.x), _wgslsmith_div_i32(0, -2147483648), abs(-2147483648), 1), u_input.c, select(_wgslsmith_clamp_vec4_i32(u_input.c, u_input.c, vec4<i32>(u_input.a, u_input.c.x, global1.x, 1)), u_input.c, any(vec4<bool>(true, true, false, true)))), ~max(u_input.c, select(vec4<i32>(-39626, u_input.c.x, global1.x, 1), u_input.c, vec4<bool>(true, true, true, true))), !(!(!false))));
                var var_4 = ~(func_5().zxw >> (vec3<u32>(18190u, countOneBits(~9715u), abs(~0u)) % vec3<u32>(32u)));
                var var_5 = select(all(vec4<bool>(true, any(!vec3<bool>(false, false, true)), (1 | var_3.x) != var_3.x, any(select(vec2<bool>(true, true), vec2<bool>(true, false), true)))), false, false);
            }
            if (any(!vec3<bool>(true || false, true, false)) | all(func_2(vec3<bool>(any(vec2<bool>(false, true)), false, true), func_7(Struct_2(vec4<u32>(6022u, u_input.b, 11694u, u_input.b), u_input.b)), vec3<u32>(abs(17345u), ~0u, max(u_input.b, u_input.b)), !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false))).wz)) {
                return Struct_1(~vec2<u32>(40859u, func_7(func_4(u_input.c.x)).b), -1848.0);
            }
            var var_3 = !(!(!vec3<bool>(all(vec2<bool>(false, true)), false, !false)));
        }
    }
    let var_3 = vec4<bool>(all(vec3<bool>(!(!false), any(vec2<bool>(true, true)), all(!vec4<bool>(false, false, false, true)))), select(any(vec4<bool>(true, false, false, false)) || any(!vec2<bool>(true, false)), false, all(vec3<bool>(var_1.x >= var_1.x, u_input.b == var_0.x, !true))), true, !any(func_2(!vec3<bool>(false, false, true), Struct_2(vec4<u32>(var_0.x, 0u, u_input.b, var_0.x), 1u), vec3<u32>(4676u, 0u, 34085u), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true))).zxw));
    return Struct_1(vec2<u32>(_wgslsmith_dot_vec3_u32(abs(~vec3<u32>(0u, 4294967295u, 1u)), vec3<u32>(75229u, 9670u << (var_0.x % 32u), 87328u)), select(~4294967295u, 0u, !all(var_3))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.x))))));
}

fn func_9(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    loop {
        if (LOOP_COUNTERS[13u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
        let var_0 = !(arg_3.a.x < arg_3.a.x);
        switch (global1.x) {
            case 0: {
                continue;
            }
            case -19410: {
                var var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_3.b, arg_2.b, _wgslsmith_f_op_f32(trunc(arg_0.b))))))));
                global1 = firstTrailingBit(arg_1.zwx);
                var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-396.0, 717.0, -738.0))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_3.b), 373.0, 1474.0) - vec3<f32>(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(arg_3.a.x, 12u)], -166.0)), _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(arg_3.a.x, 12u)], -888.0)), _wgslsmith_f_op_f32(min(arg_2.b, -130.0))))) * vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x * arg_0.b), _wgslsmith_div_f32(-871.0, -822.0)), arg_0.b)), -1178.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(890.0, -977.0)) + global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_3.a.x, arg_3.a.x) & _wgslsmith_add_u32(arg_0.a.x, arg_2.a.x), 12u)])));
                var var_2 = select(-1, u_input.c.x, !any(vec3<bool>(var_0, all(vec3<bool>(false, var_0, false)), all(vec3<bool>(var_0, true, false)))));
                var var_3 = arg_3.a.x;
            }
            case 3810: {
                var var_1 = arg_2;
                continue;
            }
            case 2147483647: {
                continue;
            }
            default: {
                let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(arg_3.b, 687.0))))))));
                let var_2 = -u_input.c;
                continue;
            }
        }
        var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b) * _wgslsmith_f_op_f32(exp2(-1476.0))), 747.0, _wgslsmith_f_op_f32(exp2(-1631.0))))));
        switch (u_input.a) {
            case 17921: {
            }
            case 2147483647: {
            }
            case -52629: {
                var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1961.0, -632.0, 143.0))))));
                let var_2 = Struct_1(vec2<u32>(abs(arg_3.a.x & 19979u), 1u) & arg_2.a, _wgslsmith_f_op_f32(select(-1000.0, var_1.x, var_0)));
                global0 = array<f32, 12>();
            }
            default: {
                global0 = array<f32, 12>();
                var var_2 = Struct_1(~vec2<u32>(25360u, 0u), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1855.0)) + 394.0)))));
            }
        }
        if (all(vec2<bool>(all(select(vec3<bool>(var_0, var_0, true), vec3<bool>(false, var_0, false), var_0)) && true, all(!vec3<bool>(var_0, true, true))))) {
            break;
        }
    }
    let var_0 = vec3<u32>(~func_6(max(~vec4<u32>(u_input.b, 1u, 53065u, 4294967295u), vec4<u32>(35240u, arg_3.a.x, arg_0.a.x, u_input.b)), arg_2, func_2(!vec3<bool>(false, false, true), func_4(34120), vec3<u32>(arg_2.a.x, 22322u, arg_3.a.x), vec2<bool>(true, false)).yw, arg_3.b), 31084u, ~(~(~(~arg_3.a.x))));
    var var_1 = abs(1);
    global1 = -(~vec3<i32>(i32(-1) * -18773, countOneBits(1), u_input.a));
    for (var var_2 = -2147483648; ; var_2 -= 1) {
        if (LOOP_COUNTERS[14u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
        loop {
            if (LOOP_COUNTERS[15u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
            global0 = array<f32, 12>();
            var var_3 = ~(~u_input.c.wx);
            global1 = vec3<i32>(~_wgslsmith_mult_i32(var_3.x, abs(max(var_3.x, u_input.c.x))), 2147483647, ~arg_1.x);
        }
    }
    return Struct_1(vec2<u32>(11291u, arg_2.a.x | max(arg_2.a.x, arg_2.a.x)) >> (arg_3.a % vec2<u32>(32u)), _wgslsmith_f_op_f32(exp2(-1021.0)));
}

fn func_10(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec4<bool>, arg_3: Struct_2) -> vec4<f32> {
    switch (-43504) {
        default: {
            let var_0 = func_4(max(min(-1, arg_1.x), (countOneBits(global1.x) | -1) >> (arg_0.a.x % 32u)));
        }
    }
    if (2625.0 >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -664.0)) - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~(~30687u), 12u)] * global0[_wgslsmith_index_u32(~(~u_input.b), 12u)]))) {
        switch (_wgslsmith_div_i32(-1, abs(u_input.a))) {
            case 1: {
                let var_0 = arg_2.zx;
                global1 = vec3<i32>(func_8(func_7(func_4(u_input.c.x)), Struct_1(~countOneBits(arg_3.a.xy), 723.0), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~arg_0.a, vec2<u32>(arg_0.a.x, u_input.b)), 9404u), func_7(arg_3)), _wgslsmith_mult_i32(firstTrailingBit(arg_1.x), _wgslsmith_sub_i32(-countOneBits(u_input.c.x), 1)), 1);
                var var_1 = min(-_wgslsmith_mult_vec3_i32(u_input.c.zwy, arg_1), -u_input.c.wzw);
            }
            case 0: {
                global1 = u_input.c.zwz;
                var var_0 = func_7(arg_3);
                let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1042.0, global0[_wgslsmith_index_u32(94864u, 12u)], -952.0, _wgslsmith_f_op_f32(-1584.0))) * vec4<f32>(658.0, _wgslsmith_f_op_f32(arg_0.b - arg_0.b), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-103.0 - 608.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) - global0[_wgslsmith_index_u32(select(0u, 4294967295u, true), 12u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) - global0[_wgslsmith_index_u32(18113u, 12u)]))));
            }
            default: {
                var var_0 = u_input.c.wwz;
                var_0 = u_input.c.yxy;
                let var_1 = func_9(Struct_1(~(~_wgslsmith_mod_vec2_u32(vec2<u32>(48261u, arg_3.b), arg_3.a.xw)), _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(92394u | _wgslsmith_mult_u32(0u, 101361u), 12u)]))), u_input.c, arg_0, func_1(arg_0.b));
                var var_2 = u_input.c;
                var var_3 = func_4(-34539);
            }
        }
        loop {
            if (LOOP_COUNTERS[16u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
            var var_0 = _wgslsmith_div_u32(arg_3.b << (33708u % 32u), arg_3.b);
        }
    }
    let var_0 = !any(vec3<bool>(all(arg_2), arg_2.x, !arg_2.x));
    if (true) {
        let var_1 = -28388;
        loop {
            if (LOOP_COUNTERS[17u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
            continue;
        }
    }
    return vec4<f32>(global0[_wgslsmith_index_u32(arg_3.b, 12u)], _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.b))), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_0.a.x, 12u)] - _wgslsmith_f_op_f32(-1645.0 - -2059.0)), 990.0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_10(func_9(Struct_1(_wgslsmith_mod_vec2_u32(vec2<u32>(65909u, u_input.b), vec2<u32>(u_input.b, u_input.b)), _wgslsmith_f_op_f32(min(-1000.0, global0[_wgslsmith_index_u32(u_input.b, 12u)]))), u_input.c, func_1(_wgslsmith_f_op_f32(sign(-1134.0))), Struct_1(~vec2<u32>(4294967295u, 3812u), global0[_wgslsmith_index_u32(u_input.b, 12u)])), max(u_input.c.wyx, _wgslsmith_mult_vec3_i32(-u_input.c.xzz, ~u_input.c.zwx)), vec4<bool>(~1u >= u_input.b, !(!false), !true, true && (true & false)), func_7(Struct_2(~vec4<u32>(0u, u_input.b, u_input.b, 0u), func_1(global0[_wgslsmith_index_u32(12121u, 12u)]).a.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, 8708u ^ _wgslsmith_mult_u32(u_input.b, ~52572u));
}

