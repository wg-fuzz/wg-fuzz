// {"0:0":[23,2,204,81,8,106,180,94,132,12,58,35,97,179,143,97,20,191,0,108,147,17,17,214,85,148,41,105,103,39,93,217,99,212,144,224,168,202,176,103,24,214,47,244,143,36,77,42]}
// Seed: 16303861962027857626

struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec4<f32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: bool,
    b: Struct_4,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_6(arg_0: vec4<f32>, arg_1: i32) -> vec3<bool> {
    if (any(!vec2<bool>((arg_0.x / -433.0) < arg_0.x, !true))) {
        switch (-(~2684)) {
            case 29199: {
                var var_0 = -arg_0;
                var var_1 = ~(-(((vec3<i32>(arg_1, arg_1, 0) - vec3<i32>(arg_1, u_input.c, -1)) ^ (vec3<i32>(u_input.a, arg_1, -1) % vec3<i32>(6726, u_input.c, arg_1))) - vec3<i32>(max(arg_1, -5980), 26654 ^ u_input.c, 0)));
                var var_2 = arg_0.x;
                var var_3 = arg_0.yz;
            }
            default: {
            }
        }
    }
    if ((step(-1848.0, floor(-441.0 - arg_0.x)) - -419.0) >= (abs(arg_0.x + arg_0.x) + -(-834.0))) {
        if (!true) {
            let var_0 = -1956.0 + ceil(2099.0 / 2130.0);
        }
    }
    let var_0 = Struct_5(true, Struct_4(57266u), Struct_3(vec3<bool>(true && false, !false, false), Struct_2(Struct_1(!true, vec3<u32>(u_input.b.x, u_input.d.x, u_input.d.x), arg_0, ~4294967295u), !(!true), max(exp2(vec3<f32>(-448.0, -112.0, 785.0)), vec3<f32>(arg_0.x, -1286.0, -148.0) / vec3<f32>(arg_0.x, 418.0, arg_0.x)))));
    var var_1 = Struct_2(Struct_1(any(vec2<bool>(!var_0.a, any(vec2<bool>(true, true)))), vec3<u32>(u_input.d.x, u_input.b.x, firstLeadingBit(var_0.b.a)), round((vec4<f32>(1401.0, arg_0.x, 1859.0, -1056.0) - arg_0) + (vec4<f32>(arg_0.x, -1781.0, 2243.0, -869.0) * vec4<f32>(1275.0, 605.0, 418.0, -1250.0))), u_input.b.x), !false, -vec3<f32>(1898.0 * var_0.c.b.a.c.x, -575.0, (var_0.c.b.c.x + arg_0.x) + -1807.0));
    var var_2 = var_0;
    return var_0.c.a;
}

fn func_5(arg_0: vec2<bool>) -> f32 {
    let var_0 = -(-(-(vec2<i32>(u_input.a, -2147483648) >> vec2<u32>(u_input.b.x, 1u))) + vec2<i32>(select(-2147483648, -28772 << u_input.b.x, !arg_0.x), u_input.c));
    var var_1 = Struct_3(!select(!(!vec3<bool>(arg_0.x, true, arg_0.x)), vec3<bool>(arg_0.x, false, false), (arg_0.x & arg_0.x) | (49851 > var_0.x)), Struct_2(Struct_1(true, vec3<u32>(u_input.b.x % 4294967295u, ~0u, 1u), -(vec4<f32>(1000.0, -1794.0, 1000.0, -1719.0) - vec4<f32>(1000.0, -291.0, 700.0, 275.0)), ~(1u / u_input.d.x)), true, -vec3<f32>(116.0, select(-1987.0, -1846.0, true), select(1204.0, 757.0, true))));
    if (all(var_1.a) == (false | arg_0.x)) {
        var_1 = Struct_3(var_1.a, Struct_2(var_1.b.a, false, vec3<f32>(var_1.b.a.c.x, 716.0, var_1.b.a.c.x)));
    }
    let var_2 = 1477.0;
    if (any(func_6(var_1.b.a.c, firstTrailingBit(3043)))) {
        let var_3 = min(~(~(31307u * ~u_input.d.x)), ~(u_input.b.x * var_1.b.a.d));
        var var_4 = vec3<i32>(var_0.x, u_input.a, ~var_0.x);
        let var_5 = 0;
        let var_6 = max(~(~vec2<u32>(0u, u_input.d.x)) / vec2<u32>(4294967295u, ~54621u), vec2<u32>(23665u | var_1.b.a.b.x, countOneBits(4294967295u)) ^ u_input.d.xx);
        var_4 = countOneBits(vec3<i32>(-(~36208), -2147483648, 0));
    }
    return step(var_2, -(-(-var_2 * (-1000.0 + -645.0))));
}

