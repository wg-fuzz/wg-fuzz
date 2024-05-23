// {"0:0":[0,80,72,219,108,180,25,74,92,199,5,47,25,182,60,156,56,208,40,150,33,110,74,124,53,84,83,147,1,175,154,254]}
// Seed: 2927977589037599393

struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: vec4<f32>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<f32>(-1029.0, -230.0));

fn func_6() -> i32 {
    let var_0 = Struct_3(Struct_1(countOneBits(-(1 & u_input.b))));
    switch (dot(u_input.a.zz, firstTrailingBit(vec2<i32>(-20810, -31157) + (vec2<i32>(u_input.a.x, 0) << vec2<u32>(40726u, u_input.c)))) / reverseBits(dot(vec2<i32>(-1, 28384) ^ vec2<i32>(u_input.b, 16792), vec2<i32>(u_input.a.x, var_0.a.a) & vec2<i32>(var_0.a.a, var_0.a.a)) - ((var_0.a.a << u_input.c) * u_input.a.x))) {
        case -5038: {
            global0 = Struct_2(ceil(-global0.a / trunc(vec2<f32>(global0.a.x, -847.0))) + vec2<f32>(ceil(global0.a.x), -ceil(271.0)));
            if (false) {
                global0 = Struct_2(global0.a);
                var var_1 = ~(~(~(~(u_input.c / 13415u))));
                var var_2 = u_input.a.x % (~countOneBits(54992) >> u_input.c);
                var var_3 = Struct_4(select(true, all(select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), !vec2<bool>(false, true), !vec2<bool>(false, false))), any(!vec2<bool>(true, true))), Struct_2(global0.a), -select(vec4<f32>(-331.0, -global0.a.x, -214.0, global0.a.x - global0.a.x), ceil(min(vec4<f32>(global0.a.x, global0.a.x, global0.a.x, -417.0), vec4<f32>(global0.a.x, global0.a.x, 1691.0, -205.0))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), false)));
            }
        }
        case 5502: {
        }
        case 69421: {
            if (false) {
                return u_input.b;
            }
        }
        case 21360: {
            let var_1 = ~min(u_input.a.xz, u_input.a.zz & u_input.a.yz);
            var var_2 = ~min(u_input.a, ~(-vec3<i32>(var_0.a.a, var_0.a.a, u_input.b)));
        }
        default: {
        }
    }
    global0 = Struct_2(-floor(step(max(global0.a, global0.a), -global0.a)));
    switch (firstTrailingBit(-34255 / clamp(-48242, var_0.a.a, -42782)) - firstLeadingBit(-40480)) {
        case -31367: {
            switch (firstTrailingBit(var_0.a.a | ((var_0.a.a ^ 10944) - 2147483647))) {
                default: {
                    global0 = Struct_2(-select(floor(vec2<f32>(-987.0, -1234.0)), global0.a, !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))));
                    var var_1 = ~clamp(2147483647, firstTrailingBit(var_0.a.a), u_input.b | 56222);
                    var var_2 = Struct_3(Struct_1(14664));
                    var_2 = var_0;
                }
            }
            var var_1 = Struct_3(var_0.a);
            var var_2 = u_input.a;
            var_2 = max(vec3<i32>(firstTrailingBit(clamp(u_input.b, u_input.b, var_0.a.a) ^ (1 | var_2.x)), -var_0.a.a, 2147483647), ~min(firstTrailingBit(vec3<i32>(3490, 1, var_0.a.a)), firstTrailingBit(vec3<i32>(var_2.x, -1, u_input.b)) << ~vec3<u32>(1u, u_input.c, u_input.c)));
        }
        case 20201: {
            var var_1 = abs(vec4<u32>(18202u, 7743u % ~(193u % 0u), 1u, ~abs(u_input.c) * 32175u));
            if (true) {
                let var_2 = var_1.zy;
            }
            var_1 = ~(~(~vec4<u32>(dot(vec3<u32>(var_1.x, u_input.c, 0u), var_1.wyw), 52192u & u_input.c, abs(4294967295u), u_input.c >> var_1.x)));
        }
        default: {
        }
    }
    var var_1 = vec2<bool>(!any(!vec3<bool>(false, true, true)), any(vec3<bool>(any(vec4<bool>(true, false, false, true)), all(vec4<bool>(true, true, false, true)), !(true | true))));
    return -2147483648;
}

