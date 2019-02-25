using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30]
@variable(m, x[x_Idx])
set_lower_bound(x[4], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[10], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, 4*x[1]+7*x[6]+4*x[7]+8*x[12]+x[13]+3*x[14]+8*x[19]+6*x[20]+x[25]+8*x[26] <= 425.0)
@constraint(m, e2, 7*x[1]+3*x[2]+7*x[7]+9*x[8]+9*x[13]+2*x[14]+6*x[15]+5*x[20]+7*x[21]+5*x[26]+8*x[27] <= 450.0)
@constraint(m, e3, 7*x[2]+9*x[3]+8*x[8]+4*x[9]+3*x[14]+6*x[15]+4*x[16]+6*x[21]+5*x[22]+3*x[27]+2*x[28] <= 380.0)
@constraint(m, e4, 6*x[3]+9*x[4]+7*x[9]+8*x[10]+8*x[15]+8*x[16]+6*x[17]+5*x[22]+3*x[23]+2*x[28]+x[29] <= 415.0)
@constraint(m, e5, 5*x[4]+5*x[5]+6*x[10]+2*x[11]+9*x[16]+6*x[17]+9*x[18]+9*x[23]+3*x[24]+3*x[29]+4*x[30] <= 360.0)
@constraint(m, e6, 7*x[5]+5*x[6]+6*x[11]+6*x[12]+8*x[17]+5*x[18]+x[19]+9*x[24]+6*x[25]+4*x[30] <= 365.0)
@constraint(m, e7, 4*x[1]+5*x[6]+4*x[7]+4*x[12]+9*x[13]+6*x[18]+2*x[19]+2*x[20]+2*x[25]+x[26] <= 300.0)
@constraint(m, e8, 2*x[1]+x[2]+3*x[7]+7*x[8]+9*x[13]+9*x[14]+x[19]+4*x[20]+6*x[21]+5*x[26]+5*x[27] <= 370.0)
@constraint(m, e9, 9*x[1]+7*x[2]+x[3]+6*x[8]+8*x[9]+2*x[14]+4*x[15]+x[20]+4*x[21]+7*x[22]+2*x[27]+4*x[28] <= 370.0)
@constraint(m, e10, 3*x[2]+4*x[3]+4*x[4]+7*x[9]+9*x[10]+7*x[15]+2*x[16]+3*x[21]+2*x[22]+2*x[23]+x[28]+8*x[29] <= 320.0)
@constraint(m, e11, 8*x[3]+9*x[4]+5*x[5]+x[10]+3*x[11]+x[16]+4*x[17]+7*x[22]+6*x[23]+4*x[24]+2*x[29]+6*x[30] <= 330.0)
@constraint(m, e12, 6*x[4]+5*x[5]+3*x[6]+5*x[11]+7*x[12]+9*x[17]+9*x[18]+4*x[23]+x[24]+6*x[25]+2*x[30] <= 325.0)
@constraint(m, e13, 3*x[5]+9*x[6]+3*x[7]+8*x[12]+5*x[13]+4*x[18]+x[19]+3*x[24]+6*x[25]+5*x[26] <= 285.0)
@constraint(m, e14, 6*x[1]+2*x[6]+4*x[7]+2*x[8]+9*x[13]+7*x[14]+8*x[19]+2*x[20]+8*x[25]+8*x[26]+6*x[27] <= 425.0)
@constraint(m, e15, x[1]+2*x[2]+x[7]+4*x[8]+x[9]+6*x[14]+3*x[15]+7*x[20]+6*x[21]+5*x[26]+7*x[27]+3*x[28] <= 335.0)
@constraint(m, e16, 9*x[2]+3*x[3]+2*x[8]+x[9]+6*x[10]+9*x[15]+6*x[16]+7*x[21]+6*x[22]+7*x[27]+5*x[28]+5*x[29] <= 415.0)
@constraint(m, e17, 6*x[3]+3*x[4]+5*x[9]+6*x[10]+3*x[11]+9*x[16]+8*x[17]+7*x[22]+4*x[23]+7*x[28]+x[29]+6*x[30] <= 390.0)
@constraint(m, e18, 9*x[4]+8*x[5]+2*x[10]+7*x[11]+8*x[12]+8*x[17]+9*x[18]+2*x[23]+x[24]+7*x[29]+3*x[30] <= 410.0)
@constraint(m, e19, 6*x[5]+9*x[6]+9*x[11]+6*x[12]+9*x[13]+4*x[18]+3*x[19]+3*x[24]+x[25]+9*x[30] <= 370.0)
@constraint(m, e20, x[1]+x[2]+x[3]+x[4]+x[5]+x[6]+x[7]+x[8]+x[9]+x[10]+x[11]+x[12]+x[13]+x[14]+x[15]+x[16]+x[17]+x[18]+x[19]+x[20]+x[21]+x[22]+x[23]+x[24]+x[25]+x[26]+x[27]+x[28]+x[29]+x[30] <= 400.0)
@NLconstraint(m, e21, -(-0.00165* (x[1])^2-0.1914*x[1]-0.0004* (x[2])^2-0.0384*x[2]-0.00285* (x[3])^2-0.3876*x[3]-0.00155* (x[4])^2-0.1116*x[4]-0.0038* (x[5])^2-0.4636*x[5]-0.0044* (x[6])^2-0.044*x[6]-0.0046* (x[7])^2-0.3588*x[7]-0.00085* (x[8])^2-0.0272*x[8]-0.00165* (x[9])^2-0.231*x[9]-0.0025* (x[10])^2-0.27*x[10]-0.00385* (x[11])^2-0.308*x[11]-0.00355* (x[12])^2-0.3692*x[12]-0.0015* (x[13])^2-0.288*x[13]-0.0037* (x[14])^2-0.407*x[14]-0.00125* (x[15])^2-0.1175*x[15]-0.00095* (x[16])^2-0.1045*x[16]-0.0048* (x[17])^2-0.1632*x[17]-0.0015* (x[18])^2-0.135*x[18]-0.0048* (x[19])^2-0.0864*x[19]-0.0007* (x[20])^2-0.1176*x[20]-0.0043* (x[21])^2-0.645*x[21]-0.0045* (x[22])^2-0.882*x[22]-0.00245* (x[23])^2-0.3283*x[23]-0.0004* (x[24])^2-0.0648*x[24]-0.0048* (x[25])^2-0.0864*x[25]-0.00485* (x[26])^2-0.4753*x[26]-0.00025* (x[27])^2-0.046*x[27]-0.00435* (x[28])^2-0.7917*x[28]-0.00365* (x[29])^2-0.7008*x[29]-0.0002* (x[30])^2-0.0384*x[30])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.