using JuMP

m = Model()

@variable(m, x[1:134])
@variable(m, b[1:40])

setlowerbound(x[117], 0.0)
setlowerbound(x[85], 0.0)
setlowerbound(x[101], 0.0)
setlowerbound(x[16], 0.0)
setlowerbound(x[89], 0.0)
setlowerbound(x[118], 0.0)
setlowerbound(x[93], 0.0)
setlowerbound(x[14], 0.0)
setlowerbound(x[62], 0.0)
setlowerbound(x[38], 0.0)
setlowerbound(x[114], 0.0)
setlowerbound(x[132], 0.0)
setlowerbound(x[42], 0.0)
setlowerbound(x[78], 0.0)
setlowerbound(x[91], 0.0)
setlowerbound(x[56], 0.0)
setlowerbound(x[105], 0.0)
setlowerbound(x[22], 0.0)
setlowerbound(x[59], 0.0)
setlowerbound(x[77], 0.0)
setlowerbound(x[110], 0.0)
setlowerbound(x[113], 0.0)
setlowerbound(x[74], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[130], 0.0)
setlowerbound(x[9], 0.0)
setlowerbound(x[92], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[100], 0.0)
setlowerbound(x[69], 0.0)
setlowerbound(x[106], 0.0)
setlowerbound(x[81], 0.0)
setlowerbound(x[111], 0.0)
setlowerbound(x[43], 0.0)
setlowerbound(x[71], 0.0)
setlowerbound(x[36], 0.0)
setlowerbound(x[131], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[32], 0.0)
setlowerbound(x[54], 0.0)
setlowerbound(x[27], 0.0)
setlowerbound(x[87], 0.0)
setlowerbound(x[96], 0.0)
setlowerbound(x[3], 0.0)
setlowerbound(x[25], 0.0)
setlowerbound(x[30], 0.0)
setlowerbound(x[58], 0.0)
setlowerbound(x[88], 0.0)
setlowerbound(x[11], 0.0)
setlowerbound(x[94], 0.0)
setlowerbound(x[29], 0.0)
setlowerbound(x[53], 0.0)
setlowerbound(x[128], 0.0)
setlowerbound(x[5], 0.0)
setlowerbound(x[37], 0.0)
setlowerbound(x[63], 0.0)
setlowerbound(x[57], 0.0)
setlowerbound(x[55], 0.0)
setlowerbound(x[82], 0.0)
setlowerbound(x[24], 0.0)
setlowerbound(x[122], 0.0)
setlowerbound(x[129], 0.0)
setlowerbound(x[41], 0.0)
setlowerbound(x[18], 0.0)
setlowerbound(x[52], 0.0)
setlowerbound(x[104], 0.0)
setlowerbound(x[1], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[13], 0.0)
setlowerbound(x[49], 0.0)
setlowerbound(x[120], 0.0)
setlowerbound(x[121], 0.0)
setlowerbound(x[21], 0.0)
setlowerbound(x[10], 0.0)
setlowerbound(x[72], 0.0)
setlowerbound(x[80], 0.0)
setlowerbound(x[67], 0.0)
setlowerbound(x[86], 0.0)
setlowerbound(x[126], 0.0)
setlowerbound(x[79], 0.0)
setlowerbound(x[103], 0.0)
setlowerbound(x[107], 0.0)
setlowerbound(x[26], 0.0)
setlowerbound(x[45], 0.0)
setlowerbound(x[66], 0.0)
setlowerbound(x[75], 0.0)
setlowerbound(x[12], 0.0)
setlowerbound(x[40], 0.0)
setlowerbound(x[116], 0.0)
setlowerbound(x[44], 0.0)
setlowerbound(x[95], 0.0)
setlowerbound(x[98], 0.0)
setlowerbound(x[61], 0.0)
setlowerbound(x[50], 0.0)
setlowerbound(x[31], 0.0)
setlowerbound(x[33], 0.0)
setlowerbound(x[47], 0.0)
setlowerbound(x[90], 0.0)
setlowerbound(x[68], 0.0)
setlowerbound(x[28], 0.0)
setlowerbound(x[35], 0.0)
setlowerbound(x[99], 0.0)
setlowerbound(x[64], 0.0)
setlowerbound(x[97], 0.0)
setlowerbound(x[112], 0.0)
setlowerbound(x[115], 0.0)
setlowerbound(x[123], 0.0)
setlowerbound(x[127], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[60], 0.0)
setlowerbound(x[124], 0.0)
setlowerbound(x[17], 0.0)
setlowerbound(x[119], 0.0)
setlowerbound(x[23], 0.0)
setlowerbound(x[84], 0.0)
setlowerbound(x[34], 0.0)
setlowerbound(x[46], 0.0)
setlowerbound(x[51], 0.0)
setlowerbound(x[109], 0.0)
setlowerbound(x[19], 0.0)
setlowerbound(x[48], 0.0)
setlowerbound(x[73], 0.0)
setlowerbound(x[125], 0.0)
setlowerbound(x[20], 0.0)
setlowerbound(x[39], 0.0)
setlowerbound(x[15], 0.0)
setlowerbound(x[108], 0.0)
setlowerbound(x[70], 0.0)
setlowerbound(x[83], 0.0)
setlowerbound(x[102], 0.0)
setlowerbound(x[133], 0.0)
setlowerbound(x[65], 0.0)
setlowerbound(x[76], 0.0)
setupperbound(x[1],1.0e6)
setupperbound(x[2],1.0e6)
setupperbound(x[3],1.0e6)
setupperbound(x[4],1.0e6)
setupperbound(x[5],1.0e6)
setupperbound(x[6],1.0e6)
setupperbound(x[7],1.0e6)
setupperbound(x[8],1.0e6)
setupperbound(x[9],1.0e6)
setupperbound(x[10],1.0e6)
setupperbound(x[11],1.0e6)
setupperbound(x[12],1.0e6)
setupperbound(x[13],1.0e6)
setupperbound(x[14],1.0e6)
setupperbound(x[15],1.0e6)
setupperbound(x[16],1.0e6)
setupperbound(x[17],1.0e6)
setupperbound(x[18],1.0e6)
setupperbound(x[19],1.0e6)
setupperbound(x[20],1.0e6)
setupperbound(x[21],1.0e6)
setupperbound(x[22],1.0e6)
setupperbound(x[23],1.0e6)
setupperbound(x[24],1.0e6)
setupperbound(x[25],1.0e6)
setupperbound(x[26],1.0e6)
setupperbound(x[27],1.0e6)
setupperbound(x[28],1.0e6)
setupperbound(x[29],1.0e6)
setupperbound(x[30],1.0e6)
setupperbound(x[31],1.0e6)
setupperbound(x[32],1.0e6)
setupperbound(x[33],1.0e6)
setupperbound(x[34],1.0e6)
setupperbound(x[35],1.0e6)
setupperbound(x[36],1.0e6)
setupperbound(x[37],1.0e6)
setupperbound(x[38],1.0e6)
setupperbound(x[39],1.0e6)
setupperbound(x[40],1.0e6)
setupperbound(x[41],1.0e6)
setupperbound(x[42],1.0e6)
setupperbound(x[43],1.0e6)
setupperbound(x[44],1.0e6)
setupperbound(x[45],1.0e6)
setupperbound(x[46],1.0e6)
setupperbound(x[47],1.0e6)
setupperbound(x[48],1.0e6)
setupperbound(x[49],1.0e6)
setupperbound(x[50],1.0e6)
setupperbound(x[51],1.0e6)
setupperbound(x[52],1.0e6)
setupperbound(x[53],1.0e6)
setupperbound(x[54],1.0e6)
setupperbound(x[55],1.0e6)
setupperbound(x[56],1.0e6)
setupperbound(x[57],1.0e6)
setupperbound(x[58],1.0e6)
setupperbound(x[59],1.0e6)
setupperbound(x[60],1.0e6)
setupperbound(x[61],1.0e6)
setupperbound(x[62],1.0e6)
setupperbound(x[63],1.0e6)
setupperbound(x[64],1.0e6)
setupperbound(x[65],1.0e6)
setupperbound(x[66],1.0e6)
setupperbound(x[67],1.0e6)
setupperbound(x[68],1.0e6)
setupperbound(x[69],1.0e6)
setupperbound(x[70],1.0e6)
setupperbound(x[71],1.0e6)
setupperbound(x[72],1.0e6)
setupperbound(x[73],1.0e6)
setupperbound(x[74],1.0e6)
setupperbound(x[75],1.0e6)
setupperbound(x[76],1.0e6)
setupperbound(x[77],1.0e6)
setupperbound(x[78],1.0e6)
setupperbound(x[79],1.0e6)
setupperbound(x[80],1.0e6)
setupperbound(x[81],1.0e6)
setupperbound(x[82],1.0e6)
setupperbound(x[83],1.0e6)
setupperbound(x[84],1.0e6)
setupperbound(x[85],1.0e6)
setupperbound(x[86],1.0e6)
setupperbound(x[87],1.0e6)
setupperbound(x[88],1.0e6)
setupperbound(x[89],1.0e6)
setupperbound(x[90],1.0e6)
setupperbound(x[91],1.0e6)
setupperbound(x[92],1.0e6)
setupperbound(x[93],1.0e6)
setupperbound(x[94],1.0e6)
setupperbound(x[95],1.0e6)
setupperbound(x[96],1.0e6)
setupperbound(x[97],1.0e6)
setupperbound(x[98],1.0e6)
setupperbound(x[99],1.0e6)
setupperbound(x[100],1.0e6)
setupperbound(x[101],1.0e6)
setupperbound(x[102],1.0e6)
setupperbound(x[103],1.0e6)
setupperbound(x[104],1.0e6)
setupperbound(x[105],1.0e6)
setupperbound(x[106],1.0e6)
setupperbound(x[107],1.0e6)
setupperbound(x[108],1.0e6)
setupperbound(x[109],1.0e6)
setupperbound(x[110],1.0e6)
setupperbound(x[111],1.0e6)
setupperbound(x[112],1.0e6)
setupperbound(x[113],1.0e6)
setupperbound(x[114],1.0e6)
setupperbound(x[115],1.0e6)
setupperbound(x[116],1.0e6)
setupperbound(x[117],1.0e6)
setupperbound(x[118],1.0e6)
setupperbound(x[119],1.0e6)
setupperbound(x[120],1.0e6)
setupperbound(x[121],1.0e6)
setupperbound(x[122],1.0e6)
setupperbound(x[123],1.0e6)
setupperbound(x[124],1.0e6)
setupperbound(x[125],1.0e6)
setupperbound(x[126],1.0e6)
setupperbound(x[127],1.0e6)
setupperbound(x[128],1.0e6)
setupperbound(x[129],1.0e6)
setupperbound(x[130],1.0e6)
setupperbound(x[131],1.0e6)
setupperbound(x[132],1.0e6)
setupperbound(x[133],1.0e6)

