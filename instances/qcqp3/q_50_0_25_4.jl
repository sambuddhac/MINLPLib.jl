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
@NLconstraint(m, e1, -(-0.7074*x[1]*x[2]-1.3306*x[1]*x[4]-0.4399*x[1]*x[5]-0.1546*x[1]*x[12]-0.0574*x[1]*x[18]-0.3642*x[1]*x[23]-0.8782*x[1]*x[26]-1.0734*x[1]*x[30]-0.7741*x[1]*x[36]-1.4925*x[1]*x[43]+1.8512*x[2]*x[3]-1.2107*x[2]*x[4]+1.9748*x[2]*x[8]-0.9784*x[2]*x[14]-0.1821*x[2]*x[15]-0.3671*x[2]*x[20]-1.4745*x[2]*x[26]+0.1984*x[2]*x[28]+1.1149*x[2]*x[37]-0.0071*x[2]*x[45]+1.7805*x[2]*x[48]+1.7582*x[2]*x[50]-0.5981*x[3]*x[3]+1.7923*x[3]*x[9]-0.2227*x[3]*x[14]-0.5239*x[3]*x[23]+1.7153*x[3]*x[24]-0.7635*x[3]*x[26]-0.2939*x[3]*x[33]-0.0485*x[3]*x[36]+1.8242*x[3]*x[41]-1.705*x[3]*x[45]+0.977*x[4]*x[12]-0.2743*x[4]*x[17]-1.0688*x[4]*x[19]-1.2994*x[4]*x[21]-1.6539*x[4]*x[24]-0.7941*x[4]*x[30]-0.9508*x[4]*x[31]-1.1817*x[4]*x[40]-1.1527*x[4]*x[42]-1.7019*x[4]*x[43]-1.9034*x[4]*x[44]-0.9652*x[5]*x[6]+0.1117*x[5]*x[7]+1.8087*x[5]*x[17]-1.7721*x[5]*x[20]+0.29*x[5]*x[35]+1.4635*x[5]*x[38]+1.1088*x[5]*x[41]+0.4597*x[5]*x[44]-1.3468*x[5]*x[45]+0.6736*x[5]*x[46]-1.1766*x[5]*x[47]-1.8326*x[5]*x[48]-0.8784*x[6]*x[7]+1.1828*x[6]*x[10]+1.5587*x[6]*x[11]+0.3386*x[6]*x[12]-1.089*x[6]*x[13]+1.7787*x[6]*x[14]-1.7085*x[6]*x[17]-0.7608*x[6]*x[18]-0.1017*x[6]*x[27]+1.4323*x[6]*x[28]+1.503*x[6]*x[30]-1.7457*x[6]*x[44]+1.8708*x[6]*x[47]-1.8046*x[6]*x[49]-1.5488*x[7]*x[8]+1.8675*x[7]*x[21]-1.8787*x[7]*x[23]+0.6077*x[7]*x[26]-0.8494*x[7]*x[33]+1.4856*x[7]*x[34]-0.7356*x[7]*x[37]+1.0014*x[7]*x[40]-1.5875*x[7]*x[41]-0.7003*x[7]*x[44]+1.1649*x[7]*x[46]-0.6876*x[8]*x[8]+1.367*x[8]*x[14]+1.4282*x[8]*x[15]+0.8095*x[8]*x[23]+0.3229*x[8]*x[31]-0.081*x[8]*x[35]-0.6565*x[8]*x[41]+1.4986*x[8]*x[42]-0.0141*x[8]*x[43]+0.163*x[9]*x[15]-1.012*x[9]*x[18]-1.5518*x[9]*x[25]+1.9585*x[9]*x[26]-0.9428*x[9]*x[28]+0.6235*x[9]*x[30]-0.6893*x[9]*x[31]-0.4225*x[9]*x[32]+1.9186*x[9]*x[33]-1.4873*x[9]*x[41]-1.4872*x[9]*x[43]-1.01*x[9]*x[46]+0.035*x[9]*x[47]-1.6299*x[10]*x[13]+0.2958*x[10]*x[15]-1.7113*x[10]*x[18]+0.9548*x[10]*x[21]-0.6113*x[10]*x[25]-0.8107*x[10]*x[28]-1.2953*x[10]*x[33]+1.5389*x[10]*x[36]-0.5901*x[10]*x[37]-0.1357*x[10]*x[39]-0.0762*x[10]*x[41]+1.7261*x[10]*x[43]+0.0405*x[10]*x[45]-0.6393*x[10]*x[50]-1.2954*x[11]*x[11]+0.8215*x[11]*x[12]+1.4225*x[11]*x[18]+0.7242*x[11]*x[19]+0.8636*x[11]*x[21]-0.8475*x[11]*x[34]-1.2306*x[11]*x[38]-0.5994*x[11]*x[40]+0.2231*x[11]*x[41]+1.0982*x[11]*x[42]+0.4541*x[11]*x[48]-0.4756*x[12]*x[13]-1.8797*x[12]*x[18]+1.3133*x[12]*x[23]-1.9146*x[12]*x[24]-0.4876*x[12]*x[26]-1.5055*x[12]*x[40]-0.4017*x[12]*x[47]+1.1215*x[12]*x[48]-0.3044*x[13]*x[13]+1.7304*x[13]*x[15]+0.8271*x[13]*x[18]-1.322*x[13]*x[21]-0.4067*x[13]*x[22]-1.9358*x[13]*x[26]-1.4952*x[13]*x[33]+0.5378*x[13]*x[39]-1.3704*x[13]*x[44]+0.675*x[14]*x[25]+0.8596*x[14]*x[28]+0.0856*x[14]*x[29]-0.4968*x[14]*x[35]-1.128*x[14]*x[37]-0.8447*x[14]*x[42]-1.0404*x[14]*x[45]-1.0382*x[15]*x[16]+1.5276*x[15]*x[31]-1.7792*x[15]*x[32]+1.7118*x[15]*x[34]-0.3088*x[15]*x[38]-0.4968*x[15]*x[40]+0.9048*x[15]*x[47]+1.404*x[16]*x[26]-1.5213*x[16]*x[36]-0.8949*x[16]*x[42]-0.9529*x[16]*x[44]-0.8654*x[17]*x[17]-1.4461*x[17]*x[19]+1.399*x[17]*x[21]+1.808*x[17]*x[23]+1.7693*x[17]*x[27]+0.6992*x[17]*x[30]+0.13*x[17]*x[47]-0.6414*x[17]*x[48]-0.7607*x[18]*x[23]-0.4231*x[18]*x[25]+0.7979*x[18]*x[26]-1.7971*x[18]*x[27]+0.4001*x[18]*x[30]+0.1329*x[18]*x[31]-1.5592*x[18]*x[38]-0.1813*x[18]*x[43]+1.8711*x[18]*x[49]-1.2212*x[18]*x[50]+1.9171*x[19]*x[24]-0.3128*x[19]*x[33]-0.2767*x[19]*x[34]-0.9181*x[19]*x[36]+0.5365*x[19]*x[37]-1.3095*x[19]*x[38]+0.3884*x[19]*x[42]+1.3402*x[20]*x[22]+1.6054*x[20]*x[26]-1.9586*x[20]*x[33]-0.0037*x[20]*x[34]+1.7578*x[20]*x[35]-1.3852*x[20]*x[44]+1.8506*x[20]*x[47]-0.2815*x[20]*x[48]-1.6622*x[21]*x[26]+1.8566*x[21]*x[33]+1.6104*x[21]*x[41]-0.0806*x[21]*x[50]+0.5746*x[22]*x[28]-1.0572*x[22]*x[29]+1.5017*x[22]*x[31]-1.7774*x[22]*x[38]+0.8049*x[22]*x[44]-1.5418*x[22]*x[47]+1.9604*x[23]*x[26]+1.3232*x[23]*x[30]-0.2422*x[23]*x[32]+1.0142*x[23]*x[35]-1.9052*x[23]*x[37]-0.8937*x[23]*x[39]+1.4345*x[23]*x[46]-0.1664*x[24]*x[24]+0.7432*x[24]*x[28]-1.2662*x[24]*x[31]+0.3822*x[24]*x[36]-0.9121*x[24]*x[37]+0.9263*x[24]*x[40]+1.5862*x[24]*x[46]+0.0269*x[24]*x[50]+0.078*x[25]*x[27]+0.2848*x[25]*x[29]-0.2183*x[25]*x[37]+1.7424*x[25]*x[39]+1.5767*x[25]*x[41]+1.9782*x[25]*x[48]+0.2807*x[26]*x[28]+0.7282*x[26]*x[31]+1.522*x[26]*x[32]-0.3077*x[26]*x[47]-1.4524*x[26]*x[48]+1.39*x[26]*x[50]-0.3501*x[27]*x[31]+0.2035*x[27]*x[32]+1.4138*x[27]*x[34]+1.8886*x[27]*x[41]+1.9431*x[27]*x[42]-0.8495*x[27]*x[49]-0.1795*x[28]*x[30]-0.0014*x[28]*x[31]+0.434*x[28]*x[33]+0.3209*x[28]*x[34]-1.7018*x[28]*x[42]-1.0642*x[28]*x[44]-1.337*x[28]*x[48]+0.1897*x[29]*x[40]+0.5279*x[29]*x[42]+0.3559*x[29]*x[43]-0.5219*x[29]*x[46]-1.1306*x[29]*x[49]-0.2878*x[29]*x[50]-0.2944*x[30]*x[32]+0.3134*x[30]*x[33]-0.4454*x[30]*x[37]+0.1757*x[30]*x[40]-0.6434*x[30]*x[44]+1.146*x[30]*x[45]-1.3706*x[31]*x[33]+0.7391*x[31]*x[35]-1.188*x[31]*x[39]+0.1687*x[31]*x[44]-0.3753*x[31]*x[45]-0.5599*x[31]*x[46]-1.7822*x[31]*x[48]+0.581*x[32]*x[35]+1.6224*x[32]*x[41]-1.4367*x[32]*x[42]-0.6358*x[32]*x[44]-0.7907*x[32]*x[46]-0.0285*x[32]*x[48]-0.6387*x[33]*x[35]+0.9929*x[33]*x[36]+1.3018*x[33]*x[37]+0.9227*x[33]*x[38]-1.3805*x[33]*x[42]-1.7371*x[33]*x[43]-1.309*x[33]*x[44]+0.5831*x[34]*x[34]-1.5156*x[34]*x[35]+0.5338*x[34]*x[42]+1.3155*x[34]*x[44]-1.838*x[34]*x[45]-1.8253*x[34]*x[48]-0.984*x[35]*x[35]-1.3588*x[35]*x[43]-1.8303*x[35]*x[49]+0.7104*x[36]*x[37]-1.4777*x[36]*x[39]-1.6428*x[36]*x[41]+0.2399*x[36]*x[42]+1.4736*x[36]*x[44]-1.3599*x[36]*x[45]-1.4318*x[36]*x[46]+0.8851*x[36]*x[48]-1.5152*x[37]*x[38]-1.2067*x[37]*x[49]+1.5584*x[37]*x[50]+1.0178*x[38]*x[39]+0.883*x[38]*x[42]+0.221*x[39]*x[41]+1.4317*x[39]*x[42]+0.2338*x[39]*x[43]+0.1783*x[39]*x[44]+1.8858*x[39]*x[46]-0.2597*x[40]*x[41]-0.7306*x[40]*x[42]-0.6684*x[40]*x[43]+1.7288*x[40]*x[46]-1.1411*x[40]*x[47]+0.7562*x[40]*x[48]+0.1197*x[41]*x[47]-1.5476*x[42]*x[46]-1.4312*x[43]*x[44]-0.3835*x[43]*x[49]+1.0754*x[44]*x[45]+1.2547*x[45]*x[50]+1.8462*x[46]*x[49]+0.3573*x[48]*x[48]-0.4033*x[1]+0.5307*x[2]+0.8639*x[3]+0.9249*x[4]+0.5844*x[5]-0.3302*x[6]-0.8971*x[7]+0.9343*x[8]-0.4812*x[9]-0.0224*x[10]-0.0381*x[11]-0.6702*x[12]+0.0765*x[13]-0.5192*x[14]+0.15*x[15]+0.7511*x[16]+0.2959*x[17]+0.6925*x[18]-0.7939*x[19]-0.4419*x[20]-0.4714*x[21]+0.0146*x[22]+0.9626*x[23]+0.0541*x[24]-0.7318*x[25]-0.6666*x[26]+0.6844*x[27]+0.2667*x[28]+0.9428*x[29]-0.8373*x[30]+0.1923*x[31]+0.9925*x[32]-0.9806*x[33]-0.9013*x[34]-0.7989*x[35]+0.959*x[36]+0.6824*x[37]-0.0939*x[38]+0.9649*x[39]+0.887*x[40]+0.1799*x[41]-0.3306*x[42]+0.3269*x[43]+0.5563*x[44]+0.0427*x[45]-0.5169*x[46]-0.1694*x[47]-0.8772*x[48]-0.6835*x[49]+0.0361*x[50])+x[51] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[51])

m = m 		 # model get returned when including this script. 
