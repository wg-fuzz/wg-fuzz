// {"0:0":[231,203,61,40,45,143,191,255,206,76,103,210,25,17,159,139,78,195,101,242,142,38,164,110,131,181,140,63,28,118,118,172]}
// Seed: 15877446108254598414

struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, 0u, vec4<bool>(true, false, false, false));

var<private> global1: array<bool, 2> = array<bool, 2>(true, false);

var<private> global2: Struct_1;

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    loop {
        var var_0 = arg_1;
        if (all(select(vec3<bool>((global0.c.x && global1[4294967295u]) & all(arg_0.c), any(vec3<bool>(false, true, global2.a)), true), !arg_0.c.yxy, select(var_0.c.xxy, select(select(arg_0.c.wwx, arg_0.c.wyy, var_0.c.yww), vec3<bool>(global1[4294967295u], false, global2.c.x), !false), select(!vec3<bool>(arg_1.c.x, arg_1.a, false), var_0.c.yxz, arg_0.c.www))))) {
            global1 = array<bool, 2>();
            var var_1 = select(vec3<bool>(any(!vec3<bool>(false, global2.a, true)) | !global2.c.x, !(arg_0.a & (true | false)), true), arg_0.c.zxy, select(!vec3<bool>(!arg_0.a, false, !true), var_0.c.yxz, vec3<bool>(true, !arg_0.c.x, var_0.a)));
        }
    }
    var var_0 = global2.b * (dot(vec3<u32>(global2.b, global2.b, ~global0.b), u_input.a) * (~arg_1.b - (dot(vec4<u32>(8832u, 6784u, global2.b, arg_1.b), vec4<u32>(global2.b, 1607u, 0u, u_input.c.x)) + (global0.b - arg_1.b))));
    global1 = array<bool, 2>();
    var var_1 = !arg_0.c.zw;
    switch (dot(vec2<i32>(~33641, 2147483647 % u_input.b), (vec2<i32>(firstLeadingBit(1), reverseBits(-17593)) | vec2<i32>(firstLeadingBit(u_input.b), u_input.b)) & vec2<i32>(45119, u_input.b))) {
        default: {
            switch (dot(countOneBits(vec2<i32>(2147483647, -4300 * u_input.b)), vec2<i32>(u_input.b, u_input.b / dot(abs(vec3<i32>(-2147483648, u_input.b, 15165)), vec3<i32>(u_input.b, u_input.b, u_input.b))))) {
                default: {
                }
            }
            switch (29382) {
                case -25110: {
                }
                case -60711: {
                }
                case 0: {
                    global2 = arg_1;
                    var var_2 = arg_1;
                    global2 = Struct_1(all(!arg_1.c.zyy), ~((0u & ~arg_0.b) >> ~countOneBits(arg_0.b)), !vec4<bool>(all(!arg_1.c.wy), global2.c.x, u_input.b < u_input.b, abs(var_2.b) == 0u));
                }
                default: {
                    var var_2 = round(trunc(-step(vec3<f32>(1000.0, -1598.0, 2442.0), vec3<f32>(-1336.0, 162.0, 1000.0) - vec3<f32>(1141.0, 1781.0, 1026.0))));
                    var_2 = ceil(max(round(-(-vec3<f32>(var_2.x, 1569.0, var_2.x))), -vec3<f32>(-510.0, -536.0, var_2.x) + (vec3<f32>(var_2.x, var_2.x, 852.0) * (vec3<f32>(var_2.x, -1000.0, var_2.x) + vec3<f32>(-555.0, var_2.x, -261.0)))));
                }
            }
            global0 = arg_0;
            global2 = arg_0;
        }
    }
    return u_input.b & 10695;
}

fn func_5(arg_0: Struct_1) -> f32 {
    var var_0 = arg_0;
    if (true) {
        let var_1 = abs(-vec4<f32>(-180.0 * 793.0, 728.0 / 1000.0, -(-117.0), -1000.0) + -(vec4<f32>(1587.0, -1107.0, 1735.0, -713.0) / -vec4<f32>(-2068.0, 666.0, -510.0, -1688.0)));
        loop {
            var var_2 = arg_0;
            continue;
        }
        for (var var_2 = func_6(Struct_1(!true, arg_0.b, vec4<bool>(true, var_0.a, global0.a, arg_0.a)), Struct_1(global2.c.x, firstTrailingBit(~66526u), vec4<bool>(false, global2.a, !var_0.c.x, !arg_0.a))) + clamp(~(u_input.b / u_input.b), -(-(~(-2147483648))), 75374 * u_input.b); var_2 <= -2147483648; var_2 += 1) {
            var var_3 = select(~(-(vec3<i32>(u_input.b, u_input.b, u_input.b) * -vec3<i32>(u_input.b, 83776, u_input.b))), -vec3<i32>(dot(vec3<i32>(-38658, -7109, u_input.b), vec3<i32>(-1, u_input.b, u_input.b) >> vec3<u32>(global2.b, 1u, global2.b)), u_input.b ^ firstTrailingBit(u_input.b), 0), !(!arg_0.c.xzy));
            var var_4 = vec3<f32>(-var_1.x, ((select(-444.0, var_1.x, true) + var_1.x) + -(-1434.0)) * -(-713.0), round(var_1.x));
            var_3 = ((vec3<i32>(u_input.b >> global2.b, firstLeadingBit(u_input.b), u_input.b) / countOneBits(~vec3<i32>(var_3.x, var_3.x, var_3.x))) >> reverseBits(countOneBits(u_input.c) * (u_input.c - u_input.a))) ^ select(firstTrailingBit(vec3<i32>(-18562, 1, 26779) % vec3<i32>(u_input.b, -46935, var_3.x)) / ~firstTrailingBit(vec3<i32>(35382, -9915, -2147483648)), vec3<i32>(1, 36164, (var_3.x >> 8584u) + (var_3.x / var_3.x)), select(select(vec3<bool>(global0.a, var_0.c.x, arg_0.a), !vec3<bool>(var_0.a, false, var_0.c.x), false), global0.c.yzy, !select(vec3<bool>(var_0.c.x, global0.a, false), vec3<bool>(false, false, true), true)));
            var var_5 = ~vec2<u32>(1u, ~0u);
        }
        let var_2 = !select(select(!select(vec4<bool>(false, global2.c.x, true, false), arg_0.c, arg_0.c), !vec4<bool>(arg_0.a, true, global0.a, global1[u_input.c.x]), true), !var_0.c, !vec4<bool>(global2.a, global1[global0.b], any(global2.c.yzz), true));
    }
    if (!true) {
        if (arg_0.c.x) {
            return trunc(1446.0);
        }
        global1 = array<bool, 2>();
        for (var var_1: i32; false; global0 = arg_0) {
        }
        global1 = array<bool, 2>();
        return -(floor(812.0) + (-(-875.0 / -287.0) * -(1125.0 + 529.0)));
    }
    if (arg_0.a) {
    }
    var var_1 = min(-(-(-min(vec4<f32>(-677.0, 975.0, -767.0, 1573.0), vec4<f32>(138.0, -889.0, 171.0, 897.0)))), vec4<f32>(986.0, -(exp2(806.0) * select(707.0, 1273.0, false)), -1000.0 / -774.0, min(select(-532.0 + 988.0, 376.0 - 512.0, var_0.c.x), 778.0)));
    return -1000.0;
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<bool>) -> f32 {
    var var_0 = func_5(Struct_1(false, global0.b, !(!global0.c)));
    let var_1 = -select(vec3<f32>(round(106.0) + abs(1238.0), -(-451.0) + -(-687.0), trunc(-234.0 + 876.0)), -vec3<f32>(-1630.0, 582.0, 1380.0 / -978.0), false);
    let var_2 = Struct_1(((1 | (u_input.b * u_input.b)) <= ~(-(-1))) || !(!(false & global2.a)), global2.b, vec4<bool>(arg_1.x, select(all(global2.c.wxy), countOneBits(1) != u_input.b, true), global2.c.x, all(!select(vec2<bool>(global2.c.x, false), global0.c.xy, true))));
    global2 = Struct_1(false && (~(var_2.b >> 0u) != u_input.a.x), ~u_input.a.x, select(var_2.c, select(!vec4<bool>(arg_1.x, global0.c.x, false, false), vec4<bool>(all(global0.c), select(true, true, arg_1.x), !false, global0.c.x), select(select(vec4<bool>(global1[4294967295u], false, global2.c.x, false), vec4<bool>(arg_1.x, false, false, false), true), global0.c, select(var_2.c, global2.c, global1[4315u]))), !select(!vec4<bool>(var_2.c.x, false, global1[83605u], false), select(vec4<bool>(true, global2.a, true, global1[21193u]), vec4<bool>(var_2.a, var_2.a, false, true), true), !vec4<bool>(false, false, global1[115359u], false))));
    if (all(!global0.c.zx)) {
        switch (-24778) {
            case 779: {
            }
            case 7900: {
                global1 = array<bool, 2>();
                global1 = array<bool, 2>();
            }
            case -13158: {
                let var_3 = ~u_input.c;
                let var_4 = 4294967295u - var_2.b;
                var var_5 = clamp((select(u_input.b, u_input.b, global2.c.x) / -u_input.b) / -(~u_input.b), u_input.b, 2147483647) << (~(~var_4 ^ clamp(1u, 2400u, 18434u)) >> (u_input.a.x * dot(~arg_0.wz, var_3.xy)));
                var_5 = (u_input.b % (-2147483648 - u_input.b)) / (1 << dot(~reverseBits(vec3<u32>(32561u, var_3.x, 14693u)), vec3<u32>(u_input.a.x, var_3.x, 4294967295u) / clamp(vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(16562u, global0.b, 0u), u_input.c)));
            }
            case -16065: {
                var var_3 = u_input.b;
                let var_4 = arg_1.x;
                var var_5 = all(vec4<bool>(global0.c.x, !true, 0 <= u_input.b, !(!true))) | (!(!any(global2.c)) || !any(vec3<bool>(false, true, true)));
                global0 = var_2;
                let var_6 = Struct_1(all(global0.c), 17337u, !var_2.c);
            }
            default: {
                global2 = Struct_1(select(false, global0.a, true), ~reverseBits(39198u), vec4<bool>(all(select(vec2<bool>(global0.c.x, global2.a), vec2<bool>(global1[u_input.a.x], global1[4294967295u]), var_2.c.xz)) || false, !arg_1.x, global2.c.x, false));
                var var_3 = select(max(select(arg_0, vec4<u32>(4294967295u, 4294967295u, global2.b, 1u), !global1[global2.b]), arg_0 & (vec4<u32>(20380u, global2.b, 4294967295u, 0u) >> arg_0)) >> ~(~vec4<u32>(4294967295u, 1u, var_2.b, global2.b) | ~vec4<u32>(global0.b, global0.b, global2.b, 0u)), ~firstLeadingBit(vec4<u32>(4294967295u, u_input.a.x, 80548u, var_2.b) << ~vec4<u32>(1u, var_2.b, var_2.b, 44656u)), select(false, -1855.0 <= -var_1.x, false));
            }
        }
        loop {
            var_0 = trunc(var_1.x);
            continue;
        }
        let var_3 = u_input.c.x;
        if (!all(select(select(!vec2<bool>(true, false), !global2.c.ww, !arg_1), arg_1, !global2.c.wz))) {
            var var_4 = select(-vec4<f32>(1000.0, var_1.x, 678.0 - abs(-1492.0), abs(var_1.x)), vec4<f32>(-1000.0, 1613.0, min(-(-543.0 - var_1.x), round(step(-888.0, 1063.0))), var_1.x), false);
            let var_5 = all(var_2.c);
            global1 = array<bool, 2>();
        }
    }
    return -((var_1.x / -var_1.x) - -exp2(sign(-1009.0)));
}