fn func_5(arg_0: vec3<u32>, arg_1: vec4<i32>) -> vec2<u32> {
    let var_0 = vec2<bool>(select(-(-global0.a.x) >= -163.0, true, !(!(!false))), !all(vec3<bool>(31668u >= arg_0.x, false || false, false)));
    global0 = Struct_2(global0.a);
    global0 = Struct_2(ceil(vec2<f32>(-(-1134.0), select(-533.0, 1079.0, true))) + global0.a);
    switch (func_6() ^ firstTrailingBit(-max(u_input.a.x, arg_1.x))) {
        default: {
            loop {
                let var_1 = global0.a.x;
                break;
            }
            global0 = Struct_2(-select(round(global0.a - global0.a), -global0.a, !vec2<bool>(var_0.x, true)));
            for (; ; ) {
            }
            var var_1 = global0.a.x;
        }
    }
    var var_1 = select(~arg_0, arg_0, true);
    return ~min(firstTrailingBit(abs(vec2<u32>(arg_0.x, arg_0.x)) & abs(vec2<u32>(u_input.c, arg_0.x))), firstTrailingBit(vec2<u32>(39721u >> 16950u, firstTrailingBit(u_input.c))));
}

fn func_4(arg_0: bool, arg_1: vec4<f32>) -> i32 {
    if (!all(select(vec4<bool>(any(vec3<bool>(false, false, arg_0)), !true, !arg_0, all(vec4<bool>(false, arg_0, true, arg_0))), !select(vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0), arg_0), !(!true)))) {
    }
    var var_0 = abs(select(vec4<u32>(u_input.c, 4294967295u >> select(u_input.c, u_input.c, true), ~17483u, 6944u), ~countOneBits(vec4<u32>(1u, u_input.c, 111494u, u_input.c)) | min(vec4<u32>(u_input.c, 1603u, 0u, u_input.c) | vec4<u32>(9078u, 70948u, 60062u, 1u), vec4<u32>(0u, u_input.c, u_input.c, 0u)), false));
    switch (-23508) {
        case -1: {
            let var_1 = ~(~func_5(var_0.xxw, ~vec4<i32>(u_input.b, u_input.a.x, -2147483648, u_input.b)));
            if (all(vec3<bool>(arg_0, !true, arg_0 != (!arg_0 | arg_0)))) {
            }
            var var_2 = Struct_3(Struct_1(u_input.b));
            if (!any(vec2<bool>(select(arg_0, arg_0, global0.a.x <= 115.0), true))) {
                let var_3 = arg_0;
                var_0 = ~(~reverseBits(clamp(vec4<u32>(31490u, 4294967295u, 1u, var_0.x), ~vec4<u32>(22325u, 4294967295u, var_1.x, 4294967295u), vec4<u32>(u_input.c, u_input.c, var_1.x, u_input.c) ^ vec4<u32>(var_1.x, 0u, 4294967295u, var_0.x))));
                var_2 = Struct_3(Struct_1(firstTrailingBit(~(~u_input.a.x))));
            }
            for (var var_3: i32; ; var_3 += 1) {
                return firstTrailingBit(u_input.a.x);
            }
        }
        default: {
            var var_1 = Struct_3(Struct_1(max(reverseBits(u_input.a.x) ^ -5735, 2147483647)));
            for (var var_2 = -1; !all(!vec4<bool>(all(vec4<bool>(arg_0, arg_0, arg_0, arg_0)), 4294967295u > 38429u, any(vec3<bool>(arg_0, false, arg_0)), !arg_0)); global0 = Struct_2(global0.a * vec2<f32>(select(min(arg_1.x, -449.0), 353.0, !arg_0), -281.0))) {
                var_2 = abs(1 >> 30326u);
                var var_3 = !true || !(!(!false));
                let var_4 = ~(~var_0.yyy);
                let var_5 = Struct_2(-vec2<f32>(arg_1.x, -(-arg_1.x)));
                break;
            }
            var var_2 = Struct_3(Struct_1(firstTrailingBit(-1)));
            for (var var_3 = -44977; var_3 != -2147483648; ) {
                var var_4 = vec3<bool>(true, false, true);
                return u_input.a.x + var_2.a.a;
            }
        }
    }
    let var_1 = Struct_2(-global0.a - abs(-(-vec2<f32>(arg_1.x, global0.a.x))));
    if (~(~u_input.c / firstLeadingBit(firstTrailingBit(45950u))) < u_input.c) {
        global0 = Struct_2(exp2(vec2<f32>(select(-global0.a.x, select(var_1.a.x, -481.0, arg_0), arg_0), select(1421.0, arg_1.x, false) + global0.a.x)));
        var var_2 = Struct_3(Struct_1(u_input.b));
        for (var var_3 = 27242; ; ) {
            var var_4 = ~var_0.x;
        }
    }
    return -(u_input.a.x % 0);
}

