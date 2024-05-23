// {"0:0":[28,28,136,151,201,205,208,159,167,102,4,197,88,133,5,25,181,85,5,114,248,67,89,137,190,51,68,234,216,228,221,73,183,4,6,198,173,242,109,167,154,131,75,169,116,7,253,161]}
// Seed: 1054229664375294980

struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_6(arg_0: Struct_4) -> bool {
    switch (select(u_input.e, u_input.d, !all(vec2<bool>(false || false, !false)))) {
        case 65710: {
            for (var var_0 = -2147483648; var_0 >= 19485; var_0 -= 1) {
                let var_1 = Struct_3(u_input.a.wxz, Struct_2(~abs(4294967295u) > arg_0.a.b.x, arg_0.a.b, arg_0.a), -(~(~(~u_input.a.xy))), vec4<u32>(arg_0.a.b.x, arg_0.a.b.x, arg_0.a.b.x & (arg_0.a.b.x % arg_0.a.b.x), 24756u) - vec4<u32>(0u, countOneBits(arg_0.a.b.x), firstTrailingBit(arg_0.a.b.x), 4294967295u ^ (arg_0.a.b.x ^ 1u)));
                var_0 = reverseBits(u_input.d);
            }
            let var_0 = -firstLeadingBit(arg_0.a.c) != -(~arg_0.a.c);
            var var_1 = -1586.0 - -1431.0;
            var_1 = -348.0;
            if (false) {
                let var_2 = Struct_1(1825.0, arg_0.a.b, dot(u_input.a, u_input.a) & 25663);
                let var_3 = var_0;
                var_1 = -598.0 - arg_0.a.a;
                return false;
            }
        }
        case 76451: {
            loop {
                break;
            }
            var var_0 = exp2(floor(vec3<f32>(arg_0.a.a, -arg_0.a.a, -1314.0 - -1151.0))) + -(-(vec3<f32>(arg_0.a.a, arg_0.a.a, -355.0) - (vec3<f32>(arg_0.a.a, -767.0, arg_0.a.a) / vec3<f32>(arg_0.a.a, 283.0, arg_0.a.a))));
        }
        case -2147483648: {
            let var_0 = Struct_3(-u_input.b.xyx, Struct_2(false, arg_0.a.b, arg_0.a), u_input.b.yy, vec4<u32>(~(~(~15788u)), ~firstTrailingBit(~52926u), arg_0.a.b.x, arg_0.a.b.x));
            var var_1 = select(vec4<bool>(var_0.b.a, var_0.b.a, var_0.b.a, !true), select(vec4<bool>(!(!true), false, -1 > (arg_0.a.c % arg_0.a.c), !var_0.b.a && var_0.b.a), select(vec4<bool>(!var_0.b.a, all(vec3<bool>(var_0.b.a, var_0.b.a, false)), var_0.b.a || false, !var_0.b.a), vec4<bool>(false, any(vec4<bool>(var_0.b.a, var_0.b.a, var_0.b.a, var_0.b.a)), var_0.b.a == false, any(vec2<bool>(true, false))), var_0.b.a), any(!vec4<bool>(var_0.b.a, false, true, var_0.b.a))), all(!select(select(vec3<bool>(false, true, var_0.b.a), vec3<bool>(var_0.b.a, false, false), vec3<bool>(true, var_0.b.a, var_0.b.a)), !vec3<bool>(true, var_0.b.a, var_0.b.a), false)));
            return !var_1.x;
        }
        default: {
            if (any(vec2<bool>(any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), false)) || false, false))) {
                let var_0 = round(arg_0.a.a);
            }
            let var_0 = ceil(vec3<f32>(200.0, -(-624.0), -arg_0.a.a)) / vec3<f32>(arg_0.a.a, round(-1057.0), 1478.0 - -(-arg_0.a.a));
            var var_1 = 1334.0;
            let var_2 = 4294967295u;
            var var_3 = !(!(~0u <= (52657u - var_2))) == !(!true & !(!false));
        }
    }
    if (false && !(!all(!vec2<bool>(true, false)))) {
        loop {
            var var_0 = -1 & min(~reverseBits(35781) - arg_0.a.c, 22377 >> 1u);
            var var_1 = arg_0.a;
            var var_2 = false;
            var var_3 = reverseBits(-u_input.a.xy);
            var_1 = arg_0.a;
        }
    }
    if (0 > 0) {
        let var_0 = 41036;
        var var_1 = !select(select(!vec4<bool>(true, true, false, false), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true)), !vec4<bool>(false, false, false, true), !vec4<bool>(true, false, true, true)), vec4<bool>(true, all(vec4<bool>(false, true, true, false)), false, !false)), vec4<bool>(true, !(true || true), !false | (39385u < 4294967295u), true), select(vec4<bool>(arg_0.a.b.x <= 55677u, !true, true, !false), select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), false), vec4<bool>(false, false, true, false)), vec4<bool>(true || true, all(vec4<bool>(false, false, false, true)), false, false)));
        switch (-6244 << ~12169u) {
            case 0: {
                let var_2 = vec4<bool>(true, var_1.x, !(!var_1.x), all(vec4<bool>(false, true, select(arg_0.a.b.x == 47611u, var_1.x, any(vec2<bool>(true, false))), !var_1.x)));
                var var_3 = abs(select(var_0 % (reverseBits(1) / -u_input.c), dot(abs(u_input.b.yz / vec2<i32>(arg_0.a.c, var_0)), -vec2<i32>(u_input.c, -1) ^ u_input.a.zx), ((true && var_2.x) & !var_2.x) || !true));
                let var_4 = sign(-arg_0.a.a);
                var_3 = ~(-2147483648);
            }
            case -2147483648: {
                var var_2 = ~arg_0.a.b;
                var_1 = vec4<bool>(select(var_1.x, var_1.x, !(arg_0.a.a > arg_0.a.a)), (21370u > arg_0.a.b.x) && false, !var_1.x, step(arg_0.a.a, arg_0.a.a / -(-978.0)) <= arg_0.a.a);
                var var_3 = vec4<i32>((var_0 % 2147483647) & (var_0 & (arg_0.a.c / var_0)), -1, -var_0 % 7785, 2147483647) >> vec4<u32>(abs(arg_0.a.b.x), arg_0.a.b.x, min((arg_0.a.b.x ^ var_2.x) / arg_0.a.b.x, 1u), 4294967295u);
                var var_4 = var_2.x;
            }
            case 2147483647: {
                let var_2 = arg_0;
                let var_3 = arg_0.a;
                let var_4 = vec4<u32>(arg_0.a.b.x << 4294967295u, 68738u, reverseBits(~dot(min(var_3.b.xz, vec2<u32>(75974u, 0u)), var_3.b.zz << arg_0.a.b.yy)), 0u);
                let var_5 = (clamp(clamp(var_4, vec4<u32>(var_2.a.b.x, var_3.b.x, 4294967295u, 69513u), vec4<u32>(arg_0.a.b.x, 88058u, var_3.b.x, arg_0.a.b.x) + var_4), var_4 / reverseBits(vec4<u32>(4294967295u, 1u, 22660u, var_3.b.x)), ~vec4<u32>(1u, arg_0.a.b.x, arg_0.a.b.x, var_2.a.b.x) - ~vec4<u32>(var_4.x, 4294967295u, var_3.b.x, 7407u)) | vec4<u32>(1u, ~abs(arg_0.a.b.x), arg_0.a.b.x, ~var_3.b.x ^ max(var_4.x, var_4.x))) & vec4<u32>(var_4.x, arg_0.a.b.x, var_4.x, var_4.x & max(0u, 69273u * 6016u));
            }
            case -19390: {
                var var_2 = Struct_3(~vec3<i32>((-50083 * arg_0.a.c) & firstTrailingBit(var_0), min(u_input.b.x, arg_0.a.c >> 1u), abs(var_0)), Struct_2(true, ~vec3<u32>(90975u, ~4294967295u, ~arg_0.a.b.x), Struct_1(select(arg_0.a.a, -1094.0, true) / floor(arg_0.a.a), arg_0.a.b >> ~vec3<u32>(arg_0.a.b.x, 27166u, arg_0.a.b.x), u_input.a.x)), select(vec2<i32>(u_input.c, -27159 | -var_0), vec2<i32>(u_input.b.x ^ -(-2147483648), reverseBits(arg_0.a.c) & u_input.a.x), false), firstLeadingBit(~(vec4<u32>(4294967295u, 0u, 1u, arg_0.a.b.x) ^ ~vec4<u32>(arg_0.a.b.x, arg_0.a.b.x, 75753u, 1u))));
                var var_3 = Struct_1(var_2.b.c.a, abs(arg_0.a.b << var_2.d.wwz) | clamp(vec3<u32>(max(48336u, 0u), var_2.b.c.b.x, clamp(0u, 4294967295u, arg_0.a.b.x)), ~vec3<u32>(arg_0.a.b.x, 4294967295u, 25080u), firstTrailingBit(vec3<u32>(0u, 0u, 4294967295u))), -max(u_input.d, ~(~1)));
                let var_4 = Struct_4(Struct_1(floor(-arg_0.a.a * (387.0 / 960.0)), countOneBits(var_2.b.c.b), -36523));
                var_3 = var_4.a;
            }
            default: {
                var var_2 = arg_0.a;
                var_1 = vec4<bool>(true, (var_1.x | (~1 == ~arg_0.a.c)) && any(!vec4<bool>(true, false, var_1.x, var_1.x)), !all(!select(vec3<bool>(var_1.x, true, false), vec3<bool>(true, var_1.x, var_1.x), true)), var_2.b.x >= (arg_0.a.b.x ^ (0u + (0u * var_2.b.x))));
            }
        }
        var var_2 = arg_0.a.b.x;
    }
    switch (-(-(abs(arg_0.a.c) / arg_0.a.c) ^ (-1 - arg_0.a.c))) {
        default: {
        }
    }
    switch (~(-(~(-49953) | max(13511, -30958)))) {
        case 1: {
        }
        case 2147483647: {
            var var_0 = 613.0;
            loop {
                let var_1 = Struct_3(max(u_input.a.zwx, u_input.b.wyz), Struct_2(all(vec3<bool>(true, arg_0.a.b.x == arg_0.a.b.x, all(vec3<bool>(false, false, true)))), arg_0.a.b, Struct_1(arg_0.a.a, min(arg_0.a.b, min(arg_0.a.b, arg_0.a.b)), select(u_input.a.x >> arg_0.a.b.x, u_input.b.x - -2147483648, false))), u_input.b.wy, ~(~vec4<u32>(1u, abs(arg_0.a.b.x), clamp(arg_0.a.b.x, arg_0.a.b.x, 61285u), abs(28338u))));
                continue;
            }
            let var_1 = u_input.a.x;
            var var_2 = true;
            var var_3 = vec2<i32>(u_input.e & (~0 | 22501), 25217 % 0);
        }
        default: {
        }
    }
    return !all(select(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true)), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), false), vec4<bool>(false, false, false, true)), select(!vec4<bool>(false, false, false, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, false, true, true)), all(vec4<bool>(false, true, false, false))));
}