fn func_7(arg_0: f32, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = (-(~(~u_input.b)) & dot(abs(vec3<i32>(0, 57257, u_input.b)) + max(vec3<i32>(2147483647, -1, u_input.b), vec3<i32>(-67670, u_input.b, 12956)), vec3<i32>(u_input.b, -18062, u_input.b) >> (vec3<u32>(4294967295u, 16468u, 75103u) ^ vec3<u32>(1u, arg_1.b, arg_1.b)))) - reverseBits(31695);
    var var_1 = vec4<f32>((arg_0 * -1106.0) / ceil(arg_0), (-1404.0 / arg_0) * arg_2.x, -142.0 - (func_5(Struct_1(arg_1.a, u_input.a.x, global0.c)) * exp2(arg_2.x)), arg_2.x) * -arg_2;
    var var_2 = arg_1;
    loop {
        var_2 = Struct_1(true & !(!arg_1.a), min(~(~dot(vec4<u32>(arg_1.b, 4294967295u, var_2.b, global0.b), vec4<u32>(30700u, u_input.a.x, 4294967295u, u_input.a.x))), countOneBits(abs(min(arg_3.b, 12894u)))), !select(!(!vec4<bool>(false, global1[var_2.b], true, false)), !(!vec4<bool>(global1[0u], false, arg_3.a, global1[global0.b])), arg_3.c));
        var var_3 = round(vec3<f32>(sign(arg_0), -201.0, arg_2.x / 963.0) - ((vec3<f32>(531.0, arg_2.x, arg_2.x) * vec3<f32>(arg_2.x, arg_2.x, arg_0)) - arg_2.wwx)) / arg_2.yyx;
    }
    for (var var_3 = 16427; ((global2.b + ((global0.b * var_2.b) % global2.b)) % (countOneBits(u_input.a.x) + (~29216u | ~93608u))) >= ~dot(u_input.a, ~vec3<u32>(2282u, arg_1.b, global0.b)); var_3 += 1) {
        var var_4 = vec2<u32>(arg_3.b, 27427u);
        if (false) {
            let var_5 = Struct_1(!(!(false || any(vec2<bool>(false, true)))), 0u, !vec4<bool>((4991 ^ -2147483648) > (var_0 / -21154), all(arg_3.c.zy), true, !(-637.0 < 1522.0)));
            let var_6 = false;
            continue;
        }
        switch (firstTrailingBit(var_0 - (abs(var_0) & -u_input.b))) {
            case -37669: {
                global1 = array<bool, 2>();
            }
            case 1: {
            }
            case 23224: {
                var var_5 = 37118u;
                continue;
            }
            default: {
                let var_5 = Struct_1(true, clamp(arg_1.b, var_2.b, reverseBits(var_4.x)), !global2.c);
                var var_6 = var_1.x;
                let var_7 = -(-(~(-vec3<i32>(31981, var_0, 14603))) * vec3<i32>(1, u_input.b, abs(20616 / var_0)));
                var var_8 = var_5;
                var var_9 = arg_3;
            }
        }
        switch (var_0) {
            case 2147483647: {
                global1 = array<bool, 2>();
                let var_5 = vec2<i32>(~countOneBits(1), var_0);
                var var_6 = select(vec4<bool>(all(vec4<bool>(16870 <= var_5.x, false, arg_3.a, !global0.a)), !select(true, !false, !global1[arg_3.b]), select(false, true, global1[~(arg_3.b << 36365u)]), arg_1.c.x), !select(select(vec4<bool>(arg_1.a, arg_3.c.x, arg_1.c.x, arg_3.a), vec4<bool>(true, global1[var_4.x], true, false), !arg_1.c), arg_1.c, all(!vec3<bool>(var_2.c.x, false, false))), any(arg_1.c));
                let var_7 = -vec2<f32>((-673.0 - -var_1.x) + (var_1.x + -792.0), -(-1634.0 - (var_1.x * -1447.0)));
            }
            case -2147483648: {
                let var_5 = vec4<u32>(max(abs(15731u) >> (~1u % 38781u), 0u), ((var_4.x ^ u_input.c.x) + 1u) % ((reverseBits(var_4.x) * countOneBits(arg_1.b)) % abs(21642u | 1u)), countOneBits(abs(global2.b)), ~abs(2870u & (arg_1.b % var_2.b)));
                let var_6 = -1000.0 + arg_0;
                var var_7 = 0;
                var var_8 = Struct_1(false, ((1u << var_4.x) + clamp(~var_4.x, 7789u + 30522u, u_input.a.x)) / (((arg_3.b >> arg_3.b) >> (1623u / 0u)) - 318u), !vec4<bool>(972.0 > -var_1.x, all(arg_1.c.ww), any(vec4<bool>(false, arg_3.c.x, false, arg_1.c.x)), !global0.a));
                continue;
            }
            case -1: {
                continue;
            }
            case 1: {
                var_3 = -68824;
                var var_5 = select(select(!select(global2.c.zxy, select(vec3<bool>(false, false, true), vec3<bool>(var_2.a, false, false), arg_1.a), 2147483647 <= u_input.b), select(!(!vec3<bool>(global0.c.x, false, global0.a)), vec3<bool>(!global2.c.x, select(false, var_2.c.x, global2.a), arg_3.a), !vec3<bool>(arg_3.a, false, global0.a)), u_input.b > clamp(~0, ~27948, -var_0)), var_2.c.yxw, vec3<bool>(arg_2.x != func_4(select(vec4<u32>(71848u, 1u, var_4.x, arg_1.b), vec4<u32>(var_2.b, u_input.c.x, 7019u, var_4.x), arg_1.c), select(vec2<bool>(false, false), vec2<bool>(global1[4294967295u], false), vec2<bool>(global1[arg_3.b], true))), global0.c.x, !false));
                let var_6 = Struct_1(true, ~abs(~4294967295u - 69398u), var_2.c);
                break;
            }
            default: {
                let var_5 = arg_3;
                let var_6 = !vec2<bool>(false, -var_1.x > trunc(step(-517.0, arg_0)));
                global0 = Struct_1(any(var_5.c.ww), arg_1.b, vec4<bool>(global2.a, !(!var_2.c.x), arg_1.a, true));
                var_4 = ((~(u_input.a.yy | u_input.a.zz) - u_input.c.xz) | u_input.c.yz) % ~vec2<u32>(arg_3.b, global2.b);
            }
        }
        var var_5 = Struct_1(global1[(((arg_3.b + global2.b) << ~var_4.x) / ~(~var_4.x)) % (1u % arg_1.b)], arg_1.b, select(!(!select(arg_1.c, var_2.c, vec4<bool>(global2.c.x, arg_3.a, global1[var_2.b], global0.a))), select(vec4<bool>(arg_3.a, arg_3.a, var_2.a, true), !(!var_2.c), vec4<bool>(var_2.a, false, global1[16552u], !global1[0u])), (0u + ~arg_3.b) <= ~(~33597u)));
    }
    return Struct_1(all(select(select(vec2<bool>(true, true), vec2<bool>(false, global0.c.x), !vec2<bool>(arg_3.c.x, arg_3.c.x)), vec2<bool>(!true, arg_3.b >= global0.b), all(!arg_1.c.wwy))), reverseBits(u_input.c.x), !vec4<bool>(var_2.a, all(global2.c.wyx), all(select(vec4<bool>(arg_3.a, global2.a, true, global2.c.x), vec4<bool>(false, false, var_2.a, arg_1.a), false)), -(-1025.0) <= min(534.0, -468.0)));
}

