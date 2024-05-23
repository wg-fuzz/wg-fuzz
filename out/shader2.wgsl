// {"0:0":[167,215,67,159,126,103,166,252,163,108,113,253,181,242,93,48,203,37,108,6,20,88,37,36,8,84,88,21,63,117,240,77,102,210,65,58,224,215,57,195,159,64,172,28,191,168,136,73]}
// Seed: 13213469842475072969

struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: f32;

var<private> global2: array<vec2<i32>, 28>;

var<private> global3: array<vec3<f32>, 10>;

var<private> global4: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(-1000.0, vec3<bool>(true, false, true)), Struct_1(2043.0, vec3<bool>(false, false, true)), Struct_1(-379.0, vec3<bool>(false, false, false)), Struct_1(-435.0, vec3<bool>(true, false, false)), Struct_1(460.0, vec3<bool>(true, true, true)), Struct_1(-398.0, vec3<bool>(false, false, false)), Struct_1(-504.0, vec3<bool>(true, true, false)), Struct_1(932.0, vec3<bool>(true, true, true)), Struct_1(725.0, vec3<bool>(true, false, true)), Struct_1(1000.0, vec3<bool>(false, true, false)), Struct_1(2385.0, vec3<bool>(true, false, true)), Struct_1(-314.0, vec3<bool>(false, true, false)), Struct_1(359.0, vec3<bool>(true, true, false)), Struct_1(851.0, vec3<bool>(false, true, true)), Struct_1(1000.0, vec3<bool>(false, false, false)), Struct_1(-870.0, vec3<bool>(true, true, false)), Struct_1(497.0, vec3<bool>(false, true, false)), Struct_1(-291.0, vec3<bool>(false, true, true)), Struct_1(-937.0, vec3<bool>(false, false, true)), Struct_1(490.0, vec3<bool>(false, false, true)), Struct_1(1726.0, vec3<bool>(true, true, true)), Struct_1(510.0, vec3<bool>(true, true, true)), Struct_1(871.0, vec3<bool>(false, true, true)), Struct_1(-293.0, vec3<bool>(true, false, true)), Struct_1(475.0, vec3<bool>(true, true, true)), Struct_1(406.0, vec3<bool>(false, true, false)), Struct_1(1888.0, vec3<bool>(true, true, true)), Struct_1(-159.0, vec3<bool>(false, true, true)), Struct_1(613.0, vec3<bool>(false, true, false)), Struct_1(503.0, vec3<bool>(false, false, false)), Struct_1(1902.0, vec3<bool>(false, false, true)), Struct_1(329.0, vec3<bool>(false, false, false)));

fn func_6(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<bool>) -> u32 {
    var var_0 = sign(max(global3[dot(~countOneBits(vec4<u32>(35670u, 4294967295u, u_input.b, 1u)), select(abs(vec4<u32>(u_input.b, 0u, 46438u, u_input.b)), vec4<u32>(4294967295u, u_input.b, 4294967295u, 56327u), any(vec2<bool>(arg_2.b.x, false))))], vec3<f32>(146.0, 289.0, sign(arg_2.a * arg_1.a))));
    if (-38099 > (u_input.a * ((u_input.e.x - u_input.d) ^ countOneBits(select(-2147483648, u_input.d, true))))) {
        let var_1 = any(!select(vec3<bool>(!false, true | true, false), select(!arg_1.b, vec3<bool>(true, arg_0, false), vec3<bool>(arg_0, true, arg_3.x)), vec3<bool>(4294967295u >= u_input.c.x, -64760 < u_input.d, any(arg_1.b))));
        var var_2 = Struct_1(abs(arg_2.a), !(!select(arg_2.b, vec3<bool>(false, false, arg_2.b.x), true)));
        var var_3 = arg_1;
    }
    switch (-36773) {
        default: {
            var_0 = trunc(vec3<f32>(-(-exp2(arg_2.a)), -(648.0 + -(-1288.0)), (1315.0 - 389.0) + var_0.x));
            let var_1 = Struct_1(-var_0.x, !vec3<bool>(arg_3.x, !(!true), all(arg_2.b.yx) == !false));
        }
    }
    global2 = array<vec2<i32>, 28>();
    for (var var_1 = 1; arg_2.b.x != arg_3.x; ) {
        let var_2 = arg_2;
        for (var var_3: i32; var_3 > 2147483647; var_3 += 1) {
            break;
        }
        let var_3 = u_input.a;
        var_1 = u_input.e.x;
    }
    return ~u_input.b / (69267u >> u_input.b);
}

