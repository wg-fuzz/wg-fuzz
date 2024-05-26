// {"0:0":[57,78,133,110]}
// Seed: 9131262408238705378

struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: f32,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec4<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(Struct_1(vec4<bool>(true, false, true, false), vec2<f32>(-1788.0, -983.0), 1u, false), vec3<u32>(4294967295u, 1u, 83700u), 568.0, Struct_1(vec4<bool>(false, true, false, true), vec2<f32>(-237.0, 1248.0), 0u, false), -1000.0), Struct_2(Struct_1(vec4<bool>(false, false, false, true), vec2<f32>(601.0, 347.0), 4294967295u, true), vec3<u32>(35607u, 0u, 0u), 1707.0, Struct_1(vec4<bool>(true, false, false, true), vec2<f32>(661.0, 392.0), 22118u, false), 1000.0), Struct_2(Struct_1(vec4<bool>(true, true, true, false), vec2<f32>(-1542.0, 673.0), 4294967295u, false), vec3<u32>(4294967295u, 1u, 12632u), 1776.0, Struct_1(vec4<bool>(false, false, false, false), vec2<f32>(253.0, -469.0), 51578u, false), 1368.0), Struct_2(Struct_1(vec4<bool>(true, true, false, false), vec2<f32>(1167.0, -1225.0), 23279u, false), vec3<u32>(30486u, 19230u, 4294967295u), -799.0, Struct_1(vec4<bool>(true, true, true, false), vec2<f32>(-160.0, 438.0), 53022u, true), 2031.0), Struct_2(Struct_1(vec4<bool>(false, true, false, true), vec2<f32>(1000.0, -428.0), 58793u, true), vec3<u32>(0u, 98216u, 4294967295u), 593.0, Struct_1(vec4<bool>(false, true, true, true), vec2<f32>(1495.0, -667.0), 1u, true), -2028.0), Struct_2(Struct_1(vec4<bool>(false, true, true, false), vec2<f32>(1642.0, -134.0), 26281u, false), vec3<u32>(39718u, 84599u, 10543u), 1000.0, Struct_1(vec4<bool>(false, true, false, true), vec2<f32>(479.0, -496.0), 4294967295u, false), 1401.0), Struct_2(Struct_1(vec4<bool>(false, true, true, false), vec2<f32>(1361.0, 525.0), 36343u, false), vec3<u32>(110511u, 41301u, 1u), 835.0, Struct_1(vec4<bool>(false, true, false, false), vec2<f32>(-274.0, -134.0), 39116u, false), 1422.0), Struct_2(Struct_1(vec4<bool>(false, false, false, true), vec2<f32>(1206.0, 1137.0), 1u, true), vec3<u32>(4294967295u, 43841u, 39500u), 531.0, Struct_1(vec4<bool>(false, false, true, true), vec2<f32>(-1231.0, 1340.0), 4294967295u, true), 1071.0), Struct_2(Struct_1(vec4<bool>(false, false, true, false), vec2<f32>(-679.0, 1312.0), 1u, false), vec3<u32>(28272u, 95911u, 1u), -1000.0, Struct_1(vec4<bool>(true, true, true, false), vec2<f32>(428.0, 1069.0), 4294967295u, true), -2291.0), Struct_2(Struct_1(vec4<bool>(true, true, false, true), vec2<f32>(889.0, -727.0), 1u, true), vec3<u32>(0u, 24966u, 1u), -390.0, Struct_1(vec4<bool>(false, true, false, false), vec2<f32>(-911.0, -772.0), 33948u, false), 596.0), Struct_2(Struct_1(vec4<bool>(false, true, false, false), vec2<f32>(215.0, -404.0), 1u, false), vec3<u32>(13513u, 36283u, 89610u), -360.0, Struct_1(vec4<bool>(false, true, false, false), vec2<f32>(1044.0, -976.0), 1u, false), 618.0), Struct_2(Struct_1(vec4<bool>(false, false, false, true), vec2<f32>(-789.0, 450.0), 1u, true), vec3<u32>(1336u, 4294967295u, 4294967295u), 887.0, Struct_1(vec4<bool>(true, false, true, false), vec2<f32>(900.0, -3494.0), 0u, false), -1783.0), Struct_2(Struct_1(vec4<bool>(false, false, true, false), vec2<f32>(-1503.0, -1000.0), 1u, true), vec3<u32>(0u, 0u, 4294967295u), 346.0, Struct_1(vec4<bool>(false, true, false, true), vec2<f32>(2154.0, 269.0), 4294967295u, true), 1335.0));

var<private> global1: array<vec4<f32>, 24>;

