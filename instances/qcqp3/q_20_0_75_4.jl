using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21]
@variable(m, x[x_Idx])
setlowerbound(x[4], 0.0)
setlowerbound(x[16], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[14], 0.0)
setlowerbound(x[17], 0.0)
setlowerbound(x[3], 0.0)
setlowerbound(x[11], 0.0)
setlowerbound(x[12], 0.0)
setlowerbound(x[5], 0.0)
setlowerbound(x[19], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[20], 0.0)
setlowerbound(x[18], 0.0)
setlowerbound(x[9], 0.0)
setlowerbound(x[15], 0.0)
setlowerbound(x[1], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[13], 0.0)
setlowerbound(x[10], 0.0)
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
setupperbound(x[11], 1.0)
setupperbound(x[12], 1.0)
setupperbound(x[13], 1.0)
setupperbound(x[14], 1.0)
setupperbound(x[15], 1.0)
setupperbound(x[16], 1.0)
setupperbound(x[17], 1.0)
setupperbound(x[18], 1.0)
setupperbound(x[19], 1.0)
setupperbound(x[20], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.9703*x[1]*x[1]+0.9858*x[1]*x[2]+0.859*x[1]*x[3]+0.0264*x[1]*x[4]-0.8325*x[1]*x[5]-0.2402*x[1]*x[8]+0.9962*x[1]*x[11]-0.612*x[1]*x[13]-0.7468*x[1]*x[15]+0.5066*x[1]*x[16]+0.5209*x[1]*x[17]-0.8096*x[1]*x[19]+0.2097*x[1]*x[20]-0.8223*x[2]*x[4]+0.8219*x[2]*x[8]+0.8915*x[2]*x[9]+0.4384*x[2]*x[11]+0.0104*x[2]*x[13]-0.6145*x[2]*x[14]+0.3569*x[2]*x[16]-0.0835*x[2]*x[18]-0.1778*x[2]*x[20]+0.1688*x[3]*x[7]-0.6302*x[3]*x[8]+0.0573*x[3]*x[10]+0.8851*x[3]*x[11]+0.9515*x[3]*x[13]-0.0604*x[3]*x[15]-0.8915*x[3]*x[16]-0.0968*x[3]*x[17]-0.5954*x[3]*x[18]-0.902*x[3]*x[20]+0.9315*x[4]*x[4]+0.4294*x[4]*x[6]+0.7398*x[4]*x[7]-0.6759*x[4]*x[8]-0.0166*x[4]*x[11]+0.3176*x[4]*x[12]-0.434*x[4]*x[14]-0.8219*x[4]*x[15]-0.9323*x[4]*x[19]-0.2384*x[5]*x[5]+0.2604*x[5]*x[6]+0.4567*x[5]*x[9]+0.7508*x[5]*x[12]+0.1384*x[5]*x[13]-0.5557*x[5]*x[14]-0.2385*x[5]*x[15]+0.0199*x[5]*x[16]+0.7632*x[5]*x[17]-0.9947*x[5]*x[20]-0.3877*x[6]*x[7]+0.8177*x[6]*x[8]-0.3725*x[6]*x[11]-0.3487*x[6]*x[13]-0.8521*x[6]*x[15]+0.7201*x[6]*x[17]-0.9411*x[6]*x[18]-0.6075*x[6]*x[19]+0.4446*x[6]*x[20]-0.6889*x[7]*x[7]+0.5368*x[7]*x[10]+0.9675*x[7]*x[13]-0.1386*x[7]*x[17]-0.4474*x[7]*x[19]-0.8875*x[8]*x[8]-0.7171*x[8]*x[9]-0.2179*x[8]*x[10]-0.317*x[8]*x[14]-0.0332*x[8]*x[15]-0.625*x[8]*x[17]+0.2913*x[8]*x[19]+0.0755*x[8]*x[20]-0.0178*x[9]*x[9]-0.215*x[9]*x[10]-0.7588*x[9]*x[11]+0.2416*x[9]*x[18]-0.1383*x[9]*x[19]+0.2175*x[10]*x[10]-0.5311*x[10]*x[13]-0.6322*x[10]*x[15]-0.8211*x[10]*x[16]-0.2421*x[10]*x[18]-0.9794*x[10]*x[20]+0.6866*x[11]*x[11]+0.144*x[11]*x[13]+0.935*x[11]*x[16]-0.7224*x[11]*x[17]-0.79*x[11]*x[20]-0.6261*x[12]*x[15]-0.59*x[12]*x[16]+0.8708*x[12]*x[18]+0.5423*x[13]*x[17]+0.3356*x[13]*x[19]+0.142*x[13]*x[20]+0.5119*x[14]*x[15]+0.7599*x[14]*x[16]-0.4022*x[14]*x[17]+0.4446*x[14]*x[20]-0.8166*x[15]*x[16]+0.6446*x[15]*x[18]-0.1284*x[16]*x[17]-0.3651*x[16]*x[19]-0.2567*x[17]*x[17]+0.1421*x[17]*x[18]-0.8825*x[17]*x[20]-0.6058*x[18]*x[19]+0.503*x[18]*x[20]-0.0462*x[19]*x[20]-0.717*x[20]*x[20]+0.0253*x[1]-0.9476*x[2]-0.3171*x[3]+0.5691*x[4]-0.3612*x[5]+0.0488*x[6]+0.423*x[7]+0.2762*x[8]+0.0221*x[9]+0.3975*x[10]-0.5281*x[11]-0.722*x[12]-0.1433*x[13]+0.1957*x[14]+0.7882*x[15]+0.9988*x[16]+0.8552*x[17]+0.3681*x[18]-0.6187*x[19]-0.2208*x[20])+x[21] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[21])

m = m 		 # model get returned when including this script. 
