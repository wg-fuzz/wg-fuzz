// {"0:0":[198,225,200,207,60,163,112,191,153,109,75,130,3,86,224,191,88,221,53,42,169,127,8,21,239,114,60,4,106,174,136,154,122,32,2,36,248,135,154,240,131,198,240,186,130,93,67,111,26,218,38,58,44,22,99,102,53,144,38,42,118,119,57,90]}
// Seed: 6065535443361073068

struct Struct_1 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<u32, 24>;

var<private> global2: bool;

var<private> global3: array<Struct_2, 1>;

var<private> global4: i32 = -55676;

fn func_6() -> i32 {
    let var_0 = abs(abs(~countOneBits(global0.x)));
    let var_1 = Struct_1(global0.xww, global0.x);
    if (false) {
        var var_2 = -(~(((u_input.c | vec4<i32>(-7546, -23503, var_1.a.x, global0.x)) << reverseBits(vec4<u32>(1u, u_input.b, 18473u, 4294967295u))) >> (~u_input.a * ~u_input.a)));
        for (; ; ) {
            break;
        }
        var var_3 = u_input.a.x;
        for (var var_4: i32; (57609u > global1[40679u]) != false; ) {
            let var_5 = (-(-(482.0 / 1000.0)) < -(-1656.0 * (-1206.0 - 624.0))) || select(true, firstLeadingBit(u_input.b) < ~global1[clamp(global1[u_input.b], 4294967295u, 7541u)], all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true))));
            global0 = select(-(~u_input.c) | (u_input.c - ~max(u_input.c, vec4<i32>(-41429, var_2.x, var_0, var_2.x))), -(~((vec4<i32>(-1, -6897, -47379, -1) ^ vec4<i32>(-66432, -36997, u_input.c.x, var_0)) ^ u_input.c)), !vec4<bool>(!(u_input.b == 4294967295u), !all(vec2<bool>(var_5, true)), !all(vec4<bool>(true, true, true, false)), true));
            global4 = reverseBits(2147483647 - ~dot(vec2<i32>(global0.x, -2147483648), var_1.a.xx));
        }
    }
    global2 = !(sign(sign(744.0) / select(833.0, -467.0, false)) >= (((796.0 * 743.0) - (754.0 + -133.0)) + -max(1105.0, 278.0)));
    let var_2 = var_1;
    return ~abs(-(-11949));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: bool) -> vec3<f32> {
    global4 = func_6();
    var var_0 = vec4<u32>(u_input.a.x, 29134u, 0u, ~max(~(u_input.b >> 1u), u_input.a.x));
    let var_1 = Struct_1(vec3<i32>(dot(vec3<i32>(0, -1, 23548), firstLeadingBit(arg_1.a.yyx)) >> dot(arg_1.b.yz, reverseBits(vec2<u32>(41567u, 0u))), ~u_input.d, global0.x), u_input.c.x);
    global2 = arg_2;
    for (var var_2 = 18006; var_2 == 4309; ) {
    }
    return vec3<f32>(arg_0.x * ceil(-793.0), -882.0, arg_0.x);
}

fn func_7(arg_0: vec3<f32>, arg_1: f32) -> i32 {
    global3 = array<Struct_2, 1>();
    global3 = array<Struct_2, 1>();
    switch (16483) {
        default: {
        }
    }
    global2 = false;
    if (!(!true)) {
        loop {
            global1 = array<u32, 24>();
        }
    }
    return clamp(u_input.d, -(-2147483648 * dot(select(vec4<i32>(u_input.d, 1, u_input.d, -30511), u_input.c, false), max(vec4<i32>(global0.x, u_input.c.x, global0.x, 1), u_input.c))), 70606 / -2147483648);
}