fn func_3() -> bool {
    global0 = func_7(-step(-(-(-964.0)), sign(1000.0)), Struct_1(global1[abs(select(u_input.c.x, 5078u, global1[6830u])) | global2.b], ~(clamp(80468u, 31344u, 0u) << (28429u % global2.b)), global2.c), vec4<f32>(exp2(1312.0), -(-(-187.0)), trunc(-(-241.0)), -func_4(vec4<u32>(19118u, 1u, 58434u, global0.b), vec2<bool>(false, global2.a)) / -(-1661.0)), Struct_1(global2.a, 85542u, vec4<bool>(!false, any(!vec3<bool>(global0.a, false, false)), 1865.0 > -663.0, !all(vec4<bool>(true, global0.c.x, false, global2.c.x)))));
    var var_0 = func_7((step(ceil(1055.0), -(-1413.0)) * -177.0) + -780.0, Struct_1(true, ~0u, select(vec4<bool>(any(global2.c.ww), true & false, true, true), func_7(-648.0 / -1000.0, Struct_1(global1[1u], 63998u, global2.c), -vec4<f32>(657.0, -1147.0, 1491.0, 2588.0), func_7(-608.0, Struct_1(global0.c.x, 42901u, vec4<bool>(global0.a, false, false, false)), vec4<f32>(741.0, 1664.0, -614.0, 1000.0), Struct_1(global0.c.x, 1u, global2.c))).c, false)), -(-vec4<f32>(-733.0, 349.0, -371.0, 768.0) + vec4<f32>(abs(1439.0), round(-312.0), -2023.0, 812.0 * 500.0)), Struct_1(any(!global2.c.xx) && global1[dot(u_input.a.yz, u_input.c.yy) | func_7(-2105.0, Struct_1(false, 21625u, vec4<bool>(false, false, global0.a, false)), vec4<f32>(388.0, -1489.0, -136.0, -167.0), Struct_1(true, global0.b, vec4<bool>(global2.c.x, global1[global2.b], global2.a, true))).b], 0u, select(!select(global2.c, vec4<bool>(global1[8798u], false, true, false), global2.c), select(vec4<bool>(true, global1[global0.b], global2.a, global0.c.x), vec4<bool>(global2.a, false, global1[u_input.c.x], global0.c.x), global2.c), !(false & global0.a))));
    loop {
        return select(false, false, !func_7(-(1134.0 + 1000.0), func_7(-1752.0, Struct_1(true, 1u, vec4<bool>(global0.a, global2.c.x, var_0.c.x, true)), vec4<f32>(477.0, -1364.0, -254.0, -726.0), func_7(-1078.0, Struct_1(global2.a, 4294967295u, global2.c), vec4<f32>(-1570.0, 750.0, -325.0, 576.0), Struct_1(false, 82997u, vec4<bool>(global0.a, global0.a, global0.a, false)))), select(vec4<f32>(1000.0, 434.0, 398.0, -702.0), vec4<f32>(-761.0, -626.0, 890.0, -805.0), !vec4<bool>(false, false, true, true)), Struct_1(global0.a, global2.b, func_7(-3420.0, Struct_1(false, u_input.a.x, vec4<bool>(false, false, global1[global0.b], var_0.c.x)), vec4<f32>(1602.0, -2436.0, -1161.0, 650.0), Struct_1(false, 0u, var_0.c)).c)).a);
    }
    if (!any(global0.c)) {
        switch (-u_input.b) {
            case -2041: {
                global2 = func_7(-1250.0, func_7((-1772.0 / (256.0 / -1322.0)) / -(-1000.0), func_7(-(-(-346.0)), func_7(587.0, Struct_1(global2.a, u_input.c.x, global2.c), vec4<f32>(217.0, 908.0, 1000.0, 1000.0) / vec4<f32>(338.0, 579.0, -800.0, -919.0), Struct_1(false, global2.b, var_0.c)), vec4<f32>(sign(-554.0), sign(-457.0), step(-343.0, 927.0), trunc(171.0)), func_7(floor(1016.0), func_7(418.0, Struct_1(global1[global0.b], 4294967295u, vec4<bool>(true, global1[38384u], false, var_0.a)), vec4<f32>(-457.0, 840.0, 1246.0, -394.0), Struct_1(var_0.a, global2.b, vec4<bool>(global2.a, var_0.a, true, false))), abs(vec4<f32>(-208.0, -978.0, -1343.0, -271.0)), func_7(567.0, Struct_1(true, u_input.c.x, global0.c), vec4<f32>(-529.0, 750.0, -1238.0, 126.0), Struct_1(true, var_0.b, var_0.c)))), -(-vec4<f32>(-261.0, -1272.0, 1686.0, 556.0)) - vec4<f32>(-1439.0 / 162.0, abs(1002.0), -(-124.0), -989.0), Struct_1(!all(var_0.c), global0.b, var_0.c)), -vec4<f32>(1013.0, -(-1518.0), ceil(-1049.0), 518.0 + 1295.0) / -vec4<f32>(629.0 - 246.0, floor(1689.0), -936.0 + 870.0, 977.0 + 1213.0), func_7(max(-func_4(vec4<u32>(var_0.b, 1u, 27791u, 4294967295u), global2.c.yx), -873.0), Struct_1(!any(global0.c.wyy), dot(min(vec4<u32>(u_input.c.x, global0.b, u_input.c.x, global2.b), vec4<u32>(60567u, 858u, var_0.b, global0.b)), select(vec4<u32>(23260u, u_input.a.x, var_0.b, global2.b), vec4<u32>(u_input.c.x, 1u, global2.b, 1524u), var_0.c)), select(select(global0.c, var_0.c, global1[var_0.b]), select(vec4<bool>(false, global0.c.x, false, true), vec4<bool>(var_0.c.x, true, false, true), var_0.c.x), vec4<bool>(global0.c.x, global2.c.x, global0.a, global2.c.x))), floor(select(vec4<f32>(438.0, -645.0, -311.0, 770.0), vec4<f32>(-100.0, 306.0, -213.0, -555.0), false) * vec4<f32>(1433.0, -1000.0, 1458.0, 193.0)), func_7(round(-(-1503.0)), func_7(sign(1000.0), Struct_1(global1[1u], 23538u, var_0.c), vec4<f32>(-155.0, 559.0, 2211.0, -136.0), func_7(-529.0, Struct_1(true, 1u, vec4<bool>(global0.a, true, global2.c.x, global2.a)), vec4<f32>(1257.0, -1000.0, -956.0, -298.0), Struct_1(global2.a, 1u, vec4<bool>(true, false, global0.c.x, var_0.a)))), select(vec4<f32>(1807.0, -942.0, -1501.0, -497.0), vec4<f32>(660.0, 546.0, 963.0, -389.0), global0.a) / vec4<f32>(-147.0, 193.0, 1178.0, 1000.0), Struct_1(true, ~4294967295u, !vec4<bool>(false, global1[u_input.c.x], global1[var_0.b], true)))));
            }
            case 18943: {
                var_0 = func_7(-1654.0 + -1051.0, Struct_1(!select(true, global2.a, var_0.a), global0.b, !(!vec4<bool>(true, true, false, true))), vec4<f32>(abs(-(-2112.0)), -689.0, -ceil(-(-1073.0)), -(-516.0 * sign(-783.0))), func_7(-(-(-1023.0 / 966.0)), func_7(min(-2045.0, 1733.0) + -215.0, Struct_1(all(vec3<bool>(var_0.c.x, global2.a, false)), var_0.b, select(var_0.c, vec4<bool>(true, false, global2.a, true), vec4<bool>(var_0.a, false, var_0.a, true))), vec4<f32>(-1000.0, 721.0, 2519.0 / 574.0, -1242.0), Struct_1(!var_0.c.x, select(global0.b, 0u, global0.a), var_0.c)), -exp2(vec4<f32>(-663.0, 1672.0, 1270.0, 291.0) - vec4<f32>(-1843.0, 709.0, 794.0, -697.0)), Struct_1(!true, ~(~global0.b), global0.c)));
                return false && any(select(!global2.c.zxz, vec3<bool>(any(var_0.c), global0.a, u_input.b > 0), !(!global2.c.wxy)));
            }
            case 2147483647: {
                var_0 = Struct_1(false == !(!global2.a), 2716u, vec4<bool>(true, false, global0.a, true == (max(1429.0, -651.0) >= 2432.0)));
                var var_1 = true && ((true && (global0.c.x & global1[2951u >> 53156u])) && select(!(global2.b <= 54055u), false, global1[global2.b]));
                global0 = Struct_1(global0.c.x, dot(firstLeadingBit(select(u_input.c.zy + u_input.a.yz, vec2<u32>(u_input.c.x, u_input.a.x), var_0.a)), abs(clamp(vec2<u32>(global2.b, global0.b) / vec2<u32>(17780u, 22544u), ~u_input.c.xz, vec2<u32>(38417u, 1u) / u_input.c.xx))), !vec4<bool>(any(global2.c.xxw), !false, false, global2.c.x));
            }
            case 33690: {
                let var_1 = Struct_1(!global1[global2.b], clamp(abs(~(~u_input.a.x)), 19880u, (~global0.b + global0.b) % dot(~u_input.a.zx, vec2<u32>(global0.b, u_input.c.x) ^ u_input.a.yy)), !select(func_7(floor(-1810.0), func_7(-491.0, Struct_1(var_0.a, 30416u, var_0.c), vec4<f32>(-1824.0, 618.0, 720.0, -1112.0), Struct_1(global1[45931u], 22452u, var_0.c)), vec4<f32>(-1000.0, -1820.0, 118.0, 1686.0) - vec4<f32>(426.0, -1000.0, 221.0, 500.0), Struct_1(global2.a, var_0.b, vec4<bool>(global2.c.x, true, global0.c.x, global0.c.x))).c, global0.c, !select(global0.c.x, global2.c.x, true)));
            }
            default: {
                var var_1 = vec4<f32>(trunc(-ceil(abs(237.0))), -(max(308.0, ceil(-692.0)) - sign(floor(-1000.0))), abs(-205.0), sign(-sign(485.0 + 245.0)));
                var_1 = vec4<f32>(var_1.x, min(var_1.x, -796.0), 1135.0 - var_1.x, var_1.x);
            }
        }
        global0 = func_7(ceil(-(-(618.0 + -692.0))), func_7(-(trunc(694.0) + -143.0), func_7(-1000.0, Struct_1(any(global2.c.wx), dot(vec2<u32>(global2.b, global0.b), vec2<u32>(54764u, var_0.b)), var_0.c), -(vec4<f32>(790.0, -392.0, -1205.0, -776.0) - vec4<f32>(752.0, 2049.0, -1016.0, 1000.0)), func_7(312.0 * 511.0, Struct_1(global1[0u], global0.b, vec4<bool>(global1[70279u], false, true, true)), vec4<f32>(-460.0, 959.0, 468.0, 676.0) / vec4<f32>(-569.0, -2086.0, 1383.0, -232.0), Struct_1(global1[0u], var_0.b, vec4<bool>(var_0.a, false, false, true)))), vec4<f32>(sign(-(-1247.0)), 529.0, -(-1000.0 * -644.0), -(243.0 * -214.0)), Struct_1(global0.c.x && !global2.c.x, global0.b, global2.c)), vec4<f32>(1126.0, abs(-896.0), -2145.0, round(-741.0) * -(-399.0 - -620.0)), func_7(1518.0 / select(-(-1000.0), min(-823.0, -1387.0), func_7(-486.0, Struct_1(global2.c.x, u_input.c.x, var_0.c), vec4<f32>(1000.0, -462.0, -662.0, 826.0), Struct_1(false, u_input.a.x, global2.c)).c.x), Struct_1(true, var_0.b, vec4<bool>(any(var_0.c.zwy), false, false | false, u_input.b == u_input.b)), -min(max(vec4<f32>(266.0, 741.0, -845.0, 360.0), vec4<f32>(-1398.0, 963.0, 493.0, 1136.0)), sign(vec4<f32>(413.0, -916.0, -203.0, -132.0))), func_7(-min(774.0, -603.0), Struct_1(false, abs(global2.b), vec4<bool>(true, global0.a, false, global1[global2.b])), -vec4<f32>(-741.0, 166.0, 953.0, 1720.0), Struct_1(var_0.a, global0.b, var_0.c))));
    }
    global2 = func_7(-step(-1000.0 - -376.0, -983.0 / 303.0) + (exp2(-939.0 * 527.0) * -176.0), Struct_1(!all(!vec3<bool>(var_0.c.x, global1[3844u], global1[25903u])), global2.b ^ ~0u, !global2.c), vec4<f32>(-414.0 + round(497.0), abs(-488.0) * -785.0, min(-1586.0, -(-868.0 / 564.0)), max(1000.0, (239.0 + -712.0) + -308.0)), func_7(-(-(-479.0) / (1899.0 + -2159.0)), Struct_1(global1[1u], 7446u, !vec4<bool>(global0.c.x, true, true, global1[global0.b])), vec4<f32>(-704.0, -(-754.0 + -529.0), -(-(-555.0)), -898.0 - (1218.0 / 1221.0)), func_7(-879.0, Struct_1(all(vec2<bool>(true, true)), var_0.b, var_0.c), vec4<f32>(-932.0, -1525.0 / 2133.0, -440.0 / 1234.0, -1038.0), Struct_1(global0.a, var_0.b * u_input.c.x, !vec4<bool>(false, true, var_0.c.x, true)))));
    return select(any(vec3<bool>(!global2.a, !true, !true)) && !all(vec3<bool>(true, true, global2.c.x)), false | true, any(global2.c.zw));
}