fn func_7(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: u32, arg_3: Struct_4) -> bool {
    switch (clamp(arg_0.c.c, -((arg_3.a.c / -26063) / (arg_0.c.c + ~70253)), dot(abs(~u_input.a.xww) - max(vec3<i32>(-1, arg_3.a.c, 0), vec3<i32>(1, u_input.e, -14125)), clamp(vec3<i32>(10047, arg_0.c.c, u_input.c) * vec3<i32>(u_input.c, arg_3.a.c, 25295), -select(u_input.b.wxx, vec3<i32>(u_input.a.x, u_input.a.x, -30519), arg_0.a), u_input.b.zyz)))) {
        case -1: {
            return arg_2 <= (select(arg_0.c.b.x, (1u % arg_3.a.b.x) >> (4294967295u / 4294967295u), !(-1 == u_input.d)) * 1u);
        }
        case -2147483648: {
            for (var var_0 = reverseBits(-(2147483647 & -(-12579))) << ~59622u; !all(!select(select(vec2<bool>(arg_0.a, false), vec2<bool>(false, false), false), !vec2<bool>(arg_0.a, true), select(vec2<bool>(false, true), vec2<bool>(true, arg_0.a), vec2<bool>(true, arg_0.a)))); var_0 += 1) {
                let var_1 = ~(((~(-13685) << max(arg_2, arg_3.a.b.x)) ^ reverseBits(-31517 - -13634)) & u_input.d);
            }
            var var_0 = 38289u;
            switch (abs(~(-12654))) {
                case 2147483647: {
                    let var_1 = !(!arg_0.a);
                    var_0 = clamp(~select(min(abs(12882u), arg_1.x), arg_3.a.b.x, true), 4294967295u, dot(arg_0.b, vec3<u32>(~3593u, 1u, arg_0.c.b.x)) ^ arg_0.c.b.x);
                    var_0 = ~(~(~4294967295u << ~4294967295u) + (1u / 24964u));
                }
                default: {
                    let var_1 = any(!vec2<bool>((arg_0.a || false) || arg_0.a, false));
                }
            }
            for (var var_1 = -4930; var_1 <= 1; var_0 = 1u) {
                var var_2 = Struct_1(-251.0, vec3<u32>(abs(arg_0.c.b.x) ^ arg_2, 0u, ~1u), -(arg_3.a.c / 17667) | -clamp(-18640 / 1, -u_input.d, abs(-9228)));
                let var_3 = !vec3<bool>(select(true, false, any(!vec4<bool>(arg_0.a, arg_0.a, true, false))), true, arg_0.a);
            }
            let var_1 = arg_3;
        }
        case 1: {
            let var_0 = !select(!vec3<bool>(!arg_0.a, arg_0.a, select(arg_0.a, arg_0.a, true)), !select(select(vec3<bool>(arg_0.a, arg_0.a, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), vec3<bool>(true, arg_0.a, true), !true), select(!vec3<bool>(arg_0.a, true, arg_0.a), select(vec3<bool>(arg_0.a, true, false), !vec3<bool>(true, arg_0.a, true), u_input.d == -19904), select(select(vec3<bool>(arg_0.a, arg_0.a, true), vec3<bool>(true, true, true), arg_0.a), vec3<bool>(true, arg_0.a, true), select(vec3<bool>(true, true, arg_0.a), vec3<bool>(false, true, arg_0.a), false))));
        }
        case 14003: {
            loop {
                break;
            }
            return any(vec2<bool>(false, false == all(!vec4<bool>(false, false, arg_0.a, false))));
        }
        default: {
        }
    }
    loop {
        let var_0 = arg_3.a;
        for (var var_1 = -2147483648; var_1 <= -1; var_1 -= 1) {
            continue;
        }
        if (false) {
            break;
        }
    }
    if (0u > ~(0u | 51402u)) {
        var var_0 = vec2<i32>(10982, dot(-select(u_input.b.zwz, firstTrailingBit(u_input.b.wxw), select(vec3<bool>(false, arg_0.a, true), vec3<bool>(arg_0.a, false, arg_0.a), vec3<bool>(arg_0.a, arg_0.a, arg_0.a))), vec3<i32>(dot(vec4<i32>(0, -1, -1, arg_3.a.c), u_input.b), 15439, ~countOneBits(-52895))));
        if (false) {
            var_0 = vec2<i32>(reverseBits(47495), -select(~min(2147483647, u_input.e), -224, arg_0.a));
            let var_1 = arg_3.a.b.zy;
            let var_2 = arg_2;
            var var_3 = Struct_4(arg_3.a);
        }
        for (var var_1: i32; var_1 == 34104; var_1 -= 1) {
            var var_2 = dot(vec2<u32>(~arg_0.b.x, 0u & (arg_3.a.b.x << (56598u / arg_3.a.b.x))), countOneBits(arg_1));
            let var_3 = Struct_4(Struct_1(arg_3.a.a, arg_0.c.b, 8514 - reverseBits(1)));
            var_0 = vec2<i32>(~dot(~vec3<i32>(0, u_input.c, 2147483647) + ~vec3<i32>(1, u_input.b.x, arg_0.c.c), ~u_input.a.www), countOneBits(-2147483647));
            var_1 = select(2388, reverseBits(-(~arg_0.c.c)), !(((arg_3.a.b.x << arg_0.c.b.x) * ~arg_3.a.b.x) > arg_1.x));
        }
    }
    loop {
        var var_0 = Struct_2(all(vec4<bool>(true, any(vec2<bool>(arg_0.a, arg_0.a)), any(!vec2<bool>(false, true)), abs(arg_2) < arg_1.x)), arg_0.c.b, Struct_1(max(-960.0, select(-509.0 * 540.0, select(arg_0.c.a, arg_0.c.a, arg_0.a), true)), abs(vec3<u32>(arg_1.x, arg_0.b.x, arg_3.a.b.x) >> arg_3.a.b), (38829 % arg_0.c.c) ^ -(-arg_3.a.c)));
    }
    var var_0 = max(select(vec3<f32>(arg_3.a.a - arg_0.c.a, -(-1363.0), -684.0), vec3<f32>(-480.0 * -625.0, -arg_3.a.a, 656.0), !true) - -(-(-vec3<f32>(304.0, -1025.0, 212.0))), exp2(vec3<f32>((-775.0 - -119.0) * -(-625.0), arg_0.c.a, 1376.0)));
    return false;
}

fn func_5() -> Struct_4 {
    var var_0 = 39327u;
    loop {
        if (func_7(Struct_2(func_6(Struct_4(Struct_1(-721.0, vec3<u32>(0u, 1u, 51497u), u_input.e))), (select(vec3<u32>(84969u, 1u, 19770u), vec3<u32>(68944u, 23057u, 10759u), false) % vec3<u32>(80883u, 23800u, 13821u)) >> ~(vec3<u32>(52259u, 9872u, 4294967295u) >> vec3<u32>(64189u, 4294967295u, 4294967295u)), Struct_1(exp2(-(-1000.0)), vec3<u32>(44604u, 0u, 23160u) - select(vec3<u32>(66533u, 4294967295u, 0u), vec3<u32>(1u, 66805u, 0u), vec3<bool>(true, false, true)), u_input.d)), abs(vec2<u32>(0u, ~4294967295u)), ~(1u - countOneBits(1u)), Struct_4(Struct_1(2319.0, ~vec3<u32>(1u, 1954u, 49295u) ^ ~vec3<u32>(33415u, 0u, 14361u), -51509 ^ u_input.a.x)))) {
            let var_1 = vec4<bool>(all(vec4<bool>(!true, !any(vec3<bool>(false, false, true)), false, false)), u_input.a.x > u_input.a.x, all(vec2<bool>(false, !all(vec4<bool>(true, true, true, false)))), any(!select(vec4<bool>(true, true, false, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true)), any(vec3<bool>(false, false, false)))));
        }
        let var_1 = false;
        for (var var_2 = -1; var_2 <= -41166; var_2 -= 1) {
            var_2 = ~u_input.b.x;
        }
        continue;
    }
    let var_1 = Struct_1(-(-sign(-1460.0) - (-(-214.0) / (1000.0 + 132.0))), vec3<u32>(reverseBits(10260u), 24322u, 4294967295u), u_input.b.x);
    let var_2 = -22061;
    let var_3 = select(select(!vec4<bool>(func_6(Struct_4(Struct_1(-1187.0, vec3<u32>(var_1.b.x, 1u, 1u), var_1.c))), true & false, false | false, false | false), vec4<bool>(!false && (false | true), !all(vec2<bool>(false, true)), ~var_1.b.x == ~5249u, true), true), !(!vec4<bool>(true, -1 < -18413, true, func_6(Struct_4(Struct_1(-377.0, var_1.b, u_input.c))))), select(select(select(!vec4<bool>(false, false, false, true), !vec4<bool>(false, false, true, false), !vec4<bool>(true, false, true, true)), select(!vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), !vec4<bool>(false, false, true, true)), !(!vec4<bool>(true, false, true, true))), !vec4<bool>(func_6(Struct_4(var_1)), false, any(vec3<bool>(true, true, true)), true && true), !vec4<bool>(true, all(vec3<bool>(true, false, true)), var_2 <= 2147483647, !false)));
    return Struct_4(var_1);
}

