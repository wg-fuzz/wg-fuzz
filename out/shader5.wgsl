// {"0:0":[5,241,83,114,214,28,254,71,81,20,63,12,245,99,31,3,90,100,126,126,234,168,222,44,94,190,201,157,225,86,176,63]}
// Seed: 4137613152418926978

struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: f32,
    b: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: bool,
    c: vec3<f32>,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 8>;

fn func_6(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: u32) -> i32 {
    let var_0 = vec4<bool>(false, arg_1.c.d, true, any(!select(vec4<bool>(arg_1.a.b.d, arg_1.c.d, arg_1.c.d, false), vec4<bool>(arg_1.a.b.d, true, true, arg_1.a.b.d), true)) || !any(vec4<bool>(arg_1.c.d, true, false, arg_1.c.d)));
    let var_1 = arg_1.c;
    global0 = array<vec2<i32>, 8>();
    var var_2 = arg_0.wzx / -arg_0.wxx;
    if (any(vec4<bool>(!any(!var_0.xy), !all(select(vec3<bool>(var_0.x, false, false), var_0.zyz, vec3<bool>(false, arg_1.c.d, true))), arg_1.c.d, all(var_0.yxy)))) {
        let var_3 = vec3<u32>(4294967295u, ~(~arg_1.a.b.a.x), ~clamp(abs(~arg_2), arg_2, ~(arg_1.a.b.a.x ^ arg_2)));
        var var_4 = arg_1.a.b.c.x;
        var_4 = u_input.a.x;
        var var_5 = select(arg_1.c.c.xyy, arg_1.b.zxy | (vec3<i32>(-u_input.a.x, dot(vec4<i32>(var_1.c.x, u_input.a.x, 0, arg_1.b.x), u_input.a), var_1.c.x) & ~(-vec3<i32>(-33384, -56890, u_input.a.x))), vec3<bool>(all(vec4<bool>(var_1.d, !true, true, select(arg_1.a.b.d, false, arg_1.a.b.d))), !var_1.d, true));
    }
    return ~0;
}

fn func_5() -> Struct_4 {
    let var_0 = Struct_2(false, Struct_1(vec2<u32>(59460u, u_input.c), select(u_input.a.yx, global0[~4294967295u], !(!false)), vec4<i32>(-(-1 - -9844), select(-2147483648, u_input.a.x, true) / (u_input.a.x * -7009), 1 | -1, u_input.a.x), all(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), false))), 16180u);
    let var_1 = var_0.b.a.x;
    var var_2 = Struct_4(var_0, vec4<i32>(countOneBits(dot(var_0.b.c & u_input.a, u_input.a)), dot(-(vec4<i32>(-9491, var_0.b.c.x, -16632, -31699) * var_0.b.c), ~var_0.b.c), (0 & ~1) & ((2147483647 / 0) << (4294967295u | 4294967295u)), (var_0.b.b.x - -2147483648) / ((-1 / u_input.a.x) - var_0.b.b.x)), var_0.b);
    for (var var_3 = clamp(dot(var_0.b.c.yxx ^ -select(var_0.b.c.xww, vec3<i32>(u_input.a.x, var_2.b.x, var_0.b.b.x), vec3<bool>(true, var_2.c.d, var_0.a)), var_2.a.b.c.yxy >> select(~vec3<u32>(24551u, 36504u, 8192u), vec3<u32>(var_2.a.c, var_2.a.c, 0u), select(vec3<bool>(var_0.a, var_0.b.d, var_0.a), vec3<bool>(true, false, var_2.a.a), vec3<bool>(var_0.a, var_0.b.d, false)))), max(dot(vec3<i32>(~var_0.b.c.x, var_0.b.c.x, -2147483648), clamp(vec3<i32>(1, -2147483648, 0), vec3<i32>(var_0.b.c.x, 0, 15402), var_0.b.c.zyy)), ~func_6(-vec4<f32>(710.0, 744.0, -1000.0, -351.0), Struct_4(var_2.a, var_0.b.c, var_0.b), 0u)), -min(u_input.a.x << ~4294967295u, -18804 * abs(1))); !all(select(vec3<bool>(true, var_0.b.d, false), !vec3<bool>(var_2.c.d, var_2.c.d, var_2.a.b.d), vec3<bool>(false, true, true))) & !false; var_3 += 1) {
        let var_4 = 50401u;
        var var_5 = !((var_2.a.b.a.x <= (~31004u << ~5688u)) | all(select(!vec4<bool>(true, var_2.c.d, false, true), !vec4<bool>(false, false, var_0.a, var_0.b.d), !vec4<bool>(var_0.a, false, true, true))));
        var var_6 = Struct_3(-358.0, countOneBits(26617));
        var var_7 = var_0.b.a.x;
    }
    var_2 = Struct_4(Struct_2(any(!select(vec2<bool>(var_0.b.d, false), vec2<bool>(var_2.c.d, true), vec2<bool>(var_2.c.d, false))), var_0.b, 24665u), ((vec4<i32>(0, -46452, var_2.c.c.x, u_input.a.x) / (vec4<i32>(var_0.b.c.x, -46707, -2147483648, -52818) % var_0.b.c)) << vec4<u32>(countOneBits(u_input.b), 60568u, var_0.c, var_2.a.c)) + ~(countOneBits(var_2.b) & (vec4<i32>(-1, var_2.b.x, 1, var_0.b.b.x) - vec4<i32>(2147483647, -11869, u_input.a.x, -2147483648))), Struct_1(var_0.b.a, vec2<i32>(~u_input.a.x, var_2.c.b.x), ~(-max(vec4<i32>(7723, var_2.a.b.c.x, -2271, var_2.c.b.x), vec4<i32>(var_0.b.c.x, u_input.a.x, var_2.a.b.b.x, var_2.b.x))), any(vec3<bool>(any(vec3<bool>(var_2.c.d, false, false)), !var_0.a, var_2.c.b.x != u_input.a.x))));
    return Struct_4(Struct_2(false, var_0.b, firstTrailingBit(var_0.b.a.x << var_1)), ~var_2.a.b.c & -(var_2.a.b.c % var_0.b.c), Struct_1(~(var_0.b.a & vec2<u32>(var_0.b.a.x, 0u)), var_0.b.c.yw, var_2.b, !any(vec3<bool>(true, false, true))));
}

