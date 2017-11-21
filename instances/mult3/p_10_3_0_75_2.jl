using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
@variable(m, x[x_Idx])
setlowerbound(x[5], 0.0)
setlowerbound(x[9], 0.0)
setlowerbound(x[1], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[10], 0.0)
setlowerbound(x[3], 0.0)
setupperbound(x[1], 1.0)
setupperbound(x[2], 1.0)
setupperbound(x[3], 1.0)
setupperbound(x[4], 1.0)
setupperbound(x[5], 1.0)
setupperbound(x[6], 1.0)
setupperbound(x[7], 1.0)
setupperbound(x[8], 1.0)
setupperbound(x[9], 1.0)
setupperbound(x[10], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(-0.9275*x[2]^3-0.6457*x[2]^2-0.261*x[2]+0.6694*x[4]^2-0.0695*x[4]+(-0.9931*x[5]^2)-0.827*x[5]+0.6438*x[7]^3+0.304*x[7]^2+0.4796*x[7]+0.593*x[8]^3+0.3498*x[8]^2-0.7576*x[8]+0.4222*x[9]^2-0.3247*x[9]^3-0.2986*x[9]+0.7441*x[1]*x[3]-0.0055*x[1]*x[4]+0.9814*x[1]*x[5]+0.7382*x[1]*x[6]+0.1984*x[1]*x[8]-0.6075*x[2]*x[3]-0.5144*x[2]*x[6]+0.1807*x[2]*x[8]-0.3354*x[2]*x[9]+0.7189*x[2]*x[10]-0.4076*x[3]*x[4]-0.6729*x[3]*x[6]+0.0728*x[3]*x[7]-0.8641*x[3]*x[8]-0.333*x[3]*x[9]+0.4237*x[4]*x[5]+0.7493*x[4]*x[6]-0.7663*x[4]*x[7]+0.1872*x[4]*x[8]+0.8877*x[4]*x[9]-0.2187*x[4]*x[10]+0.843*x[5]*x[6]+0.8211*x[5]*x[7]-0.9132*x[5]*x[8]-0.0444*x[5]*x[9]-0.5043*x[5]*x[10]+0.7113*x[6]*x[7]-0.4917*x[6]*x[8]+0.4934*x[6]*x[9]-0.6579*x[7]*x[8]-0.357*x[7]*x[9]-0.3714*x[7]*x[10]-0.6774*x[9]*x[10]+0.8568*x[1]-0.8792*x[3]+0.5092*x[6]-0.6192*x[10]+0.7216*x[1]^2*x[8]-0.6065*x[2]^2*x[4]+0.034*x[2]^2*x[6]-0.0869*x[2]^2*x[7]-0.3063*x[2]^2*x[8]-0.3017*x[2]^2*x[9]+0.7862*x[3]^2*x[2]-0.5887*x[3]^2*x[4]-0.1993*x[3]^2*x[5]-0.3159*x[3]^2*x[6]+0.2359*x[3]^2*x[7]+0.8058*x[3]^2*x[9]-0.6664*x[3]^2*x[10]-0.4125*x[4]^2*x[1]+0.397*x[4]^2*x[5]+0.466*x[4]^2*x[8]+0.1484*x[4]^2*x[10]-0.8383*x[5]^2*x[1]+0.2733*x[5]^2*x[3]+0.6063*x[5]^2*x[6]+0.2066*x[5]^2*x[7]+0.5678*x[5]^2*x[8]+0.4211*x[5]^2*x[9]+0.8319*x[5]^2*x[10]-0.2386*x[6]^2*x[2]+0.3765*x[6]^2*x[3]-0.4146*x[6]^2*x[4]+0.6154*x[6]^2*x[7]+0.6526*x[6]^2*x[8]-0.7699*x[6]^2*x[9]+0.477*x[6]^2*x[10]-0.3177*x[7]^2*x[1]-0.6117*x[7]^2*x[2]-0.3875*x[7]^2*x[3]+0.6146*x[7]^2*x[4]-0.5689*x[7]^2*x[5]+0.1405*x[7]^2*x[6]+0.3274*x[7]^2*x[8]+0.0091*x[7]^2*x[9]-0.6663*x[8]^2*x[1]-0.1375*x[8]^2*x[2]-0.9033*x[8]^2*x[4]-0.2467*x[8]^2*x[5]+0.8512*x[8]^2*x[6]+0.9152*x[8]^2*x[7]+0.1767*x[8]^2*x[9]-0.8174*x[8]^2*x[10]+0.9875*x[9]^2*x[2]-0.9624*x[9]^2*x[3]+0.0963*x[9]^2*x[4]-0.8482*x[9]^2*x[5]+0.3674*x[9]^2*x[6]-0.2681*x[9]^2*x[10]-0.7344*x[10]^2*x[5]+0.6027*x[10]^2*x[7]+0.8133*x[10]^2*x[8]+0.7007*x[10]^2*x[9]+0.9786*x[1]*x[2]*x[4]-0.6238*x[1]*x[2]*x[3]-0.15*x[1]*x[2]*x[5]-0.8432*x[1]*x[2]*x[7]-0.469*x[1]*x[2]*x[8]+0.8536*x[1]*x[2]*x[9]-0.5176*x[1]*x[3]*x[4]+0.5096*x[1]*x[3]*x[5]-0.8928*x[1]*x[3]*x[8]-0.6245*x[1]*x[3]*x[9]-0.6526*x[1]*x[4]*x[5]-0.1588*x[1]*x[4]*x[6]-0.7787*x[1]*x[4]*x[7]+0.0611*x[1]*x[4]*x[8]-0.4752*x[1]*x[4]*x[9]-0.8299*x[1]*x[5]*x[6]+0.7921*x[1]*x[5]*x[7]+0.3404*x[1]*x[5]*x[8]+0.7583*x[1]*x[5]*x[10]-0.3901*x[1]*x[6]*x[7]-0.9064*x[1]*x[6]*x[9]-0.322*x[1]*x[6]*x[10]+0.4683*x[1]*x[7]*x[8]+0.7634*x[1]*x[7]*x[9]-0.1077*x[1]*x[7]*x[10]-0.7219*x[1]*x[8]*x[9]-0.7938*x[1]*x[8]*x[10]-0.4268*x[1]*x[9]*x[10]-0.4449*x[2]*x[3]*x[5]-0.8637*x[2]*x[3]*x[6]-0.7161*x[2]*x[3]*x[7]-0.0524*x[2]*x[3]*x[8]+0.1383*x[2]*x[3]*x[9]-0.4614*x[2]*x[4]*x[5]-0.3641*x[2]*x[4]*x[6]+0.1524*x[2]*x[4]*x[7]+0.1227*x[2]*x[4]*x[8]-0.4182*x[2]*x[4]*x[9]-0.8197*x[2]*x[4]*x[10]-0.9422*x[2]*x[5]*x[6]+0.342*x[2]*x[5]*x[7]-0.5112*x[2]*x[5]*x[8]+0.4518*x[2]*x[5]*x[9]-0.3506*x[2]*x[5]*x[10]+0.7656*x[2]*x[6]*x[7]-0.8001*x[2]*x[6]*x[8]+0.8133*x[2]*x[6]*x[9]+0.5881*x[2]*x[6]*x[10]-0.3577*x[2]*x[7]*x[8]-0.6599*x[2]*x[7]*x[9]+0.3956*x[2]*x[7]*x[10]-0.2458*x[2]*x[8]*x[9]-0.7955*x[2]*x[8]*x[10]+0.5193*x[2]*x[9]*x[10]-0.8797*x[3]*x[4]*x[5]-0.6057*x[3]*x[4]*x[6]+0.3103*x[3]*x[4]*x[7]+0.6495*x[3]*x[4]*x[8]+0.6319*x[3]*x[4]*x[9]-0.113*x[3]*x[4]*x[10]-0.6678*x[3]*x[5]*x[6]-0.916*x[3]*x[5]*x[7]+0.1593*x[3]*x[5]*x[8]+0.2146*x[3]*x[5]*x[9]+0.3126*x[3]*x[5]*x[10]-0.1711*x[3]*x[6]*x[7]+0.8161*x[3]*x[6]*x[8]+0.8105*x[3]*x[6]*x[9]+0.1448*x[3]*x[7]*x[8]+0.2499*x[3]*x[7]*x[9]-0.1853*x[3]*x[7]*x[10]+0.1703*x[3]*x[8]*x[9]+0.2522*x[4]*x[5]*x[6]-0.0586*x[4]*x[5]*x[8]-0.5897*x[4]*x[5]*x[9]+0.994*x[4]*x[5]*x[10]+0.2026*x[4]*x[6]*x[7]-0.931*x[4]*x[6]*x[8]-0.7816*x[4]*x[6]*x[9]-0.776*x[4]*x[6]*x[10]-0.7367*x[4]*x[7]*x[8]-0.3819*x[4]*x[7]*x[9]-0.4612*x[4]*x[7]*x[10]+0.4764*x[4]*x[8]*x[9]+0.1032*x[4]*x[8]*x[10]-0.3715*x[4]*x[9]*x[10]-0.2767*x[5]*x[6]*x[7]-0.3364*x[5]*x[6]*x[8]-0.6013*x[5]*x[6]*x[9]-0.2744*x[5]*x[6]*x[10]+0.6818*x[5]*x[7]*x[8]+0.5314*x[5]*x[7]*x[9]+0.4154*x[5]*x[7]*x[10]-0.0369*x[5]*x[8]*x[9]+0.6635*x[5]*x[8]*x[10]+0.4333*x[5]*x[9]*x[10]+0.1079*x[6]*x[7]*x[8]-0.8881*x[6]*x[7]*x[9]-0.3941*x[6]*x[7]*x[10]-0.7642*x[6]*x[8]*x[9]+0.1998*x[6]*x[8]*x[10]-0.6056*x[6]*x[9]*x[10]+0.0008*x[7]*x[8]*x[9]-0.8453*x[7]*x[9]*x[10])+x[11] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[11])

m = m 		 # model get returned when including this script. 