fn func_7(arg_0: f32, arg_1: vec3<bool>, arg_2: bool) -> Struct_2 {
    global0 = Struct_2(global0.a);
    var var_0 = Struct_4(any(vec2<bool>(all(vec4<bool>(arg_1.x, arg_1.x, false, true)), all(select(arg_1, arg_1, arg_1)))), Struct_2(global0.a), -(select(vec4<f32>(-278.0, -552.0, arg_0, 470.0) / vec4<f32>(528.0, global0.a.x, 634.0, arg_0), -vec4<f32>(1553.0, arg_0, arg_0, -1063.0), !arg_2) * sign(vec4<f32>(-179.0, global0.a.x, -337.0, arg_0) / vec4<f32>(-1238.0, global0.a.x, -467.0, global0.a.x))));
    for (var var_1 = -2147483648; false; var_1 -= 1) {
        loop {
            global0 = var_0.b;
            break;
        }
        if (true) {
            let var_2 = Struct_4(var_0.a, Struct_2(-(-(vec2<f32>(1220.0, var_0.c.x) + vec2<f32>(var_0.c.x, -128.0)))), exp2(-(floor(var_0.c) - sign(var_0.c))));
            break;
        }
        switch (u_input.a.x) {
            default: {
                let var_2 = var_0.c;
            }
        }
        for (var var_2 = -15998; ; var_2 += 1) {
            global0 = Struct_2(min(min(step(-vec2<f32>(1000.0, 1000.0), global0.a), -floor(var_0.b.a)), -vec2<f32>(-arg_0, 448.0 + global0.a.x)));
            let var_3 = Struct_3(Struct_1(u_input.b));
            var var_4 = var_0.b;
        }
    }
    global0 = Struct_2(ceil(global0.a));
    var var_1 = u_input.a;
    return Struct_2(global0.a + -step(-vec2<f32>(1000.0, 434.0), floor(var_0.b.a)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<u32>, arg_2: vec4<bool>, arg_3: Struct_4) -> u32 {
    if (true) {
        var var_0 = Struct_2(-(-round(-vec2<f32>(global0.a.x, -1415.0))));
    }
    global0 = func_7(floor(exp2(global0.a.x) * -1882.0), vec3<bool>(arg_2.x, false, true), all(arg_2.yx) & ((~(-2212) * func_4(false, vec4<f32>(global0.a.x, arg_3.c.x, global0.a.x, 1000.0))) > (arg_0.x ^ -2147483648)));
    let var_0 = Struct_1(11871);
    var var_1 = arg_3.c.wxx;
    var var_2 = true;
    return firstTrailingBit(abs(37603u) ^ clamp(4294967295u, 418u, dot(vec3<u32>(36058u, 1u, u_input.c), vec3<u32>(arg_1.x, arg_1.x, u_input.c)))) ^ clamp(u_input.c + 39943u, ~firstLeadingBit(~2164u), u_input.c & 68368u);
}

fn func_2(arg_0: vec4<bool>, arg_1: bool, arg_2: vec4<u32>) -> vec4<bool> {
    if (2147483647 != u_input.b) {
        if (arg_2.x > abs(~func_3(vec4<i32>(-8288, -9056, 2147483647, u_input.b), vec2<u32>(4294967295u, 8922u), arg_0, Struct_4(arg_0.x, Struct_2(vec2<f32>(global0.a.x, -504.0)), vec4<f32>(global0.a.x, -1000.0, -145.0, global0.a.x))) / u_input.c)) {
            global0 = Struct_2(-trunc(step(vec2<f32>(447.0, 1825.0), vec2<f32>(1258.0, global0.a.x) * vec2<f32>(1035.0, global0.a.x))));
            global0 = Struct_2(global0.a);
            global0 = Struct_2(round(-func_7(1000.0, arg_0.yyy, false).a) - -vec2<f32>(global0.a.x, 958.0));
            global0 = func_7(1000.0, select(select(!arg_0.yzx, vec3<bool>(true, arg_1, arg_0.x), arg_0.wyy), vec3<bool>(!true, select(arg_0.x, any(arg_0.xz), !false), all(vec2<bool>(arg_0.x, arg_0.x)) == (true | true)), vec3<bool>((global0.a.x > global0.a.x) || any(arg_0), -global0.a.x > global0.a.x, false)), true);
        }
        global0 = Struct_2(global0.a);
        for (var var_0 = select(4696 << abs(reverseBits(u_input.c) - arg_2.x), select(u_input.b, -21987 * func_6(), arg_0.x), arg_0.x); var_0 >= 1; global0 = func_7(-global0.a.x, !arg_0.www, false | !(50608u == 1u))) {
        }
        let var_0 = Struct_5(Struct_4(arg_0.x, func_7(sign(global0.a.x), vec3<bool>(!arg_0.x, arg_1, !false), arg_1), -vec4<f32>(global0.a.x, global0.a.x, global0.a.x, global0.a.x) + round(-vec4<f32>(global0.a.x, -845.0, 314.0, -623.0))));
    }
    loop {
        for (; arg_0.x; ) {
            continue;
        }
    }
    var var_0 = ~u_input.a.x;
    global0 = Struct_2(-vec2<f32>(-global0.a.x / (global0.a.x + -796.0), -global0.a.x - global0.a.x));
    loop {
        if (arg_1) {
            let var_1 = Struct_1((u_input.b * u_input.b) ^ ~(-7699));
            break;
        }
        let var_1 = -43994 / u_input.b;
        var_0 = -65557;
    }
    return vec4<bool>(arg_1 | false, arg_0.x || (0 > -1), any(vec4<bool>(true, arg_1, true, any(!vec2<bool>(arg_1, false)))), arg_0.x || any(arg_0));
}

fn func_1() -> Struct_2 {
    global0 = Struct_2(global0.a);
    if (!(!any(vec4<bool>(all(vec3<bool>(false, false, false)), all(vec3<bool>(true, false, false)), -2147483648 < u_input.a.x, !true)))) {
    }
    var var_0 = vec3<f32>(step(global0.a.x, -283.0), -345.0, -1000.0);
    var var_1 = select(select(select(select(!vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), !vec4<bool>(true, false, true, false)), select(func_2(vec4<bool>(false, false, false, false), false, vec4<u32>(u_input.c, 0u, u_input.c, 1u)), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false)), true), select(vec4<bool>(false, false, false, true), !vec4<bool>(false, false, true, false), true)), !func_2(vec4<bool>(true, true, true, false), true, vec4<u32>(u_input.c, 0u, 4294967295u, u_input.c)), !(!false) || false), vec4<bool>(!((-739.0 > global0.a.x) || (false || false)), var_0.x > -global0.a.x, all(func_2(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false)), func_2(vec4<bool>(false, false, false, true), false, vec4<u32>(4294967295u, 59961u, 1u, u_input.c)).x, vec4<u32>(0u, u_input.c, u_input.c, 13065u) & vec4<u32>(17059u, 4294967295u, u_input.c, 0u)).wwy), 419.0 >= -243.0), select(vec4<bool>(true, !true, any(!vec2<bool>(false, true)), !true), !vec4<bool>(false & false, !false, false, any(vec4<bool>(true, true, true, true))), select(vec4<bool>(false, any(vec2<bool>(true, false)), false, all(vec4<bool>(false, false, true, true))), select(!vec4<bool>(false, true, false, true), !vec4<bool>(false, false, false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), false)), func_2(vec4<bool>(true, false, false, true), true && true, select(vec4<u32>(u_input.c, 1u, u_input.c, u_input.c), vec4<u32>(43428u, 89868u, u_input.c, 1u), true)))));
    for (var var_2: i32; var_2 <= 25671; ) {
        if (var_1.x) {
            let var_3 = Struct_3(Struct_1(2147483647));
            var var_4 = vec2<bool>(true, var_1.x);
            var_4 = !var_1.ww;
            var_1 = func_2(select(select(vec4<bool>(true, !false, !var_1.x, var_1.x), func_2(!vec4<bool>(var_4.x, false, false, var_1.x), !true, max(vec4<u32>(0u, u_input.c, u_input.c, u_input.c), vec4<u32>(98846u, u_input.c, 0u, 2393u))), vec4<bool>(var_1.x, var_4.x, !var_1.x, all(vec2<bool>(var_4.x, false)))), vec4<bool>(!(!true), !(true | true), true, var_4.x), func_2(vec4<bool>(all(vec2<bool>(false, var_1.x)), var_4.x == false, true || true, var_1.x), select(var_4.x, var_1.x, var_4.x) || (u_input.c != 0u), vec4<u32>(dot(vec4<u32>(u_input.c, u_input.c, u_input.c, 57719u), vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c)), ~55354u, 36591u - u_input.c, func_3(vec4<i32>(-1, var_3.a.a, var_3.a.a, u_input.b), vec2<u32>(40665u, 22265u), vec4<bool>(false, var_4.x, var_1.x, var_1.x), Struct_4(var_1.x, Struct_2(global0.a), vec4<f32>(-177.0, 2140.0, 1460.0, 379.0)))))), var_4.x, vec4<u32>(~dot(vec4<u32>(0u, 1761u, 59730u, u_input.c), vec4<u32>(u_input.c, 24047u, 1u, 4294967295u)) / u_input.c, 25293u, ~u_input.c / ~u_input.c, dot(vec4<u32>(u_input.c * u_input.c, reverseBits(u_input.c), u_input.c % 23896u, 0u), select(reverseBits(vec4<u32>(u_input.c, 3355u, u_input.c, 1u)), ~vec4<u32>(u_input.c, 28084u, u_input.c, 4294967295u), vec4<bool>(true, false, var_1.x, true)))));
            var_0 = trunc(-vec3<f32>(sign(var_0.x), -999.0, var_0.x));
        }
        let var_3 = Struct_3(Struct_1(firstLeadingBit(32270) >> ~u_input.c));
        let var_4 = ceil(trunc((vec3<f32>(329.0, global0.a.x, var_0.x) * vec3<f32>(1035.0, var_0.x, 903.0)) - (-vec3<f32>(-2261.0, 147.0, global0.a.x) - -vec3<f32>(global0.a.x, global0.a.x, -1308.0))));
    }
    return func_7(827.0, !var_1.wyz, !all(var_1.yx));
}

