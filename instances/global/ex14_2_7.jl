using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 7]
@variable(m, x[x_Idx])
setlowerbound(x[7], 0.0)
setlowerbound(x[1], 1.0e-6)
setupperbound(x[1], 1.0)
setlowerbound(x[2], 1.0e-6)
setupperbound(x[2], 1.0)
setlowerbound(x[3], 1.0e-6)
setupperbound(x[3], 1.0)
setlowerbound(x[4], 1.0e-6)
setupperbound(x[4], 1.0)
setlowerbound(x[5], 40.0)
setupperbound(x[5], 90.0)


# ----- Constraints ----- #
@constraint(m, e1, objvar-x[7] == 0.0)
@NLconstraint(m, e2, 8.85*log(2.11*x[1]+3.97*x[2]+3.19*x[3]+4.5*x[4])-9.85*log(1.97*x[1]+3.01*x[2]+2.4*x[3]+3.86*x[4])-(3.8613*x[2]-0.865100000000001*x[1]+3.7136*x[3]-0.632999999999999*x[4])/(2.11*x[1]+3.97*x[2]+3.19*x[3]+4.5*x[4])-0.92*log(0.92*x[1]+0.074630773041249*x[2]+0.120222883700913*x[3]+0.161199992780481*x[4])+0.92*log(0.92*x[1]+3.01*x[2]+2.4*x[3]+3.86*x[4])-0.92*(0.92*x[1]/(0.92*x[1]+0.074630773041249*x[2]+0.120222883700913*x[3]+0.161199992780481*x[4])+5.42978509857797*x[2]/(1.65960208993081*x[1]+3.01*x[2]+2.91963915785291*x[3]+1.70144966342223*x[4])+3.53361528312402*x[3]/(1.35455252519754*x[1]+1.86011323009376*x[2]+2.4*x[3]+2.64991431773289*x[4])+5.92791255201582*x[4]/(1.41287034918512*x[1]+5.85662897318878*x[2]+2.5957281029371*x[3]+3.86*x[4]))-3803.98/(231.47+x[5])-x[7] <= -12.8590236275375)
@NLconstraint(m, e3, 14.05*log(2.11*x[1]+3.97*x[2]+3.19*x[3]+4.5*x[4])-15.05*log(1.97*x[1]+3.01*x[2]+2.4*x[3]+3.86*x[4])-(7.26510000000001*x[2]-1.6277*x[1]+6.9872*x[3]-1.191*x[4])/(2.11*x[1]+3.97*x[2]+3.19*x[3]+4.5*x[4])-3.01*log(1.65960208993081*x[1]+3.01*x[2]+2.91963915785291*x[3]+1.70144966342223*x[4])+3.01*log(0.92*x[1]+3.01*x[2]+2.4*x[3]+3.86*x[4])-3.01*(0.0228107346172588*x[1]/(0.92*x[1]+0.074630773041249*x[2]+0.120222883700913*x[3]+0.161199992780481*x[4])+3.01*x[2]/(1.65960208993081*x[1]+3.01*x[2]+2.91963915785291*x[3]+1.70144966342223*x[4])+1.48314676153655*x[3]/(1.35455252519754*x[1]+1.86011323009376*x[2]+2.4*x[3]+2.64991431773289*x[4])+7.51049429784342*x[4]/(1.41287034918512*x[1]+5.85662897318878*x[2]+2.5957281029371*x[3]+3.86*x[4]))-2735.58621973158/(226.276+x[5])-x[7] <= -11.2296864040814)
@NLconstraint(m, e4, 11*log(2.11*x[1]+3.97*x[2]+3.19*x[3]+4.5*x[4])-12*log(1.97*x[1]+3.01*x[2]+2.4*x[3]+3.86*x[4])-(5.83770000000001*x[2]-1.3079*x[1]+5.6144*x[3]-0.956999999999998*x[4])/(2.11*x[1]+3.97*x[2]+3.19*x[3]+4.5*x[4])-2.4*log(1.35455252519754*x[1]+1.86011323009376*x[2]+2.4*x[3]+2.64991431773289*x[4])+2.4*log(0.92*x[1]+3.01*x[2]+2.4*x[3]+3.86*x[4])-2.4*(0.0460854387520165*x[1]/(0.92*x[1]+0.074630773041249*x[2]+0.120222883700913*x[3]+0.161199992780481*x[4])+3.66171411047386*x[2]/(1.65960208993081*x[1]+3.01*x[2]+2.91963915785291*x[3]+1.70144966342223*x[4])+2.4*x[3]/(1.35455252519754*x[1]+1.86011323009376*x[2]+2.4*x[3]+2.64991431773289*x[4])+4.17479603222384*x[4]/(1.41287034918512*x[1]+5.85662897318878*x[2]+2.5957281029371*x[3]+3.86*x[4]))-2788.51/(220.79+x[5])-x[7] <= -11.1728763302021)
@NLconstraint(m, e5, 18.3*log(2.11*x[1]+3.97*x[2]+3.19*x[3]+4.5*x[4])-19.3*log(1.97*x[1]+3.01*x[2]+2.4*x[3]+3.86*x[4])-(8.23500000000001*x[2]-1.845*x[1]+7.92*x[3]-1.35*x[4])/(2.11*x[1]+3.97*x[2]+3.19*x[3]+4.5*x[4])-3.86*log(1.41287034918512*x[1]+5.85662897318878*x[2]+2.5957281029371*x[3]+3.86*x[4])+3.86*log(0.92*x[1]+3.01*x[2]+2.4*x[3]+3.86*x[4])-3.86*(0.0384207236678868*x[1]/(0.92*x[1]+0.074630773041249*x[2]+0.120222883700913*x[3]+0.161199992780481*x[4])+1.32677810541474*x[2]/(1.65960208993081*x[1]+3.01*x[2]+2.91963915785291*x[3]+1.70144966342223*x[4])+1.64761511983392*x[3]/(1.35455252519754*x[1]+1.86011323009376*x[2]+2.4*x[3]+2.64991431773289*x[4])+3.86*x[4]/(1.41287034918512*x[1]+5.85662897318878*x[2]+2.5957281029371*x[3]+3.86*x[4]))-2739.24733002944/(226.28+x[5])-x[7] <= -11.3821403387577)
@NLconstraint(m, e6, 9.85*log(1.97*x[1]+3.01*x[2]+2.4*x[3]+3.86*x[4])-8.85*log(2.11*x[1]+3.97*x[2]+3.19*x[3]+4.5*x[4])+(3.8613*x[2]-0.865100000000001*x[1]+3.7136*x[3]-0.632999999999999*x[4])/(2.11*x[1]+3.97*x[2]+3.19*x[3]+4.5*x[4])+0.92*log(0.92*x[1]+0.074630773041249*x[2]+0.120222883700913*x[3]+0.161199992780481*x[4])-0.92*log(0.92*x[1]+3.01*x[2]+2.4*x[3]+3.86*x[4])+0.92*(0.92*x[1]/(0.92*x[1]+0.074630773041249*x[2]+0.120222883700913*x[3]+0.161199992780481*x[4])+5.42978509857797*x[2]/(1.65960208993081*x[1]+3.01*x[2]+2.91963915785291*x[3]+1.70144966342223*x[4])+3.53361528312402*x[3]/(1.35455252519754*x[1]+1.86011323009376*x[2]+2.4*x[3]+2.64991431773289*x[4])+5.92791255201582*x[4]/(1.41287034918512*x[1]+5.85662897318878*x[2]+2.5957281029371*x[3]+3.86*x[4]))+3803.98/(231.47+x[5])-x[7] <= 12.8590236275375)
@NLconstraint(m, e7, 15.05*log(1.97*x[1]+3.01*x[2]+2.4*x[3]+3.86*x[4])-14.05*log(2.11*x[1]+3.97*x[2]+3.19*x[3]+4.5*x[4])+(7.26510000000001*x[2]-1.6277*x[1]+6.9872*x[3]-1.191*x[4])/(2.11*x[1]+3.97*x[2]+3.19*x[3]+4.5*x[4])+3.01*log(1.65960208993081*x[1]+3.01*x[2]+2.91963915785291*x[3]+1.70144966342223*x[4])-3.01*log(0.92*x[1]+3.01*x[2]+2.4*x[3]+3.86*x[4])+3.01*(0.0228107346172588*x[1]/(0.92*x[1]+0.074630773041249*x[2]+0.120222883700913*x[3]+0.161199992780481*x[4])+3.01*x[2]/(1.65960208993081*x[1]+3.01*x[2]+2.91963915785291*x[3]+1.70144966342223*x[4])+1.48314676153655*x[3]/(1.35455252519754*x[1]+1.86011323009376*x[2]+2.4*x[3]+2.64991431773289*x[4])+7.51049429784342*x[4]/(1.41287034918512*x[1]+5.85662897318878*x[2]+2.5957281029371*x[3]+3.86*x[4]))+2735.58621973158/(226.276+x[5])-x[7] <= 11.2296864040814)
@NLconstraint(m, e8, 12*log(1.97*x[1]+3.01*x[2]+2.4*x[3]+3.86*x[4])-11*log(2.11*x[1]+3.97*x[2]+3.19*x[3]+4.5*x[4])+(5.83770000000001*x[2]-1.3079*x[1]+5.6144*x[3]-0.956999999999998*x[4])/(2.11*x[1]+3.97*x[2]+3.19*x[3]+4.5*x[4])+2.4*log(1.35455252519754*x[1]+1.86011323009376*x[2]+2.4*x[3]+2.64991431773289*x[4])-2.4*log(0.92*x[1]+3.01*x[2]+2.4*x[3]+3.86*x[4])+2.4*(0.0460854387520165*x[1]/(0.92*x[1]+0.074630773041249*x[2]+0.120222883700913*x[3]+0.161199992780481*x[4])+3.66171411047386*x[2]/(1.65960208993081*x[1]+3.01*x[2]+2.91963915785291*x[3]+1.70144966342223*x[4])+2.4*x[3]/(1.35455252519754*x[1]+1.86011323009376*x[2]+2.4*x[3]+2.64991431773289*x[4])+4.17479603222384*x[4]/(1.41287034918512*x[1]+5.85662897318878*x[2]+2.5957281029371*x[3]+3.86*x[4]))+2788.51/(220.79+x[5])-x[7] <= 11.1728763302021)
@NLconstraint(m, e9, 19.3*log(1.97*x[1]+3.01*x[2]+2.4*x[3]+3.86*x[4])-18.3*log(2.11*x[1]+3.97*x[2]+3.19*x[3]+4.5*x[4])+(8.23500000000001*x[2]-1.845*x[1]+7.92*x[3]-1.35*x[4])/(2.11*x[1]+3.97*x[2]+3.19*x[3]+4.5*x[4])+3.86*log(1.41287034918512*x[1]+5.85662897318878*x[2]+2.5957281029371*x[3]+3.86*x[4])-3.86*log(0.92*x[1]+3.01*x[2]+2.4*x[3]+3.86*x[4])+3.86*(0.0384207236678868*x[1]/(0.92*x[1]+0.074630773041249*x[2]+0.120222883700913*x[3]+0.161199992780481*x[4])+1.32677810541474*x[2]/(1.65960208993081*x[1]+3.01*x[2]+2.91963915785291*x[3]+1.70144966342223*x[4])+1.64761511983392*x[3]/(1.35455252519754*x[1]+1.86011323009376*x[2]+2.4*x[3]+2.64991431773289*x[4])+3.86*x[4]/(1.41287034918512*x[1]+5.85662897318878*x[2]+2.5957281029371*x[3]+3.86*x[4]))+2739.24733002944/(226.28+x[5])-x[7] <= 11.3821403387577)
@constraint(m, e10, x[1]+x[2]+x[3]+x[4] == 1.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
