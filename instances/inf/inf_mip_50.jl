using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[91]
@variable(m, x[x_Idx])
i_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90]
@variable(m, i[i_Idx])
setcategory(i[68], :Int)
setcategory(i[35], :Int)
setcategory(i[33], :Int)
setcategory(i[5], :Int)
setcategory(i[3], :Int)
setcategory(i[84], :Int)
setcategory(i[86], :Int)
setcategory(i[74], :Int)
setcategory(i[58], :Int)
setcategory(i[41], :Int)
setcategory(i[31], :Int)
setcategory(i[34], :Int)
setcategory(i[61], :Int)
setcategory(i[22], :Int)
setcategory(i[14], :Int)
setcategory(i[37], :Int)
setcategory(i[45], :Int)
setcategory(i[15], :Int)
setcategory(i[75], :Int)
setcategory(i[76], :Int)
setcategory(i[77], :Int)
setcategory(i[25], :Int)
setcategory(i[60], :Int)
setcategory(i[53], :Int)
setcategory(i[21], :Int)
setcategory(i[73], :Int)
setcategory(i[63], :Int)
setcategory(i[56], :Int)
setcategory(i[64], :Int)
setcategory(i[72], :Int)
setcategory(i[49], :Int)
setcategory(i[2], :Int)
setcategory(i[13], :Int)
setcategory(i[6], :Int)
setcategory(i[26], :Int)
setcategory(i[78], :Int)
setcategory(i[82], :Int)
setcategory(i[89], :Int)
setcategory(i[80], :Int)
setcategory(i[52], :Int)
setcategory(i[66], :Int)
setcategory(i[11], :Int)
setcategory(i[62], :Int)
setcategory(i[1], :Int)
setcategory(i[18], :Int)
setcategory(i[8], :Int)
setcategory(i[85], :Int)
setcategory(i[51], :Int)
setcategory(i[50], :Int)
setcategory(i[90], :Int)
setcategory(i[19], :Int)
setcategory(i[44], :Int)
setcategory(i[83], :Int)
setcategory(i[32], :Int)
setcategory(i[79], :Int)
setcategory(i[46], :Int)
setcategory(i[55], :Int)
setcategory(i[28], :Int)
setcategory(i[81], :Int)
setcategory(i[36], :Int)
setcategory(i[48], :Int)
setcategory(i[4], :Int)
setcategory(i[40], :Int)
setcategory(i[65], :Int)
setcategory(i[9], :Int)
setcategory(i[17], :Int)
setcategory(i[59], :Int)
setcategory(i[7], :Int)
setcategory(i[43], :Int)
setcategory(i[20], :Int)
setcategory(i[88], :Int)
setcategory(i[38], :Int)
setcategory(i[47], :Int)
setcategory(i[23], :Int)
setcategory(i[57], :Int)
setcategory(i[12], :Int)
setcategory(i[27], :Int)
setcategory(i[71], :Int)
setcategory(i[24], :Int)
setcategory(i[29], :Int)
setcategory(i[69], :Int)
setcategory(i[67], :Int)
setcategory(i[54], :Int)
setcategory(i[70], :Int)
setcategory(i[16], :Int)
setcategory(i[10], :Int)
setcategory(i[87], :Int)
setcategory(i[30], :Int)
setcategory(i[39], :Int)
setcategory(i[42], :Int)
setupperbound(i[1], 100.0)
setupperbound(i[2], 100.0)
setupperbound(i[3], 100.0)
setupperbound(i[4], 100.0)
setupperbound(i[5], 100.0)
setupperbound(i[6], 100.0)
setupperbound(i[7], 100.0)
setupperbound(i[8], 100.0)
setupperbound(i[9], 100.0)
setupperbound(i[10], 100.0)
setupperbound(i[11], 100.0)
setupperbound(i[12], 100.0)
setupperbound(i[13], 100.0)
setupperbound(i[14], 100.0)
setupperbound(i[15], 100.0)
setupperbound(i[16], 100.0)
setupperbound(i[17], 100.0)
setupperbound(i[18], 100.0)
setupperbound(i[19], 100.0)
setupperbound(i[20], 100.0)
setupperbound(i[21], 100.0)
setupperbound(i[22], 100.0)
setupperbound(i[23], 100.0)
setupperbound(i[24], 100.0)
setupperbound(i[25], 100.0)
setupperbound(i[26], 100.0)
setupperbound(i[27], 100.0)
setupperbound(i[28], 100.0)
setupperbound(i[29], 100.0)
setupperbound(i[30], 100.0)
setupperbound(i[31], 100.0)
setupperbound(i[32], 100.0)
setupperbound(i[33], 100.0)
setupperbound(i[34], 100.0)
setupperbound(i[35], 100.0)
setupperbound(i[36], 100.0)
setupperbound(i[37], 100.0)
setupperbound(i[38], 100.0)
setupperbound(i[39], 100.0)
setupperbound(i[40], 100.0)
setupperbound(i[41], 100.0)
setupperbound(i[42], 100.0)
setupperbound(i[43], 100.0)
setupperbound(i[44], 100.0)
setupperbound(i[45], 100.0)
setupperbound(i[46], 100.0)
setupperbound(i[47], 100.0)
setupperbound(i[48], 100.0)
setupperbound(i[49], 100.0)
setupperbound(i[50], 100.0)
setupperbound(i[51], 100.0)
setupperbound(i[52], 100.0)
setupperbound(i[53], 100.0)
setupperbound(i[54], 100.0)
setupperbound(i[55], 100.0)
setupperbound(i[56], 100.0)
setupperbound(i[57], 100.0)
setupperbound(i[58], 100.0)
setupperbound(i[59], 100.0)
setupperbound(i[60], 100.0)
setupperbound(i[61], 100.0)
setupperbound(i[62], 100.0)
setupperbound(i[63], 100.0)
setupperbound(i[64], 100.0)
setupperbound(i[65], 100.0)
setupperbound(i[66], 100.0)
setupperbound(i[67], 100.0)
setupperbound(i[68], 100.0)
setupperbound(i[69], 100.0)
setupperbound(i[70], 100.0)
setupperbound(i[71], 100.0)
setupperbound(i[72], 100.0)
setupperbound(i[73], 100.0)
setupperbound(i[74], 100.0)
setupperbound(i[75], 100.0)
setupperbound(i[76], 100.0)
setupperbound(i[77], 100.0)
setupperbound(i[78], 100.0)
setupperbound(i[79], 100.0)
setupperbound(i[80], 100.0)
setupperbound(i[81], 100.0)
setupperbound(i[82], 100.0)
setupperbound(i[83], 100.0)
setupperbound(i[84], 100.0)
setupperbound(i[85], 100.0)
setupperbound(i[86], 100.0)
setupperbound(i[87], 100.0)
setupperbound(i[88], 100.0)
setupperbound(i[89], 100.0)
setupperbound(i[90], 100.0)


