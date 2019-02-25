using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
b_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90]
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
set_binary(b[45])
set_binary(b[81])
set_binary(b[41])
set_binary(b[48])
set_binary(b[23])
set_binary(b[64])
set_binary(b[54])
set_binary(b[21])
set_binary(b[28])
set_binary(b[36])
set_binary(b[22])
set_binary(b[90])
set_binary(b[87])
set_binary(b[77])
set_binary(b[84])
set_binary(b[46])
set_binary(b[53])
set_binary(b[8])
set_binary(b[33])
set_binary(b[56])
set_binary(b[30])
set_binary(b[79])
set_binary(b[29])
set_binary(b[40])
set_binary(b[61])
set_binary(b[58])
set_binary(b[74])
set_binary(b[32])
set_binary(b[34])
set_binary(b[57])
set_binary(b[89])
set_binary(b[72])
set_binary(b[5])
set_binary(b[16])
set_binary(b[86])
set_binary(b[60])
set_binary(b[13])
set_binary(b[51])
set_binary(b[69])
set_binary(b[12])
set_binary(b[2])
set_binary(b[68])
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
set_binary(b[31])
set_binary(b[62])
set_binary(b[52])
set_binary(b[24])
set_binary(b[55])
set_binary(b[10])
set_binary(b[63])
set_binary(b[26])
set_binary(b[73])


