// {"0:0":[214,54,17,5,0,199,23,81,58,130,90,199,150,68,58,150,68,177,111,88,171,128,21,119,60,192,117,75,49,158,56,129,8,183,179,168,123,251,139,235,19,221,217,227,161,18,140,232,91,44,119,133,0,143,130,150,21,164,143,5,96,200,48,35]}
// Seed: 8965362717645957001

struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec4<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-953.0, -1633.0);

var<private> global1: array<u32, 20> = array<u32, 20>(20705u, 4294967295u, 10202u, 37204u, 32468u, 7594u, 14029u, 50796u, 56817u, 25379u, 19541u, 1u, 4294967295u, 19223u, 4294967295u, 1u, 4294967295u, 1u, 66199u, 58933u);

var<private> global2: vec4<bool>;

fn func_1() -> u32 {
    let var_0 = global0.x;
    if (!true) {
        var var_1 = Struct_2(-1 != 2147483647, Struct_1(((-579.0 / global0.x) + -(-930.0)) / round(step(-626.0, global0.x)), -vec4<f32>(global0.x, -1366.0, global0.x, -global0.x), vec4<bool>(global2.x, true, global2.x, false)), Struct_1(global0.x, vec4<f32>(-882.0, -(-174.0), 1092.0, global0.x) * min(vec4<f32>(-2279.0, global0.x, global0.x, global0.x), -vec4<f32>(-1074.0, global0.x, global0.x, -101.0)), !vec4<bool>(global2.x, global2.x, global2.x, true | false)));
    }
    var var_1 = any(global2.zyx);
    let var_2 = global0.x;
    global1 = array<u32, 20>();
    return u_input.a.x;
}

fn func_6() -> vec4<f32> {
    loop {
        global0 = round(vec2<f32>(1388.0, (-global0.x + 1117.0) - global0.x));
        var var_0 = u_input.e.x;
        if (global2.x) {
        }
    }
    var var_0 = -(-vec4<f32>(select(1448.0, global0.x, global2.x), global0.x, global0.x, -global0.x)) * vec4<f32>(1000.0, 382.0, select(689.0, max(-158.0, -310.0), global2.x), -238.0);
    var var_1 = vec4<bool>(!(!false), global2.x, all(select(global2.yw, select(!vec2<bool>(false, global2.x), vec2<bool>(global2.x, true), vec2<bool>(global2.x, global2.x)), select(global2.zz, !global2.zy, !false))), global2.x);
    let var_2 = var_0.x;
    for (var var_3 = -26215; !false; var_3 += 1) {
        for (var var_4 = -2147483648; ; var_4 -= 1) {
            let var_5 = (-(-(-var_0.xxz)) * -select(vec3<f32>(-906.0, global0.x, -435.0), vec3<f32>(var_0.x, -350.0, global0.x), vec3<bool>(var_1.x, global2.x, false))) * var_0.yxw;
            var_4 = u_input.d;
            var_4 = countOneBits(u_input.b) | 38144;
        }
        return floor(vec4<f32>(-round(global0.x), -(1000.0 - var_0.x), -484.0, global0.x / (-937.0 * global0.x)) + (select(max(vec4<f32>(var_0.x, global0.x, 1321.0, global0.x), vec4<f32>(-1579.0, 1000.0, -813.0, var_0.x)), min(vec4<f32>(1736.0, global0.x, 1952.0, var_0.x), vec4<f32>(var_0.x, -1321.0, var_0.x, var_0.x)), select(vec4<bool>(global2.x, true, false, true), vec4<bool>(global2.x, true, true, var_1.x), false)) - (vec4<f32>(-206.0, -1678.0, 166.0, global0.x) - floor(vec4<f32>(var_0.x, 316.0, global0.x, global0.x)))));
    }
    return -abs(ceil(select(vec4<f32>(global0.x, var_0.x, var_0.x, var_0.x), select(vec4<f32>(-548.0, global0.x, 1126.0, -729.0), vec4<f32>(-670.0, -1004.0, -2092.0, global0.x), global2.x), vec4<bool>(false, false, global2.x, global2.x))));
}

