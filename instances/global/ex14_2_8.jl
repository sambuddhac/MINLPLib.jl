using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 5]
@variable(m, x[x_Idx])
setlowerbound(x[5], 0.0)
setlowerbound(x[1], 1.0e-6)
setupperbound(x[1], 1.0)
setlowerbound(x[2], 1.0e-6)
setupperbound(x[2], 1.0)
setlowerbound(x[3], 40.0)
setupperbound(x[3], 90.0)


# ----- Constraints ----- #
@constraint(m, e1, objvar-x[5] == 0.0)
@NLconstraint(m, e2, 10.68*log(2.5735*x[1]+4.0464*x[2])-9.344*log(2.336*x[1]+3.24*x[2])-(2.5364416*x[2]-0.993370999999997*x[1])/(2.5735*x[1]+4.0464*x[2])-(1.696*log(1.69610217540928*x[1]+3.24*x[2])+0.64*log(0.657731453039811*x[1]+0.0338737664203932*x[2]))-(2.87658928949414*x[1]/(1.69610217540928*x[1]+3.24*x[2])+5.49537104832607*x[2]/(1.69610217540928*x[1]+3.24*x[2])+0.420948129945479*x[1]/(0.657731453039811*x[1]+0.0338737664203932*x[2]))-2787.49800065313/(229.664+x[3])-x[5] <= -10.164795069335)
@NLconstraint(m, e3, 15.2*log(2.5735*x[1]+4.0464*x[2])-12.96*log(2.336*x[1]+3.24*x[2])-(3.98813184*x[2]-1.5619104*x[1])/(2.5735*x[1]+4.0464*x[2])-3.24*log(1.69610217540928*x[1]+3.24*x[2])-(5.49504*x[1]/(1.69610217540928*x[1]+3.24*x[2])+10.4976*x[2]/(1.69610217540928*x[1]+3.24*x[2])+0.0216792105090516*x[1]/(0.657731453039811*x[1]+0.0338737664203932*x[2]))-2766.63/(222.65+x[3])-x[5] <= -11.1422900361581)
@NLconstraint(m, e4, 9.344*log(2.336*x[1]+3.24*x[2])-10.68*log(2.5735*x[1]+4.0464*x[2])+(2.5364416*x[2]-0.993370999999997*x[1])/(2.5735*x[1]+4.0464*x[2])+1.696*log(1.69610217540928*x[1]+3.24*x[2])+0.64*log(0.657731453039811*x[1]+0.0338737664203932*x[2])+2.87658928949414*x[1]/(1.69610217540928*x[1]+3.24*x[2])+5.49537104832607*x[2]/(1.69610217540928*x[1]+3.24*x[2])+0.420948129945479*x[1]/(0.657731453039811*x[1]+0.0338737664203932*x[2])+2787.49800065313/(229.664+x[3])-x[5] <= 10.164795069335)
@NLconstraint(m, e5, 12.96*log(2.336*x[1]+3.24*x[2])-15.2*log(2.5735*x[1]+4.0464*x[2])+(3.98813184*x[2]-1.5619104*x[1])/(2.5735*x[1]+4.0464*x[2])+3.24*log(1.69610217540928*x[1]+3.24*x[2])+5.49504*x[1]/(1.69610217540928*x[1]+3.24*x[2])+10.4976*x[2]/(1.69610217540928*x[1]+3.24*x[2])+0.0216792105090516*x[1]/(0.657731453039811*x[1]+0.0338737664203932*x[2])+2766.63/(222.65+x[3])-x[5] <= 11.1422900361581)
@constraint(m, e6, x[1]+x[2] == 1.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