# ----- Constraints ----- #
@constraint(m, e1, i[1]+i[2]+i[3]+i[4]+i[5]+i[6]+i[7]+i[8]+i[9]+i[10]+i[11]+i[12]+i[13]+i[14]+i[15]+i[16]+i[17]+i[18]+i[19]+i[20]+i[21]+i[22]+i[23]+i[24]+i[25]+i[26]+i[27]+i[28]+i[29]+i[30]+i[31]+i[32]+i[33]+i[34]+i[35]+i[36]+i[37]+i[38]+i[39]+i[40]+i[41]+i[42]+i[43]+i[44]+i[45]+i[46]+i[47]+i[48]+i[49]+i[50]+i[51]+i[52]+i[53]+i[54]+i[55]+i[56]+i[57]+i[58]+i[59]+i[60]+i[61]+i[62]+i[63]+i[64]+i[65]+i[66]+i[67]+i[68]+i[69]+i[70]+i[71]+i[72]+i[73]+i[74]+i[75]+i[76]+i[77]+i[78]+i[79]+i[80]+i[81]+i[82]+i[83]+i[84]+i[85]+i[86]+i[87]+i[88]+i[89]+i[90]-x[91] == 0.0)
@constraint(m, e2, i[1] == 0.0)
@constraint(m, e3, i[2] == 0.0)
@constraint(m, e4, i[3] == 0.0)
@constraint(m, e5, i[4] == 0.0)
@constraint(m, e6, i[5] == 0.0)
@constraint(m, e7, i[6] == 148.0)
@constraint(m, e8, i[7] == 127.0)
@constraint(m, e9, i[8] == 125.0)
@constraint(m, e10, i[9] == 119.0)
@constraint(m, e11, i[10] == 122.0)
@constraint(m, e12, i[11] == 97.0)
@constraint(m, e13, i[12] == 95.0)
@constraint(m, e14, i[13] == 111.0)
@constraint(m, e15, i[14] == 104.0)
@constraint(m, e16, i[15] == 79.0)
@constraint(m, e17, i[16] == 91.0)
@constraint(m, e18, i[17] == 84.0)
@constraint(m, e19, i[18] == 76.0)
@constraint(m, e20, i[19] == 69.0)
@constraint(m, e21, i[20] == 70.0)
@constraint(m, e22, i[21] == 67.0)
@constraint(m, e23, i[22] == 74.0)
@constraint(m, e24, i[23] == 58.0)
@constraint(m, e25, i[24] == 63.0)
@constraint(m, e26, i[25] == 64.0)
@constraint(m, e27, i[26] == 73.0)
@constraint(m, e28, i[27] == 54.0)
@constraint(m, e29, i[28] == 51.0)
@constraint(m, e30, i[29] == 55.0)
@constraint(m, e31, i[30] == 57.0)
@constraint(m, e32, i[31] == 56.0)
@constraint(m, e33, i[32] == 68.0)
@constraint(m, e34, i[33] == 54.0)
@constraint(m, e35, i[34] == 44.0)
@constraint(m, e36, i[35] == 55.0)
@constraint(m, e37, i[36] == 48.0)
@constraint(m, e38, i[37] == 41.0)
@constraint(m, e39, i[38] == 45.0)
@constraint(m, e40, i[39] == 45.0)
@constraint(m, e41, i[40] == 44.0)
@constraint(m, e42, i[41] == 33.0)
@constraint(m, e43, i[42] == 38.0)
@constraint(m, e44, i[43] == 49.0)
@constraint(m, e45, i[44] == 38.0)
@constraint(m, e46, i[45] == 41.0)
@constraint(m, e47, i[46] == 45.0)
@constraint(m, e48, i[47] == 38.0)
@constraint(m, e49, i[48] == 51.0)
@constraint(m, e50, i[49] == 34.0)
@constraint(m, e51, i[50] == 41.0)
@constraint(m, e52, i[51] == 46.0)
@constraint(m, e53, i[52] == 32.0)
@constraint(m, e54, i[53] == 24.0)
@constraint(m, e55, i[54] == 44.0)
@constraint(m, e56, i[55] == 37.0)
@constraint(m, e57, i[56] == 28.0)
@constraint(m, e58, i[57] == 34.0)
@constraint(m, e59, i[58] == 37.0)
@constraint(m, e60, i[59] == 29.0)
@constraint(m, e61, i[60] == 37.0)
@constraint(m, e62, i[61] == 31.0)
@constraint(m, e63, i[62] == 34.0)
@constraint(m, e64, i[63] == 28.0)
@constraint(m, e65, i[64] == 30.0)
@constraint(m, e66, i[65] == 32.0)
@constraint(m, e67, i[66] == 33.0)
@constraint(m, e68, i[67] == 33.0)
@constraint(m, e69, i[68] == 31.0)
@constraint(m, e70, i[69] == 33.0)
@constraint(m, e71, i[70] == 29.0)
@constraint(m, e72, i[71] == 26.0)
@constraint(m, e73, i[72] == 29.0)
@constraint(m, e74, i[73] == 21.0)
@constraint(m, e75, i[74] == 25.0)
@constraint(m, e76, i[75] == 29.0)
@constraint(m, e77, i[76] == 26.0)
@constraint(m, e78, i[77] == 22.0)
@constraint(m, e79, i[78] == 22.0)
@constraint(m, e80, i[79] == 25.0)
@constraint(m, e81, i[80] == 25.0)
@constraint(m, e82, i[81] == 19.0)
@constraint(m, e83, i[82] == 23.0)
@constraint(m, e84, i[83] == 21.0)
@constraint(m, e85, i[84] == 28.0)
@constraint(m, e86, i[85] == 15.0)
@constraint(m, e87, i[86] == 21.0)
@constraint(m, e88, i[87] == 24.0)
@constraint(m, e89, i[88] == 17.0)
@constraint(m, e90, i[89] == 22.0)
@constraint(m, e91, i[90] == 14.0)


# ----- Objective ----- #
@objective(m, Min, x[91])

m = m 		 # model get returned when including this script. 
