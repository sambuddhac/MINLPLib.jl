using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
i_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24]
@variable(m, i[i_Idx] <= 100, Int)

# ----- Constraints ----- #
@constraint(m, e1, -i[1]-i[5]-i[9]-i[13]-i[17]-i[21] <= -29.0)
@constraint(m, e2, -i[2]-i[6]-i[10]-i[14]-i[18]-i[22] <= -41.0)
@constraint(m, e3, -i[3]-i[7]-i[11]-i[15]-i[19]-i[23] <= -13.0)
@constraint(m, e4, -i[4]-i[8]-i[12]-i[16]-i[20]-i[24] <= -21.0)
@constraint(m, e5, -i[1]-i[2]-i[3]-i[4] <= -8.0)
@constraint(m, e6, -i[5]-i[6]-i[7]-i[8] <= -24.0)
@constraint(m, e7, -i[9]-i[10]-i[11]-i[12] <= -20.0)
@constraint(m, e8, -i[13]-i[14]-i[15]-i[16] <= -24.0)
@constraint(m, e9, -i[17]-i[18]-i[19]-i[20] <= -16.0)
@constraint(m, e10, -i[21]-i[22]-i[23]-i[24] <= -12.0)
@constraint(m, e11, i[1]+i[5]+i[9]+i[13]+i[17]+i[21] <= 29.0)
@constraint(m, e12, i[2]+i[6]+i[10]+i[14]+i[18]+i[22] <= 41.0)
@constraint(m, e13, i[3]+i[7]+i[11]+i[15]+i[19]+i[23] <= 13.0)
@constraint(m, e14, i[4]+i[8]+i[12]+i[16]+i[20]+i[24] <= 21.0)
@constraint(m, e15, i[1]+i[2]+i[3]+i[4] <= 8.0)
@constraint(m, e16, i[5]+i[6]+i[7]+i[8] <= 24.0)
@constraint(m, e17, i[9]+i[10]+i[11]+i[12] <= 20.0)
@constraint(m, e18, i[13]+i[14]+i[15]+i[16] <= 24.0)
@constraint(m, e19, i[17]+i[18]+i[19]+i[20] <= 16.0)
@constraint(m, e20, i[21]+i[22]+i[23]+i[24] <= 12.0)
@NLconstraint(m, e21, -(7*i[1]*i[1]+300*i[1]+4*i[2]*i[2]+270*i[2]+6*i[3]*i[3]-460*i[3]+8*i[4]*i[4]+800*i[4]+12*i[5]*i[5]+740*i[5]+9*i[6]*i[6]-600*i[6]+14*i[7]*i[7]+540*i[7]+7*i[8]*i[8]+380*i[8]+13*i[9]*i[9]+300*i[9]+12*i[10]*i[10]-490*i[10]+8*i[11]*i[11]+380*i[11]+4*i[12]*i[12]+760*i[12]+7*i[13]*i[13]-430*i[13]+9*i[14]*i[14]+250*i[14]+16*i[15]*i[15]+390*i[15]+8*i[16]*i[16]+600*i[16]+4*i[17]*i[17]-210*i[17]+10*i[18]*i[18]+830*i[18]+21*i[19]*i[19]+470*i[19]+13*i[20]*i[20]-680*i[20]+17*i[21]*i[21]+360*i[21]+9*i[22]*i[22]+290*i[22]+8*i[23]*i[23]-400*i[23]+4*i[24]*i[24]+310*i[24])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
