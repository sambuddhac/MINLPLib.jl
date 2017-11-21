using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
b_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56]
@variable(m, b[b_Idx])
x_Idx = Any[58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147]
@variable(m, x[x_Idx])
setcategory(b[35], :Bin)
setcategory(b[38], :Bin)
setcategory(b[44], :Bin)
setcategory(b[15], :Bin)
setcategory(b[42], :Bin)
setcategory(b[49], :Bin)
setcategory(b[45], :Bin)
setcategory(b[41], :Bin)
setcategory(b[48], :Bin)
setcategory(b[23], :Bin)
setcategory(b[54], :Bin)
setcategory(b[21], :Bin)
setcategory(b[28], :Bin)
setcategory(b[36], :Bin)
setcategory(b[22], :Bin)
setcategory(b[46], :Bin)
setcategory(b[53], :Bin)
setcategory(b[8], :Bin)
setcategory(b[33], :Bin)
setcategory(b[56], :Bin)
setcategory(b[30], :Bin)
setcategory(b[29], :Bin)
setcategory(b[40], :Bin)
setcategory(b[32], :Bin)
setcategory(b[34], :Bin)
setcategory(b[5], :Bin)
setcategory(b[16], :Bin)
setcategory(b[13], :Bin)
setcategory(b[51], :Bin)
setcategory(b[12], :Bin)
setcategory(b[2], :Bin)
setcategory(b[14], :Bin)
setcategory(b[20], :Bin)
setcategory(b[43], :Bin)
setcategory(b[11], :Bin)
setcategory(b[19], :Bin)
setcategory(b[47], :Bin)
setcategory(b[25], :Bin)
setcategory(b[7], :Bin)
setcategory(b[9], :Bin)
setcategory(b[3], :Bin)
setcategory(b[17], :Bin)
setcategory(b[39], :Bin)
setcategory(b[4], :Bin)
setcategory(b[6], :Bin)
setcategory(b[1], :Bin)
setcategory(b[37], :Bin)
setcategory(b[50], :Bin)
setcategory(b[27], :Bin)
setcategory(b[18], :Bin)
setcategory(b[31], :Bin)
setcategory(b[52], :Bin)
setcategory(b[24], :Bin)
setcategory(b[55], :Bin)
setcategory(b[10], :Bin)
setcategory(b[26], :Bin)
setlowerbound(x[114], 2.0)
setupperbound(x[114], 8.0)
setlowerbound(x[115], 2.0)
setupperbound(x[115], 8.0)
setlowerbound(x[116], 2.0)
setupperbound(x[116], 8.0)
setlowerbound(x[117], 3.0)
setupperbound(x[117], 11.31)
setlowerbound(x[118], 3.0)
setupperbound(x[118], 11.31)
setlowerbound(x[119], 1.5)
setupperbound(x[119], 6.0)
setlowerbound(x[120], 1.5)
setupperbound(x[120], 6.0)
setlowerbound(x[121], 1.5)
setupperbound(x[121], 6.0)
setlowerbound(x[122], 11.31)
setupperbound(x[122], 11.31)
setlowerbound(x[123], 2.0)
setupperbound(x[123], 8.0)
setlowerbound(x[124], 2.0)
setupperbound(x[124], 8.0)
setlowerbound(x[125], 2.0)
setupperbound(x[125], 8.0)
setlowerbound(x[126], 3.183)
setupperbound(x[126], 12.0)
setlowerbound(x[127], 3.183)
setupperbound(x[127], 12.0)
setlowerbound(x[128], 1.5)
setupperbound(x[128], 6.0)
setlowerbound(x[129], 1.5)
setupperbound(x[129], 6.0)
setlowerbound(x[130], 1.5)
setupperbound(x[130], 6.0)
setlowerbound(x[131], 13.0)
setupperbound(x[131], 13.0)