fn func_8(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: Struct_2) -> f32 {
    let var_0 = func_1();
    global0 = func_7(floor(-1761.0), !select(vec3<bool>(all(vec4<bool>(true, true, false, true)), global0.a.x < 306.0, 52161u == u_input.c), vec3<bool>(-602.0 <= var_0.a.x, true, -641.0 <= -761.0), !true), true);
    switch (firstLeadingBit(func_4(false, vec4<f32>(-floor(arg_2.a.x), var_0.a.x, func_1().a.x * select(1000.0, arg_2.a.x, false), -(-841.0) - 1489.0)))) {
        case -47205: {
            global0 = arg_2;
        }
        default: {
            global0 = arg_2;
            global0 = arg_2;
            for (var var_1: i32; var_1 <= 3163; var_1 += 1) {
                var var_2 = Struct_2(select(round(round(var_0.a) + -vec2<f32>(global0.a.x, -1272.0)), -(vec2<f32>(arg_2.a.x, -1000.0) * (arg_2.a / vec2<f32>(arg_2.a.x, var_0.a.x))), !false));
                var var_3 = Struct_4(any(!vec4<bool>(any(vec2<bool>(true, false)), !false, -2147483648 <= arg_1.x, false)), Struct_2(global0.a), exp2(-(round(vec4<f32>(global0.a.x, 1039.0, var_0.a.x, 1000.0)) + vec4<f32>(arg_2.a.x, arg_2.a.x, 1000.0, global0.a.x))));
                break;
            }
        }
    }
    for (var var_1 = u_input.a.x; var_1 <= -1; var_1 -= 1) {
        break;
    }
    if (any(!(!(!vec2<bool>(true, true))))) {
        var var_1 = Struct_4(!(!(~u_input.c < ~1u)), arg_2, vec4<f32>(var_0.a.x, 367.0, arg_2.a.x * -1449.0, -((var_0.a.x - 1000.0) / 571.0)));
        let var_2 = -(-812.0);
    }
    return -global0.a.x - ((global0.a.x * (func_7(var_0.a.x, vec3<bool>(true, false, true), true).a.x - abs(global0.a.x))) * min(1205.0, -743.0));
}

