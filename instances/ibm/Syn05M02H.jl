using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85]
@variable(m, x[x_Idx])
b_Idx = Any[86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105]
@variable(m, b[b_Idx])
setlowerbound(x[85], 0.0)
setlowerbound(x[16], 0.0)
setlowerbound(x[14], 0.0)
setlowerbound(x[62], 0.0)
setlowerbound(x[38], 0.0)
setlowerbound(x[42], 0.0)
setlowerbound(x[78], 0.0)
setlowerbound(x[56], 0.0)
setlowerbound(x[22], 0.0)
setlowerbound(x[59], 0.0)
setlowerbound(x[77], 0.0)
setlowerbound(x[74], 0.0)
setcategory(b[105], :Bin)
setlowerbound(x[69], 0.0)
setlowerbound(x[81], 0.0)
setlowerbound(x[43], 0.0)
setlowerbound(x[71], 0.0)
setcategory(b[90], :Bin)
setlowerbound(x[36], 0.0)
setcategory(b[87], :Bin)
setcategory(b[98], :Bin)
setlowerbound(x[54], 0.0)
setlowerbound(x[32], 0.0)
setlowerbound(x[27], 0.0)
setcategory(b[95], :Bin)
setlowerbound(x[25], 0.0)
setlowerbound(x[30], 0.0)
setlowerbound(x[58], 0.0)
setcategory(b[104], :Bin)
setlowerbound(x[29], 0.0)
setlowerbound(x[53], 0.0)
setlowerbound(x[37], 0.0)
setlowerbound(x[63], 0.0)
setlowerbound(x[57], 0.0)
setlowerbound(x[55], 0.0)
setcategory(b[89], :Bin)
setlowerbound(x[82], 0.0)
setlowerbound(x[24], 0.0)
setcategory(b[92], :Bin)
setcategory(b[96], :Bin)
setlowerbound(x[41], 0.0)
setlowerbound(x[18], 0.0)
setlowerbound(x[52], 0.0)
setcategory(b[86], :Bin)
setlowerbound(x[49], 0.0)
setlowerbound(x[13], 0.0)
setcategory(b[102], :Bin)
setlowerbound(x[21], 0.0)
setlowerbound(x[72], 0.0)
setlowerbound(x[80], 0.0)
setlowerbound(x[67], 0.0)
setcategory(b[100], :Bin)
setlowerbound(x[79], 0.0)
setlowerbound(x[26], 0.0)
setlowerbound(x[45], 0.0)
setlowerbound(x[66], 0.0)
setlowerbound(x[75], 0.0)
setlowerbound(x[12], 0.0)
setlowerbound(x[40], 0.0)
setlowerbound(x[44], 0.0)
setlowerbound(x[61], 0.0)
setlowerbound(x[50], 0.0)
setcategory(b[101], :Bin)
setlowerbound(x[31], 0.0)
setlowerbound(x[33], 0.0)
setlowerbound(x[47], 0.0)
setlowerbound(x[68], 0.0)
setlowerbound(x[28], 0.0)
setlowerbound(x[35], 0.0)
setlowerbound(x[64], 0.0)
setcategory(b[88], :Bin)
setlowerbound(x[60], 0.0)
setcategory(b[97], :Bin)
setlowerbound(x[17], 0.0)
setcategory(b[93], :Bin)
setcategory(b[99], :Bin)
setlowerbound(x[23], 0.0)
setlowerbound(x[84], 0.0)
setcategory(b[94], :Bin)
setlowerbound(x[34], 0.0)
setlowerbound(x[46], 0.0)
setlowerbound(x[51], 0.0)
setcategory(b[91], :Bin)
setlowerbound(x[19], 0.0)
setlowerbound(x[48], 0.0)
setlowerbound(x[73], 0.0)
setcategory(b[103], :Bin)
setlowerbound(x[20], 0.0)
setlowerbound(x[39], 0.0)
setlowerbound(x[15], 0.0)
setlowerbound(x[70], 0.0)
setlowerbound(x[83], 0.0)
setlowerbound(x[65], 0.0)
setlowerbound(x[76], 0.0)
setupperbound(x[12], 40.0)
setupperbound(x[13], 40.0)
setupperbound(x[34], 30.0)
setupperbound(x[35], 30.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]+x[12]+x[13]-5*x[24]-10*x[25]+2*x[34]+x[35]-80*x[36]-90*x[37]-285*x[38]-390*x[39]-290*x[40]-405*x[41]+5*b[96]+4*b[97]+8*b[98]+7*b[99]+6*b[100]+9*b[101]+10*b[102]+9*b[103]+6*b[104]+10*b[105] == 0.0)
@constraint(m, e2, x[12]-x[14]-x[16] == 0.0)
@constraint(m, e3, x[13]-x[15]-x[17] == 0.0)
@constraint(m, e4, -x[18]-x[20]+x[22] == 0.0)
@constraint(m, e5, -x[19]-x[21]+x[23] == 0.0)
@constraint(m, e6, x[22]-x[24]-x[26] == 0.0)
@constraint(m, e7, x[23]-x[25]-x[27] == 0.0)
@constraint(m, e8, x[26]-x[28]-x[30]-x[32] == 0.0)
@constraint(m, e9, x[27]-x[29]-x[31]-x[33] == 0.0)
@NLconstraint(m, e10, (x[50]/(1e-6+b[86])-log(1+x[42]/(1e-6+b[86])))*(1e-6+b[86]) <= 0.0)
@NLconstraint(m, e11, (x[51]/(1e-6+b[87])-log(1+x[43]/(1e-6+b[87])))*(1e-6+b[87]) <= 0.0)
@constraint(m, e12, x[44] == 0.0)
@constraint(m, e13, x[45] == 0.0)
@constraint(m, e14, x[52] == 0.0)
@constraint(m, e15, x[53] == 0.0)
@constraint(m, e16, x[14]-x[42]-x[44] == 0.0)
@constraint(m, e17, x[15]-x[43]-x[45] == 0.0)
@constraint(m, e18, x[18]-x[50]-x[52] == 0.0)
@constraint(m, e19, x[19]-x[51]-x[53] == 0.0)
@constraint(m, e20, x[42]-40*b[86] <= 0.0)
@constraint(m, e21, x[43]-40*b[87] <= 0.0)
@constraint(m, e22, x[44]+40*b[86] <= 40.0)
@constraint(m, e23, x[45]+40*b[87] <= 40.0)
@constraint(m, e24, x[50]-3.71357206670431*b[86] <= 0.0)
@constraint(m, e25, x[51]-3.71357206670431*b[87] <= 0.0)
@constraint(m, e26, x[52]+3.71357206670431*b[86] <= 3.71357206670431)
@constraint(m, e27, x[53]+3.71357206670431*b[87] <= 3.71357206670431)
@NLconstraint(m, e28, (x[54]/(1e-6+b[88])-1.2*log(1+x[46]/(1e-6+b[88])))*(1e-6+b[88]) <= 0.0)
@NLconstraint(m, e29, (x[55]/(1e-6+b[89])-1.2*log(1+x[47]/(1e-6+b[89])))*(1e-6+b[89]) <= 0.0)
@constraint(m, e30, x[48] == 0.0)
@constraint(m, e31, x[49] == 0.0)
@constraint(m, e32, x[56] == 0.0)
@constraint(m, e33, x[57] == 0.0)
@constraint(m, e34, x[16]-x[46]-x[48] == 0.0)
@constraint(m, e35, x[17]-x[47]-x[49] == 0.0)
@constraint(m, e36, x[20]-x[54]-x[56] == 0.0)
@constraint(m, e37, x[21]-x[55]-x[57] == 0.0)
@constraint(m, e38, x[46]-40*b[88] <= 0.0)
@constraint(m, e39, x[47]-40*b[89] <= 0.0)
@constraint(m, e40, x[48]+40*b[88] <= 40.0)
@constraint(m, e41, x[49]+40*b[89] <= 40.0)
@constraint(m, e42, x[54]-4.45628648004517*b[88] <= 0.0)
@constraint(m, e43, x[55]-4.45628648004517*b[89] <= 0.0)
@constraint(m, e44, x[56]+4.45628648004517*b[88] <= 4.45628648004517)
@constraint(m, e45, x[57]+4.45628648004517*b[89] <= 4.45628648004517)
@constraint(m, e46, -0.75*x[58]+x[74] == 0.0)
@constraint(m, e47, -0.75*x[59]+x[75] == 0.0)
@constraint(m, e48, x[60] == 0.0)
@constraint(m, e49, x[61] == 0.0)
@constraint(m, e50, x[76] == 0.0)
@constraint(m, e51, x[77] == 0.0)
@constraint(m, e52, x[28]-x[58]-x[60] == 0.0)
@constraint(m, e53, x[29]-x[59]-x[61] == 0.0)
@constraint(m, e54, x[36]-x[74]-x[76] == 0.0)
@constraint(m, e55, x[37]-x[75]-x[77] == 0.0)
@constraint(m, e56, x[58]-4.45628648004517*b[90] <= 0.0)
@constraint(m, e57, x[59]-4.45628648004517*b[91] <= 0.0)
@constraint(m, e58, x[60]+4.45628648004517*b[90] <= 4.45628648004517)
@constraint(m, e59, x[61]+4.45628648004517*b[91] <= 4.45628648004517)
@constraint(m, e60, x[74]-3.34221486003388*b[90] <= 0.0)
@constraint(m, e61, x[75]-3.34221486003388*b[91] <= 0.0)
@constraint(m, e62, x[76]+3.34221486003388*b[90] <= 3.34221486003388)
@constraint(m, e63, x[77]+3.34221486003388*b[91] <= 3.34221486003388)
@NLconstraint(m, e64, (x[78]/(1e-6+b[92])-1.5*log(1+x[62]/(1e-6+b[92])))*(1e-6+b[92]) <= 0.0)
@NLconstraint(m, e65, (x[79]/(1e-6+b[93])-1.5*log(1+x[63]/(1e-6+b[93])))*(1e-6+b[93]) <= 0.0)
@constraint(m, e66, x[64] == 0.0)
@constraint(m, e67, x[65] == 0.0)
@constraint(m, e68, x[80] == 0.0)
@constraint(m, e69, x[81] == 0.0)
@constraint(m, e70, x[30]-x[62]-x[64] == 0.0)
@constraint(m, e71, x[31]-x[63]-x[65] == 0.0)
@constraint(m, e72, x[38]-x[78]-x[80] == 0.0)
@constraint(m, e73, x[39]-x[79]-x[81] == 0.0)
@constraint(m, e74, x[62]-4.45628648004517*b[92] <= 0.0)
@constraint(m, e75, x[63]-4.45628648004517*b[93] <= 0.0)
@constraint(m, e76, x[64]+4.45628648004517*b[92] <= 4.45628648004517)
@constraint(m, e77, x[65]+4.45628648004517*b[93] <= 4.45628648004517)
@constraint(m, e78, x[78]-2.54515263975353*b[92] <= 0.0)
@constraint(m, e79, x[79]-2.54515263975353*b[93] <= 0.0)
@constraint(m, e80, x[80]+2.54515263975353*b[92] <= 2.54515263975353)
@constraint(m, e81, x[81]+2.54515263975353*b[93] <= 2.54515263975353)
@constraint(m, e82, -x[66]+x[82] == 0.0)
@constraint(m, e83, -x[67]+x[83] == 0.0)
@constraint(m, e84, -0.5*x[70]+x[82] == 0.0)
@constraint(m, e85, -0.5*x[71]+x[83] == 0.0)
@constraint(m, e86, x[68] == 0.0)
@constraint(m, e87, x[69] == 0.0)
@constraint(m, e88, x[72] == 0.0)
@constraint(m, e89, x[73] == 0.0)
@constraint(m, e90, x[84] == 0.0)
@constraint(m, e91, x[85] == 0.0)
@constraint(m, e92, x[32]-x[66]-x[68] == 0.0)
@constraint(m, e93, x[33]-x[67]-x[69] == 0.0)
@constraint(m, e94, x[34]-x[70]-x[72] == 0.0)
@constraint(m, e95, x[35]-x[71]-x[73] == 0.0)
@constraint(m, e96, x[40]-x[82]-x[84] == 0.0)
@constraint(m, e97, x[41]-x[83]-x[85] == 0.0)
@constraint(m, e98, x[66]-4.45628648004517*b[94] <= 0.0)
@constraint(m, e99, x[67]-4.45628648004517*b[95] <= 0.0)
@constraint(m, e100, x[68]+4.45628648004517*b[94] <= 4.45628648004517)
@constraint(m, e101, x[69]+4.45628648004517*b[95] <= 4.45628648004517)
@constraint(m, e102, x[70]-30*b[94] <= 0.0)
@constraint(m, e103, x[71]-30*b[95] <= 0.0)
@constraint(m, e104, x[72]+30*b[94] <= 30.0)
@constraint(m, e105, x[73]+30*b[95] <= 30.0)
@constraint(m, e106, x[82]-15*b[94] <= 0.0)
@constraint(m, e107, x[83]-15*b[95] <= 0.0)
@constraint(m, e108, x[84]+15*b[94] <= 15.0)
@constraint(m, e109, x[85]+15*b[95] <= 15.0)
@constraint(m, e110, x[2]+5*b[96] == 0.0)
@constraint(m, e111, x[3]+4*b[97] == 0.0)
@constraint(m, e112, x[4]+8*b[98] == 0.0)
@constraint(m, e113, x[5]+7*b[99] == 0.0)
@constraint(m, e114, x[6]+6*b[100] == 0.0)
@constraint(m, e115, x[7]+9*b[101] == 0.0)
@constraint(m, e116, x[8]+10*b[102] == 0.0)
@constraint(m, e117, x[9]+9*b[103] == 0.0)
@constraint(m, e118, x[10]+6*b[104] == 0.0)
@constraint(m, e119, x[11]+10*b[105] == 0.0)
@constraint(m, e120, b[86]-b[87] <= 0.0)
@constraint(m, e121, b[88]-b[89] <= 0.0)
@constraint(m, e122, b[90]-b[91] <= 0.0)
@constraint(m, e123, b[92]-b[93] <= 0.0)
@constraint(m, e124, b[94]-b[95] <= 0.0)
@constraint(m, e125, b[96]+b[97] <= 1.0)
@constraint(m, e126, b[96]+b[97] <= 1.0)
@constraint(m, e127, b[98]+b[99] <= 1.0)
@constraint(m, e128, b[98]+b[99] <= 1.0)
@constraint(m, e129, b[100]+b[101] <= 1.0)
@constraint(m, e130, b[100]+b[101] <= 1.0)
@constraint(m, e131, b[102]+b[103] <= 1.0)
@constraint(m, e132, b[102]+b[103] <= 1.0)
@constraint(m, e133, b[104]+b[105] <= 1.0)
@constraint(m, e134, b[104]+b[105] <= 1.0)
@constraint(m, e135, b[86]-b[96] <= 0.0)
@constraint(m, e136, -b[86]+b[87]-b[97] <= 0.0)
@constraint(m, e137, b[88]-b[98] <= 0.0)
@constraint(m, e138, -b[88]+b[89]-b[99] <= 0.0)
@constraint(m, e139, b[90]-b[100] <= 0.0)
@constraint(m, e140, -b[90]+b[91]-b[101] <= 0.0)
@constraint(m, e141, b[92]-b[102] <= 0.0)
@constraint(m, e142, -b[92]+b[93]-b[103] <= 0.0)
@constraint(m, e143, b[94]-b[104] <= 0.0)
@constraint(m, e144, -b[94]+b[95]-b[105] <= 0.0)
@constraint(m, e145, b[86]+b[88] == 1.0)
@constraint(m, e146, b[87]+b[89] == 1.0)
@constraint(m, e147, b[86]+b[88]-b[90] >= 0.0)
@constraint(m, e148, b[87]+b[89]-b[91] >= 0.0)
@constraint(m, e149, b[86]+b[88]-b[92] >= 0.0)
@constraint(m, e150, b[87]+b[89]-b[93] >= 0.0)
@constraint(m, e151, b[86]+b[88]-b[94] >= 0.0)
@constraint(m, e152, b[87]+b[89]-b[95] >= 0.0)


# ----- Objective ----- #
@objective(m, Max, x[1])

m = m 		 # model get returned when including this script. 
