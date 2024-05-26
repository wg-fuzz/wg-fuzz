// {"0:0":[112,126,80,77,168,48,131,163,163,20,199,200,92,99,218,102,250,248,84,139,245,153,187,241,178,190,158,108,95,89,174,200]}
// Seed: 14651557136242273022

struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
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

var<private> global0: Struct_2 = Struct_2(vec3<bool>(true, false, true), vec4<bool>(false, true, false, true), Struct_1(2147483647, vec3<u32>(36980u, 1u, 20876u), 44306u, 31339u));

var<private> global1: Struct_1 = Struct_1(-52265, vec3<u32>(21049u, 1u, 409u), 31841u, 45150u);

var<private> global2: array<vec4<f32>, 14> = array<vec4<f32>, 14>(vec4<f32>(297.0, -1461.0, -231.0, -352.0), vec4<f32>(1898.0, -377.0, -501.0, -2097.0), vec4<f32>(-577.0, -1834.0, -2059.0, -941.0), vec4<f32>(-884.0, 1348.0, 1000.0, 757.0), vec4<f32>(216.0, -1415.0, -1621.0, 2050.0), vec4<f32>(610.0, -1339.0, 1447.0, 329.0), vec4<f32>(-1742.0, -796.0, -1798.0, 1000.0), vec4<f32>(-696.0, -295.0, -992.0, -1247.0), vec4<f32>(1000.0, -353.0, -498.0, 1613.0), vec4<f32>(-394.0, -243.0, 441.0, 1200.0), vec4<f32>(416.0, -1169.0, 223.0, 359.0), vec4<f32>(-171.0, 2679.0, 641.0, -1000.0), vec4<f32>(2045.0, 770.0, 840.0, 535.0), vec4<f32>(-380.0, -1000.0, 1269.0, 1754.0));

var<private> global3: bool;

var<private> global4: array<vec4<bool>, 6>;

