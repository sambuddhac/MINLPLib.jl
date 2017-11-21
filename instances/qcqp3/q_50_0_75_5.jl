using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51]
@variable(m, x[x_Idx])
setlowerbound(x[16], 0.0)
setlowerbound(x[14], 0.0)
setlowerbound(x[38], 0.0)
setlowerbound(x[42], 0.0)
setlowerbound(x[22], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[9], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[43], 0.0)
setlowerbound(x[36], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[32], 0.0)
setlowerbound(x[27], 0.0)
setlowerbound(x[3], 0.0)
setlowerbound(x[25], 0.0)
setlowerbound(x[30], 0.0)
setlowerbound(x[11], 0.0)
setlowerbound(x[29], 0.0)
setlowerbound(x[5], 0.0)
setlowerbound(x[37], 0.0)
setlowerbound(x[24], 0.0)
setlowerbound(x[41], 0.0)
setlowerbound(x[18], 0.0)
setlowerbound(x[1], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[13], 0.0)
setlowerbound(x[49], 0.0)
setlowerbound(x[21], 0.0)
setlowerbound(x[10], 0.0)
setlowerbound(x[26], 0.0)
setlowerbound(x[45], 0.0)
setlowerbound(x[12], 0.0)
setlowerbound(x[40], 0.0)
setlowerbound(x[44], 0.0)
setlowerbound(x[50], 0.0)
setlowerbound(x[31], 0.0)
setlowerbound(x[33], 0.0)
setlowerbound(x[47], 0.0)
setlowerbound(x[28], 0.0)
setlowerbound(x[35], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[17], 0.0)
setlowerbound(x[23], 0.0)
setlowerbound(x[34], 0.0)
setlowerbound(x[46], 0.0)
setlowerbound(x[19], 0.0)
setlowerbound(x[48], 0.0)
setlowerbound(x[20], 0.0)
setlowerbound(x[39], 0.0)
setlowerbound(x[15], 0.0)
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
setupperbound(x[31], 1.0)
setupperbound(x[32], 1.0)
setupperbound(x[33], 1.0)
setupperbound(x[34], 1.0)
setupperbound(x[35], 1.0)
setupperbound(x[36], 1.0)
setupperbound(x[37], 1.0)
setupperbound(x[38], 1.0)
setupperbound(x[39], 1.0)
setupperbound(x[40], 1.0)
setupperbound(x[41], 1.0)
setupperbound(x[42], 1.0)
setupperbound(x[43], 1.0)
setupperbound(x[44], 1.0)
setupperbound(x[45], 1.0)
setupperbound(x[46], 1.0)
setupperbound(x[47], 1.0)
setupperbound(x[48], 1.0)
setupperbound(x[49], 1.0)
setupperbound(x[50], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(-0.0524*x[1]*x[1]-0.3206*x[1]*x[5]-0.4081*x[1]*x[6]+0.9513*x[1]*x[7]+0.7632*x[1]*x[9]-0.3629*x[1]*x[10]+0.496*x[1]*x[12]+0.6856*x[1]*x[15]+0.2743*x[1]*x[16]+0.5467*x[1]*x[18]+0.9104*x[1]*x[20]-0.2424*x[1]*x[21]+0.7695*x[1]*x[22]-0.4518*x[1]*x[23]+0.2658*x[1]*x[24]-0.7137*x[1]*x[26]-0.2917*x[1]*x[27]-0.8266*x[1]*x[28]-0.2051*x[1]*x[29]+0.011*x[1]*x[30]+0.9451*x[1]*x[31]+0.0556*x[1]*x[33]-0.4301*x[1]*x[34]-0.0284*x[1]*x[35]-0.9861*x[1]*x[36]-0.9309*x[1]*x[37]-0.3811*x[1]*x[38]-0.7245*x[1]*x[39]-0.4963*x[1]*x[42]+0.8912*x[1]*x[44]+0.7631*x[1]*x[46]+0.7902*x[1]*x[47]-0.6818*x[1]*x[48]+0.276*x[1]*x[49]-0.7009*x[1]*x[50]+0.433*x[2]*x[2]-0.1963*x[2]*x[3]-0.895*x[2]*x[7]+0.4326*x[2]*x[10]-0.5557*x[2]*x[13]-0.9291*x[2]*x[14]+0.1746*x[2]*x[15]-0.5153*x[2]*x[16]-0.1046*x[2]*x[19]-0.4605*x[2]*x[20]+0.2194*x[2]*x[21]+0.1701*x[2]*x[22]-0.5308*x[2]*x[29]+0.6269*x[2]*x[30]-0.0502*x[2]*x[31]-0.8864*x[2]*x[32]-0.2146*x[2]*x[33]-0.9408*x[2]*x[34]+0.7589*x[2]*x[37]+0.968*x[2]*x[38]-0.7075*x[2]*x[39]+0.625*x[2]*x[40]-0.4637*x[2]*x[46]+0.118*x[2]*x[48]+0.7119*x[2]*x[50]+0.8647*x[3]*x[3]-0.0852*x[3]*x[9]+0.1836*x[3]*x[11]-0.0694*x[3]*x[15]-0.8141*x[3]*x[16]+0.2591*x[3]*x[18]-0.0808*x[3]*x[24]-0.0045*x[3]*x[28]+0.4826*x[3]*x[32]+0.3111*x[3]*x[33]-0.9509*x[3]*x[34]-0.0438*x[3]*x[35]+0.8331*x[3]*x[37]-0.9889*x[3]*x[38]+0.9126*x[3]*x[41]+0.6761*x[3]*x[43]+0.2671*x[3]*x[45]-0.7506*x[3]*x[46]-0.8292*x[3]*x[47]+0.2607*x[3]*x[49]-0.4902*x[4]*x[4]+0.524*x[4]*x[5]-0.5517*x[4]*x[7]-0.8026*x[4]*x[8]-0.8154*x[4]*x[12]+0.9087*x[4]*x[14]-0.0154*x[4]*x[17]-0.2893*x[4]*x[20]+0.3063*x[4]*x[21]+0.8629*x[4]*x[22]+0.9207*x[4]*x[23]+0.0005*x[4]*x[24]+0.3409*x[4]*x[25]-0.4837*x[4]*x[26]+0.6091*x[4]*x[30]+0.1442*x[4]*x[32]+0.5282*x[4]*x[34]+0.8207*x[4]*x[40]-0.0278*x[4]*x[45]-0.8686*x[4]*x[46]-0.0206*x[4]*x[48]+0.6724*x[4]*x[49]+0.6373*x[4]*x[50]+0.2669*x[5]*x[6]+0.6286*x[5]*x[8]+0.124*x[5]*x[10]-0.2017*x[5]*x[12]-0.9937*x[5]*x[13]+0.6273*x[5]*x[14]-0.453*x[5]*x[15]-0.3084*x[5]*x[16]+0.4526*x[5]*x[18]-0.9071*x[5]*x[21]-0.7743*x[5]*x[25]+0.5958*x[5]*x[27]-0.621*x[5]*x[31]+0.0218*x[5]*x[32]+0.0857*x[5]*x[33]-0.5649*x[5]*x[34]-0.1723*x[5]*x[35]+0.503*x[5]*x[37]-0.2249*x[5]*x[38]-0.5367*x[5]*x[39]+0.0748*x[5]*x[40]+0.2134*x[5]*x[41]+0.5769*x[5]*x[42]+0.7081*x[5]*x[43]-0.7169*x[5]*x[46]+0.3156*x[5]*x[48]-0.5824*x[5]*x[49]+0.7025*x[5]*x[50]-0.3368*x[6]*x[6]+0.6524*x[6]*x[9]+0.8659*x[6]*x[11]-0.164*x[6]*x[12]-0.6978*x[6]*x[13]-0.5811*x[6]*x[16]-0.8959*x[6]*x[17]-0.2712*x[6]*x[20]+0.5164*x[6]*x[21]-0.4987*x[6]*x[22]+0.5685*x[6]*x[23]+0.8459*x[6]*x[25]-0.4939*x[6]*x[27]+0.7103*x[6]*x[35]-0.1494*x[6]*x[37]+0.2988*x[6]*x[38]-0.3184*x[6]*x[39]+0.2382*x[6]*x[42]+0.1255*x[6]*x[43]-0.4368*x[6]*x[44]+0.088*x[6]*x[47]-0.0375*x[6]*x[49]+0.1367*x[6]*x[50]-0.4245*x[7]*x[7]-0.8563*x[7]*x[8]+0.9734*x[7]*x[13]-0.8621*x[7]*x[14]+0.8093*x[7]*x[16]-0.4073*x[7]*x[18]-0.4602*x[7]*x[20]-0.3231*x[7]*x[22]+0.6664*x[7]*x[24]-0.2386*x[7]*x[25]+0.0139*x[7]*x[29]+0.2215*x[7]*x[31]-0.5233*x[7]*x[32]+0.2472*x[7]*x[34]+0.3995*x[7]*x[35]-0.8717*x[7]*x[40]-0.9085*x[7]*x[41]-0.3246*x[7]*x[43]+0.1355*x[7]*x[44]-0.0199*x[7]*x[45]+0.5916*x[7]*x[47]+0.7127*x[7]*x[48]-0.4791*x[7]*x[49]-0.4204*x[7]*x[50]-0.7198*x[8]*x[8]-0.6757*x[8]*x[9]-0.9703*x[8]*x[16]+0.2443*x[8]*x[18]-0.4939*x[8]*x[21]-0.0778*x[8]*x[22]-0.2829*x[8]*x[23]-0.407*x[8]*x[24]-0.2477*x[8]*x[29]+0.4317*x[8]*x[30]+0.052*x[8]*x[35]-0.0273*x[8]*x[36]+0.0506*x[8]*x[37]-0.6998*x[8]*x[38]-0.9529*x[8]*x[39]+0.6391*x[8]*x[42]-0.1489*x[8]*x[46]-0.8308*x[8]*x[48]-0.53*x[8]*x[50]+0.1918*x[9]*x[9]+0.3782*x[9]*x[10]-0.1127*x[9]*x[12]+0.354*x[9]*x[13]+0.5206*x[9]*x[16]-0.042*x[9]*x[17]-0.6198*x[9]*x[19]-0.0492*x[9]*x[20]+0.6468*x[9]*x[23]+0.3709*x[9]*x[25]-0.8268*x[9]*x[33]-0.4821*x[9]*x[36]-0.7807*x[9]*x[38]-0.3713*x[9]*x[41]+0.0604*x[9]*x[43]+0.9704*x[9]*x[45]+0.1843*x[9]*x[46]-0.3095*x[9]*x[47]-0.765*x[9]*x[50]+0.9518*x[10]*x[12]+0.2792*x[10]*x[15]-0.6821*x[10]*x[17]-0.3791*x[10]*x[20]-0.4062*x[10]*x[22]-0.6487*x[10]*x[27]-0.9836*x[10]*x[28]-0.1921*x[10]*x[31]+0.968*x[10]*x[35]-0.1585*x[10]*x[37]-0.8286*x[10]*x[39]+0.5816*x[10]*x[41]-0.1829*x[10]*x[43]+0.6463*x[10]*x[44]+0.3055*x[10]*x[47]-0.6676*x[10]*x[49]-0.1825*x[11]*x[11]+0.7282*x[11]*x[13]-0.5633*x[11]*x[14]-0.5932*x[11]*x[18]+0.6161*x[11]*x[20]-0.6343*x[11]*x[21]-0.2291*x[11]*x[23]-0.8374*x[11]*x[24]+0.6608*x[11]*x[25]-0.9097*x[11]*x[27]-0.1062*x[11]*x[28]-0.0531*x[11]*x[29]+0.9966*x[11]*x[33]+0.7738*x[11]*x[37]+0.5904*x[11]*x[38]-0.4976*x[11]*x[39]+0.5721*x[11]*x[40]-0.5966*x[11]*x[41]+0.0351*x[11]*x[46]-0.8165*x[11]*x[47]-0.0222*x[11]*x[48]+0.6176*x[11]*x[50]+0.9438*x[12]*x[12]-0.6294*x[12]*x[13]-0.4625*x[12]*x[14]+0.0536*x[12]*x[15]-0.6703*x[12]*x[18]+0.062*x[12]*x[21]-0.1433*x[12]*x[23]+0.858*x[12]*x[24]-0.804*x[12]*x[27]-0.5498*x[12]*x[30]+0.2771*x[12]*x[34]+0.6919*x[12]*x[35]-0.3703*x[12]*x[37]-0.6204*x[12]*x[40]-0.6157*x[12]*x[43]+0.6548*x[12]*x[47]+0.7881*x[12]*x[50]-0.7012*x[13]*x[13]-0.453*x[13]*x[15]-0.1232*x[13]*x[16]+0.3443*x[13]*x[17]-0.926*x[13]*x[20]+0.4969*x[13]*x[21]+0.1144*x[13]*x[22]+0.303*x[13]*x[23]+0.8679*x[13]*x[25]+0.6769*x[13]*x[26]-0.6493*x[13]*x[28]+0.7552*x[13]*x[29]-0.5867*x[13]*x[32]-0.4035*x[13]*x[34]+0.5792*x[13]*x[36]+0.9074*x[13]*x[39]+0.3403*x[13]*x[40]-0.9333*x[13]*x[41]-0.8465*x[13]*x[42]+0.5218*x[13]*x[43]+0.6738*x[13]*x[45]+0.2035*x[13]*x[47]+0.8305*x[13]*x[48]-0.9381*x[13]*x[49]+0.6407*x[13]*x[50]-0.826*x[14]*x[14]-0.6822*x[14]*x[19]-0.7783*x[14]*x[20]+0.6483*x[14]*x[24]+0.9052*x[14]*x[27]+0.1071*x[14]*x[29]+0.1744*x[14]*x[30]+0.6007*x[14]*x[31]-0.0371*x[14]*x[32]+0.209*x[14]*x[33]-0.0702*x[14]*x[34]-0.5565*x[14]*x[35]+0.0438*x[14]*x[36]+0.698*x[14]*x[37]-0.1691*x[14]*x[38]-0.6621*x[14]*x[39]+0.8857*x[14]*x[41]-0.8967*x[14]*x[43]-0.3226*x[14]*x[46]+0.4817*x[14]*x[49]-0.4088*x[14]*x[50]-0.4914*x[15]*x[18]+0.5242*x[15]*x[20]+0.9042*x[15]*x[21]+0.4449*x[15]*x[26]-0.3207*x[15]*x[27]-0.2096*x[15]*x[28]+0.1785*x[15]*x[29]+0.1262*x[15]*x[31]+0.2976*x[15]*x[32]+0.8131*x[15]*x[34]+0.4093*x[15]*x[35]-0.5595*x[15]*x[38]-0.0208*x[15]*x[41]-0.2354*x[15]*x[43]-0.6075*x[16]*x[19]-0.7696*x[16]*x[20]-0.0033*x[16]*x[25]+0.1446*x[16]*x[28]+0.5616*x[16]*x[30]+0.3809*x[16]*x[31]-0.5911*x[16]*x[32]+0.9723*x[16]*x[33]+0.2234*x[16]*x[34]-0.551*x[16]*x[35]-0.201*x[16]*x[36]+0.6861*x[16]*x[39]-0.6097*x[16]*x[41]-0.8716*x[16]*x[42]-0.2965*x[16]*x[43]+0.3045*x[16]*x[45]+0.632*x[16]*x[48]-0.7165*x[16]*x[49]+0.3217*x[17]*x[19]+0.8843*x[17]*x[21]-0.146*x[17]*x[22]-0.1416*x[17]*x[25]+0.4939*x[17]*x[27]+0.7545*x[17]*x[30]+0.983*x[17]*x[32]-0.6859*x[17]*x[33]-0.6492*x[17]*x[38]-0.1176*x[17]*x[41]+0.9923*x[17]*x[43]-0.2918*x[17]*x[44]-0.894*x[17]*x[45]+0.7101*x[17]*x[47]+0.6846*x[17]*x[48]-0.8776*x[17]*x[49]-0.9066*x[18]*x[18]+0.7102*x[18]*x[19]-0.2757*x[18]*x[20]+0.6376*x[18]*x[21]+0.2246*x[18]*x[23]-0.4442*x[18]*x[25]-0.1784*x[18]*x[26]-0.7903*x[18]*x[27]-0.9445*x[18]*x[28]+0.8812*x[18]*x[29]+0.2564*x[18]*x[30]+0.1217*x[18]*x[31]+0.7155*x[18]*x[33]+0.1192*x[18]*x[37]+0.1011*x[18]*x[38]-0.2258*x[18]*x[44]+0.7605*x[18]*x[46]-0.4601*x[19]*x[20]-0.8841*x[19]*x[23]+0.861*x[19]*x[25]+0.1147*x[19]*x[26]+0.0784*x[19]*x[27]-0.9707*x[19]*x[28]+0.9061*x[19]*x[29]+0.0734*x[19]*x[32]-0.1007*x[19]*x[34]+0.3204*x[19]*x[37]+0.5865*x[19]*x[38]-0.4916*x[19]*x[42]-0.5852*x[19]*x[43]-0.5494*x[19]*x[44]-0.8149*x[19]*x[45]+0.0646*x[19]*x[47]-0.294*x[19]*x[48]+0.6973*x[20]*x[20]-0.6926*x[20]*x[23]-0.1151*x[20]*x[24]-0.2316*x[20]*x[26]+0.4641*x[20]*x[27]+0.3214*x[20]*x[28]+0.9931*x[20]*x[31]+0.8717*x[20]*x[32]-0.6051*x[20]*x[34]-0.8968*x[20]*x[38]+0.9954*x[20]*x[39]-0.5149*x[20]*x[41]-0.2066*x[20]*x[42]-0.2391*x[20]*x[44]-0.7244*x[20]*x[46]+0.8272*x[20]*x[47]-0.8884*x[20]*x[48]-0.5358*x[20]*x[49]-0.5678*x[20]*x[50]+0.3678*x[21]*x[21]+0.7927*x[21]*x[24]-0.996*x[21]*x[28]-0.946*x[21]*x[30]-0.0819*x[21]*x[31]+0.7359*x[21]*x[36]+0.5235*x[21]*x[38]+0.1235*x[21]*x[41]+0.071*x[21]*x[43]+0.9203*x[21]*x[45]+0.0388*x[21]*x[46]+0.6668*x[21]*x[48]+0.2693*x[21]*x[49]-0.9817*x[21]*x[50]+0.5009*x[22]*x[22]+0.0124*x[22]*x[25]-0.4002*x[22]*x[27]+0.2224*x[22]*x[30]-0.2526*x[22]*x[31]-0.7454*x[22]*x[32]+0.8836*x[22]*x[33]+0.054*x[22]*x[34]-0.6616*x[22]*x[36]-0.8029*x[22]*x[41]+0.1525*x[22]*x[42]-0.5998*x[22]*x[45]+0.3651*x[22]*x[46]+0.9605*x[22]*x[47]+0.2717*x[22]*x[48]-0.1673*x[22]*x[50]-0.574*x[23]*x[23]+0.5027*x[23]*x[26]-0.8424*x[23]*x[29]-0.8294*x[23]*x[32]-0.6681*x[23]*x[33]+0.3276*x[23]*x[34]+0.3845*x[23]*x[37]-0.852*x[23]*x[39]+0.2621*x[23]*x[40]+0.0384*x[23]*x[48]-0.0962*x[23]*x[50]-0.8212*x[24]*x[26]-0.5029*x[24]*x[31]-0.8805*x[24]*x[39]-0.5235*x[24]*x[43]-0.7438*x[24]*x[45]+0.4789*x[24]*x[46]+0.7083*x[24]*x[48]+0.4194*x[24]*x[49]+0.4551*x[25]*x[25]-0.8269*x[25]*x[27]+0.4994*x[25]*x[28]-0.6056*x[25]*x[32]-0.6457*x[25]*x[33]+0.401*x[25]*x[35]-0.415*x[25]*x[36]-0.0384*x[25]*x[37]-0.1936*x[25]*x[38]-0.0707*x[25]*x[40]-0.4995*x[25]*x[41]+0.962*x[25]*x[42]+0.0669*x[25]*x[49]-0.5885*x[25]*x[50]-0.2856*x[26]*x[28]-0.0873*x[26]*x[32]-0.3957*x[26]*x[34]-0.695*x[26]*x[35]-0.5271*x[26]*x[40]-0.2139*x[26]*x[42]-0.9539*x[26]*x[48]+0.7634*x[26]*x[49]+0.1537*x[26]*x[50]-0.4542*x[27]*x[27]-0.2666*x[27]*x[28]+0.6941*x[27]*x[32]-0.1358*x[27]*x[36]-0.7229*x[27]*x[37]-0.3569*x[27]*x[38]-0.9767*x[27]*x[41]+0.3992*x[27]*x[42]-0.4011*x[27]*x[44]-0.3222*x[27]*x[48]-0.0625*x[27]*x[49]+0.773*x[28]*x[28]+0.3151*x[28]*x[29]-0.0409*x[28]*x[31]-0.7195*x[28]*x[33]+0.3423*x[28]*x[37]-0.0968*x[28]*x[43]+0.6781*x[28]*x[45]-0.5311*x[28]*x[48]-0.7845*x[28]*x[50]+0.1687*x[29]*x[29]+0.2373*x[29]*x[31]+0.6024*x[29]*x[32]+0.0155*x[29]*x[34]+0.6832*x[29]*x[35]+0.3377*x[29]*x[37]+0.7672*x[29]*x[39]+0.0168*x[29]*x[42]-0.9499*x[29]*x[43]-0.0289*x[29]*x[44]+0.9092*x[29]*x[45]+0.8526*x[29]*x[46]+0.2862*x[29]*x[48]-0.2752*x[29]*x[50]-0.7771*x[30]*x[36]+0.9557*x[30]*x[37]-0.395*x[30]*x[38]+0.3127*x[30]*x[39]-0.5979*x[30]*x[41]+0.7827*x[30]*x[42]-0.398*x[30]*x[46]+0.7632*x[30]*x[50]-0.3461*x[31]*x[31]-0.7869*x[31]*x[33]-0.259*x[31]*x[34]+0.7411*x[31]*x[35]+0.8907*x[31]*x[36]+0.5263*x[31]*x[37]-0.1836*x[31]*x[42]-0.442*x[31]*x[45]+0.6246*x[31]*x[48]-0.93*x[31]*x[49]+0.5158*x[31]*x[50]-0.2196*x[32]*x[34]-0.1741*x[32]*x[36]+0.8482*x[32]*x[37]+0.8294*x[32]*x[38]-0.1664*x[32]*x[39]+0.9476*x[32]*x[41]-0.0249*x[32]*x[43]+0.0677*x[32]*x[47]-0.4078*x[32]*x[50]-0.6468*x[33]*x[33]+0.7251*x[33]*x[37]-0.946*x[33]*x[39]-0.8003*x[33]*x[40]-0.0038*x[33]*x[46]-0.1204*x[33]*x[50]-0.3322*x[34]*x[36]-0.0635*x[34]*x[37]+0.1871*x[34]*x[39]+0.9962*x[34]*x[44]+0.1289*x[34]*x[48]+0.4238*x[34]*x[50]-0.8954*x[35]*x[35]-0.3568*x[35]*x[37]-0.1045*x[35]*x[38]+0.6895*x[35]*x[41]-0.7142*x[35]*x[42]+0.6035*x[35]*x[43]+0.3783*x[35]*x[44]+0.2938*x[35]*x[47]+0.8709*x[35]*x[48]+0.127*x[35]*x[50]-0.5072*x[36]*x[36]+0.3465*x[36]*x[37]+0.5621*x[36]*x[38]+0.8341*x[36]*x[44]+0.4593*x[36]*x[45]+0.7982*x[36]*x[46]+0.3731*x[36]*x[50]-0.0017*x[37]*x[37]-0.5921*x[37]*x[38]+0.4842*x[37]*x[39]+0.5069*x[37]*x[40]-0.1334*x[37]*x[41]+0.808*x[37]*x[49]+0.4226*x[37]*x[50]+0.3305*x[38]*x[39]+0.6461*x[38]*x[42]+0.3067*x[38]*x[43]+0.4142*x[38]*x[44]-0.2218*x[38]*x[47]-0.1675*x[38]*x[48]+0.222*x[38]*x[49]-0.6784*x[38]*x[50]+0.8519*x[39]*x[39]-0.0665*x[39]*x[40]+0.275*x[39]*x[41]-0.5513*x[39]*x[42]+0.959*x[39]*x[45]-0.783*x[39]*x[48]-0.4613*x[39]*x[50]-0.1719*x[40]*x[40]-0.4941*x[40]*x[41]-0.4347*x[40]*x[44]+0.9279*x[40]*x[46]-0.1883*x[40]*x[47]-0.4132*x[40]*x[48]+0.9804*x[40]*x[49]+0.7547*x[40]*x[50]+0.6979*x[41]*x[41]-0.8902*x[41]*x[42]+0.8619*x[41]*x[43]+0.6498*x[41]*x[44]+0.5816*x[41]*x[46]+0.711*x[41]*x[47]-0.6322*x[41]*x[50]+0.3937*x[42]*x[42]+0.8228*x[42]*x[44]-0.0838*x[42]*x[46]-0.8125*x[42]*x[47]-0.9501*x[42]*x[49]+0.7378*x[42]*x[50]+0.5783*x[43]*x[44]+0.3982*x[43]*x[45]-0.6811*x[43]*x[46]+0.0376*x[43]*x[48]-0.2456*x[43]*x[49]+0.1885*x[43]*x[50]+0.1359*x[44]*x[45]-0.145*x[44]*x[46]+0.2971*x[44]*x[47]-0.171*x[44]*x[49]-0.6142*x[44]*x[50]-0.1917*x[45]*x[45]-0.0574*x[45]*x[46]-0.5612*x[45]*x[47]+0.2798*x[45]*x[50]+0.1076*x[46]*x[46]-0.5029*x[46]*x[47]+0.9334*x[46]*x[49]-0.5519*x[47]*x[47]-0.9951*x[47]*x[49]-0.5917*x[47]*x[50]-0.6068*x[48]*x[48]+0.4183*x[48]*x[50]-0.387*x[49]*x[49]+0.2808*x[49]*x[50]+0.5215*x[50]*x[50]-0.796*x[1]-0.3086*x[2]-0.5819*x[3]+0.6178*x[4]+0.9675*x[5]+0.176*x[6]-0.0583*x[7]+0.0569*x[8]+0.046*x[9]+0.3788*x[10]+0.5133*x[11]-0.1642*x[12]+0.6648*x[13]-0.5462*x[14]+0.8232*x[15]+0.3831*x[16]-0.5801*x[17]-0.5245*x[18]+0.5327*x[19]-0.0758*x[20]+0.489*x[21]+0.5657*x[22]+0.3351*x[23]+0.5785*x[24]+0.7114*x[25]+0.726*x[26]+0.2613*x[27]+0.4506*x[28]-0.9902*x[29]-0.4549*x[30]-0.7411*x[31]+0.7788*x[32]-0.8225*x[33]+0.9595*x[34]+0.5667*x[35]+0.6791*x[36]-0.8347*x[37]+0.1116*x[38]-0.5739*x[39]-0.2878*x[40]+0.5227*x[41]+0.6126*x[42]+0.5132*x[43]-0.6572*x[44]-0.8722*x[45]+0.163*x[46]-0.7406*x[47]+0.7148*x[48]+0.4011*x[49]-0.4188*x[50])+x[51] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[51])

m = m 		 # model get returned when including this script. 