var<private> LOOP_COUNTERS: array<u32, 17>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0))) || ((a[3] < 0) || (b[3] <= 0)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || (((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_6(arg_0: bool) -> bool {
    for (var var_0 = -37211; var_0 >= -1; ) {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        break;
    }
    let var_0 = Struct_1(vec4<bool>(arg_0, any(vec4<bool>(all(vec4<bool>(false, arg_0, true, arg_0)), arg_0, any(vec3<bool>(false, false, false)), all(vec2<bool>(false, true)))), !arg_0, any(select(!vec3<bool>(arg_0, true, arg_0), vec3<bool>(true, arg_0, true), !vec3<bool>(arg_0, true, arg_0)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(496.0, _wgslsmith_f_op_f32(-1201.0 * -2591.0)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-499.0, -571.0), vec2<f32>(921.0, -1000.0))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-450.0, 578.0)))), !(true | arg_0)))), u_input.a >> ((~(~0u) | _wgslsmith_mod_u32(6706u, select(35808u, 58096u, arg_0))) % 32u), abs(abs(-31880)) == -reverseBits(_wgslsmith_mod_i32(-1, 39782)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b));
    let var_2 = global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(var_0.c, ~var_0.c), _wgslsmith_clamp_u32(_wgslsmith_add_u32(var_0.c, u_input.a), 57252u, min(u_input.a, u_input.a))), 0u)), 13u)];
    switch (-(~(~_wgslsmith_div_i32(-2147483648, max(0, -11219))))) {
        case 29475: {
            loop {
                if (LOOP_COUNTERS[1u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
            }
            let var_3 = global0[_wgslsmith_index_u32(var_2.b.x | var_2.a.c, 13u)];
            switch (-_wgslsmith_sub_i32(max(-1, reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(1, 28860), vec2<i32>(-1, -16964)))), -12588)) {
                case -25799: {
                    var var_4 = Struct_2(Struct_1(select(var_0.a, select(!var_2.d.a, var_3.d.a, var_0.d), select(select(vec4<bool>(false, arg_0, arg_0, true), var_3.d.a, vec4<bool>(var_0.a.x, false, var_2.a.a.x, var_3.d.a.x)), var_2.d.a, true == false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(-340.0, var_0.b.x)), _wgslsmith_f_op_f32(-1000.0 * var_2.e))), var_3.a.c, !all(!vec4<bool>(true, false, false, true))), firstLeadingBit(~firstTrailingBit(vec3<u32>(0u, u_input.a, var_2.b.x)) | ~var_2.b), _wgslsmith_f_op_f32(abs(1282.0)), var_3.d, var_2.c);
                    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * -1000.0)) * _wgslsmith_f_op_f32(-var_0.b.x)))));
                }
                default: {
                    var var_4 = Struct_1(vec4<bool>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-958.0 + 2012.0))) > var_2.e, var_3.a.d, any(!select(vec3<bool>(var_0.d, false, true), var_3.d.a.zxw, vec3<bool>(false, true, var_0.d))), any(var_2.d.a)), var_2.d.b, 4294967295u, !arg_0);
                    var var_5 = reverseBits(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(98053u, 38353u, 46326u, 4294967295u), vec4<u32>(var_0.c, 0u, 32346u, 6642u), vec4<u32>(4294967295u, u_input.a, var_2.b.x, 4294967295u)), firstTrailingBit(vec4<u32>(546u, 39771u, var_2.a.c, 9086u))) | max(vec4<u32>(u_input.a, 30650u, 4294967295u, 33040u) & vec4<u32>(20984u, var_4.c, 56462u, var_0.c), vec4<u32>(13554u, 1947u, 0u, 0u)), ~_wgslsmith_add_vec4_u32(~vec4<u32>(var_2.a.c, var_0.c, 17042u, 1u), min(vec4<u32>(16807u, 0u, var_2.a.c, 100829u), vec4<u32>(var_0.c, var_4.c, var_3.d.c, u_input.a)))));
                    var_1 = vec2<f32>(var_4.b.x, 910.0);
                    var_5 = ~(~_wgslsmith_sub_u32(var_3.b.x, var_2.b.x));
                    let var_6 = Struct_2(var_2.d, vec3<u32>(firstLeadingBit(var_3.d.c), ~var_2.d.c, 21678u) >> (~var_3.b % vec3<u32>(32u)), _wgslsmith_f_op_f32(var_0.b.x - 353.0), var_2.d, var_0.b.x);
                }
            }
        }
        case -33713: {
            return (_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1533.0))) == -433.0) && false;
        }
        case 41549: {
            loop {
                if (LOOP_COUNTERS[2u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
                var var_3 = u_input.a != countOneBits(abs(var_2.b.x));
                let var_4 = var_0.a.x;
            }
        }
        default: {
            global1 = array<vec4<f32>, 24>();
            for (; ; ) {
                if (LOOP_COUNTERS[3u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
                var var_3 = Struct_2(Struct_1(vec4<bool>(var_2.a.a.x, false, -493.0 <= _wgslsmith_f_op_f32(select(2813.0, 1381.0, var_0.a.x)), select(any(var_0.a.wwx), var_0.a.x, !var_0.a.x)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_f32(exp2(331.0))), ~_wgslsmith_mult_u32(1u, var_2.d.c | u_input.a), true), _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(var_2.b, var_2.b), vec3<u32>((56737u ^ u_input.a) | reverseBits(var_2.b.x), ~(~u_input.a), abs(0u) | var_0.c), vec3<u32>(abs(var_2.d.c), u_input.a, 4294967295u)), 951.0, Struct_1(vec4<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 22133u, u_input.a, 81112u), vec4<u32>(var_2.b.x, 65611u, var_2.d.c, 4294967295u)) > (var_2.a.c << (13165u % 32u)), true, false, all(vec3<bool>(var_2.d.d, false, false))), _wgslsmith_div_vec2_f32(vec2<f32>(-724.0, -196.0), var_0.b), u_input.a, any(!(!vec4<bool>(var_2.d.d, false, false, true)))), var_0.b.x);
            }
            global1 = array<vec4<f32>, 24>();
            loop {
                if (LOOP_COUNTERS[4u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
                global0 = array<Struct_2, 13>();
                let var_3 = Struct_1(var_2.a.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -459.0), _wgslsmith_f_op_f32(-232.0))), ~(~var_0.c), !(var_0.a.x | !false) || select(false, var_2.d.a.x, _wgslsmith_f_op_f32(round(532.0)) >= 654.0));
                continue;
            }
        }
    }
    return (firstTrailingBit(firstLeadingBit(~1)) ^ -_wgslsmith_dot_vec3_i32(vec3<i32>(1, 9973, 25497) & vec3<i32>(1, -36643, 47067), vec3<i32>(0, -1, 0) ^ vec3<i32>(-1246, 1982, 49422))) != 2147483647;
}

