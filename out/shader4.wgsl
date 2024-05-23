// {"0:0":[55,41,91,9,70,245,110,129,144,6,21,93,20,225,171,110,99,217,221,55,122,36,203,250,170,195,82,92,119,205,25,170]}
// Seed: 12539126931431056722

struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 11> = array<Struct_4, 11>(Struct_4(1), Struct_4(-11052), Struct_4(-2147483648), Struct_4(2147483647), Struct_4(-1294), Struct_4(2147483647), Struct_4(0), Struct_4(2147483647), Struct_4(-54525), Struct_4(-1), Struct_4(2147483647));

var<private> global1: vec3<bool>;

var<private> global2: bool = false;

var<private> global3: array<u32, 23>;

fn func_6(arg_0: Struct_3) -> bool {
    loop {
    }
    var var_0 = Struct_2(arg_0.b, arg_0.b, arg_0.b, global1.x);
    global0 = array<Struct_4, 11>();
    global0 = array<Struct_4, 11>();
    switch (0) {
        case -30733: {
        }
        case 44999: {
            let var_1 = any(vec2<bool>(true, global1.x));
        }
        case -2147483648: {
            let var_1 = dot(firstLeadingBit(vec3<u32>(~global3[4294967295u], 23707u & 14889u, u_input.a.x)), u_input.a) | ~(~abs(0u));
            var_0 = arg_0.d;
            if (any(!(!select(!vec3<bool>(false, arg_0.b.a, arg_0.b.a), !vec3<bool>(false, global1.x, false), select(vec3<bool>(false, var_0.c.a, true), vec3<bool>(global1.x, global1.x, false), arg_0.d.a.a))))) {
            }
            let var_2 = dot(arg_0.b.c.zyz, vec3<i32>(var_0.b.c.x, abs(-1), -(arg_0.b.c.x >> var_0.c.b) ^ -(-arg_0.b.c.x)));
        }
        case 1: {
        }
        default: {
            var var_1 = Struct_2(Struct_1(false, 41969u, ~(~firstTrailingBit(var_0.b.c))), Struct_1(-(-832.0 * 1104.0) <= -1209.0, ~u_input.a.x, -arg_0.d.c.c), Struct_1(true, ~dot(~vec4<u32>(var_0.b.b, global3[45422u], var_0.a.b, var_0.b.b), vec4<u32>(32450u, 39239u, 4294967295u, global3[4294967295u])), vec4<i32>(firstTrailingBit(u_input.b), arg_0.c, var_0.c.c.x, -(-41232)) | -var_0.a.c), var_0.b.a);
            let var_2 = trunc(exp2(-458.0));
            loop {
            }
            for (var var_3: i32; !global1.x; ) {
                continue;
            }
        }
    }
    return !all(global1.xx) && select(!var_0.c.a, any(vec3<bool>(!arg_0.b.a, !arg_0.d.d, var_0.d)), -1392.0 != min(-(-648.0), -(-1186.0)));
}