fn func_2() -> u32 {
    for (var var_0 = 0; var_0 <= 1; var_0 -= 1) {
        switch (0) {
            default: {
                let var_1 = Struct_1(func_3(), ~func_7(-405.0, func_7(-1000.0 + -512.0, func_7(105.0, Struct_1(global0.c.x, 97652u, global2.c), vec4<f32>(-913.0, 2634.0, 755.0, 649.0), Struct_1(global2.a, 1u, vec4<bool>(global0.a, global1[0u], true, false))), vec4<f32>(-419.0, -551.0, 1748.0, -2029.0) / vec4<f32>(732.0, -400.0, 988.0, -1242.0), Struct_1(false, global0.b, global0.c)), sign(vec4<f32>(-524.0, 367.0, 1017.0, -1052.0)) * -vec4<f32>(845.0, 1076.0, -1029.0, 1075.0), Struct_1(false, global2.b, vec4<bool>(global0.c.x, global0.c.x, true, global2.c.x))).b, vec4<bool>(((-427.0 + -233.0) * -(-289.0)) >= -498.0, !all(!vec4<bool>(global1[global2.b], global0.a, global1[1u], global0.a)), global0.c.x, func_3()));
            }
        }
    }
    global0 = func_7(-472.0, func_7(2120.0, Struct_1(true, ~(~global0.b), select(func_7(-238.0, Struct_1(true, u_input.c.x, vec4<bool>(false, false, true, true)), vec4<f32>(-140.0, 1757.0, -932.0, -939.0), Struct_1(global0.c.x, u_input.a.x, global0.c)).c, vec4<bool>(global0.c.x, true, false, global1[global2.b]), !vec4<bool>(true, true, global1[global2.b], global2.c.x))), -vec4<f32>(-(-236.0), -187.0, -984.0 * 957.0, -1264.0), func_7(-(-957.0) * -150.0, func_7(func_4(vec4<u32>(23663u, global0.b, u_input.c.x, u_input.a.x), vec2<bool>(false, false)), func_7(-1550.0, Struct_1(true, 4294967295u, vec4<bool>(global1[4294967295u], true, global0.c.x, global1[24236u])), vec4<f32>(-1000.0, -1842.0, -772.0, 1000.0), Struct_1(false, 1u, global0.c)), vec4<f32>(129.0, 135.0, -487.0, -1021.0), func_7(-2210.0, Struct_1(global1[18855u], 1u, global2.c), vec4<f32>(755.0, -476.0, -870.0, -1030.0), Struct_1(global1[global0.b], 0u, vec4<bool>(false, global1[global0.b], false, global2.c.x)))), vec4<f32>(-(-1000.0), 1108.0, -1111.0, -(-1228.0)), Struct_1(0u != 88431u, ~18675u, vec4<bool>(false, true, global1[global0.b], global1[4294967295u])))), min(-vec4<f32>(exp2(-1192.0), 264.0 - 128.0, trunc(-2894.0), 830.0 * 449.0), vec4<f32>(-(-170.0 + -122.0), -(1832.0 + -566.0), -(-140.0 + -1906.0), (-279.0 - -1248.0) - -(-1374.0))), Struct_1(all(global2.c.zz) & (!true & (true != global1[4294967295u])), 4294967295u << countOneBits(u_input.c.x << 4294967295u), func_7(-638.0, Struct_1(true | global2.c.x, select(0u, 4294967295u, global1[103252u]), func_7(514.0, Struct_1(true, global0.b, vec4<bool>(global2.c.x, global0.c.x, global1[global0.b], true)), vec4<f32>(-235.0, -360.0, 1470.0, 232.0), Struct_1(true, global0.b, vec4<bool>(global1[global0.b], global1[4294967295u], true, true))).c), vec4<f32>(trunc(-206.0), -2145.0 + -1931.0, -1641.0, floor(-312.0)), func_7(-1691.0, Struct_1(false, global0.b, global2.c), vec4<f32>(-343.0, -1642.0, -182.0, -1710.0) - vec4<f32>(366.0, 910.0, 420.0, 1903.0), Struct_1(global2.c.x, u_input.a.x, global2.c))).c));
    for (var var_0 = 1; false; var_0 = dot(max(vec2<i32>(-1, select(u_input.b, u_input.b, global2.a)), min(vec2<i32>(0, u_input.b) * vec2<i32>(u_input.b, u_input.b), abs(vec2<i32>(u_input.b, u_input.b)))), -(~(vec2<i32>(u_input.b, 0) | vec2<i32>(-1, 38610)))) | (clamp(~u_input.b, ~(-23956) << ~global0.b, u_input.b) / (-17451 % -9079))) {
    }
    let var_0 = Struct_1(global2.a, dot(vec3<u32>(reverseBits(0u), ~u_input.c.x, 42007u), vec3<u32>(global0.b / 4294967295u, ~global0.b, u_input.a.x)) * 4294967295u, select(!select(!global0.c, global2.c, !vec4<bool>(true, false, true, global2.a)), !select(vec4<bool>(global1[u_input.a.x], false, global0.a, global1[u_input.c.x]), !global2.c, vec4<bool>(true, global1[global2.b], false, global2.c.x)), func_7(trunc(-2001.0) * floor(396.0), func_7(max(-1253.0, -1000.0), Struct_1(true, 85240u, global2.c), vec4<f32>(1167.0, -816.0, 1127.0, 1576.0), Struct_1(false, global0.b, global2.c)), round(exp2(vec4<f32>(-540.0, -440.0, -559.0, -1616.0))), Struct_1(global2.a, firstLeadingBit(u_input.a.x), !global0.c)).c.x));
    var var_1 = vec2<bool>(26049 >= u_input.b, ~u_input.a.x != global0.b);
    return ~7910u;
}

