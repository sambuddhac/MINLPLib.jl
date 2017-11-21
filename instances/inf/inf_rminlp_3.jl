using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[5, 6, 7, 8, 9, 10, 11]
@variable(m, x[x_Idx])
i_Idx = Any[1, 2, 3, 4]
@variable(m, i[i_Idx])
setcategory(i[4], :Int)
setcategory(i[3], :Int)
setcategory(i[1], :Int)
setcategory(i[2], :Int)
setupperbound(i[1], 100.0)
setupperbound(i[2], 100.0)
setupperbound(i[3], 100.0)
setupperbound(i[4], 100.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(13895*i[1]-92*i[1]*i[2]-2669*i[2]-15*i[1]*i[3]+20*i[1]*i[4]-2050*i[4]+687*i[2]*i[3]-867*i[2]*i[4]+40*i[3]*i[4]-451* (i[1])^2+691* (i[2])^2-487* (i[3])^2+1051* (i[4])^2)+x[5] == -96655.0)
@NLconstraint(m, e2, -(-3*i[1]*i[2]-23*i[1]+118*i[2]+12*i[1]*i[3]+11*i[1]*i[4]-474*i[4]+196*i[2]*i[3]-180*i[2]*i[4]-8*i[3]*i[4]-19* (i[2])^2-173* (i[3])^2+207* (i[4])^2)+x[6] == 464.0)
@NLconstraint(m, e3, -(4*i[1]*i[2]-712*i[1]-9*i[2]-6*i[1]*i[3]-11*i[1]*i[4]+437*i[4]-162*i[2]*i[3]+171*i[2]*i[4]-3*i[3]*i[4]+24* (i[1])^2+4* (i[2])^2+140* (i[3])^2-187* (i[4])^2)+x[7] == 5197.0)
@NLconstraint(m, e4, -(119*i[1]-6*i[1]*i[2]+263*i[2]+45*i[1]*i[3]+37*i[1]*i[4]-1609*i[4]+810*i[2]*i[3]-798*i[2]*i[4]-31*i[3]*i[4]-7* (i[1])^2-36* (i[2])^2-712* (i[3])^2+857* (i[4])^2)+x[8] == 173.0)
@NLconstraint(m, e5, -(15*i[1]*i[2]-3460*i[1]+236*i[2]+11*i[1]*i[3]-12*i[1]*i[4]+744*i[4]+174*i[2]*i[3]-274*i[2]*i[4]+61*i[3]*i[4]+112* (i[1])^2- (i[2])^2-215* (i[3])^2+47* (i[4])^2)+x[9] == 25778.0)
@NLconstraint(m, e6, -(-0.15*i[1]*i[2]-0.05*i[1]+2.83*i[2]+0.098*i[1]*i[3]+0.098*i[1]*i[4]-3.53*i[4]+0.89*i[2]*i[3]-2.65*i[2]*i[4]+0.59*i[3]*i[4]+0.59* (i[2])^2-1.47* (i[3])^2+2.06* (i[4])^2)+x[10] == 0.7772)
@NLconstraint(m, e7, -(0.36*i[1]*i[2]+0.12*i[1]-4.19*i[2]-0.24*i[1]*i[3]-0.24*i[1]*i[4]+5.88*i[4]-4.81*i[2]*i[3]+1.06*i[2]*i[4]+1.25*i[3]*i[4]+1.25* (i[2])^2+3.56* (i[3])^2-2.31* (i[4])^2)+x[11] == -1.87)
@NLconstraint(m, e8, (-3*i[1]*i[2])-23*i[1]+118*i[2]+12*i[1]*i[3]+11*i[1]*i[4]-474*i[4]+196*i[2]*i[3]-180*i[2]*i[4]-8*i[3]*i[4]-19* (i[2])^2-173* (i[3])^2+207* (i[4])^2 <= -214.0)
@NLconstraint(m, e9, 4*i[1]*i[2]-712*i[1]-9*i[2]-6*i[1]*i[3]-11*i[1]*i[4]+437*i[4]-162*i[2]*i[3]+171*i[2]*i[4]-3*i[3]*i[4]+24* (i[1])^2+4* (i[2])^2+140* (i[3])^2-187* (i[4])^2 <= -5097.0)
@NLconstraint(m, e10, 119*i[1]-6*i[1]*i[2]+263*i[2]+45*i[1]*i[3]+37*i[1]*i[4]-1609*i[4]+810*i[2]*i[3]-798*i[2]*i[4]-31*i[3]*i[4]-7* (i[1])^2-36* (i[2])^2-712* (i[3])^2+857* (i[4])^2 <= 327.0)
@NLconstraint(m, e11, 15*i[1]*i[2]-3460*i[1]+236*i[2]+11*i[1]*i[3]-12*i[1]*i[4]+744*i[4]+174*i[2]*i[3]-274*i[2]*i[4]+61*i[3]*i[4]+112* (i[1])^2- (i[2])^2-215* (i[3])^2+47* (i[4])^2 <= -25578.0)
@NLconstraint(m, e12, (-0.15*i[1]*i[2])-0.05*i[1]+2.83*i[2]+0.098*i[1]*i[3]+0.098*i[1]*i[4]-3.53*i[4]+0.89*i[2]*i[3]-2.65*i[2]*i[4]+0.59*i[3]*i[4]+0.59* (i[2])^2-1.47* (i[3])^2+2.06* (i[4])^2 <= 9.2228)
@NLconstraint(m, e13, 0.36*i[1]*i[2]+0.12*i[1]-4.19*i[2]-0.24*i[1]*i[3]-0.24*i[1]*i[4]+5.88*i[4]-4.81*i[2]*i[3]+1.06*i[2]*i[4]+1.25*i[3]*i[4]+1.25* (i[2])^2+3.56* (i[3])^2-2.31* (i[4])^2 <= 5001.87)
@NLconstraint(m, e14, (-347.958+0.0036*(13895*i[1]-92*i[1]*i[2]-2669*i[2]-15*i[1]*i[3]+20*i[1]*i[4]-2050*i[4]+687*i[2]*i[3]-867*i[2]*i[4]+40*i[3]*i[4]-451* (i[1])^2+691* (i[2])^2-487* (i[3])^2+1051* (i[4])^2))*(0.1356+0.01332*i[2])+0.085*i[1] <= 5.0)
@constraint(m, e15, i[1] >= 14.0)
@constraint(m, e16, i[1] <= 16.0)
@constraint(m, e17, i[2] >= 1.0)
@constraint(m, e18, i[2] <= 3.0)
@constraint(m, e19, i[3] >= 1.0)
@constraint(m, e20, -i[2]+i[3] <= 0.0)
@constraint(m, e21, i[4] >= 1.0)
@constraint(m, e22, -i[2]+i[4] <= 0.0)


# ----- Objective ----- #
@objective(m, Max, x[5])

m = m 		 # model get returned when including this script. 
