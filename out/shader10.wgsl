// {"0:0":[237,240,43,75]}
// Seed: 9022732370356300731

struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 2>;

fn func_5() -> bool {
    var var_0 = global1[13584u * u_input.a];
    var var_1 = global1[1188u];
    let var_2 = Struct_1(~clamp(vec3<i32>(2147483647, var_1.a.x, dot(global0.a, vec3<i32>(global0.a.x, global0.a.x, -2147483648))), ~var_0.a, -min(vec3<i32>(2147483647, -56032, global0.a.x), var_1.a)));
    return true;
}

fn func_6(arg_0: Struct_1) -> vec3<u32> {
    var var_0 = abs(global0.a.x) >> u_input.a;
    if (false) {
    }
    var_0 = firstTrailingBit(global0.a.x) - (((1 | (global0.a.x * arg_0.a.x)) % global0.a.x) << u_input.a);
    global0 = Struct_1(countOneBits(-arg_0.a));
    for (var var_1 = -2147483648; true; var_1 += 1) {
        switch (-(-(~(-28124) % 52400))) {
            case -1: {
                global0 = Struct_1(arg_0.a);
                break;
            }
            case -2147483648: {
                continue;
            }
            case 0: {
                global0 = Struct_1(-(-min(global0.a, reverseBits(vec3<i32>(arg_0.a.x, global0.a.x, arg_0.a.x)))));
                let var_2 = global1[u_input.a | 33787u];
                continue;
            }
            default: {
                let var_2 = arg_0;
                let var_3 = Struct_1(arg_0.a - -vec3<i32>(1839 / arg_0.a.x, abs(var_2.a.x), -51693));
                var_1 = var_3.a.x;
            }
        }
        break;
    }
    return firstTrailingBit(abs(reverseBits(vec3<u32>(u_input.a, 32318u, u_input.a) - vec3<u32>(u_input.a, u_input.a, 42089u))));
}

fn func_7(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: vec3<u32>, arg_3: bool) -> f32 {
    global1 = array<Struct_1, 2>();
    var var_0 = global1[((func_6(global1[~32313u]).x ^ arg_2.x) >> 49419u) + ~(func_6(global1[firstTrailingBit(1u)]).x ^ arg_2.x)];
    for (var var_1: i32; var_1 >= 1; var_1 -= 1) {
        if (arg_3) {
            break;
        }
        let var_2 = reverseBits(abs(global0.a));
    }
    var_0 = global1[abs(abs(arg_2.x)) + u_input.a];
    loop {
        switch (arg_0.x) {
            case 1: {
                break;
            }
            case -1: {
                var var_1 = global1[38084u];
                let var_2 = floor(-(-564.0));
                let var_3 = !(!(!(!(!vec4<bool>(arg_3, arg_3, arg_3, true)))));
            }
            default: {
                let var_1 = -47051;
                global1 = array<Struct_1, 2>();
                global0 = Struct_1(var_0.a);
                let var_2 = abs(vec3<i32>(-1356, ~arg_1.x, 1));
            }
        }
        break;
    }
    return -503.0;
}