@NLconstraint(m, e99,x[101]*x[110]-x[29]==0.0)
@NLconstraint(m, e100,x[102]*x[110]-x[30]==0.0)
@NLconstraint(m, e101,x[103]*x[110]-x[31]==0.0)
@NLconstraint(m, e102,x[101]*x[111]-x[32]==0.0)
@NLconstraint(m, e103,x[102]*x[111]-x[33]==0.0)
@NLconstraint(m, e104,x[103]*x[111]-x[34]==0.0)
@NLconstraint(m, e105,x[101]*x[112]-x[35]==0.0)
@NLconstraint(m, e106,x[102]*x[112]-x[36]==0.0)
@NLconstraint(m, e107,x[103]*x[112]-x[37]==0.0)
@NLconstraint(m, e108,x[104]*x[113]-x[38]==0.0)
@NLconstraint(m, e109,x[105]*x[113]-x[39]==0.0)
@NLconstraint(m, e110,x[106]*x[113]-x[40]==0.0)
@NLconstraint(m, e111,x[104]*x[114]-x[41]==0.0)
@NLconstraint(m, e112,x[105]*x[114]-x[42]==0.0)
@NLconstraint(m, e113,x[106]*x[114]-x[43]==0.0)
@NLconstraint(m, e114,x[104]*x[115]-x[44]==0.0)
@NLconstraint(m, e115,x[105]*x[115]-x[45]==0.0)
@NLconstraint(m, e116,x[106]*x[115]-x[46]==0.0)
@NLconstraint(m, e117,x[107]*x[116]-x[47]==0.0)
@NLconstraint(m, e118,x[108]*x[116]-x[48]==0.0)
@NLconstraint(m, e119,x[109]*x[116]-x[49]==0.0)
@NLconstraint(m, e120,x[107]*x[117]-x[50]==0.0)
@NLconstraint(m, e121,x[108]*x[117]-x[51]==0.0)
@NLconstraint(m, e122,x[109]*x[117]-x[52]==0.0)
@NLconstraint(m, e123,x[107]*x[118]-x[53]==0.0)
@NLconstraint(m, e124,x[108]*x[118]-x[54]==0.0)
@NLconstraint(m, e125,x[109]*x[118]-x[55]==0.0)
@NLconstraint(m, e126,x[101]*x[122]-x[65]==0.0)
@NLconstraint(m, e127,x[102]*x[122]-x[66]==0.0)
@NLconstraint(m, e128,x[103]*x[122]-x[67]==0.0)
@NLconstraint(m, e129,x[104]*x[123]-x[68]==0.0)
@NLconstraint(m, e130,x[105]*x[123]-x[69]==0.0)
@NLconstraint(m, e131,x[106]*x[123]-x[70]==0.0)
@NLconstraint(m, e132,x[107]*x[124]-x[71]==0.0)
@NLconstraint(m, e133,x[108]*x[124]-x[72]==0.0)
@NLconstraint(m, e134,x[109]*x[124]-x[73]==0.0)
@NLconstraint(m, e135,x[26]*x[110]-x[1]==0.0)
@NLconstraint(m, e136,x[26]*x[111]-x[2]==0.0)
@NLconstraint(m, e137,x[26]*x[112]-x[3]==0.0)
@NLconstraint(m, e138,x[27]*x[113]-x[4]==0.0)
@NLconstraint(m, e139,x[27]*x[114]-x[5]==0.0)
@NLconstraint(m, e140,x[27]*x[115]-x[6]==0.0)
@NLconstraint(m, e141,x[28]*x[116]-x[7]==0.0)
@NLconstraint(m, e142,x[28]*x[117]-x[8]==0.0)
@NLconstraint(m, e143,x[28]*x[118]-x[9]==0.0)
@NLconstraint(m, e144,x[26]*x[122]-x[13]==0.0)
@NLconstraint(m, e145,x[27]*x[123]-x[14]==0.0)
@NLconstraint(m, e146,x[28]*x[124]-x[15]==0.0)