fn func_8(arg_0: Struct_4) -> f32 {
    var var_0 = Struct_2(all(vec4<bool>(!all(vec4<bool>(false, true, false, false)), (true | false) && (arg_0.a.c < 0), !false, !true)), vec3<u32>(countOneBits((arg_0.a.b.x % arg_0.a.b.x) / arg_0.a.b.x), arg_0.a.b.x, 27130u), func_5().a);
    if (all(select(!vec3<bool>(!true, func_6(arg_0), all(vec3<bool>(false, var_0.a, false))), !(!vec3<bool>(var_0.a, var_0.a, true)), true))) {
    }
    var var_1 = vec4<u32>(var_0.b.x, firstTrailingBit(~dot(var_0.b.xx - vec2<u32>(27561u, var_0.c.b.x), var_0.c.b.xx * arg_0.a.b.xy)), ~(var_0.c.b.x ^ (~arg_0.a.b.x >> dot(arg_0.a.b.yz, var_0.b.xx))), min(var_0.c.b.x, func_5().a.b.x));
    var var_2 = u_input.a;
    let var_3 = func_5().a;
    return var_3.a;
}

fn func_9(arg_0: f32, arg_1: f32) -> vec4<u32> {
    if (any(!vec4<bool>(!(!true), func_7(Struct_2(false, vec3<u32>(10862u, 47992u, 15939u), Struct_1(arg_1, vec3<u32>(1u, 22556u, 16395u), -21517)), vec2<u32>(1u, 1u), ~4294967295u, Struct_4(Struct_1(611.0, vec3<u32>(12823u, 44858u, 22724u), 15585))), all(!vec4<bool>(false, true, true, false)), func_7(Struct_2(true, vec3<u32>(9971u, 34904u, 27275u), Struct_1(-1000.0, vec3<u32>(50273u, 1u, 4294967295u), u_input.a.x)), firstTrailingBit(vec2<u32>(1u, 23204u)), 63112u << 16315u, Struct_4(Struct_1(-138.0, vec3<u32>(18536u, 110841u, 60691u), 14238)))))) {
        let var_0 = Struct_3(u_input.b.wyw, Struct_2(func_7(Struct_2(!false, ~vec3<u32>(32160u, 11016u, 41083u), Struct_1(-532.0, vec3<u32>(4294967295u, 0u, 33533u), u_input.e)), select(vec2<u32>(0u, 49976u) * vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 4294967295u), 692.0 <= arg_0), dot(vec2<u32>(22245u, 20060u), vec2<u32>(8835u, 4294967295u)) | (3567u % 1u), func_5()), countOneBits(vec3<u32>(24138u, ~46675u, 0u + 0u)), Struct_1(arg_1, max(max(vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(47685u, 0u, 1u)), ~vec3<u32>(0u, 461u, 33829u)), -2147483648)), vec2<i32>(~41026, ~(~1) - (dot(u_input.a, u_input.b) - 0)), abs(firstLeadingBit(vec4<u32>(0u, 1u, 24034u, 0u) | ~vec4<u32>(4294967295u, 0u, 16198u, 0u))));
        if (!var_0.b.a) {
            let var_1 = !(!(!select(!vec3<bool>(false, var_0.b.a, var_0.b.a), select(vec3<bool>(false, false, var_0.b.a), vec3<bool>(false, true, var_0.b.a), vec3<bool>(var_0.b.a, var_0.b.a, var_0.b.a)), var_0.b.a)));
        }
        if (var_0.b.a) {
            let var_1 = (min((vec4<i32>(u_input.e, var_0.b.c.c, var_0.a.x, 2147483647) * u_input.a) | u_input.a, -u_input.a) * vec4<i32>(var_0.c.x >> (var_0.d.x & var_0.b.c.b.x), u_input.b.x, -(-36313), -69142 << 4294967295u)) & (u_input.b * (((vec4<i32>(var_0.a.x, -8256, 2147483647, u_input.c) << vec4<u32>(1u, 1u, 1u, var_0.d.x)) * firstLeadingBit(u_input.b)) | ~vec4<i32>(30998, -1, u_input.d, -19497)));
            let var_2 = abs(~(~(~var_0.d.x)));
            var var_3 = ~(~(~vec3<u32>(var_0.b.c.b.x, 0u, var_2))) % var_0.b.b;
            var var_4 = -vec4<f32>(var_0.b.c.a, -func_8(func_5()), (-var_0.b.c.a * var_0.b.c.a) * -133.0, arg_1 / -(-177.0 * -196.0));
            var var_5 = var_0.a;
        }
    }
    let var_0 = max(~clamp(clamp(0u, 8693u, 1139u), 1u % 40360u, 5652u), dot(vec2<u32>(~9841u, dot(vec4<u32>(63396u, 14467u, 10706u, 72011u), vec4<u32>(24537u, 0u, 0u, 60209u))), ~vec2<u32>(1u, 41370u))) - abs(~select(1u & 4294967295u, firstLeadingBit(1u), all(vec3<bool>(false, true, true))));
    let var_1 = vec3<bool>(select(!func_6(Struct_4(Struct_1(arg_0, vec3<u32>(var_0, var_0, 111020u), u_input.b.x))), false, !all(vec2<bool>(false, false))), !all(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true)), !vec4<bool>(true, true, false, false))), true);
    var var_2 = dot(select(~vec3<u32>(~var_0, 9548u, 4294967295u + var_0), vec3<u32>(var_0, ~var_0, dot(vec3<u32>(53450u, 35566u, var_0), vec3<u32>(17909u, var_0, var_0)) + 0u), vec3<bool>(all(var_1), (arg_0 < -2014.0) | var_1.x, var_1.x)), abs(vec3<u32>(~4294967295u, var_0 - var_0, select(var_0, 63614u, false))) << firstTrailingBit(vec3<u32>(~0u, var_0, var_0)));
    switch (min(func_5().a.c, u_input.b.x)) {
        default: {
            var_2 = dot(select(~(~(~vec4<u32>(var_0, var_0, var_0, var_0))), ~select(vec4<u32>(1u, 1u, var_0, var_0), vec4<u32>(4294967295u, var_0, 98039u, var_0), vec4<bool>(true, true, var_1.x, true)) * ~(~vec4<u32>(var_0, var_0, 28140u, 4294967295u)), select(vec4<bool>(true, any(var_1), var_1.x, var_1.x), vec4<bool>(var_0 >= var_0, false, var_1.x, 1000.0 < arg_0), !false)), vec4<u32>(var_0, ~func_5().a.b.x << var_0, var_0, 4294967295u));
            let var_3 = -14473;
        }
    }
    return reverseBits(vec4<u32>(countOneBits(var_0), var_0 >> var_0, var_0 + ~var_0, ~(1u + var_0)) - (select(max(vec4<u32>(4294967295u, 33670u, 26100u, 47054u), vec4<u32>(48336u, 4294967295u, 0u, 30069u)), vec4<u32>(54459u, var_0, 1u, 552u) - vec4<u32>(var_0, var_0, var_0, 1u), !var_1.x) / ~(~vec4<u32>(7900u, var_0, 27238u, var_0))));
}