fn func_5(arg_0: i32, arg_1: Struct_4, arg_2: bool, arg_3: f32) -> i32 {
    let var_0 = global1.x;
    for (var var_1 = 57260; ; ) {
        continue;
    }
    switch (firstTrailingBit(min(arg_1.a, -(-2147483648)))) {
        default: {
            if (arg_2) {
                global0 = array<Struct_4, 11>();
                global1 = vec3<bool>(true, arg_3 >= floor(round(arg_3)), 0 == u_input.b);
            }
            var var_1 = dot(u_input.a, u_input.a);
            var var_2 = arg_1;
        }
    }
    if (false) {
        for (var var_1 = -2147483648; var_1 >= -34672; var_1 += 1) {
            let var_2 = select(!vec4<bool>(any(vec3<bool>(global1.x, arg_2, true)), !(1042.0 != arg_3), arg_2, false), vec4<bool>(all(select(global1.xx, select(vec2<bool>(false, arg_2), global1.xy, false), global1.xy)), !func_6(Struct_3(u_input.a.yy, Struct_1(arg_2, u_input.c.x, vec4<i32>(arg_1.a, u_input.b, u_input.b, u_input.b)), -1, Struct_2(Struct_1(true, 31476u, vec4<i32>(-65406, u_input.b, arg_0, -1)), Struct_1(false, u_input.a.x, vec4<i32>(-34563, u_input.b, -2147483648, 518)), Struct_1(false, global3[global3[global3[4294967295u]]], vec4<i32>(arg_0, 2147483647, arg_1.a, arg_0)), true))), false, arg_2), true);
            let var_3 = Struct_2(Struct_1(!true, ~(4294967295u * global3[~global3[1u]]), select(vec4<i32>(u_input.b, -6916, -59562, arg_0) % vec4<i32>(1, -51384, u_input.b, 4863), vec4<i32>(u_input.b, arg_1.a, u_input.b, u_input.b) + ~vec4<i32>(1, arg_1.a, arg_1.a, arg_0), var_2)), Struct_1(select(all(select(var_2.wx, vec2<bool>(true, false), vec2<bool>(var_2.x, arg_2))), global1.x, all(!vec2<bool>(true, global1.x))), reverseBits(0u), ~select(vec4<i32>(-40179, 2046, arg_1.a, u_input.b), countOneBits(vec4<i32>(-12543, arg_1.a, arg_0, u_input.b)), select(var_2, vec4<bool>(true, false, global1.x, global1.x), vec4<bool>(false, global1.x, arg_2, global1.x)))), Struct_1(var_2.x, countOneBits(reverseBits(select(u_input.a.x, global3[global3[26545u]], false))), abs(countOneBits(max(vec4<i32>(-20787, arg_0, arg_1.a, -60065), vec4<i32>(arg_1.a, -2147483648, -43572, -1496))))), -(-(arg_3 / arg_3)) >= arg_3);
            let var_4 = Struct_1(true, 4294967295u, var_3.a.c);
        }
    }
    let var_1 = global3[select(global3[abs(19239u)], dot(vec4<u32>(u_input.a.x, firstLeadingBit(~global3[4294967295u]), u_input.c.x, 112178u), ~(~clamp(vec4<u32>(1u, u_input.a.x, u_input.c.x, global3[3766u]), vec4<u32>(57756u, global3[4294967295u], u_input.c.x, global3[u_input.c.x]), vec4<u32>(1u, 63881u, u_input.a.x, 16799u)))), all(!select(global1.xx, global1.xx, select(global1.zy, global1.zz, vec2<bool>(arg_2, true)))))];
    return dot(firstLeadingBit(countOneBits(vec4<i32>(2147483647, 31668, 8306, -15990)) + ~vec4<i32>(arg_0, 40167, 1, -2147483648)) & ((abs(vec4<i32>(20368, 22293, -1, 1)) & vec4<i32>(u_input.b, u_input.b, arg_1.a, arg_0)) / select(vec4<i32>(-15041, arg_1.a, u_input.b, u_input.b) | vec4<i32>(arg_0, -5687, -1, arg_0), vec4<i32>(arg_1.a, arg_0, -2147483648, arg_1.a), vec4<bool>(global1.x, arg_2, true, false))), ~(((vec4<i32>(0, 1, 16926, arg_0) + vec4<i32>(arg_1.a, 43462, arg_0, arg_0)) >> vec4<u32>(global3[global3[u_input.c.x]], u_input.a.x, 0u, global3[1u])) | vec4<i32>(u_input.b, u_input.b, 0, -6661)));
}

fn func_4(arg_0: bool) -> Struct_1 {
    if (true) {
        var var_0 = ~global3[u_input.a.x];
        global2 = !(func_5(u_input.b, global0[~4294967295u / global3[global3[1u] - 20415u]], false, -(-524.0)) == u_input.b);
        for (var var_1 = 19659; arg_0; var_1 += 1) {
            break;
        }
        let var_1 = min(~((~vec4<u32>(5607u, 4294967295u, u_input.a.x, 16641u) - (vec4<u32>(u_input.c.x, 72665u, 52191u, global3[global3[u_input.a.x]]) * vec4<u32>(4294967295u, 0u, 0u, u_input.c.x))) - ~(vec4<u32>(u_input.a.x, u_input.c.x, u_input.c.x, u_input.a.x) % vec4<u32>(u_input.a.x, 1462u, 4294967295u, 4294967295u))), countOneBits(~select(vec4<u32>(global3[global3[global3[19930u]]], 58244u, 50406u, u_input.c.x), vec4<u32>(38004u, 53857u, 1u, global3[0u]), u_input.a.x >= 33918u)));
    }
    global1 = !(!(!vec3<bool>(false, func_6(Struct_3(vec2<u32>(1u, 1u), Struct_1(arg_0, global3[34260u], vec4<i32>(2147483647, 39835, 0, 31400)), u_input.b, Struct_2(Struct_1(global1.x, 59441u, vec4<i32>(u_input.b, u_input.b, -16107, 0)), Struct_1(true, global3[1u], vec4<i32>(1, u_input.b, -2147483648, u_input.b)), Struct_1(true, global3[569u], vec4<i32>(0, -1, u_input.b, u_input.b)), true))), !true)));
    return Struct_1(all(vec3<bool>(true, true, !arg_0)) & any(vec4<bool>(any(vec2<bool>(true, true)), any(vec3<bool>(global1.x, true, false)), arg_0 || global1.x, arg_0 | global1.x)), min(~954u, 0u & u_input.a.x), vec4<i32>(u_input.b, -18337, 24413, abs(-3890)) - reverseBits(vec4<i32>(u_input.b, u_input.b, -44475, u_input.b)));
}