fn func_4() -> Struct_4 {
    let var_0 = min(-2147483648, u_input.c) - -countOneBits(u_input.a);
    let var_1 = -((vec2<i32>(var_0, u_input.c) * -vec2<i32>(u_input.c, var_0)) - (-vec2<i32>(12245, var_0) << vec2<u32>(u_input.b.x, u_input.d.x))) >> max(~select(~vec2<u32>(4294967295u, u_input.d.x), min(vec2<u32>(u_input.d.x, 0u), vec2<u32>(u_input.d.x, 0u)), !vec2<bool>(true, true)), reverseBits(u_input.b.yx));
    var var_2 = true;
    let var_3 = vec4<bool>(any(!(!select(vec2<bool>(true, true), vec2<bool>(true, false), false))), false, false | (u_input.d.x >= dot(u_input.b, vec3<u32>(4294967295u, u_input.d.x, u_input.b.x))), !any(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), true)));
    for (var var_4 = -1; var_4 <= -36923; var_4 -= 1) {
        var var_5 = vec4<f32>(-1848.0, trunc(474.0), step(-524.0, 2011.0), round(func_5(vec2<bool>(!var_3.x, false))));
    }
    return Struct_4(max(u_input.b.x ^ clamp(125083u, dot(u_input.b.yx, u_input.d.xz), ~u_input.b.x), countOneBits(u_input.d.x % 0u)));
}

fn func_3(arg_0: vec4<bool>) -> vec2<bool> {
    let var_0 = func_4();
    if (!select(false, ((false & true) | false) || !select(false, arg_0.x, arg_0.x), all(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), arg_0.x)))) {
        var var_1 = (~(~(4294967295u * 20683u)) / var_0.a) | u_input.d.x;
        if (arg_0.x & false) {
        }
        var_1 = func_4().a % abs(firstTrailingBit(dot(vec4<u32>(12921u, var_0.a, u_input.b.x, u_input.b.x), vec4<u32>(59463u, u_input.b.x, 1u, u_input.d.x)) << 14094u));
        var var_2 = max(~(u_input.a % -1) + countOneBits(~countOneBits(0)), ~max(clamp(-1, -8160, u_input.a), -2147483648 * u_input.a));
    }
    let var_1 = vec3<i32>(u_input.a | u_input.a, ~(~(u_input.c % (-27955 - -17968))), -1 << dot((u_input.b ^ u_input.d) - ~u_input.d, vec3<u32>(var_0.a, u_input.d.x, var_0.a) + u_input.b));
    let var_2 = reverseBits(reverseBits(21578u));
    let var_3 = Struct_2(Struct_1(all(vec4<bool>(select(false, arg_0.x, arg_0.x), arg_0.x & arg_0.x, u_input.c >= var_1.x, arg_0.x && true)), select((vec3<u32>(2892u, var_0.a, 88555u) & vec3<u32>(49967u, 1u, var_0.a)) & ~u_input.d, u_input.d, !(!vec3<bool>(false, false, arg_0.x))), abs(floor(-vec4<f32>(-1291.0, 333.0, 1595.0, -479.0))), u_input.b.x), -2590.0 >= ((ceil(879.0) - -(-347.0)) / ((2030.0 + 173.0) + (757.0 - 195.0))), trunc(max(-(vec3<f32>(1081.0, 1437.0, -350.0) + vec3<f32>(1070.0, 1000.0, 722.0)), -vec3<f32>(-1000.0, 214.0, 1000.0) / trunc(vec3<f32>(944.0, -1000.0, 955.0)))));
    return !vec2<bool>(func_6(vec4<f32>(var_3.c.x, var_3.a.c.x - -2647.0, var_3.a.c.x * var_3.a.c.x, select(217.0, var_3.a.c.x, false)), 65618).x, false);
}