fn func_8(arg_0: vec2<u32>, arg_1: bool, arg_2: vec4<i32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = clamp(dot(clamp(~(vec4<u32>(arg_3.b, 0u, global2.b, arg_3.b) << vec4<u32>(47778u, 4294967295u, 29297u, 1u)), (vec4<u32>(4942u, 4294967295u, arg_3.b, arg_3.b) ^ vec4<u32>(arg_0.x, 0u, global0.b, arg_0.x)) - vec4<u32>(global0.b, arg_0.x, 4294967295u, arg_3.b), ~(~vec4<u32>(global2.b, 1u, 49826u, 4294967295u))), vec4<u32>(arg_0.x, ~(global0.b - global0.b), 4294967295u, 0u)), 4294967295u, ((~0u | (4294967295u | 1u)) & arg_0.x) >> 4294967295u);
    for (var var_1 = -2220; false; ) {
    }
    global2 = func_7(-428.0, arg_3, -vec4<f32>((491.0 * 380.0) + step(2978.0, 166.0), -exp2(470.0), -(-1107.0), round(-1000.0) - -1118.0), func_7(1247.0, func_7(-(-990.0) - 1050.0, arg_3, vec4<f32>(735.0 * 694.0, -1149.0 + -1930.0, -1000.0, -1084.0), arg_3), vec4<f32>(func_4(~vec4<u32>(4294967295u, 86696u, 131054u, 1u), select(global0.c.yz, vec2<bool>(global1[global0.b], global1[25243u]), false)), -100.0, -(-279.0), 472.0), func_7(-2589.0, func_7(-(-601.0), arg_3, -vec4<f32>(-1409.0, 1436.0, 517.0, -921.0), arg_3), (vec4<f32>(974.0, 1450.0, -1688.0, 1237.0) - vec4<f32>(-1004.0, -407.0, -974.0, -881.0)) - -vec4<f32>(-1312.0, -1000.0, 1439.0, 732.0), func_7(-911.0 + -1228.0, func_7(-590.0, Struct_1(global0.a, 24485u, vec4<bool>(false, global0.a, arg_3.a, false)), vec4<f32>(1222.0, 629.0, 1599.0, 1005.0), Struct_1(true, 20201u, vec4<bool>(true, true, true, global1[0u]))), vec4<f32>(-277.0, -659.0, 1000.0, -439.0) / vec4<f32>(1000.0, 608.0, -107.0, -1343.0), arg_3))));
    var var_1 = arg_3;
    return func_7(-2161.0 / -(-689.0), func_7(-(max(-360.0, 1000.0) / func_5(Struct_1(false, 7667u, global2.c))), Struct_1(true, ~62611u << 27351u, var_1.c), select(-(vec4<f32>(-2022.0, -322.0, 982.0, 1000.0) + vec4<f32>(-164.0, 133.0, 119.0, -838.0)), vec4<f32>(152.0, 1030.0, 1104.0, 514.0) / (vec4<f32>(145.0, 2183.0, 220.0, 773.0) - vec4<f32>(2203.0, 861.0, 648.0, 483.0)), (1u * 0u) == global0.b), arg_3), (vec4<f32>(-(-110.0), exp2(2450.0), func_5(arg_3), min(-974.0, -243.0)) * vec4<f32>(1685.0, -1367.0 - -2872.0, -1677.0, -1428.0)) / vec4<f32>(610.0, -(-464.0), -trunc(554.0), min(872.0, 130.0) - func_4(vec4<u32>(var_1.b, 4294967295u, 49690u, arg_0.x), vec2<bool>(true, var_1.c.x))), arg_3);
}