fn func_3(arg_0: bool) -> Struct_1 {
    switch (-17894) {
        default: {
            global0 = array<Struct_4, 11>();
            loop {
                let var_0 = sign(-1160.0) - max(-(-840.0 / -964.0) / (-1785.0 * abs(1499.0)), 111.0);
                continue;
            }
        }
    }
    let var_0 = Struct_3(u_input.c, func_4(any(global1.yx)), countOneBits(u_input.b), Struct_2(func_4(!func_4(global1.x).a), func_4(false), func_4(u_input.b > (u_input.b * u_input.b)), !func_6(Struct_3(vec2<u32>(4294967295u, u_input.c.x), Struct_1(true, global3[31230u], vec4<i32>(u_input.b, -58327, 39382, -3794)), u_input.b, Struct_2(Struct_1(false, u_input.c.x, vec4<i32>(u_input.b, -10188, -42479, u_input.b)), Struct_1(global1.x, 4294967295u, vec4<i32>(-2147483648, 65067, 80844, u_input.b)), Struct_1(true, 46716u, vec4<i32>(u_input.b, -11942, u_input.b, 2147483647)), arg_0)))));
    for (var var_1: i32; var_1 >= 35400; var_1 -= 1) {
        var var_2 = u_input.a;
        var_1 = -1606;
        var var_3 = 228.0 - -1221.0;
        switch (-21087 % var_0.c) {
            case -1: {
                let var_4 = vec2<bool>(var_0.b.a, false);
                var var_5 = Struct_2(var_0.d.b, var_0.d.a, Struct_1(var_0.d.b.a, ~(~min(24337u, var_2.x)), -var_0.b.c), !true);
                let var_6 = Struct_2(Struct_1(true, var_2.x << (var_0.b.b + var_5.a.b), ~abs(var_0.b.c) ^ ~vec4<i32>(u_input.b, 6199, var_5.a.c.x, 0)), Struct_1(sign(-2388.0) <= step(floor(-182.0), -1000.0 / 1031.0), var_5.a.b, abs(select(var_5.b.c, vec4<i32>(u_input.b, 1, u_input.b, var_0.c), arg_0) + firstLeadingBit(var_0.d.a.c))), Struct_1(!(var_4.x | (-831.0 < 1033.0)), 20396u, -var_0.b.c % var_5.c.c), global1.x);
                let var_7 = Struct_2(func_4(var_5.c.a), func_4((~28110u >= ~u_input.a.x) | (var_5.c.a && (-1374.0 == -289.0))), Struct_1(!arg_0, var_6.a.b, select(vec4<i32>(~(-2147483648), dot(var_6.c.c.zw, var_0.d.b.c.ww), -u_input.b, -12856), ~max(vec4<i32>(u_input.b, var_6.c.c.x, var_5.a.c.x, var_6.c.c.x), vec4<i32>(30844, 3557, var_0.d.a.c.x, -1)), var_0.d.b.a)), var_4.x);
            }
            case -2147483648: {
                continue;
            }
            case -8855: {
                continue;
            }
            default: {
                var var_4 = ~2147483647 > -func_5(dot(vec4<i32>(1, -15990, -14766, u_input.b), vec4<i32>(var_0.d.b.c.x, u_input.b, 6487, var_0.d.c.c.x)), Struct_4(-1 - var_0.b.c.x), true, select(405.0, ceil(279.0), all(vec3<bool>(false, arg_0, true))));
                let var_5 = -var_0.b.c.xx + (vec2<i32>(-2147483648, -1 ^ (var_0.d.b.c.x + 0)) % var_0.b.c.ww);
                var var_6 = (1044.0 * floor(-1118.0)) * (-236.0 - 1000.0);
                break;
            }
        }
    }
    global2 = -select(~(u_input.b >> 0u), ~var_0.d.c.c.x & abs(var_0.b.c.x), var_0.b.a) > -(~var_0.b.c.x);
    global3 = array<u32, 23>();
    return func_4(false);
}