fn func_5(arg_0: u32) -> Struct_1 {
    let var_0 = select(vec2<bool>(!(_wgslsmith_div_f32(-503.0, 762.0) < _wgslsmith_f_op_f32(sign(1368.0))), !true), vec2<bool>(func_6(select(true, true, false)) == any(vec2<bool>(true, true)), ~1 <= ~firstTrailingBit(-1)), vec2<bool>(all(vec2<bool>(false, false)) && all(vec3<bool>(true, false, true)), any(!(!vec2<bool>(false, true)))));
    if (!true) {
        return Struct_1(!select(select(!vec4<bool>(var_0.x, var_0.x, true, true), vec4<bool>(var_0.x, var_0.x, var_0.x, false), select(vec4<bool>(true, false, var_0.x, var_0.x), vec4<bool>(true, var_0.x, var_0.x, true), vec4<bool>(var_0.x, var_0.x, true, true))), select(vec4<bool>(false, var_0.x, true, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, true), !vec4<bool>(var_0.x, true, false, var_0.x)), !vec4<bool>(var_0.x, true, true, false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(791.0, 1726.0), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1099.0, 966.0)), vec2<bool>(var_0.x, true))))), _wgslsmith_mod_u32(0u, ~(~0u) | _wgslsmith_sub_u32(_wgslsmith_clamp_u32(2693u, 1u, 63474u), u_input.a)), select(min(1 ^ -1, _wgslsmith_div_i32(-12670, -2147483648)) > 1, var_0.x, true && var_0.x));
    }
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-1000.0))));
    let var_2 = !(!false);
    var var_3 = Struct_1(vec4<bool>(var_2 || any(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, false, var_0.x), vec3<bool>(var_0.x, false, false))), true, all(select(vec2<bool>(var_2, true), !vec2<bool>(var_0.x, false), !vec2<bool>(var_2, var_0.x))), var_2), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1))))), u_input.a, any(!select(vec2<bool>(false, var_0.x), var_0, vec2<bool>(var_0.x, false))) == any(!var_0));
    return Struct_1(!(!select(!vec4<bool>(false, true, true, true), select(var_3.a, vec4<bool>(var_3.d, var_3.d, false, var_2), var_3.a), select(vec4<bool>(true, var_3.d, true, var_3.a.x), vec4<bool>(true, false, true, var_0.x), var_3.a))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(max(var_3.b.x, 1344.0)), var_3.b.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_3.b - var_3.b)))))), 38167u, true);
}