fn func_1(arg_0: i32, arg_1: vec4<i32>, arg_2: vec3<bool>) -> vec3<bool> {
    global0 = func_8(u_input.a.zy, !(!(!(!global1[u_input.c.x]))), select(select(arg_1 + arg_1, arg_1, global2.b != 61326u), arg_1, ~27101u <= (1u | global2.b)) - reverseBits(arg_1), Struct_1(4294967295u == func_2(), ~func_7(861.0, Struct_1(global2.c.x, global2.b, global2.c), vec4<f32>(-1672.0, -308.0, 593.0, -2099.0), Struct_1(true, global2.b, vec4<bool>(arg_2.x, arg_2.x, false, global0.c.x))).b + ~(global0.b * u_input.a.x), !(!vec4<bool>(true, arg_2.x, false, false))));
    var var_0 = arg_1.x;
    for (var var_1 = -1; true; var_1 -= 1) {
        var var_2 = 0u % firstLeadingBit(func_7(-(-(-1000.0)), func_8(u_input.a.xz, true & false, ~arg_1, Struct_1(global2.c.x, 35949u, vec4<bool>(global2.c.x, false, false, global2.c.x))), vec4<f32>(-1086.0 - 1000.0, -1956.0, -809.0, -963.0), func_8(u_input.c.yy, !global0.c.x, arg_1, func_7(-1616.0, Struct_1(global2.a, global2.b, global2.c), vec4<f32>(-104.0, -787.0, -929.0, -417.0), Struct_1(true, 10523u, vec4<bool>(true, true, global2.a, true))))).b);
        for (var var_3 = -38469; var_3 < -1; var_3 -= 1) {
        }
        var_2 = 0u;
        for (; true; ) {
            continue;
        }
        let var_3 = false;
    }
    let var_1 = 5259u >> (1u / (clamp(~u_input.c.x, 40676u, 12953u - u_input.a.x) % 42858u));
    var var_2 = countOneBits(vec4<u32>(~u_input.a.x, 1u, 1u, ~(~1u))) * (~(~select(vec4<u32>(0u, 1u, global0.b, global0.b), vec4<u32>(99465u, var_1, global0.b, u_input.c.x), global2.c)) % ~(~vec4<u32>(4294967295u, 17595u, 1u, global2.b)));
    return vec3<bool>(false, global2.c.x, !global0.c.x);
}

fn func_9(arg_0: vec2<bool>, arg_1: vec4<i32>, arg_2: vec3<bool>) -> u32 {
    switch (-arg_1.x) {
        case 1: {
        }
        case -1: {
            if (!all(vec4<bool>(all(func_8(vec2<u32>(4294967295u, 1u), arg_2.x, arg_1, Struct_1(arg_2.x, u_input.c.x, vec4<bool>(true, arg_2.x, false, true))).c), !global1[global0.b % global0.b], true, false))) {
            }
            if (func_1(u_input.b, reverseBits(arg_1 | ~arg_1), vec3<bool>(true, false, global1[global2.b + u_input.a.x] && false)).x) {
                let var_0 = abs(u_input.c.x) + ~global2.b;
                return 1u;
            }
        }
        default: {
            let var_0 = Struct_1(!(!global1[clamp(~1u, 1u, u_input.a.x)]), ~abs(global0.b ^ u_input.a.x), vec4<bool>(global0.c.x, any(vec3<bool>(!arg_2.x, func_3(), false)), !arg_2.x, any(!select(vec2<bool>(false, global2.c.x), vec2<bool>(arg_0.x, true), vec2<bool>(arg_2.x, false)))));
        }
    }
    var var_0 = ~global2.b | ~dot(u_input.a, ~u_input.c);
    let var_1 = Struct_1(all(global2.c), reverseBits(76811u), !vec4<bool>(-1 < u_input.b, func_1(u_input.b * 2147483647, arg_1, !vec3<bool>(true, arg_0.x, true)).x, !func_7(1415.0, Struct_1(false, global2.b, vec4<bool>(global1[1u], arg_0.x, false, global0.a)), vec4<f32>(603.0, 389.0, -729.0, -264.0), Struct_1(false, global0.b, vec4<bool>(global2.a, false, false, false))).a, !all(vec3<bool>(false, arg_0.x, true))));
    let var_2 = func_7(func_5(var_1), Struct_1(false, dot(u_input.a % firstTrailingBit(u_input.a), ~(~vec3<u32>(1u, 1u, 4294967295u))), !vec4<bool>(arg_0.x, true && true, true & global2.c.x, var_1.a)), -exp2(vec4<f32>(-439.0, -1656.0, 2166.0, 458.0)) / vec4<f32>(2567.0, ceil(1314.0) + 220.0, func_4(vec4<u32>(var_1.b, var_1.b, 59u, global2.b), select(var_1.c.zx, var_1.c.zz, vec2<bool>(true, global2.c.x))), step(-338.0 * -1000.0, 1803.0)), var_1);
    var var_3 = Struct_1(global0.a, ~var_1.b, global2.c);
    return 0u;
}

