// {"0:0":[231,15,99,20,91,193,221,169,203,177,142,3,198,57,52,238,147,60,91,219,201,158,171,205,87,226,102,62,97,142,199,97]}
// Seed: 4194971200614052999

struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec2<u32>(1u, 16548u), vec3<i32>(-73133, -1, -1), -935.0), Struct_1(vec2<u32>(28209u, 33085u), vec3<i32>(-4047, 8408, -2147483648), -1202.0), Struct_1(vec2<u32>(9681u, 4294967295u), vec3<i32>(-8715, -17549, 33603), 638.0), Struct_1(vec2<u32>(0u, 4294967295u), vec3<i32>(-2147483648, 61708, -2147483648), -1512.0), Struct_1(vec2<u32>(11424u, 33420u), vec3<i32>(-16396, 2147483647, -1), 1000.0), Struct_1(vec2<u32>(1u, 1u), vec3<i32>(2147483647, 12933, 36590), 283.0), Struct_1(vec2<u32>(4294967295u, 46671u), vec3<i32>(0, -1, 14190), -856.0), Struct_1(vec2<u32>(17549u, 57786u), vec3<i32>(0, 25696, 8873), -1590.0), Struct_1(vec2<u32>(0u, 1u), vec3<i32>(7181, 6534, 1), -353.0), Struct_1(vec2<u32>(13769u, 10694u), vec3<i32>(0, -2147483648, 46184), 295.0), Struct_1(vec2<u32>(56274u, 72118u), vec3<i32>(-2147483648, -41228, -1), -738.0), Struct_1(vec2<u32>(89836u, 0u), vec3<i32>(-1, 2147483647, 48760), 166.0), Struct_1(vec2<u32>(0u, 4294967295u), vec3<i32>(1, 0, 0), -258.0), Struct_1(vec2<u32>(11297u, 7640u), vec3<i32>(-2147483648, 1, -20238), 1844.0), Struct_1(vec2<u32>(83541u, 0u), vec3<i32>(16873, -64684, -2147483648), 531.0), Struct_1(vec2<u32>(4294967295u, 66275u), vec3<i32>(-9999, -2147483648, 2147483647), -1000.0), Struct_1(vec2<u32>(4294967295u, 1u), vec3<i32>(0, -1, -2147483648), 307.0), Struct_1(vec2<u32>(4294967295u, 0u), vec3<i32>(-43251, -7698, 0), 1000.0), Struct_1(vec2<u32>(2292u, 100179u), vec3<i32>(0, -49383, 0), -776.0), Struct_1(vec2<u32>(6267u, 74064u), vec3<i32>(-20667, -17485, -19886), -639.0), Struct_1(vec2<u32>(1u, 1u), vec3<i32>(-1, -36241, -869), 1145.0), Struct_1(vec2<u32>(4294967295u, 3312u), vec3<i32>(-1555, -5834, -57318), 1040.0), Struct_1(vec2<u32>(93357u, 1u), vec3<i32>(-1, 10854, 3212), 1000.0), Struct_1(vec2<u32>(1u, 77612u), vec3<i32>(-1, 0, 40094), -1070.0), Struct_1(vec2<u32>(17504u, 8503u), vec3<i32>(-4242, 0, 1), -1278.0), Struct_1(vec2<u32>(21186u, 4294967295u), vec3<i32>(-63820, -43631, 51005), 1720.0));