@constraint(m, e1, -x[26]-x[27]-x[28]+x[134]==0.0)
@constraint(m, e2, -x[10]-x[16]-x[17]-x[18]==-20.0)
@constraint(m, e3, -x[11]-x[19]-x[20]-x[21]==-15.0)
@constraint(m, e4, -x[12]-x[22]-x[23]-x[24]==-5.0)
@constraint(m, e5, -x[1]-x[4]-x[7]-x[16]-x[19]-x[22]+x[26]==0.0)
@constraint(m, e6, -x[2]-x[5]-x[8]-x[17]-x[20]-x[23]+x[27]==0.0)
@constraint(m, e7, -x[3]-x[6]-x[9]-x[18]-x[21]-x[24]+x[28]==0.0)
@constraint(m, e8, -x[1]-x[2]-x[3]-x[13]+x[26]==0.0)
@constraint(m, e9, -x[4]-x[5]-x[6]-x[14]+x[27]==0.0)
@constraint(m, e10, -x[7]-x[8]-x[9]-x[15]+x[28]==0.0)
@constraint(m, e11, -x[10]-x[11]-x[12]-x[13]-x[14]-x[15]+x[25]==0.0)
@constraint(m, e12, -x[56]-x[74]-x[77]-x[80]==-12000.0)
@constraint(m, e13, -x[57]-x[75]-x[78]-x[81]==-10000.0)
@constraint(m, e14, -x[58]-x[76]-x[79]-x[82]==-10000.0)
@constraint(m, e15, -x[59]-x[83]-x[86]-x[89]==-6000.0)
@constraint(m, e16, -x[60]-x[84]-x[87]-x[90]==-3000.0)
@constraint(m, e17, -x[61]-x[85]-x[88]-x[91]==-1500.0)
@constraint(m, e18, -x[62]-x[92]-x[95]-x[98]==-1000.0)
@constraint(m, e19, -x[63]-x[93]-x[96]-x[99]==-5000.0)
@constraint(m, e20, -x[64]-x[94]-x[97]-x[100]==-1000.0)
@constraint(m, e21, -x[74]+12000*x[125]==0.0)
@constraint(m, e22, -x[75]+10000*x[125]==0.0)
@constraint(m, e23, -x[76]+10000*x[125]==0.0)
@constraint(m, e24, -x[77]+12000*x[126]==0.0)
@constraint(m, e25, -x[78]+10000*x[126]==0.0)
@constraint(m, e26, -x[79]+10000*x[126]==0.0)
@constraint(m, e27, -x[80]+12000*x[127]==0.0)
@constraint(m, e28, -x[81]+10000*x[127]==0.0)
@constraint(m, e29, -x[82]+10000*x[127]==0.0)
@constraint(m, e30, -x[83]+6000*x[128]==0.0)
@constraint(m, e31, -x[84]+3000*x[128]==0.0)
@constraint(m, e32, -x[85]+1500*x[128]==0.0)
@constraint(m, e33, -x[86]+6000*x[129]==0.0)
@constraint(m, e34, -x[87]+3000*x[129]==0.0)
@constraint(m, e35, -x[88]+1500*x[129]==0.0)
@constraint(m, e36, -x[89]+6000*x[130]==0.0)
@constraint(m, e37, -x[90]+3000*x[130]==0.0)
@constraint(m, e38, -x[91]+1500*x[130]==0.0)
@constraint(m, e39, -x[92]+1000*x[131]==0.0)
@constraint(m, e40, -x[93]+5000*x[131]==0.0)
@constraint(m, e41, -x[94]+1000*x[131]==0.0)
@constraint(m, e42, -x[95]+1000*x[132]==0.0)
@constraint(m, e43, -x[96]+5000*x[132]==0.0)
@constraint(m, e44, -x[97]+1000*x[132]==0.0)
@constraint(m, e45, -x[98]+1000*x[133]==0.0)
@constraint(m, e46, -x[99]+5000*x[133]==0.0)
@constraint(m, e47, -x[100]+1000*x[133]==0.0)
@constraint(m, e48, -x[56]+12000*x[119]==0.0)
@constraint(m, e49, -x[57]+10000*x[119]==0.0)
@constraint(m, e50, -x[58]+10000*x[119]==0.0)
@constraint(m, e51, -x[59]+6000*x[120]==0.0)
@constraint(m, e52, -x[60]+3000*x[120]==0.0)
@constraint(m, e53, -x[61]+1500*x[120]==0.0)
@constraint(m, e54, -x[62]+1000*x[121]==0.0)
@constraint(m, e55, -x[63]+5000*x[121]==0.0)
@constraint(m, e56, -x[64]+1000*x[121]==0.0)
@constraint(m, e57, -x[16]+20*x[125]==0.0)
@constraint(m, e58, -x[17]+20*x[126]==0.0)
@constraint(m, e59, -x[18]+20*x[127]==0.0)
@constraint(m, e60, -x[19]+15*x[128]==0.0)
@constraint(m, e61, -x[20]+15*x[129]==0.0)
@constraint(m, e62, -x[21]+15*x[130]==0.0)
@constraint(m, e63, -x[22]+5*x[131]==0.0)
@constraint(m, e64, -x[23]+5*x[132]==0.0)
@constraint(m, e65, -x[24]+5*x[133]==0.0)
@constraint(m, e66, -x[10]+20*x[119]==0.0)
@constraint(m, e67, -x[11]+15*x[120]==0.0)
@constraint(m, e68, -x[12]+5*x[121]==0.0)
@constraint(m, e69, x[119]+x[125]+x[126]+x[127]==1.0)
@constraint(m, e70, x[120]+x[128]+x[129]+x[130]==1.0)
@constraint(m, e71, x[121]+x[131]+x[132]+x[133]==1.0)
@constraint(m, e72, -600*x[26]+x[29]+x[38]+x[47]+x[74]+x[83]+x[92]<=0.0)
@constraint(m, e73, -1000*x[26]+x[30]+x[39]+x[48]+x[75]+x[84]+x[93]<=0.0)
@constraint(m, e74, -1000*x[26]+x[31]+x[40]+x[49]+x[76]+x[85]+x[94]<=0.0)
@constraint(m, e75, -600*x[27]+x[32]+x[41]+x[50]+x[77]+x[86]+x[95]<=0.0)
@constraint(m, e76, -1000*x[27]+x[33]+x[42]+x[51]+x[78]+x[87]+x[96]<=0.0)
@constraint(m, e77, -1000*x[27]+x[34]+x[43]+x[52]+x[79]+x[88]+x[97]<=0.0)
@constraint(m, e78, -600*x[28]+x[35]+x[44]+x[53]+x[80]+x[89]+x[98]<=0.0)
@constraint(m, e79, -1000*x[28]+x[36]+x[45]+x[54]+x[81]+x[90]+x[99]<=0.0)
@constraint(m, e80, -1000*x[28]+x[37]+x[46]+x[55]+x[82]+x[91]+x[100]<=0.0)
@constraint(m, e81, 0.1*x[29]+0.1*x[38]+0.1*x[47]+0.1*x[74]+0.1*x[83]+0.1*x[92]-x[101]==0.0)
@constraint(m, e82, x[30]+x[39]+x[48]+x[75]+x[84]+x[93]-x[102]==0.0)
@constraint(m, e83, x[31]+x[40]+x[49]+x[76]+x[85]+x[94]-x[103]==0.0)
@constraint(m, e84, x[32]+x[41]+x[50]+x[77]+x[86]+x[95]-x[104]==0.0)
@constraint(m, e85, 0.01*x[33]+0.01*x[42]+0.01*x[51]+0.01*x[78]+0.01*x[87]+0.01*x[96]-x[105]==0.0)
@constraint(m, e86, x[34]+x[43]+x[52]+x[79]+x[88]+x[97]-x[106]==0.0)
@constraint(m, e87, x[35]+x[44]+x[53]+x[80]+x[89]+x[98]-x[107]==0.0)
@constraint(m, e88, x[36]+x[45]+x[54]+x[81]+x[90]+x[99]-x[108]==0.0)
@constraint(m, e89, 0.2*x[37]+0.2*x[46]+0.2*x[55]+0.2*x[82]+0.2*x[91]+0.2*x[100]-x[109]==0.0)
@constraint(m, e90, -x[29]-x[32]-x[35]-x[65]+x[101]==0.0)
@constraint(m, e91, -x[30]-x[33]-x[36]-x[66]+x[102]==0.0)
@constraint(m, e92, -x[31]-x[34]-x[37]-x[67]+x[103]==0.0)
@constraint(m, e93, -x[38]-x[41]-x[44]-x[68]+x[104]==0.0)
@constraint(m, e94, -x[39]-x[42]-x[45]-x[69]+x[105]==0.0)
@constraint(m, e95, -x[40]-x[43]-x[46]-x[70]+x[106]==0.0)
@constraint(m, e96, -x[47]-x[50]-x[53]-x[71]+x[107]==0.0)
@constraint(m, e97, -x[48]-x[51]-x[54]-x[72]+x[108]==0.0)
@constraint(m, e98, -x[49]-x[52]-x[55]-x[73]+x[109]==0.0)
@constraint(m, e147, x[110]+x[111]+x[112]+x[122]==1.0)
@constraint(m, e148, x[113]+x[114]+x[115]+x[123]==1.0)
@constraint(m, e149, x[116]+x[117]+x[118]+x[124]==1.0)
@constraint(m, e150, -100*x[25]+x[56]+x[59]+x[62]+x[65]+x[68]+x[71]<=0.0)
@constraint(m, e151, -100*x[25]+x[57]+x[60]+x[63]+x[66]+x[69]+x[72]<=0.0)
@constraint(m, e152, -100*x[25]+x[58]+x[61]+x[64]+x[67]+x[70]+x[73]<=0.0)

m = m
