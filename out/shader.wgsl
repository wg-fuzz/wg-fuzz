// {"0:0":[100,191,123,249,194,81,233,116,55,143,25,30,137,188,163,24]}
// Seed: 2380362386382785592

struct Struct_1 {
    a: i32,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<f32>,
    c: vec3<f32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 5936u;

var<private> global1: Struct_5 = Struct_5(Struct_3(1826.0), vec3<f32>(-927.0, 284.0, -1384.0), vec3<f32>(-932.0, -337.0, -2202.0), true);

var<private> global2: i32;

var<private> global3: Struct_4 = Struct_4(Struct_1(-37952, 24364u, -29997), Struct_3(1302.0), Struct_1(-1, 0u, 2981), vec3<u32>(74603u, 1u, 4294967295u), Struct_1(45467, 40639u, 6476));

var<private> global4: array<Struct_5, 5>;

var<private> LOOP_COUNTERS: array<u32, 22>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2), (((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2), ((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || ((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn func_6(arg_0: i32, arg_1: Struct_2, arg_2: vec2<i32>) -> vec3<u32> {
    for (var var_0 = 0; var_0 != -1193; global0 = ~57406u) {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
    }
    let var_0 = all(select(vec4<bool>(global1.d, false, _wgslsmith_mod_i32(-23241, 24195) >= countOneBits(global3.e.a), global1.d), select(vec4<bool>(all(vec4<bool>(true, global1.d, false, true)), false, false, true), !select(vec4<bool>(true, global1.d, true, true), vec4<bool>(false, false, true, global1.d), vec4<bool>(false, global1.d, true, global1.d)), all(select(vec3<bool>(true, true, true), vec3<bool>(false, global1.d, global1.d), global1.d))), false));
    let var_1 = ~_wgslsmith_div_u32(_wgslsmith_clamp_u32(firstLeadingBit(4294967295u) & global3.a.b, u_input.b, ~u_input.b), 4294967295u);
    var var_2 = select(vec2<bool>(all(!(!vec4<bool>(global1.d, var_0, var_0, global1.d))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.c.x, 126.0)) > 3023.0), vec2<bool>(!any(!vec4<bool>(var_0, true, global1.d, true)), false), select(vec2<bool>(global1.d, all(vec3<bool>(false, true, true))), !(!vec2<bool>(global1.d, false)), any(vec2<bool>(!true, !global1.d))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -730.0) + _wgslsmith_f_op_f32(-global3.b.a));
    return vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, 20840u), abs(firstTrailingBit(vec2<u32>(37296u, var_1)) >> (vec2<u32>(98383u, 4294967295u) % vec2<u32>(32u)))), ~_wgslsmith_div_u32(abs(~60731u), 1u ^ (4294967295u & 40495u)), global3.c.b);
}

fn func_5(arg_0: u32, arg_1: vec3<f32>, arg_2: vec2<f32>) -> u32 {
    switch (~abs(u_input.c)) {
        case 11364: {
            global3 = Struct_4(global3.c, Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(406.0 + arg_1.x))))), Struct_1(countOneBits(~30416), _wgslsmith_mod_u32(_wgslsmith_div_u32(20373u, ~arg_0), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, arg_0), global3.d.yy) | _wgslsmith_clamp_u32(4437u, global3.e.b, 1u)), global3.c.c), ~func_6(_wgslsmith_add_i32(42122, global3.e.c), Struct_2(global3.e, Struct_1(2147483647, 22207u, global3.e.c), _wgslsmith_dot_vec2_i32(vec2<i32>(31243, -1), vec2<i32>(global3.e.a, u_input.d)), global3.e), _wgslsmith_mod_vec2_i32(vec2<i32>(2147483647, -6081), vec2<i32>(global3.a.c, global3.a.c)) >> (~global3.d.xx % vec2<u32>(32u))), global3.a);
        }
        case 0: {
            let var_0 = all(!(!vec3<bool>(all(vec2<bool>(true, global1.d)), global3.b.a != 349.0, global1.d)));
            switch (abs(11162)) {
                case -1: {
                    var var_1 = Struct_2(Struct_1(u_input.c, 1u & arg_0, abs(abs(36019))), global3.a, _wgslsmith_mult_i32(10878, _wgslsmith_mod_i32(global3.c.a, u_input.a)), global3.c);
                    let var_2 = ~vec4<i32>(abs(var_1.c), abs(select(u_input.d, -1 | var_1.b.c, !global1.d)), var_1.c, firstLeadingBit(_wgslsmith_dot_vec4_i32(~vec4<i32>(var_1.b.a, u_input.a, -1, global3.e.a), vec4<i32>(-2147483648, u_input.c, global3.a.c, var_1.c) >> (vec4<u32>(0u, u_input.b, 10559u, u_input.b) % vec4<u32>(32u)))));
                }
                default: {
                    var var_1 = max(max(abs(u_input.b), _wgslsmith_div_u32(~_wgslsmith_div_u32(4294967295u, arg_0), 15474u)), 1u);
                    var var_2 = reverseBits(~_wgslsmith_add_u32(9833u, u_input.b));
                    return u_input.b;
                }
            }
            if (all(select(!select(!vec4<bool>(var_0, global1.d, var_0, global1.d), !vec4<bool>(global1.d, var_0, global1.d, false), vec4<bool>(false, false, var_0, true)), select(vec4<bool>(!var_0, u_input.a <= u_input.c, false, false), vec4<bool>(false, any(vec3<bool>(global1.d, true, false)), var_0, false), select(vec4<bool>(var_0, false, global1.d, var_0), vec4<bool>(global1.d, global1.d, false, true), all(vec3<bool>(true, false, var_0)))), any(select(select(vec3<bool>(true, var_0, var_0), vec3<bool>(true, true, true), global1.d), !vec3<bool>(var_0, var_0, true), vec3<bool>(global1.d, true, var_0)))))) {
                global1 = Struct_5(Struct_3(arg_2.x), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(global1.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_2.x, 255.0, global1.b.x))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1.b.x, global1.b.x, global3.b.a), arg_1)))))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(2559.0, arg_1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.b.x + 1000.0), _wgslsmith_f_op_f32(1033.0 + global3.b.a))), _wgslsmith_f_op_f32(floor(-303.0)), -1407.0), !false);
                global4 = array<Struct_5, 5>();
                var var_1 = Struct_2(Struct_1(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(global3.a.a, 26457, u_input.c)), max(vec3<i32>(u_input.c, global3.c.a, global3.c.c), vec3<i32>(25895, global3.a.a, global3.c.c))), _wgslsmith_div_vec3_i32(vec3<i32>(global3.e.c, global3.e.c, global3.e.a) << (global3.d % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-69896, 7176, 1), vec3<i32>(2147483647, global3.a.c, -2690), vec3<i32>(u_input.d, -1, 1)))), arg_0, u_input.d), Struct_1(select(_wgslsmith_clamp_i32(global3.a.a, i32(-1) * -1, -2147483648), u_input.c, any(vec2<bool>(false, var_0))), _wgslsmith_mod_u32(~_wgslsmith_mod_u32(arg_0, u_input.b), global3.e.b), _wgslsmith_sub_i32(u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-1, 0) ^ vec2<i32>(0, 0), -vec2<i32>(global3.e.c, global3.e.c)))), firstTrailingBit(_wgslsmith_add_i32(-countOneBits(-34179), global3.a.a ^ -14871)), global3.a);
            }
            let var_1 = Struct_2(global3.e, global3.a, abs(-23207), global3.e);
        }
        case -1: {
        }
        default: {
        }
    }
    loop {
        if (LOOP_COUNTERS[1u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
        switch (_wgslsmith_sub_i32(-110992, select(2147483647 << ((u_input.b & (u_input.b | 8873u)) % 32u), global3.e.a, !true))) {
            case -10521: {
                var var_0 = _wgslsmith_f_op_f32(-arg_1.x);
                var var_1 = Struct_1(u_input.c, _wgslsmith_dot_vec3_u32(global3.d, firstLeadingBit(max(global3.d, global3.d))), i32(-1) * -33858);
                break;
            }
            case 48351: {
                let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-323.0, 2707.0, -1000.0, -250.0), vec4<f32>(127.0, arg_1.x, arg_1.x, 697.0)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, -1172.0, 1000.0, arg_1.x) - vec4<f32>(-831.0, global1.a.a, -874.0, 509.0)))))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1521.0, arg_2.x, -164.0, global1.b.x)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-370.0, global3.b.a, 684.0, -614.0)))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_2.x, _wgslsmith_f_op_f32(max(global3.b.a, arg_2.x)), _wgslsmith_f_op_f32(select(global3.b.a, 492.0, false)), _wgslsmith_f_op_f32(-arg_2.x)), vec4<f32>(_wgslsmith_f_op_f32(-102.0), 1000.0, _wgslsmith_f_op_f32(f32(-1.0) * -435.0), 242.0))), any(!select(vec3<bool>(false, global1.d, global1.d), vec3<bool>(true, global1.d, global1.d), true)))));
                let var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483648, -2147483648, global3.c.c), ~vec3<i32>(-u_input.d, -1, _wgslsmith_mult_i32(global3.e.a, u_input.c)) << (global3.d % vec3<u32>(32u)));
                global2 = 42437;
                let var_2 = Struct_4(global3.a, Struct_3(-1028.0), global3.e, vec3<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0, u_input.b, arg_0), vec3<u32>(global3.e.b, u_input.b, 0u) & global3.d), select(0u, firstLeadingBit(4294967295u), !global1.d)), ~(0u >> (min(arg_0, 4294967295u) % 32u)), _wgslsmith_sub_u32(~arg_0 >> (u_input.b % 32u), ~global3.e.b)), global3.a);
                let var_3 = select(vec3<i32>(~(~u_input.a), 8657, ~(-var_2.a.c)), min(_wgslsmith_mult_vec3_i32(max(vec3<i32>(u_input.a, u_input.a, var_2.e.a), vec3<i32>(global3.a.c, 43991, global3.c.a)), _wgslsmith_sub_vec3_i32(vec3<i32>(-22285, 14085, -21171), vec3<i32>(global3.e.a, -30651, var_1))), ~(~vec3<i32>(var_2.e.a, u_input.c, var_2.c.a))), select(select(select(vec3<bool>(global1.d, true, global1.d), vec3<bool>(false, global1.d, true), true), vec3<bool>(global1.d, false, false), !vec3<bool>(false, true, global1.d)), select(select(vec3<bool>(global1.d, global1.d, global1.d), vec3<bool>(global1.d, false, global1.d), vec3<bool>(true, global1.d, global1.d)), !vec3<bool>(global1.d, global1.d, false), var_2.c.b == var_2.e.b), select(!vec3<bool>(false, global1.d, true), vec3<bool>(global1.d, true, false), !false))) & vec3<i32>(-18029, var_2.a.a, countOneBits(u_input.c));
            }
            case 8799: {
            }
            case 1: {
                global2 = u_input.c;
            }
            default: {
                let var_0 = arg_2.x;
                continue;
            }
        }
        continue;
    }
    var var_0 = max(vec3<i32>(abs(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(global3.a.a, 46545, 0), vec3<i32>(u_input.c, u_input.a, 0)))), reverseBits(abs(~global3.e.c)), -min(global3.c.c >> (50011u % 32u), -global3.a.a)), max(vec3<i32>(~global3.a.c, u_input.c ^ u_input.c, -55776) >> (global3.d % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(vec3<i32>(~0, global3.e.a & u_input.a, ~u_input.c), firstTrailingBit(vec3<i32>(-1, 0, global3.e.c)))));
    loop {
        if (LOOP_COUNTERS[2u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
    }
    switch (~(firstTrailingBit(-4551) & _wgslsmith_div_i32(-2147483648, 2850 << (u_input.b % 32u)))) {
        case -2147483648: {
        }
        case -1484: {
            global4 = array<Struct_5, 5>();
            let var_1 = !(!select(select(select(vec4<bool>(false, false, global1.d, global1.d), vec4<bool>(global1.d, global1.d, false, global1.d), vec4<bool>(global1.d, global1.d, true, global1.d)), vec4<bool>(global1.d, global1.d, global1.d, global1.d), select(vec4<bool>(true, false, true, global1.d), vec4<bool>(true, global1.d, global1.d, global1.d), vec4<bool>(global1.d, global1.d, true, global1.d))), vec4<bool>(true, !global1.d, !false, global1.d), vec4<bool>(!false, global1.d | global1.d, any(vec4<bool>(false, true, false, false)), arg_2.x <= 1172.0)));
            global4 = array<Struct_5, 5>();
        }
        default: {
            loop {
                if (LOOP_COUNTERS[3u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
                continue;
            }
        }
    }
    return 0u;
}

fn func_4(arg_0: vec3<u32>, arg_1: i32) -> Struct_5 {
    var var_0 = false;
    let var_1 = ~(~(~global3.e.b));
    switch (~1 << (~(~_wgslsmith_mod_u32(func_5(18269u, vec3<f32>(-275.0, -320.0, -558.0), vec2<f32>(global1.b.x, global1.c.x)), ~global3.a.b)) % 32u)) {
        case 3752: {
            let var_2 = _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(60289u, arg_0.x, ~1u, u_input.b), min(_wgslsmith_sub_vec4_u32(vec4<u32>(67664u, 0u, arg_0.x, u_input.b), vec4<u32>(var_1, 0u, 33249u, 33298u)), min(vec4<u32>(4294967295u, 0u, 1613u, arg_0.x), vec4<u32>(global3.a.b, 1u, var_1, global3.a.b)))), max(vec4<u32>(arg_0.x, _wgslsmith_div_u32(9609u, 27464u), u_input.b, 0u | var_1), reverseBits(vec4<u32>(0u, 27512u, 0u, 4294967295u) ^ vec4<u32>(1u, 4294967295u, 41408u, 0u)))), ~(~vec4<u32>(~var_1, _wgslsmith_div_u32(13123u, var_1), arg_0.x, ~var_1)));
            if (false) {
                global2 = reverseBits(u_input.a);
                let var_3 = global4[_wgslsmith_index_u32(firstLeadingBit(select(u_input.b, ~(_wgslsmith_sub_u32(u_input.b, var_2.x) >> (~var_2.x % 32u)), -13800 == -2147483648)), 5u)];
            }
            if (!any(select(select(select(vec2<bool>(true, global1.d), vec2<bool>(global1.d, false), vec2<bool>(global1.d, global1.d)), select(vec2<bool>(true, false), vec2<bool>(global1.d, false), vec2<bool>(true, global1.d)), !vec2<bool>(false, true)), !(!vec2<bool>(global1.d, false)), global1.d))) {
            }
            global4 = array<Struct_5, 5>();
            switch (i32(-1) * -_wgslsmith_clamp_i32(global3.c.c, _wgslsmith_div_i32(u_input.a, -1), 27626 >> (_wgslsmith_dot_vec3_u32(vec3<u32>(9410u, 71903u, global3.d.x), arg_0) % 32u))) {
                case -49689: {
                    var var_3 = 47117u;
                    let var_4 = Struct_5(global1.a, _wgslsmith_f_op_vec3_f32(-global1.b), global1.c, !any(vec2<bool>(true, false)));
                    global1 = var_4;
                }
                default: {
                    let var_3 = Struct_1(~(~_wgslsmith_dot_vec3_i32(~vec3<i32>(-1, global3.a.c, u_input.d), abs(vec3<i32>(u_input.c, -1, global3.e.a)))), 0u, 0);
                    var var_4 = global3.a.a;
                    let var_5 = global3.b;
                    var var_6 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global3.e.b, firstTrailingBit(var_2.x), select(global3.d.x, 0u, all(vec2<bool>(global1.d, false)))) >> (arg_0 % vec3<u32>(32u)), global3.d >> (vec3<u32>(~u_input.b, 0u, 18691u) % vec3<u32>(32u))), 5u)];
                }
            }
        }
        case -20701: {
        }
        case -21903: {
            loop {
                if (LOOP_COUNTERS[4u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
                var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1160.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(497.0 + global3.b.a), 478.0, any(vec2<bool>(true, global1.d))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(754.0)), global3.b.a) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(254.0, global1.a.a)) * _wgslsmith_f_op_f32(max(-1651.0, 577.0)))), -1664.0));
                var var_3 = Struct_2(global3.a, global3.c, ~(~_wgslsmith_div_i32(firstLeadingBit(2147483647), ~arg_1)), global3.c);
                global3 = Struct_4(var_3.d, Struct_3(global1.b.x), Struct_1(~_wgslsmith_add_i32(-global3.e.a, arg_1), var_1, 3960), vec3<u32>(reverseBits(min(47211u, _wgslsmith_clamp_u32(7010u, 0u, global3.e.b))), reverseBits(~9351u), 29058u), Struct_1(global3.a.c, 28547u << (_wgslsmith_sub_u32(firstLeadingBit(46663u), _wgslsmith_mod_u32(arg_0.x, u_input.b)) % 32u), abs(_wgslsmith_clamp_i32(-2147483648 >> (1u % 32u), 0, arg_1))));
                var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(global3.b.a)), _wgslsmith_f_op_f32(floor(-740.0)), -427.0, global3.b.a) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000.0, 635.0, var_2.x, var_2.x) * vec4<f32>(-869.0, global3.b.a, 1455.0, 313.0)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2.x, 277.0, -727.0, -1000.0)))))))));
                let var_4 = Struct_2(global3.c, var_3.a, u_input.a, Struct_1(_wgslsmith_add_i32(0, reverseBits(global3.a.c)), ~29984u, countOneBits(1)));
            }
            for (var var_2 = -57055; var_2 >= -1; var_2 -= 1) {
                if (LOOP_COUNTERS[5u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
                let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-319.0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c.x - _wgslsmith_f_op_f32(exp2(-551.0))) - -704.0) + global1.c.x));
                var_2 = -6123;
                var var_4 = ~13829u;
                let var_5 = select(select(select(vec4<bool>(!false, global1.d, all(vec4<bool>(false, global1.d, false, global1.d)), global1.d), select(select(vec4<bool>(global1.d, global1.d, true, global1.d), vec4<bool>(global1.d, global1.d, false, global1.d), vec4<bool>(true, global1.d, global1.d, true)), !vec4<bool>(global1.d, true, false, global1.d), any(vec2<bool>(true, false))), !(!vec4<bool>(global1.d, global1.d, global1.d, global1.d))), vec4<bool>(global1.d, global1.d, !(global1.d | global1.d), global1.d), !(!global1.d)), vec4<bool>(!(!true), _wgslsmith_f_op_f32(f32(-1.0) * -577.0) >= 1000.0, global1.d, !(!false)), true);
                let var_6 = 31263u;
            }
        }
        default: {
        }
    }
    return global4[_wgslsmith_index_u32(0u, 5u)];
}