fn func_6() -> vec3<f32> {
    var var_0 = vec2<u32>(~52399u, u_input.e) % vec2<u32>(abs(90614u), u_input.e);
    loop {
        global0 = array<Struct_1, 26>();
        let var_1 = global0[var_0.x];
        continue;
    }
    var var_1 = vec4<f32>(1110.0, -(-(-(-157.0))), sign(abs(-140.0) * round(-1000.0)), 230.0) * max(-(-(-vec4<f32>(100.0, -680.0, 508.0, -691.0))), vec4<f32>(round(1980.0 - -1000.0), -733.0, step(-133.0, 708.0), exp2(-283.0)));
    switch (-reverseBits(~dot(u_input.d, vec3<i32>(u_input.a, u_input.b, u_input.a))) - u_input.c) {
        case -16783: {
        }
        case 1: {
            var var_2 = Struct_1(reverseBits(firstLeadingBit(abs(vec2<u32>(106016u, 8106u)) / vec2<u32>(u_input.e, u_input.e))), vec3<i32>(select(~(-1), dot(vec3<i32>(u_input.d.x, u_input.a, u_input.a), u_input.d) | ~41433, all(!vec3<bool>(false, true, true))), -u_input.c, dot(~u_input.d.yy, vec2<i32>(1 & u_input.c, -u_input.a))), -1649.0);
            for (var var_3 = -61808; true != !(!(true || select(false, false, false))); var_3 -= 1) {
                var_2 = global0[var_2.a.x];
                let var_4 = ~(15080u / min(~35244u, var_2.a.x)) / 1u;
                var var_5 = Struct_1(~vec2<u32>(var_4, 61720u & ~u_input.e), u_input.d, -(-var_2.c) + 524.0);
                var var_6 = var_4;
            }
            let var_3 = dot(select(vec2<i32>(abs(var_2.b.x), ~(-1)), var_2.b.zx, all(!vec2<bool>(true, false))), reverseBits(vec2<i32>(u_input.c, ~u_input.d.x) >> var_2.a));
            let var_4 = vec4<u32>(var_0.x, 23339u, ~(~(1u + u_input.e)) / dot(vec3<u32>(0u * u_input.e, u_input.e, 12593u), ~vec3<u32>(5814u, var_2.a.x, 4294967295u)), (~(~16886u) ^ u_input.e) << 26985u);
            let var_5 = global0[1u];
        }
        case 2147483647: {
            if (any(vec4<bool>(true, false, (var_1.x - 1510.0) != -(-515.0 + -381.0), false))) {
                var var_2 = global0[clamp(~0u, 44632u, u_input.e)];
                var var_3 = vec4<f32>(-max(-min(var_1.x, var_1.x), -1000.0), step(var_2.c, 831.0), var_2.c, var_2.c);
                let var_4 = select(vec2<u32>(57241u, ~95257u), abs(var_2.a + (abs(vec2<u32>(1u, u_input.e)) / vec2<u32>(4294967295u, 1u))), select(!(!(!vec2<bool>(true, false))), vec2<bool>(true, (53877u < var_0.x) || (true | false)), false));
            }
            if (all(!(!select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), !vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), true))))) {
                var var_2 = select(select(vec2<bool>((var_1.x / var_1.x) >= -120.0, any(select(vec2<bool>(false, false), vec2<bool>(false, true), false))), vec2<bool>(!select(false, true, true), false), true), !select(select(vec2<bool>(true, false), vec2<bool>(true, false), u_input.b > -1), vec2<bool>(all(vec4<bool>(true, false, false, true)), false & true), any(!vec2<bool>(false, true))), vec2<bool>(false, all(select(!vec2<bool>(false, true), vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, false), true)))));
            }
            loop {
                var_0 = select(vec2<u32>(27594u >> var_0.x, u_input.e), vec2<u32>(0u - var_0.x, 23489u * ((1u % var_0.x) << ~21448u)), any(vec2<bool>(all(!vec4<bool>(false, false, true, true)), round(734.0) == var_1.x)));
                break;
            }
            let var_2 = Struct_1(firstLeadingBit(select(~clamp(vec2<u32>(0u, 50268u), vec2<u32>(32466u, u_input.e), vec2<u32>(var_0.x, 35040u)), vec2<u32>(u_input.e, 1u) & select(vec2<u32>(u_input.e, 13229u), vec2<u32>(21280u, var_0.x), vec2<bool>(true, false)), !(!vec2<bool>(true, false)))), ~vec3<i32>(2147483647, u_input.c + -1, ~dot(u_input.d.zx, u_input.d.yz)), -1000.0);
            global0 = array<Struct_1, 26>();
        }
        default: {
            var var_2 = u_input.a;
            switch (4279 + -28800) {
                case 26269: {
                    let var_3 = Struct_1(~vec2<u32>(~74890u, ~1u), min(u_input.d, u_input.d), var_1.x);
                    let var_4 = -35327;
                }
                case 0: {
                }
                default: {
                    var_1 = vec4<f32>(-max(step(var_1.x, var_1.x), -1593.0 * var_1.x), var_1.x, -var_1.x * ((var_1.x - var_1.x) + (var_1.x + var_1.x)), min(-833.0 + var_1.x, -936.0)) * -(vec4<f32>(1000.0, -344.0, -var_1.x, var_1.x) - -min(vec4<f32>(-1778.0, -145.0, var_1.x, var_1.x), vec4<f32>(-397.0, var_1.x, -2178.0, 217.0)));
                    let var_3 = !true;
                }
            }
            global0 = array<Struct_1, 26>();
            var_0 = vec2<u32>(1u, min(~u_input.e, ~0u) ^ 0u);
            var var_3 = Struct_1(vec2<u32>(45874u, max(abs(dot(vec4<u32>(var_0.x, 4294967295u, u_input.e, 4294967295u), vec4<u32>(var_0.x, var_0.x, var_0.x, 10067u))), ~0u << ~20586u)), -(vec3<i32>(2147483647, u_input.a, 2147483647) - vec3<i32>(u_input.c, u_input.a, u_input.c)) | vec3<i32>(-u_input.d.x / u_input.b, select(5524, 1, !true), -dot(vec4<i32>(-28633, -35860, u_input.c, -4136), vec4<i32>(u_input.b, -2147483648, u_input.d.x, -2147483648))), var_1.x);
        }
    }
    let var_2 = global0[((u_input.e >> ~u_input.e) << 34113u) << ~1u];
    return -(-var_1.wxz);
}