# ----- Constraints ----- #
@constraint(m, e1, -b[1]+b[2]+b[3] <= 1.0)
@constraint(m, e2, b[3]-b[4]+b[5] <= 1.0)
@constraint(m, e3, b[3]-b[6]+b[7] <= 1.0)
@constraint(m, e4, b[3]-b[8]+b[9] <= 1.0)
@constraint(m, e5, b[3]-b[10]+b[11] <= 1.0)
@constraint(m, e6, b[3]-b[12]+b[13] <= 1.0)
@constraint(m, e7, b[3]-b[14]+b[15] <= 1.0)
@constraint(m, e8, b[3]-b[16]+b[17] <= 1.0)
@constraint(m, e9, b[1]-b[4]+b[18] <= 1.0)
@constraint(m, e10, b[1]-b[6]+b[19] <= 1.0)
@constraint(m, e11, b[1]-b[8]+b[20] <= 1.0)
@constraint(m, e12, b[1]-b[10]+b[21] <= 1.0)
@constraint(m, e13, b[1]-b[12]+b[22] <= 1.0)
@constraint(m, e14, b[1]-b[14]+b[23] <= 1.0)
@constraint(m, e15, b[1]-b[16]+b[24] <= 1.0)
@constraint(m, e16, b[4]-b[6]+b[25] <= 1.0)
@constraint(m, e17, b[4]-b[8]+b[26] <= 1.0)
@constraint(m, e18, b[4]-b[10]+b[27] <= 1.0)
@constraint(m, e19, b[4]-b[12]+b[28] <= 1.0)
@constraint(m, e20, b[4]-b[14]+b[29] <= 1.0)
@constraint(m, e21, b[4]-b[16]+b[30] <= 1.0)
@constraint(m, e22, b[6]-b[8]+b[31] <= 1.0)
@constraint(m, e23, b[6]-b[10]+b[32] <= 1.0)
@constraint(m, e24, b[6]-b[12]+b[33] <= 1.0)
@constraint(m, e25, b[6]-b[14]+b[34] <= 1.0)
@constraint(m, e26, b[6]-b[16]+b[35] <= 1.0)
@constraint(m, e27, b[8]-b[10]+b[36] <= 1.0)
@constraint(m, e28, b[8]-b[12]+b[37] <= 1.0)
@constraint(m, e29, b[8]-b[14]+b[38] <= 1.0)
@constraint(m, e30, b[8]-b[16]+b[39] <= 1.0)
@constraint(m, e31, b[10]-b[12]+b[40] <= 1.0)
@constraint(m, e32, b[10]-b[14]+b[41] <= 1.0)
@constraint(m, e33, b[10]-b[16]+b[42] <= 1.0)
@constraint(m, e34, b[12]-b[14]+b[43] <= 1.0)
@constraint(m, e35, b[12]-b[16]+b[44] <= 1.0)
@constraint(m, e36, b[14]-b[16]+b[45] <= 1.0)
@constraint(m, e37, b[2]-b[5]+b[18] <= 1.0)
@constraint(m, e38, b[2]-b[7]+b[19] <= 1.0)
@constraint(m, e39, b[2]-b[9]+b[20] <= 1.0)
@constraint(m, e40, b[2]-b[11]+b[21] <= 1.0)
@constraint(m, e41, b[2]-b[13]+b[22] <= 1.0)
@constraint(m, e42, b[2]-b[15]+b[23] <= 1.0)
@constraint(m, e43, b[2]-b[17]+b[24] <= 1.0)
@constraint(m, e44, b[5]-b[7]+b[25] <= 1.0)
@constraint(m, e45, b[5]-b[9]+b[26] <= 1.0)
@constraint(m, e46, b[5]-b[11]+b[27] <= 1.0)
@constraint(m, e47, b[5]-b[13]+b[28] <= 1.0)
@constraint(m, e48, b[5]-b[15]+b[29] <= 1.0)
@constraint(m, e49, b[5]-b[17]+b[30] <= 1.0)
@constraint(m, e50, b[7]-b[9]+b[31] <= 1.0)
@constraint(m, e51, b[7]-b[11]+b[32] <= 1.0)
@constraint(m, e52, b[7]-b[13]+b[33] <= 1.0)
@constraint(m, e53, b[7]-b[15]+b[34] <= 1.0)
@constraint(m, e54, b[7]-b[17]+b[35] <= 1.0)
@constraint(m, e55, b[9]-b[11]+b[36] <= 1.0)
@constraint(m, e56, b[9]-b[13]+b[37] <= 1.0)
@constraint(m, e57, b[9]-b[15]+b[38] <= 1.0)
@constraint(m, e58, b[9]-b[17]+b[39] <= 1.0)
@constraint(m, e59, b[11]-b[13]+b[40] <= 1.0)
@constraint(m, e60, b[11]-b[15]+b[41] <= 1.0)
@constraint(m, e61, b[11]-b[17]+b[42] <= 1.0)
@constraint(m, e62, b[13]-b[15]+b[43] <= 1.0)
@constraint(m, e63, b[13]-b[17]+b[44] <= 1.0)
@constraint(m, e64, b[15]-b[17]+b[45] <= 1.0)
@constraint(m, e65, b[18]-b[19]+b[25] <= 1.0)
@constraint(m, e66, b[18]-b[20]+b[26] <= 1.0)
@constraint(m, e67, b[18]-b[21]+b[27] <= 1.0)
@constraint(m, e68, b[18]-b[22]+b[28] <= 1.0)
@constraint(m, e69, b[18]-b[23]+b[29] <= 1.0)
@constraint(m, e70, b[18]-b[24]+b[30] <= 1.0)
@constraint(m, e71, b[19]-b[20]+b[31] <= 1.0)
@constraint(m, e72, b[19]-b[21]+b[32] <= 1.0)
@constraint(m, e73, b[19]-b[22]+b[33] <= 1.0)
@constraint(m, e74, b[19]-b[23]+b[34] <= 1.0)
@constraint(m, e75, b[19]-b[24]+b[35] <= 1.0)
@constraint(m, e76, b[20]-b[21]+b[36] <= 1.0)
@constraint(m, e77, b[20]-b[22]+b[37] <= 1.0)
@constraint(m, e78, b[20]-b[23]+b[38] <= 1.0)
@constraint(m, e79, b[20]-b[24]+b[39] <= 1.0)
@constraint(m, e80, b[21]-b[22]+b[40] <= 1.0)
@constraint(m, e81, b[21]-b[23]+b[41] <= 1.0)
@constraint(m, e82, b[21]-b[24]+b[42] <= 1.0)
@constraint(m, e83, b[22]-b[23]+b[43] <= 1.0)
@constraint(m, e84, b[22]-b[24]+b[44] <= 1.0)
@constraint(m, e85, b[23]-b[24]+b[45] <= 1.0)
@constraint(m, e86, b[25]-b[26]+b[31] <= 1.0)
@constraint(m, e87, b[25]-b[27]+b[32] <= 1.0)
@constraint(m, e88, b[25]-b[28]+b[33] <= 1.0)
@constraint(m, e89, b[25]-b[29]+b[34] <= 1.0)
@constraint(m, e90, b[25]-b[30]+b[35] <= 1.0)
@constraint(m, e91, b[26]-b[27]+b[36] <= 1.0)
@constraint(m, e92, b[26]-b[28]+b[37] <= 1.0)
@constraint(m, e93, b[26]-b[29]+b[38] <= 1.0)
@constraint(m, e94, b[26]-b[30]+b[39] <= 1.0)
@constraint(m, e95, b[27]-b[28]+b[40] <= 1.0)
@constraint(m, e96, b[27]-b[29]+b[41] <= 1.0)
@constraint(m, e97, b[27]-b[30]+b[42] <= 1.0)
@constraint(m, e98, b[28]-b[29]+b[43] <= 1.0)
@constraint(m, e99, b[28]-b[30]+b[44] <= 1.0)
@constraint(m, e100, b[29]-b[30]+b[45] <= 1.0)
@constraint(m, e101, b[31]-b[32]+b[36] <= 1.0)
@constraint(m, e102, b[31]-b[33]+b[37] <= 1.0)
@constraint(m, e103, b[31]-b[34]+b[38] <= 1.0)
@constraint(m, e104, b[31]-b[35]+b[39] <= 1.0)
@constraint(m, e105, b[32]-b[33]+b[40] <= 1.0)
@constraint(m, e106, b[32]-b[34]+b[41] <= 1.0)
@constraint(m, e107, b[32]-b[35]+b[42] <= 1.0)
@constraint(m, e108, b[33]-b[34]+b[43] <= 1.0)
@constraint(m, e109, b[33]-b[35]+b[44] <= 1.0)
@constraint(m, e110, b[34]-b[35]+b[45] <= 1.0)
@constraint(m, e111, b[36]-b[37]+b[40] <= 1.0)
@constraint(m, e112, b[36]-b[38]+b[41] <= 1.0)
@constraint(m, e113, b[36]-b[39]+b[42] <= 1.0)
@constraint(m, e114, b[37]-b[38]+b[43] <= 1.0)
@constraint(m, e115, b[37]-b[39]+b[44] <= 1.0)
@constraint(m, e116, b[38]-b[39]+b[45] <= 1.0)
@constraint(m, e117, b[40]-b[41]+b[43] <= 1.0)
@constraint(m, e118, b[40]-b[42]+b[44] <= 1.0)
@constraint(m, e119, b[41]-b[42]+b[45] <= 1.0)
@constraint(m, e120, b[43]-b[44]+b[45] <= 1.0)
@constraint(m, e121, b[1]-b[2]-b[3] <= 0.0)
@constraint(m, e122, -b[3]+b[4]-b[5] <= 0.0)
@constraint(m, e123, -b[3]+b[6]-b[7] <= 0.0)
@constraint(m, e124, -b[3]+b[8]-b[9] <= 0.0)
@constraint(m, e125, -b[3]+b[10]-b[11] <= 0.0)
@constraint(m, e126, -b[3]+b[12]-b[13] <= 0.0)
@constraint(m, e127, -b[3]+b[14]-b[15] <= 0.0)
@constraint(m, e128, -b[3]+b[16]-b[17] <= 0.0)
@constraint(m, e129, -b[1]+b[4]-b[18] <= 0.0)
@constraint(m, e130, -b[1]+b[6]-b[19] <= 0.0)
@constraint(m, e131, -b[1]+b[8]-b[20] <= 0.0)
@constraint(m, e132, -b[1]+b[10]-b[21] <= 0.0)
@constraint(m, e133, -b[1]+b[12]-b[22] <= 0.0)
@constraint(m, e134, -b[1]+b[14]-b[23] <= 0.0)
@constraint(m, e135, -b[1]+b[16]-b[24] <= 0.0)
@constraint(m, e136, -b[4]+b[6]-b[25] <= 0.0)
@constraint(m, e137, -b[4]+b[8]-b[26] <= 0.0)
@constraint(m, e138, -b[4]+b[10]-b[27] <= 0.0)
@constraint(m, e139, -b[4]+b[12]-b[28] <= 0.0)
@constraint(m, e140, -b[4]+b[14]-b[29] <= 0.0)
@constraint(m, e141, -b[4]+b[16]-b[30] <= 0.0)
@constraint(m, e142, -b[6]+b[8]-b[31] <= 0.0)
@constraint(m, e143, -b[6]+b[10]-b[32] <= 0.0)
@constraint(m, e144, -b[6]+b[12]-b[33] <= 0.0)
@constraint(m, e145, -b[6]+b[14]-b[34] <= 0.0)
@constraint(m, e146, -b[6]+b[16]-b[35] <= 0.0)
@constraint(m, e147, -b[8]+b[10]-b[36] <= 0.0)
@constraint(m, e148, -b[8]+b[12]-b[37] <= 0.0)
@constraint(m, e149, -b[8]+b[14]-b[38] <= 0.0)
@constraint(m, e150, -b[8]+b[16]-b[39] <= 0.0)
@constraint(m, e151, -b[10]+b[12]-b[40] <= 0.0)
@constraint(m, e152, -b[10]+b[14]-b[41] <= 0.0)
@constraint(m, e153, -b[10]+b[16]-b[42] <= 0.0)
@constraint(m, e154, -b[12]+b[14]-b[43] <= 0.0)
@constraint(m, e155, -b[12]+b[16]-b[44] <= 0.0)
@constraint(m, e156, -b[14]+b[16]-b[45] <= 0.0)
@constraint(m, e157, -b[2]+b[5]-b[18] <= 0.0)
@constraint(m, e158, -b[2]+b[7]-b[19] <= 0.0)
@constraint(m, e159, -b[2]+b[9]-b[20] <= 0.0)
@constraint(m, e160, -b[2]+b[11]-b[21] <= 0.0)
@constraint(m, e161, -b[2]+b[13]-b[22] <= 0.0)
@constraint(m, e162, -b[2]+b[15]-b[23] <= 0.0)
@constraint(m, e163, -b[2]+b[17]-b[24] <= 0.0)
@constraint(m, e164, -b[5]+b[7]-b[25] <= 0.0)
@constraint(m, e165, -b[5]+b[9]-b[26] <= 0.0)
@constraint(m, e166, -b[5]+b[11]-b[27] <= 0.0)
@constraint(m, e167, -b[5]+b[13]-b[28] <= 0.0)
@constraint(m, e168, -b[5]+b[15]-b[29] <= 0.0)
@constraint(m, e169, -b[5]+b[17]-b[30] <= 0.0)
@constraint(m, e170, -b[7]+b[9]-b[31] <= 0.0)
@constraint(m, e171, -b[7]+b[11]-b[32] <= 0.0)
@constraint(m, e172, -b[7]+b[13]-b[33] <= 0.0)
@constraint(m, e173, -b[7]+b[15]-b[34] <= 0.0)
@constraint(m, e174, -b[7]+b[17]-b[35] <= 0.0)
@constraint(m, e175, -b[9]+b[11]-b[36] <= 0.0)
@constraint(m, e176, -b[9]+b[13]-b[37] <= 0.0)
@constraint(m, e177, -b[9]+b[15]-b[38] <= 0.0)
@constraint(m, e178, -b[9]+b[17]-b[39] <= 0.0)
@constraint(m, e179, -b[11]+b[13]-b[40] <= 0.0)
@constraint(m, e180, -b[11]+b[15]-b[41] <= 0.0)
@constraint(m, e181, -b[11]+b[17]-b[42] <= 0.0)
@constraint(m, e182, -b[13]+b[15]-b[43] <= 0.0)
@constraint(m, e183, -b[13]+b[17]-b[44] <= 0.0)
@constraint(m, e184, -b[15]+b[17]-b[45] <= 0.0)
@constraint(m, e185, -b[18]+b[19]-b[25] <= 0.0)
@constraint(m, e186, -b[18]+b[20]-b[26] <= 0.0)
@constraint(m, e187, -b[18]+b[21]-b[27] <= 0.0)
@constraint(m, e188, -b[18]+b[22]-b[28] <= 0.0)
@constraint(m, e189, -b[18]+b[23]-b[29] <= 0.0)
@constraint(m, e190, -b[18]+b[24]-b[30] <= 0.0)
@constraint(m, e191, -b[19]+b[20]-b[31] <= 0.0)
@constraint(m, e192, -b[19]+b[21]-b[32] <= 0.0)
@constraint(m, e193, -b[19]+b[22]-b[33] <= 0.0)
@constraint(m, e194, -b[19]+b[23]-b[34] <= 0.0)
@constraint(m, e195, -b[19]+b[24]-b[35] <= 0.0)
@constraint(m, e196, -b[20]+b[21]-b[36] <= 0.0)
@constraint(m, e197, -b[20]+b[22]-b[37] <= 0.0)
@constraint(m, e198, -b[20]+b[23]-b[38] <= 0.0)
@constraint(m, e199, -b[20]+b[24]-b[39] <= 0.0)
@constraint(m, e200, -b[21]+b[22]-b[40] <= 0.0)
@constraint(m, e201, -b[21]+b[23]-b[41] <= 0.0)
@constraint(m, e202, -b[21]+b[24]-b[42] <= 0.0)
@constraint(m, e203, -b[22]+b[23]-b[43] <= 0.0)
@constraint(m, e204, -b[22]+b[24]-b[44] <= 0.0)
@constraint(m, e205, -b[23]+b[24]-b[45] <= 0.0)
@constraint(m, e206, -b[25]+b[26]-b[31] <= 0.0)
@constraint(m, e207, -b[25]+b[27]-b[32] <= 0.0)
@constraint(m, e208, -b[25]+b[28]-b[33] <= 0.0)
@constraint(m, e209, -b[25]+b[29]-b[34] <= 0.0)
@constraint(m, e210, -b[25]+b[30]-b[35] <= 0.0)
@constraint(m, e211, -b[26]+b[27]-b[36] <= 0.0)
@constraint(m, e212, -b[26]+b[28]-b[37] <= 0.0)
@constraint(m, e213, -b[26]+b[29]-b[38] <= 0.0)
@constraint(m, e214, -b[26]+b[30]-b[39] <= 0.0)
@constraint(m, e215, -b[27]+b[28]-b[40] <= 0.0)
@constraint(m, e216, -b[27]+b[29]-b[41] <= 0.0)
@constraint(m, e217, -b[27]+b[30]-b[42] <= 0.0)
@constraint(m, e218, -b[28]+b[29]-b[43] <= 0.0)
@constraint(m, e219, -b[28]+b[30]-b[44] <= 0.0)
@constraint(m, e220, -b[29]+b[30]-b[45] <= 0.0)
@constraint(m, e221, -b[31]+b[32]-b[36] <= 0.0)
@constraint(m, e222, -b[31]+b[33]-b[37] <= 0.0)
@constraint(m, e223, -b[31]+b[34]-b[38] <= 0.0)
@constraint(m, e224, -b[31]+b[35]-b[39] <= 0.0)
@constraint(m, e225, -b[32]+b[33]-b[40] <= 0.0)
@constraint(m, e226, -b[32]+b[34]-b[41] <= 0.0)
@constraint(m, e227, -b[32]+b[35]-b[42] <= 0.0)
@constraint(m, e228, -b[33]+b[34]-b[43] <= 0.0)
@constraint(m, e229, -b[33]+b[35]-b[44] <= 0.0)
@constraint(m, e230, -b[34]+b[35]-b[45] <= 0.0)
@constraint(m, e231, -b[36]+b[37]-b[40] <= 0.0)
@constraint(m, e232, -b[36]+b[38]-b[41] <= 0.0)
@constraint(m, e233, -b[36]+b[39]-b[42] <= 0.0)
@constraint(m, e234, -b[37]+b[38]-b[43] <= 0.0)
@constraint(m, e235, -b[37]+b[39]-b[44] <= 0.0)
@constraint(m, e236, -b[38]+b[39]-b[45] <= 0.0)
@constraint(m, e237, -b[40]+b[41]-b[43] <= 0.0)
@constraint(m, e238, -b[40]+b[42]-b[44] <= 0.0)
@constraint(m, e239, -b[41]+b[42]-b[45] <= 0.0)
@constraint(m, e240, -b[43]+b[44]-b[45] <= 0.0)
@constraint(m, e241, -b[46]+b[47]+b[48] <= 1.0)
@constraint(m, e242, b[48]-b[49]+b[50] <= 1.0)
@constraint(m, e243, b[48]-b[51]+b[52] <= 1.0)
@constraint(m, e244, b[48]-b[53]+b[54] <= 1.0)
@constraint(m, e245, b[48]-b[55]+b[56] <= 1.0)
@constraint(m, e246, b[48]-b[57]+b[58] <= 1.0)
@constraint(m, e247, b[48]-b[59]+b[60] <= 1.0)
@constraint(m, e248, b[48]-b[61]+b[62] <= 1.0)
@constraint(m, e249, b[46]-b[49]+b[63] <= 1.0)
@constraint(m, e250, b[46]-b[51]+b[64] <= 1.0)
@constraint(m, e251, b[46]-b[53]+b[65] <= 1.0)
@constraint(m, e252, b[46]-b[55]+b[66] <= 1.0)
@constraint(m, e253, b[46]-b[57]+b[67] <= 1.0)
@constraint(m, e254, b[46]-b[59]+b[68] <= 1.0)
@constraint(m, e255, b[46]-b[61]+b[69] <= 1.0)
@constraint(m, e256, b[49]-b[51]+b[70] <= 1.0)
@constraint(m, e257, b[49]-b[53]+b[71] <= 1.0)
@constraint(m, e258, b[49]-b[55]+b[72] <= 1.0)
@constraint(m, e259, b[49]-b[57]+b[73] <= 1.0)
@constraint(m, e260, b[49]-b[59]+b[74] <= 1.0)
@constraint(m, e261, b[49]-b[61]+b[75] <= 1.0)
@constraint(m, e262, b[51]-b[53]+b[76] <= 1.0)
@constraint(m, e263, b[51]-b[55]+b[77] <= 1.0)
@constraint(m, e264, b[51]-b[57]+b[78] <= 1.0)
@constraint(m, e265, b[51]-b[59]+b[79] <= 1.0)
@constraint(m, e266, b[51]-b[61]+b[80] <= 1.0)
@constraint(m, e267, b[53]-b[55]+b[81] <= 1.0)
@constraint(m, e268, b[53]-b[57]+b[82] <= 1.0)
@constraint(m, e269, b[53]-b[59]+b[83] <= 1.0)
@constraint(m, e270, b[53]-b[61]+b[84] <= 1.0)
@constraint(m, e271, b[55]-b[57]+b[85] <= 1.0)
@constraint(m, e272, b[55]-b[59]+b[86] <= 1.0)
@constraint(m, e273, b[55]-b[61]+b[87] <= 1.0)
@constraint(m, e274, b[57]-b[59]+b[88] <= 1.0)
@constraint(m, e275, b[57]-b[61]+b[89] <= 1.0)
@constraint(m, e276, b[59]-b[61]+b[90] <= 1.0)
@constraint(m, e277, b[47]-b[50]+b[63] <= 1.0)
@constraint(m, e278, b[47]-b[52]+b[64] <= 1.0)
@constraint(m, e279, b[47]-b[54]+b[65] <= 1.0)
@constraint(m, e280, b[47]-b[56]+b[66] <= 1.0)
@constraint(m, e281, b[47]-b[58]+b[67] <= 1.0)
@constraint(m, e282, b[47]-b[60]+b[68] <= 1.0)
@constraint(m, e283, b[47]-b[62]+b[69] <= 1.0)
@constraint(m, e284, b[50]-b[52]+b[70] <= 1.0)
@constraint(m, e285, b[50]-b[54]+b[71] <= 1.0)
@constraint(m, e286, b[50]-b[56]+b[72] <= 1.0)
@constraint(m, e287, b[50]-b[58]+b[73] <= 1.0)
@constraint(m, e288, b[50]-b[60]+b[74] <= 1.0)
@constraint(m, e289, b[50]-b[62]+b[75] <= 1.0)
@constraint(m, e290, b[52]-b[54]+b[76] <= 1.0)
@constraint(m, e291, b[52]-b[56]+b[77] <= 1.0)
@constraint(m, e292, b[52]-b[58]+b[78] <= 1.0)
@constraint(m, e293, b[52]-b[60]+b[79] <= 1.0)
@constraint(m, e294, b[52]-b[62]+b[80] <= 1.0)
@constraint(m, e295, b[54]-b[56]+b[81] <= 1.0)
@constraint(m, e296, b[54]-b[58]+b[82] <= 1.0)
@constraint(m, e297, b[54]-b[60]+b[83] <= 1.0)
@constraint(m, e298, b[54]-b[62]+b[84] <= 1.0)
@constraint(m, e299, b[56]-b[58]+b[85] <= 1.0)
@constraint(m, e300, b[56]-b[60]+b[86] <= 1.0)
@constraint(m, e301, b[56]-b[62]+b[87] <= 1.0)
@constraint(m, e302, b[58]-b[60]+b[88] <= 1.0)
@constraint(m, e303, b[58]-b[62]+b[89] <= 1.0)
@constraint(m, e304, b[60]-b[62]+b[90] <= 1.0)
@constraint(m, e305, b[63]-b[64]+b[70] <= 1.0)
@constraint(m, e306, b[63]-b[65]+b[71] <= 1.0)
@constraint(m, e307, b[63]-b[66]+b[72] <= 1.0)
@constraint(m, e308, b[63]-b[67]+b[73] <= 1.0)
@constraint(m, e309, b[63]-b[68]+b[74] <= 1.0)
@constraint(m, e310, b[63]-b[69]+b[75] <= 1.0)
@constraint(m, e311, b[64]-b[65]+b[76] <= 1.0)
@constraint(m, e312, b[64]-b[66]+b[77] <= 1.0)
@constraint(m, e313, b[64]-b[67]+b[78] <= 1.0)
@constraint(m, e314, b[64]-b[68]+b[79] <= 1.0)
@constraint(m, e315, b[64]-b[69]+b[80] <= 1.0)
@constraint(m, e316, b[65]-b[66]+b[81] <= 1.0)
@constraint(m, e317, b[65]-b[67]+b[82] <= 1.0)
@constraint(m, e318, b[65]-b[68]+b[83] <= 1.0)
@constraint(m, e319, b[65]-b[69]+b[84] <= 1.0)
@constraint(m, e320, b[66]-b[67]+b[85] <= 1.0)
@constraint(m, e321, b[66]-b[68]+b[86] <= 1.0)
@constraint(m, e322, b[66]-b[69]+b[87] <= 1.0)
@constraint(m, e323, b[67]-b[68]+b[88] <= 1.0)
@constraint(m, e324, b[67]-b[69]+b[89] <= 1.0)
@constraint(m, e325, b[68]-b[69]+b[90] <= 1.0)
@constraint(m, e326, b[70]-b[71]+b[76] <= 1.0)
@constraint(m, e327, b[70]-b[72]+b[77] <= 1.0)
@constraint(m, e328, b[70]-b[73]+b[78] <= 1.0)
@constraint(m, e329, b[70]-b[74]+b[79] <= 1.0)
@constraint(m, e330, b[70]-b[75]+b[80] <= 1.0)
@constraint(m, e331, b[71]-b[72]+b[81] <= 1.0)
@constraint(m, e332, b[71]-b[73]+b[82] <= 1.0)
@constraint(m, e333, b[71]-b[74]+b[83] <= 1.0)
@constraint(m, e334, b[71]-b[75]+b[84] <= 1.0)
@constraint(m, e335, b[72]-b[73]+b[85] <= 1.0)
@constraint(m, e336, b[72]-b[74]+b[86] <= 1.0)
@constraint(m, e337, b[72]-b[75]+b[87] <= 1.0)
@constraint(m, e338, b[73]-b[74]+b[88] <= 1.0)
@constraint(m, e339, b[73]-b[75]+b[89] <= 1.0)
@constraint(m, e340, b[74]-b[75]+b[90] <= 1.0)
@constraint(m, e341, b[76]-b[77]+b[81] <= 1.0)
@constraint(m, e342, b[76]-b[78]+b[82] <= 1.0)
@constraint(m, e343, b[76]-b[79]+b[83] <= 1.0)
@constraint(m, e344, b[76]-b[80]+b[84] <= 1.0)
@constraint(m, e345, b[77]-b[78]+b[85] <= 1.0)
@constraint(m, e346, b[77]-b[79]+b[86] <= 1.0)
@constraint(m, e347, b[77]-b[80]+b[87] <= 1.0)
@constraint(m, e348, b[78]-b[79]+b[88] <= 1.0)
@constraint(m, e349, b[78]-b[80]+b[89] <= 1.0)
@constraint(m, e350, b[79]-b[80]+b[90] <= 1.0)
@constraint(m, e351, b[81]-b[82]+b[85] <= 1.0)
@constraint(m, e352, b[81]-b[83]+b[86] <= 1.0)
@constraint(m, e353, b[81]-b[84]+b[87] <= 1.0)
@constraint(m, e354, b[82]-b[83]+b[88] <= 1.0)
@constraint(m, e355, b[82]-b[84]+b[89] <= 1.0)
@constraint(m, e356, b[83]-b[84]+b[90] <= 1.0)
@constraint(m, e357, b[85]-b[86]+b[88] <= 1.0)
@constraint(m, e358, b[85]-b[87]+b[89] <= 1.0)
@constraint(m, e359, b[86]-b[87]+b[90] <= 1.0)
@constraint(m, e360, b[88]-b[89]+b[90] <= 1.0)
@constraint(m, e361, b[46]-b[47]-b[48] <= 0.0)
@constraint(m, e362, -b[48]+b[49]-b[50] <= 0.0)
@constraint(m, e363, -b[48]+b[51]-b[52] <= 0.0)
@constraint(m, e364, -b[48]+b[53]-b[54] <= 0.0)
@constraint(m, e365, -b[48]+b[55]-b[56] <= 0.0)
@constraint(m, e366, -b[48]+b[57]-b[58] <= 0.0)
@constraint(m, e367, -b[48]+b[59]-b[60] <= 0.0)
@constraint(m, e368, -b[48]+b[61]-b[62] <= 0.0)
@constraint(m, e369, -b[46]+b[49]-b[63] <= 0.0)
@constraint(m, e370, -b[46]+b[51]-b[64] <= 0.0)
@constraint(m, e371, -b[46]+b[53]-b[65] <= 0.0)
@constraint(m, e372, -b[46]+b[55]-b[66] <= 0.0)
@constraint(m, e373, -b[46]+b[57]-b[67] <= 0.0)
@constraint(m, e374, -b[46]+b[59]-b[68] <= 0.0)
@constraint(m, e375, -b[46]+b[61]-b[69] <= 0.0)
@constraint(m, e376, -b[49]+b[51]-b[70] <= 0.0)
@constraint(m, e377, -b[49]+b[53]-b[71] <= 0.0)
@constraint(m, e378, -b[49]+b[55]-b[72] <= 0.0)
@constraint(m, e379, -b[49]+b[57]-b[73] <= 0.0)
@constraint(m, e380, -b[49]+b[59]-b[74] <= 0.0)
@constraint(m, e381, -b[49]+b[61]-b[75] <= 0.0)
@constraint(m, e382, -b[51]+b[53]-b[76] <= 0.0)
@constraint(m, e383, -b[51]+b[55]-b[77] <= 0.0)
@constraint(m, e384, -b[51]+b[57]-b[78] <= 0.0)
@constraint(m, e385, -b[51]+b[59]-b[79] <= 0.0)
@constraint(m, e386, -b[51]+b[61]-b[80] <= 0.0)
@constraint(m, e387, -b[53]+b[55]-b[81] <= 0.0)
@constraint(m, e388, -b[53]+b[57]-b[82] <= 0.0)
@constraint(m, e389, -b[53]+b[59]-b[83] <= 0.0)
@constraint(m, e390, -b[53]+b[61]-b[84] <= 0.0)
@constraint(m, e391, -b[55]+b[57]-b[85] <= 0.0)
@constraint(m, e392, -b[55]+b[59]-b[86] <= 0.0)
@constraint(m, e393, -b[55]+b[61]-b[87] <= 0.0)
@constraint(m, e394, -b[57]+b[59]-b[88] <= 0.0)
@constraint(m, e395, -b[57]+b[61]-b[89] <= 0.0)
@constraint(m, e396, -b[59]+b[61]-b[90] <= 0.0)
@constraint(m, e397, -b[47]+b[50]-b[63] <= 0.0)
@constraint(m, e398, -b[47]+b[52]-b[64] <= 0.0)
@constraint(m, e399, -b[47]+b[54]-b[65] <= 0.0)
@constraint(m, e400, -b[47]+b[56]-b[66] <= 0.0)
@constraint(m, e401, -b[47]+b[58]-b[67] <= 0.0)
@constraint(m, e402, -b[47]+b[60]-b[68] <= 0.0)
@constraint(m, e403, -b[47]+b[62]-b[69] <= 0.0)
@constraint(m, e404, -b[50]+b[52]-b[70] <= 0.0)
@constraint(m, e405, -b[50]+b[54]-b[71] <= 0.0)
@constraint(m, e406, -b[50]+b[56]-b[72] <= 0.0)
@constraint(m, e407, -b[50]+b[58]-b[73] <= 0.0)
@constraint(m, e408, -b[50]+b[60]-b[74] <= 0.0)
@constraint(m, e409, -b[50]+b[62]-b[75] <= 0.0)
@constraint(m, e410, -b[52]+b[54]-b[76] <= 0.0)
@constraint(m, e411, -b[52]+b[56]-b[77] <= 0.0)
@constraint(m, e412, -b[52]+b[58]-b[78] <= 0.0)
@constraint(m, e413, -b[52]+b[60]-b[79] <= 0.0)
@constraint(m, e414, -b[52]+b[62]-b[80] <= 0.0)
@constraint(m, e415, -b[54]+b[56]-b[81] <= 0.0)
@constraint(m, e416, -b[54]+b[58]-b[82] <= 0.0)
@constraint(m, e417, -b[54]+b[60]-b[83] <= 0.0)
@constraint(m, e418, -b[54]+b[62]-b[84] <= 0.0)
@constraint(m, e419, -b[56]+b[58]-b[85] <= 0.0)
@constraint(m, e420, -b[56]+b[60]-b[86] <= 0.0)
@constraint(m, e421, -b[56]+b[62]-b[87] <= 0.0)
@constraint(m, e422, -b[58]+b[60]-b[88] <= 0.0)
@constraint(m, e423, -b[58]+b[62]-b[89] <= 0.0)
@constraint(m, e424, -b[60]+b[62]-b[90] <= 0.0)
@constraint(m, e425, -b[63]+b[64]-b[70] <= 0.0)
@constraint(m, e426, -b[63]+b[65]-b[71] <= 0.0)
@constraint(m, e427, -b[63]+b[66]-b[72] <= 0.0)
@constraint(m, e428, -b[63]+b[67]-b[73] <= 0.0)
@constraint(m, e429, -b[63]+b[68]-b[74] <= 0.0)
@constraint(m, e430, -b[63]+b[69]-b[75] <= 0.0)
@constraint(m, e431, -b[64]+b[65]-b[76] <= 0.0)
@constraint(m, e432, -b[64]+b[66]-b[77] <= 0.0)
@constraint(m, e433, -b[64]+b[67]-b[78] <= 0.0)
@constraint(m, e434, -b[64]+b[68]-b[79] <= 0.0)
@constraint(m, e435, -b[64]+b[69]-b[80] <= 0.0)
@constraint(m, e436, -b[65]+b[66]-b[81] <= 0.0)
@constraint(m, e437, -b[65]+b[67]-b[82] <= 0.0)
@constraint(m, e438, -b[65]+b[68]-b[83] <= 0.0)
@constraint(m, e439, -b[65]+b[69]-b[84] <= 0.0)
@constraint(m, e440, -b[66]+b[67]-b[85] <= 0.0)
@constraint(m, e441, -b[66]+b[68]-b[86] <= 0.0)
@constraint(m, e442, -b[66]+b[69]-b[87] <= 0.0)
@constraint(m, e443, -b[67]+b[68]-b[88] <= 0.0)
@constraint(m, e444, -b[67]+b[69]-b[89] <= 0.0)
@constraint(m, e445, -b[68]+b[69]-b[90] <= 0.0)
@constraint(m, e446, -b[70]+b[71]-b[76] <= 0.0)
@constraint(m, e447, -b[70]+b[72]-b[77] <= 0.0)
@constraint(m, e448, -b[70]+b[73]-b[78] <= 0.0)
@constraint(m, e449, -b[70]+b[74]-b[79] <= 0.0)
@constraint(m, e450, -b[70]+b[75]-b[80] <= 0.0)
@constraint(m, e451, -b[71]+b[72]-b[81] <= 0.0)
@constraint(m, e452, -b[71]+b[73]-b[82] <= 0.0)
@constraint(m, e453, -b[71]+b[74]-b[83] <= 0.0)
@constraint(m, e454, -b[71]+b[75]-b[84] <= 0.0)
@constraint(m, e455, -b[72]+b[73]-b[85] <= 0.0)
@constraint(m, e456, -b[72]+b[74]-b[86] <= 0.0)
@constraint(m, e457, -b[72]+b[75]-b[87] <= 0.0)
@constraint(m, e458, -b[73]+b[74]-b[88] <= 0.0)
@constraint(m, e459, -b[73]+b[75]-b[89] <= 0.0)
@constraint(m, e460, -b[74]+b[75]-b[90] <= 0.0)
@constraint(m, e461, -b[76]+b[77]-b[81] <= 0.0)
@constraint(m, e462, -b[76]+b[78]-b[82] <= 0.0)
@constraint(m, e463, -b[76]+b[79]-b[83] <= 0.0)
@constraint(m, e464, -b[76]+b[80]-b[84] <= 0.0)
@constraint(m, e465, -b[77]+b[78]-b[85] <= 0.0)
@constraint(m, e466, -b[77]+b[79]-b[86] <= 0.0)
@constraint(m, e467, -b[77]+b[80]-b[87] <= 0.0)
@constraint(m, e468, -b[78]+b[79]-b[88] <= 0.0)
@constraint(m, e469, -b[78]+b[80]-b[89] <= 0.0)
@constraint(m, e470, -b[79]+b[80]-b[90] <= 0.0)
@constraint(m, e471, -b[81]+b[82]-b[85] <= 0.0)
@constraint(m, e472, -b[81]+b[83]-b[86] <= 0.0)
@constraint(m, e473, -b[81]+b[84]-b[87] <= 0.0)
@constraint(m, e474, -b[82]+b[83]-b[88] <= 0.0)
@constraint(m, e475, -b[82]+b[84]-b[89] <= 0.0)
@constraint(m, e476, -b[83]+b[84]-b[90] <= 0.0)
@constraint(m, e477, -b[85]+b[86]-b[88] <= 0.0)
@constraint(m, e478, -b[85]+b[87]-b[89] <= 0.0)
@constraint(m, e479, -b[86]+b[87]-b[90] <= 0.0)
@constraint(m, e480, -b[88]+b[89]-b[90] <= 0.0)
@NLconstraint(m, e481, 2*b[1]*b[46]-12*b[1]+b[46]+2*b[1]*b[47]+5*b[47]+2*b[1]*b[48]-4*b[48]-2*b[1]*b[50]+9*b[50]+2*b[1]*b[51]-4*b[51]+2*b[1]*b[53]-4*b[53]+2*b[1]*b[55]+2*b[1]*b[57]-4*b[57]+2*b[1]*b[59]+b[59]+2*b[1]*b[60]+5*b[60]+2*b[1]*b[61]+3*b[61]-2*b[1]*b[63]+3*b[63]-2*b[1]*b[64]-5*b[64]-2*b[1]*b[65]-5*b[65]-2*b[1]*b[66]-b[66]-2*b[1]*b[67]-5*b[67]-2*b[1]*b[69]+b[69]+2*b[1]*b[70]-9*b[70]+2*b[1]*b[71]-9*b[71]+2*b[1]*b[72]-3*b[72]+2*b[1]*b[73]-9*b[73]+2*b[1]*b[74]-3*b[74]+2*b[1]*b[75]-b[75]+2*b[1]*b[79]+5*b[79]+2*b[1]*b[83]+5*b[83]+2*b[1]*b[86]+b[86]+2*b[1]*b[88]+5*b[88]-2*b[1]*b[90]+b[90]+2*b[2]*b[46]+8*b[2]+2*b[2]*b[47]-2*b[2]*b[55]-2*b[2]*b[56]+2*b[56]+2*b[2]*b[59]+2*b[2]*b[60]-2*b[2]*b[61]-2*b[2]*b[62]+7*b[62]-2*b[2]*b[63]-2*b[2]*b[64]-2*b[2]*b[65]-2*b[2]*b[66]-2*b[2]*b[67]-2*b[2]*b[69]-2*b[2]*b[72]+2*b[2]*b[74]-2*b[2]*b[75]-2*b[2]*b[77]+2*b[77]+2*b[2]*b[79]-2*b[2]*b[80]+7*b[80]-2*b[2]*b[81]+2*b[81]+2*b[2]*b[83]-2*b[2]*b[84]+7*b[84]+2*b[2]*b[85]-2*b[85]+2*b[2]*b[86]+2*b[2]*b[88]-2*b[2]*b[89]+7*b[89]-2*b[2]*b[90]+2*b[3]*b[46]-20*b[3]+2*b[3]*b[48]-2*b[3]*b[50]+2*b[3]*b[51]+2*b[3]*b[53]+2*b[3]*b[55]+2*b[3]*b[56]+2*b[3]*b[57]+2*b[3]*b[59]+2*b[3]*b[61]+2*b[3]*b[62]-2*b[3]*b[63]+2*b[3]*b[66]+2*b[3]*b[69]+2*b[3]*b[70]+2*b[3]*b[71]+2*b[3]*b[72]+2*b[3]*b[73]+2*b[3]*b[74]+2*b[3]*b[75]+2*b[3]*b[77]+2*b[3]*b[80]+2*b[3]*b[81]+2*b[3]*b[84]-2*b[3]*b[85]-2*b[3]*b[86]+2*b[3]*b[89]+2*b[3]*b[90]+2*b[4]*b[46]-13*b[4]+2*b[4]*b[48]-2*b[4]*b[50]+2*b[4]*b[51]+2*b[4]*b[53]+2*b[4]*b[55]+2*b[4]*b[56]+2*b[4]*b[57]+2*b[4]*b[59]+2*b[4]*b[61]-2*b[4]*b[63]+2*b[4]*b[66]+2*b[4]*b[70]+2*b[4]*b[71]+2*b[4]*b[72]+2*b[4]*b[73]+2*b[4]*b[74]+2*b[4]*b[75]+2*b[4]*b[77]+2*b[4]*b[81]-2*b[4]*b[85]-2*b[4]*b[86]-2*b[4]*b[87]+2*b[87]-2*b[5]*b[61]+8*b[5]-2*b[5]*b[62]-2*b[5]*b[69]-2*b[5]*b[75]-2*b[5]*b[80]-2*b[5]*b[84]-2*b[5]*b[89]-2*b[5]*b[90]+2*b[6]*b[46]-12*b[6]+2*b[6]*b[48]-2*b[6]*b[50]+2*b[6]*b[51]+2*b[6]*b[53]+2*b[6]*b[55]+2*b[6]*b[57]+2*b[6]*b[59]+2*b[6]*b[61]-2*b[6]*b[63]+2*b[6]*b[70]+2*b[6]*b[71]+2*b[6]*b[72]+2*b[6]*b[73]+2*b[6]*b[74]+2*b[6]*b[75]-2*b[7]*b[55]+12*b[7]-2*b[7]*b[56]-2*b[7]*b[61]-2*b[7]*b[62]-2*b[7]*b[66]-2*b[7]*b[69]-2*b[7]*b[72]-2*b[7]*b[75]-2*b[7]*b[77]-2*b[7]*b[80]-2*b[7]*b[81]-2*b[7]*b[84]+2*b[7]*b[85]+2*b[7]*b[86]-2*b[7]*b[89]-2*b[7]*b[90]+2*b[8]*b[46]-13*b[8]+2*b[8]*b[48]-2*b[8]*b[50]+2*b[8]*b[51]+2*b[8]*b[53]+2*b[8]*b[55]+2*b[8]*b[56]+2*b[8]*b[57]+2*b[8]*b[59]+2*b[8]*b[61]-2*b[8]*b[63]+2*b[8]*b[66]+2*b[8]*b[70]+2*b[8]*b[71]+2*b[8]*b[72]+2*b[8]*b[73]+2*b[8]*b[74]+2*b[8]*b[75]+2*b[8]*b[77]+2*b[8]*b[81]-2*b[8]*b[85]-2*b[8]*b[86]-2*b[8]*b[87]-2*b[9]*b[61]+8*b[9]-2*b[9]*b[62]-2*b[9]*b[69]-2*b[9]*b[75]-2*b[9]*b[80]-2*b[9]*b[84]-2*b[9]*b[89]-2*b[9]*b[90]+2*b[10]*b[46]-12*b[10]+2*b[10]*b[48]-2*b[10]*b[50]+2*b[10]*b[51]+2*b[10]*b[53]+2*b[10]*b[55]+2*b[10]*b[57]+2*b[10]*b[59]+2*b[10]*b[61]-2*b[10]*b[63]+2*b[10]*b[70]+2*b[10]*b[71]+2*b[10]*b[72]+2*b[10]*b[73]+2*b[10]*b[74]+2*b[10]*b[75]-2*b[11]*b[55]+12*b[11]-2*b[11]*b[56]-2*b[11]*b[61]-2*b[11]*b[62]-2*b[11]*b[66]-2*b[11]*b[69]-2*b[11]*b[72]-2*b[11]*b[75]-2*b[11]*b[77]-2*b[11]*b[80]-2*b[11]*b[81]-2*b[11]*b[84]+2*b[11]*b[85]+2*b[11]*b[86]-2*b[11]*b[89]-2*b[11]*b[90]-2*b[12]*b[50]-4*b[12]-2*b[12]*b[63]+2*b[12]*b[70]+2*b[12]*b[71]+2*b[12]*b[72]+2*b[12]*b[73]+2*b[12]*b[74]+2*b[12]*b[75]-2*b[13]*b[46]+19*b[13]-2*b[13]*b[48]-2*b[13]*b[49]+4*b[49]-2*b[13]*b[51]-2*b[13]*b[53]-2*b[13]*b[55]-2*b[13]*b[56]-2*b[13]*b[57]-2*b[13]*b[59]-2*b[13]*b[61]-2*b[13]*b[62]-2*b[13]*b[66]-2*b[13]*b[69]-2*b[13]*b[72]-2*b[13]*b[75]-2*b[13]*b[77]-2*b[13]*b[80]-2*b[13]*b[81]-2*b[13]*b[84]+2*b[13]*b[85]+2*b[13]*b[86]-2*b[13]*b[89]-2*b[13]*b[90]+2*b[14]*b[46]-13*b[14]+2*b[14]*b[48]-2*b[14]*b[50]+2*b[14]*b[51]+2*b[14]*b[53]+2*b[14]*b[55]+2*b[14]*b[56]+2*b[14]*b[57]+2*b[14]*b[59]+2*b[14]*b[61]-2*b[14]*b[63]+2*b[14]*b[66]+2*b[14]*b[70]+2*b[14]*b[71]+2*b[14]*b[72]+2*b[14]*b[73]+2*b[14]*b[74]+2*b[14]*b[75]+2*b[14]*b[77]+2*b[14]*b[81]-2*b[14]*b[85]-2*b[14]*b[86]-2*b[14]*b[87]-2*b[15]*b[61]+8*b[15]-2*b[15]*b[62]-2*b[15]*b[69]-2*b[15]*b[75]-2*b[15]*b[80]-2*b[15]*b[84]-2*b[15]*b[89]-2*b[15]*b[90]+2*b[16]*b[46]-12*b[16]+2*b[16]*b[48]-2*b[16]*b[50]+2*b[16]*b[51]+2*b[16]*b[53]+2*b[16]*b[55]+2*b[16]*b[57]+2*b[16]*b[59]+2*b[16]*b[61]-2*b[16]*b[63]+2*b[16]*b[70]+2*b[16]*b[71]+2*b[16]*b[72]+2*b[16]*b[73]+2*b[16]*b[74]+2*b[16]*b[75]-2*b[17]*b[55]+12*b[17]-2*b[17]*b[56]-2*b[17]*b[61]-2*b[17]*b[62]-2*b[17]*b[66]-2*b[17]*b[69]-2*b[17]*b[72]-2*b[17]*b[75]-2*b[17]*b[77]-2*b[17]*b[80]-2*b[17]*b[81]-2*b[17]*b[84]+2*b[17]*b[85]+2*b[17]*b[86]-2*b[17]*b[89]-2*b[17]*b[90]-2*b[18]*b[46]-b[18]-2*b[18]*b[47]+2*b[18]*b[55]+2*b[18]*b[56]-2*b[18]*b[59]-2*b[18]*b[60]+2*b[18]*b[63]+2*b[18]*b[64]+2*b[18]*b[65]+2*b[18]*b[66]+2*b[18]*b[67]+2*b[18]*b[69]+2*b[18]*b[72]-2*b[18]*b[74]+2*b[18]*b[77]-2*b[18]*b[79]+2*b[18]*b[81]-2*b[18]*b[83]-2*b[18]*b[85]-2*b[18]*b[86]-2*b[18]*b[87]-2*b[18]*b[88]+2*b[18]*b[90]-2*b[19]*b[46]+2*b[19]-2*b[19]*b[47]-2*b[19]*b[59]-2*b[19]*b[60]+2*b[19]*b[63]+2*b[19]*b[64]+2*b[19]*b[65]+2*b[19]*b[66]+2*b[19]*b[67]+2*b[19]*b[69]-2*b[19]*b[74]-2*b[19]*b[79]-2*b[19]*b[83]-2*b[19]*b[86]-2*b[19]*b[88]+2*b[19]*b[90]-2*b[20]*b[46]-b[20]-2*b[20]*b[47]+2*b[20]*b[55]+2*b[20]*b[56]-2*b[20]*b[59]-2*b[20]*b[60]+2*b[20]*b[63]+2*b[20]*b[64]+2*b[20]*b[65]+2*b[20]*b[66]+2*b[20]*b[67]+2*b[20]*b[69]+2*b[20]*b[72]-2*b[20]*b[74]+2*b[20]*b[77]-2*b[20]*b[79]+2*b[20]*b[81]-2*b[20]*b[83]-2*b[20]*b[85]-2*b[20]*b[86]-2*b[20]*b[87]-2*b[20]*b[88]+2*b[20]*b[90]-2*b[21]*b[46]+2*b[21]-2*b[21]*b[47]-2*b[21]*b[59]-2*b[21]*b[60]+2*b[21]*b[63]+2*b[21]*b[64]+2*b[21]*b[65]+2*b[21]*b[66]+2*b[21]*b[67]+2*b[21]*b[69]-2*b[21]*b[74]-2*b[21]*b[79]-2*b[21]*b[83]-2*b[21]*b[86]-2*b[21]*b[88]+2*b[21]*b[90]-2*b[22]*b[46]+9*b[22]-2*b[22]*b[47]-2*b[22]*b[48]-2*b[22]*b[49]-2*b[22]*b[51]-2*b[22]*b[53]-2*b[22]*b[55]-2*b[22]*b[57]-2*b[22]*b[59]-2*b[22]*b[60]-2*b[22]*b[61]+2*b[22]*b[63]+2*b[22]*b[64]+2*b[22]*b[65]+2*b[22]*b[66]+2*b[22]*b[67]+2*b[22]*b[69]-2*b[22]*b[74]-2*b[22]*b[79]-2*b[22]*b[83]-2*b[22]*b[86]-2*b[22]*b[88]+2*b[22]*b[90]-2*b[23]*b[46]-b[23]-2*b[23]*b[47]+2*b[23]*b[55]+2*b[23]*b[56]-2*b[23]*b[59]-2*b[23]*b[60]+2*b[23]*b[63]+2*b[23]*b[64]+2*b[23]*b[65]+2*b[23]*b[66]+2*b[23]*b[67]+2*b[23]*b[69]+2*b[23]*b[72]-2*b[23]*b[74]+2*b[23]*b[77]-2*b[23]*b[79]+2*b[23]*b[81]-2*b[23]*b[83]-2*b[23]*b[85]-2*b[23]*b[86]-2*b[23]*b[87]-2*b[23]*b[88]+2*b[23]*b[90]-2*b[24]*b[46]+2*b[24]-2*b[24]*b[47]-2*b[24]*b[59]-2*b[24]*b[60]+2*b[24]*b[63]+2*b[24]*b[64]+2*b[24]*b[65]+2*b[24]*b[66]+2*b[24]*b[67]+2*b[24]*b[69]-2*b[24]*b[74]-2*b[24]*b[79]-2*b[24]*b[83]-2*b[24]*b[86]-2*b[24]*b[88]+2*b[24]*b[90]-2*b[25]*b[55]+3*b[25]-2*b[25]*b[56]-2*b[25]*b[66]-2*b[25]*b[72]-2*b[25]*b[77]-2*b[25]*b[81]+2*b[25]*b[85]+2*b[25]*b[86]+2*b[25]*b[87]-2*b[27]*b[55]+3*b[27]-2*b[27]*b[56]-2*b[27]*b[66]-2*b[27]*b[72]-2*b[27]*b[77]-2*b[27]*b[81]+2*b[27]*b[85]+2*b[27]*b[86]+2*b[27]*b[87]-2*b[28]*b[46]+11*b[28]-2*b[28]*b[48]-2*b[28]*b[49]-2*b[28]*b[51]-2*b[28]*b[53]-2*b[28]*b[55]-2*b[28]*b[56]-2*b[28]*b[57]-2*b[28]*b[59]-2*b[28]*b[61]-2*b[28]*b[66]-2*b[28]*b[72]-2*b[28]*b[77]-2*b[28]*b[81]+2*b[28]*b[85]+2*b[28]*b[86]+2*b[28]*b[87]-2*b[30]*b[55]+3*b[30]-2*b[30]*b[56]-2*b[30]*b[66]-2*b[30]*b[72]-2*b[30]*b[77]-2*b[30]*b[81]+2*b[30]*b[85]+2*b[30]*b[86]+2*b[30]*b[87]+2*b[31]*b[55]-3*b[31]+2*b[31]*b[56]+2*b[31]*b[66]+2*b[31]*b[72]+2*b[31]*b[77]+2*b[31]*b[81]-2*b[31]*b[85]-2*b[31]*b[86]-2*b[31]*b[87]-2*b[33]*b[46]+9*b[33]-2*b[33]*b[48]-2*b[33]*b[49]-2*b[33]*b[51]-2*b[33]*b[53]-2*b[33]*b[55]-2*b[33]*b[57]-2*b[33]*b[59]-2*b[33]*b[61]+2*b[34]*b[55]-3*b[34]+2*b[34]*b[56]+2*b[34]*b[66]+2*b[34]*b[72]+2*b[34]*b[77]+2*b[34]*b[81]-2*b[34]*b[85]-2*b[34]*b[86]-2*b[34]*b[87]-2*b[36]*b[55]+3*b[36]-2*b[36]*b[56]-2*b[36]*b[66]-2*b[36]*b[72]-2*b[36]*b[77]-2*b[36]*b[81]+2*b[36]*b[85]+2*b[36]*b[86]+2*b[36]*b[87]-2*b[37]*b[46]+11*b[37]-2*b[37]*b[48]-2*b[37]*b[49]-2*b[37]*b[51]-2*b[37]*b[53]-2*b[37]*b[55]-2*b[37]*b[56]-2*b[37]*b[57]-2*b[37]*b[59]-2*b[37]*b[61]-2*b[37]*b[66]-2*b[37]*b[72]-2*b[37]*b[77]-2*b[37]*b[81]+2*b[37]*b[85]+2*b[37]*b[86]+2*b[37]*b[87]-2*b[39]*b[55]+3*b[39]-2*b[39]*b[56]-2*b[39]*b[66]-2*b[39]*b[72]-2*b[39]*b[77]-2*b[39]*b[81]+2*b[39]*b[85]+2*b[39]*b[86]+2*b[39]*b[87]-2*b[40]*b[46]+9*b[40]-2*b[40]*b[48]-2*b[40]*b[49]-2*b[40]*b[51]-2*b[40]*b[53]-2*b[40]*b[55]-2*b[40]*b[57]-2*b[40]*b[59]-2*b[40]*b[61]+2*b[41]*b[55]-3*b[41]+2*b[41]*b[56]+2*b[41]*b[66]+2*b[41]*b[72]+2*b[41]*b[77]+2*b[41]*b[81]-2*b[41]*b[85]-2*b[41]*b[86]-2*b[41]*b[87]+2*b[43]*b[46]-11*b[43]+2*b[43]*b[48]+2*b[43]*b[49]+2*b[43]*b[51]+2*b[43]*b[53]+2*b[43]*b[55]+2*b[43]*b[56]+2*b[43]*b[57]+2*b[43]*b[59]+2*b[43]*b[61]+2*b[43]*b[66]+2*b[43]*b[72]+2*b[43]*b[77]+2*b[43]*b[81]-2*b[43]*b[85]-2*b[43]*b[86]-2*b[43]*b[87]+2*b[44]*b[46]-9*b[44]+2*b[44]*b[48]+2*b[44]*b[49]+2*b[44]*b[51]+2*b[44]*b[53]+2*b[44]*b[55]+2*b[44]*b[57]+2*b[44]*b[59]+2*b[44]*b[61]-2*b[45]*b[55]+3*b[45]-2*b[45]*b[56]-2*b[45]*b[66]-2*b[45]*b[72]-2*b[45]*b[77]-2*b[45]*b[81]+2*b[45]*b[85]+2*b[45]*b[86]+2*b[45]*b[87]+objvar >= 1646.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.