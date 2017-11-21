using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, x[1]*x[2] == 1.0)
@NLconstraint(m, e2, x[1]*x[2]*x[3]*x[4] == 1.0)
@NLconstraint(m, e3, x[1]*x[2]*x[3]*x[4]*x[5]*x[6] == 1.0)
@NLconstraint(m, e4, x[1]*x[2]*x[3]*x[4]*x[5]*x[6]*x[7]*x[8] == 1.0)
@NLconstraint(m, e5, x[1]*x[2]*x[3]*x[4]*x[5]*x[6]*x[7]*x[8]*x[9]*x[10] == 1.0)
@NLconstraint(m, e6, -(100* (x[2]- (x[1])^2)^2+100* (x[3]- (x[2])^2)^2+100* (x[4]- (x[3])^2)^2+100* (x[5]- (x[4])^2)^2+100* (x[6]- (x[5])^2)^2+100* (x[7]- (x[6])^2)^2+100* (x[8]- (x[7])^2)^2+ ((-1)+x[1])^2+ ((-1)+x[2])^2+ ((-1)+x[3])^2+ ((-1)+x[4])^2+ ((-1)+x[5])^2+ ((-1)+x[6])^2+ ((-1)+x[7])^2+90* (x[4]- (x[3])^2)^2+90* (x[5]- (x[4])^2)^2+90* (x[6]- (x[5])^2)^2+90* (x[7]- (x[6])^2)^2+90* (x[8]- (x[7])^2)^2+90* (x[9]- (x[8])^2)^2+90* (x[10]- (x[9])^2)^2+ ((-1)+x[3])^2+ ((-1)+x[4])^2+ ((-1)+x[5])^2+ ((-1)+x[6])^2+ ((-1)+x[7])^2+ ((-1)+x[8])^2+ ((-1)+x[9])^2+10.1* ((-1)+x[2])^2+10.1* ((-1)+x[3])^2+10.1* ((-1)+x[4])^2+10.1* ((-1)+x[5])^2+10.1* ((-1)+x[6])^2+10.1* ((-1)+x[7])^2+10.1* ((-1)+x[8])^2+10.1* ((-1)+x[4])^2+10.1* ((-1)+x[5])^2+10.1* ((-1)+x[6])^2+10.1* ((-1)+x[7])^2+10.1* ((-1)+x[8])^2+10.1* ((-1)+x[9])^2+10.1* ((-1)+x[10])^2+(-19.8+19.8*x[2])*(-1+x[4])+(-19.8+19.8*x[3])*(-1+x[5])+(-19.8+19.8*x[4])*(-1+x[6])+(-19.8+19.8*x[5])*(-1+x[7])+(-19.8+19.8*x[6])*(-1+x[8])+(-19.8+19.8*x[7])*(-1+x[9])+(-19.8+19.8*x[8])*(-1+x[10]))+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