fn func_4() -> bool {
    if (func_5()) {
        return ((264.0 / (-206.0 * step(314.0, -523.0))) * func_7(vec4<i32>(1 - global0.a.x, global0.a.x, global0.a.x, global0.a.x), vec2<i32>(2147483647, -29277 >> 10836u), ~func_6(global1[55445u]), true)) >= -(-643.0);
    }
    let var_0 = vec2<u32>(0u, dot(countOneBits(abs(vec2<u32>(4294967295u, 60714u))) ^ ~countOneBits(vec2<u32>(u_input.a, 1u)), select(vec2<u32>(u_input.a + u_input.a, dot(vec4<u32>(u_input.a, 46996u, 1u, 0u), vec4<u32>(0u, 1928u, u_input.a, 28401u))), (vec2<u32>(53634u, 65597u) >> vec2<u32>(u_input.a, 24780u)) % (vec2<u32>(71052u, u_input.a) + vec2<u32>(62609u, u_input.a)), true)));
    switch (abs(countOneBits(global0.a.x))) {
        case 36990: {
            let var_1 = -vec2<f32>(-(1936.0 / (1109.0 - 896.0)), 601.0);
        }
        case 0: {
            switch (1) {
                default: {
                    global0 = Struct_1(max(vec3<i32>(global0.a.x, ~global0.a.x, select(firstLeadingBit(2147483647), select(global0.a.x, 2147483647, true), 1u <= 29726u)), vec3<i32>(-1859 & global0.a.x, global0.a.x & -3855, 0) >> vec3<u32>(0u, reverseBits(55492u), 1u)));
                    var var_1 = !false;
                    var var_2 = -7802;
                    global1 = array<Struct_1, 2>();
                    var var_3 = sign(-1657.0 * -143.0);
                }
            }
            global1 = array<Struct_1, 2>();
            return !((((var_0.x * u_input.a) - ~1u) - 85722u) <= max(var_0.x, ~var_0.x & ~u_input.a));
        }
        case 6911: {
            if (false) {
                var var_1 = global0.a.x;
                let var_2 = false;
                global0 = Struct_1(-(vec3<i32>(0, global0.a.x, global0.a.x) << vec3<u32>(0u, u_input.a, 19386u)) >> ~(vec3<u32>(1u, 4294967295u, 86395u) ^ vec3<u32>(var_0.x, u_input.a, 1u)));
                let var_3 = reverseBits(countOneBits(~vec4<u32>(u_input.a, 92071u, 159375u, 65254u)) & ~(~vec4<u32>(0u, u_input.a, var_0.x, 4294967295u))) >> ~firstLeadingBit(select(vec4<u32>(var_0.x, 1u, u_input.a, u_input.a) / vec4<u32>(var_0.x, var_0.x, 35040u, u_input.a), vec4<u32>(18850u, 4294967295u, var_0.x, var_0.x) - vec4<u32>(43336u, 37828u, u_input.a, 4294967295u), !vec4<bool>(var_2, false, true, false)));
                let var_4 = Struct_1(global0.a);
            }
        }
        case -12093: {
            loop {
                break;
            }
            switch (-883 << (var_0.x | 69625u)) {
                case 5309: {
                    let var_1 = ~vec4<u32>(0u, u_input.a, ~(20801u >> u_input.a) - ~var_0.x, dot(~vec2<u32>(var_0.x, 40971u), vec2<u32>(var_0.x & u_input.a, var_0.x << 962u)));
                    var var_2 = dot(countOneBits(select(~vec4<i32>(47110, global0.a.x, -26538, global0.a.x), vec4<i32>(global0.a.x, global0.a.x, -11078, global0.a.x) & vec4<i32>(-2147483648, 3915, 2147483647, 11007), true && false)), clamp(vec4<i32>(61656, global0.a.x, global0.a.x, global0.a.x), vec4<i32>(global0.a.x, 1, global0.a.x, 9171) | vec4<i32>(global0.a.x, global0.a.x, global0.a.x, global0.a.x), select(vec4<i32>(global0.a.x, -1, -14329, 4315), vec4<i32>(39458, global0.a.x, global0.a.x, global0.a.x), true)) + vec4<i32>(-29026, -24229, global0.a.x, global0.a.x / global0.a.x)) & ((firstTrailingBit(-1) / min(dot(vec4<i32>(2147483647, global0.a.x, global0.a.x, global0.a.x), vec4<i32>(2147483647, -1, global0.a.x, global0.a.x)), -(-3618))) | max(global0.a.x, global0.a.x));
                    global1 = array<Struct_1, 2>();
                    global1 = array<Struct_1, 2>();
                }
                default: {
                    var var_1 = (var_0.x * clamp(28199u, var_0.x, var_0.x)) | 1u;
                }
            }
            global1 = array<Struct_1, 2>();
            loop {
                return !(!false);
            }
        }
        default: {
        }
    }
    if (!(!(!false)) & (abs(dot(~vec3<i32>(25047, global0.a.x, global0.a.x), vec3<i32>(global0.a.x, -1, global0.a.x))) != -(dot(global0.a.xy, global0.a.yx) ^ max(global0.a.x, 14001)))) {
        let var_1 = 4294967295u - 0u;
        global0 = global1[~(dot(countOneBits(var_0) ^ (vec2<u32>(34675u, var_0.x) / var_0), var_0) >> ((var_0.x % var_1) & 25844u))];
        switch (global0.a.x & 54064) {
            case -39757: {
            }
            case 1: {
                var var_2 = (~firstTrailingBit(vec2<i32>(2147483647, 1)) ^ max(vec2<i32>(global0.a.x, 2147483647), vec2<i32>(global0.a.x, -global0.a.x))) ^ max(-vec2<i32>(global0.a.x, dot(vec3<i32>(global0.a.x, 10517, -27059), vec3<i32>(17022, global0.a.x, global0.a.x))), select(-(~vec2<i32>(global0.a.x, global0.a.x)), reverseBits(min(global0.a.yz, vec2<i32>(-13102, 1))), vec2<bool>(true, !false)));
                let var_3 = ~(~(~dot(vec2<u32>(u_input.a, u_input.a), vec2<u32>(135119u, 4294967295u))) * countOneBits(~var_1));
            }
            case 28042: {
                var var_2 = global1[dot(firstTrailingBit(~((vec3<u32>(var_1, var_0.x, 17274u) / vec3<u32>(4294967295u, 1u, 1u)) - ~vec3<u32>(1u, 2359u, 0u))), (countOneBits(vec3<u32>(4294967295u, 48108u, var_1)) * (reverseBits(vec3<u32>(u_input.a, var_0.x, 1u)) * (vec3<u32>(var_0.x, u_input.a, u_input.a) % vec3<u32>(u_input.a, 0u, u_input.a)))) % (countOneBits(vec3<u32>(37204u, 24477u, var_0.x) + vec3<u32>(var_1, var_0.x, u_input.a)) / (abs(vec3<u32>(var_1, 0u, 13198u)) % vec3<u32>(12644u, 1348u, 4772u))))];
            }
            case -9954: {
                return false;
            }
            default: {
                return true;
            }
        }
        for (var var_2: i32; true; var_2 += 1) {
            var var_3 = vec3<u32>(dot(vec4<u32>(var_1, u_input.a, dot(vec4<u32>(var_1, var_1, u_input.a, 28601u) * vec4<u32>(8890u, var_0.x, var_1, 30423u), reverseBits(vec4<u32>(var_0.x, var_1, u_input.a, 1u))), 0u - ~60208u), firstLeadingBit(~(~vec4<u32>(u_input.a, var_1, 0u, 4294967295u)))), ~min(var_0.x, 16661u), max(23410u, u_input.a) ^ 19019u);
            var var_4 = global1[1u + clamp(~dot(vec4<u32>(1u, 0u, 1u, 0u), vec4<u32>(83902u, 39466u, var_0.x, 37405u)) * ((var_0.x >> var_3.x) + select(66088u, 1u, false)), var_1, 57501u)];
            continue;
        }
    }
    global0 = global1[~(~(min(var_0.x << u_input.a, dot(var_0, vec2<u32>(0u, u_input.a))) | ~(~u_input.a)))];
    return any(select(select(!vec3<bool>(true, false, false), !vec3<bool>(true, false, false), !vec3<bool>(true, true, true)), vec3<bool>(!true, true, all(vec3<bool>(true, true, false))), !vec3<bool>(false, true, true))) | (min(815.0, trunc(-1057.0)) > (max(trunc(-264.0), 169.0) + (-496.0 - floor(672.0))));
}

