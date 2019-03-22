using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32]
@variable(m, x[x_Idx])
setlowerbound(x[4], 0.0)
setlowerbound(x[16], 0.0)
setlowerbound(x[6], 0.0)
setupperbound(x[27], 0.0)
setlowerbound(x[14], 0.0)
setlowerbound(x[17], 0.0)
setupperbound(x[25], 0.0)
setlowerbound(x[3], 0.0)
setupperbound(x[30], 0.0)
setupperbound(x[26], 0.0)
setupperbound(x[23], 0.0)
setlowerbound(x[11], 0.0)
setupperbound(x[29], 0.0)
setlowerbound(x[22], 0.0)
setlowerbound(x[12], 0.0)
setlowerbound(x[5], 0.0)
setlowerbound(x[19], 0.0)
setlowerbound(x[2], 0.0)
setupperbound(x[24], 0.0)
setlowerbound(x[20], 0.0)
setupperbound(x[31], 0.0)
setlowerbound(x[18], 0.0)
setlowerbound(x[9], 0.0)
setlowerbound(x[15], 0.0)
setlowerbound(x[1], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[13], 0.0)
setupperbound(x[28], 0.0)
setlowerbound(x[10], 0.0)
setupperbound(x[1], 1.0)
setupperbound(x[2], 1.0)
setupperbound(x[3], 1.0)
setupperbound(x[4], 1.0)
setupperbound(x[5], 1.0)
setupperbound(x[6], 1.0)
setupperbound(x[7], 1.0)
setupperbound(x[8], 1.0)
setupperbound(x[9], 1.0)
setupperbound(x[10], 1.0)
setlowerbound(x[11], 0.0)
setupperbound(x[11], 0.0)
setupperbound(x[12], 2.0)
setupperbound(x[13], 2.0)
setupperbound(x[14], 2.0)
setupperbound(x[15], 2.0)
setupperbound(x[16], 2.0)
setupperbound(x[17], 2.0)
setupperbound(x[18], 2.0)
setupperbound(x[19], 2.0)
setupperbound(x[20], 2.0)
setlowerbound(x[21], 2.0)
setupperbound(x[21], 2.0)
setlowerbound(x[22], 0.0)
setupperbound(x[22], 0.0)
setlowerbound(x[23], -7.5)
setlowerbound(x[24], -7.5)
setlowerbound(x[25], -7.5)
setlowerbound(x[26], -7.5)
setlowerbound(x[27], -7.5)
setlowerbound(x[28], -7.5)
setlowerbound(x[29], -7.5)
setlowerbound(x[30], -7.5)
setlowerbound(x[31], -7.5)
setlowerbound(x[32], -1.0)
setupperbound(x[32], -1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, exp( (x[12]-x[11])^2+ (x[23]-x[22])^2- (0.447213595499958+x[1])^2) <= 1.0)
@NLconstraint(m, e2, exp( (x[13]-x[12])^2+ (x[24]-x[23])^2- (0.447213595499958+x[2])^2) <= 1.0)
@NLconstraint(m, e3, exp( (x[14]-x[13])^2+ (x[25]-x[24])^2- (0.447213595499958+x[3])^2) <= 1.0)
@NLconstraint(m, e4, exp( (x[15]-x[14])^2+ (x[26]-x[25])^2- (0.447213595499958+x[4])^2) <= 1.0)
@NLconstraint(m, e5, exp( (x[16]-x[15])^2+ (x[27]-x[26])^2- (0.447213595499958+x[5])^2) <= 1.0)
@NLconstraint(m, e6, exp( (x[17]-x[16])^2+ (x[28]-x[27])^2- (0.447213595499958+x[6])^2) <= 1.0)
@NLconstraint(m, e7, exp( (x[18]-x[17])^2+ (x[29]-x[28])^2- (0.447213595499958+x[7])^2) <= 1.0)
@NLconstraint(m, e8, exp( (x[19]-x[18])^2+ (x[30]-x[29])^2- (0.447213595499958+x[8])^2) <= 1.0)
@NLconstraint(m, e9, exp( (x[20]-x[19])^2+ (x[31]-x[30])^2- (0.447213595499958+x[9])^2) <= 1.0)
@NLconstraint(m, e10, exp( (x[21]-x[20])^2+ (x[32]-x[31])^2- (0.447213595499958+x[10])^2) <= 1.0)
@NLconstraint(m, e11, -50*( (x[1])^2+ (x[2])^2+ (x[3])^2+ (x[4])^2+ (x[5])^2+ (x[6])^2+ (x[7])^2+ (x[8])^2+ (x[9])^2+ (x[10])^2)-9.8*x[23]-9.8*x[24]-9.8*x[25]-9.8*x[26]-9.8*x[27]-9.8*x[28]-9.8*x[29]-9.8*x[30]-9.8*x[31]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 