fn func_3() -> Struct_4 {
    loop {
        if (LOOP_COUNTERS[6u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
        var var_0 = func_4(global3.d, -(i32(-1) * -2147483648));
    }
    if (global1.d) {
        let var_0 = Struct_4(Struct_1(-_wgslsmith_mult_i32(-2147483648 & 2147483647, u_input.a), ~(~4294967295u) << ((reverseBits(52819u) & u_input.b) % 32u), max(~u_input.d, select(-41150, 2147483647, true)) | _wgslsmith_sub_i32(36224, -1)), func_4(_wgslsmith_add_vec3_u32(global3.d, func_6(1, Struct_2(global3.a, global3.e, u_input.c, Struct_1(u_input.c, 37388u, -44397)), firstTrailingBit(vec2<i32>(-25165, -1)))), 46311).a, global3.e, select(~global3.d, vec3<u32>(_wgslsmith_mod_u32(abs(u_input.b), _wgslsmith_mod_u32(u_input.b, 48655u)), _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(u_input.b, u_input.b)), ~global3.d.xz), func_6(global3.c.a, Struct_2(global3.a, global3.e, global3.e.c, global3.c), ~vec2<i32>(u_input.c, u_input.c)).x), !(func_4(global3.d, 1).d || select(global1.d, false, true))), global3.a);
        var var_1 = select(!vec4<bool>(func_5(global3.a.b, global1.c, global1.c.xy) >= u_input.b, true, 13733u >= (var_0.c.b ^ global3.d.x), global1.d), vec4<bool>(!true, true, true, any(vec3<bool>(false, var_0.a.b > 0u, global3.c.c > 4888))), all(!(!vec3<bool>(true, global1.d, true))));
        let var_2 = vec3<i32>(var_0.c.a, _wgslsmith_add_i32(-abs(-2147483647), -7372), -13120);
    }
    loop {
        if (LOOP_COUNTERS[7u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
        let var_0 = !vec3<bool>(any(vec4<bool>(global1.d, false, global1.d, false)) == !any(vec3<bool>(true, false, global1.d)), all(!(!vec2<bool>(false, false))), true || true);
        switch (_wgslsmith_add_i32(u_input.d, global3.e.a)) {
            case 0: {
                global1 = Struct_5(func_4(global3.d, global3.a.a).a, vec3<f32>(global1.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-255.0 * global1.c.x))), -522.0), global3.b.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.b + global1.c) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-1758.0, global3.b.a, 238.0), vec3<f32>(1183.0, -1152.0, global1.c.x)), vec3<f32>(global3.b.a, _wgslsmith_f_op_f32(sign(766.0)), _wgslsmith_f_op_f32(global1.c.x * global1.c.x)), vec3<bool>(!true, false, var_0.x)))), any(vec3<bool>((48515u != u_input.b) | var_0.x, false, max(global3.e.a, global3.a.a) <= _wgslsmith_add_i32(2147483647, -22494))));
                global2 = 1;
                continue;
            }
            case 2147483647: {
                continue;
            }
            case 20168: {
                global1 = Struct_5(global1.a, _wgslsmith_f_op_vec3_f32(abs(global1.c)), global1.c, var_0.x);
                global4 = array<Struct_5, 5>();
            }
            case 48588: {
                continue;
            }
            default: {
                global0 = reverseBits(_wgslsmith_add_u32(4294967295u, u_input.b));
            }
        }
        let var_1 = Struct_4(global3.e, func_4(global3.d, u_input.c).a, Struct_1(743, global3.c.b, -(i32(-1) * -1) | ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -2147483648, -3159), vec3<i32>(2147483647, global3.e.a, u_input.d))), func_6(_wgslsmith_mult_i32(countOneBits(global3.e.a), global3.e.a), Struct_2(Struct_1(u_input.a, global3.d.x, 1), Struct_1(43817, 4294967295u, 1804), 14921 >> (global3.e.b % 32u), Struct_1(global3.e.a, u_input.b, u_input.a)), vec2<i32>(58631, -1)) | _wgslsmith_mod_vec3_u32(~global3.d, vec3<u32>(~global3.e.b, ~global3.e.b, ~4294967295u)), global3.e);
    }
    switch (u_input.c) {
        case 0: {
            if (global3.b.a == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(369.0)) + global1.c.x) * global3.b.a)) {
                var var_0 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(global3.b.a + _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1243.0)), _wgslsmith_f_op_f32(f32(-1.0) * -1385.0))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(global3.b.a)))))));
                var var_1 = Struct_1(firstLeadingBit(u_input.c), 4294967295u, _wgslsmith_add_i32(~0, ~_wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.a, global3.c.c, -48238)), ~vec3<i32>(2147483647, 21637, u_input.d))));
                let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-374.0 + 761.0), _wgslsmith_div_f32(-1000.0, _wgslsmith_f_op_f32(trunc(-272.0))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + global3.b.a) - 2099.0)));
            }
            for (var var_0 = 0; var_0 != 17172; ) {
                if (LOOP_COUNTERS[8u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
                let var_1 = _wgslsmith_div_vec2_i32(-vec2<i32>(firstLeadingBit(reverseBits(1)), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(global3.a.a, global3.e.c, u_input.c), vec3<i32>(u_input.c, 2147483647, global3.e.a), vec3<i32>(u_input.d, global3.e.c, -44209)), vec3<i32>(52911, global3.c.c, 34018))), vec2<i32>(~_wgslsmith_mod_i32(-44393, -2147483648), select(~countOneBits(u_input.d), ~(u_input.a >> (global3.a.b % 32u)), any(vec4<bool>(global1.d, true, false, true)))));
                global4 = array<Struct_5, 5>();
            }
        }
        case -36891: {
            global2 = select(select(u_input.d, u_input.d, global1.d) ^ ~u_input.d, -global3.c.a, global1.d);
        }
        case -2147483648: {
            var var_0 = Struct_5(func_4((max(vec3<u32>(59491u, global3.d.x, global3.e.b), vec3<u32>(u_input.b, global3.e.b, global3.c.b)) << (firstTrailingBit(global3.d) % vec3<u32>(32u))) & _wgslsmith_sub_vec3_u32(vec3<u32>(global3.d.x, 1u, 1u) >> (vec3<u32>(97946u, global3.a.b, 4294967295u) % vec3<u32>(32u)), ~global3.d), _wgslsmith_dot_vec4_i32(vec4<i32>(9222, u_input.a, -34132, ~global3.c.c), ~_wgslsmith_add_vec4_i32(vec4<i32>(1, u_input.a, -21847, global3.a.a), vec4<i32>(u_input.a, -2147483648, u_input.a, u_input.d)))).a, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b.a, _wgslsmith_f_op_f32(ceil(global3.b.a)), 669.0)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.b + vec3<f32>(global1.a.a, 816.0, global1.a.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.x, global3.b.a, 2174.0))), _wgslsmith_div_vec3_f32(global1.b, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1.b.x, global1.a.a, 295.0))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b.x, -1000.0, 546.0) + vec3<f32>(361.0, 1348.0, -227.0)), global1.c)))), global3.e.b < ~global3.d.x);
        }
        case 1: {
        }
        default: {
            let var_0 = Struct_5(func_4(reverseBits(~(~vec3<u32>(66013u, 1u, 4294967295u))), -_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(19312, -43659, 1, 1)), vec4<i32>(u_input.a, -35350, u_input.a, u_input.c))).a, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(global1.b)))), _wgslsmith_f_op_vec3_f32(floor(global1.c)), (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(656.0 + global1.b.x)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.x * global3.b.a))) || true);
            loop {
                if (LOOP_COUNTERS[9u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
                let var_1 = _wgslsmith_f_op_f32(-1372.0 + global1.a.a);
                let var_2 = var_0.b;
            }
            var var_1 = ~_wgslsmith_add_u32(~_wgslsmith_clamp_u32(select(0u, global3.d.x, global1.d), global3.c.b, u_input.b << (u_input.b % 32u)), min(global3.d.x, 4294967295u));
            if (any(select(!vec4<bool>(global1.d, false, var_0.d, true), select(select(vec4<bool>(true, global1.d, global1.d, global1.d), vec4<bool>(global1.d, false, false, true), var_0.d), select(vec4<bool>(var_0.d, global1.d, true, false), vec4<bool>(var_0.d, global1.d, true, global1.d), vec4<bool>(var_0.d, global1.d, global1.d, global1.d)), global1.d), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, global1.d, true, false), false), select(vec4<bool>(var_0.d, global1.d, true, true), vec4<bool>(var_0.d, var_0.d, true, false), true), vec4<bool>(false, var_0.d, true, false)))) && all(vec4<bool>(2147483647 == _wgslsmith_clamp_i32(global3.c.a, u_input.a, global3.a.a), 25982u >= ~global3.e.b, !(!false), false))) {
                let var_2 = _wgslsmith_f_op_vec2_f32(global1.c.zy - vec2<f32>(716.0, -1026.0));
                let var_3 = Struct_2(global3.a, global3.e, 1, Struct_1(-(~_wgslsmith_div_i32(u_input.c, global3.c.a)), ~40448u, -2897));
                let var_4 = vec3<i32>(var_3.c, ~((u_input.a << (4294967295u % 32u)) << (var_3.b.b % 32u)), ~(_wgslsmith_mod_i32(_wgslsmith_add_i32(global3.a.c, -2147483648), min(global3.a.c, global3.c.a)) & ~(-var_3.c)));
                var_1 = var_3.d.b;
            }
        }
    }
    let var_0 = Struct_2(Struct_1(firstTrailingBit(-58137), firstTrailingBit(~12169u), 68598), global3.c, u_input.c, global3.e);
    return Struct_4(global3.c, func_4(~firstTrailingBit(reverseBits(vec3<u32>(8947u, u_input.b, global3.a.b))), _wgslsmith_sub_i32(_wgslsmith_div_i32(max(2147483647, global3.a.c), ~global3.c.a), -39284)).a, Struct_1(0, u_input.b, countOneBits(var_0.d.c)), vec3<u32>(firstTrailingBit(global3.e.b), var_0.b.b, _wgslsmith_mult_u32(func_6(1, Struct_2(var_0.a, Struct_1(2147483647, 1u, -4933), u_input.a, var_0.a), vec2<i32>(u_input.d, global3.e.a)).x, 0u)), global3.c);
}