fn func_7(arg_0: Struct_4, arg_1: i32, arg_2: u32, arg_3: vec2<i32>) -> f32 {
    global0 = array<vec2<i32>, 8>();
    loop {
        return min(select(293.0, 540.0 / -round(-162.0), false), 793.0 + -(-(-887.0 * -1000.0)));
    }
    let var_0 = abs(abs(max(~arg_0.c.a.x, arg_2 / arg_2))) / dot(vec2<u32>(~reverseBits(arg_2), ~dot(arg_0.c.a, arg_0.c.a)), vec2<u32>(4294967295u, ~79012u));
    return -(-1387.0);
}

fn func_8(arg_0: f32) -> Struct_5 {
    let var_0 = Struct_2(!(any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))) | !(false || false)), func_5().c, abs(~37936u));
    let var_1 = func_7(func_5(), -((~1 & u_input.a.x) << 36503u), u_input.b, vec2<i32>(~(var_0.b.b.x + u_input.a.x), 2147483647));
    global0 = array<vec2<i32>, 8>();
    global0 = array<vec2<i32>, 8>();
    global0 = array<vec2<i32>, 8>();
    return Struct_5(true, !any(select(!vec2<bool>(false, var_0.a), select(vec2<bool>(var_0.a, false), vec2<bool>(var_0.a, true), false), select(vec2<bool>(false, var_0.b.d), vec2<bool>(true, var_0.b.d), true))), -(vec3<f32>(-1000.0 / var_1, -464.0, -1401.0 * -741.0) * -(vec3<f32>(1000.0, -1090.0, -1449.0) / vec3<f32>(-1071.0, -720.0, 404.0))), func_5());
}

fn func_9(arg_0: vec4<f32>, arg_1: Struct_5, arg_2: vec2<u32>) -> Struct_3 {
    var var_0 = !arg_1.b;
    var var_1 = ~(~(~32811u));
    for (; !arg_1.b; ) {
        var var_2 = Struct_3(arg_0.x, 15263);
        switch (~(-var_2.b)) {
            case -1: {
                continue;
            }
            default: {
                let var_3 = select(select(vec3<bool>(arg_1.b, false, !false), select(vec3<bool>(!arg_1.a, !true, !arg_1.d.c.d), !select(vec3<bool>(false, false, arg_1.a), vec3<bool>(arg_1.d.a.a, false, arg_1.d.a.b.d), vec3<bool>(false, true, true)), select(false, all(vec3<bool>(arg_1.a, true, arg_1.b)), false)), vec3<bool>(true, (arg_1.a | arg_1.a) & (arg_1.d.a.b.b.x > 351), all(select(vec2<bool>(arg_1.d.c.d, arg_1.a), vec2<bool>(arg_1.b, true), vec2<bool>(false, arg_1.d.a.b.d))))), select(select(!vec3<bool>(true, false, false), !vec3<bool>(arg_1.a, true, true), select(vec3<bool>(false, arg_1.d.a.b.d, arg_1.d.c.d), select(vec3<bool>(arg_1.d.a.a, true, true), vec3<bool>(false, arg_1.d.a.b.d, arg_1.b), true), !vec3<bool>(arg_1.d.a.a, arg_1.d.a.a, true))), !vec3<bool>(!arg_1.d.a.a, !arg_1.b, !arg_1.b), select(select(select(vec3<bool>(arg_1.d.c.d, arg_1.b, arg_1.b), vec3<bool>(true, arg_1.a, false), vec3<bool>(false, true, true)), !vec3<bool>(arg_1.a, true, arg_1.b), any(vec2<bool>(arg_1.b, false))), vec3<bool>(true & arg_1.a, arg_1.d.a.b.d, all(vec2<bool>(arg_1.a, arg_1.a))), arg_1.a)), select(select(select(!vec3<bool>(arg_1.b, false, true), vec3<bool>(arg_1.a, arg_1.d.c.d, arg_1.b), arg_1.d.c.d), select(vec3<bool>(true, true, true), vec3<bool>(true, arg_1.d.c.d, arg_1.a), var_2.b > -9293), !func_8(848.0).b), select(select(select(vec3<bool>(arg_1.b, true, arg_1.d.a.b.d), vec3<bool>(arg_1.a, true, false), vec3<bool>(arg_1.d.c.d, false, true)), !vec3<bool>(arg_1.a, false, false), arg_1.b), vec3<bool>(any(vec4<bool>(arg_1.a, false, false, false)), arg_1.d.c.d, arg_1.a), !(!vec3<bool>(true, false, arg_1.d.a.b.d))), !vec3<bool>(arg_1.b, arg_1.d.c.d, !false)));
                var_2 = Struct_3(arg_0.x, arg_1.d.a.b.b.x);
                var var_4 = select(arg_0.x, arg_0.x, false) - 241.0;
                var_1 = arg_1.d.c.a.x;
            }
        }
    }
    let var_2 = vec2<i32>(dot(-firstLeadingBit(arg_1.d.b.wzx) ^ abs(u_input.a.zyx & vec3<i32>(u_input.a.x, -1341, u_input.a.x)), ~(firstTrailingBit(vec3<i32>(14544, u_input.a.x, -2705)) - ~u_input.a.wzx)), ~(~func_8(1267.0).d.c.b.x) & 2147483647);
    var var_3 = vec2<bool>(false, !func_5().a.b.d);
    return Struct_3(select(-1536.0, arg_0.x, (firstTrailingBit(0) | firstTrailingBit(var_2.x)) != 2147483647), arg_1.d.b.x);
}