fn func_2() -> Struct_1 {
    for (; !(!global1.x) && true; ) {
        global3 = array<u32, 23>();
        continue;
    }
    var var_0 = func_3(all(!vec4<bool>(any(vec4<bool>(global1.x, true, true, false)), global1.x, global1.x, global1.x & false)));
    if (!global1.x) {
        global3 = array<u32, 23>();
        switch (23023) {
            default: {
            }
        }
        global3 = array<u32, 23>();
        switch (7500) {
            case 58297: {
                let var_1 = ~min(vec2<i32>(var_0.c.x, ~var_0.c.x), var_0.c.wz ^ abs(-var_0.c.zz));
                var var_2 = -(-334.0);
                global1 = !select(vec3<bool>(true, !(!var_0.a), !(!true)), vec3<bool>(!false, any(!vec4<bool>(true, global1.x, var_0.a, var_0.a)), -1178.0 >= -(-962.0)), select(select(vec3<bool>(global1.x, var_0.a, false), !vec3<bool>(true, false, false), any(vec2<bool>(var_0.a, global1.x))), vec3<bool>(!var_0.a, global1.x, 4294967295u < 0u), select(!vec3<bool>(global1.x, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, var_0.a, var_0.a), vec3<bool>(false, global1.x, var_0.a)), vec3<bool>(var_0.a, true, false))));
                var var_3 = Struct_2(func_4(false), Struct_1(!var_0.a, dot(clamp(vec4<u32>(1u, var_0.b, var_0.b, var_0.b), vec4<u32>(0u, 1u, global3[u_input.c.x], u_input.c.x), vec4<u32>(21135u, 39543u, 39971u, 4294967295u)) % ~vec4<u32>(global3[1u], 0u, 1u, 53536u), ~vec4<u32>(111004u, 20625u, 1u, var_0.b)), vec4<i32>(~(27041 - var_0.c.x), countOneBits(-13669), var_0.c.x, u_input.b)), Struct_1(!((global1.x && true) && true), u_input.c.x, var_0.c - vec4<i32>(func_3(true).c.x, u_input.b, var_0.c.x, u_input.b)), var_0.a);
            }
            case -1: {
                global2 = func_6(Struct_3(~abs(u_input.a.zx) % u_input.c, Struct_1(global1.x, 1u, firstTrailingBit(reverseBits(vec4<i32>(var_0.c.x, u_input.b, u_input.b, -30729)))), ~(var_0.c.x % var_0.c.x) + -u_input.b, Struct_2(Struct_1(false, 0u, -var_0.c), Struct_1(true && false, 0u, var_0.c << vec4<u32>(1u, u_input.c.x, 1u, var_0.b)), func_4(false), false)));
            }
            case 67784: {
            }
            case -21115: {
                let var_1 = vec4<f32>((trunc(1407.0) * 282.0) / -1761.0, -(-1109.0), -((-2190.0 / -274.0) / -(-1592.0)) / 1866.0, 474.0);
            }
            default: {
                var var_1 = 1 * u_input.b;
                let var_2 = -38878;
            }
        }
    }
    let var_1 = global0[~global3[u_input.c.x]];
    var_0 = Struct_1(var_0.a, ~global3[27133u], countOneBits(~(~vec4<i32>(0, 0, var_0.c.x, 94422) % select(vec4<i32>(u_input.b, var_0.c.x, var_1.a, var_0.c.x), vec4<i32>(71177, -53501, 1, -2170), global1.x))));
    return func_3(global1.x & !((-446.0 / -1523.0) < 978.0));
}