fn func_5() -> f32 {
    var var_0 = global4[countOneBits((~select(u_input.c.x, u_input.b, false) ^ 717u) + ~func_6(!false, global4[u_input.b - u_input.b], global4[u_input.b], !vec2<bool>(false, false)))];
    if (false) {
        var_0 = Struct_1(-(-(var_0.a + -1919.0)), var_0.b);
        if ((~(-(~u_input.e.x)) ^ ~(-31453)) > dot(-vec4<i32>(u_input.a, u_input.d, 2147483647, -26754) + vec4<i32>(5372 * u_input.a, -8553, -1, reverseBits(u_input.d)), firstTrailingBit(vec4<i32>(-43489 & u_input.e.x, 2147483647, -(-2147483648), max(-2147483648, -2147483648))))) {
            global1 = var_0.a;
            var var_1 = Struct_1(1908.0, select(!select(vec3<bool>(var_0.b.x, true, var_0.b.x), vec3<bool>(var_0.b.x, true, true), var_0.b), select(!vec3<bool>(var_0.b.x, var_0.b.x, false), vec3<bool>(var_0.b.x, false, false && var_0.b.x), select(var_0.b, !var_0.b, !var_0.b.x)), var_0.b.x));
            let var_2 = global4[1u ^ u_input.c.x];
            var var_3 = select(!(!var_0.b), !vec3<bool>(!(1 >= -26391), var_1.b.x, !var_1.b.x || !false), select(var_0.b, vec3<bool>(var_1.b.x, !all(vec4<bool>(var_1.b.x, false, var_0.b.x, false)), (true & var_0.b.x) || (-548.0 != var_1.a)), var_0.b));
            var_0 = Struct_1(-1389.0, vec3<bool>(any(vec4<bool>(var_1.b.x || false, true, true && var_1.b.x, !true)), var_2.b.x, var_2.b.x));
        }
        switch (-(-u_input.e.x ^ u_input.a)) {
            case 27942: {
                var var_1 = reverseBits(~(~firstTrailingBit(~vec4<u32>(u_input.c.x, u_input.b, u_input.b, u_input.c.x))));
                var var_2 = abs(vec4<i32>(max(firstLeadingBit(u_input.a), -(-41859)), 1, max(1, u_input.a), -3551 << clamp(firstLeadingBit(1u), dot(u_input.c, vec3<u32>(var_1.x, u_input.b, var_1.x)), u_input.c.x)));
                var var_3 = select(select(-exp2(vec2<f32>(var_0.a, -1823.0)), vec2<f32>(-129.0 * -1084.0, -var_0.a) + sign(vec2<f32>(var_0.a, var_0.a)), var_0.b.zx), trunc(step(vec2<f32>(var_0.a, var_0.a), vec2<f32>(-4155.0, var_0.a) + vec2<f32>(var_0.a, var_0.a)) * vec2<f32>(-921.0, var_0.a)), !vec2<bool>(all(!var_0.b.yz), all(!vec4<bool>(var_0.b.x, true, true, false))));
            }
            case 21660: {
                return max(-440.0, var_0.a + -floor(step(var_0.a, 1000.0)));
            }
            case -14958: {
            }
            default: {
                var var_1 = all(vec4<bool>(false, false, !true, ~(u_input.b & u_input.b) == clamp(63019u, 41508u >> 56909u, select(u_input.b, u_input.c.x, true))));
                var var_2 = global4[~4294967295u * clamp(u_input.b, func_6(all(vec2<bool>(false, var_0.b.x)), Struct_1(var_0.a * var_0.a, !var_0.b), Struct_1(var_0.a, select(var_0.b, vec3<bool>(false, var_0.b.x, true), var_0.b)), !var_0.b.zz), 10718u)];
                global1 = var_0.a;
                let var_3 = false;
                var_1 = all(!var_0.b);
            }
        }
    }
    global3 = array<vec3<f32>, 10>();
    let var_1 = -(-select(countOneBits(global2[4294967295u]), global2[u_input.c.x], true | false)) - select(u_input.e, vec2<i32>(-u_input.d, firstLeadingBit(1) & -u_input.a), !vec2<bool>(true || true, !var_0.b.x));
    for (var var_2 = -1; var_2 == -2147483648; ) {
        break;
    }
    return (trunc(max(-var_0.a, exp2(var_0.a))) + -(-(-var_0.a))) / 1110.0;
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: vec3<i32>, arg_3: u32) -> vec4<u32> {
    var var_0 = vec4<f32>(sign(-(-(596.0 / 602.0))), -139.0, -(floor(func_5()) / -round(-1655.0)), ceil(-(-120.0)));
    var var_1 = countOneBits(u_input.c.x) & u_input.b;
    switch (-48069) {
        default: {
            let var_2 = all(vec3<bool>(!true && (dot(vec3<u32>(u_input.c.x, 10020u, u_input.b), u_input.c) < countOneBits(u_input.b)), false || false, any(!vec4<bool>(arg_1, arg_1, arg_1, arg_1))));
        }
    }
    switch (arg_2.x) {
        case -2425: {
            var_1 = 35891u;
            let var_2 = select(select(-((vec4<f32>(var_0.x, -894.0, -1092.0, var_0.x) - vec4<f32>(373.0, 1000.0, var_0.x, 1000.0)) / -vec4<f32>(147.0, var_0.x, -2181.0, var_0.x)), vec4<f32>(var_0.x, 1000.0, (var_0.x / 193.0) + -810.0, -1798.0), select(select(select(vec4<bool>(arg_1, arg_1, false, false), vec4<bool>(true, false, true, arg_1), arg_1), select(vec4<bool>(arg_1, true, arg_1, false), vec4<bool>(arg_1, true, arg_1, arg_1), vec4<bool>(false, true, arg_1, false)), vec4<bool>(false, arg_1, true, arg_1)), vec4<bool>(!false, 24235u < arg_0, 0 != -25839, arg_1), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, arg_1, false), vec4<bool>(arg_1, false, arg_1, false)))), vec4<f32>(var_0.x, -var_0.x + var_0.x, var_0.x, 305.0) + vec4<f32>(var_0.x, -686.0 / -1918.0, 826.0, round(var_0.x + -182.0)), arg_1);
        }
        case 43266: {
        }
        default: {
        }
    }
    global0 = !false;
    return ~vec4<u32>(13524u, firstLeadingBit((55819u + arg_0) | u_input.b), u_input.c.x, 29468u);
}