fn func_10(arg_0: Struct_3) -> vec4<u32> {
    let var_0 = Struct_3(-777.0, func_9(vec4<f32>(-func_9(vec4<f32>(arg_0.a, 207.0, arg_0.a, -508.0), Struct_5(true, true, vec3<f32>(arg_0.a, 665.0, -632.0), Struct_4(Struct_2(false, Struct_1(vec2<u32>(u_input.c, 4294967295u), u_input.a.yy, vec4<i32>(u_input.a.x, arg_0.b, 0, arg_0.b), true), u_input.b), u_input.a, Struct_1(vec2<u32>(1u, 4294967295u), vec2<i32>(-8671, 5369), u_input.a, true))), vec2<u32>(u_input.c, 1u)).a, arg_0.a, 220.0 / step(arg_0.a, -1000.0), -940.0 / -242.0), func_8(871.0), vec2<u32>((u_input.c + u_input.c) ^ ~1u, 37687u)).b);
    let var_1 = func_5().a.b.a.x;
    var var_2 = vec3<f32>(ceil(1704.0), -(-sign(min(398.0, arg_0.a))), (-(var_0.a / 638.0) + -arg_0.a) / -(-1881.0));
    var var_3 = abs(-1);
    if (!false) {
        loop {
            var var_4 = abs(abs(max(abs(vec3<u32>(u_input.c, u_input.c, u_input.b) | vec3<u32>(1u, 34394u, 0u)), vec3<u32>(u_input.c, var_1, u_input.c))));
            let var_5 = !(!select(select(vec4<bool>(false, false, false, false), !vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false)), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(4294967295u != 4294967295u, any(vec3<bool>(true, false, false)), false, true)));
            var_4 = ~(~vec3<u32>(~25380u, var_1, var_1 << 1u) + ~((vec3<u32>(u_input.b, 87473u, var_1) % vec3<u32>(var_1, var_4.x, var_1)) | vec3<u32>(4294967295u, 0u, u_input.c)));
            let var_6 = vec3<u32>(dot(~(~vec4<u32>(4294967295u, 0u, 36421u, 1u)) - select(vec4<u32>(var_1, var_4.x, var_1, 0u), vec4<u32>(var_4.x, u_input.b, var_4.x, 0u), select(var_5, var_5, var_5)), abs(abs(vec4<u32>(u_input.c, 18595u, 4294967295u, u_input.b))) / abs(min(vec4<u32>(0u, 4294967295u, 4294967295u, 29160u), vec4<u32>(40114u, 1u, 4294967295u, u_input.b)))), 50794u, var_1 + (var_4.x >> u_input.c));
        }
        switch (var_0.b) {
            case 0: {
                global0 = array<vec2<i32>, 8>();
            }
            case -25923: {
                var var_4 = func_9(ceil(vec4<f32>(-(221.0 - arg_0.a), var_0.a, max(-214.0, -842.0), 189.0)), func_8(917.0), ~vec2<u32>(~u_input.c, u_input.b - ~var_1));
                let var_5 = func_9(trunc(abs(vec4<f32>(var_2.x, -1350.0, -1306.0, var_4.a))), func_8(var_2.x), ~(~max(vec2<u32>(1u, var_1) | vec2<u32>(56023u, 28580u), ~vec2<u32>(77277u, u_input.b))));
                var var_6 = 555.0;
            }
            case -1: {
                var var_4 = ceil(exp2(var_0.a));
                let var_5 = Struct_1(vec2<u32>(19085u, u_input.c), global0[var_1], func_5().a.b.c, !select(func_8(func_8(-800.0).c.x).a, !(!true), all(!vec4<bool>(true, true, true, true))));
                return ~vec4<u32>(~((var_1 + var_1) + 0u), ~44472u, func_8(sign(var_0.a)).d.a.c % (abs(36379u) << var_5.a.x), 57794u);
            }
            default: {
                var var_4 = 31104 == var_0.b;
                let var_5 = u_input.a << vec4<u32>(clamp((0u / 0u) - (56010u >> 4294967295u), ~var_1, ~clamp(u_input.b, 25968u, u_input.c)), u_input.b, ~(~(~u_input.c)), u_input.b);
                var_2 = vec3<f32>(1498.0, -177.0, -var_2.x);
                var var_6 = Struct_5(select((-arg_0.a != -arg_0.a) && false, func_5().a.a, any(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), false), vec4<bool>(false, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false))))), false, -select(vec3<f32>(-875.0, var_2.x, -252.0) / -vec3<f32>(var_2.x, 894.0, 495.0), -(-vec3<f32>(293.0, var_2.x, 1223.0)), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), !false)), Struct_4(func_8(var_0.a).d.a, -u_input.a, Struct_1(vec2<u32>(~var_1, ~0u), clamp(abs(vec2<i32>(2147483647, 54631)), global0[4472u] << vec2<u32>(0u, u_input.c), vec2<i32>(2147483647, u_input.a.x)), u_input.a << (vec4<u32>(4294967295u, 70779u, u_input.c, 0u) >> vec4<u32>(16363u, var_1, var_1, var_1)), !true)));
            }
        }
        var var_4 = !select(vec3<bool>(any(!vec3<bool>(false, true, false)), (false && false) && func_5().c.d, true), !select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false), !vec3<bool>(true, true, false), !true), ((var_0.a + arg_0.a) != max(1217.0, -1202.0)) || (false || !true));
        var_2 = vec3<f32>(trunc((exp2(arg_0.a) / (1000.0 + arg_0.a)) - exp2(218.0 * 701.0)), arg_0.a, 1758.0 - -sign(arg_0.a / 911.0));
    }
    return vec4<u32>(29309u, firstTrailingBit(abs(~(1u % u_input.b))), min(1u, var_1 << u_input.b), var_1);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec3<bool>) -> bool {
    let var_0 = (min(vec2<i32>(u_input.a.x, ~(-36906)), ~(~global0[arg_1.c])) * ~((vec2<i32>(u_input.a.x, u_input.a.x) + vec2<i32>(arg_1.b.b.x, 53412)) * arg_1.b.c.zw)) | global0[7048u];
    let var_1 = reverseBits(u_input.a.yww);
    loop {
        global0 = array<vec2<i32>, 8>();
        var var_2 = arg_0.x;
        switch (dot(~abs(max(u_input.a, vec4<i32>(-2147483648, -31856, arg_1.b.b.x, u_input.a.x))), ~vec4<i32>(dot(vec2<i32>(0, -2147483648), global0[arg_1.b.a.x]), 1, 48626 >> 5416u, -25725 * -16557)) >> reverseBits(~(~clamp(u_input.b, 7027u, arg_1.c)))) {
            case 2147483647: {
                var var_3 = arg_1.b;
                let var_4 = var_0;
                let var_5 = Struct_3(-1010.0, -37090);
                var var_6 = func_10(func_9(abs(-min(vec4<f32>(-363.0, -1263.0, var_5.a, 592.0), vec4<f32>(1000.0, 1766.0, 1000.0, 1021.0))), func_8(func_7(func_5(), var_3.b.x, reverseBits(59356u), select(var_4, vec2<i32>(-34435, -24886), vec2<bool>(false, var_3.d)))), select(vec2<u32>(firstLeadingBit(arg_1.c), 0u), ~arg_1.b.a & ~var_3.a, var_3.d)));
                var var_7 = var_3.d & !false;
            }
            case -2147483648: {
                let var_3 = false;
                let var_4 = func_5();
                var var_5 = vec2<f32>(149.0, func_9(-vec4<f32>(arg_0.x, arg_0.x, -1000.0, arg_0.x), func_8(-arg_0.x), arg_1.b.a).a) / abs(-(-(-arg_0.yy)));
                var var_6 = vec4<f32>(-(-step(min(var_5.x, var_5.x), arg_0.x)), min(abs(var_5.x / -2067.0), var_5.x), 748.0, sign(-var_5.x));
            }
            case -293: {
                var_2 = sign(sign(arg_0.x));
                var var_3 = vec3<i32>(arg_1.b.c.x, var_0.x, func_6(sign(vec4<f32>(arg_0.x, 630.0, arg_0.x, arg_0.x)) - vec4<f32>(-780.0, func_7(Struct_4(arg_1, vec4<i32>(-3629, arg_1.b.b.x, -531, 0), arg_1.b), var_0.x, arg_1.b.a.x, var_1.xy), -103.0, -arg_0.x), func_5(), 4294967295u));
            }
            default: {
                return 24841 > (~u_input.a.x + (select(reverseBits(var_1.x), -1, func_5().a.b.d) / -18146));
            }
        }
        var_2 = func_8(-2436.0 * arg_0.x).c.x * -1067.0;
    }
    if (true) {
        loop {
        }
        let var_2 = func_5();
        var var_3 = func_8(-228.0).d.a.b;
        switch (28448 & 0) {
            default: {
                var var_4 = Struct_4(var_2.a, firstLeadingBit(vec4<i32>(~var_0.x, 20028 - -31427, abs(-2147483648 << var_3.a.x), ~(~var_1.x))), Struct_1(~vec2<u32>(max(4294967295u, 78821u), countOneBits(var_2.a.b.a.x)), firstTrailingBit(var_1.yy << (var_3.a - arg_1.b.a)), vec4<i32>(dot(var_0, select(u_input.a.yz, vec2<i32>(var_2.b.x, var_2.a.b.b.x), vec2<bool>(arg_1.b.d, false))), ~var_2.a.b.b.x, func_8(arg_0.x).d.b.x % ~2147483647, abs(2860)), true));
                var_4 = func_8(-(-trunc(1928.0)) - func_9(vec4<f32>(-1000.0, arg_0.x, arg_0.x, -547.0) * -vec4<f32>(854.0, -531.0, arg_0.x, 616.0), Struct_5(!true, !var_4.a.a, arg_0, var_2), vec2<u32>(arg_1.b.a.x, firstLeadingBit(50378u))).a).d;
                let var_5 = ceil(sign(vec4<f32>(arg_0.x, -1265.0, arg_0.x, 1060.0) + vec4<f32>(arg_0.x, arg_0.x, -1000.0, -528.0)) + (sign(vec4<f32>(arg_0.x, 702.0, -1126.0, arg_0.x)) - -vec4<f32>(-1757.0, arg_0.x, arg_0.x, arg_0.x))) + -(-trunc(-vec4<f32>(arg_0.x, -154.0, arg_0.x, arg_0.x)));
                var_4 = var_2;
                let var_6 = !(false | !(u_input.c == 1u));
            }
        }
    }
    global0 = array<vec2<i32>, 8>();
    return !(!true);
}