fn func_5() -> i32 {
    let var_0 = trunc(sign(vec2<f32>(-691.0, 1000.0 / -315.0)) + (trunc(-vec2<f32>(199.0, -150.0)) / max(vec2<f32>(-499.0, -1357.0) + vec2<f32>(-1514.0, 1121.0), vec2<f32>(526.0, 1000.0) - vec2<f32>(438.0, 1249.0))));
    let var_1 = -(vec3<f32>(2588.0, select(var_0.x + 871.0, -342.0, true), -var_0.x / -446.0) - (-func_6() - exp2(trunc(vec3<f32>(800.0, 544.0, 895.0)))));
    if (any(select(!(!(!vec4<bool>(true, true, true, true))), !vec4<bool>(!false, any(vec2<bool>(false, false)), !true, false), any(!(!vec3<bool>(true, true, true)))))) {
    }
    global0 = array<Struct_1, 26>();
    global0 = array<Struct_1, 26>();
    return 19168;
}

fn func_4() -> Struct_1 {
    for (var var_0 = 34535; ; var_0 = func_5()) {
        if (!any(select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(false, false), !vec2<bool>(false, true)), select(!vec2<bool>(false, true), !vec2<bool>(true, false), 324.0 == 2635.0), vec2<bool>(true | false, true)))) {
            var var_1 = global0[46860u];
        }
        switch (firstLeadingBit(-2147483648 << (4294967295u / dot(vec2<u32>(u_input.e, 89601u) ^ vec2<u32>(u_input.e, u_input.e), vec2<u32>(4294967295u, 1u))))) {
            case 0: {
                continue;
            }
            case -28332: {
            }
            case 34428: {
            }
            default: {
                var var_1 = global0[~min(select(~20122u ^ (0u | u_input.e), u_input.e, all(vec2<bool>(false, false))), 664u - ~u_input.e)];
                var var_2 = global0[~firstLeadingBit((var_1.a.x * ~u_input.e) >> 4294967295u)];
                var var_3 = firstLeadingBit(~(0u * (var_1.a.x << (0u >> u_input.e))));
                var var_4 = global0[dot((vec2<u32>(var_2.a.x, 174152u) + vec2<u32>(u_input.e, var_1.a.x)) * vec2<u32>(~var_2.a.x, 44497u / 69753u), abs(var_2.a)) & select(~(~32071u), ~(~u_input.e), false)];
                var var_5 = max(vec3<i32>((firstTrailingBit(1) << ~u_input.e) * (-25678 + 1), (~(-1) << var_4.a.x) / -(0), dot(var_4.b, (var_4.b / var_2.b) | (u_input.d | u_input.d))), vec3<i32>(1 & (var_4.b.x * -855), -2147483648, max(~2829, clamp(-19267 - var_4.b.x, max(var_4.b.x, var_2.b.x), dot(vec3<i32>(u_input.d.x, -72375, u_input.b), vec3<i32>(var_1.b.x, 1, 28461))))));
            }
        }
        loop {
        }
    }
    global0 = array<Struct_1, 26>();
    let var_0 = global0[u_input.e];
    switch (-dot(max(~(vec4<i32>(var_0.b.x, 32138, u_input.b, 2147483647) % vec4<i32>(var_0.b.x, 18393, u_input.a, -2147483648)), vec4<i32>(~1, 10073, abs(var_0.b.x), -38332)), (-vec4<i32>(-1, u_input.a, 1, var_0.b.x) + select(vec4<i32>(2147483647, var_0.b.x, var_0.b.x, u_input.d.x), vec4<i32>(-1, u_input.b, -56914, -16641), vec4<bool>(true, false, true, true))) >> (vec4<u32>(50117u, var_0.a.x, 72815u, var_0.a.x) % (vec4<u32>(0u, u_input.e, 55183u, 0u) & vec4<u32>(12809u, u_input.e, var_0.a.x, u_input.e))))) {
        case 0: {
            if (true) {
                let var_1 = -32368;
                var var_2 = Struct_1(vec2<u32>(u_input.e, u_input.e), u_input.d / (-(u_input.d >> vec3<u32>(90382u, var_0.a.x, 83703u)) * abs(-vec3<i32>(0, 21761, 0))), -(-938.0));
                var var_3 = Struct_1(vec2<u32>(9736u, 0u) << vec2<u32>(dot(vec3<u32>(1u, 0u, 47502u), vec3<u32>(var_0.a.x, 1u, 27825u)) << ~3589u, abs(117445u << var_0.a.x)), u_input.d, max(((-1000.0 / var_2.c) / trunc(257.0)) - -1103.0, 1494.0));
                let var_4 = global0[firstLeadingBit(~firstLeadingBit(~4294967295u))];
                let var_5 = Struct_1(vec2<u32>(1875u, 0u), -(-(vec3<i32>(var_0.b.x, -2147483648, var_3.b.x) << clamp(vec3<u32>(34395u, var_4.a.x, var_0.a.x), vec3<u32>(var_2.a.x, u_input.e, var_0.a.x), vec3<u32>(1u, var_2.a.x, u_input.e)))), 439.0 - -1455.0);
            }
            for (var var_1 = -7011; var_1 >= -2147483648; var_1 -= 1) {
            }
            let var_1 = ~(~max(~(~vec3<u32>(var_0.a.x, u_input.e, var_0.a.x)), ~(vec3<u32>(1u, var_0.a.x, u_input.e) << vec3<u32>(var_0.a.x, var_0.a.x, 7378u))));
            let var_2 = -(-vec4<f32>(-866.0, var_0.c, -var_0.c, var_0.c)) * vec4<f32>(var_0.c, -(var_0.c * var_0.c), max(abs(701.0), select(181.0 * var_0.c, sign(196.0), all(vec4<bool>(false, false, false, true)))), ceil(round(var_0.c * 2788.0)));
            var var_3 = ~(u_input.e * var_1.x);
        }
        case -72566: {
            let var_1 = Struct_1(firstTrailingBit(reverseBits(~var_0.a)), vec3<i32>(-firstTrailingBit(u_input.c - var_0.b.x), reverseBits(dot(vec4<i32>(1, 12989, -207, u_input.d.x), vec4<i32>(u_input.d.x, var_0.b.x, -2147483648, u_input.a))), max(~clamp(var_0.b.x, 29649, u_input.c), 2147483647)), 950.0);
            switch (reverseBits(var_0.b.x)) {
                case -3456: {
                    var var_2 = vec4<u32>(~20669u, u_input.e, var_1.a.x, ~(~(19794u + 864u)) + (max(~u_input.e, ~1u) - ~var_0.a.x));
                    let var_3 = ~vec4<u32>(var_2.x, ~4294967295u, 1u, select(~u_input.e, abs(~var_2.x), -var_0.c >= (var_0.c + 567.0)));
                    var_2 = var_3;
                    let var_4 = !select(!vec2<bool>(1 > -1, false), !(!(!vec2<bool>(true, true))), !select(vec2<bool>(false, false), !vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, true), true)));
                }
                case -51095: {
                    var var_2 = !true;
                    let var_3 = var_1;
                    global0 = array<Struct_1, 26>();
                    let var_4 = Struct_1(var_1.a, vec3<i32>(1, var_0.b.x / u_input.b, -22543) & vec3<i32>((2147483647 << var_1.a.x) << ~44126u, ~(var_0.b.x ^ 2147483647), firstLeadingBit(~var_0.b.x)), var_0.c - 464.0);
                    global0 = array<Struct_1, 26>();
                }
                default: {
                    global0 = array<Struct_1, 26>();
                    global0 = array<Struct_1, 26>();
                    let var_2 = vec3<bool>(firstLeadingBit(-5782) <= var_0.b.x, !any(select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(false, true), !vec2<bool>(true, true))), true);
                    let var_3 = var_1;
                    var var_4 = -(0 * func_5());
                }
            }
        }
        case 44647: {
            for (var var_1 = min(2147483647, dot(var_0.b.yz, -u_input.d.zx | vec2<i32>(0, var_0.b.x))) + 0; !select(true || true, false, any(!vec3<bool>(false, true, false))); ) {
            }
            global0 = array<Struct_1, 26>();
        }
        case -29188: {
            for (var var_1 = 11496; ; var_1 -= 1) {
                let var_2 = Struct_1(var_0.a, abs(((u_input.d & vec3<i32>(u_input.c, -4154, -7194)) + ~vec3<i32>(var_0.b.x, 8086, u_input.a)) % u_input.d), -1783.0);
            }
        }
        default: {
            global0 = array<Struct_1, 26>();
            let var_1 = global0[25492u / firstTrailingBit(abs(~(4294967295u / var_0.a.x)))];
        }
    }
    for (var var_1: i32; false || (dot(firstTrailingBit(vec4<u32>(u_input.e, 1u, 0u, 4294967295u)) & abs(vec4<u32>(63720u, u_input.e, 25055u, 19002u)), vec4<u32>(4294967295u, u_input.e, 4294967295u, u_input.e) & (vec4<u32>(4294967295u, 1u, u_input.e, var_0.a.x) ^ vec4<u32>(var_0.a.x, var_0.a.x, u_input.e, var_0.a.x))) < dot(firstTrailingBit(select(vec4<u32>(4294967295u, 23190u, var_0.a.x, 1u), vec4<u32>(4294967295u, 53429u, 1u, 0u), vec4<bool>(true, true, true, true))), ~(vec4<u32>(90646u, 4294967295u, u_input.e, 1u) & vec4<u32>(0u, 10155u, 4294967295u, u_input.e)))); var_1 = min(~var_0.b.x, ((abs(0) * (u_input.a % 1)) - (0 / -11473)) % -2147483648)) {
        for (var var_2: i32; all(!vec4<bool>(select(true || true, 0 <= -1, !false), -var_0.b.x != 18166, !select(true, true, false), false | all(vec3<bool>(true, true, false)))); var_2 += 1) {
            global0 = array<Struct_1, 26>();
            let var_3 = -(-(trunc(var_0.c / 460.0) - var_0.c));
            var var_4 = global0[~4294967295u >> dot(((vec4<u32>(4294967295u, 35142u, 38498u, u_input.e) - vec4<u32>(var_0.a.x, 1u, 64424u, 1u)) ^ (vec4<u32>(u_input.e, 29829u, var_0.a.x, u_input.e) | vec4<u32>(var_0.a.x, var_0.a.x, var_0.a.x, 23384u))) | ((vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u) & vec4<u32>(u_input.e, var_0.a.x, 0u, var_0.a.x)) / ~vec4<u32>(48058u, u_input.e, u_input.e, 122589u)), abs(countOneBits(abs(vec4<u32>(57358u, var_0.a.x, 4294967295u, 87116u)))))];
            global0 = array<Struct_1, 26>();
            var_1 = 1;
        }
    }
    return global0[var_0.a.x];
}