fn func_10(arg_0: u32, arg_1: Struct_1, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = global2.b;
    switch (-12323) {
        case -1: {
            loop {
                continue;
            }
            switch (dot((vec2<i32>(-u_input.b, select(u_input.b, u_input.b, global2.a)) % vec2<i32>(1, u_input.b)) & firstLeadingBit(max(vec2<i32>(u_input.b, 2147483647), vec2<i32>(u_input.b, u_input.b)) << (u_input.c.zz % u_input.c.xy)), min(vec2<i32>(u_input.b, u_input.b), -(-(~vec2<i32>(903, u_input.b)))))) {
                case -60128: {
                    var var_1 = Struct_1(func_8((firstTrailingBit(u_input.a.yx) * ~u_input.c.zz) % (u_input.c.yx + (u_input.c.xz * vec2<u32>(arg_1.b, 1u))), global1[~max(~arg_1.b, 4294967295u)], ~(~(~vec4<i32>(0, u_input.b, 55755, u_input.b))), Struct_1(!all(global2.c.yxy), dot(vec4<u32>(arg_0, 1u, u_input.c.x, global0.b), ~vec4<u32>(24930u, global2.b, global2.b, global2.b)), global0.c)).c.x, reverseBits(func_7(arg_2.x, Struct_1(true, arg_0, vec4<bool>(true, global0.a, global1[11665u], global0.c.x)), vec4<f32>(1000.0, func_5(arg_1), select(arg_2.x, 322.0, arg_1.a), 133.0 * -1160.0), arg_1).b), global0.c);
                    var var_2 = -vec4<f32>(-func_4(vec4<u32>(71522u, var_1.b, global2.b, var_1.b), vec2<bool>(global0.a, true)), arg_2.x, (-1503.0 + -883.0) / (228.0 * 813.0), -(arg_2.x + arg_2.x)) - vec4<f32>(arg_2.x * -696.0, -(-arg_2.x), -(-1000.0), arg_2.x);
                    var_1 = Struct_1(arg_1.c.x, func_2(), vec4<bool>(func_1(u_input.b, -(-vec4<i32>(1, 11346, -2147483648, u_input.b)), func_1(u_input.b, vec4<i32>(-9719, u_input.b, u_input.b, u_input.b), !vec3<bool>(global2.c.x, true, global0.c.x))).x, global0.a, global1[max(0u, 4294967295u)], !false));
                }
                case 10622: {
                    var var_1 = func_8(vec2<u32>(9148u, global0.b), global2.c.x, vec4<i32>(u_input.b, u_input.b, -2147483648, u_input.b), func_7(-(arg_2.x + (-1000.0 - arg_2.x)), arg_1, -round(vec4<f32>(-674.0, -955.0, 177.0, 3235.0)) - ((vec4<f32>(arg_2.x, 355.0, 1110.0, -970.0) / vec4<f32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x)) / max(vec4<f32>(arg_2.x, arg_2.x, arg_2.x, -593.0), vec4<f32>(1641.0, 179.0, -409.0, arg_2.x))), arg_1));
                    var var_2 = -(vec3<f32>(-arg_2.x, -1000.0, arg_2.x) + arg_2);
                    var_1 = func_7(-387.0, Struct_1(!false, ~(~0u | global0.b), select(vec4<bool>(954.0 == arg_2.x, false, !global0.c.x, arg_1.a && global0.a), !global0.c, any(!global0.c.xy))), vec4<f32>(select(abs(var_2.x), 900.0, func_8(countOneBits(vec2<u32>(global2.b, 10970u)), false, vec4<i32>(-2147483648, u_input.b, u_input.b, u_input.b) | vec4<i32>(u_input.b, u_input.b, -21614, u_input.b), arg_1).c.x), -exp2(func_5(Struct_1(arg_1.c.x, 1u, vec4<bool>(global0.a, true, global0.c.x, var_1.a)))), arg_2.x - arg_2.x, -753.0), arg_1);
                    let var_3 = u_input.b;
                    let var_4 = vec4<bool>(true, !(!(arg_0 < 61232u)) == (countOneBits(23805) != var_3), !all(func_7(-524.0, arg_1, -vec4<f32>(var_2.x, 978.0, arg_2.x, var_2.x), func_7(arg_2.x, arg_1, vec4<f32>(-1124.0, -211.0, -373.0, var_2.x), Struct_1(global1[1u], 1u, arg_1.c))).c.ww), false);
                }
                default: {
                    var var_1 = -func_4(~reverseBits(vec4<u32>(global0.b, 4294967295u, u_input.a.x, u_input.a.x)), !vec2<bool>(false, true)) - -1021.0;
                    global0 = Struct_1(func_3(), arg_0, func_8(~(vec2<u32>(arg_0, 11226u) & (vec2<u32>(26232u, 4294967295u) % vec2<u32>(u_input.a.x, arg_0))), global1[func_8(vec2<u32>(abs(global2.b), func_7(arg_2.x, Struct_1(global2.c.x, global0.b, arg_1.c), vec4<f32>(arg_2.x, arg_2.x, arg_2.x, 803.0), Struct_1(true, 40495u, vec4<bool>(global0.c.x, arg_1.a, false, arg_1.a))).b), true, vec4<i32>(~6626, -(-23632), ~2147483647, select(57466, 1, global0.a)), arg_1).b], vec4<i32>(14285 << 0u, ~(-2147483648) - ~u_input.b, u_input.b, -(-1)), arg_1).c);
                    global0 = arg_1;
                }
            }
            var var_1 = !(!global2.c.yzw);
            var_1 = !vec3<bool>(false, all(!func_7(536.0, arg_1, vec4<f32>(-1000.0, arg_2.x, arg_2.x, -1826.0), arg_1).c), false & var_1.x);
        }
        default: {
        }
    }
    var var_1 = -28921;
    let var_2 = -(~(-((vec4<i32>(1, u_input.b, 1, 0) ^ vec4<i32>(u_input.b, 1, 36689, -19268)) & firstLeadingBit(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)))));
    if (any(vec3<bool>(!(!any(vec2<bool>(true, true))), false, false & arg_1.c.x))) {
        let var_3 = -((-(-arg_2.x) * (arg_2.x / arg_2.x)) - arg_2.x);
        let var_4 = arg_1;
    }
    return arg_1;
}

