using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4]
@variable(m, x[x_Idx])
setlowerbound(x[1], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[3], 0.0)
setupperbound(x[1], 4.0)
setupperbound(x[2], 4.0)
setupperbound(x[3], 5.0)
setupperbound(x[4], 5.0)


# ----- Constraints ----- #
@constraint(m, e1, -4*x[1]-x[2] >= -12.0)
@constraint(m, e2, 3*x[1]-x[2] >= -1.0)
@constraint(m, e3, 4*x[3]-x[4] <= 12.0)
@constraint(m, e4, -x[3]-x[4] >= -8.0)
@constraint(m, e5, 4*x[3]-x[4] >= -1.0)
@NLconstraint(m, e6, -(x[2]*x[3]+x[2]+x[3]-x[1]*x[3])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