fn func_5() -> vec4<f32> {
    var var_0 = -(-vec3<f32>(global0.x, global0.x, -global0.x));
    var var_1 = Struct_2(false, Struct_1(-(-465.0 * var_0.x), vec4<f32>(2297.0, (-830.0 - var_0.x) / 424.0, 522.0, abs(global0.x) - -(-691.0)), select(select(vec4<bool>(true, global2.x, global2.x, global2.x), !vec4<bool>(global2.x, false, global2.x, global2.x), true), select(vec4<bool>(global2.x, true, global2.x, global2.x), select(vec4<bool>(true, global2.x, global2.x, false), vec4<bool>(true, global2.x, false, global2.x), true), any(vec2<bool>(global2.x, global2.x))), global2.x)), Struct_1(-(-(global0.x * 826.0)), func_6(), select(select(select(vec4<bool>(true, false, false, global2.x), vec4<bool>(false, global2.x, false, false), true), select(vec4<bool>(false, global2.x, global2.x, global2.x), vec4<bool>(true, global2.x, true, global2.x), vec4<bool>(global2.x, true, false, false)), vec4<bool>(global2.x, global2.x, false, false)), select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, global2.x)), select(vec4<bool>(true, global2.x, global2.x, global2.x), vec4<bool>(true, true, global2.x, global2.x), vec4<bool>(false, global2.x, true, global2.x)), select(vec4<bool>(false, global2.x, global2.x, global2.x), vec4<bool>(true, global2.x, true, true), global2.x)), (-1028.0 / var_0.x) <= -1000.0)));
    let var_2 = Struct_2(false, Struct_1(global0.x, var_1.c.b, !vec4<bool>(global2.x, !global2.x, all(global2.zyy), true)), Struct_1(-1000.0, vec4<f32>(-185.0 - global0.x, 1000.0, -global0.x, var_0.x) + max(var_1.b.b, vec4<f32>(-495.0, global0.x, -887.0, global0.x) * var_1.b.b), !select(select(vec4<bool>(true, global2.x, global2.x, global2.x), vec4<bool>(var_1.c.c.x, var_1.c.c.x, global2.x, true), var_1.b.c.x), select(var_1.c.c, var_1.b.c, global2.x), !global2.x)));
    loop {
        var var_3 = select(~vec2<i32>(u_input.b, -2147483648), clamp(-(vec2<i32>(2147483647, -2147483648) | vec2<i32>(u_input.d, 13692)) ^ firstLeadingBit(vec2<i32>(75984, 2147483647)), vec2<i32>(0, 0), ~(vec2<i32>(-1, 3491) >> max(u_input.a.yz, u_input.e.xz))), var_2.c.c.x);
        global2 = var_1.c.c;
        var var_4 = Struct_2(select(any(!select(vec3<bool>(var_1.c.c.x, var_1.b.c.x, false), vec3<bool>(global2.x, true, true), false)), var_1.a, !(!var_1.a)), Struct_1(-global0.x, sign(exp2(step(vec4<f32>(var_0.x, var_1.c.b.x, var_2.b.a, -1708.0), var_1.c.b))), select(var_1.c.c, var_1.c.c, select(select(var_2.c.c, vec4<bool>(false, true, var_1.c.c.x, global2.x), vec4<bool>(false, true, true, var_2.a)), vec4<bool>(true, var_1.b.c.x, false, false), !var_2.b.c))), Struct_1(global0.x * 1014.0, trunc(step(vec4<f32>(-303.0, 179.0, var_2.c.b.x, -1319.0), vec4<f32>(-1619.0, -982.0, var_2.c.b.x, var_1.c.a))), !var_1.c.c));
        break;
    }
    var var_3 = var_1.b.a + max(769.0, step(1137.0 - -771.0, (var_1.b.a * var_0.x) + func_6().x));
    return vec4<f32>(var_0.x, var_2.b.b.x, 496.0, exp2(-1188.0 / var_2.c.b.x));
}