# ----- Constraints ----- #
@constraint(m, e1, objvar-x[58]-x[59]-x[72]-x[73]-x[84]-x[85]-x[94]-x[95]-x[102]-x[103]-x[108]-x[109]-x[112]-x[113] == 0.0)
@constraint(m, e2, x[132]-x[133] <= 0.0)
@constraint(m, e3, 0.5*x[114]-x[122]+x[132] <= 0.0)
@constraint(m, e4, 0.5*x[114]-x[132] <= 0.0)
@constraint(m, e5, 0.5*x[123]-x[131]+x[140] <= 0.0)
@constraint(m, e6, 0.5*x[123]-x[140] <= 0.0)
@constraint(m, e7, 0.5*x[115]-x[122]+x[133] <= 0.0)
@constraint(m, e8, 0.5*x[115]-x[133] <= 0.0)
@constraint(m, e9, 0.5*x[124]-x[131]+x[141] <= 0.0)
@constraint(m, e10, 0.5*x[124]-x[141] <= 0.0)
@constraint(m, e11, 0.5*x[116]-x[122]+x[134] <= 0.0)
@constraint(m, e12, 0.5*x[116]-x[134] <= 0.0)
@constraint(m, e13, 0.5*x[125]-x[131]+x[142] <= 0.0)
@constraint(m, e14, 0.5*x[125]-x[142] <= 0.0)
@constraint(m, e15, 0.5*x[117]-x[122]+x[135] <= 0.0)
@constraint(m, e16, 0.5*x[117]-x[135] <= 0.0)
@constraint(m, e17, 0.5*x[126]-x[131]+x[143] <= 0.0)
@constraint(m, e18, 0.5*x[126]-x[143] <= 0.0)
@constraint(m, e19, 0.5*x[118]-x[122]+x[136] <= 0.0)
@constraint(m, e20, 0.5*x[118]-x[136] <= 0.0)
@constraint(m, e21, 0.5*x[127]-x[131]+x[144] <= 0.0)
@constraint(m, e22, 0.5*x[127]-x[144] <= 0.0)
@constraint(m, e23, 0.5*x[119]-x[122]+x[137] <= 0.0)
@constraint(m, e24, 0.5*x[119]-x[137] <= 0.0)
@constraint(m, e25, 0.5*x[128]-x[131]+x[145] <= 0.0)
@constraint(m, e26, 0.5*x[128]-x[145] <= 0.0)
@constraint(m, e27, 0.5*x[120]-x[122]+x[138] <= 0.0)
@constraint(m, e28, 0.5*x[120]-x[138] <= 0.0)
@constraint(m, e29, 0.5*x[129]-x[131]+x[146] <= 0.0)
@constraint(m, e30, 0.5*x[129]-x[146] <= 0.0)
@constraint(m, e31, 0.5*x[121]-x[122]+x[139] <= 0.0)
@constraint(m, e32, 0.5*x[121]-x[139] <= 0.0)
@constraint(m, e33, 0.5*x[130]-x[131]+x[147] <= 0.0)
@constraint(m, e34, 0.5*x[130]-x[147] <= 0.0)
@constraint(m, e35, -x[58]+x[132]-x[133] <= 0.0)
@constraint(m, e36, -x[58]-x[132]+x[133] <= 0.0)
@constraint(m, e37, -x[59]+x[140]-x[141] <= 0.0)
@constraint(m, e38, -x[59]-x[140]+x[141] <= 0.0)
@constraint(m, e39, -11.31*b[1]-11.31*b[2]+0.5*x[114]+0.5*x[115]-x[132]+x[133] <= 0.0)
@constraint(m, e40, -11.31*b[1]+11.31*b[2]+0.5*x[114]+0.5*x[115]+x[132]-x[133] <= 11.31)
@constraint(m, e41, 13*b[1]-13*b[2]+0.5*x[123]+0.5*x[124]-x[140]+x[141] <= 13.0)
@constraint(m, e42, 13*b[1]+13*b[2]+0.5*x[123]+0.5*x[124]+x[140]-x[141] <= 26.0)
@constraint(m, e43, -x[60]+x[132]-x[134] <= 0.0)
@constraint(m, e44, -x[60]-x[132]+x[134] <= 0.0)
@constraint(m, e45, -x[61]+x[140]-x[142] <= 0.0)
@constraint(m, e46, -x[61]-x[140]+x[142] <= 0.0)
@constraint(m, e47, -11.31*b[3]-11.31*b[4]+0.5*x[114]+0.5*x[116]-x[132]+x[134] <= 0.0)
@constraint(m, e48, -11.31*b[3]+11.31*b[4]+0.5*x[114]+0.5*x[116]+x[132]-x[134] <= 11.31)
@constraint(m, e49, 13*b[3]-13*b[4]+0.5*x[123]+0.5*x[125]-x[140]+x[142] <= 13.0)
@constraint(m, e50, 13*b[3]+13*b[4]+0.5*x[123]+0.5*x[125]+x[140]-x[142] <= 26.0)
@constraint(m, e51, -x[62]+x[132]-x[135] <= 0.0)
@constraint(m, e52, -x[62]-x[132]+x[135] <= 0.0)
@constraint(m, e53, -x[63]+x[140]-x[143] <= 0.0)
@constraint(m, e54, -x[63]-x[140]+x[143] <= 0.0)
@constraint(m, e55, -11.31*b[5]-11.31*b[6]+0.5*x[114]+0.5*x[117]-x[132]+x[135] <= 0.0)
@constraint(m, e56, -11.31*b[5]+11.31*b[6]+0.5*x[114]+0.5*x[117]+x[132]-x[135] <= 11.31)
@constraint(m, e57, 13*b[5]-13*b[6]+0.5*x[123]+0.5*x[126]-x[140]+x[143] <= 13.0)
@constraint(m, e58, 13*b[5]+13*b[6]+0.5*x[123]+0.5*x[126]+x[140]-x[143] <= 26.0)
@constraint(m, e59, -x[64]+x[132]-x[136] <= 0.0)
@constraint(m, e60, -x[64]-x[132]+x[136] <= 0.0)
@constraint(m, e61, -x[65]+x[140]-x[144] <= 0.0)
@constraint(m, e62, -x[65]-x[140]+x[144] <= 0.0)
@constraint(m, e63, -11.31*b[7]-11.31*b[8]+0.5*x[114]+0.5*x[118]-x[132]+x[136] <= 0.0)
@constraint(m, e64, -11.31*b[7]+11.31*b[8]+0.5*x[114]+0.5*x[118]+x[132]-x[136] <= 11.31)
@constraint(m, e65, 13*b[7]-13*b[8]+0.5*x[123]+0.5*x[127]-x[140]+x[144] <= 13.0)
@constraint(m, e66, 13*b[7]+13*b[8]+0.5*x[123]+0.5*x[127]+x[140]-x[144] <= 26.0)
@constraint(m, e67, -x[66]+x[132]-x[137] <= 0.0)
@constraint(m, e68, -x[66]-x[132]+x[137] <= 0.0)
@constraint(m, e69, -x[67]+x[140]-x[145] <= 0.0)
@constraint(m, e70, -x[67]-x[140]+x[145] <= 0.0)
@constraint(m, e71, -11.31*b[9]-11.31*b[10]+0.5*x[114]+0.5*x[119]-x[132]+x[137] <= 0.0)
@constraint(m, e72, -11.31*b[9]+11.31*b[10]+0.5*x[114]+0.5*x[119]+x[132]-x[137] <= 11.31)
@constraint(m, e73, 13*b[9]-13*b[10]+0.5*x[123]+0.5*x[128]-x[140]+x[145] <= 13.0)
@constraint(m, e74, 13*b[9]+13*b[10]+0.5*x[123]+0.5*x[128]+x[140]-x[145] <= 26.0)
@constraint(m, e75, -x[68]+x[132]-x[138] <= 0.0)
@constraint(m, e76, -x[68]-x[132]+x[138] <= 0.0)
@constraint(m, e77, -x[69]+x[140]-x[146] <= 0.0)
@constraint(m, e78, -x[69]-x[140]+x[146] <= 0.0)
@constraint(m, e79, -11.31*b[11]-11.31*b[12]+0.5*x[114]+0.5*x[120]-x[132]+x[138] <= 0.0)
@constraint(m, e80, -11.31*b[11]+11.31*b[12]+0.5*x[114]+0.5*x[120]+x[132]-x[138] <= 11.31)
@constraint(m, e81, 13*b[11]-13*b[12]+0.5*x[123]+0.5*x[129]-x[140]+x[146] <= 13.0)
@constraint(m, e82, 13*b[11]+13*b[12]+0.5*x[123]+0.5*x[129]+x[140]-x[146] <= 26.0)
@constraint(m, e83, -x[70]+x[132]-x[139] <= 0.0)
@constraint(m, e84, -x[70]-x[132]+x[139] <= 0.0)
@constraint(m, e85, -x[71]+x[140]-x[147] <= 0.0)
@constraint(m, e86, -x[71]-x[140]+x[147] <= 0.0)
@constraint(m, e87, -11.31*b[13]-11.31*b[14]+0.5*x[114]+0.5*x[121]-x[132]+x[139] <= 0.0)
@constraint(m, e88, -11.31*b[13]+11.31*b[14]+0.5*x[114]+0.5*x[121]+x[132]-x[139] <= 11.31)
@constraint(m, e89, 13*b[13]-13*b[14]+0.5*x[123]+0.5*x[130]-x[140]+x[147] <= 13.0)
@constraint(m, e90, 13*b[13]+13*b[14]+0.5*x[123]+0.5*x[130]+x[140]-x[147] <= 26.0)
@constraint(m, e91, -x[72]+x[133]-x[134] <= 0.0)
@constraint(m, e92, -x[72]-x[133]+x[134] <= 0.0)
@constraint(m, e93, -x[73]+x[141]-x[142] <= 0.0)
@constraint(m, e94, -x[73]-x[141]+x[142] <= 0.0)
@constraint(m, e95, -11.31*b[15]-11.31*b[16]+0.5*x[115]+0.5*x[116]-x[133]+x[134] <= 0.0)
@constraint(m, e96, -11.31*b[15]+11.31*b[16]+0.5*x[115]+0.5*x[116]+x[133]-x[134] <= 11.31)
@constraint(m, e97, 13*b[15]-13*b[16]+0.5*x[124]+0.5*x[125]-x[141]+x[142] <= 13.0)
@constraint(m, e98, 13*b[15]+13*b[16]+0.5*x[124]+0.5*x[125]+x[141]-x[142] <= 26.0)
@constraint(m, e99, -x[74]+x[133]-x[135] <= 0.0)
@constraint(m, e100, -x[74]-x[133]+x[135] <= 0.0)
@constraint(m, e101, -x[75]+x[141]-x[143] <= 0.0)
@constraint(m, e102, -x[75]-x[141]+x[143] <= 0.0)
@constraint(m, e103, -11.31*b[17]-11.31*b[18]+0.5*x[115]+0.5*x[117]-x[133]+x[135] <= 0.0)
@constraint(m, e104, -11.31*b[17]+11.31*b[18]+0.5*x[115]+0.5*x[117]+x[133]-x[135] <= 11.31)
@constraint(m, e105, 13*b[17]-13*b[18]+0.5*x[124]+0.5*x[126]-x[141]+x[143] <= 13.0)
@constraint(m, e106, 13*b[17]+13*b[18]+0.5*x[124]+0.5*x[126]+x[141]-x[143] <= 26.0)
@constraint(m, e107, -x[76]+x[133]-x[136] <= 0.0)
@constraint(m, e108, -x[76]-x[133]+x[136] <= 0.0)
@constraint(m, e109, -x[77]+x[141]-x[144] <= 0.0)
@constraint(m, e110, -x[77]-x[141]+x[144] <= 0.0)
@constraint(m, e111, -11.31*b[19]-11.31*b[20]+0.5*x[115]+0.5*x[118]-x[133]+x[136] <= 0.0)
@constraint(m, e112, -11.31*b[19]+11.31*b[20]+0.5*x[115]+0.5*x[118]+x[133]-x[136] <= 11.31)
@constraint(m, e113, 13*b[19]-13*b[20]+0.5*x[124]+0.5*x[127]-x[141]+x[144] <= 13.0)
@constraint(m, e114, 13*b[19]+13*b[20]+0.5*x[124]+0.5*x[127]+x[141]-x[144] <= 26.0)
@constraint(m, e115, -x[78]+x[133]-x[137] <= 0.0)
@constraint(m, e116, -x[78]-x[133]+x[137] <= 0.0)
@constraint(m, e117, -x[79]+x[141]-x[145] <= 0.0)
@constraint(m, e118, -x[79]-x[141]+x[145] <= 0.0)
@constraint(m, e119, -11.31*b[21]-11.31*b[22]+0.5*x[115]+0.5*x[119]-x[133]+x[137] <= 0.0)
@constraint(m, e120, -11.31*b[21]+11.31*b[22]+0.5*x[115]+0.5*x[119]+x[133]-x[137] <= 11.31)
@constraint(m, e121, 13*b[21]-13*b[22]+0.5*x[124]+0.5*x[128]-x[141]+x[145] <= 13.0)
@constraint(m, e122, 13*b[21]+13*b[22]+0.5*x[124]+0.5*x[128]+x[141]-x[145] <= 26.0)
@constraint(m, e123, -x[80]+x[133]-x[138] <= 0.0)
@constraint(m, e124, -x[80]-x[133]+x[138] <= 0.0)
@constraint(m, e125, -x[81]+x[141]-x[146] <= 0.0)
@constraint(m, e126, -x[81]-x[141]+x[146] <= 0.0)
@constraint(m, e127, -11.31*b[23]-11.31*b[24]+0.5*x[115]+0.5*x[120]-x[133]+x[138] <= 0.0)
@constraint(m, e128, -11.31*b[23]+11.31*b[24]+0.5*x[115]+0.5*x[120]+x[133]-x[138] <= 11.31)
@constraint(m, e129, 13*b[23]-13*b[24]+0.5*x[124]+0.5*x[129]-x[141]+x[146] <= 13.0)
@constraint(m, e130, 13*b[23]+13*b[24]+0.5*x[124]+0.5*x[129]+x[141]-x[146] <= 26.0)
@constraint(m, e131, -x[82]+x[133]-x[139] <= 0.0)
@constraint(m, e132, -x[82]-x[133]+x[139] <= 0.0)
@constraint(m, e133, -x[83]+x[141]-x[147] <= 0.0)
@constraint(m, e134, -x[83]-x[141]+x[147] <= 0.0)
@constraint(m, e135, -11.31*b[25]-11.31*b[26]+0.5*x[115]+0.5*x[121]-x[133]+x[139] <= 0.0)
@constraint(m, e136, -11.31*b[25]+11.31*b[26]+0.5*x[115]+0.5*x[121]+x[133]-x[139] <= 11.31)
@constraint(m, e137, 13*b[25]-13*b[26]+0.5*x[124]+0.5*x[130]-x[141]+x[147] <= 13.0)
@constraint(m, e138, 13*b[25]+13*b[26]+0.5*x[124]+0.5*x[130]+x[141]-x[147] <= 26.0)
@constraint(m, e139, -x[84]+x[134]-x[135] <= 0.0)
@constraint(m, e140, -x[84]-x[134]+x[135] <= 0.0)
@constraint(m, e141, -x[85]+x[142]-x[143] <= 0.0)
@constraint(m, e142, -x[85]-x[142]+x[143] <= 0.0)
@constraint(m, e143, -11.31*b[27]-11.31*b[28]+0.5*x[116]+0.5*x[117]-x[134]+x[135] <= 0.0)
@constraint(m, e144, -11.31*b[27]+11.31*b[28]+0.5*x[116]+0.5*x[117]+x[134]-x[135] <= 11.31)
@constraint(m, e145, 13*b[27]-13*b[28]+0.5*x[125]+0.5*x[126]-x[142]+x[143] <= 13.0)
@constraint(m, e146, 13*b[27]+13*b[28]+0.5*x[125]+0.5*x[126]+x[142]-x[143] <= 26.0)
@constraint(m, e147, -x[86]+x[134]-x[136] <= 0.0)
@constraint(m, e148, -x[86]-x[134]+x[136] <= 0.0)
@constraint(m, e149, -x[87]+x[142]-x[144] <= 0.0)
@constraint(m, e150, -x[87]-x[142]+x[144] <= 0.0)
@constraint(m, e151, -11.31*b[29]-11.31*b[30]+0.5*x[116]+0.5*x[118]-x[134]+x[136] <= 0.0)
@constraint(m, e152, -11.31*b[29]+11.31*b[30]+0.5*x[116]+0.5*x[118]+x[134]-x[136] <= 11.31)
@constraint(m, e153, 13*b[29]-13*b[30]+0.5*x[125]+0.5*x[127]-x[142]+x[144] <= 13.0)
@constraint(m, e154, 13*b[29]+13*b[30]+0.5*x[125]+0.5*x[127]+x[142]-x[144] <= 26.0)
@constraint(m, e155, -x[88]+x[134]-x[137] <= 0.0)
@constraint(m, e156, -x[88]-x[134]+x[137] <= 0.0)
@constraint(m, e157, -x[89]+x[142]-x[145] <= 0.0)
@constraint(m, e158, -x[89]-x[142]+x[145] <= 0.0)
@constraint(m, e159, -11.31*b[31]-11.31*b[32]+0.5*x[116]+0.5*x[119]-x[134]+x[137] <= 0.0)
@constraint(m, e160, -11.31*b[31]+11.31*b[32]+0.5*x[116]+0.5*x[119]+x[134]-x[137] <= 11.31)
@constraint(m, e161, 13*b[31]-13*b[32]+0.5*x[125]+0.5*x[128]-x[142]+x[145] <= 13.0)
@constraint(m, e162, 13*b[31]+13*b[32]+0.5*x[125]+0.5*x[128]+x[142]-x[145] <= 26.0)
@constraint(m, e163, -x[90]+x[134]-x[138] <= 0.0)
@constraint(m, e164, -x[90]-x[134]+x[138] <= 0.0)
@constraint(m, e165, -x[91]+x[142]-x[146] <= 0.0)
@constraint(m, e166, -x[91]-x[142]+x[146] <= 0.0)
@constraint(m, e167, -11.31*b[33]-11.31*b[34]+0.5*x[116]+0.5*x[120]-x[134]+x[138] <= 0.0)
@constraint(m, e168, -11.31*b[33]+11.31*b[34]+0.5*x[116]+0.5*x[120]+x[134]-x[138] <= 11.31)
@constraint(m, e169, 13*b[33]-13*b[34]+0.5*x[125]+0.5*x[129]-x[142]+x[146] <= 13.0)
@constraint(m, e170, 13*b[33]+13*b[34]+0.5*x[125]+0.5*x[129]+x[142]-x[146] <= 26.0)
@constraint(m, e171, -x[92]+x[134]-x[139] <= 0.0)
@constraint(m, e172, -x[92]-x[134]+x[139] <= 0.0)
@constraint(m, e173, -x[93]+x[142]-x[147] <= 0.0)
@constraint(m, e174, -x[93]-x[142]+x[147] <= 0.0)
@constraint(m, e175, -11.31*b[35]-11.31*b[36]+0.5*x[116]+0.5*x[121]-x[134]+x[139] <= 0.0)
@constraint(m, e176, -11.31*b[35]+11.31*b[36]+0.5*x[116]+0.5*x[121]+x[134]-x[139] <= 11.31)
@constraint(m, e177, 13*b[35]-13*b[36]+0.5*x[125]+0.5*x[130]-x[142]+x[147] <= 13.0)
@constraint(m, e178, 13*b[35]+13*b[36]+0.5*x[125]+0.5*x[130]+x[142]-x[147] <= 26.0)
@constraint(m, e179, -x[94]+x[135]-x[136] <= 0.0)
@constraint(m, e180, -x[94]-x[135]+x[136] <= 0.0)
@constraint(m, e181, -x[95]+x[143]-x[144] <= 0.0)
@constraint(m, e182, -x[95]-x[143]+x[144] <= 0.0)
@constraint(m, e183, -11.31*b[37]-11.31*b[38]+0.5*x[117]+0.5*x[118]-x[135]+x[136] <= 0.0)
@constraint(m, e184, -11.31*b[37]+11.31*b[38]+0.5*x[117]+0.5*x[118]+x[135]-x[136] <= 11.31)
@constraint(m, e185, 13*b[37]-13*b[38]+0.5*x[126]+0.5*x[127]-x[143]+x[144] <= 13.0)
@constraint(m, e186, 13*b[37]+13*b[38]+0.5*x[126]+0.5*x[127]+x[143]-x[144] <= 26.0)
@constraint(m, e187, -x[96]+x[135]-x[137] <= 0.0)
@constraint(m, e188, -x[96]-x[135]+x[137] <= 0.0)
@constraint(m, e189, -x[97]+x[143]-x[145] <= 0.0)
@constraint(m, e190, -x[97]-x[143]+x[145] <= 0.0)
@constraint(m, e191, -11.31*b[39]-11.31*b[40]+0.5*x[117]+0.5*x[119]-x[135]+x[137] <= 0.0)
@constraint(m, e192, -11.31*b[39]+11.31*b[40]+0.5*x[117]+0.5*x[119]+x[135]-x[137] <= 11.31)
@constraint(m, e193, 13*b[39]-13*b[40]+0.5*x[126]+0.5*x[128]-x[143]+x[145] <= 13.0)
@constraint(m, e194, 13*b[39]+13*b[40]+0.5*x[126]+0.5*x[128]+x[143]-x[145] <= 26.0)
@constraint(m, e195, -x[98]+x[135]-x[138] <= 0.0)
@constraint(m, e196, -x[98]-x[135]+x[138] <= 0.0)
@constraint(m, e197, -x[99]+x[143]-x[146] <= 0.0)
@constraint(m, e198, -x[99]-x[143]+x[146] <= 0.0)
@constraint(m, e199, -11.31*b[41]-11.31*b[42]+0.5*x[117]+0.5*x[120]-x[135]+x[138] <= 0.0)
@constraint(m, e200, -11.31*b[41]+11.31*b[42]+0.5*x[117]+0.5*x[120]+x[135]-x[138] <= 11.31)
@constraint(m, e201, 13*b[41]-13*b[42]+0.5*x[126]+0.5*x[129]-x[143]+x[146] <= 13.0)
@constraint(m, e202, 13*b[41]+13*b[42]+0.5*x[126]+0.5*x[129]+x[143]-x[146] <= 26.0)
@constraint(m, e203, -x[100]+x[135]-x[139] <= 0.0)
@constraint(m, e204, -x[100]-x[135]+x[139] <= 0.0)
@constraint(m, e205, -x[101]+x[143]-x[147] <= 0.0)
@constraint(m, e206, -x[101]-x[143]+x[147] <= 0.0)
@constraint(m, e207, -11.31*b[43]-11.31*b[44]+0.5*x[117]+0.5*x[121]-x[135]+x[139] <= 0.0)
@constraint(m, e208, -11.31*b[43]+11.31*b[44]+0.5*x[117]+0.5*x[121]+x[135]-x[139] <= 11.31)
@constraint(m, e209, 13*b[43]-13*b[44]+0.5*x[126]+0.5*x[130]-x[143]+x[147] <= 13.0)
@constraint(m, e210, 13*b[43]+13*b[44]+0.5*x[126]+0.5*x[130]+x[143]-x[147] <= 26.0)
@constraint(m, e211, -x[102]+x[136]-x[137] <= 0.0)
@constraint(m, e212, -x[102]-x[136]+x[137] <= 0.0)
@constraint(m, e213, -x[103]+x[144]-x[145] <= 0.0)
@constraint(m, e214, -x[103]-x[144]+x[145] <= 0.0)
@constraint(m, e215, -11.31*b[45]-11.31*b[46]+0.5*x[118]+0.5*x[119]-x[136]+x[137] <= 0.0)
@constraint(m, e216, -11.31*b[45]+11.31*b[46]+0.5*x[118]+0.5*x[119]+x[136]-x[137] <= 11.31)
@constraint(m, e217, 13*b[45]-13*b[46]+0.5*x[127]+0.5*x[128]-x[144]+x[145] <= 13.0)
@constraint(m, e218, 13*b[45]+13*b[46]+0.5*x[127]+0.5*x[128]+x[144]-x[145] <= 26.0)
@constraint(m, e219, -x[104]+x[136]-x[138] <= 0.0)
@constraint(m, e220, -x[104]-x[136]+x[138] <= 0.0)
@constraint(m, e221, -x[105]+x[144]-x[146] <= 0.0)
@constraint(m, e222, -x[105]-x[144]+x[146] <= 0.0)
@constraint(m, e223, -11.31*b[47]-11.31*b[48]+0.5*x[118]+0.5*x[120]-x[136]+x[138] <= 0.0)
@constraint(m, e224, -11.31*b[47]+11.31*b[48]+0.5*x[118]+0.5*x[120]+x[136]-x[138] <= 11.31)
@constraint(m, e225, 13*b[47]-13*b[48]+0.5*x[127]+0.5*x[129]-x[144]+x[146] <= 13.0)
@constraint(m, e226, 13*b[47]+13*b[48]+0.5*x[127]+0.5*x[129]+x[144]-x[146] <= 26.0)
@constraint(m, e227, -x[106]+x[136]-x[139] <= 0.0)
@constraint(m, e228, -x[106]-x[136]+x[139] <= 0.0)
@constraint(m, e229, -x[107]+x[144]-x[147] <= 0.0)
@constraint(m, e230, -x[107]-x[144]+x[147] <= 0.0)
@constraint(m, e231, -11.31*b[49]-11.31*b[50]+0.5*x[118]+0.5*x[121]-x[136]+x[139] <= 0.0)
@constraint(m, e232, -11.31*b[49]+11.31*b[50]+0.5*x[118]+0.5*x[121]+x[136]-x[139] <= 11.31)
@constraint(m, e233, 13*b[49]-13*b[50]+0.5*x[127]+0.5*x[130]-x[144]+x[147] <= 13.0)
@constraint(m, e234, 13*b[49]+13*b[50]+0.5*x[127]+0.5*x[130]+x[144]-x[147] <= 26.0)
@constraint(m, e235, -x[108]+x[137]-x[138] <= 0.0)
@constraint(m, e236, -x[108]-x[137]+x[138] <= 0.0)
@constraint(m, e237, -x[109]+x[145]-x[146] <= 0.0)
@constraint(m, e238, -x[109]-x[145]+x[146] <= 0.0)
@constraint(m, e239, -11.31*b[51]-11.31*b[52]+0.5*x[119]+0.5*x[120]-x[137]+x[138] <= 0.0)
@constraint(m, e240, -11.31*b[51]+11.31*b[52]+0.5*x[119]+0.5*x[120]+x[137]-x[138] <= 11.31)
@constraint(m, e241, 13*b[51]-13*b[52]+0.5*x[128]+0.5*x[129]-x[145]+x[146] <= 13.0)
@constraint(m, e242, 13*b[51]+13*b[52]+0.5*x[128]+0.5*x[129]+x[145]-x[146] <= 26.0)
@constraint(m, e243, -x[110]+x[137]-x[139] <= 0.0)
@constraint(m, e244, -x[110]-x[137]+x[139] <= 0.0)
@constraint(m, e245, -x[111]+x[145]-x[147] <= 0.0)
@constraint(m, e246, -x[111]-x[145]+x[147] <= 0.0)
@constraint(m, e247, -11.31*b[53]-11.31*b[54]+0.5*x[119]+0.5*x[121]-x[137]+x[139] <= 0.0)
@constraint(m, e248, -11.31*b[53]+11.31*b[54]+0.5*x[119]+0.5*x[121]+x[137]-x[139] <= 11.31)
@constraint(m, e249, 13*b[53]-13*b[54]+0.5*x[128]+0.5*x[130]-x[145]+x[147] <= 13.0)
@constraint(m, e250, 13*b[53]+13*b[54]+0.5*x[128]+0.5*x[130]+x[145]-x[147] <= 26.0)
@constraint(m, e251, -x[112]+x[138]-x[139] <= 0.0)
@constraint(m, e252, -x[112]-x[138]+x[139] <= 0.0)
@constraint(m, e253, -x[113]+x[146]-x[147] <= 0.0)
@constraint(m, e254, -x[113]-x[146]+x[147] <= 0.0)
@constraint(m, e255, -11.31*b[55]-11.31*b[56]+0.5*x[120]+0.5*x[121]-x[138]+x[139] <= 0.0)
@constraint(m, e256, -11.31*b[55]+11.31*b[56]+0.5*x[120]+0.5*x[121]+x[138]-x[139] <= 11.31)
@constraint(m, e257, 13*b[55]-13*b[56]+0.5*x[129]+0.5*x[130]-x[146]+x[147] <= 13.0)
@constraint(m, e258, 13*b[55]+13*b[56]+0.5*x[129]+0.5*x[130]+x[146]-x[147] <= 26.0)
@NLconstraint(m, e259, 16/x[114]-x[123] <= 0.0)
@NLconstraint(m, e260, 16/x[123]-x[114] <= 0.0)
@NLconstraint(m, e261, 16/x[115]-x[124] <= 0.0)
@NLconstraint(m, e262, 16/x[124]-x[115] <= 0.0)
@NLconstraint(m, e263, 16/x[116]-x[125] <= 0.0)
@NLconstraint(m, e264, 16/x[125]-x[116] <= 0.0)
@NLconstraint(m, e265, 36/x[117]-x[126] <= 0.0)
@NLconstraint(m, e266, 36/x[126]-x[117] <= 0.0)
@NLconstraint(m, e267, 36/x[118]-x[127] <= 0.0)
@NLconstraint(m, e268, 36/x[127]-x[118] <= 0.0)
@NLconstraint(m, e269, 9/x[119]-x[128] <= 0.0)
@NLconstraint(m, e270, 9/x[128]-x[119] <= 0.0)
@NLconstraint(m, e271, 9/x[120]-x[129] <= 0.0)
@NLconstraint(m, e272, 9/x[129]-x[120] <= 0.0)
@NLconstraint(m, e273, 9/x[121]-x[130] <= 0.0)
@NLconstraint(m, e274, 9/x[130]-x[121] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
