using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[3]
@variable(m, 0.001 <= x[x_Idx] <= 200)
i_Idx = Any[1, 2]
@variable(m, 0 <= i[i_Idx] <= 200, Int)


# ----- Constraints ----- #
@NLconstraint(m, e1, sqrt(x[3])+i[1]+2*i[2] >= 10.0)
@NLconstraint(m, e2, 0.240038406144983* (i[1])^2-i[2]+0.255036980362153*x[3] >= -3.0)
@NLconstraint(m, e3,  (i[2])^2-1/( (x[3])^3*sqrt(x[3]))-4*i[1] >= -12.0)
@NLconstraint(m, e4, -( (i[1]-3)^2+ (i[2]-2)^2+ (4+x[3])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