fn func_10(arg_0: vec4<u32>, arg_1: u32, arg_2: i32) -> Struct_4 {
    var var_0 = func_5();
    var_0 = func_5();
    if (all(!select(!(!vec2<bool>(true, true)), !(!vec2<bool>(false, true)), (var_0.a.a + -1000.0) == -1206.0))) {
    }
    var var_1 = func_5();
    let var_2 = vec2<bool>(any(select(!vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false)))) | ((false || !true) & any(!vec3<bool>(false, true, true))), true);
    return Struct_4(var_0.a);
}

fn func_4(arg_0: Struct_3) -> u32 {
    var var_0 = Struct_4(arg_0.b.c);
    loop {
        var_0 = func_10(func_9(-826.0, (-1004.0 - -2843.0) * func_8(func_5())), arg_0.d.x, ~(select(-15511, var_0.a.c, true) + arg_0.c.x));
        switch (-2147483648) {
            case 1: {
                return ~(~(~(arg_0.d.x | var_0.a.b.x)) ^ ~25070u);
            }
            default: {
                var_0 = func_10(arg_0.d, 32851u, -43114);
                var_0 = Struct_4(func_10(select(select(arg_0.d, arg_0.d, !arg_0.b.a), vec4<u32>(var_0.a.b.x, ~arg_0.b.c.b.x, dot(vec4<u32>(var_0.a.b.x, var_0.a.b.x, var_0.a.b.x, 0u), arg_0.d), 43285u), select(select(vec4<bool>(arg_0.b.a, true, arg_0.b.a, true), vec4<bool>(arg_0.b.a, true, false, arg_0.b.a), vec4<bool>(true, arg_0.b.a, true, true)), select(vec4<bool>(true, arg_0.b.a, arg_0.b.a, false), vec4<bool>(arg_0.b.a, false, arg_0.b.a, arg_0.b.a), arg_0.b.a), !true)), var_0.a.b.x, -2147483648).a);
                continue;
            }
        }
        loop {
            var var_1 = arg_0.d.x;
            var var_2 = -(trunc(step(-vec3<f32>(-425.0, var_0.a.a, 1000.0), vec3<f32>(arg_0.b.c.a, 470.0, 1000.0))) + ((vec3<f32>(arg_0.b.c.a, arg_0.b.c.a, arg_0.b.c.a) / vec3<f32>(-1398.0, arg_0.b.c.a, arg_0.b.c.a)) * ((vec3<f32>(var_0.a.a, -1658.0, -1953.0) * vec3<f32>(-3244.0, -1154.0, arg_0.b.c.a)) - -vec3<f32>(1559.0, -416.0, -603.0))));
            continue;
        }
        for (var var_1 = 1; var_1 == 2147483647; var_1 -= 1) {
            let var_2 = func_10(~abs(arg_0.d / vec4<u32>(4294967295u, 4294967295u, 0u, var_0.a.b.x)), dot(arg_0.d.yz / (select(vec2<u32>(1u, 0u), vec2<u32>(var_0.a.b.x, var_0.a.b.x), arg_0.b.a) ^ (arg_0.d.wz % vec2<u32>(arg_0.b.c.b.x, 53595u))), ~(vec2<u32>(63122u, arg_0.b.b.x) + vec2<u32>(20391u, arg_0.d.x)) >> ~var_0.a.b.xy), arg_0.c.x);
            var var_3 = Struct_4(Struct_1(min(-205.0, arg_0.b.c.a), firstLeadingBit(var_2.a.b) / (vec3<u32>(45863u, 0u, 3919u) + (var_2.a.b >> var_2.a.b)), func_10(~func_9(var_0.a.a, arg_0.b.c.a), ~(9399u | 14453u), -2813).a.c));
        }
        for (var var_1 = 1; ; var_0 = Struct_4(func_5().a)) {
            continue;
        }
    }
    for (var var_1 = -1; ; var_1 -= 1) {
        var var_2 = Struct_2(!(1669.0 < var_0.a.a), (arg_0.b.c.b >> arg_0.d.xyw) >> vec3<u32>(5769u >> select(7613u, arg_0.d.x, false), 1u, (var_0.a.b.x - var_0.a.b.x) << 26777u), func_10(vec4<u32>(func_10(vec4<u32>(var_0.a.b.x, arg_0.d.x, 21816u, arg_0.d.x) & arg_0.d, arg_0.b.c.b.x - 21988u, 1).a.b.x, 1u, 8641u, min(abs(arg_0.b.b.x), var_0.a.b.x)), arg_0.b.c.b.x, u_input.a.x).a);
        loop {
            var_0 = Struct_4(arg_0.b.c);
            var_0 = Struct_4(func_10(arg_0.d, dot(select(arg_0.d.zw, vec2<u32>(arg_0.b.c.b.x, 0u), vec2<bool>(true, true)), var_0.a.b.zx + vec2<u32>(arg_0.d.x, 1u)) + 4294967295u, -13605).a);
            var_2 = arg_0.b;
        }
        var_1 = ~(~(var_0.a.c ^ min(6200, u_input.e + u_input.e)));
        switch (-17891) {
            default: {
                var_1 = var_2.c.c;
                let var_3 = vec4<u32>(~18575u / ~(0u + (var_0.a.b.x << var_0.a.b.x)), ((func_5().a.b.x * func_10(arg_0.d, 77222u, u_input.d).a.b.x) & arg_0.b.c.b.x) & ~(56829u + arg_0.d.x), abs(max(90606u, abs(arg_0.d.x << arg_0.d.x))), var_0.a.b.x);
                let var_4 = Struct_3(clamp(u_input.a.ywy, -(vec3<i32>(32377, 1, 8968) - vec3<i32>(-4183, -1, var_0.a.c)) | abs(vec3<i32>(-1, u_input.b.x, 12560)), vec3<i32>(1, 40156 & 2147483647, ~(-5089)) | abs(vec3<i32>(u_input.d, 24378, -1))), Struct_2(-var_2.c.a > max(335.0 * var_2.c.a, 2046.0 / -1022.0), var_3.zyy, var_2.c), firstLeadingBit(-u_input.a.xz + vec2<i32>(989, u_input.e)) << (vec2<u32>(~32795u, arg_0.b.b.x) << ((var_0.a.b.yx >> vec2<u32>(1u, 0u)) | vec2<u32>(var_0.a.b.x, var_2.b.x))), ~arg_0.d);
                var var_5 = -(-vec4<f32>(var_0.a.a, select(1000.0 - var_2.c.a, -436.0, var_4.b.a), trunc(-(-148.0)), 274.0));
            }
        }
        switch (35840) {
            default: {
                let var_3 = func_7(Struct_2(~(1 << var_0.a.b.x) < var_0.a.c, abs(vec3<u32>(~var_0.a.b.x, ~arg_0.d.x, abs(var_2.b.x))), var_2.c), var_2.c.b.xy, func_9(-(-657.0 / var_2.c.a) * -1794.0, -193.0 / func_5().a.a).x, Struct_4(func_10(max(vec4<u32>(27818u, 51125u, 26638u, 33629u), arg_0.d) | vec4<u32>(var_2.b.x, var_0.a.b.x, 1u, arg_0.b.b.x), var_0.a.b.x, (var_2.c.c << 14180u) >> ~arg_0.b.b.x).a));
            }
        }
    }
    loop {
        for (var var_1 = 10968; ; ) {
            var_1 = -(-countOneBits(clamp(arg_0.a.x, -4257, var_0.a.c) * var_0.a.c));
            let var_2 = -2147483648;
            var_0 = func_10(abs(arg_0.d | arg_0.d), 68551u, -firstLeadingBit(dot(u_input.b.ww, vec2<i32>(var_2, var_2))) + -44231);
            return ~dot(~(~vec3<u32>(arg_0.b.b.x, 27021u, var_0.a.b.x) - (arg_0.b.c.b / vec3<u32>(0u, 0u, var_0.a.b.x))), vec3<u32>(var_0.a.b.x & min(4294967295u, 16442u), arg_0.b.c.b.x, var_0.a.b.x));
        }
    }
    var var_1 = Struct_4(arg_0.b.c);
    return var_0.a.b.x;
}

