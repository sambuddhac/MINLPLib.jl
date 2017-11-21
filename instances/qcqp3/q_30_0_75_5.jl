using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]
@variable(m, x[x_Idx])
setlowerbound(x[4], 0.0)
setlowerbound(x[16], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[27], 0.0)
setlowerbound(x[14], 0.0)
setlowerbound(x[17], 0.0)
setlowerbound(x[3], 0.0)
setlowerbound(x[25], 0.0)
setlowerbound(x[30], 0.0)
setlowerbound(x[26], 0.0)
setlowerbound(x[23], 0.0)
setlowerbound(x[11], 0.0)
setlowerbound(x[29], 0.0)
setlowerbound(x[22], 0.0)
setlowerbound(x[12], 0.0)
setlowerbound(x[5], 0.0)
setlowerbound(x[19], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[20], 0.0)
setlowerbound(x[24], 0.0)
setlowerbound(x[18], 0.0)
setlowerbound(x[9], 0.0)
setlowerbound(x[15], 0.0)
setlowerbound(x[1], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[13], 0.0)
setlowerbound(x[21], 0.0)
setlowerbound(x[28], 0.0)
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
setupperbound(x[21], 1.0)
setupperbound(x[22], 1.0)
setupperbound(x[23], 1.0)
setupperbound(x[24], 1.0)
setupperbound(x[25], 1.0)
setupperbound(x[26], 1.0)
setupperbound(x[27], 1.0)
setupperbound(x[28], 1.0)
setupperbound(x[29], 1.0)
setupperbound(x[30], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.6878*x[1]*x[1]+0.12*x[1]*x[4]-0.8755*x[1]*x[6]-0.2555*x[1]*x[7]-0.5743*x[1]*x[8]-0.5735*x[1]*x[9]-0.6477*x[1]*x[13]+0.0007*x[1]*x[15]+0.0896*x[1]*x[17]+0.1403*x[1]*x[19]+0.0392*x[1]*x[20]-0.9063*x[1]*x[21]-0.3817*x[1]*x[22]+0.8622*x[1]*x[24]+0.0331*x[1]*x[25]-0.1539*x[1]*x[27]-0.684*x[1]*x[28]+0.8427*x[1]*x[29]+0.679*x[1]*x[30]-0.8744*x[2]*x[5]-0.5763*x[2]*x[7]+0.131*x[2]*x[8]+0.7207*x[2]*x[9]+0.2711*x[2]*x[10]+0.901*x[2]*x[11]-0.0142*x[2]*x[12]+0.7093*x[2]*x[15]-0.6987*x[2]*x[18]+0.591*x[2]*x[20]+0.7248*x[2]*x[22]-0.3342*x[2]*x[23]+0.2565*x[2]*x[24]+0.0506*x[2]*x[28]+0.1018*x[2]*x[29]+0.6964*x[3]*x[3]-0.3124*x[3]*x[5]-0.0906*x[3]*x[7]-0.4594*x[3]*x[8]-0.7137*x[3]*x[9]+0.6835*x[3]*x[13]-0.9256*x[3]*x[14]+0.8048*x[3]*x[15]-0.8525*x[3]*x[16]+0.6184*x[3]*x[17]+0.6039*x[3]*x[21]-0.1299*x[3]*x[30]+0.7409*x[4]*x[4]+0.7098*x[4]*x[8]-0.7156*x[4]*x[11]+0.7937*x[4]*x[12]-0.9671*x[4]*x[15]-0.8201*x[4]*x[16]-0.9828*x[4]*x[17]-0.2199*x[4]*x[19]-0.1975*x[4]*x[21]+0.6526*x[4]*x[22]+0.8052*x[4]*x[23]+0.2971*x[4]*x[26]+0.1198*x[4]*x[29]+0.217*x[4]*x[30]+0.0079*x[5]*x[5]-0.3018*x[5]*x[6]+0.9843*x[5]*x[8]-0.9696*x[5]*x[10]+0.8791*x[5]*x[11]-0.9214*x[5]*x[12]-0.6654*x[5]*x[16]+0.8961*x[5]*x[20]+0.7488*x[5]*x[23]-0.816*x[5]*x[24]+0.7283*x[5]*x[27]+0.7735*x[5]*x[28]+0.4313*x[6]*x[9]-0.8995*x[6]*x[10]-0.0242*x[6]*x[12]+0.1137*x[6]*x[13]-0.0807*x[6]*x[14]+0.3716*x[6]*x[16]-0.9041*x[6]*x[22]-0.0494*x[6]*x[24]+0.8577*x[6]*x[25]+0.4838*x[6]*x[28]+0.9976*x[6]*x[29]+0.7792*x[7]*x[7]-0.3619*x[7]*x[10]+0.9372*x[7]*x[14]-0.3207*x[7]*x[17]+0.8329*x[7]*x[19]-0.746*x[7]*x[21]+0.5825*x[7]*x[25]+0.9976*x[7]*x[27]-0.1785*x[7]*x[30]-0.0403*x[8]*x[9]-0.5285*x[8]*x[10]-0.3191*x[8]*x[12]+0.4136*x[8]*x[15]-0.4137*x[8]*x[19]+0.3309*x[8]*x[21]+0.8559*x[8]*x[24]+0.9334*x[8]*x[27]+0.1038*x[8]*x[28]-0.6685*x[8]*x[30]-0.2205*x[9]*x[10]+0.8979*x[9]*x[13]+0.9253*x[9]*x[14]-0.7958*x[9]*x[16]-0.2908*x[9]*x[17]-0.3804*x[9]*x[18]-0.2418*x[9]*x[20]+0.3039*x[9]*x[21]-0.0473*x[9]*x[23]-0.2491*x[9]*x[27]+0.9586*x[9]*x[28]-0.6003*x[10]*x[11]+0.5236*x[10]*x[13]-0.6153*x[10]*x[14]-0.4986*x[10]*x[15]-0.8059*x[10]*x[19]-0.5445*x[10]*x[20]+0.5581*x[10]*x[23]+0.821*x[10]*x[24]+0.9429*x[10]*x[27]-0.5765*x[10]*x[29]-0.3061*x[10]*x[30]+0.7112*x[11]*x[11]-0.9048*x[11]*x[13]+0.6349*x[11]*x[14]+0.5005*x[11]*x[18]-0.3052*x[11]*x[19]-0.7796*x[11]*x[21]-0.2323*x[11]*x[23]-0.1328*x[11]*x[24]+0.6701*x[11]*x[25]+0.6946*x[11]*x[27]+0.4003*x[11]*x[28]-0.6794*x[11]*x[30]+0.695*x[12]*x[12]-0.6787*x[12]*x[13]-0.7436*x[12]*x[16]+0.4042*x[12]*x[17]+0.3019*x[12]*x[18]-0.3193*x[12]*x[19]-0.4433*x[12]*x[21]-0.5216*x[12]*x[22]+0.8652*x[12]*x[23]+0.6401*x[12]*x[24]+0.0653*x[12]*x[25]-0.1219*x[12]*x[26]+0.8175*x[12]*x[30]+0.7173*x[13]*x[14]+0.0579*x[13]*x[15]+0.2197*x[13]*x[16]-0.1751*x[13]*x[18]-0.4539*x[13]*x[21]+0.6875*x[13]*x[22]+0.3553*x[13]*x[25]+0.3546*x[13]*x[27]+0.2915*x[13]*x[28]-0.1419*x[13]*x[30]+0.8974*x[14]*x[15]-0.7709*x[14]*x[16]+0.7025*x[14]*x[17]+0.2871*x[14]*x[19]-0.8686*x[14]*x[21]+0.2948*x[14]*x[23]-0.5289*x[14]*x[26]-0.7476*x[14]*x[27]+0.3785*x[14]*x[28]-0.8182*x[15]*x[15]+0.145*x[15]*x[16]+0.7848*x[15]*x[17]+0.329*x[15]*x[18]+0.4575*x[15]*x[19]+0.2925*x[15]*x[21]+0.6509*x[15]*x[22]-0.5194*x[15]*x[23]-0.5375*x[15]*x[25]-0.8567*x[15]*x[26]-0.7567*x[15]*x[28]+0.0559*x[15]*x[29]-0.5979*x[15]*x[30]-0.5328*x[16]*x[16]+0.4108*x[16]*x[18]-0.9746*x[16]*x[20]-0.8816*x[16]*x[22]-0.6054*x[16]*x[24]+0.8048*x[16]*x[26]-0.4608*x[17]*x[17]-0.5202*x[17]*x[19]-0.0126*x[17]*x[20]+0.4756*x[17]*x[22]-0.1092*x[17]*x[23]+0.3646*x[17]*x[24]-0.604*x[17]*x[26]+0.8765*x[17]*x[27]+0.5905*x[17]*x[28]-0.5705*x[18]*x[22]-0.5678*x[18]*x[23]-0.9959*x[18]*x[25]-0.0773*x[18]*x[28]-0.4033*x[18]*x[30]+0.5307*x[19]*x[19]+0.8639*x[19]*x[21]+0.9249*x[19]*x[25]+0.5844*x[19]*x[26]-0.3302*x[19]*x[29]-0.8971*x[19]*x[30]+0.9343*x[20]*x[20]-0.4812*x[20]*x[21]-0.0224*x[20]*x[22]-0.0381*x[20]*x[24]-0.6702*x[20]*x[28]+0.0765*x[20]*x[29]-0.5192*x[21]*x[23]+0.15*x[21]*x[26]+0.7511*x[21]*x[27]+0.2959*x[21]*x[29]+0.6925*x[22]*x[22]-0.7939*x[22]*x[23]-0.4419*x[23]*x[23]-0.4714*x[23]*x[25]+0.0146*x[23]*x[27]+0.9626*x[23]*x[28]+0.0541*x[23]*x[29]-0.7318*x[24]*x[27]-0.6666*x[24]*x[30]+0.6844*x[25]*x[25]+0.2667*x[25]*x[29]+0.9428*x[25]*x[30]-0.8373*x[26]*x[26]+0.1923*x[26]*x[27]+0.9925*x[26]*x[28]-0.9806*x[26]*x[29]-0.9013*x[26]*x[30]-0.7989*x[27]*x[29]+0.959*x[27]*x[30]+0.6824*x[28]*x[28]-0.0939*x[29]*x[29]+0.9649*x[29]*x[30]+0.887*x[30]*x[30]+0.1799*x[1]-0.3306*x[2]+0.3269*x[3]+0.5563*x[4]+0.0427*x[5]-0.5169*x[6]-0.1694*x[7]-0.8772*x[8]-0.6835*x[9]+0.0361*x[10]-0.4938*x[11]-0.0824*x[12]-0.803*x[13]-0.1227*x[14]+0.3447*x[15]-0.5165*x[16]+0.8204*x[17]-0.0419*x[18]+0.7291*x[19]+0.1793*x[20]-0.2906*x[21]-0.4859*x[22]+0.7745*x[23]+0.5955*x[24]-0.5433*x[25]+0.0963*x[26]+0.9131*x[27]-0.9212*x[28]-0.5989*x[29]+0.3632*x[30])+x[31] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[31])

m = m 		 # model get returned when including this script. 