fn func_11(arg_0: bool, arg_1: bool) -> Struct_2 {
    if (u_input.b > 25353u) {
        var var_0 = 32161u;
    }
    switch (select(u_input.a.x + (-(-56800) | dot(vec3<i32>(-72254, u_input.a.x, -1), min(u_input.a.zzx, u_input.a.yxy))), u_input.a.x, !(!all(vec3<bool>(false, arg_1, true))))) {
        case -14928: {
            global0 = array<vec2<i32>, 8>();
            for (var var_0 = 0; any(vec3<bool>(func_5().a.b.d, (clamp(20445, u_input.a.x, 2147483647) + ~u_input.a.x) <= u_input.a.x, any(select(select(vec3<bool>(arg_0, false, true), vec3<bool>(true, true, false), true), select(vec3<bool>(true, false, arg_1), vec3<bool>(arg_1, true, arg_0), arg_0), arg_1)))); var_0 -= 1) {
                let var_1 = ~1u == ~(~(~u_input.c));
                var var_2 = u_input.a.x >> (firstTrailingBit((u_input.c % u_input.b) & 60077u) % abs(4294967295u));
                var_2 = -(-14173);
            }
            let var_0 = Struct_2(dot(vec4<u32>(4294967295u + 1u, u_input.c, ~49669u, ~u_input.b), func_10(func_9(vec4<f32>(-1438.0, -1767.0, 457.0, -1000.0), Struct_5(arg_1, false, vec3<f32>(-2255.0, 709.0, -250.0), Struct_4(Struct_2(arg_1, Struct_1(vec2<u32>(51825u, u_input.c), vec2<i32>(-1, u_input.a.x), vec4<i32>(u_input.a.x, 0, 29457, -13877), arg_1), 55888u), vec4<i32>(16399, -42282, u_input.a.x, u_input.a.x), Struct_1(vec2<u32>(u_input.c, u_input.c), global0[u_input.c], u_input.a, false))), vec2<u32>(u_input.c, u_input.c)))) != u_input.c, func_5().c, 1u);
        }
        case -26709: {
        }
        case -13063: {
            var var_0 = func_9(-(((vec4<f32>(643.0, 110.0, 1000.0, 1162.0) - vec4<f32>(-1959.0, -697.0, 2048.0, 635.0)) + -vec4<f32>(-1049.0, -1067.0, -1005.0, 575.0)) - (-vec4<f32>(-638.0, -830.0, -217.0, 398.0) + (vec4<f32>(-742.0, -902.0, 292.0, -2331.0) / vec4<f32>(-670.0, -1000.0, -1715.0, 668.0)))), Struct_5(true, !true, vec3<f32>(-613.0 / -(-223.0), 1000.0, step(348.0 * 1224.0, -1000.0)), func_8(-433.0 + select(-114.0, -229.0, arg_1)).d), vec2<u32>(~1u, u_input.c - ~24211u)).b;
        }
        case 0: {
            var var_0 = arg_0;
            let var_1 = ~u_input.c;
            let var_2 = func_8(-(-159.0 / (278.0 * -482.0)) - -(-1517.0)).d.a;
            for (var var_3 = ~var_2.b.c.x; false; var_3 = 1 + (((~u_input.a.x | var_2.b.c.x) - u_input.a.x) >> ~57884u)) {
                global0 = array<vec2<i32>, 8>();
                continue;
            }
        }
        default: {
            loop {
                break;
            }
        }
    }
    switch (~(-dot(countOneBits(u_input.a), firstLeadingBit(vec4<i32>(2147483647, -2147483648, u_input.a.x, u_input.a.x)))) / u_input.a.x) {
        default: {
        }
    }
    let var_0 = func_8(403.0);
    global0 = array<vec2<i32>, 8>();
    return var_0.d.a;
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<u32>) -> Struct_4 {
    return Struct_4(func_11(all(vec2<bool>(func_4(vec3<f32>(-1250.0, -946.0, 1998.0), Struct_2(false, Struct_1(arg_1, vec2<i32>(u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, -54448, u_input.a.x, u_input.a.x), false), 51792u), vec3<bool>(true, true, false)), !false)), !false), u_input.a, Struct_1(((arg_0.yx % arg_0.yz) << vec2<u32>(4294967295u, 0u)) / vec2<u32>(func_10(Struct_3(-1379.0, -50760)).x, ~arg_0.x), ~(-global0[~0u]), u_input.a, !all(!vec2<bool>(true, false))));
}