fn func_2() -> Struct_2 {
    switch (1 - 7676) {
        default: {
            loop {
                continue;
            }
            var var_0 = select(select(vec2<bool>(!(true | false), all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), true))), select(vec2<bool>(any(vec2<bool>(false, false)), !true), select(func_3(vec4<bool>(true, true, false, true)), !vec2<bool>(true, false), !false), !all(vec4<bool>(true, false, true, false))), (func_5(vec2<bool>(true, false)) / -650.0) != ((1000.0 - 1428.0) / select(682.0, -1139.0, false))), vec2<bool>(all(vec3<bool>(true, all(vec2<bool>(true, true)), -60404 == 1)), u_input.d.x > clamp(~0u, ~u_input.b.x, u_input.b.x)), select(func_6(vec4<f32>(-2707.0, -176.0, -371.0, -946.0) - (vec4<f32>(193.0, -1201.0, -1236.0, 535.0) / vec4<f32>(424.0, -867.0, 1000.0, 1466.0)), u_input.a).yx, !(!(!vec2<bool>(true, false))), !(!any(vec2<bool>(false, true)))));
            var_0 = func_3(vec4<bool>(any(vec4<bool>(true, !false, !var_0.x, !var_0.x)), ~firstTrailingBit(u_input.b.x) == u_input.d.x, u_input.b.x <= 0u, -(-(-123.0)) >= 525.0));
            switch (u_input.c) {
                case 0: {
                    var_0 = func_6(-(-vec4<f32>(-601.0 + 584.0, -683.0, -788.0, -1917.0)), 34787).zx;
                }
                case -14312: {
                    var var_1 = u_input.b.x;
                    let var_2 = Struct_3(select(vec3<bool>(all(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, false), true)), var_0.x, select(true, -940.0 < -328.0, true)), vec3<bool>(!func_6(vec4<f32>(-1014.0, 406.0, -1422.0, 180.0), -1).x, all(select(vec4<bool>(false, true, true, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x))), var_0.x), var_0.x), Struct_2(Struct_1(var_0.x, ~u_input.b, vec4<f32>(-1655.0 - -754.0, -(-330.0), 527.0 - 1365.0, -171.0), ~5613u - 0u), !(!(!false)), sign(sign(vec3<f32>(-681.0, -532.0, -1951.0) / vec3<f32>(-2055.0, 344.0, -202.0)))));
                }
                default: {
                    var var_1 = clamp(29889u, ((u_input.b.x / (54075u * u_input.b.x)) * dot(u_input.d + u_input.d, ~vec3<u32>(48785u, u_input.d.x, 1u))) + dot(select(vec3<u32>(u_input.d.x, 59552u, 4294967295u), u_input.d, var_0.x) << (u_input.b % vec3<u32>(u_input.b.x, 116454u, 46383u)), (vec3<u32>(40198u, u_input.b.x, 14902u) / vec3<u32>(u_input.b.x, u_input.d.x, 37323u)) | (vec3<u32>(u_input.b.x, u_input.d.x, 4294967295u) / vec3<u32>(u_input.d.x, u_input.b.x, u_input.d.x))), 0u);
                    var var_2 = Struct_2(Struct_1(any(!(!vec3<bool>(var_0.x, true, true))), vec3<u32>(firstTrailingBit(u_input.b.x - u_input.b.x), u_input.d.x, ~(4294967295u << 4294967295u)), vec4<f32>(593.0, -(-1142.0), round(1067.0), sign(2046.0 / -1113.0)), u_input.d.x), true, ceil(vec3<f32>(-(-432.0), 2328.0, -trunc(155.0))));
                }
            }
            loop {
            }
        }
    }
    var var_0 = Struct_3(select(!func_6(vec4<f32>(-1000.0, 1000.0, 375.0, -285.0) - vec4<f32>(130.0, 2086.0, 1000.0, -231.0), 77708), !func_6(vec4<f32>(1738.0, -1000.0, -1196.0, 913.0) + vec4<f32>(-2254.0, 429.0, 2103.0, -683.0), dot(vec4<i32>(u_input.a, 1, -1, 10561), vec4<i32>(u_input.c, u_input.a, u_input.a, -1))), !true), Struct_2(Struct_1(false, u_input.b, vec4<f32>(-299.0, max(-1000.0, -226.0), func_5(vec2<bool>(true, false)), -707.0), u_input.d.x), select(true, func_3(!vec4<bool>(false, true, false, false)).x, any(vec3<bool>(true, true, false))), vec3<f32>(502.0, ceil(-584.0 + -2335.0), round(657.0) - (-503.0 * 432.0))));
    var var_1 = ~vec4<i32>(u_input.a, clamp(2147483647 << ~59679u, 2147483647, firstTrailingBit(~u_input.c)), 2147483647, clamp(4713, firstTrailingBit(dot(vec3<i32>(-1, -15846, 2147483647), vec3<i32>(-2147483648, u_input.a, u_input.a))), 1));
    if (!(1 < 0)) {
    }
    let var_2 = (trunc(-(var_0.b.c.x * -1873.0)) * min(-289.0, var_0.b.a.c.x)) * (-125.0 * -302.0);
    return Struct_2(var_0.b.a, var_0.b.b, (-vec3<f32>(var_2, var_0.b.c.x, 1393.0) - max(max(var_0.b.a.c.zxx, var_0.b.a.c.zwx), var_0.b.a.c.yzy - vec3<f32>(var_2, var_0.b.c.x, var_2))) * select(vec3<f32>(551.0, -1498.0, var_0.b.a.c.x) - vec3<f32>(202.0, var_0.b.a.c.x, var_0.b.c.x), abs(var_0.b.c), func_6(var_0.b.a.c, u_input.c)));
}

