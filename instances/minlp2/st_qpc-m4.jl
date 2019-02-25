using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
@variable(m, x[x_Idx])
set_lower_bound(x[5], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[3], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, 20*x[1]+20*x[2]+60*x[3]+60*x[4]+60*x[5]+60*x[6]+5*x[7]+45*x[8]+55*x[9]+65*x[10] <= 600.1)
@constraint(m, e2, 5*x[1]+7*x[2]+3*x[3]+8*x[4]+13*x[5]+13*x[6]+2*x[7]+14*x[8]+14*x[9]+14*x[10] <= 310.5)
@constraint(m, e3, 100*x[1]+130*x[2]+50*x[3]+70*x[4]+70*x[5]+70*x[6]+20*x[7]+80*x[8]+80*x[9]+80*x[10] <= 1800.0)
@constraint(m, e4, 200*x[1]+280*x[2]+100*x[3]+200*x[4]+250*x[5]+280*x[6]+100*x[7]+180*x[8]+200*x[9]+220*x[10] <= 3850.0)
@constraint(m, e5, 2*x[1]+2*x[2]+4*x[3]+4*x[4]+4*x[5]+4*x[6]+2*x[7]+6*x[8]+6*x[9]+6*x[10] <= 18.6)
@constraint(m, e6, 4*x[1]+8*x[2]+2*x[3]+6*x[4]+10*x[5]+10*x[6]+5*x[7]+10*x[8]+10*x[9]+10*x[10] <= 198.7)
@constraint(m, e7, 60*x[1]+110*x[2]+20*x[3]+40*x[4]+60*x[5]+70*x[6]+10*x[7]+40*x[8]+50*x[9]+50*x[10] <= 882.0)
@constraint(m, e8, 150*x[1]+210*x[2]+40*x[3]+70*x[4]+90*x[5]+105*x[6]+60*x[7]+100*x[8]+140*x[9]+180*x[10] <= 4200.0)
@constraint(m, e9, 80*x[1]+100*x[2]+6*x[3]+16*x[4]+20*x[5]+22*x[6]+20*x[8]+30*x[9]+30*x[10] <= 40.25)
@constraint(m, e10, 40*x[1]+40*x[2]+12*x[3]+20*x[4]+24*x[5]+28*x[6]+40*x[9]+50*x[10] <= 327.0)
@NLconstraint(m, e11, -(10*x[1]-0.06*x[1]*x[1]-0.047*x[1]*x[2]+10*x[2]-0.047*x[1]*x[3]+10*x[3]+0.01*x[1]*x[4]+10*x[4]-0.01*x[1]*x[5]+10*x[5]-0.018*x[1]*x[6]+10*x[6]-0.026*x[1]*x[7]+10*x[7]+0.018*x[1]*x[8]+10*x[8]-0.05*x[1]*x[10]+10*x[10]-0.047*x[2]*x[1]-0.11*x[2]*x[2]-0.024*x[2]*x[3]+0.025*x[2]*x[4]-0.038*x[2]*x[5]-0.05*x[2]*x[6]-0.05*x[2]*x[7]-0.017*x[2]*x[8]+0.005*x[2]*x[9]+10*x[9]-0.039*x[2]*x[10]-0.047*x[3]*x[1]-0.024*x[3]*x[2]-0.11*x[3]*x[3]+0.009*x[3]*x[4]-0.026*x[3]*x[5]-0.034*x[3]*x[6]-0.066*x[3]*x[7]+0.014*x[3]*x[8]-0.005*x[3]*x[9]-0.085*x[3]*x[10]+0.01*x[4]*x[1]+0.025*x[4]*x[2]+0.009*x[4]*x[3]-0.068*x[4]*x[4]+0.023*x[4]*x[5]+0.011*x[4]*x[6]+0.014*x[4]*x[7]-0.017*x[4]*x[8]-0.077*x[4]*x[9]-0.017*x[4]*x[10]-0.01*x[5]*x[1]-0.038*x[5]*x[2]-0.026*x[5]*x[3]+0.023*x[5]*x[4]-0.12*x[5]*x[5]-0.083*x[5]*x[6]-0.022*x[5]*x[7]-0.017*x[5]*x[8]+0.003*x[5]*x[9]+0.034*x[5]*x[10]-0.018*x[6]*x[1]-0.05*x[6]*x[2]-0.034*x[6]*x[3]+0.011*x[6]*x[4]-0.083*x[6]*x[5]-0.115*x[6]*x[6]-0.051*x[6]*x[7]-0.015*x[6]*x[8]-0.022*x[6]*x[9]+0.012*x[6]*x[10]-0.026*x[7]*x[1]-0.05*x[7]*x[2]-0.066*x[7]*x[3]+0.014*x[7]*x[4]-0.022*x[7]*x[5]-0.051*x[7]*x[6]-0.157*x[7]*x[7]-0.012*x[7]*x[8]-0.019*x[7]*x[9]-0.057*x[7]*x[10]+0.018*x[8]*x[1]-0.017*x[8]*x[2]+0.014*x[8]*x[3]-0.017*x[8]*x[4]-0.017*x[8]*x[5]-0.015*x[8]*x[6]-0.012*x[8]*x[7]-0.033*x[8]*x[8]-0.022*x[8]*x[9]+0.006*x[8]*x[10]+0.005*x[9]*x[2]-0.005*x[9]*x[3]-0.077*x[9]*x[4]+0.003*x[9]*x[5]-0.022*x[9]*x[6]-0.019*x[9]*x[7]-0.022*x[9]*x[8]-0.11*x[9]*x[9]-0.009*x[9]*x[10]-0.05*x[10]*x[1]-0.039*x[10]*x[2]-0.085*x[10]*x[3]-0.017*x[10]*x[4]+0.034*x[10]*x[5]+0.012*x[10]*x[6]-0.057*x[10]*x[7]+0.006*x[10]*x[8]-0.009*x[10]*x[9]-0.226*x[10]*x[10])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.