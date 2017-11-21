using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2]
@variable(m, x[x_Idx])
setlowerbound(x[1], 0.4)
setlowerbound(x[2], -4.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, 0.49*x[2]-x[1]*x[2] >= 0.09)
@NLconstraint(m, e2, -( (0.48+(-exp(-2*x[2])*(0.49-x[1]))-x[1])^2+ (0.47+(-exp(-2*x[2])*(0.49-x[1]))-x[1])^2+ (0.48+(-exp(-2*x[2])*(0.49-x[1]))-x[1])^2+ (0.47+(-exp(-2*x[2])*(0.49-x[1]))-x[1])^2+ (0.46+(-exp(-4*x[2])*(0.49-x[1]))-x[1])^2+ (0.46+(-exp(-4*x[2])*(0.49-x[1]))-x[1])^2+ (0.45+(-exp(-4*x[2])*(0.49-x[1]))-x[1])^2+ (0.43+(-exp(-4*x[2])*(0.49-x[1]))-x[1])^2+ (0.45+(-exp(-6*x[2])*(0.49-x[1]))-x[1])^2+ (0.43+(-exp(-6*x[2])*(0.49-x[1]))-x[1])^2+ (0.43+(-exp(-6*x[2])*(0.49-x[1]))-x[1])^2+ (0.44+(-exp(-8*x[2])*(0.49-x[1]))-x[1])^2+ (0.43+(-exp(-8*x[2])*(0.49-x[1]))-x[1])^2+ (0.43+(-exp(-8*x[2])*(0.49-x[1]))-x[1])^2+ (0.46+(-exp(-10*x[2])*(0.49-x[1]))-x[1])^2+ (0.45+(-exp(-10*x[2])*(0.49-x[1]))-x[1])^2+ (0.42+(-exp(-12*x[2])*(0.49-x[1]))-x[1])^2+ (0.42+(-exp(-12*x[2])*(0.49-x[1]))-x[1])^2+ (0.43+(-exp(-12*x[2])*(0.49-x[1]))-x[1])^2+ (0.41+(-exp(-14*x[2])*(0.49-x[1]))-x[1])^2+ (0.41+(-exp(-14*x[2])*(0.49-x[1]))-x[1])^2+ (0.4+(-exp(-14*x[2])*(0.49-x[1]))-x[1])^2+ (0.42+(-exp(-16*x[2])*(0.49-x[1]))-x[1])^2+ (0.4+(-exp(-16*x[2])*(0.49-x[1]))-x[1])^2+ (0.4+(-exp(-16*x[2])*(0.49-x[1]))-x[1])^2+ (0.41+(-exp(-18*x[2])*(0.49-x[1]))-x[1])^2+ (0.4+(-exp(-18*x[2])*(0.49-x[1]))-x[1])^2+ (0.41+(-exp(-18*x[2])*(0.49-x[1]))-x[1])^2+ (0.41+(-exp(-20*x[2])*(0.49-x[1]))-x[1])^2+ (0.4+(-exp(-20*x[2])*(0.49-x[1]))-x[1])^2+ (0.4+(-exp(-22*x[2])*(0.49-x[1]))-x[1])^2+ (0.4+(-exp(-22*x[2])*(0.49-x[1]))-x[1])^2+ (0.38+(-exp(-22*x[2])*(0.49-x[1]))-x[1])^2+ (0.41+(-exp(-24*x[2])*(0.49-x[1]))-x[1])^2+ (0.4+(-exp(-24*x[2])*(0.49-x[1]))-x[1])^2+ (0.4+(-exp(-26*x[2])*(0.49-x[1]))-x[1])^2+ (0.41+(-exp(-28*x[2])*(0.49-x[1]))-x[1])^2+ (0.38+(-exp(-28*x[2])*(0.49-x[1]))-x[1])^2+ (0.4+(-exp(-30*x[2])*(0.49-x[1]))-x[1])^2+ (0.4+(-exp(-30*x[2])*(0.49-x[1]))-x[1])^2+ (0.39+(-exp(-32*x[2])*(0.49-x[1]))-x[1])^2+ (0.39+(-exp(-34*x[2])*(0.49-x[1]))-x[1])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
