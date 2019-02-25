using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
b_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108]
@variable(m, b[b_Idx])
set_binary(b[35])
set_binary(b[38])
set_binary(b[44])
set_binary(b[71])
set_binary(b[78])
set_binary(b[75])
set_binary(b[66])
set_binary(b[85])
set_binary(b[15])
set_binary(b[80])
set_binary(b[82])
set_binary(b[70])
set_binary(b[42])
set_binary(b[49])
set_binary(b[106])
set_binary(b[45])
set_binary(b[81])
set_binary(b[41])
set_binary(b[48])
set_binary(b[105])
set_binary(b[23])
set_binary(b[64])
set_binary(b[54])
set_binary(b[21])
set_binary(b[28])
set_binary(b[36])
set_binary(b[22])
set_binary(b[90])
set_binary(b[87])
set_binary(b[98])
set_binary(b[95])
set_binary(b[77])
set_binary(b[84])
set_binary(b[46])
set_binary(b[53])
set_binary(b[8])
set_binary(b[33])
set_binary(b[56])
set_binary(b[30])
set_binary(b[79])
set_binary(b[104])
set_binary(b[29])
set_binary(b[40])
set_binary(b[61])
set_binary(b[58])
set_binary(b[74])
set_binary(b[32])
set_binary(b[34])
set_binary(b[57])
set_binary(b[89])
set_binary(b[92])
set_binary(b[72])
set_binary(b[96])
set_binary(b[5])
set_binary(b[16])
set_binary(b[86])
set_binary(b[60])
set_binary(b[102])
set_binary(b[13])
set_binary(b[51])
set_binary(b[69])
set_binary(b[12])
set_binary(b[2])
set_binary(b[68])
set_binary(b[100])
set_binary(b[14])
set_binary(b[20])
set_binary(b[43])
set_binary(b[11])
set_binary(b[19])
set_binary(b[47])
set_binary(b[25])
set_binary(b[7])
set_binary(b[9])
set_binary(b[65])
set_binary(b[3])
set_binary(b[83])
set_binary(b[59])
set_binary(b[101])
set_binary(b[108])
set_binary(b[17])
set_binary(b[39])
set_binary(b[76])
set_binary(b[4])
set_binary(b[6])
set_binary(b[67])
set_binary(b[1])
set_binary(b[37])
set_binary(b[88])
set_binary(b[50])
set_binary(b[27])
set_binary(b[18])
set_binary(b[97])
set_binary(b[93])
set_binary(b[99])
set_binary(b[94])
set_binary(b[31])
set_binary(b[107])
set_binary(b[62])
set_binary(b[91])
set_binary(b[52])
set_binary(b[103])
set_binary(b[24])
set_binary(b[55])
set_binary(b[10])
set_binary(b[63])
set_binary(b[26])
set_binary(b[73])