fn func_2() -> Struct_3 {
    if (global1.d) {
        var var_0 = true;
        global3 = func_3();
        switch (_wgslsmith_mod_i32(1, max(global3.c.a | _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(u_input.d, u_input.c, 0)), vec3<i32>(34318, global3.e.c, -2147483648)), 1))) {
            case 45441: {
                var var_1 = Struct_4(Struct_1(u_input.d, u_input.b, 10029), global1.a, global3.c, _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(~global3.d, func_3().d ^ global3.d), global3.d), func_3().c);
            }
            case 1: {
                return global3.b;
            }
            case 0: {
                let var_1 = func_3();
                var var_2 = Struct_3(var_1.b.a);
                var var_3 = false;
                var var_4 = ~var_1.a.b;
            }
            case 3796: {
                var var_1 = _wgslsmith_mod_u32(_wgslsmith_add_u32(~u_input.b, _wgslsmith_clamp_u32(u_input.b, ~(global3.e.b | u_input.b), ~_wgslsmith_mod_u32(u_input.b, global3.e.b))), func_3().a.b);
                global1 = global4[_wgslsmith_index_u32(~u_input.b, 5u)];
                let var_2 = abs(~(~abs(vec4<u32>(44882u, 8660u, u_input.b, global3.c.b))) << (~_wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(global3.d.x, 33034u, u_input.b, u_input.b)), ~vec4<u32>(6530u, global3.a.b, u_input.b, global3.a.b), vec4<u32>(u_input.b, 0u, 4294967295u, 28791u)) % vec4<u32>(32u)));
            }
            default: {
            }
        }
        let var_1 = func_3();
    }
    global1 = Struct_5(Struct_3(global3.b.a), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b.a, global1.b.x, -1579.0))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1579.0), global3.b.a, 1000.0)), select(vec3<bool>(global1.d, all(vec3<bool>(global1.d, true, true)), global1.d), vec3<bool>(any(vec2<bool>(true, false)), false, !global1.d), select(select(vec3<bool>(false, true, global1.d), vec3<bool>(true, true, global1.d), global1.d), !vec3<bool>(global1.d, global1.d, global1.d), any(vec2<bool>(true, global1.d)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c.x, -1000.0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_f_op_f32(round(global3.b.a)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.c))), false);
    global2 = func_3().e.a;
    global4 = array<Struct_5, 5>();
    if (true) {
        let var_0 = 36473u;
        loop {
            if (LOOP_COUNTERS[10u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
            let var_1 = !(!(global3.c.b == 65665u));
            var var_2 = vec3<u32>(_wgslsmith_sub_u32(~global3.c.b, _wgslsmith_add_u32(u_input.b, max(global3.a.b, 11786u))) | (var_0 >> (_wgslsmith_mult_u32(6096u, reverseBits(0u)) % 32u)), ~31821u, global3.e.b);
            continue;
        }
        for (var var_1 = 2920; var_1 > -17223; var_1 += 1) {
            if (LOOP_COUNTERS[11u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
            let var_2 = firstTrailingBit(_wgslsmith_dot_vec3_u32(global3.d, global3.d));
        }
    }
    return Struct_3(global3.b.a);
}

fn func_7(arg_0: i32, arg_1: i32, arg_2: Struct_5, arg_3: Struct_3) -> vec3<bool> {
    var var_0 = func_4(~vec3<u32>(global3.d.x, ~1u, ~(~4294967295u)), -abs(-firstTrailingBit(-16684))).a.a;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-327.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(173.0 + _wgslsmith_f_op_f32(-global1.a.a)) + global1.c.x))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-global1.c.zx);
    loop {
        if (LOOP_COUNTERS[12u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
        global4 = array<Struct_5, 5>();
        let var_3 = func_4(~vec3<u32>(reverseBits(83958u), ~1u << (~8844u % 32u), ~57551u ^ u_input.b), ~_wgslsmith_div_i32(max(arg_0, firstTrailingBit(-54009)), arg_1)).d;
        var_0 = -705.0;
        var var_4 = global1.c.zy;
        loop {
            if (LOOP_COUNTERS[13u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
            var var_5 = arg_2.a;
            var var_6 = Struct_3(_wgslsmith_f_op_f32(ceil(2100.0)));
            continue;
        }
    }
    global4 = array<Struct_5, 5>();
    return vec3<bool>(arg_2.d, !global1.d, global1.d);
}

fn func_8(arg_0: vec3<bool>, arg_1: vec2<f32>) -> vec4<i32> {
    if (true) {
        global2 = abs(_wgslsmith_clamp_i32(-_wgslsmith_div_i32(u_input.a, global3.e.a), -11751, -1 & (func_3().c.a << (0u % 32u))));
        let var_0 = func_7(1, u_input.c, Struct_5(global1.a, vec3<f32>(109.0, -1000.0, -2012.0), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-371.0, global3.b.a, global1.c.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, -189.0, global3.b.a) + vec3<f32>(-1286.0, global3.b.a, -622.0)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1323.0, 1053.0, arg_1.x))), true), func_2()).xx;
        loop {
            if (LOOP_COUNTERS[14u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
            var var_1 = func_3();
            var var_2 = Struct_2(var_1.a, var_1.a, -6549, global3.e);
            continue;
        }
        if (false) {
            var var_1 = countOneBits(_wgslsmith_mod_vec2_u32(~global3.d.yx, ~global3.d.zz) >> (global3.d.zx % vec2<u32>(32u))) ^ vec2<u32>(reverseBits(_wgslsmith_div_u32(~7282u, ~u_input.b)), ~min(select(4294967295u, global3.c.b, var_0.x), ~317u));
            var_1 = vec2<u32>(u_input.b, ~var_1.x);
        }
        if (true) {
            let var_1 = vec2<bool>(!(_wgslsmith_add_i32(global3.a.c, -24302) >= -25240) | arg_0.x, var_0.x);
            var var_2 = ~abs(38412u);
            var var_3 = global4[_wgslsmith_index_u32(firstLeadingBit(max(30777u, ~14829u)), 5u)];
        }
    }
    global4 = array<Struct_5, 5>();
    global4 = array<Struct_5, 5>();
    global1 = func_4(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(global3.d, _wgslsmith_mod_vec3_u32(min(vec3<u32>(18239u, 18865u, global3.a.b), vec3<u32>(1u, global3.a.b, global3.d.x)), vec3<u32>(13637u, 21301u, u_input.b))), firstLeadingBit(global3.d)), u_input.a);
    for (var var_0 = 2147483647; global1.d; ) {
        if (LOOP_COUNTERS[15u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
        var_0 = u_input.c;
        loop {
            if (LOOP_COUNTERS[16u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
        }
    }
    return _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(abs(-reverseBits(vec4<i32>(-2147483648, global3.e.a, 2147483647, u_input.c))), vec4<i32>(1, _wgslsmith_dot_vec4_i32(min(vec4<i32>(1, u_input.a, u_input.c, -2147483648), vec4<i32>(global3.e.c, global3.c.a, -29135, 4745)), abs(vec4<i32>(global3.c.c, u_input.a, global3.e.a, global3.e.a))), -9446, u_input.d), vec4<i32>((i32(-1) * -41735) & ~39780, 1, ~countOneBits(-2147483648), _wgslsmith_div_i32(_wgslsmith_div_i32(-2147483648, 0), firstLeadingBit(global3.a.a)))), abs(select(_wgslsmith_div_vec4_i32(~vec4<i32>(global3.c.a, global3.c.a, global3.e.c, 2147483647), abs(vec4<i32>(u_input.a, global3.e.c, 0, global3.e.c))), -_wgslsmith_mult_vec4_i32(vec4<i32>(1, 35002, -2399, global3.c.c), vec4<i32>(-1, -20765, 47229, u_input.a)), func_7(global3.e.c, i32(-1) * -2147483648, func_4(global3.d, -30621), Struct_3(arg_1.x)).x)), vec4<i32>(32857, ~(-_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483648, -21595, global3.c.a, global3.c.c), vec4<i32>(u_input.d, global3.e.a, u_input.d, global3.e.c))), -2147483648, -abs(-9539)));
}

fn func_1(arg_0: u32) -> Struct_4 {
    var var_0 = func_8(select(vec3<bool>(true, global1.d, global1.d), !vec3<bool>(any(vec4<bool>(false, true, global1.d, true)), -847.0 < global3.b.a, all(vec4<bool>(global1.d, true, global1.d, true))), func_7(_wgslsmith_add_i32(u_input.d, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 36387, 14229, global3.a.c), vec4<i32>(global3.e.a, global3.c.a, global3.c.a, global3.c.a))), 9283, global4[_wgslsmith_index_u32(38059u, 5u)], func_2())), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.a)), global3.b.a) + vec2<f32>(global3.b.a, global1.c.x)));
    var var_1 = func_3().a;
    switch (22049) {
        case -1: {
            let var_2 = vec3<bool>(global1.d, !((global3.e.b | global3.e.b) > (var_1.b << (80299u % 32u))), global1.d);
            let var_3 = max(~(~_wgslsmith_div_vec4_u32(vec4<u32>(arg_0, 0u, 12488u, global3.e.b), select(vec4<u32>(var_1.b, arg_0, 0u, 0u), vec4<u32>(u_input.b, arg_0, global3.a.b, var_1.b), vec4<bool>(global1.d, true, var_2.x, var_2.x)))), vec4<u32>(1u, 32874u, 28928u, var_1.b));
        }
        case 2147483647: {
        }
        case 0: {
            var var_2 = 482.0;
            var var_3 = var_0.x;
        }
        default: {
            var_0 = ~(-vec4<i32>(global3.c.c, 9929, -31649, func_3().a.a | 12848));
            for (; !global1.d; ) {
                if (LOOP_COUNTERS[17u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
            }
            switch (_wgslsmith_mod_i32(var_0.x, -_wgslsmith_div_i32(-2147483648, 16192))) {
                default: {
                    var var_2 = func_3().e;
                    var var_3 = ~_wgslsmith_mult_u32(firstLeadingBit(~1u), _wgslsmith_mult_u32(var_2.b, u_input.b)) > u_input.b;
                    global3 = Struct_4(Struct_1(abs(var_0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(65553u, var_1.b, 1u, global3.e.b) << (vec4<u32>(22427u, 60750u, u_input.b, 71831u) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_2.b, 0u, 15852u, 1u), vec4<u32>(1u, 81825u, 4294967295u, 26708u)), ~vec4<u32>(4294967295u, 0u, global3.d.x, 57448u), abs(vec4<u32>(0u, arg_0, 4294967295u, global3.e.b)))), 10172), global1.a, Struct_1(global3.c.c, _wgslsmith_clamp_u32(4294967295u, global3.e.b, func_3().a.b >> (_wgslsmith_dot_vec3_u32(vec3<u32>(8457u, var_2.b, 4897u), vec3<u32>(1u, 19977u, arg_0)) % 32u)), select(-var_0.x, -var_0.x, -2147483648 != reverseBits(global3.c.c))), global3.d & vec3<u32>(12793u, global3.a.b, min(_wgslsmith_mod_u32(u_input.b, 38208u), abs(var_2.b))), func_3().e);
                }
            }
        }
    }
    var var_2 = any(select(!(!vec4<bool>(false, true, true, global1.d)), select(vec4<bool>(global1.d, true, any(vec2<bool>(global1.d, global1.d)), true), select(vec4<bool>(true, true, true, global1.d), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, global1.d), global1.d), select(vec4<bool>(global1.d, global1.d, true, false), vec4<bool>(global1.d, global1.d, global1.d, true), false)), !select(vec4<bool>(global1.d, global1.d, true, true), vec4<bool>(false, global1.d, false, true), false)), !all(vec4<bool>(false, true, false, false))));
    switch (min(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(countOneBits(11641), -2147483648 | u_input.a, abs(0), 1), select(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.x, var_0.x, -1, var_1.c), vec4<i32>(0, 4300, -2147483648, 0)), vec4<i32>(var_0.x, global3.e.a, 2147483647, var_0.x) & vec4<i32>(-2147483648, -2147483648, u_input.a, -12077), true)), -(~global3.a.c)), -2147483648)) {
        case 10146: {
        }
        case -1: {
            global3 = func_3();
            if (false) {
                var var_3 = global3.b.a;
                var var_4 = Struct_2(Struct_1(var_0.x, _wgslsmith_dot_vec4_u32(~(vec4<u32>(global3.e.b, global3.d.x, arg_0, 44300u) << (vec4<u32>(1u, 19443u, var_1.b, var_1.b) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global3.e.b, 4294967295u), global3.d.zx), func_5(4294967295u, global1.c, global1.b.yx), 4294967295u, ~var_1.b)), ~_wgslsmith_add_i32(-80761, var_0.x)), Struct_1((i32(-1) * -3725) ^ ~func_3().c.c, reverseBits(arg_0) | (_wgslsmith_mod_u32(global3.a.b, global3.a.b) | 96046u), 285), func_8(vec3<bool>(any(select(vec3<bool>(global1.d, global1.d, global1.d), vec3<bool>(global1.d, global1.d, global1.d), vec3<bool>(false, global1.d, global1.d))), true, !(!false)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global3.b.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global3.b.a, global1.a.a, false))))).x, global3.a);
                var_0 = ~countOneBits(abs(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, var_0.x, 31476, -1), ~vec4<i32>(2147483647, 2147483647, -19631, 1))));
                var_4 = Struct_2(global3.e, var_4.a, -max(-var_0.x, 30556), func_3().c);
                global2 = -1;
            }
            var_1 = Struct_1(17036, 40038u, _wgslsmith_mod_i32(var_0.x, _wgslsmith_add_i32(global3.a.c, max(select(u_input.c, 2147483647, global1.d), var_0.x))));
            loop {
                if (LOOP_COUNTERS[18u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
                let var_3 = var_0.x;
                var var_4 = Struct_2(global3.a, func_3().c, -36861, global3.c);
                let var_5 = Struct_1(0, u_input.b, var_0.x);
            }
        }
        default: {
            var_1 = func_3().a;
        }
    }
    return func_3();
}