var<private> LOOP_COUNTERS: array<u32, 19>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || ((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2), ((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || (((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_4(arg_0: vec3<i32>, arg_1: u32, arg_2: vec2<u32>) -> i32 {
    let var_0 = _wgslsmith_mod_i32(-60695, ~1);
    var var_1 = vec2<bool>(false, !global0.b.x);
    let var_2 = Struct_2(vec3<bool>(!(-139.0 == _wgslsmith_div_f32(-632.0, 2263.0)), false, true), select(global0.b, vec4<bool>(false, global0.b.x, var_1.x, false), !all(select(vec3<bool>(var_1.x, global0.b.x, global0.a.x), global0.b.xxz, vec3<bool>(false, true, false)))), global0.c);
    for (var var_3 = 28539; ; global4 = array<vec4<bool>, 6>()) {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
    }
    global2 = array<vec4<f32>, 14>();
    return global1.a;
}

fn func_6(arg_0: vec3<u32>) -> u32 {
    let var_0 = _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(abs(_wgslsmith_add_vec3_i32(vec3<i32>(0, global1.a, -1) >> (vec3<u32>(global1.b.x, 73065u, 35460u) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(u_input.a, vec3<i32>(-2147483648, global0.c.a, -2147483648), vec3<i32>(3377, u_input.b, -52727)))), max(-countOneBits(vec3<i32>(52303, -1, u_input.a.x)), u_input.a)), _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_div_i32(2925, global1.a), min(-u_input.c.x, abs(global0.c.a)), 2147483647), _wgslsmith_mult_vec3_i32(-(~vec3<i32>(u_input.c.x, u_input.b, -3184)), -(~vec3<i32>(global1.a, global0.c.a, 5838)))));
    global1 = global0.c;
    global1 = Struct_1(firstTrailingBit(~(~global1.a) | u_input.c.x), ~arg_0, _wgslsmith_sub_u32(global0.c.d, global0.c.c), ~(~_wgslsmith_add_u32(abs(global1.b.x), 4294967295u >> (arg_0.x % 32u))));
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1231.0)), 1059.0) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(1000.0)), _wgslsmith_f_op_f32(select(187.0, -424.0, global0.b.x)))))));
    loop {
        if (LOOP_COUNTERS[1u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
        global4 = array<vec4<bool>, 6>();
        var var_2 = Struct_1(-7687, ~global0.c.b, 0u, _wgslsmith_add_u32(~26762u, ~(~arg_0.x)));
        break;
    }
    return global1.c;
}

fn func_5(arg_0: vec3<f32>) -> vec2<i32> {
    var var_0 = 19625u;
    let var_1 = global0.c;
    global0 = Struct_2(!vec3<bool>(false, global0.b.x, _wgslsmith_add_i32(-2147483648, 29093) != global0.c.a), vec4<bool>(true, !true, false, false), Struct_1(u_input.b, ~vec3<u32>(20839u, global0.c.d, var_1.b.x), func_6(min(var_1.b, ~global1.b)), global0.c.c));
    switch (_wgslsmith_dot_vec3_i32(select(-(_wgslsmith_mod_vec3_i32(u_input.a, vec3<i32>(12735, var_1.a, u_input.c.x)) ^ firstLeadingBit(u_input.a)), vec3<i32>((u_input.c.x & global1.a) << (~global1.c % 32u), var_1.a, ~1), global0.b.xzy), (((vec3<i32>(global1.a, global1.a, -6019) << (var_1.b % vec3<u32>(32u))) & _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, global0.c.a, global1.a), u_input.a)) ^ u_input.a) >> (vec3<u32>(~(global0.c.b.x ^ 1u), ~global0.c.b.x, global1.d) % vec3<u32>(32u)))) {
        case 0: {
            for (var var_2 = 22796; var_2 >= 0; var_2 -= 1) {
                if (LOOP_COUNTERS[2u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
                var var_3 = Struct_2(!(!(!global0.b.ywy)), !global4[_wgslsmith_index_u32(~(~(~72751u)), 6u)], Struct_1(~_wgslsmith_clamp_i32(reverseBits(global0.c.a), _wgslsmith_dot_vec3_i32(u_input.a, u_input.a), firstTrailingBit(0)), var_1.b, var_1.c & 28753u, ~_wgslsmith_mult_u32(func_6(global0.c.b), ~global1.c)));
                let var_4 = _wgslsmith_f_op_f32(step(arg_0.x, -347.0));
                let var_5 = vec3<bool>(false, var_3.a.x, !(!any(vec2<bool>(global0.a.x, global0.b.x))));
                global1 = Struct_1(0, vec3<u32>(min(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.b.x, 0u, 42602u, var_1.d), vec4<u32>(4821u, var_3.c.b.x, 26374u, 56600u)), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global0.c.c, var_1.c), var_3.c.b), 0u)), 13330u, 13255u), 9233u, ~2466u);
                var var_6 = _wgslsmith_f_op_vec2_f32(arg_0.xz * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(1234.0)), 2182.0), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1375.0, 1412.0) - vec2<f32>(1358.0, -1177.0)))), arg_0.xx, !vec2<bool>(global0.b.x, false && false))));
            }
            var var_2 = vec3<i32>(u_input.c.x, 1, 1) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, _wgslsmith_mod_u32(global1.d, 1u), ~47670u), (min(global0.c.b, vec3<u32>(15052u, global1.c, 4134u)) ^ (vec3<u32>(4294967295u, global0.c.c, 12954u) ^ vec3<u32>(var_1.d, 21079u, 0u))) >> (vec3<u32>(26365u, 4294967295u, _wgslsmith_mult_u32(global1.b.x, 34744u)) % vec3<u32>(32u)), global0.c.b) % vec3<u32>(32u));
        }
        case 1: {
            return abs(countOneBits(u_input.c));
        }
        default: {
            loop {
                if (LOOP_COUNTERS[3u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
                let var_2 = Struct_2(global0.a, global0.b, global0.c);
            }
            let var_2 = select(!global0.a, global0.b.wzx, global0.a);
            var var_3 = Struct_2(var_2, global0.b, Struct_1(countOneBits(i32(-1) * -2147483648) ^ (i32(-1) * -2147483648), var_1.b, global0.c.d, reverseBits(abs(global1.b.x & 4294967295u))));
        }
    }
    var var_2 = arg_0.x;
    return vec2<i32>(max(func_4(_wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(15689, var_1.a, global0.c.a)), u_input.a), _wgslsmith_mod_u32(max(global1.b.x, var_1.d), countOneBits(var_1.d)), _wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(0u, 56887u)), global1.b.xx)), global1.a), 2147483647);
}