# ----- Constraints ----- #
@constraint(m, e1, b[1]+b[2]+b[3] == 1.0)
@constraint(m, e2, b[4]+b[5]+b[6] == 1.0)
@constraint(m, e3, b[7]+b[8]+b[9] == 1.0)
@constraint(m, e4, b[10]+b[11]+b[12] == 1.0)
@constraint(m, e5, b[13]+b[14]+b[15] == 1.0)
@constraint(m, e6, b[16]+b[17]+b[18] == 1.0)
@constraint(m, e7, b[19]+b[20]+b[21] == 1.0)
@constraint(m, e8, b[22]+b[23]+b[24] == 1.0)
@constraint(m, e9, b[25]+b[26]+b[27] == 1.0)
@constraint(m, e10, b[28]+b[29]+b[30] == 1.0)
@constraint(m, e11, b[31]+b[32]+b[33] == 1.0)
@constraint(m, e12, b[34]+b[35]+b[36] == 1.0)
@constraint(m, e13, b[37]+b[38]+b[39] == 1.0)
@constraint(m, e14, b[40]+b[41]+b[42] == 1.0)
@constraint(m, e15, b[43]+b[44]+b[45] == 1.0)
@constraint(m, e16, b[46]+b[47]+b[48] == 1.0)
@constraint(m, e17, b[49]+b[50]+b[51] == 1.0)
@constraint(m, e18, b[52]+b[53]+b[54] == 1.0)
@constraint(m, e19, b[55]+b[56]+b[57] == 1.0)
@constraint(m, e20, b[58]+b[59]+b[60] == 1.0)
@constraint(m, e21, b[61]+b[62]+b[63] == 1.0)
@constraint(m, e22, b[64]+b[65]+b[66] == 1.0)
@constraint(m, e23, b[67]+b[68]+b[69] == 1.0)
@constraint(m, e24, b[70]+b[71]+b[72] == 1.0)
@constraint(m, e25, b[73]+b[74]+b[75] == 1.0)
@constraint(m, e26, b[76]+b[77]+b[78] == 1.0)
@constraint(m, e27, b[79]+b[80]+b[81] == 1.0)
@constraint(m, e28, b[82]+b[83]+b[84] == 1.0)
@constraint(m, e29, b[85]+b[86]+b[87] == 1.0)
@constraint(m, e30, b[88]+b[89]+b[90] == 1.0)
@constraint(m, e31, b[91]+b[92]+b[93] == 1.0)
@constraint(m, e32, b[94]+b[95]+b[96] == 1.0)
@constraint(m, e33, b[97]+b[98]+b[99] == 1.0)
@constraint(m, e34, b[100]+b[101]+b[102] == 1.0)
@constraint(m, e35, b[103]+b[104]+b[105] == 1.0)
@constraint(m, e36, b[106]+b[107]+b[108] == 1.0)
@NLconstraint(m, e37, 50078*b[1]*b[4]+117720*b[1]*b[16]-43049*b[1]*b[19]+13155*b[1]*b[91]+50078*b[2]*b[5]+117720*b[2]*b[17]-43049*b[2]*b[20]+13155*b[2]*b[92]+50078*b[3]*b[6]+117720*b[3]*b[18]-43049*b[3]*b[21]+13155*b[3]*b[93]+19451*b[4]*b[7]-81035*b[4]*b[22]-105510*b[4]*b[94]+19451*b[5]*b[8]-81035*b[5]*b[23]-105510*b[5]*b[95]+19451*b[6]*b[9]-81035*b[6]*b[24]-105510*b[6]*b[96]-31535*b[7]*b[10]-91808*b[7]*b[25]+3251*b[7]*b[97]-31535*b[8]*b[11]-91808*b[8]*b[26]+3251*b[8]*b[98]-31535*b[9]*b[12]-91808*b[9]*b[27]+3251*b[9]*b[99]+144057*b[10]*b[13]-102239*b[10]*b[28]+25384*b[10]*b[100]+144057*b[11]*b[14]-102239*b[11]*b[29]+25384*b[11]*b[101]+144057*b[12]*b[15]-102239*b[12]*b[30]+25384*b[12]*b[102]-78656*b[13]*b[16]-156991*b[13]*b[31]-26788*b[13]*b[103]-78656*b[14]*b[17]-156991*b[14]*b[32]-26788*b[14]*b[104]-78656*b[15]*b[18]-156991*b[15]*b[33]-26788*b[15]*b[105]-40629*b[16]*b[34]+187339*b[16]*b[106]-40629*b[17]*b[35]+187339*b[17]*b[107]-40629*b[18]*b[36]+187339*b[18]*b[108]-64123*b[19]*b[22]+193957*b[19]*b[34]-42715*b[19]*b[37]-64123*b[20]*b[23]+193957*b[20]*b[35]-42715*b[20]*b[38]-64123*b[21]*b[24]+193957*b[21]*b[36]-42715*b[21]*b[39]-109684*b[22]*b[25]-7040*b[22]*b[40]-109684*b[23]*b[26]-7040*b[23]*b[41]-109684*b[24]*b[27]-7040*b[24]*b[42]-104107*b[25]*b[28]+4745*b[25]*b[43]-104107*b[26]*b[29]+4745*b[26]*b[44]-104107*b[27]*b[30]+4745*b[27]*b[45]-89768*b[28]*b[31]+111318*b[28]*b[46]-89768*b[29]*b[32]+111318*b[29]*b[47]-89768*b[30]*b[33]+111318*b[30]*b[48]-87660*b[31]*b[34]-59350*b[31]*b[49]-87660*b[32]*b[35]-59350*b[32]*b[50]-87660*b[33]*b[36]-59350*b[33]*b[51]-53495*b[34]*b[52]-53495*b[35]*b[53]-53495*b[36]*b[54]+98616*b[37]*b[40]-166277*b[37]*b[52]+121306*b[37]*b[55]+98616*b[38]*b[41]-166277*b[38]*b[53]+121306*b[38]*b[56]+98616*b[39]*b[42]-166277*b[39]*b[54]+121306*b[39]*b[57]+185685*b[40]*b[43]+162679*b[40]*b[58]+185685*b[41]*b[44]+162679*b[41]*b[59]+185685*b[42]*b[45]+162679*b[42]*b[60]-34358*b[43]*b[46]-197375*b[43]*b[61]-34358*b[44]*b[47]-197375*b[44]*b[62]-34358*b[45]*b[48]-197375*b[45]*b[63]-57511*b[46]*b[49]-19008*b[46]*b[64]-57511*b[47]*b[50]-19008*b[47]*b[65]-57511*b[48]*b[51]-19008*b[48]*b[66]-9951*b[49]*b[52]-7268*b[49]*b[67]-9951*b[50]*b[53]-7268*b[50]*b[68]-9951*b[51]*b[54]-7268*b[51]*b[69]-62799*b[52]*b[70]-62799*b[53]*b[71]-62799*b[54]*b[72]-60076*b[55]*b[58]+20720*b[55]*b[70]+53669*b[55]*b[73]-60076*b[56]*b[59]+20720*b[56]*b[71]+53669*b[56]*b[74]-60076*b[57]*b[60]+20720*b[57]*b[72]+53669*b[57]*b[75]+30538*b[58]*b[61]-71849*b[58]*b[76]+30538*b[59]*b[62]-71849*b[59]*b[77]+30538*b[60]*b[63]-71849*b[60]*b[78]+84983*b[61]*b[64]+89697*b[61]*b[79]+84983*b[62]*b[65]+89697*b[62]*b[80]+84983*b[63]*b[66]+89697*b[63]*b[81]+123972*b[64]*b[67]-71412*b[64]*b[82]+123972*b[65]*b[68]-71412*b[65]*b[83]+123972*b[66]*b[69]-71412*b[66]*b[84]+98426*b[67]*b[70]-14872*b[67]*b[85]+98426*b[68]*b[71]-14872*b[68]*b[86]+98426*b[69]*b[72]-14872*b[69]*b[87]-139665*b[70]*b[88]-139665*b[71]*b[89]-139665*b[72]*b[90]-13082*b[73]*b[76]+244658*b[73]*b[88]+98492*b[73]*b[91]-13082*b[74]*b[77]+244658*b[74]*b[89]+98492*b[74]*b[92]-13082*b[75]*b[78]+244658*b[75]*b[90]+98492*b[75]*b[93]+102438*b[76]*b[79]+36098*b[76]*b[94]+102438*b[77]*b[80]+36098*b[77]*b[95]+102438*b[78]*b[81]+36098*b[78]*b[96]+283615*b[79]*b[82]-42312*b[79]*b[97]+283615*b[80]*b[83]-42312*b[80]*b[98]+283615*b[81]*b[84]-42312*b[81]*b[99]-89738*b[82]*b[85]-112724*b[82]*b[100]-89738*b[83]*b[86]-112724*b[83]*b[101]-89738*b[84]*b[87]-112724*b[84]*b[102]+46994*b[85]*b[88]-99160*b[85]*b[103]+46994*b[86]*b[89]-99160*b[86]*b[104]+46994*b[87]*b[90]-99160*b[87]*b[105]-36555*b[88]*b[106]-36555*b[89]*b[107]-36555*b[90]*b[108]+48924*b[91]*b[94]-110970*b[91]*b[106]+48924*b[92]*b[95]-110970*b[92]*b[107]+48924*b[93]*b[96]-110970*b[93]*b[108]-189064*b[94]*b[97]-189064*b[95]*b[98]-189064*b[96]*b[99]+24208*b[97]*b[100]+24208*b[98]*b[101]+24208*b[99]*b[102]-202185*b[100]*b[103]-202185*b[101]*b[104]-202185*b[102]*b[105]-4003*b[103]*b[106]-4003*b[104]*b[107]-4003*b[105]*b[108]-objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.