fn func_7(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec3<f32>) -> Struct_1 {
    global3 = array<u32, 23>();
    global2 = !global1.x;
    for (var var_0 = -2147483648; var_0 < -1; var_0 -= 1) {
        for (var var_1 = u_input.b; var_1 < 0; var_1 -= 1) {
            continue;
        }
        var var_1 = u_input.c.x;
        break;
    }
    let var_0 = trunc(-min(vec2<f32>(-arg_0.x, trunc(arg_0.x)), arg_3.zy));
    let var_1 = func_3(arg_1.a);
    return func_2();
}

fn func_8(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: vec3<f32>) -> Struct_1 {
    switch (~(-19127)) {
        case -2147483648: {
            global2 = arg_2.d.d;
            let var_0 = (arg_3.x / arg_3.x) + -722.0;
        }
        default: {
            let var_0 = global0[62229u];
        }
    }
    for (var var_0 = 1; var_0 <= -2684; ) {
        continue;
    }
    global0 = array<Struct_4, 11>();
    switch (reverseBits(~reverseBits(-22963 * func_2().c.x))) {
        case 2147483647: {
            switch (2147483647) {
                case -24947: {
                    let var_0 = 432.0;
                }
                case -2147483648: {
                    var var_0 = arg_2.d;
                }
                case 67247: {
                    global2 = !all(select(arg_1, arg_1, true));
                    var var_0 = arg_2.d.c;
                    var var_1 = ~reverseBits(~(global3[4294967295u] & arg_2.d.a.b)) ^ (((36702u << (51310u ^ arg_2.a.x)) << 80962u) >> global3[dot(select(vec4<u32>(global3[26708u], var_0.b, var_0.b, arg_2.b.b), vec4<u32>(u_input.a.x, var_0.b, global3[u_input.a.x], global3[var_0.b]), vec4<bool>(true, true, arg_2.b.a, true)) >> max(vec4<u32>(arg_2.b.b, arg_2.b.b, 52231u, global3[4294967295u]), vec4<u32>(1u, 28214u, 3059u, u_input.c.x)), vec4<u32>(~arg_2.d.c.b, ~92939u, firstTrailingBit(0u), u_input.a.x / global3[u_input.a.x]))]);
                    let var_2 = arg_2.a.x;
                    return arg_2.b;
                }
                default: {
                    let var_0 = func_7(arg_3, arg_2.d.c, arg_3.zz, (-arg_3 + vec3<f32>(1653.0 + 552.0, trunc(arg_3.x), 1358.0)) - -vec3<f32>(step(arg_3.x, arg_3.x), -1504.0 / arg_3.x, -arg_3.x)).b;
                    global0 = array<Struct_4, 11>();
                    global0 = array<Struct_4, 11>();
                    var var_1 = ~1u ^ 1u;
                }
            }
            for (var var_0 = func_7(step(select(max(vec3<f32>(arg_3.x, arg_3.x, arg_3.x), arg_3), -vec3<f32>(arg_3.x, arg_3.x, arg_3.x), arg_2.d.a.c.x != 2147483647) / arg_3, select(select(vec3<f32>(arg_3.x, arg_3.x, arg_3.x), step(vec3<f32>(1000.0, -728.0, arg_3.x), vec3<f32>(1722.0, arg_3.x, -340.0)), !arg_1.zyy), vec3<f32>(select(938.0, arg_3.x, global1.x), abs(388.0), -1667.0), !arg_1.ywz)), arg_2.d.c, step(arg_3.yy, -step(vec2<f32>(arg_3.x, -1000.0) / arg_3.yy, max(arg_3.xz, vec2<f32>(arg_3.x, 1173.0)))), vec3<f32>(min(arg_3.x, -838.0) - floor(arg_3.x), ceil(-1297.0), -sign(arg_3.x))).c.x; var_0 != -1; global0 = array<Struct_4, 11>()) {
            }
            global3 = array<u32, 23>();
            if (any(vec2<bool>(arg_1.x, false))) {
                let var_0 = func_2();
                let var_1 = select(clamp(vec2<i32>(-32868, arg_2.d.c.c.x) / var_0.c.zw, select(arg_2.b.c.zw, arg_2.d.a.c.yx, arg_2.d.c.a), (arg_0.xz - vec2<i32>(1, -28721)) >> abs(vec2<u32>(4294967295u, var_0.b))), vec2<i32>(~var_0.c.x ^ (0 - u_input.b), var_0.c.x), !(!(arg_3.x == arg_3.x))) & arg_2.b.c.wx;
                global2 = !(any(!vec2<bool>(arg_1.x, global1.x)) & arg_1.x);
                global2 = all(select(select(arg_1.xwy, arg_1.yyy, arg_1.zxx), vec3<bool>(any(select(arg_1, arg_1, vec4<bool>(arg_2.b.a, true, arg_2.b.a, false))), var_0.a, arg_1.x), select(!arg_1.www, select(select(vec3<bool>(arg_1.x, arg_1.x, false), vec3<bool>(false, true, true), arg_1.xwy), select(arg_1.zzw, vec3<bool>(global1.x, true, true), arg_1.x), vec3<bool>(arg_2.b.a, global1.x, var_0.a)), vec3<bool>(global3[u_input.c.x] >= 4294967295u, !global1.x, true))));
                var var_2 = reverseBits(var_0.b) & (0u / countOneBits(arg_2.b.b / firstLeadingBit(4294967295u)));
            }
        }
        case 37993: {
            let var_0 = ~(vec2<i32>(~func_2().c.x, countOneBits(min(-1, u_input.b))) / func_4(arg_1.x).c.yw);
            let var_1 = vec3<i32>(-u_input.b, max(-(-1), arg_0.x), -2147483648);
            var var_2 = global3[u_input.a.x] % ~22744u;
            global3 = array<u32, 23>();
        }
        default: {
            if (true) {
                let var_0 = -((-(vec4<f32>(-229.0, arg_3.x, -495.0, arg_3.x) / vec4<f32>(1000.0, arg_3.x, -1298.0, arg_3.x)) / vec4<f32>(-arg_3.x, abs(arg_3.x), -998.0, step(arg_3.x, 1000.0))) / (round(vec4<f32>(1041.0, -181.0, 1403.0, -1000.0)) / (vec4<f32>(arg_3.x, -133.0, -2956.0, -1919.0) + (vec4<f32>(236.0, 632.0, -2354.0, -289.0) + vec4<f32>(617.0, arg_3.x, arg_3.x, arg_3.x)))));
                let var_1 = select(select(arg_1.x, false, func_7(-arg_3, Struct_1(global1.x, arg_2.a.x, vec4<i32>(u_input.b, arg_2.b.c.x, 28012, u_input.b)), select(var_0.yx, vec2<f32>(arg_3.x, -409.0), false), -vec3<f32>(arg_3.x, var_0.x, var_0.x)).a), !(!global1.x) || (false | false), !(!(!global1.x))) & global1.x;
                let var_2 = Struct_3(countOneBits(abs(u_input.c)), Struct_1(global1.x, u_input.c.x, -min(arg_2.d.a.c, arg_2.b.c) >> vec4<u32>(global3[u_input.a.x] & 126717u, 23105u, ~30477u, global3[abs(arg_2.b.b)])), dot(~arg_2.d.a.c.yy, arg_0.zx), arg_2.d);
            }
            let var_0 = arg_2.b;
            let var_1 = Struct_4(-1);
            global3 = array<u32, 23>();
            global0 = array<Struct_4, 11>();
        }
    }
    var var_0 = false;
    return func_4(func_6(Struct_3(~arg_2.a, Struct_1(true, 18384u, vec4<i32>(u_input.b, u_input.b, 29383, arg_2.c)), -2147483647, arg_2.d)));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_2(func_8(~vec3<i32>(u_input.b, u_input.b, 85315) >> select(vec3<u32>(0u, 0u, 4294967295u) + vec3<u32>(38997u, 0u, global3[29610u]), firstLeadingBit(vec3<u32>(21009u, 4294967295u, global3[0u])), vec3<bool>(false, global1.x, global1.x)), select(vec4<bool>(all(global1.xz), !global1.x, 4294967295u != global3[4294967295u], global1.x), select(vec4<bool>(global1.x, global1.x, global1.x, global1.x), select(vec4<bool>(false, global1.x, global1.x, true), vec4<bool>(global1.x, global1.x, true, true), false), u_input.b >= u_input.b), select(vec4<bool>(global1.x, false, false, false), select(vec4<bool>(global1.x, global1.x, global1.x, false), vec4<bool>(global1.x, true, true, true), true), global1.x)), Struct_3(vec2<u32>(~1u, ~19687u), func_7(floor(vec3<f32>(270.0, 697.0, 846.0)), func_2(), vec2<f32>(963.0, 1246.0) * vec2<f32>(597.0, -1916.0), -vec3<f32>(-2200.0, -282.0, 341.0)), countOneBits(1), Struct_2(func_2(), Struct_1(true, u_input.c.x, vec4<i32>(u_input.b, u_input.b, u_input.b, 1770)), Struct_1(false, 40372u, vec4<i32>(-31076, -4700, 0, u_input.b)), !global1.x)), vec3<f32>(-226.0 * (-413.0 / 116.0), floor(-908.0 - 1482.0), max(767.0, 522.0) - (1353.0 - -511.0))), Struct_1(true, global3[26770u] / 0u, vec4<i32>(0, 4996, 67442, 1 & (u_input.b * u_input.b))), Struct_1(true, 0u, -(-(vec4<i32>(u_input.b, -19160, u_input.b, u_input.b) % vec4<i32>(-2147483648, u_input.b, 2147483647, u_input.b)))), any(vec4<bool>(global1.x, func_3(!global1.x).a, !(-31805 > u_input.b), func_3(!global1.x).a)));
    if (select(any(!global1.xx), global1.x, -var_0.c.c.x <= var_0.a.c.x)) {
    }
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    for (var var_0 = 2147483647; var_0 == -19313; var_0 -= 1) {
        let var_1 = Struct_2(func_1(), func_3(!global1.x), Struct_1(global1.x, ~(~global3[global3[~global3[global3[28145u]]]]), vec4<i32>(firstTrailingBit(-23954), 2147483647, u_input.b, u_input.b << 1u) + ~(vec4<i32>(-51721, 2147483647, 2147483647, 2147483647) >> vec4<u32>(56409u, u_input.c.x, 27575u, 1u))), !false);
        var var_2 = var_1;
        continue;
    }
    switch (~u_input.b) {
        default: {
            if (global1.x) {
            }
            let var_0 = vec2<i32>(~(func_5(u_input.b, global0[global3[u_input.a.x]], false, 579.0) | (-21054 | u_input.b)) << global3[func_8(func_8(vec3<i32>(u_input.b, u_input.b, u_input.b), select(vec4<bool>(false, true, false, global1.x), vec4<bool>(global1.x, false, false, global1.x), vec4<bool>(true, true, false, false)), Struct_3(u_input.a.yz, Struct_1(false, 30001u, vec4<i32>(0, -43713, -2147483648, u_input.b)), u_input.b, Struct_2(Struct_1(false, u_input.c.x, vec4<i32>(u_input.b, u_input.b, 27954, -28888)), Struct_1(global1.x, u_input.a.x, vec4<i32>(0, -2147483648, u_input.b, u_input.b)), Struct_1(global1.x, u_input.c.x, vec4<i32>(33829, u_input.b, 0, -14558)), false)), trunc(vec3<f32>(1531.0, -301.0, -332.0))).c.xyw, select(!vec4<bool>(global1.x, global1.x, false, global1.x), vec4<bool>(global1.x, true, true, true), global1.x || global1.x), Struct_3(u_input.a.yy / u_input.a.xx, Struct_1(false, u_input.a.x, vec4<i32>(-20700, u_input.b, u_input.b, 1)), u_input.b, Struct_2(Struct_1(global1.x, global3[u_input.c.x], vec4<i32>(u_input.b, 31221, u_input.b, 5842)), Struct_1(true, 4294967295u, vec4<i32>(-36674, 32851, u_input.b, -2063)), Struct_1(global1.x, 51844u, vec4<i32>(u_input.b, u_input.b, 45817, u_input.b)), global1.x)), (vec3<f32>(1535.0, -878.0, -157.0) + vec3<f32>(-1280.0, -108.0, 182.0)) * -vec3<f32>(-1360.0, 268.0, 1530.0)).b], ~u_input.b / abs((2147483647 + u_input.b) * func_5(u_input.b, Struct_4(-2147483648), true, -1154.0)));
            let var_1 = global1.x;
            for (var var_2 = 47683; !(!(!global1.x)); var_2 += 1) {
            }
        }
    }
    let x = u_input.a;
    s_output = StorageBuffer(-649.0, 259.0, u_input.c.x, round((vec3<f32>(-1233.0, -1000.0, 1597.0) - -vec3<f32>(406.0, 987.0, 1000.0)) * select(round(vec3<f32>(-1728.0, -1611.0, -271.0)), vec3<f32>(-1876.0, 744.0, 1322.0), global1.x != global1.x)));
}

