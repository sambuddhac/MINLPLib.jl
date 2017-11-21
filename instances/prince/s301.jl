using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, -(x[1]*(x[1]-x[2])+x[2]*(2*x[2]-x[1]-x[3])+x[3]*(2*x[3]-x[2]-x[4])+x[4]*(2*x[4]-x[3]-x[5])+x[5]*(2*x[5]-x[4]-x[6])+x[6]*(2*x[6]-x[5]-x[7])+x[7]*(2*x[7]-x[6]-x[8])+x[8]*(2*x[8]-x[7]-x[9])+x[9]*(2*x[9]-x[8]-x[10])+x[10]*(2*x[10]-x[9]-x[11])+x[11]*(2*x[11]-x[10]-x[12])+x[12]*(2*x[12]-x[11]-x[13])+x[13]*(2*x[13]-x[12]-x[14])+x[14]*(2*x[14]-x[13]-x[15])+x[15]*(2*x[15]-x[14]-x[16])+x[16]*(2*x[16]-x[15]-x[17])+x[17]*(2*x[17]-x[16]-x[18])+x[18]*(2*x[18]-x[17]-x[19])+x[19]*(2*x[19]-x[18]-x[20])+x[20]*(2*x[20]-x[19]-x[21])+x[21]*(2*x[21]-x[20]-x[22])+x[22]*(2*x[22]-x[21]-x[23])+x[23]*(2*x[23]-x[22]-x[24])+x[24]*(2*x[24]-x[23]-x[25])+x[25]*(2*x[25]-x[24]-x[26])+x[26]*(2*x[26]-x[25]-x[27])+x[27]*(2*x[27]-x[26]-x[28])+x[28]*(2*x[28]-x[27]-x[29])+x[29]*(2*x[29]-x[28]-x[30])+x[30]*(2*x[30]-x[29]-x[31])+x[31]*(2*x[31]-x[30]-x[32])+x[32]*(2*x[32]-x[31]-x[33])+x[33]*(2*x[33]-x[32]-x[34])+x[34]*(2*x[34]-x[33]-x[35])+x[35]*(2*x[35]-x[34]-x[36])+x[36]*(2*x[36]-x[35]-x[37])+x[37]*(2*x[37]-x[36]-x[38])+x[38]*(2*x[38]-x[37]-x[39])+x[39]*(2*x[39]-x[38]-x[40])+x[40]*(2*x[40]-x[39]-x[41])+x[41]*(2*x[41]-x[40]-x[42])+x[42]*(2*x[42]-x[41]-x[43])+x[43]*(2*x[43]-x[42]-x[44])+x[44]*(2*x[44]-x[43]-x[45])+x[45]*(2*x[45]-x[44]-x[46])+x[46]*(2*x[46]-x[45]-x[47])+x[47]*(2*x[47]-x[46]-x[48])+x[48]*(2*x[48]-x[47]-x[49])+x[49]*(2*x[49]-x[48]-x[50])+x[50]*(2*x[50]-x[49])-2*x[1])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