fn func_4(arg_0: Struct_2) -> i32 {
    let var_0 = -2147483648 & firstTrailingBit(_wgslsmith_div_i32(i32(-1) * -2147483648, 1));
    let var_1 = arg_0.b;
    let var_2 = Struct_2(arg_0.d, ~reverseBits(var_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c) + -1000.0), func_5(20935u), _wgslsmith_f_op_f32(min(arg_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.c)) + 1199.0))));
    switch (~2809) {
        case 2147483647: {
        }
        case -8321: {
            global1 = array<vec4<f32>, 24>();
            loop {
                if (LOOP_COUNTERS[5u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
                continue;
            }
        }
        case -30729: {
        }
        case -1: {
            global1 = array<vec4<f32>, 24>();
            global0 = array<Struct_2, 13>();
            if (false) {
            }
        }
        default: {
            switch (var_0) {
                case 0: {
                    let var_3 = ~(~4294967295u);
                    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(-var_2.a.b.x), _wgslsmith_f_op_f32(exp2(var_2.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-391.0 - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-1000.0))))) - var_2.d.b.x), 2935.0);
                    global0 = array<Struct_2, 13>();
                }
                case -2147483648: {
                    var var_3 = arg_0.d.b;
                    var var_4 = all(func_5(arg_0.d.c).a.zz);
                    var var_5 = !var_2.d.a;
                }
                default: {
                    let var_3 = Struct_1(vec4<bool>(all(select(vec4<bool>(var_2.a.d, false, true, true), vec4<bool>(false, false, false, false), arg_0.d.a)) && !(!true), var_0 < ~_wgslsmith_dot_vec3_i32(vec3<i32>(-15844, -1722, 22700), vec3<i32>(var_0, -14423, 1)), all(!select(vec2<bool>(false, var_2.a.d), vec2<bool>(var_2.a.a.x, arg_0.d.a.x), false)), any(var_2.a.a.zww)), vec2<f32>(1438.0, _wgslsmith_div_f32(-775.0, _wgslsmith_f_op_f32(-192.0 + _wgslsmith_f_op_f32(-321.0 * -834.0)))), ~(~abs(84613u)) << (func_5(~_wgslsmith_mod_u32(u_input.a, 6615u)).c % 32u), any(var_2.d.a));
                    var var_4 = firstLeadingBit(vec2<i32>(~var_0, -2147483648));
                    let var_5 = vec2<i32>(_wgslsmith_mult_i32(11662, 84906), var_4.x) << (_wgslsmith_sub_vec2_u32(vec2<u32>(abs(0u), var_1.x), ~arg_0.b.xz) % vec2<u32>(32u));
                    var var_6 = vec4<bool>(!(787.0 != _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1.0) * -331.0)))), all(select(select(arg_0.a.a, vec4<bool>(var_2.d.a.x, true, var_3.d, arg_0.a.d), !false), func_5(arg_0.a.c).a, all(func_5(4279u).a))), ~(~var_1.x) == var_2.d.c, true);
                    let var_7 = 14915;
                }
            }
            let var_3 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2.e, _wgslsmith_f_op_f32(-arg_0.c), var_2.c)));
        }
    }
    switch (_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647, 12506, -(-47583 >> (0u % 32u))), abs(-firstTrailingBit(min(vec3<i32>(var_0, 0, var_0), vec3<i32>(-2147483648, var_0, 2147483647)))))) {
        case 100515: {
            var var_3 = countOneBits(-1);
            if (any(!var_2.d.a)) {
            }
            global1 = array<vec4<f32>, 24>();
        }
        case -1: {
            switch (-var_0) {
                default: {
                    global0 = array<Struct_2, 13>();
                }
            }
            if (!all(arg_0.d.a.yxy)) {
                let var_3 = _wgslsmith_mod_u32(var_1.x, 0u);
                var var_4 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1781.0, var_2.e, -2268.0))))))));
                let var_5 = Struct_1(!(!(!(!vec4<bool>(false, false, var_2.d.a.x, false)))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-112.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1007.0 * 806.0))))), firstTrailingBit(4294967295u), !(!any(arg_0.d.a) || !(!var_2.a.a.x)));
                var var_6 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5.b.x, _wgslsmith_div_f32(-130.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.c, 492.0)) * arg_0.a.b.x)), 1009.0, var_5.b.x));
            }
            let var_3 = func_5(arg_0.b.x);
            let var_4 = func_5(arg_0.b.x);
            let var_5 = _wgslsmith_dot_vec3_i32(vec3<i32>(var_0, abs(var_0), _wgslsmith_div_i32(_wgslsmith_mult_i32(0, abs(var_0)), ~firstLeadingBit(-1))), vec3<i32>(min(countOneBits(~(-2147483648)), _wgslsmith_mod_i32(-1, min(var_0, var_0))), var_0, _wgslsmith_sub_i32(1, 2147483647) ^ firstTrailingBit(0)));
        }
        default: {
            var var_3 = _wgslsmith_div_i32(1, firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0, var_0, -42388, -2147483648), firstTrailingBit(countOneBits(vec4<i32>(-12155, var_0, var_0, -2147483648))))));
            let var_4 = Struct_2(func_5(_wgslsmith_clamp_u32(min(var_2.a.c, 34868u), ~var_2.d.c, ~min(4294967295u, 4294967295u))), ~_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a, 103329u, var_2.d.c), _wgslsmith_div_vec3_u32(var_1, ~vec3<u32>(u_input.a, u_input.a, 40244u))), arg_0.e, Struct_1(!select(vec4<bool>(true, true, arg_0.a.a.x, arg_0.a.d), select(vec4<bool>(false, arg_0.a.a.x, true, var_2.a.d), vec4<bool>(arg_0.a.a.x, var_2.d.d, false, arg_0.d.d), arg_0.d.a.x), var_2.d.c >= 4294967295u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(arg_0.a.b, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_2.a.b.x, arg_0.a.b.x))))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_2.d.b)), arg_0.d.b)), arg_0.a.c, arg_0.d.a.x), _wgslsmith_f_op_f32(-1383.0));
            let var_5 = var_4.d;
            if (!var_5.d) {
                global0 = array<Struct_2, 13>();
            }
            return 12606;
        }
    }
    return 2147483647;
}