fn func_3(arg_0: vec2<u32>) -> f32 {
    var var_0 = func_4(firstLeadingBit(65573u - abs(~5911u)), (!true || true) || (1 < (select(u_input.a, u_input.e.x, true) << select(u_input.c.x, u_input.b, true))), ((vec3<i32>(-3224, u_input.e.x, 25832) % (vec3<i32>(-2147483648, -25547, 67715) % vec3<i32>(u_input.d, u_input.d, 2147483647))) / -vec3<i32>(u_input.d, 2147483647, u_input.e.x)) / -vec3<i32>(abs(14117), ~(-19489), u_input.a), ~(~((22434u / 2274u) * ~30730u)));
    let var_1 = u_input.b;
    var var_2 = 2103.0;
    loop {
        var var_3 = select(select(select(vec3<bool>(!true, false && true, all(vec2<bool>(false, true))), !select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), all(vec3<bool>(true, true, false))), select(select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false), vec3<bool>(true, false, false), false || false), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), u_input.d == firstTrailingBit(-5842)), !vec3<bool>(any(vec2<bool>(true, true)), any(vec3<bool>(true, true, true)), false)), !(!(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true))), vec3<bool>(!false, false && !(!false), !(any(vec3<bool>(true, true, false)) & (true | false))));
    }
    for (var var_3 = 0; ; var_3 += 1) {
        var var_4 = global4[abs(firstLeadingBit(28458u) | firstTrailingBit(reverseBits(0u) & ~4294967295u))];
        break;
    }
    return 1723.0 * -(-1552.0);
}

fn func_2() -> Struct_1 {
    var var_0 = -5979;
    loop {
        continue;
    }
    for (var var_1 = ~dot(vec3<i32>(u_input.e.x & u_input.d, ~0, u_input.d), -vec3<i32>(678, -2147483648, 27125) >> ~u_input.c) >> ((~103381u + (4294967295u ^ 0u)) >> u_input.c.x); var_1 < -23334; global0 = abs(-26172) <= u_input.d) {
        loop {
            global1 = -(-func_3(u_input.c.yz % u_input.c.zy) * ceil(-719.0));
            var var_2 = true;
            var_2 = all(vec2<bool>(select(true, true && false, true) || ((false && true) && true), true));
        }
        var var_2 = u_input.a;
    }
    var var_1 = -global3[4294967295u];
    var_0 = firstLeadingBit(~u_input.a);
    return Struct_1(exp2(((var_1.x / -1070.0) / -(-602.0)) * -ceil(-1124.0)), !vec3<bool>(!true | all(vec2<bool>(true, true)), !true && any(vec3<bool>(false, false, false)), !(!false)));
}