fn func_9(arg_0: Struct_4, arg_1: Struct_2) -> Struct_4 {
    var var_0 = Struct_5(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -836.0))), global1.b, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b.a))), -1102.0, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.c.x), -105.0) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(401.0 + 1184.0)))), any(select(select(vec2<bool>(global1.d, global1.d), !vec2<bool>(global1.d, true), any(vec3<bool>(global1.d, false, true))), !select(vec2<bool>(global1.d, global1.d), vec2<bool>(global1.d, true), true), select(vec2<bool>(false, false), vec2<bool>(global1.d, global1.d), !vec2<bool>(global1.d, true)))));
    var var_1 = !(!select(!select(vec4<bool>(global1.d, var_0.d, var_0.d, global1.d), vec4<bool>(global1.d, true, var_0.d, var_0.d), vec4<bool>(global1.d, true, global1.d, var_0.d)), !vec4<bool>(true, global1.d, true, true), false));
    var_0 = global4[_wgslsmith_index_u32(~u_input.b, 5u)];
    var var_2 = func_3().e;
    var var_3 = vec4<i32>(-min(-(~(-16666)), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(1, arg_1.a.c, global3.a.a), -1)), ~u_input.a, i32(-1) * -_wgslsmith_dot_vec2_i32(min(vec2<i32>(65220, -24553), vec2<i32>(global3.a.c, arg_0.a.a)), vec2<i32>(-3684, -15351) | vec2<i32>(1556, 73758)), global3.a.a);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_9(func_1(_wgslsmith_div_u32(~36504u, u_input.b)), Struct_2(func_3().a, func_1(u_input.b).c, ~(-u_input.a), func_3().c));
    let var_1 = Struct_4(func_1(~func_5(global3.e.b, global1.b, vec2<f32>(global1.c.x, var_0.b.a))).e, func_2(), var_0.a, countOneBits(firstLeadingBit(var_0.d)), func_9(func_9(func_3(), Struct_2(Struct_1(var_0.c.a, var_0.c.b, -2147483648), global3.c, _wgslsmith_dot_vec2_i32(vec2<i32>(global3.e.c, u_input.d), vec2<i32>(var_0.e.a, -12264)), Struct_1(1, var_0.d.x, u_input.c))), Struct_2(var_0.c, Struct_1(-34384, _wgslsmith_dot_vec3_u32(var_0.d, vec3<u32>(0u, 41057u, var_0.c.b)), ~u_input.c), global3.a.a, func_9(Struct_4(global3.c, Struct_3(global3.b.a), var_0.e, var_0.d, var_0.c), Struct_2(var_0.e, var_0.e, var_0.e.c, var_0.a)).a)).c);
    if (global1.d) {
        global0 = _wgslsmith_dot_vec2_u32(~select(var_0.d.xx, global3.d.yy, !vec2<bool>(true, false)), firstTrailingBit(min(~var_0.d.yz, ~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 31608u), vec2<u32>(var_0.e.b, u_input.b)))));
    }
    switch (-(~(~func_8(!vec3<bool>(global1.d, global1.d, global1.d), _wgslsmith_f_op_vec2_f32(vec2<f32>(278.0, -706.0) * global1.c.yx)).x))) {
        case 464: {
            let var_2 = var_0.b;
            let var_3 = var_1.e;
            switch (var_0.a.a) {
                default: {
                    let var_4 = global3.c.a << (func_9(func_3(), Struct_2(var_3, Struct_1(-2147483648, abs(0u), _wgslsmith_div_i32(-2147483648, var_0.c.a)), -71836, func_9(var_1, Struct_2(var_0.a, Struct_1(var_0.e.c, var_1.c.b, u_input.c), -8478, Struct_1(5736, var_1.a.b, global3.a.a))).c)).c.b % 32u);
                    global2 = _wgslsmith_sub_i32(abs(abs(func_1(abs(global3.a.b)).a.a)), _wgslsmith_mod_i32(abs(-reverseBits(2147483647)), firstTrailingBit(firstLeadingBit(abs(var_0.c.a)))));
                    global2 = reverseBits(func_3().c.c);
                    global4 = array<Struct_5, 5>();
                    let var_5 = vec3<bool>(global1.d, !any(vec2<bool>(global1.d, any(vec4<bool>(true, true, global1.d, false)))), false);
                }
            }
        }
        case 13381: {
            global3 = func_3();
            let var_2 = select(select(!(!vec4<bool>(false, false, global1.d, true)), vec4<bool>(global1.d, global1.d, true, func_4(reverseBits(global3.d), -var_0.c.a).d), !global1.d), select(!select(vec4<bool>(true, false, global1.d, false), vec4<bool>(global1.d, global1.d, true, true), select(vec4<bool>(global1.d, false, global1.d, false), vec4<bool>(global1.d, true, true, false), false)), select(!select(vec4<bool>(global1.d, true, true, global1.d), vec4<bool>(global1.d, global1.d, true, false), vec4<bool>(global1.d, true, global1.d, global1.d)), vec4<bool>(!false, true, true, true & false), false), vec4<bool>(!any(vec3<bool>(global1.d, true, true)), global1.d, !(false || global1.d), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.b.a, _wgslsmith_f_op_f32(var_0.b.a + 2269.0))) + func_1(var_1.c.b).b.a) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1205.0) * _wgslsmith_f_op_f32(select(global1.a.a, -1064.0, false))) + global3.b.a));
            switch (firstLeadingBit(reverseBits(10277) | ~_wgslsmith_sub_i32(7076 & global3.a.a, ~u_input.a))) {
                case 14250: {
                    var var_3 = Struct_2(global3.e, global3.e, _wgslsmith_clamp_i32(var_0.c.c, -2147483648, global3.a.a), Struct_1(-var_0.a.c, 41306u ^ ~_wgslsmith_clamp_u32(var_0.d.x, var_0.d.x, global3.e.b), ~(~_wgslsmith_div_i32(8160, 7297))));
                }
                default: {
                    var var_3 = func_7(14785, u_input.d, Struct_5(global3.b, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.b.x, 685.0, var_1.b.a), vec3<f32>(-175.0, var_1.b.a, global1.b.x), var_2.xyw)), global1.b))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.a, var_1.b.a, -776.0)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(global1.b)) + global1.b)), true), Struct_3(917.0)).yx;
                    global4 = array<Struct_5, 5>();
                    global2 = -13306;
                    let var_4 = func_4(abs(var_1.d) ^ ~min(vec3<u32>(var_0.c.b, u_input.b, var_0.d.x), var_0.d >> (vec3<u32>(var_0.a.b, 59311u, var_1.d.x) % vec3<u32>(32u))), ~u_input.d & 0);
                    var_3 = vec2<bool>(false, any(func_7(2147483647, var_1.e.a, func_4(~var_1.d, 25299), func_9(func_9(Struct_4(var_0.e, global3.b, Struct_1(u_input.c, var_1.a.b, u_input.c), var_0.d, Struct_1(u_input.a, 25968u, 1)), Struct_2(Struct_1(global3.a.c, 24017u, 24642), var_0.a, var_0.c.a, Struct_1(-1, 52671u, 3309))), Struct_2(var_0.c, var_0.c, -79446, Struct_1(u_input.c, 4294967295u, u_input.d))).b).zy));
                }
            }
            let var_3 = any(func_7(~(~(i32(-1) * -27584)), ~(~_wgslsmith_mult_i32(u_input.c, 45230)), Struct_5(global1.a, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.b.a, global1.a.a, -1582.0), global1.b))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.c) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1416.0, var_0.b.a, -346.0))), !false), global1.a));
        }
        case 49752: {
            var var_2 = ~_wgslsmith_add_i32(-2147483647, global3.e.c);
            var var_3 = ~(~(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, var_0.d.x), _wgslsmith_mod_vec2_u32(vec2<u32>(var_1.d.x, global3.a.b), vec2<u32>(u_input.b, 4294967295u)))));
            for (var var_4 = 48261; var_4 <= 51360; var_4 -= 1) {
                if (LOOP_COUNTERS[19u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
                var_2 = -21594;
                let var_5 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-945.0) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1752.0) + -1358.0)) - 825.0), _wgslsmith_f_op_f32(172.0 + 105.0), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-246.0 * 344.0), -410.0, any(select(vec4<bool>(true, true, global1.d, global1.d), vec4<bool>(false, false, global1.d, global1.d), vec4<bool>(global1.d, global1.d, global1.d, global1.d))))), _wgslsmith_div_f32(2454.0, 146.0));
            }
        }
        case -63739: {
            for (var var_2: i32; true; ) {
                if (LOOP_COUNTERS[20u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
                var var_3 = func_3().c;
                let var_4 = 37697u;
                var var_5 = Struct_2(var_0.c, global3.c, _wgslsmith_mult_i32(7757, var_1.e.a), Struct_1(1, 100016u, -u_input.c ^ _wgslsmith_add_i32(var_3.c, i32(-1) * -2147483648)));
                let var_6 = Struct_4(Struct_1(-func_1(~72376u).e.a, 16102u, 30029), func_3().b, var_1.a, select(var_1.d << ((_wgslsmith_mult_vec3_u32(var_1.d, var_1.d) & _wgslsmith_add_vec3_u32(global3.d, global3.d)) % vec3<u32>(32u)), vec3<u32>(~1u, var_1.e.b, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_4, 1u, var_5.a.b), vec3<u32>(var_5.d.b, 73782u, 1u)), reverseBits(var_1.c.b))), func_4(var_0.d, -2147483648).d), Struct_1(func_3().e.a, ~func_3().a.b & 4294967295u, var_3.a));
                continue;
            }
            switch (_wgslsmith_sub_i32(u_input.c, ~(i32(-1) * -_wgslsmith_clamp_i32(-1, -22681, -24944)))) {
                case -3852: {
                    var var_2 = var_0.e.a;
                    global4 = array<Struct_5, 5>();
                    global4 = array<Struct_5, 5>();
                }
                default: {
                    var var_2 = -951.0;
                    var var_3 = func_2();
                    var var_4 = min(func_5(func_6(34944, Struct_2(Struct_1(1, 1u, global3.c.c), Struct_1(23856, 38833u, -2147483648), var_1.a.c, global3.c), -vec2<i32>(33202, 1)).x << (4294967295u % 32u), global1.c, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.a, 196.0)))), vec2<f32>(_wgslsmith_f_op_f32(var_3.a - var_1.b.a), _wgslsmith_f_op_f32(-432.0))))), 4294967295u);
                }
            }
        }
        default: {
            loop {
                if (LOOP_COUNTERS[21u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
                let var_2 = select(-24369, global3.c.c, global1.d & !true) & -max(43948, firstLeadingBit(_wgslsmith_add_i32(0, 18469)));
                let var_3 = vec4<f32>(func_2().a, var_0.b.a, -939.0, var_1.b.a);
            }
            switch (0) {
                case 1: {
                    var var_2 = global4[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 5u)];
                    let var_3 = var_2.c.x;
                    var var_4 = 1u;
                    global4 = array<Struct_5, 5>();
                    let var_5 = Struct_1(-20148, countOneBits(_wgslsmith_mod_u32(~_wgslsmith_mult_u32(0u, 58604u), var_0.e.b)), u_input.d);
                }
                default: {
                    var var_2 = _wgslsmith_f_op_f32(ceil(var_0.b.a)) < _wgslsmith_f_op_f32(select(-1773.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-910.0 * var_1.b.a) + -495.0)), global1.d));
                    let var_3 = global3.a.a | -1748;
                    let var_4 = var_1;
                }
            }
            let var_2 = func_7(-15002, ~func_3().e.c, Struct_5(Struct_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.b.a)))), vec3<f32>(var_1.b.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.b.a), _wgslsmith_f_op_f32(-1800.0 * 702.0), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.a - -1000.0))), _wgslsmith_f_op_vec3_f32(max(global1.b, _wgslsmith_f_op_vec3_f32(floor(func_4(vec3<u32>(var_1.c.b, 3870u, var_0.a.b), var_1.c.a).c)))), (global1.d | true) || false), var_1.b).x;
            let var_3 = select(!select(select(vec3<bool>(global1.d, true, true), !vec3<bool>(true, global1.d, global1.d), 1u != 16348u), select(!vec3<bool>(global1.d, var_2, true), !vec3<bool>(var_2, var_2, false), select(vec3<bool>(false, false, global1.d), vec3<bool>(true, false, global1.d), false)), false), select(select(!select(vec3<bool>(true, true, global1.d), vec3<bool>(false, false, global1.d), false), select(select(vec3<bool>(var_2, global1.d, global1.d), vec3<bool>(global1.d, var_2, true), vec3<bool>(global1.d, true, global1.d)), vec3<bool>(global1.d, global1.d, true), false), !select(vec3<bool>(true, var_2, true), vec3<bool>(true, var_2, global1.d), vec3<bool>(global1.d, var_2, false))), !func_7(1, -var_0.c.c, Struct_5(var_0.b, global1.b, vec3<f32>(global3.b.a, global3.b.a, -3240.0), false), func_1(var_1.e.b).b), true), func_7(9909, 1, global4[_wgslsmith_index_u32(_wgslsmith_div_u32(~0u, ~var_0.c.b), 5u)], var_0.b));
            let var_4 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(366.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1378.0 - var_0.b.a) * _wgslsmith_f_op_f32(f32(-1.0) * -1522.0))))));
        }
    }
    global1 = global4[_wgslsmith_index_u32(4294967295u, 5u)];
    var var_2 = _wgslsmith_mod_vec4_u32(abs(~select(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 0u, var_1.a.b, var_0.c.b), vec4<u32>(4294967295u, 108005u, 4294967295u, var_0.c.b)), vec4<u32>(u_input.b, var_1.c.b, global3.a.b, 1u) << (vec4<u32>(var_1.e.b, u_input.b, 7053u, 4294967295u) % vec4<u32>(32u)), true & true)), _wgslsmith_mult_vec4_u32(~reverseBits(vec4<u32>(var_0.e.b, 1u, u_input.b, 35675u) << (vec4<u32>(var_0.e.b, u_input.b, u_input.b, 43855u) % vec4<u32>(32u))), select(vec4<u32>(global3.e.b, 0u, 48648u, 4294967295u) | vec4<u32>(var_0.c.b, u_input.b, 4294967295u, var_0.c.b), vec4<u32>(abs(var_0.c.b), ~global3.e.b, _wgslsmith_add_u32(var_0.a.b, global3.e.b), reverseBits(global3.e.b)), global1.d)));
    let var_3 = -vec3<i32>(~(-50626), ~(~0) & firstTrailingBit(func_3().e.c), -u_input.c);
    var var_4 = func_1(~_wgslsmith_mult_u32(min(var_0.e.b, ~1u), 0u));
    var var_5 = vec3<u32>(func_9(var_1, Struct_2(Struct_1(9760, _wgslsmith_mod_u32(u_input.b, 0u), global3.a.c), Struct_1(_wgslsmith_mult_i32(u_input.d, -1196), 1u, ~var_3.x), ~(~(-4034)), var_4.a)).a.b, global3.e.b, _wgslsmith_add_u32(select(var_4.c.b << (~var_4.c.b % 32u), global3.c.b, all(select(vec4<bool>(global1.d, false, global1.d, false), vec4<bool>(false, global1.d, global1.d, false), vec4<bool>(global1.d, global1.d, true, true)))), ~4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.c.x, 345.0, _wgslsmith_f_op_f32(-global1.a.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2233.0, 373.0, 1545.0)) * _wgslsmith_f_op_vec3_f32(-global1.b))), false)), abs(~((var_0.c.c | 1) & var_0.e.a)), ~(var_3 << (~_wgslsmith_mult_vec3_u32(global3.d, var_1.d) % vec3<u32>(32u))));
}