@compute
@workgroup_size(1)
fn main() {
    if (-(-(-1380.0 - global0.a.x)) <= 1401.0) {
        let var_0 = vec2<f32>(-451.0, func_8(abs(~vec4<u32>(u_input.c, 77415u, 4294967295u, u_input.c) << (vec4<u32>(1u, u_input.c, u_input.c, u_input.c) >> vec4<u32>(67263u, 78905u, 4294967295u, u_input.c))), -vec4<i32>(-234, -22323 & 15168, -1, ~u_input.b), func_1()));
        var var_1 = Struct_5(Struct_4(any(vec4<bool>(true, false, true, true)) | !any(vec4<bool>(true, true, true, false)), func_1(), -ceil(vec4<f32>(-629.0, 809.0, 611.0, global0.a.x))));
        for (var var_2 = 2147483647; !var_1.a.a; ) {
            let var_3 = abs((0u ^ ~(u_input.c % u_input.c)) - dot(~(~vec3<u32>(u_input.c, u_input.c, 0u)), ~(~vec3<u32>(u_input.c, u_input.c, u_input.c))));
            continue;
        }
        var var_2 = (48401 == dot(~(vec4<i32>(-1, u_input.b, -34808, -2147483648) % vec4<i32>(u_input.b, 1, u_input.b, u_input.a.x)), ~vec4<i32>(0, -28640, u_input.a.x, u_input.b) + -vec4<i32>(2147483647, u_input.b, -1, u_input.b))) & (-1291.0 < global0.a.x);
    }
    var var_0 = func_1();
    var var_1 = (~5459u / (u_input.c / (u_input.c >> dot(vec4<u32>(14655u, u_input.c, u_input.c, u_input.c), vec4<u32>(4294967295u, 0u, u_input.c, u_input.c))))) ^ abs(u_input.c - (33190u ^ ~4294967295u));
    switch (abs(~dot(u_input.a, ~(-u_input.a)))) {
        case -2147483648: {
            if ((((u_input.b ^ (u_input.b - 1426)) ^ u_input.a.x) >> ~select(35247u, 29431u, all(vec4<bool>(true, true, false, false)))) != u_input.b) {
                var_0 = func_7(-(-(-var_0.a.x) + var_0.a.x), select(vec3<bool>(all(vec4<bool>(false, false, true, false)), (u_input.c ^ u_input.c) == ~u_input.c, any(!vec2<bool>(true, false))), vec3<bool>(all(vec2<bool>(true, true)), false, all(vec4<bool>(false, false, false, true)) != all(vec4<bool>(false, false, true, true))), select(5663u, u_input.c, 5666u != u_input.c) < abs(4294967295u)), -(~(-34961)) != func_6());
                var_1 = ~(abs(abs(1u) ^ 17412u) + dot(~vec4<u32>(0u, 0u, 4294967295u, 0u) ^ countOneBits(vec4<u32>(u_input.c, 4294967295u, 1u, u_input.c)), vec4<u32>(u_input.c, u_input.c / u_input.c, ~u_input.c, countOneBits(u_input.c))));
                var var_2 = select(var_0.a.x, -1101.0 + floor(-var_0.a.x + global0.a.x), all(select(func_2(!vec4<bool>(false, true, false, true), func_2(vec4<bool>(true, false, false, false), false, vec4<u32>(u_input.c, 23838u, 2211u, 9006u)).x, vec4<u32>(4294967295u, 1u, u_input.c, u_input.c) + vec4<u32>(0u, 8268u, 5454u, u_input.c)).wx, !(!vec2<bool>(true, false)), !(!true))));
                var_0 = func_1();
                return;
            }
            if (-(max(global0.a.x, floor(global0.a.x)) + global0.a.x) <= -809.0) {
                var_0 = func_7(195.0, !(!(!(!vec3<bool>(true, true, true)))), any(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)) != func_2(select(vec4<bool>(true, true, false, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), false), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), false)), ~u_input.c > 0u, ~vec4<u32>(u_input.c, 57776u, u_input.c, 30732u)).x);
                let var_2 = global0.a.x;
                var var_3 = var_0.a.x;
                let var_4 = u_input.a >> ~(~(~max(vec3<u32>(17981u, 34792u, u_input.c), vec3<u32>(41861u, u_input.c, u_input.c))));
            }
            var var_2 = Struct_2(var_0.a);
            for (var var_3 = -3491; var_3 <= 0; ) {
                var_2 = func_1();
                var var_4 = global0.a.x;
                break;
            }
            var var_3 = Struct_5(Struct_4(all(select(!vec3<bool>(true, true, false), !vec3<bool>(false, false, false), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false))), Struct_2(-select(vec2<f32>(-756.0, var_0.a.x), var_2.a, false)), vec4<f32>(func_1().a.x, global0.a.x - var_2.a.x, 104.0, var_0.a.x + global0.a.x) * -(-vec4<f32>(-1204.0, var_2.a.x, var_2.a.x, var_2.a.x))));
        }
        case -1: {
            global0 = func_7(var_0.a.x, select(func_2(vec4<bool>(all(vec4<bool>(true, true, true, false)), func_2(vec4<bool>(false, false, false, false), false, vec4<u32>(u_input.c, 26325u, u_input.c, u_input.c)).x, select(false, true, true), !true), all(vec4<bool>(true, true, false, true)) && select(false, false, true), max(~vec4<u32>(22083u, 20880u, 0u, 0u), ~vec4<u32>(u_input.c, 1u, 11053u, u_input.c))).yyx, !select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false), 1078.0 > 1570.0), func_2(!vec4<bool>(true, true, true, true), true, vec4<u32>(u_input.c, 4857u ^ u_input.c, u_input.c, u_input.c * u_input.c)).x), !all(func_2(!vec4<bool>(true, false, true, true), false, firstLeadingBit(vec4<u32>(u_input.c, 0u, 13140u, 1u)))));
            if (true) {
                var_1 = 7345u;
                var var_2 = Struct_4(true & (!(!true) || !all(vec4<bool>(true, false, false, false))), func_7(sign(-global0.a.x), vec3<bool>(any(func_2(vec4<bool>(true, false, true, true), true, vec4<u32>(u_input.c, 6011u, u_input.c, u_input.c)).zwz), false, !all(vec4<bool>(false, false, false, false))), any(func_2(!vec4<bool>(false, false, true, true), -376.0 < -950.0, abs(vec4<u32>(4294967295u, 0u, u_input.c, 0u))).yxw)), step(-(vec4<f32>(global0.a.x, -1439.0, global0.a.x, global0.a.x) + vec4<f32>(var_0.a.x, -139.0, var_0.a.x, global0.a.x)) + (vec4<f32>(global0.a.x, -747.0, -425.0, -1484.0) + step(vec4<f32>(1262.0, 547.0, -642.0, var_0.a.x), vec4<f32>(-123.0, -220.0, -281.0, 762.0))), (trunc(vec4<f32>(var_0.a.x, -563.0, -181.0, 1239.0)) * -vec4<f32>(var_0.a.x, var_0.a.x, -245.0, var_0.a.x)) * vec4<f32>(func_8(vec4<u32>(29601u, 4294967295u, 1u, u_input.c), vec4<i32>(u_input.b, 8553, 26790, 8713), Struct_2(vec2<f32>(206.0, 517.0))), 1215.0 + 2535.0, global0.a.x, -var_0.a.x)));
            }
            var_1 = ~(countOneBits(u_input.c) - countOneBits(u_input.c)) & ~clamp(~(~7170u), u_input.c, 51259u / 4294967295u);
            let var_2 = u_input.a;
            global0 = Struct_2(-(global0.a * (var_0.a + vec2<f32>(-690.0, -586.0))));
        }
        default: {
            var var_2 = Struct_3(Struct_1(dot(-(-vec3<i32>(0, u_input.a.x, u_input.a.x)), select(vec3<i32>(u_input.b, 55887, 12886), u_input.a, vec3<bool>(false, true, true)) % u_input.a)));
            let var_3 = func_7((global0.a.x / -(-251.0 * 632.0)) * global0.a.x, vec3<bool>(select(any(vec4<bool>(true, true, true, true)), select(true, false, false) && (false & true), true & true), all(!(!vec2<bool>(true, false))), !false), !(!all(func_2(vec4<bool>(true, false, true, false), true, vec4<u32>(63845u, 23760u, u_input.c, u_input.c)).xy)));
        }
    }
    var var_2 = Struct_4(true, func_1(), min(-(-vec4<f32>(var_0.a.x, var_0.a.x, -605.0, var_0.a.x)), round(vec4<f32>(var_0.a.x, global0.a.x, global0.a.x, 467.0) + select(vec4<f32>(var_0.a.x, -580.0, 333.0, 1923.0), vec4<f32>(-2871.0, global0.a.x, 544.0, -105.0), vec4<bool>(false, true, true, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(~clamp(~select(vec4<u32>(u_input.c, 43705u, 1u, u_input.c), vec4<u32>(u_input.c, 117905u, 4294967295u, u_input.c), var_2.a), max(vec4<u32>(12789u, u_input.c, 17638u, 28301u), vec4<u32>(0u, 4294967295u, 83432u, u_input.c)) * vec4<u32>(u_input.c, 52455u, 0u, u_input.c), reverseBits(firstTrailingBit(vec4<u32>(31683u, u_input.c, 4294967295u, 1u)))), vec2<i32>(0, clamp(u_input.b, -61328, -u_input.b) & -(~27043)), vec4<f32>(-global0.a.x, var_0.a.x * 1179.0, global0.a.x, ((-1784.0 * 1477.0) * var_2.b.a.x) * func_1().a.x));
}

