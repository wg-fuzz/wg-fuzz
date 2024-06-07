struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<i32>, 23>;

var<private> global2: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(0u, vec3<i32>(49011i, 1i, -45052i), vec4<i32>(0i, -17850i, 50302i, -11973i)), Struct_1(65058u, vec3<i32>(0i, 10314i, 17213i), vec4<i32>(-1i, -38940i, 22558i, 26816i)), Struct_1(0u, vec3<i32>(43834i, 2147483647i, -39239i), vec4<i32>(0i, 0i, 46747i, 1i)), Struct_1(1u, vec3<i32>(37039i, i32(-2147483648), 0i), vec4<i32>(1i, -57067i, -6833i, 0i)), Struct_1(4294967295u, vec3<i32>(1i, 1i, 11898i), vec4<i32>(39894i, -1i, 2675i, 28542i)), Struct_1(0u, vec3<i32>(-6329i, 1i, 2147483647i), vec4<i32>(2147483647i, 43738i, 1i, i32(-2147483648))), Struct_1(97463u, vec3<i32>(16441i, 1i, -53445i), vec4<i32>(12759i, 1i, -22691i, -1i)), Struct_1(19221u, vec3<i32>(-28147i, -11607i, -6938i), vec4<i32>(-1396i, 1i, 0i, -22425i)), Struct_1(27676u, vec3<i32>(-48739i, -1i, 51951i), vec4<i32>(i32(-2147483648), 2147483647i, 2147483647i, 0i)), Struct_1(49280u, vec3<i32>(-21284i, -5815i, 44911i), vec4<i32>(21295i, -53029i, 2147483647i, 0i)), Struct_1(1u, vec3<i32>(-7391i, -23127i, i32(-2147483648)), vec4<i32>(1i, 15504i, -1i, -4568i)), Struct_1(50410u, vec3<i32>(-37366i, 2147483647i, 6633i), vec4<i32>(-1i, -1i, 18222i, i32(-2147483648))), Struct_1(4077u, vec3<i32>(-19105i, 2147483647i, -8234i), vec4<i32>(-49552i, i32(-2147483648), 492i, i32(-2147483648))), Struct_1(57963u, vec3<i32>(1i, 14350i, 2147483647i), vec4<i32>(2147483647i, 2147483647i, 21998i, 9583i)), Struct_1(4294967295u, vec3<i32>(6035i, -18760i, 1i), vec4<i32>(-28511i, 61040i, 0i, 2147483647i)), Struct_1(9995u, vec3<i32>(-2755i, 1782i, 57054i), vec4<i32>(1i, i32(-2147483648), 22769i, -1i)), Struct_1(26506u, vec3<i32>(-18668i, 2147483647i, -1i), vec4<i32>(86392i, 19734i, 1i, 2147483647i)), Struct_1(1u, vec3<i32>(-24090i, -1i, 5754i), vec4<i32>(-1i, 1i, -1i, 67932i)), Struct_1(1u, vec3<i32>(27543i, -21417i, -4536i), vec4<i32>(-1i, -26436i, i32(-2147483648), 22688i)), Struct_1(24694u, vec3<i32>(1i, 2147483647i, 734i), vec4<i32>(11790i, -34425i, 65632i, -8046i)), Struct_1(91732u, vec3<i32>(i32(-2147483648), 2147483647i, 2147483647i), vec4<i32>(-4820i, -3273i, 0i, -1i)), Struct_1(7713u, vec3<i32>(-23693i, 0i, -15945i), vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), i32(-2147483648))), Struct_1(4294967295u, vec3<i32>(1i, -3426i, 25647i), vec4<i32>(36457i, 1i, -12617i, 2147483647i)), Struct_1(4294967295u, vec3<i32>(2147483647i, -1i, -40722i), vec4<i32>(-13057i, -7474i, -18885i, 1i)), Struct_1(0u, vec3<i32>(-15657i, 0i, -26448i), vec4<i32>(-1i, 1i, 0i, 0i)), Struct_1(8652u, vec3<i32>(-16038i, 2147483647i, 4035i), vec4<i32>(i32(-2147483648), -39351i, 1i, -69457i)), Struct_1(0u, vec3<i32>(1945i, 16048i, i32(-2147483648)), vec4<i32>(2147483647i, -9746i, 30365i, i32(-2147483648))), Struct_1(0u, vec3<i32>(46254i, -1i, 2480i), vec4<i32>(1i, 26632i, 2147483647i, 11653i)), Struct_1(4294967295u, vec3<i32>(-56994i, -30469i, i32(-2147483648)), vec4<i32>(1i, -42041i, 2147483647i, 5181i)));

var<private> global3: vec2<u32> = vec2<u32>(1u, 53563u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -u_input.d;
    let var_1 = global2[_wgslsmith_index_u32(firstLeadingBit(global3.x), 29u)];
    global1 = array<vec4<i32>, 23>();
    global0 = global2[_wgslsmith_index_u32(global3.x, 29u)];
    let x = u_input.a;
    s_output = StorageBuffer((3224u << (var_1.a % 32u)) >> ((global0.a << (_wgslsmith_mod_u32(~58318u, 114322u) % 32u)) % 32u), _wgslsmith_mod_vec2_i32(vec2<i32>(var_1.b.x, 0i), -var_1.c.yz), firstLeadingBit(global3.x), ~var_0, ~vec4<u32>(_wgslsmith_sub_u32(global0.a, 56184u), 0u, 0u, abs(1u)));
}