fn func_7(arg_0: Struct_1) -> vec4<u32> {
    loop {
        break;
    }
    if (select(abs(arg_0.a - -arg_0.a), -1000.0, !any(func_2().b)) == arg_0.a) {
        global2 = array<vec2<i32>, 28>();
        var var_0 = false;
        global0 = true;
        global4 = array<Struct_1, 32>();
        global0 = arg_0.b.x;
    }
    for (; ; ) {
        var var_0 = ~min(1u, 0u) * u_input.b;
        if (false) {
            break;
        }
        loop {
        }
        var var_1 = func_2();
    }
    if (!arg_0.b.x) {
        let var_0 = arg_0;
        for (var var_1: i32; ; ) {
        }
        if (!arg_0.b.x) {
            global4 = array<Struct_1, 32>();
        }
        var var_1 = vec2<i32>(~(dot(-vec3<i32>(28808, 2147483647, 0), select(vec3<i32>(u_input.e.x, 1, u_input.a), vec3<i32>(u_input.a, 2844, 2147483647), vec3<bool>(var_0.b.x, true, var_0.b.x))) - -17733), u_input.a);
        var var_2 = -vec4<f32>((-119.0 * func_5()) / (-410.0 * 672.0), arg_0.a, exp2(var_0.a), 194.0);
    }
    let var_0 = select(vec3<bool>(arg_0.b.x, any(func_2().b), !((u_input.e.x * u_input.d) >= -30742)), !arg_0.b, arg_0.b.x);
    return ~(vec4<u32>(u_input.b, abs(~u_input.b), (26390u << u_input.c.x) % ~40061u, ~reverseBits(u_input.c.x)) ^ vec4<u32>(u_input.b, ~u_input.b, u_input.b, 0u * 63209u));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: Struct_1, arg_3: u32) -> bool {
    let var_0 = 4294967295u >= ~(u_input.c.x + (abs(1u) - (61434u % u_input.b)));
    var var_1 = vec4<i32>(firstTrailingBit(-(-1)), ~(-1), 1107, u_input.e.x + 2147483647) + select(-(vec4<i32>(u_input.e.x, -2147483648, 1, 0) - vec4<i32>(-2147483648, u_input.d, 29677, -16795)) >> func_7(func_2()), reverseBits(reverseBits(vec4<i32>(u_input.d, u_input.e.x, u_input.d, u_input.e.x))) >> ((vec4<u32>(u_input.c.x, u_input.c.x, 12844u, 77650u) << vec4<u32>(arg_3, arg_3, 5316u, arg_3)) | vec4<u32>(57044u, 1u, 20349u, 50524u)), !var_0);
    global0 = true;
    for (var var_2: i32; ; ) {
        var var_3 = -firstLeadingBit(dot(~(vec4<i32>(2147483647, var_1.x, u_input.e.x, u_input.a) / vec4<i32>(var_1.x, 10908, -1, -2147483648)), vec4<i32>(u_input.d, ~1, 22178, 15064)));
        for (var var_4 = 8715; all(arg_2.b); var_4 += 1) {
            let var_5 = !(!(!(!select(vec4<bool>(false, arg_1, false, arg_2.b.x), vec4<bool>(arg_1, false, false, true), var_0))));
            let var_6 = !var_5;
            let var_7 = u_input.b;
            var_2 = -(u_input.d & max(~var_1.x << abs(arg_3), min(1, u_input.d >> 76111u)));
            break;
        }
        break;
    }
    var var_2 = arg_2.a;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    if (select(true, any(!select(!vec4<bool>(false, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), true), true)), !(!func_1(true, false, global4[39596u], u_input.c.x)) & !(~u_input.d > (u_input.a | u_input.d)))) {
        let var_0 = Struct_1(-(abs(-913.0) / 957.0) - -1818.0, !(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false))));
    }
    var var_0 = Struct_1(728.0, func_2().b);
    switch (1) {
        case -2147483648: {
        }
        default: {
            global2 = array<vec2<i32>, 28>();
        }
    }
    loop {
    }
    let var_1 = ~max(vec2<u32>(u_input.c.x, countOneBits(43376u)) + (vec2<u32>(u_input.b, u_input.c.x) / (vec2<u32>(452u, 4294967295u) / vec2<u32>(4294967295u, 1u))), ~(~(~vec2<u32>(u_input.b, u_input.b))));
    let x = u_input.a;
    s_output = StorageBuffer(step(1000.0, max(var_0.a * 1199.0, -var_0.a) / -155.0), 22654, floor(round(-951.0) / var_0.a), select(min(-var_0.a + var_0.a, -var_0.a + 1207.0), trunc(-1000.0), var_0.b.x), ~(-(-select(vec3<i32>(71238, -48333, -2147483648), vec3<i32>(u_input.e.x, -1, -2147483648), var_0.b.x))));
}