fn func_3() -> vec4<bool> {
    if (true) {
        let var_0 = u_input.b.zw;
        if (false) {
        }
        for (var var_1 = 2147483647; var_1 != -1; var_1 -= 1) {
            var var_2 = Struct_2(!any(vec4<bool>(select(false, false, false), false, 27043 == 2147483647, true && false)), ~vec3<u32>(func_4(Struct_3(vec3<i32>(u_input.d, u_input.e, -2147483648), Struct_2(true, vec3<u32>(43690u, 27210u, 4294967295u), Struct_1(509.0, vec3<u32>(4294967295u, 0u, 3503u), u_input.e)), vec2<i32>(-2147483648, var_0.x), vec4<u32>(7413u, 46533u, 27631u, 1u))) + 1u, 0u, 4294967295u), func_10(vec4<u32>(~(34683u ^ 59947u), ~dot(vec4<u32>(1u, 34702u, 14496u, 19737u), vec4<u32>(46077u, 19791u, 1u, 1u)), ~52757u, min(firstLeadingBit(43331u), min(37535u, 83780u))), dot(~vec4<u32>(32857u, 19741u, 32963u, 32797u), vec4<u32>(76873u, 4710u, 6843u, 4414u)) ^ ~(4281u % 0u), var_0.x).a);
            var var_3 = true;
            continue;
        }
        switch (dot(min(-(-vec4<i32>(0, u_input.c, -2974, u_input.d)), ~u_input.a | reverseBits(u_input.a / vec4<i32>(2147483647, var_0.x, -99868, var_0.x))), u_input.a)) {
            case -1: {
            }
            default: {
                var var_1 = func_10(select(vec4<u32>(0u, 10353u, select(17148u, 0u, true), 44735u % 1u), ~(vec4<u32>(2464u, 51655u, 0u, 63740u) ^ vec4<u32>(4294967295u, 0u, 1u, 0u)), !(!vec4<bool>(false, false, false, true))), 55246u + 125030u, -13201).a.a + -(-666.0 / ((-418.0 * -1000.0) / -230.0));
                let var_2 = Struct_3(~firstLeadingBit(vec3<i32>(var_0.x, dot(vec2<i32>(9527, var_0.x), vec2<i32>(var_0.x, var_0.x)), -u_input.c)), Struct_2(true && (-1000.0 < (-145.0 / -672.0)), ~(~(~vec3<u32>(26748u, 1u, 4294967295u))), Struct_1(abs(-(-1647.0)), ~vec3<u32>(60763u, 5035u, 21268u) ^ (vec3<u32>(7232u, 4294967295u, 0u) & vec3<u32>(10119u, 4294967295u, 1u)), select(var_0.x, u_input.b.x, false) << 7664u)), u_input.b.yz, max(~(vec4<u32>(4294967295u, 48062u, 76666u, 7023u) & vec4<u32>(0u, 1u, 0u, 30271u)) ^ ~countOneBits(vec4<u32>(1u, 2179u, 59737u, 0u)), select(vec4<u32>(720u, 1u, 4294967295u, 1u) ^ clamp(vec4<u32>(22012u, 55291u, 26085u, 0u), vec4<u32>(15450u, 27108u, 0u, 1u), vec4<u32>(69232u, 1u, 27040u, 40636u)), vec4<u32>(~1535u, abs(4294967295u), 0u, 99415u + 0u), vec4<bool>(!true, any(vec2<bool>(true, false)), true, any(vec3<bool>(true, true, false))))));
                var_1 = -var_2.b.c.a;
            }
        }
    }
    if (!select(!(false & false), false, func_5().a.a >= (676.0 / -2225.0)) && (true && ((21674 - 2147483647) == u_input.e))) {
        for (var var_0 = -15121; ; var_0 -= 1) {
        }
    }
    let var_0 = floor(-floor(787.0));
    for (var var_1: i32; false; var_1 -= 1) {
        var var_2 = ~(-select(reverseBits(vec2<i32>(2147483647, u_input.b.x)), select(vec2<i32>(u_input.a.x, 1464), vec2<i32>(-18742, u_input.e), vec2<bool>(false, true)) + min(u_input.b.wz, vec2<i32>(-17655, u_input.b.x)), (true & false) || !false));
        if (true) {
            var_1 = u_input.d - 20697;
            break;
        }
    }
    switch (func_10(~firstLeadingBit(~max(vec4<u32>(1u, 0u, 1u, 4294967295u), vec4<u32>(0u, 42616u, 0u, 22979u))), countOneBits(dot(min(vec2<u32>(0u, 8977u), vec2<u32>(13035u, 0u)), select(vec2<u32>(1u, 61483u), ~vec2<u32>(0u, 2908u), !vec2<bool>(true, false)))), min(u_input.a.x, -2147483647)).a.c) {
        default: {
            loop {
                let var_1 = vec4<i32>(1678, 1, 2147483647, -u_input.c);
                var var_2 = exp2(vec3<f32>(var_0, min(502.0, var_0) * var_0, (var_0 - var_0) * (-1430.0 / var_0)) - (((vec3<f32>(var_0, 343.0, var_0) - vec3<f32>(var_0, -1565.0, var_0)) - (vec3<f32>(var_0, 608.0, -1608.0) - vec3<f32>(var_0, var_0, 1000.0))) * (-vec3<f32>(264.0, var_0, var_0) * vec3<f32>(var_0, var_0, var_0))));
                let var_3 = 0;
            }
            var var_1 = ~(~abs(func_4(Struct_3(u_input.a.zyx, Struct_2(false, vec3<u32>(0u, 0u, 16970u), Struct_1(var_0, vec3<u32>(27173u, 42199u, 69612u), u_input.d)), vec2<i32>(-2147483648, u_input.e), vec4<u32>(50763u, 26571u, 1u, 9840u)))));
        }
    }
    return select(vec4<bool>(func_6(func_10(vec4<u32>(0u, 3097u, 29983u, 101019u), 37559u, -5519)) && false, false, false, !select(false, false, false) || (func_7(Struct_2(true, vec3<u32>(4294967295u, 0u, 63160u), Struct_1(-1143.0, vec3<u32>(4294967295u, 4294967295u, 0u), u_input.a.x)), vec2<u32>(27814u, 105819u), 1u, Struct_4(Struct_1(-457.0, vec3<u32>(13880u, 4294967295u, 1u), 43495))) | func_6(Struct_4(Struct_1(-254.0, vec3<u32>(4294967295u, 35585u, 6687u), -59826))))), vec4<bool>(false, !func_6(func_10(vec4<u32>(4294967295u, 1u, 0u, 43072u), 40470u, u_input.c)), true, func_6(Struct_4(func_10(vec4<u32>(10127u, 2861u, 4294967295u, 20965u), 0u, -14445).a))), select(select(vec4<bool>(any(vec3<bool>(false, true, false)), false, !true, all(vec4<bool>(true, true, true, false))), vec4<bool>(!true, !false, any(vec4<bool>(true, true, false, false)), 0u != 102682u), vec4<bool>(true, select(true, false, true), !true, any(vec3<bool>(true, true, false)))), vec4<bool>(!(25827u < 4294967295u), true != !true, func_7(Struct_2(true, vec3<u32>(1u, 1u, 0u), Struct_1(var_0, vec3<u32>(60712u, 4294967295u, 4294967295u), 2518)), countOneBits(vec2<u32>(39591u, 21513u)), ~30319u, func_10(vec4<u32>(0u, 0u, 46231u, 71142u), 0u, -24884)), !true), false));
}