fn func_3(arg_0: vec2<u32>) -> vec2<u32> {
    switch (_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1) * -1, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-21556, -10593), vec2<i32>(1, -1)), func_4(Struct_2(Struct_1(vec4<bool>(true, true, false, true), vec2<f32>(1000.0, -1468.0), 62890u, false), vec3<u32>(arg_0.x, 4351u, 4003u), -243.0, Struct_1(vec4<bool>(true, false, true, false), vec2<f32>(-162.0, 1321.0), 38471u, true), -1910.0)))), vec2<i32>(~(~(-6578)), 0)), countOneBits(func_4(global0[_wgslsmith_index_u32(u_input.a, 13u)])))) {
        case -27883: {
            let var_0 = _wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(u_input.a, 24u)]);
            for (var var_1 = 2147483647; var_1 == 1; var_1 -= 1) {
                if (LOOP_COUNTERS[6u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
                var var_2 = vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(abs(28163), 0, _wgslsmith_mult_i32(-20500, 71944), -19161), firstTrailingBit(vec4<i32>(18564, 1, -67089, -20021) ^ vec4<i32>(-11036, 0, 1, -1))), min(~(vec4<i32>(31414, -2147483648, 8773, 0) << (vec4<u32>(29792u, u_input.a, 53484u, 9144u) % vec4<u32>(32u))), ~max(vec4<i32>(1, 23276, -1, 6577), vec4<i32>(0, -1716, -1, 16122)))), _wgslsmith_add_i32(~(-2147483648), max(_wgslsmith_dot_vec4_i32(vec4<i32>(19134, 32351, 3003, -2147483648), min(vec4<i32>(12362, -12460, -39918, 0), vec4<i32>(31936, -15771, 5670, 12228))), ~(-2147483648))), abs(_wgslsmith_mult_i32(_wgslsmith_mult_i32(_wgslsmith_div_i32(-1, 33954), ~1), func_4(Struct_2(Struct_1(vec4<bool>(false, true, false, true), var_0.zx, u_input.a, false), vec3<u32>(arg_0.x, 43246u, 1u), var_0.x, Struct_1(vec4<bool>(true, true, true, true), vec2<f32>(-1976.0, -434.0), 4294967295u, false), -716.0)) | _wgslsmith_add_i32(-24975, 54860))), -_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(23077, -2147483648)), ~vec2<i32>(2147483647, 11197)), 1));
                continue;
            }
            let var_1 = _wgslsmith_dot_vec2_i32(-_wgslsmith_mod_vec2_i32(~_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647, -2147483648), vec2<i32>(1, 1)), vec2<i32>(-34192, -51529 & 38360)), max(_wgslsmith_clamp_vec2_i32(countOneBits(min(vec2<i32>(-1, -4839), vec2<i32>(-26701, -23163))), vec2<i32>(_wgslsmith_div_i32(-2147483648, -951), abs(1)), ~_wgslsmith_sub_vec2_i32(vec2<i32>(28953, 27260), vec2<i32>(1, 21765))), countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(37335, -2049), ~vec2<i32>(0, 1)))));
            var var_2 = vec2<i32>(-8138, _wgslsmith_dot_vec4_i32(-firstLeadingBit(~vec4<i32>(var_1, var_1, var_1, 2147483647)), ~firstLeadingBit(vec4<i32>(var_1, var_1, -2147483648, -33534)) << (countOneBits(~vec4<u32>(arg_0.x, u_input.a, 62203u, u_input.a)) % vec4<u32>(32u))));
        }
        case 2147483647: {
            let var_0 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000.0 + 555.0))))), -345.0)), -2323.0);
            if (!false) {
                global1 = array<vec4<f32>, 24>();
                var var_1 = vec4<i32>(~(i32(-1) * -2147483648) << (min(_wgslsmith_mult_u32(~u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, arg_0.x, 4294967295u), vec3<u32>(u_input.a, arg_0.x, arg_0.x))), 12551u) % 32u), _wgslsmith_clamp_i32(abs(30867), countOneBits(-(~(-11583))), _wgslsmith_div_i32(-2147483648, _wgslsmith_div_i32(2147483647, -1) >> (1u % 32u))), 68351, 3478);
                global1 = array<vec4<f32>, 24>();
                let var_2 = -2147483648;
            }
            let var_1 = _wgslsmith_add_vec3_u32(firstLeadingBit(firstTrailingBit(~(vec3<u32>(u_input.a, 4294967295u, 4294967295u) | vec3<u32>(arg_0.x, 8058u, u_input.a)))), countOneBits(firstTrailingBit(~vec3<u32>(arg_0.x, u_input.a, u_input.a) << (vec3<u32>(20168u, 7588u, u_input.a) % vec3<u32>(32u)))));
            var var_2 = Struct_1(func_5(u_input.a).a, _wgslsmith_f_op_vec2_f32(step(var_0, vec2<f32>(var_0.x, var_0.x))), firstTrailingBit(~_wgslsmith_clamp_u32(arg_0.x, _wgslsmith_add_u32(u_input.a, 60261u), 80541u)), !all(vec2<bool>(func_6(true), 40887u > 54578u)));
            var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(1234.0, -1050.0, var_2.d)))))) - _wgslsmith_f_op_f32(-847.0)));
        }
        default: {
            var var_0 = ~vec3<i32>(-13219, ~(-(-1 & 1)), select(abs(0), _wgslsmith_div_i32(_wgslsmith_mult_i32(3923, -1811), abs(32613)), !all(vec2<bool>(true, false))));
        }
    }
    var var_0 = func_5(u_input.a);
    for (var var_1 = -37066; ; global1 = array<vec4<f32>, 24>()) {
        if (LOOP_COUNTERS[7u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
    }
    switch (_wgslsmith_clamp_i32(_wgslsmith_div_i32(~(~(-1 | -1)), _wgslsmith_div_i32(-4132, -30143) << (select(var_0.c, var_0.c, false) % 32u)), 0 >> (firstTrailingBit(u_input.a) % 32u), ~_wgslsmith_dot_vec4_i32(select(~vec4<i32>(-2147483648, 2147483647, -12082, -1), vec4<i32>(-1, -4652, -1, 2147483647) ^ vec4<i32>(28641, 1, 0, -3996), vec4<bool>(false, false, var_0.d, false)), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(0, 39570, 0, -39134), vec4<i32>(0, 1, 46581, 27544)), _wgslsmith_mod_vec4_i32(vec4<i32>(-34964, 0, -2147483648, 29439), vec4<i32>(3563, 1, 2147483647, 69662)))))) {
        case 31414: {
        }
        case -20742: {
        }
        case 0: {
            let var_1 = -52413;
            loop {
                if (LOOP_COUNTERS[8u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
                global1 = array<vec4<f32>, 24>();
                var var_2 = Struct_1(vec4<bool>(true, var_0.a.x, !(!(var_0.b.x != -741.0)), var_0.d), _wgslsmith_f_op_vec2_f32(-var_0.b), 0u, select(!(!(true && false)), true, var_0.d));
            }
        }
        case -1: {
            var var_1 = vec4<f32>(_wgslsmith_f_op_f32(var_0.b.x * var_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1014.0, 476.0)) * _wgslsmith_f_op_f32(var_0.b.x + var_0.b.x)))), _wgslsmith_f_op_f32(trunc(var_0.b.x)), _wgslsmith_f_op_f32(-1146.0));
        }
        default: {
            for (var var_1 = -33421; var_1 != -33865; var_1 += 1) {
                if (LOOP_COUNTERS[9u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
                continue;
            }
            for (; ; ) {
                if (LOOP_COUNTERS[10u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
                var var_1 = 826.0;
                let var_2 = select(~vec4<u32>(7341u, u_input.a, 0u, 1u), ~select(vec4<u32>(u_input.a, abs(var_0.c), _wgslsmith_clamp_u32(u_input.a, 0u, 31778u), arg_0.x), ~(~vec4<u32>(76445u, u_input.a, arg_0.x, 0u)), func_5(~18218u).a), 563.0 > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.b.x - 1063.0))));
                global1 = array<vec4<f32>, 24>();
                var_0 = Struct_1(var_0.a, var_0.b, min(_wgslsmith_dot_vec4_u32(var_2, vec4<u32>(1u, arg_0.x, u_input.a, arg_0.x)) | _wgslsmith_sub_u32(var_2.x, 0u), ~((21478u | var_0.c) ^ arg_0.x)), false);
            }
            var var_1 = false;
            let var_2 = Struct_2(Struct_1(var_0.a, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-529.0, -214.0), vec2<f32>(var_0.b.x, -588.0), false))))), abs(0u) | (abs(var_0.c) | ~29434u), var_0.c < arg_0.x), _wgslsmith_mult_vec3_u32(~vec3<u32>(0u, u_input.a, var_0.c), vec3<u32>(~reverseBits(71715u), ~(u_input.a >> (u_input.a % 32u)), _wgslsmith_add_u32(87829u >> (u_input.a % 32u), 1u))), 1000.0, Struct_1(vec4<bool>(!false, !(var_0.d == var_0.d), !select(false, true, true), !true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(f32(-1.0) * -800.0))), 2819u, any(vec4<bool>(any(vec3<bool>(true, var_0.a.x, var_0.a.x)), var_0.a.x, true, any(var_0.a.wxx)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1967.0 - -427.0)) - _wgslsmith_f_op_f32(func_5(0u).b.x - _wgslsmith_f_op_f32(var_0.b.x + 2461.0))))));
            if (var_0.d) {
            }
        }
    }
    global1 = array<vec4<f32>, 24>();
    return vec2<u32>(44548u, u_input.a);
}