fn func_3() -> i32 {
    loop {
        if (LOOP_COUNTERS[4u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
        let var_0 = true;
        global3 = -2342 >= u_input.c.x;
        loop {
            if (LOOP_COUNTERS[5u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
        }
    }
    let var_0 = _wgslsmith_clamp_vec2_i32(select(-vec2<i32>(14566 ^ global0.c.a, func_4(u_input.a, 58375u, global0.c.b.yz)), func_5(vec3<f32>(_wgslsmith_f_op_f32(422.0 + 645.0), 777.0, 493.0)), global0.a.x), reverseBits(select(_wgslsmith_add_vec2_i32(vec2<i32>(-13550, global0.c.a), vec2<i32>(global0.c.a, 2147483647) << (global1.b.zy % vec2<u32>(32u))), ~u_input.c, global0.a.x)), u_input.c | u_input.a.zy);
    var var_1 = Struct_2(!vec3<bool>((true && global0.b.x) | global0.a.x, any(!global0.b.yy), global0.a.x), global0.b, global0.c);
    var var_2 = select(_wgslsmith_add_vec3_u32(var_1.c.b, ~global0.c.b), abs(~(global0.c.b & global0.c.b)) << (~reverseBits(global0.c.b) % vec3<u32>(32u)), select(global0.b.xzw, vec3<bool>(_wgslsmith_mod_u32(var_1.c.c, global0.c.b.x) >= ~30722u, _wgslsmith_f_op_f32(round(-154.0)) < 1501.0, all(global0.a)), global0.a));
    let var_3 = ~vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(81915u, 22018u), ~var_2.x, 1u) << (93855u % 32u), global1.d, _wgslsmith_dot_vec3_u32(vec3<u32>(min(1u, var_2.x), 8157u, 1830u), ~vec3<u32>(var_2.x, global0.c.d, global1.c)));
    return 53294;
}

fn func_2() -> Struct_1 {
    let var_0 = firstLeadingBit(vec4<i32>(global1.a, _wgslsmith_div_i32(-1, _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(u_input.b, global1.a)), firstTrailingBit(u_input.c))), 41475, abs(_wgslsmith_sub_i32(global0.c.a, func_3()))));
    switch (3311) {
        case -65636: {
        }
        case -2664: {
        }
        case 0: {
        }
        case 1: {
            global3 = global0.a.x;
            let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-762.0, -557.0)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-128.0 - 1116.0)))))));
            var var_2 = global0.c;
            for (var var_3 = min(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(abs(select(vec2<i32>(0, var_0.x), var_0.yw, false)), _wgslsmith_mod_vec2_i32(vec2<i32>(global1.a, u_input.d), var_0.yw) | (u_input.c & vec2<i32>(0, -1))), var_0.wy), var_2.a); var_3 == -42953; var_3 -= 1) {
                if (LOOP_COUNTERS[6u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
                var var_4 = Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483648, ~6728, var_0.x), vec3<i32>(-var_0.x, -1, global0.c.a)) << (~6523u % 32u), ~(~reverseBits(firstTrailingBit(var_2.b))), _wgslsmith_dot_vec3_u32(var_2.b, vec3<u32>(~_wgslsmith_add_u32(1u, 23149u), ~(~global0.c.c), countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.c, var_2.b.x, var_2.c), var_2.b)))), global1.d);
                global1 = global0.c;
                break;
            }
        }
        default: {
            let var_1 = true;
            let var_2 = 0u;
            if (false & any(select(!vec4<bool>(false, false, var_1, var_1), select(!global0.b, vec4<bool>(false, false, true, false), select(global0.b, global0.b, vec4<bool>(global0.a.x, var_1, false, var_1))), var_1))) {
                return Struct_1(u_input.d | u_input.c.x, ~vec3<u32>(~1u & 12765u, _wgslsmith_mod_u32(global0.c.b.x, 4294967295u) << ((23274u & 0u) % 32u), 9821u), ~(~var_2) | firstTrailingBit(~global0.c.d), ~abs(~1u));
            }
            if (!false) {
                let var_3 = false;
                let var_4 = global1.c;
            }
            global4 = array<vec4<bool>, 6>();
        }
    }
    var var_1 = Struct_2(vec3<bool>(!global0.b.x, false & all(vec3<bool>(global0.a.x, true, false)), all(vec3<bool>(true, select(global0.b.x, global0.b.x, false), all(global0.b.xzw)))), vec4<bool>(!false, false, global0.a.x | false, !(!(global0.a.x || true))), Struct_1(global1.a, global0.c.b, global0.c.b.x, _wgslsmith_add_u32(abs(global1.d), ~1u)));
    for (; ; ) {
        if (LOOP_COUNTERS[7u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
        switch (~(-countOneBits(-func_5(vec3<f32>(-1134.0, -894.0, 1474.0)).x))) {
            case 2147483647: {
                let var_2 = 0;
                var var_3 = _wgslsmith_sub_u32(0u, _wgslsmith_clamp_u32(~0u, max(22378u, min(_wgslsmith_clamp_u32(53464u, global1.b.x, global0.c.b.x), 95404u)), ~(~global0.c.d)));
                var_1 = Struct_2(!(!var_1.b.yzz), vec4<bool>(1183.0 <= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(706.0 * 344.0))), any(vec3<bool>(!true, !false, false)), false, all(select(vec4<bool>(true, var_1.b.x, true, global0.a.x), select(var_1.b, var_1.b, vec4<bool>(true, global0.b.x, var_1.a.x, var_1.a.x)), select(global4[_wgslsmith_index_u32(4294967295u, 6u)], global4[_wgslsmith_index_u32(18744u, 6u)], var_1.b)))), Struct_1(firstLeadingBit(var_0.x), global1.b, var_1.c.b.x, ~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 58947u, global1.c, global1.d), vec4<u32>(global1.b.x, global1.d, global0.c.d, 1u)), 52885u)));
            }
            case -12364: {
            }
            default: {
                let var_2 = ~vec4<u32>(0u, ~4294967295u, 70542u, func_6(vec3<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(41085u, global0.c.c), global1.b.xz), var_1.c.b.x)));
            }
        }
        var var_2 = !(true & global0.a.x);
        let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1695.0, 498.0, 1571.0, -928.0)) - global2[_wgslsmith_index_u32(~0u, 14u)]) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1933.0, 590.0, 889.0, -1000.0)))) + global2[_wgslsmith_index_u32(~firstLeadingBit(global1.d), 14u)]);
        switch (_wgslsmith_sub_i32(2147483647, -var_0.x)) {
            case -29381: {
                var var_4 = -2147483648;
            }
            case 1: {
            }
            case 2147483647: {
                break;
            }
            case -68308: {
                global2 = array<vec4<f32>, 14>();
                global4 = array<vec4<bool>, 6>();
            }
            default: {
                var var_4 = Struct_1(var_0.x >> (~global0.c.b.x % 32u), ~var_1.c.b, ((0u ^ reverseBits(24332u)) >> ((~var_1.c.b.x | _wgslsmith_mod_u32(var_1.c.d, 368u)) % 32u)) & global0.c.b.x, ~_wgslsmith_clamp_u32(global0.c.b.x >> (_wgslsmith_mod_u32(110210u, 6275u) % 32u), 0u, 28946u));
                var_2 = !false;
            }
        }
    }
    if (any(!(!select(vec3<bool>(global0.a.x, false, var_1.b.x), var_1.a, var_1.b.x)))) {
        var var_2 = var_1.c.c;
    }
    return var_1.c;
}