fn func_2() -> Struct_1 {
    for (var var_0 = -2147483648; ; ) {
        var var_1 = Struct_2(all(select(vec4<bool>(false, false && false, true, !true), select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), false), func_3(), 1511.0 >= -205.0), !vec4<bool>(true, false, true, false))), ((min(vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(0u, 12782u, 1u)) | abs(vec3<u32>(20651u, 4294967295u, 0u))) * vec3<u32>(0u, 4294967295u - 4294967295u, 46552u / 19855u)) >> vec3<u32>(abs(1u), 32587u, max(4294967295u, ~26009u)), Struct_1(1315.0 + func_5().a.a, (vec3<u32>(1u, 4294967295u, 42740u) ^ (vec3<u32>(4294967295u, 77793u, 46437u) & vec3<u32>(34023u, 15972u, 59750u))) / ~clamp(vec3<u32>(0u, 32463u, 45113u), vec3<u32>(60024u, 4294967295u, 4294967295u), vec3<u32>(5026u, 20960u, 33065u)), u_input.d));
    }
    let var_0 = all(!(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), false))) && !(!(!true));
    if (false & var_0) {
        let var_1 = vec2<i32>(22520, u_input.c);
        for (var var_2 = 60637; var_2 != 11784; var_2 -= 1) {
            var var_3 = Struct_3(vec3<i32>(15155, 1, dot(~(~u_input.a.zx), vec2<i32>(-15751 % -2147483648, var_1.x - -2147483648))), Struct_2(!var_0, ~(~min(vec3<u32>(1u, 1u, 21845u), vec3<u32>(13373u, 19873u, 4294967295u))), Struct_1(-func_5().a.a, ~(vec3<u32>(0u, 1u, 17220u) % vec3<u32>(12704u, 4294967295u, 44743u)), var_1.x)), firstLeadingBit(vec2<i32>(1, 31342)), ~(~abs(func_9(182.0, 1000.0))));
        }
    }
    for (var var_1: i32; !(!true); var_1 = u_input.d) {
        loop {
            let var_2 = Struct_4(Struct_1(trunc(abs(-1501.0 / -656.0)), ~((vec3<u32>(24686u, 11400u, 21968u) - vec3<u32>(1u, 1u, 6256u)) << (vec3<u32>(1u, 26602u, 0u) >> vec3<u32>(1u, 25922u, 1u))), u_input.d));
        }
        let var_2 = firstTrailingBit(-u_input.a.zw);
        var_1 = var_2.x;
    }
    if (var_0) {
        let var_1 = -(-(-(-941.0)));
    }
    return func_5().a;
}