fn func_12(arg_0: Struct_4) -> f32 {
    let var_0 = arg_0.a;
    let var_1 = func_3(vec4<u32>(~(~0u), 20780u, var_0.c, ~4294967295u) << ((vec4<u32>(13373u, var_0.c, var_0.b.a.x, 88477u) * firstTrailingBit(vec4<u32>(0u, arg_0.a.b.a.x, var_0.c, 24711u))) / ~vec4<u32>(4294967295u, u_input.b, var_0.c, arg_0.c.a.x)), (((var_0.b.a >> vec2<u32>(43727u, 43634u)) * vec2<u32>(var_0.c, var_0.c)) | abs(vec2<u32>(17076u, 4294967295u))) << arg_0.c.a).c.c.x;
    var var_2 = var_0.b;
    if (true) {
        if (countOneBits(dot((vec2<i32>(-1, -16111) * vec2<i32>(1, 18886)) & vec2<i32>(-22817, arg_0.b.x), var_2.b)) < 22324) {
        }
    }
    var var_3 = Struct_1(firstLeadingBit(~(~(~vec2<u32>(var_2.a.x, 4294967295u)))), var_0.b.b - -vec2<i32>(var_1, -27307 * u_input.a.x), vec4<i32>(-(var_1 + 0), -func_9(vec4<f32>(-228.0, 632.0, 775.0, -1016.0), Struct_5(false, arg_0.a.a, vec3<f32>(-476.0, -208.0, -1352.0), Struct_4(var_0, var_2.c, arg_0.c)), arg_0.a.b.a).b, 0, -(-2147483648)) - vec4<i32>(var_0.b.b.x, ~var_2.b.x + countOneBits(-18528), -16677, ~abs(-26457)), arg_0.a.a);
    return -(-(-909.0));
}