fn func_3() -> Struct_1 {
    if (func_4()) {
        if (!all(!select(!vec4<bool>(false, true, true, true), !vec4<bool>(true, false, false, false), false == false))) {
            let var_0 = global1[u_input.a];
            global1 = array<Struct_1, 2>();
            var var_1 = global1[~u_input.a];
        }
        for (; ; ) {
            global0 = Struct_1(vec3<i32>(-1, -41001, -(global0.a.x % -1)));
        }
    }
    var var_0 = Struct_1(firstTrailingBit(vec3<i32>(dot(vec4<i32>(global0.a.x, global0.a.x, -1, global0.a.x), vec4<i32>(-26091, global0.a.x, global0.a.x, global0.a.x)), global0.a.x, ~(-3211)) - -vec3<i32>(-41521, global0.a.x, global0.a.x)));
    var var_1 = global0.a << ~(~vec3<u32>(1u & 20408u, u_input.a, reverseBits(u_input.a)));
    switch (dot(var_0.a.xy, vec2<i32>(dot(~var_0.a, var_0.a), var_1.x))) {
        default: {
            global0 = global1[countOneBits(clamp(0u, u_input.a, 1u))];
            let var_2 = vec3<i32>(dot(select(firstLeadingBit(-vec2<i32>(global0.a.x, 1506)), -abs(vec2<i32>(global0.a.x, -1)), !(!vec2<bool>(false, false))), ~var_0.a.xy | vec2<i32>(var_1.x - 49941, -var_0.a.x)), var_1.x, firstLeadingBit(0));
            for (var var_3 = 1; !all(select(select(vec3<bool>(false, false, false), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), !vec3<bool>(true, true, false)), !vec3<bool>(true, false, true), select(!vec3<bool>(false, true, false), !vec3<bool>(false, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false))))); global0 = Struct_1(~reverseBits(firstTrailingBit(vec3<i32>(var_1.x, global0.a.x, global0.a.x))))) {
                let var_4 = Struct_1(~max(countOneBits(vec3<i32>(0, var_2.x, var_0.a.x)), vec3<i32>(2147483647, -26502, 0) + var_2) ^ (~global0.a >> vec3<u32>(countOneBits(4294967295u), reverseBits(u_input.a), func_6(Struct_1(var_0.a)).x)));
                let var_5 = Struct_1(firstTrailingBit(var_2 & vec3<i32>(-(-2147483648), -1, clamp(var_4.a.x, var_1.x, 2147483647))));
                let var_6 = var_0.a.x;
            }
            let var_3 = global1[dot(vec3<u32>(u_input.a, u_input.a, u_input.a) << (vec3<u32>(firstLeadingBit(u_input.a), u_input.a ^ u_input.a, ~u_input.a) >> ~(vec3<u32>(u_input.a, 0u, 8317u) & vec3<u32>(974u, 37056u, 78703u))), select(firstLeadingBit(max(vec3<u32>(21679u, u_input.a, u_input.a) * vec3<u32>(0u, 17396u, u_input.a), min(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(26780u, u_input.a, u_input.a)))), select(min(vec3<u32>(u_input.a, 1u, 0u), vec3<u32>(u_input.a, 4294967295u, u_input.a)) & ~vec3<u32>(u_input.a, 2468u, 0u), ~(vec3<u32>(4294967295u, u_input.a, u_input.a) - vec3<u32>(78912u, u_input.a, u_input.a)), !false && all(vec3<bool>(false, false, true))), true))];
            var var_4 = -(-(-vec2<f32>(218.0, 278.0) - vec2<f32>(817.0, 108.0)) / ((trunc(vec2<f32>(-661.0, 1688.0)) / -vec2<f32>(647.0, 961.0)) - -vec2<f32>(-247.0, 2297.0)));
        }
    }
    if (all(vec3<bool>(true, !true, all(select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), !vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, false), true)))))) {
        loop {
            let var_2 = select(vec2<i32>(-1, dot(vec2<i32>(-30292, var_0.a.x), vec2<i32>(~(-2147483648), var_0.a.x))), firstLeadingBit(~vec2<i32>(~var_1.x, ~global0.a.x)), vec2<bool>((~var_1.x * abs(2147483647)) != (~var_1.x ^ countOneBits(global0.a.x)), (-1032.0 == -1803.0) && any(!vec4<bool>(true, false, true, true))));
            var var_3 = min(~(-24509), -(-(firstLeadingBit(-34657) << ~u_input.a)));
        }
    }
    return global1[0u];
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<f32>) -> vec4<i32> {
    var var_0 = func_3();
    loop {
        let var_1 = arg_3.x;
        switch (~(28671 * ~(-33115))) {
            case -1: {
                global1 = array<Struct_1, 2>();
            }
            case 25771: {
                let var_2 = !vec4<bool>(arg_0.x && arg_0.x, (-(-2147483648) % var_0.a.x) > (-26676 | (8248 ^ global0.a.x)), false, false);
            }
            case -2147483648: {
                global1 = array<Struct_1, 2>();
                break;
            }
            case 1: {
                continue;
            }
            default: {
            }
        }
        var var_2 = Struct_1(reverseBits(-(~(vec3<i32>(-2147483648, var_0.a.x, arg_2.a.x) ^ global0.a))));
        var var_3 = var_1;
    }
    var var_1 = vec3<bool>(select(true, min(u_input.a * 19623u, countOneBits(4294967295u)) == 4294967295u, false), select((u_input.a <= reverseBits(45739u)) || !(!arg_0.x), all(vec4<bool>(false, select(true, false, arg_0.x), true, var_0.a.x == arg_1.a.x)), arg_0.x), true);
    for (var var_2 = -3216; ; global1 = array<Struct_1, 2>()) {
    }
    var var_2 = arg_2;
    return vec4<i32>(-19727 * ~countOneBits(arg_2.a.x), -61035, (((12358 * arg_1.a.x) >> min(1u, 4294967295u)) - ~6461) % arg_1.a.x, 22741);
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: u32) -> vec4<i32> {
    let var_0 = -57143;
    return clamp(vec4<i32>(var_0, 1, clamp(var_0 >> (13866u << arg_3), arg_1.a.x | var_0, 52315), global0.a.x), countOneBits(select(~vec4<i32>(var_0, 1, var_0, 2147483647) / func_2(vec4<bool>(arg_0, true, true, arg_0), Struct_1(vec3<i32>(9543, arg_1.a.x, var_0)), Struct_1(global0.a), vec3<f32>(-1579.0, -2666.0, 1784.0)), vec4<i32>(~arg_1.a.x, firstTrailingBit(global0.a.x), var_0 * arg_1.a.x, arg_1.a.x), vec4<bool>(!false, arg_2.x, !arg_2.x, all(vec3<bool>(true, arg_2.x, arg_2.x))))), ~(select(vec4<i32>(global0.a.x, var_0, -14199, 1) | vec4<i32>(global0.a.x, -63966, 2147483647, global0.a.x), vec4<i32>(var_0, 0, 1, 429), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, true)) - ~(vec4<i32>(32106, 30757, 25069, 45747) - vec4<i32>(global0.a.x, 4802, -7248, var_0))));
}