fn func_7(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    switch (arg_1.b.x) {
        default: {
        }
    }
    loop {
        for (var var_0 = -32138; var_0 < -2147483648; var_0 += 1) {
        }
    }
    for (var var_0 = -2147483648; !false != any(vec3<bool>(false, true, 1u <= (4294967295u >> arg_0))); var_0 += 1) {
        switch (u_input.c) {
            case -18884: {
                var var_1 = func_4();
                break;
            }
            case 56617: {
            }
            case -1: {
                let var_1 = clamp(vec3<u32>(arg_1.a.x, (arg_0 + u_input.e) - (1u % 3922u), 3924u), ~vec3<u32>(~arg_0, ~arg_0, arg_0), ~vec3<u32>(19681u, 77160u, arg_0) + (vec3<u32>(arg_0, arg_3.a.x, 4294967295u) - ~vec3<u32>(1u, arg_0, 8255u))) | ~(~(~vec3<u32>(91952u, arg_2.a.x, 0u)));
                continue;
            }
            default: {
                let var_1 = func_4();
                var_0 = -select(-1, max(reverseBits(~22948), dot(var_1.b, u_input.d ^ vec3<i32>(arg_3.b.x, arg_1.b.x, -12955))), all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false))) & false);
                global0 = array<Struct_1, 26>();
            }
        }
    }
    var var_0 = func_4();
    let var_1 = exp2(-(-(vec3<f32>(var_0.c, 144.0, var_0.c) / vec3<f32>(var_0.c, arg_3.c, arg_2.c)))) + (ceil(vec3<f32>(var_0.c, var_0.c, -1138.0) - abs(vec3<f32>(var_0.c, 175.0, 269.0))) / -((vec3<f32>(var_0.c, arg_1.c, -500.0) * vec3<f32>(-459.0, arg_2.c, -113.0)) + (vec3<f32>(395.0, 244.0, var_0.c) - vec3<f32>(arg_2.c, arg_2.c, arg_3.c))));
    return var_1.x;
}

