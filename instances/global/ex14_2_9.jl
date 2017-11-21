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
@NLconstraint(m, e2, 8.86*log(2.1055*x[1]+4.0456*x[2])-7.888*log(1.972*x[1]+3.236*x[2])-(2.1105532*x[2]-0.922208999999999*x[1])/(2.1055*x[1]+4.0456*x[2])-(0.848*log(1.52337552625369*x[1]+3.236*x[2])+1.124*log(1.17581829697036*x[1]+0.197740576646344*x[2]))-((1.29182244626313*x[1]+1.29182244626313*x[2])/(1.52337552625369*x[1]+3.236*x[2])+3.29049113670798*x[2]/(1.52337552625369*x[1]+3.236*x[2])+0.347329619985842*x[2]/(1.52337552625369*x[1]+3.236*x[2])+1.32161976579469*x[1]/(1.17581829697036*x[1]+0.197740576646344*x[2]))-3803.98/(231.47+x[3])-x[5] <= -13.1111702786953)
@NLconstraint(m, e3, 15.18*log(2.1055*x[1]+4.0456*x[2])-12.944*log(1.972*x[1]+3.236*x[2])-(4.05530944*x[2]-1.7719728*x[1])/(2.1055*x[1]+4.0456*x[2])-(0.848*log(1.52337552625369*x[1]+3.236*x[2])+2.16*log(1.52337552625369*x[1]+3.236*x[2])+0.228*log(1.52337552625369*x[1]+3.236*x[2]))-((2.744128*x[1]+2.744128*x[2])/(1.52337552625369*x[1]+3.236*x[2])+6.98976*x[2]/(1.52337552625369*x[1]+3.236*x[2])+0.737808*x[2]/(1.52337552625369*x[1]+3.236*x[2])+0.222260408150491*x[1]/(1.17581829697036*x[1]+0.197740576646344*x[2]))-2735.58621973158/(226.276+x[3])-x[5] <= -11.2003192377536)
@NLconstraint(m, e4, 7.888*log(1.972*x[1]+3.236*x[2])-8.86*log(2.1055*x[1]+4.0456*x[2])+(2.1105532*x[2]-0.922208999999999*x[1])/(2.1055*x[1]+4.0456*x[2])+0.848*log(1.52337552625369*x[1]+3.236*x[2])+1.124*log(1.17581829697036*x[1]+0.197740576646344*x[2])+(1.29182244626313*x[1]+1.29182244626313*x[2])/(1.52337552625369*x[1]+3.236*x[2])+3.29049113670798*x[2]/(1.52337552625369*x[1]+3.236*x[2])+0.347329619985842*x[2]/(1.52337552625369*x[1]+3.236*x[2])+1.32161976579469*x[1]/(1.17581829697036*x[1]+0.197740576646344*x[2])+3803.98/(231.47+x[3])-x[5] <= 13.1111702786953)
@NLconstraint(m, e5, 12.944*log(1.972*x[1]+3.236*x[2])-15.18*log(2.1055*x[1]+4.0456*x[2])+(4.05530944*x[2]-1.7719728*x[1])/(2.1055*x[1]+4.0456*x[2])+0.848*log(1.52337552625369*x[1]+3.236*x[2])+2.16*log(1.52337552625369*x[1]+3.236*x[2])+0.228*log(1.52337552625369*x[1]+3.236*x[2])+(2.744128*x[1]+2.744128*x[2])/(1.52337552625369*x[1]+3.236*x[2])+6.98976*x[2]/(1.52337552625369*x[1]+3.236*x[2])+0.737808*x[2]/(1.52337552625369*x[1]+3.236*x[2])+0.222260408150491*x[1]/(1.17581829697036*x[1]+0.197740576646344*x[2])+2735.58621973158/(226.276+x[3])-x[5] <= 11.2003192377536)
@constraint(m, e6, x[1]+x[2] == 1.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