fn func_8(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec2<bool>) -> StorageBuffer {
    var var_0 = Struct_1(vec3<i32>(~(~dot(arg_0.zz, vec2<i32>(global0.a.x, 2147483647))), -2147483648, reverseBits(0)));
    loop {
        var_0 = global1[~(~6631u & (((u_input.a >> u_input.a) % u_input.a) | 0u))];
        var_0 = Struct_1(-vec3<i32>(func_1(arg_3.x || arg_3.x, func_3(), !vec3<bool>(arg_3.x, true, false), u_input.a).x, global0.a.x, ~min(global0.a.x, 20880)));
        for (var var_1 = 34898; firstTrailingBit(~u_input.a) < u_input.a; var_1 -= 1) {
            var var_2 = u_input.a;
            return StorageBuffer(-(-vec4<f32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x) - ((vec4<f32>(-622.0, -1317.0, -251.0, 843.0) + vec4<f32>(622.0, arg_2.x, arg_2.x, -439.0)) - (vec4<f32>(-545.0, arg_2.x, arg_2.x, arg_2.x) - vec4<f32>(arg_2.x, -1362.0, 1238.0, arg_2.x)))), ~abs(vec2<u32>(~45264u, ~0u)));
        }
        loop {
            return StorageBuffer((max(-vec4<f32>(arg_2.x, -847.0, 788.0, -735.0), vec4<f32>(-187.0, arg_2.x, 1337.0, arg_2.x) + vec4<f32>(arg_2.x, arg_2.x, 582.0, -580.0)) * -(-vec4<f32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x))) + -(-(vec4<f32>(-869.0, arg_2.x, -873.0, -1548.0) * vec4<f32>(1000.0, -823.0, arg_2.x, -1504.0))), reverseBits(~vec2<u32>(countOneBits(2607u), ~9847u)));
        }
        var var_1 = select((~select(vec4<u32>(39457u, 10494u, 53763u, 0u), vec4<u32>(0u, 11906u, 1u, 4294967295u), vec4<bool>(arg_3.x, false, true, arg_3.x)) / min(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), ~vec4<u32>(u_input.a, 0u, 0u, 15120u))) ^ (~firstTrailingBit(vec4<u32>(4294967295u, u_input.a, u_input.a, 55972u)) >> (vec4<u32>(17214u, u_input.a, 4294967295u, u_input.a) % (vec4<u32>(4294967295u, u_input.a, 13207u, 42741u) >> vec4<u32>(1u, u_input.a, 8073u, u_input.a)))), vec4<u32>(1271u, firstTrailingBit(~u_input.a), ~(34247u >> 101378u), u_input.a) << ~(~vec4<u32>(u_input.a, 15803u, 34408u, 1u)), vec4<bool>(max(u_input.a / u_input.a, 53016u >> u_input.a) < countOneBits(0u), arg_3.x | !true, true, false && !func_4()));
    }
    global0 = func_3();
    global1 = array<Struct_1, 2>();
    var_0 = func_3();
    return StorageBuffer(vec4<f32>(func_7(vec4<i32>(var_0.a.x, -12638, -82330, 54142) % arg_0, vec2<i32>(-46256, 0), select(vec3<u32>(3669u, 4294967295u, 4294967295u), vec3<u32>(106652u, 1u, u_input.a), true), arg_3.x) - (-350.0 / -(-775.0)), -(-(-320.0)), -sign(-(-343.0)), -min(-(-1230.0), -arg_2.x)), ~(~(vec2<u32>(u_input.a, 1u) & vec2<u32>(u_input.a, u_input.a)) / ~firstLeadingBit(vec2<u32>(0u, 18859u))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_8(firstTrailingBit(~(~func_1(false, global1[u_input.a], vec3<bool>(true, false, false), u_input.a))), global1[u_input.a & u_input.a], round(vec3<f32>(-select(-1703.0, 380.0, true), max(342.0 - -1435.0, -532.0), exp2(-(-715.0)))), !(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), true), !vec2<bool>(true, true))));
}