fn func_3(arg_0: Struct_1) -> i32 {
    global0 = array<Struct_1, 26>();
    var var_0 = Struct_1(arg_0.a ^ (abs(~vec2<u32>(1u, u_input.e)) & ~vec2<u32>(arg_0.a.x, u_input.e)), vec3<i32>(~(1 ^ arg_0.b.x) + max(clamp(arg_0.b.x, -301, u_input.b), -8249), select(-52677 << ~arg_0.a.x, firstLeadingBit(1), !true), ~(-1 ^ countOneBits(arg_0.b.x))), -(-select(arg_0.c, 640.0, true)) - (func_7(4294967295u, Struct_1(arg_0.a, arg_0.b, 357.0), Struct_1(vec2<u32>(u_input.e, 98140u), vec3<i32>(-26735, 39131, -26051), -556.0), func_4()) * (609.0 + (arg_0.c * 1362.0))));
    loop {
        break;
    }
    if (~(-var_0.b.x) <= (u_input.d.x << arg_0.a.x)) {
    }
    if (select(~(4294967295u ^ arg_0.a.x) != (((arg_0.a.x + var_0.a.x) >> (0u * u_input.e)) * abs(u_input.e)), all(!select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(false, false), any(vec3<bool>(true, true, true)))), !((any(vec3<bool>(false, true, false)) && any(vec3<bool>(true, true, true))) | !(!false)))) {
        return arg_0.b.x | ((firstLeadingBit(select(2147483647, arg_0.b.x, false)) % arg_0.b.x) & func_4().b.x);
    }
    return min(0 / select(u_input.d.x, -1, select(!false, true, !true)), ~min(arg_0.b.x, func_4().b.x));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    return ~(~(dot(arg_2.b.xx ^ arg_0.b.yx, arg_0.b.yy) | -func_3(global0[arg_3.a.x])));
}