fn func_2(arg_0: vec2<u32>) -> u32 {
    var var_0 = ~(~_wgslsmith_div_vec2_u32(~min(vec2<u32>(u_input.a, arg_0.x), vec2<u32>(4294967295u, u_input.a)), func_3(arg_0 | arg_0)));
    let var_1 = -1000.0;
    let var_2 = global0[_wgslsmith_index_u32(var_0.x, 13u)];
    var var_3 = func_5(~u_input.a);
    for (var var_4 = -27769; var_4 <= 0; var_4 -= 1) {
        if (LOOP_COUNTERS[11u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
    }
    return _wgslsmith_add_u32(~_wgslsmith_div_u32(var_0.x, ~(~arg_0.x)), ~(~((u_input.a | var_2.d.c) >> (4294967295u % 32u))));
}

fn func_7(arg_0: i32, arg_1: u32, arg_2: vec2<u32>) -> bool {
    let var_0 = !(1000.0 >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-669.0))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(226.0, 914.0), _wgslsmith_f_op_f32(min(-1283.0, -514.0)), !false))));
    loop {
        if (LOOP_COUNTERS[12u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
        var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-467.0)))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-582.0, 326.0), -401.0))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1000.0))), -500.0))), 667.0);
        var var_2 = func_5(min(0u, func_2(vec2<u32>(reverseBits(4294967295u), abs(1u)))));
        var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_2.b.x, var_2.b.x, -1152.0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(996.0, -269.0, -1522.0))))) - _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_2.b.x), var_1.x, var_2.b.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2.b.x, -1023.0, -1534.0))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.x, -264.0, -1871.0)))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_1.x - 172.0), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1000.0, 792.0), -255.0, !var_2.d)), var_1.x)));
        switch (firstTrailingBit(arg_0)) {
            case 0: {
                break;
            }
            case -1: {
                let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-891.0 - var_2.b.x));
                let var_4 = vec3<i32>(abs(2147483647), _wgslsmith_div_i32(_wgslsmith_add_i32(select(arg_0, max(-1, -2147483648), func_6(var_2.d)), _wgslsmith_mod_i32(40290, -arg_0)), -52742), -13185);
            }
            default: {
            }
        }
        let var_3 = func_6(all(func_5(arg_1).a.wxw));
    }
    let var_1 = ~_wgslsmith_div_vec2_u32(~vec2<u32>(17996u, 3627u), vec2<u32>(arg_1, _wgslsmith_mult_u32(arg_1, arg_2.x))) >> (arg_2 % vec2<u32>(32u));
    for (var var_2 = -1; var_2 >= -6196; var_2 -= 1) {
        if (LOOP_COUNTERS[13u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
        for (var var_3: i32; var_3 == -36179; global1 = array<vec4<f32>, 24>()) {
            if (LOOP_COUNTERS[14u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
            break;
        }
        var var_3 = Struct_1(func_5(func_2(vec2<u32>(~var_1.x, arg_2.x))).a, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1348.0)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-953.0, -361.0))))), var_1.x, true);
    }
    var var_2 = vec3<i32>(arg_0, arg_0, ~arg_0 >> (1u % 32u));
    return false;
}