fn func_11(arg_0: u32, arg_1: Struct_4) -> bool {
    let var_0 = func_5();
    switch (arg_1.a.c) {
        default: {
            switch (-1) {
                default: {
                    var var_1 = ~firstLeadingBit(reverseBits(56517u + arg_1.a.b.x));
                }
            }
            var var_1 = dot(vec3<u32>(~countOneBits(9698u), ~(arg_0 << 32832u), clamp(0u, firstTrailingBit(arg_0), abs(1u))) * vec3<u32>(countOneBits(arg_0 >> 78952u), abs(var_0.a.b.x), ~arg_1.a.b.x), ~reverseBits(~arg_1.a.b) * ~(vec3<u32>(47046u, var_0.a.b.x, 23544u) + vec3<u32>(9254u, 1u, arg_1.a.b.x)));
            if (floor(143.0) > -(-424.0)) {
                let var_2 = Struct_4(arg_1.a);
                return ((dot(u_input.a, vec4<i32>(arg_1.a.c, 29166, var_0.a.c, arg_1.a.c) & vec4<i32>(7337, u_input.a.x, -2147483648, 0)) >> ((47175u * var_2.a.b.x) << 12947u)) / countOneBits(-1 >> arg_1.a.b.x)) > -abs(~19560);
            }
        }
    }
    var var_1 = 1;
    let var_2 = vec2<u32>(3888u, ~(~((0u + 2843u) - ~1u)));
    switch ((arg_1.a.c / ~arg_1.a.c) >> max(var_0.a.b.x >> func_5().a.b.x, var_0.a.b.x)) {
        case 1: {
        }
        case -48531: {
            if (!(func_3().x || (arg_1.a.b.x >= ~(var_2.x + arg_1.a.b.x)))) {
                var_1 = abs(u_input.a.x) ^ var_0.a.c;
                var var_3 = Struct_2(true, abs(vec3<u32>(~var_0.a.b.x, var_0.a.b.x, ~54216u)) & var_0.a.b, arg_1.a);
                var_1 = 22995;
                var var_4 = func_10(~(~((vec4<u32>(arg_1.a.b.x, var_3.b.x, 0u, 1u) ^ vec4<u32>(42237u, 19985u, 4294967295u, 23219u)) / clamp(vec4<u32>(68474u, var_0.a.b.x, arg_0, arg_0), vec4<u32>(arg_1.a.b.x, var_0.a.b.x, 4294967295u, var_0.a.b.x), vec4<u32>(var_0.a.b.x, 48752u, 6060u, var_2.x)))), func_5().a.b.x, firstTrailingBit(countOneBits(clamp(~var_0.a.c, func_5().a.c, -var_0.a.c)))).a;
            }
            var var_3 = abs(~u_input.b.xw);
        }
        default: {
            let var_3 = u_input.c + ~(-28114);
            var_1 = (-13779 + var_3) >> var_2.x;
            for (var var_4 = -2147483648; var_4 != -8885; ) {
                let var_5 = arg_0;
                break;
            }
        }
    }
    return !any(vec3<bool>(all(vec2<bool>(true, false)), true && (var_0.a.c != -2776), !false || (false || false)));
}

fn func_1() -> Struct_1 {
    loop {
        if (func_11(~(((16642u * 4294967295u) << 31157u) ^ (111445u | select(3723u, 4294967295u, false))), Struct_4(func_2()))) {
            break;
        }
        let var_0 = ~0;
        switch (-(-37403) * 46084) {
            case -26418: {
            }
            default: {
                let var_1 = Struct_4(func_2());
                let var_2 = !(var_1.a.b.x <= var_1.a.b.x);
                let var_3 = Struct_4(var_1.a);
                let var_4 = abs(675.0 + sign(-884.0)) / var_3.a.a;
            }
        }
    }
    loop {
        var var_0 = func_5();
        var var_1 = var_0.a;
        return Struct_1(var_0.a.a, ~vec3<u32>(12057u & var_1.b.x, var_0.a.b.x, 1u), u_input.d);
    }
    let var_0 = ~(firstLeadingBit(~u_input.a.x) * firstTrailingBit(firstTrailingBit(firstTrailingBit(u_input.b.x))));
    loop {
        continue;
    }
    loop {
        var var_1 = Struct_1((func_10(vec4<u32>(0u, 0u, 0u, 63800u) - vec4<u32>(1u, 1u, 91113u, 4294967295u), 41351u, ~var_0).a.a - -(-(-285.0))) + -936.0, ~vec3<u32>(30083u % 26700u, 20323u | 0u, 18368u) ^ vec3<u32>(0u, (4294967295u >> 0u) * func_2().b.x, 0u), 107073);
        let var_2 = Struct_1(var_1.a, ~(~(var_1.b << vec3<u32>(var_1.b.x, 36905u, 1u)) + clamp(vec3<u32>(var_1.b.x, var_1.b.x, 1u), vec3<u32>(var_1.b.x, 4294967295u, 107968u) >> vec3<u32>(97443u, 4294967295u, 52139u), vec3<u32>(var_1.b.x, var_1.b.x, var_1.b.x))), firstLeadingBit(dot(~u_input.a - -u_input.a, u_input.a)));
        if (all(select(!vec2<bool>(all(vec4<bool>(false, true, false, false)), any(vec2<bool>(false, false))), vec2<bool>(true || false, false), select(select(!vec2<bool>(true, true), func_3().xy, true), vec2<bool>(1 <= -1, false), !(!vec2<bool>(true, false)))))) {
            break;
        }
    }
    return func_10(vec4<u32>(abs(7021u / dot(vec2<u32>(5856u, 4294967295u), vec2<u32>(44506u, 0u))), ~(1u * func_5().a.b.x), 44774u, ~20292u), ~(reverseBits(0u) >> 39639u) * ((~4294967295u / 1u) + ~select(8975u, 44326u, false)), ~(reverseBits(-(-2147483648)) | dot(select(u_input.a.xy, u_input.b.wx, vec2<bool>(false, true)), vec2<i32>(u_input.d, -4207)))).a;
}