fn func_1(arg_0: u32, arg_1: bool) -> vec2<u32> {
    for (var var_0 = 36665; ; ) {
        var var_1 = Struct_1(abs(~vec2<u32>(u_input.e, u_input.e) | vec2<u32>(~76950u, arg_0)), firstLeadingBit(vec3<i32>((u_input.c / u_input.d.x) - func_2(Struct_1(vec2<u32>(1u, arg_0), u_input.d, -1822.0), arg_1, global0[arg_0], global0[u_input.e]), u_input.d.x, u_input.a - (-12896 / u_input.c))), -236.0);
    }
    global0 = array<Struct_1, 26>();
    let var_0 = max(firstTrailingBit(max(~vec2<u32>(25958u, u_input.e), ~vec2<u32>(2302u, 1u))), abs(~(vec2<u32>(3469u, u_input.e) + vec2<u32>(1u, 14004u)))) >> vec2<u32>(1u, ~firstLeadingBit(~u_input.e));
    let var_1 = u_input.d;
    loop {
        var var_2 = global0[(max(var_0.x, var_0.x) / ~((arg_0 - var_0.x) >> var_0.x)) | 1u];
        var_2 = Struct_1(~var_0 + (~abs(var_0) << ~(~var_0)), countOneBits(u_input.d), step(var_2.c, ((-728.0 - var_2.c) * 102.0) / 305.0));
        continue;
    }
    return (max(func_4().a, var_0) ^ (var_0 | var_0)) + vec2<u32>(arg_0, 3332u | arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 26>();
    global0 = array<Struct_1, 26>();
    for (var var_0 = -31976; ((min(step(647.0, 1535.0), -2206.0 + -460.0) / ((-1702.0 * 642.0) - (649.0 / 138.0))) * -503.0) != 783.0; ) {
        let var_1 = min(max(vec2<u32>(0u, u_input.e) | vec2<u32>(u_input.e, u_input.e), max(vec2<u32>(u_input.e, u_input.e), vec2<u32>(41084u, 31984u)) | func_1(u_input.e, false)) / vec2<u32>(~(1u % 0u), 4294967295u), vec2<u32>(countOneBits(u_input.e), ((1u >> u_input.e) / 3859u) << (u_input.e % u_input.e)));
        if (1000.0 != round(ceil(-func_4().c))) {
            var var_2 = -133.0;
        }
    }
    var var_0 = func_4();
    var_0 = global0[max(var_0.a.x, var_0.a.x) * abs(~var_0.a.x)];
    global0 = array<Struct_1, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-(-var_0.c), var_0.c, 505.0), vec4<f32>(2647.0, -1172.0, var_0.c, var_0.c), var_0.c);
}