fn func_7(arg_0: f32, arg_1: Struct_2) -> Struct_3 {
    if (arg_1.b) {
        switch (~1 * 1) {
            case -48222: {
                let var_0 = select(vec3<bool>(-(-1178.0) == -371.0, all(vec4<bool>(func_3(vec4<bool>(arg_1.a.a, arg_1.a.a, true, true)).x, func_2().b, all(vec4<bool>(false, arg_1.b, false, arg_1.a.a)), !arg_1.b)), any(!select(vec3<bool>(true, true, arg_1.b), vec3<bool>(false, true, false), vec3<bool>(true, arg_1.b, arg_1.a.a)))), !vec3<bool>(arg_1.b || arg_1.a.a, false, arg_1.b), false);
                let var_1 = -1;
            }
            default: {
                var var_0 = Struct_5(trunc(max(arg_1.a.c.x, arg_0 / arg_1.c.x)) == trunc(sign(-(-1785.0))), Struct_4(dot(vec4<u32>(0u, arg_1.a.b.x, arg_1.a.b.x, 30830u), vec4<u32>(49312u, arg_1.a.b.x, 4294967295u, 1u) << vec4<u32>(4294967295u, u_input.d.x, u_input.b.x, 1u)) >> 0u), Struct_3(vec3<bool>(arg_1.a.a | (0u > 71155u), arg_1.b, countOneBits(u_input.d.x) < (arg_1.a.d ^ arg_1.a.b.x)), arg_1));
                var_0 = Struct_5(all(!vec3<bool>(arg_1.b, func_3(vec4<bool>(var_0.c.b.b, arg_1.b, var_0.a, true)).x, arg_1.c.x > var_0.c.b.c.x)), var_0.b, Struct_3(!select(select(var_0.c.a, vec3<bool>(true, true, false), var_0.c.a), vec3<bool>(false, arg_1.b, arg_1.b), arg_1.b), Struct_2(var_0.c.b.a, !(u_input.a < -1), -vec3<f32>(arg_0, -972.0, arg_0))));
                let var_1 = ~(~select(vec3<i32>(u_input.c, u_input.a % u_input.a, -u_input.a), vec3<i32>(u_input.a, ~u_input.a, u_input.c), true));
            }
        }
        for (var var_0 = -2147483648; ; var_0 = 0) {
            let var_1 = Struct_4(60257u);
            break;
        }
    }
    if (func_3(vec4<bool>(arg_1.a.a | any(select(vec3<bool>(false, arg_1.b, true), vec3<bool>(false, arg_1.b, false), vec3<bool>(false, false, arg_1.a.a))), (1180.0 != 1564.0) | arg_1.a.a, arg_1.b, !true)).x) {
        var var_0 = !vec3<bool>(any(!(!vec4<bool>(arg_1.b, arg_1.b, arg_1.a.a, arg_1.a.a))), arg_1.a.a, any(select(vec2<bool>(false, false), vec2<bool>(true, false), select(false, arg_1.a.a, false))));
        var_0 = select(!select(select(vec3<bool>(var_0.x, false, var_0.x), select(vec3<bool>(var_0.x, true, true), vec3<bool>(false, false, var_0.x), arg_1.a.a), func_3(vec4<bool>(false, true, var_0.x, true)).x), !func_6(vec4<f32>(900.0, arg_0, 1000.0, arg_0), 2147483647), select(!vec3<bool>(var_0.x, var_0.x, false), select(vec3<bool>(false, true, var_0.x), vec3<bool>(false, arg_1.b, false), vec3<bool>(arg_1.b, arg_1.b, arg_1.a.a)), !vec3<bool>(false, var_0.x, arg_1.a.a))), select(select(select(vec3<bool>(arg_1.b, false, true), vec3<bool>(true, false, true), func_6(vec4<f32>(arg_1.c.x, 148.0, arg_1.a.c.x, 742.0), -2147483648)), select(select(vec3<bool>(true, false, arg_1.b), vec3<bool>(arg_1.a.a, var_0.x, var_0.x), var_0.x), vec3<bool>(var_0.x, arg_1.b, var_0.x), !vec3<bool>(true, true, var_0.x)), false), func_6(arg_1.a.c, 41564), max(arg_1.c.x, func_5(var_0.zz)) > -(arg_1.a.c.x / arg_0)), !vec3<bool>(true, var_0.x, !arg_1.b));
        loop {
            var var_1 = 1 / u_input.c;
            break;
        }
    }
    let var_0 = Struct_5(false, Struct_4(arg_1.a.b.x), Struct_3(!select(!vec3<bool>(arg_1.b, arg_1.a.a, false), vec3<bool>(arg_1.b, false, true), arg_1.c.x > 868.0), arg_1));
    var var_1 = ceil(max(arg_0 + (arg_1.a.c.x + arg_0), trunc(var_0.c.b.a.c.x) * (1826.0 / 1000.0)) + var_0.c.b.a.c.x);
    let var_2 = !(!var_0.c.a.yx);
    return Struct_3(vec3<bool>(!(!(!var_0.c.a.x)), false, true), arg_1);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<i32>) -> f32 {
    loop {
        let var_0 = ~select(~vec4<u32>(4294967295u | 4294967295u, u_input.d.x, 9234u % u_input.b.x, dot(vec4<u32>(u_input.d.x, u_input.b.x, 16738u, u_input.d.x), vec4<u32>(1u, 90069u, u_input.b.x, u_input.d.x))), abs(~vec4<u32>(u_input.b.x, 44660u, u_input.d.x, 43759u)), select(vec4<bool>(!false, true, !true, true | false), vec4<bool>(any(vec3<bool>(true, false, true)), !false, all(vec4<bool>(true, false, false, false)), !false), all(!vec4<bool>(false, false, true, true))));
    }
    var var_0 = func_7(-1334.0, func_2());
    var var_1 = ((clamp(~vec4<i32>(15613, arg_0.x, -22260, -37788), -vec4<i32>(105896, -1, 1, -1), ~vec4<i32>(arg_1.x, arg_1.x, 12565, 32348)) & ~(-vec4<i32>(arg_0.x, arg_0.x, 1, u_input.a))) / ~clamp(~vec4<i32>(0, arg_1.x, -1, arg_0.x), -vec4<i32>(-15422, arg_0.x, u_input.a, arg_0.x), ~vec4<i32>(arg_0.x, arg_1.x, u_input.a, -2147483648))) % vec4<i32>(~(abs(arg_1.x) + -(-26972)), -22999, clamp(~2147483647, ~(-56139) & -2147483647, (-2147483648 | 2147483647) / (-79791 - 1)), 7033);
    var var_2 = step(floor(-(var_0.b.c.x * var_0.b.c.x)), round(-(-var_0.b.a.c.x)) - func_2().c.x);
    let var_3 = -vec3<i32>(10508 / ~(-1), -(~firstLeadingBit(var_1.x)), ~(-1));
    return 1249.0 - (-var_0.b.c.x * -(1339.0 / -665.0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(select(false, !false, (-(-400.0) + func_1(vec3<i32>(10897, u_input.c, 8773), vec3<i32>(1, u_input.c, u_input.c))) != (step(-100.0, 721.0) - (1000.0 + -473.0))), false);
    let var_1 = Struct_3(select(!(!select(vec3<bool>(var_0.x, true, false), vec3<bool>(var_0.x, false, false), true)), func_6(-vec4<f32>(-255.0, 711.0, -1041.0, -1657.0) * (vec4<f32>(1530.0, -1029.0, 471.0, -2867.0) * vec4<f32>(281.0, 497.0, -651.0, 253.0)), abs(firstTrailingBit(u_input.a))), !(!true)), func_2());
    let var_2 = abs(~(~(-(-vec3<i32>(0, u_input.c, u_input.c)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x, abs(-firstLeadingBit(~vec4<i32>(-2147483648, 22397, -64328, u_input.a))), var_2, var_1.b.a.b.zz);
}