fn func_4(arg_0: Struct_2) -> vec2<bool> {
    global4 = func_7(select(select(func_5(vec4<f32>(-331.0, -861.0, -414.0, -1839.0), Struct_3(u_input.c, u_input.a.yxz), true) * (vec3<f32>(-792.0, -480.0, -579.0) * vec3<f32>(-798.0, -340.0, 387.0)), sign(vec3<f32>(974.0, -1720.0, -538.0)) + (vec3<f32>(-130.0, 544.0, 335.0) - vec3<f32>(666.0, -375.0, -2341.0)), all(vec2<bool>(true, true))), -(-vec3<f32>(-1000.0, -345.0, -472.0)) + (min(vec3<f32>(1000.0, -338.0, 862.0), vec3<f32>(454.0, -568.0, 837.0)) / -vec3<f32>(233.0, -106.0, 880.0)), any(!vec4<bool>(true, false, true, false))), -1000.0);
    global4 = u_input.d;
    let var_0 = exp2(sign(-vec4<f32>(-634.0 / -1379.0, 141.0 / -858.0, 2256.0, 748.0)));
    global2 = (772.0 + -136.0) != (sign(-170.0) * -((var_0.x - 1306.0) - -286.0));
    if (!(var_0.x != -165.0)) {
    }
    return select(select(!(!select(vec2<bool>(false, false), vec2<bool>(false, true), true)), vec2<bool>(select(true, true, false) || (60397u >= 47420u), select(true, !true, !true)), false), vec2<bool>(false, true), (-47462 * -2147483648) >= 0);
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> bool {
    let var_0 = vec2<bool>(any(!(!func_4(Struct_2(arg_3)))), func_4(Struct_2(arg_1)).x);
    let var_1 = sign(-(-(vec3<f32>(arg_0, 915.0, arg_0) * vec3<f32>(arg_0, arg_0, arg_0)) + (vec3<f32>(arg_0, arg_0, arg_0) * vec3<f32>(-711.0, -918.0, arg_0))));
    switch (dot(~(-vec2<i32>(2147483647, u_input.d) + vec2<i32>(arg_1.b, -2147483648)), abs(global0.yw)) >> ~(clamp(13168u >> u_input.a.x, arg_2, u_input.b) + select(arg_2, arg_2 ^ 61913u, var_0.x))) {
        default: {
            loop {
                break;
            }
            global0 = vec4<i32>(countOneBits(func_6()), 11296, clamp(~(-2904), dot(vec4<i32>(firstTrailingBit(2147483647), 35344, u_input.d, global0.x), ~u_input.c % countOneBits(vec4<i32>(23445, arg_3.a.x, 0, 53315))), global0.x), countOneBits(u_input.c.x % -(~arg_3.b)));
            let var_2 = global0.xw;
            for (; ; ) {
                var var_3 = ~(~abs(4294967295u)) == (abs(59919u) & ~(~(~arg_2)));
                var var_4 = Struct_3(~(((u_input.c - vec4<i32>(u_input.d, -1, arg_3.b, 2147483647)) % (vec4<i32>(-2147483648, arg_1.b, -1, arg_3.a.x) % u_input.c)) + -(vec4<i32>(u_input.c.x, -29828, arg_1.a.x, -2147483648) >> vec4<u32>(global1[global1[39751u]], 0u, 5954u, global1[37064u]))), ~vec3<u32>(global1[~1u], ~u_input.a.x, global1[global1[~(global1[global1[u_input.a.x]] << 25149u)]]));
            }
            return var_0.x;
        }
    }
    loop {
        var var_2 = 24913u;
        break;
    }
    global3 = array<Struct_2, 1>();
    return (~(~global0.x) < (u_input.d << (abs(arg_2) + u_input.b))) == false;
}

fn func_8(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: vec2<bool>, arg_3: vec4<bool>) -> i32 {
    let var_0 = ~(~(~vec2<u32>(abs(0u), global1[u_input.a.x])));
    if (true) {
    }
    if (func_3(-937.0, Struct_1(vec3<i32>(firstLeadingBit(29107 / u_input.c.x), 2147483647, reverseBits(global0.x)), 19388 + max(firstTrailingBit(u_input.d), ~global0.x)), abs(max(min(0u - var_0.x, ~43026u), select(1u, ~44553u, -521.0 > 2328.0))), Struct_1(u_input.c.wxz, ~u_input.d))) {
        let var_1 = u_input.c.wx;
        var var_2 = 40640u;
        global3 = array<Struct_2, 1>();
        if (true) {
            let var_3 = !(min(arg_0.x, floor(-698.0)) > arg_0.x);
            var var_4 = (479.0 * round(select(-arg_0.x, 1104.0 * arg_0.x, arg_1.x))) - -701.0;
        }
    }
    global1 = array<u32, 24>();
    loop {
        for (var var_1 = 21420; ; ) {
            global1 = array<u32, 24>();
            continue;
        }
        var var_1 = max(~global0.zw, -vec2<i32>(~2147483647, 2147483647)) | vec2<i32>(global0.x, -u_input.d);
        continue;
    }
    return u_input.d;
}

fn func_2() -> u32 {
    global2 = true;
    global4 = 1;
    if (!true) {
    }
    let var_0 = global0.x;
    switch (~func_8(vec2<f32>(-(-914.0), -1000.0), !vec2<bool>(!false, func_3(385.0, Struct_1(u_input.c.zzy, u_input.d), 1u, Struct_1(u_input.c.wzy, 1))), vec2<bool>((global0.x << 1u) > u_input.d, func_4(Struct_2(Struct_1(vec3<i32>(23876, global0.x, 0), 33959))).x), vec4<bool>(true, !(false || true), false, any(vec3<bool>(true, true, true))))) {
        case 35332: {
            global1 = array<u32, 24>();
            var var_1 = Struct_2(Struct_1(vec3<i32>(u_input.d >> u_input.b, ~u_input.d, dot(vec3<i32>(2147483647, u_input.d, -14567), global0.zyz)) - u_input.c.yyx, ~dot(u_input.c ^ u_input.c, u_input.c * u_input.c)));
            let var_2 = Struct_3(vec4<i32>(~var_1.a.a.x + -8060, var_1.a.b, var_1.a.b, -(~global0.x)) * (u_input.c ^ clamp(vec4<i32>(75, var_1.a.b, global0.x, var_1.a.b), vec4<i32>(1, 65821, 64054, global0.x), vec4<i32>(global0.x, u_input.d, -12137, 0) % u_input.c)), u_input.a.wzx);
        }
        case 47393: {
            for (var var_1: i32; ; global2 = all(vec2<bool>(!any(!vec3<bool>(true, false, false)), 4294967295u != (u_input.a.x | firstLeadingBit(u_input.b))))) {
                continue;
            }
            switch ((-1 + 72311) / global0.x) {
                default: {
                    return select(89234u, countOneBits(~(88564u | (82725u << 1u))), false);
                }
            }
            global0 = (-u_input.c << ((u_input.a % ~u_input.a) >> ~u_input.a)) << (vec4<u32>(global1[clamp(u_input.b, u_input.a.x, 1u) << 1241u], global1[reverseBits(~1u)], 1u, ~(~u_input.b)) ^ ~u_input.a);
            let var_1 = Struct_2(Struct_1(min(max(vec3<i32>(u_input.d, global0.x, -15747), select(u_input.c.zxy, vec3<i32>(1, global0.x, global0.x), vec3<bool>(false, true, true))), global0.wxy), 13325));
            loop {
                global0 = abs(u_input.c);
                let var_2 = Struct_1(clamp(global0.xwy, vec3<i32>(~2147483647, global0.x, reverseBits(global0.x + u_input.c.x)), global0.wxx), ~(-8628));
            }
        }
        case 0: {
            loop {
            }
            switch (dot(vec4<i32>((-1 & -15884) % 0, global0.x, -41555, (global0.x + -1) ^ u_input.c.x) * -countOneBits(reverseBits(u_input.c)), max(vec4<i32>(~firstLeadingBit(global0.x), dot(vec3<i32>(u_input.c.x, 36107, 1) >> u_input.a.wxz, firstLeadingBit(vec3<i32>(global0.x, global0.x, 0))), dot(u_input.c.zzz, global0.xxw), u_input.c.x), -(u_input.c * (vec4<i32>(global0.x, global0.x, global0.x, global0.x) * vec4<i32>(-2147483648, u_input.d, -2147483648, 0)))))) {
                default: {
                    global2 = true;
                    var var_1 = vec2<f32>((-(-1000.0 + 1568.0) + 2026.0) / -196.0, min(select(-677.0, -1651.0, select(any(vec4<bool>(false, false, true, true)), true, -8494 == -11096)), -floor(-327.0)));
                    let var_2 = Struct_1(u_input.c.xxw, min(u_input.d | -2147483648, -dot(~vec4<i32>(u_input.d, u_input.c.x, 12635, 0), u_input.c)));
                    global0 = vec4<i32>(u_input.c.x, global0.x, global0.x | -36104, ~(dot(u_input.c, u_input.c) >> 1u) >> ~u_input.b);
                    global4 = func_8(vec2<f32>(((var_1.x + var_1.x) + sign(var_1.x)) + (var_1.x + (-1035.0 / var_1.x)), var_1.x), !select(select(!vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(!false, false), all(!vec4<bool>(true, true, true, true))), func_4(Struct_2(Struct_1(-vec3<i32>(u_input.d, 0, 0), global0.x))), select(!vec4<bool>(any(vec2<bool>(false, false)), any(vec4<bool>(true, false, false, false)), true && false, false), vec4<bool>(false, !(!false), true, false), !(!false) != true));
                }
            }
            switch ((u_input.d & -reverseBits(min(global0.x, u_input.c.x))) * ~u_input.d) {
                case 0: {
                    var var_1 = Struct_1(vec3<i32>(2147483647, global0.x, u_input.c.x) % (global0.wxx - global0.xxy), ~2147483647);
                    let var_2 = vec4<i32>(-(-firstTrailingBit(2147483647)) + global0.x, ~u_input.c.x, var_1.b, ~(((-28630 ^ -14995) & 55369) * (-(-2147483648) ^ abs(var_1.a.x))));
                    global3 = array<Struct_2, 1>();
                    let var_3 = u_input.a.xx;
                }
                case -14626: {
                    let var_1 = global0.x;
                    global3 = array<Struct_2, 1>();
                    let var_2 = Struct_1(select(global0.xxy, abs(-global0.ywy), select(vec3<bool>(true, any(vec4<bool>(true, false, false, false)), any(vec3<bool>(true, true, false))), vec3<bool>(false & true, !false, true & false), false)), -2147483648);
                    let var_3 = !(select(func_3(188.0 / 1000.0, var_2, dot(vec2<u32>(global1[global1[4294967295u]], u_input.a.x), vec2<u32>(4294967295u, 1179u)), var_2), true, select(func_3(753.0, var_2, 1u, var_2), !true, select(true, false, false))) && false);
                    global3 = array<Struct_2, 1>();
                }
                case -1: {
                    var var_1 = u_input.b;
                    var var_2 = Struct_3(~u_input.c, abs(firstLeadingBit(~(~vec3<u32>(14445u, 45106u, u_input.a.x)))));
                }
                default: {
                    var var_1 = select(!vec3<bool>(any(select(vec2<bool>(false, false), vec2<bool>(true, true), false)), 4294967295u >= global1[~global1[0u]], ~global1[4294967295u] == 54386u), !select(!vec3<bool>(true, true, false), select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), false)), !(!true)), vec3<bool>(true, 4294967295u >= (u_input.b << (global1[29338u] >> 4294967295u)), (~5932u | 60416u) == 6816u));
                    var var_2 = abs(global1[~(~firstTrailingBit(abs(global1[1u])))]);
                }
            }
            global1 = array<u32, 24>();
            global4 = 71891 % global0.x;
        }
        case -39827: {
            var var_1 = select(!(!(!vec4<bool>(true, false, false, false))), !select(select(vec4<bool>(false, false, false, false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false)), vec4<bool>(false, true, false, false)), vec4<bool>(func_4(Struct_2(Struct_1(vec3<i32>(-43944, global0.x, 7441), 1))).x, -15882 <= 1, all(vec4<bool>(false, false, true, true)), true), select(all(vec2<bool>(true, true)), select(false, false, true), all(vec3<bool>(true, false, false)))), ~(~(~global0.x)) == func_6());
            switch (~86538) {
                case 1: {
                    let var_2 = Struct_1(vec3<i32>(1, global0.x, select(4672, global0.x, !var_1.x)) / select(u_input.c.xzx, vec3<i32>(-u_input.c.x, ~u_input.c.x, select(global0.x, global0.x, true)), all(!vec4<bool>(var_1.x, var_1.x, true, true))), 4607 / (0 + ~u_input.d));
                    global0 = vec4<i32>(dot(vec4<i32>(global0.x, func_7(vec3<f32>(789.0, -844.0, -284.0), -(-318.0)), dot(vec4<i32>(global0.x, global0.x, u_input.d, -1500) | u_input.c, vec4<i32>(0, global0.x, 2147483647, global0.x)), (global0.x | -1) ^ -6824), ~select(u_input.c, ~vec4<i32>(-2147483648, global0.x, -27578, global0.x), u_input.a.x > u_input.a.x)), 23298, -(2147483647 / u_input.d), global0.x);
                    let var_3 = global3[7636u];
                }
                case 0: {
                    let var_2 = ~global0.x * u_input.c.x;
                }
                case 2147483647: {
                    let var_2 = ~vec2<u32>(19346u & ~1u, global1[global1[u_input.a.x] % dot(u_input.a, max(u_input.a, vec4<u32>(42198u, global1[u_input.b], 1u, 1u)))]);
                    var var_3 = Struct_3(u_input.c, vec3<u32>(1u, ~(~dot(vec4<u32>(1u, 0u, 1u, 1u), u_input.a)), max(0u & u_input.b, 1u % global1[global1[35036u]]) >> abs(var_2.x)));
                    var var_4 = -(-(round(-721.0 - 1433.0) / 1101.0));
                    global2 = func_4(Struct_2(Struct_1(vec3<i32>(var_3.a.x, var_3.a.x, 2147483647) % vec3<i32>(u_input.c.x, -1, global0.x), -21984))).x;
                }
                case -1: {
                    var var_2 = Struct_1(u_input.c.yxx, ~((min(global0.x, u_input.d) / -1) / 1));
                    let var_3 = -u_input.c.yz ^ firstTrailingBit(max(u_input.c.wz << firstLeadingBit(u_input.a.ww), vec2<i32>(0, -1) | ~vec2<i32>(global0.x, -2147483648)));
                }
                default: {
                    var var_2 = Struct_1(u_input.c.xxx, u_input.c.x);
                    let var_3 = Struct_1(global0.xwy, ~(-(firstLeadingBit(11548) | u_input.d)));
                    let var_4 = Struct_1((u_input.c.ywz / var_3.a) >> vec3<u32>(global1[~4294967295u], 63227u, ~0u), -func_6() + (~func_7(vec3<f32>(-130.0, 171.0, -433.0), -1189.0) - var_2.b));
                    var var_5 = Struct_3(~(u_input.c - vec4<i32>(u_input.c.x | 0, u_input.d, ~1, -8019)), abs(vec3<u32>(~108594u, ~u_input.a.x, global1[65517u] + 87433u)) ^ ~(~firstLeadingBit(vec3<u32>(4294967295u, 0u, 0u))));
                    var var_6 = select(select(select(vec4<bool>(var_1.x, var_1.x, var_2.a.x > var_2.b, all(vec2<bool>(var_1.x, true))), vec4<bool>(!true, !var_1.x, var_1.x, !var_1.x), vec4<bool>(!var_1.x, all(vec2<bool>(true, true)), var_1.x | var_1.x, !true)), vec4<bool>(select(select(var_1.x, var_1.x, var_1.x), false & false, all(var_1.xww)), all(vec4<bool>(var_1.x, true, true, var_1.x)), all(vec4<bool>(false, var_1.x, var_1.x, true)) && !true, !true), !(!vec4<bool>(var_1.x, var_1.x, true, true))), select(!select(!vec4<bool>(true, true, true, var_1.x), vec4<bool>(var_1.x, var_1.x, true, var_1.x), !vec4<bool>(false, true, var_1.x, true)), select(vec4<bool>(!false, !true, true, -433.0 == 786.0), !select(vec4<bool>(false, var_1.x, false, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), var_1.x), !select(vec4<bool>(var_1.x, true, true, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, true), var_1.x)), select(vec4<bool>(true, 1 <= var_2.b, select(var_1.x, false, var_1.x), 26611 > -5129), !(!vec4<bool>(true, false, false, false)), !select(vec4<bool>(true, false, true, var_1.x), vec4<bool>(true, true, var_1.x, true), var_1.x))), select(vec4<bool>(var_1.x, !(!true), true, (-51989 | 6420) <= 1), select(select(!vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(true, var_1.x, var_1.x, false), select(vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(false, true, var_1.x, true), var_1.x)), vec4<bool>(var_1.x, var_1.x, !false, true), vec4<bool>(true, all(vec3<bool>(false, var_1.x, true)), var_1.x, var_1.x)), var_1.x));
                }
            }
            loop {
                var_1 = !vec4<bool>(var_1.x, var_1.x, all(var_1.zww), var_1.x);
                var var_2 = Struct_3(~u_input.c, ~u_input.a.zxw);
                global4 = var_2.a.x;
                var var_3 = 2147483647;
                var var_4 = global1[~(abs(clamp(20389u, global1[34680u], 510u)) & 25085u)] & (select(var_2.b.x, 11553u, !false) >> ~1u);
            }
            let var_2 = Struct_2(Struct_1(vec3<i32>(dot(global0.wwy, u_input.c.zyz), -(-2147483648) % clamp(global0.x, -2147483648, 0), global0.x), -(-dot(vec4<i32>(u_input.c.x, global0.x, -63619, u_input.c.x), u_input.c))));
        }
        default: {
        }
    }
    return clamp((1u / dot(firstTrailingBit(vec4<u32>(4294967295u, u_input.a.x, global1[u_input.b], global1[global1[0u]])), max(vec4<u32>(44951u, 0u, global1[0u], 1u), vec4<u32>(4294967295u, 13674u, 65057u, u_input.a.x)))) - 1u, 1u, u_input.b);
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: vec4<i32>) -> i32 {
    for (; ; ) {
        var var_0 = arg_0;
        continue;
    }
    if (arg_0) {
        var var_0 = vec4<u32>(4294967295u, 32706u, ~29678u, u_input.a.x);
        var var_1 = global3[min(~var_0.x, dot(u_input.a, select(u_input.a, ~u_input.a, select(vec4<bool>(false, arg_0, true, true), vec4<bool>(arg_0, true, true, arg_0), vec4<bool>(arg_0, arg_0, arg_0, true))))) / func_2()];
        for (var var_2 = -13887; var_2 <= 36357; ) {
        }
    }
    let var_0 = ~(~firstLeadingBit(global1[select(~global1[0u], u_input.a.x, all(vec3<bool>(arg_0, false, arg_0)))]));
    if (any(select(select(!select(vec2<bool>(true, arg_0), vec2<bool>(false, true), false), !(!vec2<bool>(arg_0, arg_0)), all(select(vec2<bool>(false, false), vec2<bool>(arg_0, arg_0), vec2<bool>(true, arg_0)))), vec2<bool>(1000.0 > -arg_1, (1 & u_input.c.x) != (-6519 ^ u_input.c.x)), select(vec2<bool>(arg_0, arg_0), func_4(Struct_2(Struct_1(arg_2.yxz, -18241))), vec2<bool>(any(vec3<bool>(arg_0, true, false)), false))))) {
    }
    loop {
        let var_1 = u_input.a.xxx;
        continue;
    }
    return u_input.d ^ min(1, global0.x & firstLeadingBit(~global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    loop {
        var var_0 = -210.0;
        break;
    }
    var var_0 = Struct_1(vec3<i32>(-(-9303), func_1(false && false, -926.0 * 562.0, select(vec4<i32>(global0.x, u_input.c.x, 1, global0.x), vec4<i32>(1, global0.x, u_input.c.x, u_input.d), vec4<bool>(false, false, true, true))) - (global0.x & ~global0.x), -reverseBits(u_input.c.x) & global0.x), func_8(-(-vec2<f32>(-1450.0, -682.0) + (vec2<f32>(-523.0, -1745.0) - vec2<f32>(-382.0, -562.0))), vec2<bool>(any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), true)), !false), vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false))), (1u | 4294967295u) <= global1[28965u]), !(!(!vec4<bool>(true, true, false, false)))));
    let var_1 = Struct_3(-(-abs(u_input.c) << (u_input.a | firstTrailingBit(vec4<u32>(4294967295u, global1[0u], 4294967295u, global1[global1[global1[51823u]]])))), vec3<u32>(4294967295u, 2017u, abs(~min(22001u, 15057u))));
    let var_2 = -var_1.a.wxx;
    for (var var_3 = 15990; var_3 > -43546; var_3 += 1) {
        let var_4 = Struct_3(-u_input.c, ~(u_input.a.zxy * countOneBits(countOneBits(vec3<u32>(global1[11885u], 0u, var_1.b.x)))));
        var_3 = -(countOneBits(-max(0, global0.x)) >> 28271u);
        global2 = (1u * u_input.b) != ~abs(max(var_1.b.x, 9861u));
        return;
    }
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(abs(reverseBits(vec3<i32>(-1, -2147483648, var_1.a.x))) << vec3<u32>(0u, var_1.b.x, 1u + global1[u_input.a.x])));
}

