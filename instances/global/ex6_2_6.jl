using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4]
@variable(m, x[x_Idx])
setlowerbound(x[2], 1.0e-6)
setupperbound(x[2], 1.0)
setlowerbound(x[3], 1.0e-6)
setupperbound(x[3], 1.0)
setlowerbound(x[4], 1.0e-6)
setupperbound(x[4], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -((26.9071667605344*x[2]+41.7710875549227*x[3]+6.30931398488382*x[4])*log(3.9235*x[2]+6.0909*x[3]+0.92*x[4])+0.668686155614739*x[2]-1.14374230885457*x[3]+2.8906196099828*x[4]+9.58716676053442*x[2]*log(x[2])+16.9310875549227*x[3]*log(x[3])+0.309313984883821*x[4]*log(x[4])-9.58716676053442*x[2]*log(3.9235*x[2]+6.0909*x[3]+0.92*x[4])-16.9310875549227*x[3]*log(3.9235*x[2]+6.0909*x[3]+0.92*x[4])-0.309313984883821*x[4]*log(3.9235*x[2]+6.0909*x[3]+0.92*x[4])+18.32*x[2]*log(x[2])+25.84*x[3]*log(x[3])+7*x[4]*log(x[4])-18.32*x[2]*log(3.664*x[2]+5.168*x[3]+1.4*x[4])-25.84*x[3]*log(3.664*x[2]+5.168*x[3]+1.4*x[4])-7*x[4]*log(3.664*x[2]+5.168*x[3]+1.4*x[4])+(4.0643*x[2]+5.7409*x[3]+1.6741*x[4])*log(4.0643*x[2]+5.7409*x[3]+1.6741*x[4])+4.0643*x[2]*log(x[2])+5.7409*x[3]*log(x[3])+1.6741*x[4]*log(x[4])-4.0643*x[2]*log(4.0643*x[2]+3.22644664511275*x[3]+1.44980651607875*x[4])-5.7409*x[3]*log(5.31147575751424*x[2]+5.7409*x[3]+0.00729924451284409*x[4])-1.6741*x[4]*log(2.25846661774355*x[2]+3.70876916588753*x[3]+1.6741*x[4])-30.9714667605344*x[2]*log(x[2])-47.5119875549227*x[3]*log(x[3])-7.98341398488382*x[4]*log(x[4]))+objvar == 0.0)
@constraint(m, e2, x[2]+x[3]+x[4] == 1.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