fn func_1(arg_0: vec4<bool>, arg_1: u32) -> vec4<bool> {
    global1 = func_2();
    loop {
        if (LOOP_COUNTERS[8u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
        let var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(1000.0, -1026.0)))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1179.0 * 880.0), _wgslsmith_f_op_f32(-109.0 + 1926.0), any(arg_0.xzz))), _wgslsmith_f_op_f32(f32(-1.0) * -892.0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-2372.0))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1021.0) * -252.0)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-2598.0))), _wgslsmith_f_op_f32(1000.0 * _wgslsmith_f_op_f32(1455.0 + -407.0))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1389.0, _wgslsmith_f_op_f32(-1000.0)))), -611.0)));
        var var_1 = func_2();
        continue;
    }
    let var_0 = abs(arg_1);
    global0 = Struct_2(!select(select(global0.b.wwx, !arg_0.wxy, any(vec2<bool>(arg_0.x, true))), select(!global0.a, select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, false, true), arg_0.x), global0.b.www), select(global0.b.wzw, !vec3<bool>(true, global0.b.x, true), !vec3<bool>(global0.a.x, false, false))), select(!select(global0.b, vec4<bool>(true, false, arg_0.x, global0.a.x), arg_0), arg_0, false), Struct_1(global0.c.a, global0.c.b, global0.c.d, ~(~(global0.c.b.x ^ 85676u))));
    global1 = Struct_1(0, _wgslsmith_mult_vec3_u32(global1.b, ~abs(~global1.b)), countOneBits(_wgslsmith_mult_u32(_wgslsmith_div_u32(global0.c.c ^ arg_1, 16269u), ~4294967295u)), func_2().c >> (~(~arg_1) % 32u));
    return vec4<bool>(select(true, !all(!arg_0), false), -1445.0 >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-2001.0, 1000.0)) + _wgslsmith_f_op_f32(step(198.0, 1000.0)))), global0.a.x, true);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = any(func_1(vec4<bool>(!(!false), global0.b.x, global0.b.x, (false || false) & !global0.b.x), ~select(0u, min(global1.b.x, 53129u), 1383u != global0.c.c)));
    let var_0 = Struct_2(global0.a, global4[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, ~4294967295u), vec2<u32>(global1.b.x, global1.c)), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, global0.c.c, global0.c.c), vec3<u32>(1086u, global1.d, global0.c.d)), global0.c.b), global0.c.b)), 6u)], Struct_1(_wgslsmith_sub_i32(-34260, -2147483648), ~global0.c.b, ~global0.c.b.x, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(global0.c.b.x, global0.c.d, global1.d, global1.d) | vec4<u32>(global0.c.c, 0u, global0.c.d, global0.c.b.x)), vec4<u32>(global0.c.b.x, global1.c, ~4294967295u, global1.d >> (1u % 32u)))));
    switch (var_0.c.a) {
        case 20656: {
            if (true) {
                global0 = Struct_2(var_0.b.zzz, func_1(!vec4<bool>(false, func_1(global4[_wgslsmith_index_u32(12797u, 6u)], 40532u).x, var_0.a.x, true), max(global1.d, global1.c & 27804u) ^ _wgslsmith_mod_u32(0u, 74673u ^ global0.c.d)), var_0.c);
                global1 = Struct_1(var_0.c.a, _wgslsmith_sub_vec3_u32(~vec3<u32>(var_0.c.c, var_0.c.b.x, global0.c.d) << (global0.c.b % vec3<u32>(32u)), ~(~(~vec3<u32>(global1.b.x, 13781u, 4294967295u)))), max(var_0.c.d, _wgslsmith_mult_u32(global1.b.x, 16922u)), 4294967295u);
                let var_1 = var_0;
                global0 = var_0;
                var var_2 = global0.c.b;
            }
            switch (2147483647) {
                case 1872: {
                }
                case 12560: {
                    let var_1 = Struct_2(vec3<bool>(any(!(!vec3<bool>(var_0.b.x, global0.a.x, true))), any(global0.a), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1.0) * -808.0))) == _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(364.0 * 1580.0)))), !var_0.b, var_0.c);
                    var var_2 = Struct_2(!var_1.b.ywz, global0.b, var_1.c);
                    global1 = var_0.c;
                    var var_3 = Struct_1(~(-14397 | var_2.c.a), _wgslsmith_add_vec3_u32(min(_wgslsmith_mult_vec3_u32(vec3<u32>(global1.d, global1.b.x, 28693u) & global1.b, vec3<u32>(96631u, var_2.c.b.x, 20159u)), global1.b), select(func_2().b, (var_0.c.b << (global1.b % vec3<u32>(32u))) & abs(global1.b), !any(vec2<bool>(false, true)))), ~915u, countOneBits(~global0.c.c));
                }
                default: {
                    global4 = array<vec4<bool>, 6>();
                    var var_1 = var_0;
                }
            }
            for (var var_1 = 52922; var_1 == -680; var_1 -= 1) {
                if (LOOP_COUNTERS[9u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
            }
            for (; 12271u > global0.c.c; ) {
                if (LOOP_COUNTERS[10u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
                return;
            }
        }
        case -4367: {
            global0 = Struct_2(vec3<bool>(global0.a.x, _wgslsmith_mult_i32(~u_input.a.x, ~22316) > func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(229.0, -1845.0, 691.0) - vec3<f32>(466.0, 226.0, 455.0))).x, func_1(vec4<bool>(any(vec4<bool>(global0.a.x, true, global0.b.x, true)), all(vec2<bool>(false, global0.b.x)), global0.a.x, false), var_0.c.c).x), select(select(select(select(vec4<bool>(true, global0.b.x, var_0.a.x, true), vec4<bool>(false, true, true, false), global0.a.x), func_1(vec4<bool>(false, true, global0.b.x, false), global0.c.c), true), !select(vec4<bool>(global0.b.x, var_0.b.x, var_0.b.x, global0.a.x), vec4<bool>(var_0.a.x, global0.b.x, true, false), true), vec4<bool>(func_1(vec4<bool>(var_0.a.x, var_0.b.x, true, global0.a.x), var_0.c.c).x, !false, !global0.a.x, true)), vec4<bool>(any(var_0.a.yz), true, true, !(57587u <= 4294967295u)), select(true, (false != global0.b.x) | var_0.a.x, global0.b.x)), global0.c);
            var var_1 = global0.c;
            switch (_wgslsmith_add_i32(-_wgslsmith_div_i32(-1, var_1.a) << (_wgslsmith_sub_u32(~69716u, 1u ^ 4294967295u) % 32u), _wgslsmith_add_i32(-19108, firstTrailingBit(global1.a))) | var_0.c.a) {
                case 0: {
                    var var_2 = _wgslsmith_f_op_f32(-311.0 + _wgslsmith_f_op_f32(round(-579.0)));
                    global2 = array<vec4<f32>, 14>();
                    global1 = func_2();
                    global4 = array<vec4<bool>, 6>();
                }
                case -1: {
                    global1 = Struct_1(-(~firstTrailingBit(~(-50281))), global0.c.b << ((var_0.c.b ^ ~_wgslsmith_div_vec3_u32(global0.c.b, vec3<u32>(var_1.c, 1u, 4294967295u))) % vec3<u32>(32u)), 27548u << (~20028u % 32u), reverseBits(abs(_wgslsmith_add_u32(~4294967295u, var_0.c.c))));
                    global2 = array<vec4<f32>, 14>();
                    var var_2 = var_0;
                    global2 = array<vec4<f32>, 14>();
                }
                default: {
                    let var_2 = u_input.a;
                }
            }
            let var_2 = var_0;
            var var_3 = select(!global4[_wgslsmith_index_u32(1u, 6u)], var_2.b, vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1093.0)) - _wgslsmith_f_op_f32(1986.0 - 550.0)) != 1675.0, select(all(vec2<bool>(false, var_2.b.x)), !(!var_0.a.x), false), false, var_1.a != 2147483647));
        }
        case -48343: {
            switch (1) {
                case -34744: {
                    let var_1 = var_0;
                }
                case -2147483648: {
                    var var_1 = -1238.0;
                }
                case 0: {
                }
                default: {
                    let var_1 = vec2<bool>(all(func_1(vec4<bool>(4294967295u > 10656u, !false, false, global0.a.x), 105988u).yx), all(vec4<bool>(global0.a.x, func_1(!vec4<bool>(var_0.b.x, true, var_0.a.x, var_0.b.x), 4294967295u).x, false, any(vec2<bool>(var_0.b.x, global0.a.x)))));
                    global3 = !var_1.x;
                    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-460.0 - -336.0)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-777.0, -331.0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-501.0, -430.0)))))));
                    let var_3 = 12555;
                    global2 = array<vec4<f32>, 14>();
                }
            }
            global2 = array<vec4<f32>, 14>();
            global2 = array<vec4<f32>, 14>();
            switch (_wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(global1.a, select(~var_0.c.a, global0.c.a, u_input.c.x == u_input.d), _wgslsmith_dot_vec4_i32(vec4<i32>(-62919, 0, global0.c.a, -2147483648) | vec4<i32>(u_input.d, global1.a, 1, u_input.b), select(vec4<i32>(var_0.c.a, u_input.c.x, 2147483647, global0.c.a), vec4<i32>(-9551, 51163, global1.a, 0), false))), func_3()), abs(-(i32(-1) * -8243)))) {
                case -2147483648: {
                    let var_1 = global1.a;
                    var var_2 = Struct_1(abs(global0.c.a) << ((global1.d >> (~select(var_0.c.c, 23865u, true) % 32u)) % 32u), min(select(countOneBits(~vec3<u32>(var_0.c.b.x, global0.c.b.x, var_0.c.d)), _wgslsmith_mult_vec3_u32(global1.b, _wgslsmith_mod_vec3_u32(global0.c.b, global0.c.b)), select(select(var_0.b.xyz, vec3<bool>(var_0.a.x, true, global0.b.x), var_0.b.zyx), select(var_0.a, vec3<bool>(true, false, global0.a.x), var_0.b.x), select(global0.a, vec3<bool>(false, global0.a.x, global0.b.x), var_0.a.x))), global0.c.b), ~select(global1.b.x, ~global1.d, all(var_0.b.zxw) != (global0.c.a <= -2147483648)), var_0.c.b.x);
                }
                case 13455: {
                }
                case 1: {
                }
                case -2989: {
                    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-266.0, -2492.0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(861.0)), _wgslsmith_f_op_f32(step(-100.0, -1800.0)))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-750.0))), _wgslsmith_div_f32(843.0, _wgslsmith_f_op_f32(max(-1061.0, -1000.0))), 1343.0)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000.0, 1619.0, 737.0))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(509.0, -557.0, 1451.0))))));
                    var var_2 = firstTrailingBit(firstLeadingBit(max(vec2<u32>(42261u, 1u), abs(var_0.c.b.zx)))) | ~_wgslsmith_mod_vec2_u32(~(~global0.c.b.xx), global0.c.b.yx);
                    var var_3 = func_2();
                    var_3 = func_2();
                }
                default: {
                    var var_1 = global0.c;
                    let var_2 = _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(4827 | u_input.a.x, 0), ~countOneBits(var_0.c.a)), u_input.c & u_input.a.xy) << (vec2<u32>(_wgslsmith_sub_u32(69911u, min(14825u, _wgslsmith_mod_u32(global1.d, 4294967295u))), 4294967295u) % vec2<u32>(32u));
                    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-2696.0 * -675.0))) - _wgslsmith_f_op_f32(exp2(-241.0))), _wgslsmith_f_op_f32(1105.0 + _wgslsmith_f_op_f32(min(639.0, _wgslsmith_f_op_f32(step(-190.0, 578.0)))))) + 656.0);
                }
            }
        }
        case 2770: {
            global2 = array<vec4<f32>, 14>();
            var var_1 = Struct_1(i32(-1) * -22567, vec3<u32>(4294967295u, ~(~_wgslsmith_sub_u32(global1.d, global0.c.b.x)), min(abs(~global1.c), global0.c.b.x)), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~(~vec4<u32>(22227u, 4294967295u, 5741u, global1.d)), ~vec4<u32>(var_0.c.d, global1.b.x, 64052u, global0.c.d) | vec4<u32>(0u, var_0.c.d, 7103u, var_0.c.d)), _wgslsmith_sub_vec4_u32(vec4<u32>(68370u, ~global1.d, _wgslsmith_mod_u32(1u, global0.c.d), _wgslsmith_clamp_u32(global0.c.b.x, 43590u, 0u)), ~(~vec4<u32>(14379u, global0.c.b.x, 4294967295u, 1u)))), select(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(reverseBits(var_0.c.b), var_0.c.b), ~(~global0.c.b)), reverseBits(~global1.c), (_wgslsmith_f_op_f32(-1959.0) >= _wgslsmith_f_op_f32(f32(-1.0) * -862.0)) & any(vec4<bool>(global0.a.x, true, var_0.a.x, var_0.a.x))));
            let var_2 = abs(_wgslsmith_dot_vec3_i32(-(~vec3<i32>(var_1.a, -1, u_input.d)), vec3<i32>(var_1.a & var_0.c.a, -2147483648, ~var_0.c.a))) ^ -_wgslsmith_dot_vec3_i32(~(-vec3<i32>(56755, global0.c.a, 0)), vec3<i32>(~2147483647, global1.a, firstTrailingBit(u_input.b)));
        }
        default: {
            global2 = array<vec4<f32>, 14>();
            if (global0.b.x) {
                var var_1 = global0.c.b.zy;
                var var_2 = Struct_2(select(vec3<bool>(false, !(1705.0 != 416.0), true), vec3<bool>(true, var_0.a.x, (false && false) == false), func_1(vec4<bool>(-1100.0 > 1000.0, true, !true, func_1(var_0.b, var_1.x).x), var_1.x).zzz), global0.b, func_2());
                var var_3 = func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(378.0)), _wgslsmith_f_op_f32(f32(-1.0) * -166.0), _wgslsmith_f_op_f32(-1903.0)) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1060.0, 1032.0, -286.0)))))) - _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -450.0), -1000.0, _wgslsmith_div_f32(-1584.0, 1257.0)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(916.0, -1654.0, 631.0))))))).x;
            }
            global3 = true;
            loop {
                if (LOOP_COUNTERS[11u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
                let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1.0) * -724.0), _wgslsmith_f_op_f32(-140.0)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1727.0, -625.0)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -246.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-628.0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -157.0) + _wgslsmith_f_op_f32(exp2(493.0)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(2134.0, -329.0)))))));
                var var_2 = var_0;
            }
            var var_1 = var_0.b.x;
        }
    }
    loop {
        if (LOOP_COUNTERS[12u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
        break;
    }
    for (; ; ) {
        if (LOOP_COUNTERS[13u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
        for (; ; ) {
            if (LOOP_COUNTERS[14u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
            let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-570.0, -1125.0, 211.0, 1499.0), global2[_wgslsmith_index_u32(global0.c.c, 14u)], var_0.b.x)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-613.0, -418.0, -1443.0, -858.0)))))) + vec4<f32>(1000.0, -1836.0, _wgslsmith_f_op_f32(341.0 * 2075.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -167.0)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(global2[_wgslsmith_index_u32(~global1.b.x << (~global1.d % 32u), 14u)]))));
            var var_2 = func_6(global0.c.b ^ vec3<u32>(~(~0u), var_0.c.b.x, reverseBits(~var_0.c.c)));
            let var_3 = false;
            continue;
        }
    }
    let var_1 = func_2();
    switch (_wgslsmith_div_i32(-1, 2147483647)) {
        case -30433: {
            let var_2 = _wgslsmith_div_vec2_u32(select(var_0.c.b.zx, global0.c.b.yx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(-317.0)) - _wgslsmith_f_op_f32(abs(-1704.0))) > -1025.0), var_0.c.b.zy);
            global1 = var_1;
            var var_3 = global0.c;
            let var_4 = vec4<u32>(31749u, 0u, var_3.d, func_2().c);
            let var_5 = global0.b.zw;
        }
        case 1: {
            loop {
                if (LOOP_COUNTERS[15u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
                global2 = array<vec4<f32>, 14>();
                let var_2 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -2939.0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(248.0 + 1203.0) - _wgslsmith_f_op_f32(sign(-1000.0)))) - _wgslsmith_f_op_f32(-153.0)));
                continue;
            }
            loop {
                if (LOOP_COUNTERS[16u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
                break;
            }
            loop {
                if (LOOP_COUNTERS[17u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
                var var_2 = Struct_1(var_0.c.a, firstLeadingBit(global1.b), ~(1u << (1u % 32u)), func_6(vec3<u32>(~51170u, global1.b.x, var_0.c.d)));
                break;
            }
        }
        default: {
            global1 = global0.c;
            loop {
                if (LOOP_COUNTERS[18u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
                global2 = array<vec4<f32>, 14>();
                continue;
            }
            let var_2 = Struct_2(func_1(!select(!global4[_wgslsmith_index_u32(4294967295u, 6u)], func_1(global0.b, global0.c.c), 265.0 < -1015.0), var_0.c.b.x).zxz, global0.b, Struct_1(min(global0.c.a, u_input.b), vec3<u32>(~var_0.c.c, 1u, ~func_6(vec3<u32>(var_1.c, global0.c.c, global0.c.c))), 4550u & func_2().d, var_1.d));
            if (global1.a != -global0.c.a) {
                global4 = array<vec4<bool>, 6>();
            }
            var var_3 = Struct_1(~func_5(vec3<f32>(3484.0, -1000.0, 1040.0)).x << (25121u % 32u), ~(~vec3<u32>(_wgslsmith_clamp_u32(40463u, 1u, 63089u), ~global1.c, ~var_2.c.b.x)), var_2.c.d, var_2.c.c);
        }
    }
    let x = u_input.a;
    s_output = StorageBuffer(~(-u_input.c) ^ (vec2<i32>(-1, 6070) ^ abs(-u_input.c)), 817u);
}