fn func_1(arg_0: u32) -> bool {
    var var_0 = ~(~reverseBits(vec2<u32>(arg_0, firstLeadingBit(1u))));
    let var_1 = func_7(1, _wgslsmith_dot_vec4_u32(vec4<u32>(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 124590u, 0u), vec3<u32>(arg_0, arg_0, arg_0))), _wgslsmith_mult_u32(u_input.a, 1u), 67346u, func_2(abs(vec2<u32>(0u, u_input.a)))), abs(reverseBits(min(vec4<u32>(0u, 86353u, 0u, 0u), vec4<u32>(0u, 0u, u_input.a, 4294967295u))))), ~vec2<u32>(_wgslsmith_div_u32(60466u, var_0.x), u_input.a));
    if (var_1 & true) {
        let var_2 = max(~select(~vec2<u32>(u_input.a, var_0.x), vec2<u32>(_wgslsmith_clamp_u32(var_0.x, 1u, arg_0), countOneBits(4294967295u)), !(!var_1)), select(_wgslsmith_mod_vec2_u32(firstTrailingBit(~vec2<u32>(1u, 0u)), vec2<u32>(1u, u_input.a)), (~vec2<u32>(arg_0, arg_0) | (vec2<u32>(var_0.x, var_0.x) | vec2<u32>(0u, u_input.a))) ^ vec2<u32>(~u_input.a, u_input.a), !true));
        var_0 = ~(~vec2<u32>(~(58931u & arg_0), arg_0));
        var_0 = var_2;
        if (~(~countOneBits(~43493u)) >= 30480u) {
            var var_3 = func_5(arg_0);
            let var_4 = func_5(_wgslsmith_dot_vec4_u32(~firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(16679u, var_0.x, var_0.x, 34492u), vec4<u32>(var_0.x, 4294967295u, arg_0, 13282u))), ~firstLeadingBit(vec4<u32>(arg_0, 16734u, u_input.a, u_input.a))));
        }
    }
    global0 = array<Struct_2, 13>();
    global1 = array<vec4<f32>, 24>();
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    for (var var_0 = -5852; var_0 == 2147483647; ) {
        if (LOOP_COUNTERS[15u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
        if (!any(select(vec3<bool>(-39345 == -2147483648, 1 < 2147483647, !false), select(!vec3<bool>(false, true, false), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false), func_1(23583u)), select(vec3<bool>(true, false, false), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), any(vec4<bool>(true, false, false, false)))))) {
            continue;
        }
        loop {
            if (LOOP_COUNTERS[16u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
        }
        global0 = array<Struct_2, 13>();
        switch (countOneBits(firstTrailingBit(-2147483648))) {
            default: {
                let var_1 = !func_5(func_5(~51713u).c ^ (79158u | ~4294967295u)).a;
            }
        }
    }
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(min(1308.0, -1000.0)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(654.0)) + _wgslsmith_f_op_f32(-347.0 - -1159.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(480.0)) - -534.0), !false)), _wgslsmith_f_op_f32(f32(-1.0) * -1119.0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1999.0, _wgslsmith_f_op_f32(f32(-1.0) * -1000.0), all(vec4<bool>(true, true, true, true)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-228.0)))) * _wgslsmith_f_op_f32(-1229.0)));
    var var_1 = Struct_2(func_5(~min(4294967295u, _wgslsmith_mult_u32(4294967295u, u_input.a))), max(reverseBits(~(vec3<u32>(u_input.a, 1u, u_input.a) & vec3<u32>(82546u, 0u, u_input.a))), firstLeadingBit(vec3<u32>(func_3(vec2<u32>(54640u, 31205u)).x, _wgslsmith_add_u32(u_input.a, u_input.a), _wgslsmith_clamp_u32(4294967295u, u_input.a, 28684u)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1109.0 - -2047.0), -844.0) + 566.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(722.0, var_0.x)))))), Struct_1(select(vec4<bool>(!true, true, true & false, true), vec4<bool>(true, func_6(false), 49942u <= 15917u, 2147483647 <= 0), true), var_0.xz, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, 4294967295u, 54358u), firstLeadingBit(vec3<u32>(0u, u_input.a, u_input.a))), true), var_0.x);
    global0 = array<Struct_2, 13>();
    global1 = array<vec4<f32>, 24>();
    let var_2 = global0[_wgslsmith_index_u32(countOneBits(abs(var_1.d.c)), 13u)];
    global0 = array<Struct_2, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.yz * vec2<f32>(-423.0, var_2.e)) * vec2<f32>(-1188.0, var_2.e)) + var_2.d.b) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.c, var_2.a.b.x) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_2.a.b.x, 1360.0))))))), _wgslsmith_mult_vec2_i32(firstLeadingBit(vec2<i32>(-2147483648, -22070)), vec2<i32>(-21944 & 76556, 0)) >> (var_1.b.zy % vec2<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-309.0))), _wgslsmith_f_op_f32(-var_1.c)), _wgslsmith_add_vec4_i32(~abs(vec4<i32>(1, -51228, 0, -2147483648)), vec4<i32>(func_4(Struct_2(Struct_1(vec4<bool>(var_1.a.a.x, true, var_1.a.d, var_2.d.a.x), vec2<f32>(-868.0, var_2.a.b.x), 10117u, false), var_2.b, -366.0, Struct_1(var_2.d.a, vec2<f32>(-411.0, var_0.x), 4294967295u, var_2.d.d), -759.0)), ~_wgslsmith_add_i32(1, -2147483648), _wgslsmith_add_i32(-1 >> (var_1.b.x % 32u), -41002), -1)), var_1.d.b);
}