fn func_13(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: Struct_4) -> Struct_3 {
    let var_0 = -round(step(-trunc(-276.0), -func_7(Struct_4(arg_2.a, u_input.a, Struct_1(vec2<u32>(4294967295u, u_input.c), vec2<i32>(-51913, -36131), arg_2.c.c, arg_0.x)), u_input.a.x, 1u, u_input.a.ww)));
    global0 = array<vec2<i32>, 8>();
    global0 = array<vec2<i32>, 8>();
    for (var var_1 = 2147483647; var_1 < 3637; ) {
    }
    if (true) {
        for (var var_1 = 58229; !arg_0.x; var_1 += 1) {
            break;
        }
    }
    return Struct_3(-(-abs(func_8(var_0).c.x)), ~func_9(vec4<f32>(floor(var_0), exp2(952.0), var_0, -1308.0), Struct_5(false & arg_0.x, true, -vec3<f32>(var_0, -1801.0, 2808.0), arg_2), abs(countOneBits(arg_1.yz))).b);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: vec2<f32>) -> i32 {
    let var_0 = func_13(vec2<bool>(632.0 >= func_12(func_3(vec4<u32>(arg_1.b.a.x, u_input.b, arg_1.c, 4294967295u), vec2<u32>(arg_0.c, arg_1.c))), !arg_1.a), max(func_10(func_9(vec4<f32>(arg_3.x, arg_3.x, -1168.0, 881.0) * vec4<f32>(-564.0, arg_3.x, arg_3.x, 254.0), Struct_5(arg_1.a, arg_1.b.d, vec3<f32>(-741.0, 511.0, 1116.0), Struct_4(Struct_2(false, arg_1.b, 1u), u_input.a, arg_1.b)), arg_0.b.a - vec2<u32>(1u, u_input.c))), ~(~(vec4<u32>(u_input.c, 4294967295u, arg_0.b.a.x, arg_1.c) | vec4<u32>(4294967295u, u_input.b, arg_0.c, u_input.b)))), func_8(-998.0).d);
    let var_1 = arg_1.b;
    var var_2 = vec3<i32>(func_8(-126.0 / (var_0.a / var_0.a)).d.c.c.x, ~(16983 - arg_2.x), -(~(-u_input.a.x))) << vec3<u32>(36497u, var_1.a.x, arg_1.b.a.x);
    var var_3 = !select(select(vec2<bool>(!var_1.d, arg_1.a), vec2<bool>(!true, false), select(vec2<bool>(arg_1.a, arg_1.b.d), vec2<bool>(false, var_1.d), select(vec2<bool>(true, var_1.d), vec2<bool>(true, true), vec2<bool>(arg_0.a, var_1.d)))), !(!select(vec2<bool>(true, arg_0.b.d), vec2<bool>(false, true), true)), !vec2<bool>(all(vec2<bool>(var_1.d, arg_1.a)), 4294967295u >= arg_0.b.a.x));
    loop {
        break;
    }
    return 20923 / ((-1 & (firstTrailingBit(var_2.x) / -6811)) * u_input.a.x);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<bool>) -> f32 {
    switch (-2147483647) {
        default: {
            for (var var_0 = 1; var_0 != -53437; var_0 -= 1) {
                continue;
            }
            let var_0 = arg_1;
            switch (u_input.a.x) {
                case 2147483647: {
                    let var_1 = select(!(-abs(arg_0.x) > arg_0.x), !(func_2(Struct_2(var_0.x, Struct_1(vec2<u32>(u_input.b, u_input.c), global0[u_input.b], u_input.a, true), 4294967295u), Struct_2(var_0.x, Struct_1(vec2<u32>(u_input.c, 0u), vec2<i32>(u_input.a.x, -5624), vec4<i32>(4800, 0, u_input.a.x, 9999), false), 4294967295u), vec4<i32>(u_input.a.x, 0, 1, u_input.a.x), arg_0.yx) == clamp(u_input.a.x, -1, -2147483648)) && (any(vec3<bool>(arg_1.x, var_0.x, arg_1.x)) && var_0.x), !(-(-arg_0.x) != 1285.0));
                }
                case -21314: {
                    var var_1 = Struct_5(false, false, exp2(func_8(-727.0).c), func_5());
                    var var_2 = select(arg_1, !(!select(vec2<bool>(true, true), select(var_0, vec2<bool>(arg_1.x, arg_1.x), var_0.x), vec2<bool>(false, true))), arg_1);
                    var var_3 = func_8(-320.0).d;
                    var_2 = var_0;
                }
                default: {
                    let var_1 = vec3<f32>(1386.0, func_9(vec4<f32>(-751.0, -arg_0.x, func_8(arg_0.x).c.x, func_7(Struct_4(Struct_2(arg_1.x, Struct_1(vec2<u32>(u_input.c, 26291u), vec2<i32>(u_input.a.x, u_input.a.x), u_input.a, true), u_input.c), vec4<i32>(u_input.a.x, -8204, u_input.a.x, 2147483647), Struct_1(vec2<u32>(u_input.c, u_input.b), global0[0u], vec4<i32>(0, 1, -14332, 2147483647), arg_1.x)), u_input.a.x, u_input.c, vec2<i32>(u_input.a.x, 59593))), func_8(arg_0.x * -2017.0), ~vec2<u32>(1u, 22188u)).a / -1000.0, arg_0.x);
                    global0 = array<vec2<i32>, 8>();
                    let var_2 = func_8(-ceil(arg_0.x));
                }
            }
            switch (u_input.a.x) {
                case -45212: {
                    let var_1 = func_3(vec4<u32>(u_input.b, clamp(u_input.b ^ (59339u / u_input.c), u_input.b, 15549u ^ (u_input.b << u_input.c)), ~u_input.b, ~u_input.c), vec2<u32>(23901u, firstTrailingBit(~(u_input.b - 61404u)))).a.c;
                    let var_2 = max(-arg_0.x, -func_9(-vec4<f32>(1000.0, -1000.0, arg_0.x, -606.0), Struct_5(false, true, vec3<f32>(-1158.0, arg_0.x, 478.0), Struct_4(Struct_2(arg_1.x, Struct_1(vec2<u32>(var_1, var_1), vec2<i32>(u_input.a.x, 17468), vec4<i32>(-1653, u_input.a.x, 3263, -20446), true), 0u), u_input.a, Struct_1(vec2<u32>(0u, 1u), global0[4294967295u], vec4<i32>(u_input.a.x, -24479, u_input.a.x, 57531), var_0.x))), select(vec2<u32>(u_input.c, u_input.b), vec2<u32>(0u, var_1), true)).a) + -452.0;
                }
                default: {
                    global0 = array<vec2<i32>, 8>();
                    let var_1 = func_8(abs(arg_0.x)).d.a;
                    var var_2 = -961.0;
                }
            }
            loop {
                global0 = array<vec2<i32>, 8>();
                return exp2(592.0);
            }
        }
    }
    switch (~countOneBits(dot(~u_input.a.wzy, u_input.a.xxz) << 35266u)) {
        default: {
        }
    }
    var var_0 = func_4(-arg_0, func_3(vec4<u32>(~func_10(Struct_3(arg_0.x, -2147483648)).x, ~(40530u * 0u), min(u_input.c, 4294967295u) ^ ~0u, u_input.c), ~func_10(Struct_3(1374.0, 43165)).yw).a, vec3<bool>(!true, arg_1.x, any(select(vec3<bool>(true, arg_1.x, false), vec3<bool>(true, false, arg_1.x), arg_1.x)) && arg_1.x));
    loop {
        continue;
    }
    var var_1 = -vec3<i32>(18573, -25427, 2147483647);
    return -686.0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(1612.0 + max(trunc(302.0 * -1166.0), func_1(vec3<f32>(-584.0, 1014.0, -2534.0), vec2<bool>(true, false)) + (278.0 / -1793.0)), -1765.0, select(trunc(abs(-1723.0)) - 565.0, -(-func_13(vec2<bool>(true, true), vec4<u32>(4294967295u, u_input.c, u_input.b, u_input.b), Struct_4(Struct_2(false, Struct_1(vec2<u32>(u_input.b, 1u), global0[u_input.c], vec4<i32>(u_input.a.x, 0, u_input.a.x, u_input.a.x), false), 71756u), u_input.a, Struct_1(vec2<u32>(u_input.b, 4201u), vec2<i32>(2147483647, u_input.a.x), u_input.a, true))).a), !all(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true)))), func_9(select(-vec4<f32>(-308.0, -343.0, -264.0, -113.0), vec4<f32>(537.0, -303.0, 402.0, -1014.0), -484.0 == 171.0) + (vec4<f32>(-1477.0, 272.0, -1895.0, 433.0) + -vec4<f32>(-546.0, -189.0, 219.0, 495.0)), func_8(-(-1323.0) + func_13(vec2<bool>(true, true), vec4<u32>(21162u, 1u, u_input.b, u_input.b), Struct_4(Struct_2(true, Struct_1(vec2<u32>(u_input.b, u_input.c), global0[113405u], u_input.a, false), u_input.c), u_input.a, Struct_1(vec2<u32>(u_input.b, 47447u), global0[u_input.c], u_input.a, false))).a), ~(vec2<u32>(105372u, u_input.c) / ~vec2<u32>(u_input.c, u_input.c))).a);
    global0 = array<vec2<i32>, 8>();
    let var_1 = var_0.wzy - (ceil(-var_0.wzz) / ceil(vec3<f32>(1276.0 - var_0.x, -109.0 - var_0.x, -270.0)));
    switch (-func_6(vec4<f32>(-var_1.x, 604.0, -abs(-296.0), func_13(vec2<bool>(true, true), func_10(Struct_3(var_0.x, u_input.a.x)), func_3(vec4<u32>(u_input.b, u_input.b, u_input.b, 76496u), vec2<u32>(u_input.c, u_input.b))).a), Struct_4(Struct_2(u_input.b != 0u, func_11(true, true).b, dot(vec2<u32>(u_input.c, u_input.b), vec2<u32>(0u, 4294967295u))), firstLeadingBit(reverseBits(u_input.a)), func_5().a.b), u_input.c)) {
        case 1: {
            global0 = array<vec2<i32>, 8>();
            var var_2 = u_input.a.x;
        }
        case -16565: {
        }
        case 19436: {
            let var_2 = func_5().a;
            let var_3 = max(vec4<u32>(~u_input.b << func_5().c.a.x, clamp(u_input.c, abs(var_2.b.a.x), ~4294967295u), var_2.c, u_input.b), (~vec4<u32>(42036u, var_2.c, 101839u, 22709u) % ~(~vec4<u32>(44705u, var_2.c, u_input.b, u_input.b))) % vec4<u32>((4294967295u * 0u) - 0u, 30772u, ~11034u, func_10(func_13(vec2<bool>(var_2.a, true), vec4<u32>(33975u, var_2.c, 1u, 1u), Struct_4(var_2, var_2.b.c, var_2.b))).x));
        }
        case -67: {
        }
        default: {
        }
    }
    var var_2 = Struct_4(Struct_2(select(!(!false), func_8(-(-1075.0)).b, true), Struct_1(~(~vec2<u32>(0u, 8370u)), ~(vec2<i32>(u_input.a.x, u_input.a.x) & u_input.a.yw), u_input.a, true), u_input.c), u_input.a, Struct_1(min(vec2<u32>(u_input.c, 924u) | vec2<u32>(32221u, 32168u), vec2<u32>(0u, 4294967295u) - vec2<u32>(0u, u_input.b)) + ~(~vec2<u32>(u_input.c, 0u)), ~abs(firstTrailingBit(vec2<i32>(1, -2147483648))), abs(select(vec4<i32>(u_input.a.x, 2147483647, u_input.a.x, 5995), vec4<i32>(2147483647, u_input.a.x, 1, u_input.a.x), u_input.a.x != u_input.a.x)), !all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false))));
    global0 = array<vec2<i32>, 8>();
    let var_3 = select(vec2<f32>(var_0.x, -func_13(vec2<bool>(var_2.a.b.d, false), ~vec4<u32>(17462u, u_input.c, var_2.a.b.a.x, var_2.a.b.a.x), Struct_4(var_2.a, var_2.c.c, Struct_1(vec2<u32>(u_input.c, var_2.a.c), global0[var_2.c.a.x], vec4<i32>(var_2.b.x, 0, 17170, 44366), true))).a), var_1.zx / (var_0.yx - func_8(trunc(-1096.0)).c.xz), select(!vec2<bool>(true, !false), select(select(vec2<bool>(var_2.a.a, var_2.c.d), !vec2<bool>(false, var_2.a.b.d), vec2<bool>(false, var_2.a.b.d)), select(select(vec2<bool>(false, var_2.c.d), vec2<bool>(var_2.a.a, true), true), !vec2<bool>(var_2.c.d, var_2.a.a), any(vec4<bool>(false, true, false, var_2.a.a))), !var_2.a.b.d), select(vec2<bool>(select(var_2.c.d, var_2.a.b.d, false), false), select(select(vec2<bool>(true, false), vec2<bool>(false, var_2.c.d), var_2.a.a), !vec2<bool>(false, var_2.a.a), select(vec2<bool>(false, var_2.a.a), vec2<bool>(var_2.a.a, false), false)), !var_2.a.b.d)));
    switch (abs(countOneBits(firstLeadingBit(firstLeadingBit(-2147483648)) % -30922))) {
        case -2504: {
            let var_4 = -var_0.x + -(1000.0 - -972.0);
            let var_5 = var_2.a.b;
            let var_6 = !any(!vec3<bool>(func_3(vec4<u32>(1u, 0u, 87441u, 32537u), var_5.a).c.d, var_5.d, true));
            switch (func_13(!vec2<bool>(!var_6, !var_5.d | (false || true)), select(vec4<u32>(1u, var_5.a.x, func_3(vec4<u32>(var_5.a.x, 1683u, var_2.a.b.a.x, 4294967295u), vec2<u32>(var_5.a.x, u_input.c)).a.c, 7858u), ~(~vec4<u32>(0u, 0u, var_2.c.a.x, var_5.a.x)), func_11(var_2.c.d, var_5.d).a) >> (vec4<u32>(~0u, 91680u, ~4294967295u, 17995u) / (~vec4<u32>(7028u, u_input.c, 26917u, 37751u) >> ~vec4<u32>(74274u, var_5.a.x, var_5.a.x, 24273u))), func_5()).b) {
                case -22766: {
                    var_0 = sign(-(-vec4<f32>(var_1.x, 523.0, -1000.0 / 1674.0, var_0.x)));
                    let var_7 = var_5.a;
                    global0 = array<vec2<i32>, 8>();
                }
                case -23615: {
                    let var_7 = vec2<u32>(var_2.a.c, ~38901u);
                    global0 = array<vec2<i32>, 8>();
                    let var_8 = var_2.a.b;
                }
                case 0: {
                    var var_7 = var_0.yx;
                }
                case 21723: {
                }
                default: {
                    let var_7 = var_0.yyz;
                    var_0 = -(-sign(vec4<f32>(-204.0, -2288.0, 860.0, 1000.0))) + vec4<f32>(var_4, -342.0, var_0.x, -(-504.0) * var_1.x);
                    let var_8 = -var_2.a.b.c.x;
                    var_2 = func_8(-594.0).d;
                }
            }
            if (all(select(vec2<bool>(dot(var_2.c.a, vec2<u32>(var_2.c.a.x, 80050u)) >= firstTrailingBit(var_5.a.x), var_2.a.b.d), vec2<bool>(false, var_6), !(!(!vec2<bool>(false, var_5.d)))))) {
                var var_7 = Struct_5(func_8(-241.0).a, func_5().a.a, -vec3<f32>(var_0.x, -(-(-490.0)), -491.0), func_5());
            }
        }
        default: {
            for (var var_4 = 47710; var_4 < 2147483647; var_4 += 1) {
                var var_5 = -2147483648;
            }
            for (var var_4 = 2147483647; any(vec2<bool>(var_2.a.a, !(false == false))) || !func_8(var_0.x).a; var_4 -= 1) {
                var var_5 = -(sign(vec4<f32>(var_3.x, select(var_3.x, var_1.x, var_2.c.d), -var_1.x, var_3.x)) - (sign(vec4<f32>(var_0.x, var_1.x, var_0.x, var_3.x)) - vec4<f32>(var_1.x * -898.0, abs(var_0.x), -567.0, -112.0 / var_0.x)));
                continue;
            }
            loop {
                let var_4 = var_0.x;
                let var_5 = ~var_2.c.a;
            }
        }
    }
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x - func_1(var_1, !select(vec2<bool>(false, var_2.a.a), vec2<bool>(var_2.c.d, var_2.c.d), vec2<bool>(true, var_2.a.a))), firstTrailingBit(global0[u_input.b]));
}