fn func_11(arg_0: Struct_1, arg_1: vec4<i32>) -> Struct_1 {
    global0 = arg_0;
    var var_0 = Struct_1(true, 1u >> func_8(vec2<u32>(27185u, 52733u), global1[dot(~vec4<u32>(1u, u_input.a.x, arg_0.b, 4294967295u), vec4<u32>(global2.b, 4294967295u, 27381u, global2.b) * vec4<u32>(4294967295u, 14715u, 21802u, global0.b))], ~arg_1, Struct_1(!true, min(arg_0.b, 77893u), func_7(-158.0, arg_0, vec4<f32>(-587.0, 1000.0, 1262.0, 241.0), Struct_1(global0.a, global0.b, vec4<bool>(true, true, true, false))).c)).b, global0.c);
    var var_1 = func_7(-269.0, arg_0, vec4<f32>(exp2(-761.0), -func_5(func_10(4294967295u, arg_0, vec3<f32>(761.0, 1000.0, 709.0))), func_5(arg_0) / -(-(-766.0)), -(-1543.0 + -(-3477.0))), func_7(select(-(690.0 * -343.0), exp2(190.0), var_0.c.x), Struct_1(true, ~abs(var_0.b), !func_8(u_input.a.yy, false, vec4<i32>(u_input.b, 2147483647, arg_1.x, 1), Struct_1(arg_0.c.x, 37997u, global2.c)).c), max(exp2(-vec4<f32>(304.0, -2032.0, -1638.0, -833.0)), vec4<f32>(281.0 - 492.0, -(-1286.0), floor(287.0), -(-221.0))), arg_0));
    let var_2 = global0.c.x;
    global2 = func_10(firstTrailingBit(18266u), arg_0, round(select(exp2(vec3<f32>(-2078.0, -1034.0, -1000.0)), vec3<f32>(1436.0, -349.0, -282.0) + vec3<f32>(739.0, -1622.0, -122.0), !true) / -abs(vec3<f32>(1032.0, -1268.0, -345.0))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_11(func_10(func_9(!vec2<bool>(true, global1[global2.b]), -reverseBits(vec4<i32>(29732, u_input.b, u_input.b, u_input.b)), func_1(-2147483648, -vec4<i32>(u_input.b, 2147483647, u_input.b, u_input.b), global2.c.yxw)), func_8(firstLeadingBit(u_input.a.zx), !false, vec4<i32>(-30043, u_input.b * u_input.b, firstLeadingBit(u_input.b), u_input.b >> 0u), Struct_1(!global1[u_input.c.x], abs(global2.b), vec4<bool>(false, global1[478u], global2.a, false))), -min(vec3<f32>(-172.0, -464.0, 582.0), vec3<f32>(1072.0, 2711.0, 1330.0)) + (-vec3<f32>(413.0, 1000.0, 136.0) + ceil(vec3<f32>(-890.0, -755.0, 537.0)))), vec4<i32>(0, ~1, u_input.b, u_input.b));
    let var_1 = 1u | global2.b;
    loop {
        let var_2 = func_10(u_input.c.x, var_0, vec3<f32>(-(-(249.0 - 1162.0)), -525.0, -1623.0));
        if (any(select(func_1(abs(~u_input.b), select(clamp(vec4<i32>(u_input.b, u_input.b, -2147483648, -1), vec4<i32>(u_input.b, -2147483648, -2147483648, u_input.b), vec4<i32>(u_input.b, u_input.b, 2147483647, 2147483647)), vec4<i32>(u_input.b, -2147483648, u_input.b, 3032) & vec4<i32>(14636, -35445, 0, u_input.b), var_0.a), select(global2.c.xwz, vec3<bool>(true, false, global1[36551u]), !var_0.c.x)).zz, !func_7(1085.0 * -420.0, Struct_1(var_0.a, 43906u, vec4<bool>(true, var_2.a, global1[4294967295u], global2.c.x)), vec4<f32>(-1030.0, 1083.0, 405.0, -635.0) / vec4<f32>(-424.0, 497.0, 285.0, -828.0), var_0).c.wz, global2.c.xx))) {
            let var_3 = -940.0;
            continue;
        }
        switch (select(-firstLeadingBit(max(-1, -42101 & u_input.b)), -(-select(u_input.b, u_input.b | 1887, global2.c.x)), select(min(40539u, u_input.c.x), ~7470u, true | (518.0 < 2048.0)) == (countOneBits(34409u) >> ~var_2.b))) {
            case 6229: {
                global0 = Struct_1(false, var_2.b, select(var_2.c, var_0.c, vec4<bool>(false, true, select(true, all(global0.c), var_0.a), var_2.a)));
                continue;
            }
            case 0: {
                break;
            }
            case 2147483647: {
                var var_3 = (select(-(~vec4<i32>(u_input.b, 0, u_input.b, -49261)), vec4<i32>(u_input.b % 1, u_input.b, select(0, u_input.b, false), abs(19897)), !select(global0.c, vec4<bool>(global2.c.x, global2.a, false, var_0.c.x), vec4<bool>(var_2.a, global0.c.x, true, var_2.c.x))) << vec4<u32>(var_0.b, func_10(~1u, func_10(u_input.c.x, var_0, vec3<f32>(-1000.0, 669.0, -1080.0)), vec3<f32>(-1000.0, -502.0, -455.0) - vec3<f32>(1253.0, 847.0, 806.0)).b, dot(vec3<u32>(u_input.c.x, global0.b, var_0.b), vec3<u32>(u_input.c.x, global2.b, u_input.a.x)), var_2.b)) % vec4<i32>(clamp(max(13620, u_input.b), 2147483647, u_input.b) >> func_7(345.0, Struct_1(global1[1u], 23849u, vec4<bool>(false, var_2.a, true, true)), trunc(vec4<f32>(182.0, -732.0, -259.0, 1502.0)), func_8(vec2<u32>(global2.b, 0u), false, vec4<i32>(u_input.b, -12250, -38423, 45915), var_2)).b, 0, countOneBits(countOneBits(u_input.b)), -63218);
                var var_4 = !func_7(-1423.0, var_0, trunc(-vec4<f32>(568.0, -1321.0, -857.0, -729.0)), var_0).c;
                let var_5 = func_10(~global0.b, func_8(vec2<u32>(49961u, 46760u), func_1(23086, vec4<i32>(dot(vec3<i32>(811, -33593, var_3.x), var_3.yzx), max(-2147483648, -2147483648), var_3.x * u_input.b, u_input.b - var_3.x), !vec3<bool>(true, true, var_2.c.x)).x, vec4<i32>(var_3.x, ~(-1), u_input.b + u_input.b, u_input.b), Struct_1(true, var_0.b, !vec4<bool>(true, global1[21013u], false, global0.c.x))), vec3<f32>(1238.0, -281.0, trunc(-1043.0)));
                let var_6 = -vec3<f32>(389.0, (func_5(Struct_1(var_0.c.x, var_0.b, vec4<bool>(false, var_2.a, var_4.x, var_2.a))) / func_5(var_2)) + -1000.0, -(-(-166.0) * sign(475.0)));
                global0 = func_10(select(func_10(1u, var_5, var_6).b ^ 61062u, ~(~4294967295u), false) | 1u, func_10((func_2() | var_0.b) << (4294967295u >> 42447u), func_7(-684.0 * (-438.0 + var_6.x), var_2, -(-vec4<f32>(-1228.0, var_6.x, 647.0, var_6.x)), Struct_1(false, func_2(), func_7(var_6.x, var_5, vec4<f32>(var_6.x, var_6.x, var_6.x, 895.0), var_2).c)), var_6), sign(var_6));
            }
            case 17567: {
                var var_3 = vec2<u32>(select(min(reverseBits(37868u), 55331u), global0.b, select(true, func_8(u_input.a.xz, var_2.a, vec4<i32>(5557, u_input.b, 14033, u_input.b), var_2).c.x, var_2.c.x)), var_2.b % dot(select(u_input.c, vec3<u32>(4294967295u, var_0.b, var_2.b), var_2.a), firstLeadingBit(vec3<u32>(18255u, 4294967295u, 0u)))) >> reverseBits(firstTrailingBit(u_input.a.yy) / vec2<u32>(~global0.b, abs(var_1)));
                let var_4 = vec3<f32>(-(-step(ceil(-1000.0), func_5(Struct_1(false, var_2.b, global2.c)))), select(func_4(~select(vec4<u32>(1u, global2.b, var_0.b, 24354u), vec4<u32>(var_2.b, global0.b, global0.b, global0.b), vec4<bool>(false, true, var_0.c.x, global1[38637u])), func_7(select(-1355.0, 1038.0, false), func_8(u_input.c.zy, global1[4294967295u], vec4<i32>(1, 407, u_input.b, -50597), Struct_1(global1[var_3.x], 1u, global0.c)), vec4<f32>(244.0, -1000.0, 420.0, -1100.0) + vec4<f32>(588.0, -825.0, 781.0, -492.0), Struct_1(false, 4294967295u, vec4<bool>(global2.c.x, var_2.c.x, false, var_2.a))).c.yz), -(-655.0 - -138.0), select(global2.a, global2.a, global1[34534u])), -664.0);
                break;
            }
            default: {
                var var_3 = 41542u;
            }
        }
        continue;
    }
    let var_2 = 577.0;
    var var_3 = u_input.b >> (11396u << firstTrailingBit(~global2.b >> var_0.b));
    global2 = func_7(var_2, func_10(global2.b << 4294967295u, var_0, select(step(-vec3<f32>(var_2, -1670.0, var_2), trunc(vec3<f32>(-954.0, 738.0, var_2))), floor(step(vec3<f32>(var_2, -323.0, 358.0), vec3<f32>(937.0, 1301.0, -576.0))), !vec3<bool>(false, global0.a, global1[global2.b]))), -((-vec4<f32>(721.0, 1160.0, var_2, 1041.0) - -vec4<f32>(784.0, 1039.0, var_2, var_2)) + -(vec4<f32>(363.0, var_2, 365.0, var_2) * vec4<f32>(212.0, var_2, var_2, 1268.0))), var_0);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(dot(vec4<i32>(u_input.b, u_input.b, -1, u_input.b) | min(vec4<i32>(u_input.b, u_input.b, -5135, u_input.b), vec4<i32>(2147483647, -23336, u_input.b, -48588)), ~max(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, 4373, -1, u_input.b))), u_input.b - max(-42853, -(-2147483648)), -(-2147483648 % 0), u_input.b), ((firstTrailingBit(vec2<i32>(-2147483648, -2147483648)) >> min(vec2<u32>(153093u, var_0.b), u_input.c.xx)) * (reverseBits(vec2<i32>(2147483647, u_input.b)) << u_input.a.yz)) * vec2<i32>(1 | -1, -51381), -1302.0, -u_input.b);
}