fn func_4(arg_0: f32) -> bool {
    var var_0 = Struct_1(exp2(global0.x), func_5(), vec4<bool>(!(select(arg_0, arg_0, false) < 709.0), !all(global2.zyz), !((-60950 + 46375) < ~u_input.b), global2.x));
    return any(var_0.c.xy);
}

fn func_3() -> Struct_2 {
    let var_0 = false;
    if (true) {
        if (global2.x) {
            global0 = (-(vec2<f32>(global0.x, -1000.0) / -vec2<f32>(2010.0, -379.0)) - select(vec2<f32>(sign(-298.0), min(-2384.0, global0.x)), -(vec2<f32>(global0.x, global0.x) + vec2<f32>(global0.x, global0.x)), select(!global2.xz, vec2<bool>(global2.x, true), select(global2.wx, vec2<bool>(true, true), vec2<bool>(false, global2.x))))) / (-(-trunc(vec2<f32>(-109.0, 554.0))) / (step(vec2<f32>(313.0, -759.0) + vec2<f32>(global0.x, 655.0), floor(vec2<f32>(-1000.0, -1189.0))) - max(-vec2<f32>(global0.x, global0.x), -vec2<f32>(255.0, global0.x))));
            global2 = vec4<bool>(var_0 | global2.x, !any(select(select(vec4<bool>(var_0, true, false, global2.x), vec4<bool>(false, true, false, global2.x), vec4<bool>(var_0, global2.x, false, true)), !vec4<bool>(true, true, var_0, false), all(vec4<bool>(true, false, false, var_0)))), !var_0, !global2.x);
            global1 = array<u32, 20>();
            let var_1 = Struct_1(abs(-127.0 - -4090.0), vec4<f32>(global0.x, round(global0.x), -round(-global0.x), global0.x), !select(vec4<bool>(!global2.x, global2.x | var_0, var_0, global0.x != 679.0), !vec4<bool>(var_0, false, false, global2.x), vec4<bool>(global2.x, var_0, var_0, func_4(1542.0))));
            global1 = array<u32, 20>();
        }
        global1 = array<u32, 20>();
    }
    if (var_0) {
    }
    var var_1 = Struct_3(~abs(u_input.c | reverseBits(u_input.c)));
    var_1 = Struct_3(var_1.a);
    return Struct_2(true, Struct_1(select(-563.0 * global0.x, -func_6().x, all(global2.wx)), -vec4<f32>(global0.x, global0.x, -1400.0, 1616.0) * vec4<f32>(-global0.x, ceil(global0.x), 272.0, -global0.x), vec4<bool>(global2.x, global2.x, true, var_0)), Struct_1(841.0, (round(vec4<f32>(-436.0, global0.x, 701.0, 832.0)) + sign(vec4<f32>(1413.0, -514.0, global0.x, global0.x))) + -(-vec4<f32>(global0.x, global0.x, global0.x, 2088.0)), !select(vec4<bool>(false, var_0, var_0, false), select(vec4<bool>(false, var_0, global2.x, true), vec4<bool>(global2.x, var_0, true, false), vec4<bool>(var_0, true, true, global2.x)), true)));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<bool>) -> bool {
    var var_0 = func_3();
    let var_1 = u_input.e.x;
    var var_2 = any(!var_0.b.c.xw);
    return func_4((global0.x - -(-arg_0.x)) - (arg_0.x * -arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    loop {
        var var_0 = ~u_input.d;
        switch (u_input.b % max(~1403, 1)) {
            case 27622: {
                let var_1 = ~global1[func_1()];
                let var_2 = Struct_1(max(((-2572.0 / global0.x) + global0.x) - -exp2(global0.x), 170.0), -vec4<f32>(-642.0, -455.0, -(-global0.x), global0.x), select(!select(!vec4<bool>(global2.x, true, false, global2.x), !vec4<bool>(global2.x, true, global2.x, global2.x), select(vec4<bool>(true, false, true, global2.x), vec4<bool>(global2.x, global2.x, global2.x, true), vec4<bool>(false, global2.x, global2.x, global2.x))), !vec4<bool>(func_2(vec2<f32>(global0.x, -1384.0), vec4<bool>(false, global2.x, global2.x, true)), false, global2.x, !true), select(select(!vec4<bool>(global2.x, global2.x, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, global2.x, true), true), false), vec4<bool>(all(vec4<bool>(false, true, false, false)), global2.x, all(global2.zy), !global2.x), !func_3().c.c)));
                var var_3 = Struct_3(u_input.c);
                var var_4 = u_input.d;
            }
            case 0: {
                break;
            }
            case 1: {
                var var_1 = func_3();
                continue;
            }
            default: {
            }
        }
        global2 = vec4<bool>(false, select(select(func_4(abs(global0.x)), false, global2.x), true, false), all(!vec4<bool>(true, true, global2.x, any(global2.xxy))), !(!true));
        break;
    }
    if (~u_input.d != u_input.d) {
    }
    global2 = select(func_3().b.c, vec4<bool>(false, global2.x, !func_2(vec2<f32>(-244.0, global0.x) - vec2<f32>(1256.0, -1186.0), !vec4<bool>(global2.x, global2.x, false, global2.x)), func_3().b.c.x || (all(vec4<bool>(global2.x, global2.x, global2.x, false)) && !global2.x)), (all(vec3<bool>(global2.x, global2.x, true)) || ((-953.0 - -254.0) == 2541.0)) || func_2(select(vec2<f32>(-1296.0, global0.x) - vec2<f32>(global0.x, global0.x), vec2<f32>(global0.x, -934.0) - vec2<f32>(-735.0, 370.0), true && global2.x), vec4<bool>(any(vec3<bool>(global2.x, global2.x, false)), u_input.a.x >= u_input.a.x, global2.x, true)));
    var var_0 = func_3().b;
    global2 = select(var_0.c, vec4<bool>(!(!func_2(vec2<f32>(720.0, global0.x), vec4<bool>(var_0.c.x, false, false, false))), any(!func_3().b.c.wy), true, !(all(vec2<bool>(var_0.c.x, true)) || global2.x)), vec4<bool>(var_0.c.x, var_0.c.x, global2.x, !(!(u_input.b >= -5470))));
    global1 = array<u32, 20>();
    for (var var_1 = 32347; global2.x; global2 = !(!(!(!var_0.c)))) {
    }
    switch (select(-1 ^ (u_input.b ^ 0), -51221, true)) {
        case -2147483648: {
            for (var var_1 = 17080; var_0.c.x; var_1 += 1) {
                break;
            }
            global1 = array<u32, 20>();
            let var_1 = u_input.c.x;
            var_0 = func_3().b;
            switch (~select(1, u_input.d, ((u_input.e.x - global1[0u]) & 112655u) != var_1)) {
                default: {
                    var var_2 = -11447 <= dot(vec4<i32>(clamp(-15113, 0, u_input.b) ^ ~(-2147483648), countOneBits(u_input.b + u_input.b), -(-1), 44), (firstLeadingBit(vec4<i32>(u_input.b, -38080, -2147483648, u_input.d)) & ~vec4<i32>(u_input.d, -2147483648, u_input.b, 0)) >> ((u_input.c ^ u_input.c) & vec4<u32>(global1[101060u], var_1, global1[34305u], 7215u)));
                    var var_3 = Struct_1((var_0.a - 282.0) * 435.0, var_0.b, select(!var_0.c, vec4<bool>(!(5428 >= -1), any(!vec2<bool>(true, global2.x)), all(var_0.c.zwx), false), false));
                    var_2 = !false;
                    let var_4 = u_input.e.zz;
                }
            }
        }
        default: {
        }
    }
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(reverseBits(reverseBits(-38874))), vec3<f32>(step(global0.x, -global0.x), 460.0, min(abs(global0.x), exp2(var_0.a))) / var_0.b.wzw, -sign(var_0.b), vec2<i32>(u_input.b, u_input.d));
}