@compute
@workgroup_size(1)
fn main() {
    loop {
        let var_0 = func_1();
        switch (u_input.a.x) {
            case -24716: {
                var var_1 = func_10(~(~(~func_9(var_0.a, var_0.a))), 4294967295u, 8629);
                break;
            }
            default: {
                break;
            }
        }
    }
    switch (-(u_input.b.x % firstTrailingBit(-(-15718 ^ u_input.d)))) {
        case -32543: {
            loop {
                let var_0 = -1187.0;
                let var_1 = vec2<bool>(var_0 <= var_0, true || (!(41925u != 0u) || (any(vec2<bool>(false, false)) | (554.0 != var_0))));
                continue;
            }
        }
        default: {
        }
    }
    loop {
        switch (u_input.e) {
            case -1: {
                let var_0 = vec3<u32>(0u, firstTrailingBit(countOneBits(30808u)), (~57399u & func_9(1488.0, -1000.0).x) / func_9(-(-419.0), -257.0).x) % (~(~vec3<u32>(4294967295u, 0u, 4294967295u)) * func_5().a.b);
                let var_1 = 10052;
            }
            case 12839: {
                continue;
            }
            default: {
                return;
            }
        }
        for (var var_0: i32; ; var_0 += 1) {
            var var_1 = vec4<bool>(func_6(func_10(min(vec4<u32>(36284u, 1u, 1u, 19540u), vec4<u32>(2532u, 49952u, 1u, 94008u)) / ~vec4<u32>(1u, 4294967295u, 4294967295u, 1u), 44722u, -697)), true, !(all(vec2<bool>(false, false)) & any(vec2<bool>(true, false))), any(select(vec2<bool>(false, !true), vec2<bool>(262.0 > 445.0, false || true), any(!vec3<bool>(true, false, false)))));
            var var_2 = -trunc(trunc(vec4<f32>(1932.0, 2330.0, -405.0, -1553.0)) / (-vec4<f32>(1762.0, -992.0, 1158.0, 652.0) / -vec4<f32>(2051.0, -1000.0, -159.0, 663.0)));
            var var_3 = abs(~clamp(vec4<u32>(15276u, 0u, 4294967295u, 1u), vec4<u32>(1u, 0u, 57370u, 4294967295u), vec4<u32>(35652u, 42036u, 66126u, 1u)) * reverseBits(clamp(vec4<u32>(1u, 20050u, 28311u, 1u), vec4<u32>(4294967295u, 79891u, 5193u, 0u), vec4<u32>(22013u, 52874u, 137948u, 4294967295u)))) - firstLeadingBit(~vec4<u32>(4294967295u % 51092u, func_4(Struct_3(vec3<i32>(10390, u_input.d, u_input.d), Struct_2(var_1.x, vec3<u32>(56432u, 1u, 0u), Struct_1(var_2.x, vec3<u32>(1u, 4385u, 93041u), u_input.b.x)), vec2<i32>(1, -2147483648), vec4<u32>(23077u, 4294967295u, 0u, 30439u))), ~26704u, 0u >> 0u));
        }
        break;
    }
    if (false) {
        switch (countOneBits(reverseBits((-1 << 50476u) ^ u_input.a.x)) << 36564u) {
            case -14438: {
            }
            case -1: {
                var var_0 = Struct_3(u_input.a.xyy, Struct_2(!(-(-917.0) > -(-2267.0)), (~vec3<u32>(14279u, 4294967295u, 11200u) * vec3<u32>(6096u, 1u, 4294967295u)) / vec3<u32>(clamp(79677u, 2824u, 1427u), ~22313u, 24501u), func_2()), u_input.b.yw, select(vec4<u32>(func_9(202.0, abs(-939.0)).x, ~0u >> ~5611u, clamp(4294967295u, 0u, 11016u) >> abs(0u), select(~1u, 1u << 47091u, all(vec4<bool>(true, false, true, false)))), ~(~select(vec4<u32>(1u, 1u, 4294967295u, 19474u), vec4<u32>(21208u, 4294967295u, 1u, 4294967295u), false)), (-535.0 > func_10(vec4<u32>(64719u, 0u, 4546u, 27197u), 1u, u_input.a.x).a.a) && func_7(Struct_2(true, vec3<u32>(1510u, 85271u, 0u), Struct_1(-1083.0, vec3<u32>(5474u, 10111u, 49495u), -2147483648)), vec2<u32>(0u, 4294967295u), 1u, func_5())));
                var_0 = Struct_3(var_0.a, var_0.b, ~u_input.a.yz, vec4<u32>(1u, var_0.b.c.b.x, ~(~abs(var_0.b.c.b.x)), firstTrailingBit(func_10(vec4<u32>(23606u, 1u, 0u, 28224u), var_0.d.x, 15095).a.b.x ^ 13879u)));
                let var_1 = abs(max(u_input.a.yx, reverseBits(vec2<i32>(firstLeadingBit(var_0.c.x), -2147483648 - u_input.e))));
            }
            default: {
                let var_0 = Struct_1(-758.0, ~(~(~(vec3<u32>(1u, 0u, 8831u) >> vec3<u32>(51239u, 37832u, 20133u)))), -2147483648);
                var var_1 = var_0.a;
                let var_2 = vec3<f32>(func_2().a, var_0.a, round(-2845.0));
            }
        }
        for (var var_0 = 0; ; var_0 += 1) {
            var var_1 = (vec2<f32>(step(286.0 - 1214.0, -881.0), 1832.0) + (-(vec2<f32>(1541.0, -647.0) + vec2<f32>(-1497.0, -2107.0)) - (select(vec2<f32>(1508.0, 1220.0), vec2<f32>(-678.0, 1466.0), true) - -vec2<f32>(389.0, -651.0)))) / vec2<f32>(func_5().a.a, -118.0);
            var_1 = vec2<f32>(-821.0 / (-568.0 + func_1().a), -max(-197.0, var_1.x)) * exp2(trunc(sign(vec2<f32>(var_1.x, var_1.x))));
            var_1 = min(-sign(round(floor(vec2<f32>(var_1.x, -1380.0)))), vec2<f32>(func_1().a, -1000.0 * -(var_1.x + -1000.0)));
            let var_2 = func_2();
            var var_3 = func_10(~abs(vec4<u32>(~4294967295u, countOneBits(var_2.b.x), ~var_2.b.x, var_2.b.x / 91794u)), ~var_2.b.x, -1 + dot(vec2<i32>(reverseBits(38688), func_5().a.c), select(vec2<i32>(u_input.a.x, u_input.b.x), vec2<i32>(1, u_input.d), false)));
        }
        var var_0 = Struct_2(any(vec3<bool>((0u / 16252u) <= (1668u - 20395u), !(u_input.e > u_input.b.x), !(!false))), (~vec3<u32>(34527u, 59341u, 88160u) | (vec3<u32>(68434u, 4294967295u, 0u) >> firstTrailingBit(vec3<u32>(4294967295u, 1u, 0u)))) - vec3<u32>(5488u, ~(~66565u), min(0u / 0u, 4294967295u)), func_10(select(~vec4<u32>(4294967295u, 0u, 0u, 4294967295u), ~vec4<u32>(4294967295u, 4294967295u, 1160u, 377u), false || false) * vec4<u32>(func_5().a.b.x, func_9(2152.0, -1161.0).x, 4294967295u, 1u / 13647u), firstLeadingBit(func_1().b.x) * (0u & ~1u), min(clamp(-1, 1003, 0 / u_input.c), (-1 + u_input.d) | -30067)).a);
    }
    let var_0 = ~func_1().c;
    let var_1 = Struct_2(false, vec3<u32>(1u >> func_4(Struct_3(vec3<i32>(u_input.b.x, u_input.a.x, u_input.b.x), Struct_2(true, vec3<u32>(19139u, 1u, 90684u), Struct_1(422.0, vec3<u32>(0u, 0u, 0u), -16171)), vec2<i32>(2147483647, var_0), vec4<u32>(4294967295u, 2525u, 4294967295u, 72007u))), ~1u, (12311u | (29139u & 81357u)) - 51454u), Struct_1(-1000.0, ~(abs(vec3<u32>(0u, 57703u, 25172u)) + (vec3<u32>(10700u, 1u, 1u) - vec3<u32>(4294967295u, 10631u, 62531u))), -(~func_10(vec4<u32>(4294967295u, 1u, 2138u, 1u), 5185u, var_0).a.c)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c << 1u, -vec3<f32>(var_1.c.a, var_1.c.a * 1301.0, trunc(863.0)), -ceil(vec3<f32>(ceil(-3110.0), 528.0, var_1.c.a + var_1.c.a)));
}

