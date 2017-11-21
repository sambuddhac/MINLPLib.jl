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
@NLconstraint(m, e1, -(0.4608*x[1]*x[1]+0.2301*x[1]*x[2]+0.8591*x[1]*x[3]+0.84*x[1]*x[5]+0.464*x[1]*x[8]+0.3765*x[1]*x[9]-0.3264*x[1]*x[10]+0.3332*x[1]*x[11]-0.7356*x[1]*x[12]+0.8095*x[1]*x[13]-0.0612*x[1]*x[14]+0.3975*x[1]*x[15]+0.0581*x[1]*x[16]-0.1042*x[1]*x[17]-0.2907*x[1]*x[18]-0.2457*x[1]*x[21]-0.3418*x[1]*x[22]-0.0017*x[1]*x[23]+0.144*x[1]*x[24]+0.9319*x[1]*x[25]-0.3145*x[1]*x[26]+0.1275*x[1]*x[27]-0.4941*x[1]*x[28]-0.6923*x[1]*x[29]-0.1079*x[1]*x[30]+0.7168*x[2]*x[2]+0.4437*x[2]*x[5]+0.948*x[2]*x[10]+0.4568*x[2]*x[11]-0.1896*x[2]*x[14]+0.2617*x[2]*x[17]+0.4463*x[2]*x[18]+0.1745*x[2]*x[22]-0.6533*x[2]*x[25]-0.1683*x[2]*x[28]-0.4365*x[2]*x[30]+0.7852*x[3]*x[3]-0.202*x[3]*x[4]-0.6606*x[3]*x[10]-0.5487*x[3]*x[13]+0.5106*x[3]*x[14]+0.0829*x[3]*x[16]+0.377*x[3]*x[17]-0.9031*x[3]*x[18]-0.1076*x[3]*x[20]-0.1934*x[3]*x[22]-0.3744*x[3]*x[23]-0.1494*x[3]*x[25]-0.7349*x[3]*x[27]+0.8409*x[3]*x[29]-0.3898*x[3]*x[30]+0.2671*x[4]*x[4]+0.9421*x[4]*x[5]-0.8074*x[4]*x[6]+0.4819*x[4]*x[8]-0.2596*x[4]*x[10]+0.1575*x[4]*x[13]+0.9138*x[4]*x[14]+0.3842*x[4]*x[15]+0.0588*x[4]*x[16]+0.2409*x[4]*x[18]+0.035*x[4]*x[19]+0.8743*x[4]*x[23]+0.3575*x[4]*x[24]+0.0348*x[4]*x[27]+0.7401*x[4]*x[29]-0.6616*x[4]*x[30]-0.6863*x[5]*x[5]+0.8593*x[5]*x[6]-0.5005*x[5]*x[9]-0.9764*x[5]*x[10]+0.5603*x[5]*x[11]+0.9854*x[5]*x[12]+0.16*x[5]*x[13]+0.1147*x[5]*x[18]-0.3401*x[5]*x[21]+0.3408*x[5]*x[22]-0.5261*x[5]*x[24]+0.4654*x[5]*x[25]-0.0325*x[6]*x[9]+0.5405*x[6]*x[17]-0.213*x[6]*x[18]-0.672*x[6]*x[20]-0.1948*x[6]*x[21]+0.8284*x[6]*x[22]+0.2722*x[6]*x[25]-0.3456*x[6]*x[26]+0.0901*x[6]*x[27]-0.5506*x[6]*x[30]+0.2881*x[7]*x[9]-0.5868*x[7]*x[13]-0.8113*x[7]*x[14]+0.1017*x[7]*x[15]+0.5574*x[7]*x[16]+0.3736*x[7]*x[17]-0.5655*x[7]*x[18]+0.523*x[7]*x[19]-0.0048*x[7]*x[21]+0.7261*x[7]*x[23]+0.3629*x[7]*x[26]+0.4562*x[7]*x[28]+0.1287*x[7]*x[29]-0.8367*x[7]*x[30]+0.3604*x[8]*x[8]-0.462*x[8]*x[12]-0.2526*x[8]*x[14]+0.4244*x[8]*x[15]-0.3583*x[8]*x[16]+0.8347*x[8]*x[18]-0.9195*x[8]*x[21]-0.9833*x[8]*x[23]+0.0714*x[8]*x[24]+0.8243*x[8]*x[25]+0.7173*x[8]*x[28]+0.5138*x[8]*x[29]+0.5093*x[8]*x[30]-0.8657*x[9]*x[9]+0.2611*x[9]*x[10]-0.9228*x[9]*x[12]-0.9374*x[9]*x[14]+0.3512*x[9]*x[18]-0.3977*x[9]*x[20]-0.2119*x[9]*x[21]-0.1687*x[9]*x[23]+0.5323*x[9]*x[26]-0.6713*x[9]*x[30]+0.0094*x[10]*x[10]+0.2659*x[10]*x[12]-0.0687*x[10]*x[13]-0.8207*x[10]*x[14]+0.4782*x[10]*x[15]-0.9428*x[10]*x[16]+0.7765*x[10]*x[18]+0.1322*x[10]*x[21]-0.9941*x[10]*x[26]+0.604*x[10]*x[30]+0.0662*x[11]*x[11]+0.1612*x[11]*x[13]+0.2655*x[11]*x[18]+0.9515*x[11]*x[19]+0.1826*x[11]*x[20]-0.2251*x[11]*x[24]+0.0668*x[11]*x[27]-0.0012*x[12]*x[13]+0.4652*x[12]*x[14]-0.8628*x[12]*x[15]+0.5465*x[12]*x[16]+0.967*x[12]*x[19]+0.5282*x[12]*x[22]-0.4937*x[12]*x[25]+0.0167*x[12]*x[29]-0.6386*x[13]*x[13]+0.6456*x[13]*x[14]+0.3362*x[13]*x[15]-0.3366*x[13]*x[16]+0.7967*x[13]*x[18]+0.0481*x[13]*x[19]-0.326*x[13]*x[20]+0.7372*x[13]*x[21]-0.6833*x[13]*x[22]+0.7197*x[13]*x[26]+0.8335*x[13]*x[27]+0.1283*x[13]*x[29]+0.8325*x[14]*x[14]+0.4609*x[14]*x[15]-0.644*x[14]*x[16]-0.5909*x[14]*x[18]-0.3988*x[14]*x[19]-0.1064*x[14]*x[21]+0.9087*x[14]*x[23]+0.7508*x[14]*x[24]+0.7963*x[14]*x[25]-0.42*x[14]*x[28]+0.0936*x[15]*x[15]-0.6541*x[15]*x[16]-0.7012*x[15]*x[19]-0.6921*x[15]*x[20]-0.9324*x[15]*x[23]+0.4869*x[15]*x[24]+0.7257*x[15]*x[25]-0.6623*x[15]*x[27]-0.2743*x[15]*x[29]+0.8574*x[15]*x[30]-0.0297*x[16]*x[16]-0.7911*x[16]*x[24]+0.9737*x[16]*x[25]+0.6076*x[16]*x[29]+0.0491*x[17]*x[17]-0.4604*x[17]*x[19]-0.7467*x[17]*x[21]+0.7448*x[17]*x[23]+0.0926*x[17]*x[24]+0.4597*x[17]*x[25]-0.6668*x[17]*x[26]+0.3729*x[17]*x[28]-0.0704*x[17]*x[30]-0.2894*x[18]*x[18]-0.2236*x[18]*x[20]+0.4858*x[18]*x[21]+0.3469*x[18]*x[22]+0.2602*x[18]*x[24]-0.601*x[18]*x[29]-0.27*x[18]*x[30]+0.2675*x[19]*x[19]-0.4747*x[19]*x[21]+0.7579*x[19]*x[24]-0.2499*x[19]*x[25]+0.1515*x[19]*x[26]+0.5486*x[20]*x[20]+0.7979*x[20]*x[21]-0.9674*x[20]*x[23]-0.6834*x[20]*x[26]-0.8052*x[20]*x[27]+0.6142*x[21]*x[21]+0.1556*x[21]*x[24]+0.8739*x[21]*x[26]+0.8354*x[21]*x[29]-0.7046*x[22]*x[22]-0.7959*x[22]*x[30]-0.1319*x[23]*x[25]+0.8877*x[23]*x[26]-0.5679*x[23]*x[29]+0.5*x[24]*x[24]-0.7332*x[24]*x[30]+0.6229*x[25]*x[25]+0.1422*x[25]*x[27]+0.0822*x[25]*x[28]+0.0247*x[25]*x[30]-0.4182*x[26]*x[26]-0.4558*x[26]*x[28]-0.0015*x[26]*x[29]-0.7712*x[26]*x[30]-0.4042*x[27]*x[27]+0.5331*x[27]*x[28]+0.2145*x[28]*x[28]-0.3041*x[28]*x[29]-0.1333*x[28]*x[30]-0.1725*x[29]*x[29]+0.3443*x[29]*x[30]-0.0278*x[30]*x[30]+0.2019*x[1]-0.5053*x[2]-0.6721*x[3]+0.3585*x[4]-0.129*x[5]-0.1555*x[6]-0.1272*x[7]-0.8195*x[8]-0.5155*x[9]+0.1465*x[10]-0.5232*x[11]-0.8389*x[12]-0.0653*x[13]+0.0129*x[14]-0.546*x[15]-0.1756*x[16]-0.4407*x[17]+0.1798*x[18]+0.3307*x[19]+0.2621*x[20]+0.925*x[21]-0.5924*x[22]-0.6534*x[23]-0.1504*x[24]-0.4746*x[25]-0.707*x[26]-0.7789*x[27]+0.5415*x[28]+0.6557*x[29]+0.0965*x[30])+x[31] == 0.0)
@NLconstraint(m, e2, (-0.6963*x[1]*x[2])-0.3945*x[1]*x[3]-0.4905*x[1]*x[5]+0.8211*x[1]*x[7]-0.9483*x[1]*x[9]+0.7422*x[1]*x[11]+0.1962*x[1]*x[12]-0.509*x[1]*x[14]-0.1028*x[1]*x[15]+0.2514*x[1]*x[16]+0.267*x[1]*x[17]+0.2254*x[1]*x[19]+0.4042*x[1]*x[21]-0.622*x[1]*x[22]+0.8344*x[1]*x[23]-0.7031*x[1]*x[25]+0.3405*x[1]*x[26]-0.7953*x[1]*x[27]+0.398*x[1]*x[29]+0.6626*x[1]*x[30]-0.827*x[2]*x[2]-0.8931*x[2]*x[3]-0.5148*x[2]*x[4]+0.4084*x[2]*x[5]-0.6521*x[2]*x[6]-0.0876*x[2]*x[8]+0.188*x[2]*x[11]-0.3748*x[2]*x[12]+0.0378*x[2]*x[18]+0.6292*x[2]*x[19]-0.0139*x[2]*x[21]-0.0817*x[2]*x[22]-0.0873*x[2]*x[23]+0.8725*x[2]*x[29]-0.9172*x[3]*x[4]+0.8638*x[3]*x[7]+0.686*x[3]*x[9]-0.1756*x[3]*x[10]+0.2581*x[3]*x[11]+0.4469*x[3]*x[12]+0.2507*x[3]*x[17]+0.2579*x[3]*x[19]+0.267*x[3]*x[21]-0.2547*x[3]*x[22]-0.9158*x[3]*x[24]-0.1308*x[3]*x[25]+0.8416*x[3]*x[26]+0.9378*x[3]*x[30]-0.4865*x[4]*x[9]-0.7614*x[4]*x[17]-0.6333*x[4]*x[20]-0.1829*x[4]*x[21]-0.9423*x[4]*x[25]-0.0558*x[4]*x[26]+0.1655*x[4]*x[28]-0.4322*x[4]*x[30]-0.8951*x[5]*x[5]+0.0047*x[5]*x[6]-0.7829*x[5]*x[10]-0.598*x[5]*x[11]-0.2501*x[5]*x[13]-0.2043*x[5]*x[15]-0.246*x[5]*x[17]-0.3573*x[5]*x[18]-0.4007*x[5]*x[22]+0.6533*x[5]*x[23]-0.4961*x[5]*x[26]-0.0391*x[5]*x[27]+0.2432*x[5]*x[29]+0.7682*x[5]*x[30]+0.005*x[6]*x[7]-0.769*x[6]*x[8]-0.6322*x[6]*x[10]+0.9222*x[6]*x[12]-0.3369*x[6]*x[14]-0.315*x[6]*x[16]+0.6314*x[6]*x[17]-0.1892*x[6]*x[18]-0.2573*x[6]*x[21]+0.6993*x[6]*x[22]+0.0425*x[6]*x[24]+0.7347*x[6]*x[25]-0.9784*x[6]*x[29]+0.5711*x[6]*x[30]+0.6595*x[7]*x[7]+0.7826*x[7]*x[8]-0.6206*x[7]*x[10]-0.4996*x[7]*x[11]+0.2274*x[7]*x[12]+0.5325*x[7]*x[14]-0.8522*x[7]*x[17]-0.0424*x[7]*x[18]+0.6851*x[7]*x[19]-0.1947*x[7]*x[20]+0.4946*x[7]*x[21]-0.7338*x[7]*x[23]+0.4148*x[7]*x[24]-0.1023*x[7]*x[25]+0.663*x[7]*x[26]+0.789*x[7]*x[28]-0.4446*x[7]*x[29]+0.967*x[7]*x[30]-0.0881*x[8]*x[8]+0.8227*x[8]*x[11]-0.8641*x[8]*x[17]-0.364*x[8]*x[18]+0.0662*x[8]*x[21]+0.9067*x[8]*x[27]+0.0474*x[8]*x[28]-0.5395*x[8]*x[30]-0.5492*x[9]*x[9]+0.1285*x[9]*x[11]-0.2108*x[9]*x[12]-0.4389*x[9]*x[14]+0.4505*x[9]*x[15]-0.2632*x[9]*x[17]+0.1447*x[9]*x[20]+0.9527*x[9]*x[26]-0.3495*x[9]*x[28]-0.4834*x[9]*x[29]+0.1827*x[9]*x[30]-0.8798*x[10]*x[10]-0.9442*x[10]*x[14]+0.6493*x[10]*x[15]+0.5238*x[10]*x[22]+0.8016*x[10]*x[25]+0.0839*x[10]*x[30]+0.2553*x[11]*x[11]+0.1041*x[11]*x[12]+0.6431*x[11]*x[14]-0.9353*x[11]*x[15]-0.7491*x[11]*x[18]+0.1086*x[11]*x[19]+0.0038*x[11]*x[20]-0.2823*x[11]*x[27]+0.9342*x[11]*x[28]-0.2296*x[11]*x[29]-0.2176*x[12]*x[12]+0.0713*x[12]*x[13]-0.6976*x[12]*x[14]-0.8105*x[12]*x[15]-0.6384*x[12]*x[18]+0.5856*x[12]*x[22]+0.5519*x[12]*x[27]-0.8097*x[12]*x[29]+0.6259*x[12]*x[30]-0.9889*x[13]*x[13]-0.1857*x[13]*x[14]+0.0999*x[13]*x[17]-0.0549*x[13]*x[20]-0.1009*x[13]*x[21]-0.5892*x[13]*x[22]+0.6647*x[13]*x[23]-0.5684*x[13]*x[25]+0.9951*x[13]*x[26]+0.1313*x[13]*x[27]+0.4577*x[13]*x[28]+0.27*x[13]*x[30]+0.7117*x[14]*x[14]+0.0231*x[14]*x[15]-0.0166*x[14]*x[16]+0.498*x[14]*x[18]+0.6713*x[14]*x[21]+0.6016*x[14]*x[22]+0.8954*x[14]*x[24]+0.4495*x[14]*x[26]-0.0792*x[14]*x[29]+0.7098*x[14]*x[30]+0.9711*x[15]*x[15]-0.1882*x[15]*x[16]-0.8545*x[15]*x[19]-0.6068*x[15]*x[21]+0.5042*x[15]*x[27]-0.9756*x[15]*x[29]-0.0738*x[16]*x[16]-0.6273*x[16]*x[18]+0.6229*x[16]*x[21]-0.0324*x[16]*x[22]-0.3351*x[16]*x[26]-0.3772*x[16]*x[29]-0.1456*x[16]*x[30]-0.3635*x[17]*x[17]+0.7269*x[17]*x[18]-0.0957*x[17]*x[19]-0.2575*x[17]*x[20]+0.6675*x[17]*x[22]+0.5587*x[17]*x[23]+0.0148*x[17]*x[24]-0.0896*x[17]*x[25]-0.3418*x[17]*x[28]-0.3961*x[17]*x[29]-0.6874*x[17]*x[30]-0.3371*x[18]*x[18]-0.7173*x[18]*x[20]+0.7162*x[18]*x[22]+0.0797*x[18]*x[26]+0.9507*x[18]*x[27]+0.5662*x[19]*x[19]+0.581*x[19]*x[23]+0.6023*x[19]*x[25]-0.7911*x[19]*x[26]+0.878*x[19]*x[27]+0.2584*x[19]*x[28]+0.0578*x[19]*x[30]+0.4248*x[20]*x[20]+0.3476*x[20]*x[21]+0.3429*x[20]*x[22]+0.9055*x[20]*x[25]+0.3145*x[20]*x[27]+0.3608*x[20]*x[29]-0.9402*x[20]*x[30]-0.9457*x[21]*x[21]+0.1725*x[21]*x[22]+0.4746*x[21]*x[25]+0.1563*x[21]*x[27]+0.7788*x[21]*x[28]+0.7476*x[21]*x[30]+0.001*x[22]*x[22]+0.4441*x[22]*x[23]-0.528*x[22]*x[24]+0.6476*x[22]*x[28]+0.2543*x[22]*x[29]+0.428*x[22]*x[30]+0.4591*x[23]*x[23]-0.7679*x[23]*x[25]+0.4269*x[23]*x[26]-0.0627*x[23]*x[27]-0.9485*x[23]*x[29]-0.4647*x[23]*x[30]-0.0794*x[24]*x[24]-0.6668*x[24]*x[30]+0.3699*x[25]*x[26]+0.1985*x[26]*x[28]+0.9464*x[26]*x[30]+0.5812*x[27]*x[28]-0.1543*x[27]*x[30]-0.171*x[28]*x[28]-0.1749*x[28]*x[29]+0.7773*x[29]*x[29]+0.1341*x[30]*x[30]-0.6811*x[1]-0.5029*x[2]-0.0775*x[3]+0.008*x[4]-0.6103*x[5]+0.796*x[6]-0.0169*x[7]+0.1667*x[8]+0.9984*x[9]-0.9044*x[10]-0.8521*x[11]-0.0634*x[12]-0.8453*x[13]+0.2021*x[14]-0.736*x[15]-0.7622*x[16]-0.2879*x[17]-0.7519*x[18]-0.9211*x[19]+0.6869*x[20]+0.0244*x[21]-0.8247*x[22]+0.6211*x[23]+0.5625*x[24]-0.4472*x[25]+0.4877*x[26]+0.143*x[27]-0.5921*x[28]+0.6894*x[29]-0.8792*x[30] <= 96.855)
@NLconstraint(m, e3, 0.5012*x[1]*x[2]-0.9003*x[1]*x[1]-0.0571*x[1]*x[3]+0.6802*x[1]*x[4]+0.4621*x[1]*x[6]-0.1812*x[1]*x[7]+0.2286*x[1]*x[9]+0.6824*x[1]*x[10]-0.6754*x[1]*x[12]+0.0862*x[1]*x[13]+0.2442*x[1]*x[15]-0.9697*x[1]*x[16]-0.5079*x[1]*x[18]-0.3902*x[1]*x[19]-0.8218*x[1]*x[20]-0.7173*x[1]*x[22]+0.4199*x[1]*x[23]-0.5245*x[1]*x[25]+0.5457*x[1]*x[27]+0.9258*x[1]*x[30]+0.0231*x[2]*x[3]-0.584*x[2]*x[4]-0.3698*x[2]*x[6]+0.0415*x[2]*x[7]-0.7735*x[2]*x[9]+0.4747*x[2]*x[11]+0.7033*x[2]*x[17]+0.7418*x[2]*x[18]-0.4056*x[2]*x[24]+0.8517*x[2]*x[25]+0.9868*x[2]*x[30]-0.3598*x[3]*x[3]-0.9909*x[3]*x[7]-0.2157*x[3]*x[9]+0.5258*x[3]*x[10]+0.1781*x[3]*x[13]-0.2929*x[3]*x[14]+0.1259*x[3]*x[15]+0.7721*x[3]*x[16]+0.7387*x[3]*x[17]+0.7655*x[3]*x[20]+0.7709*x[3]*x[22]-0.0363*x[3]*x[23]-0.2563*x[3]*x[24]-0.3348*x[3]*x[26]-0.3117*x[3]*x[27]-0.9267*x[3]*x[29]+0.3262*x[4]*x[4]+0.7239*x[4]*x[5]-0.9664*x[4]*x[6]+0.5082*x[4]*x[8]-0.7046*x[4]*x[10]+0.7427*x[4]*x[11]-0.4956*x[4]*x[12]+0.3243*x[4]*x[13]+0.6675*x[4]*x[16]+0.2285*x[4]*x[18]+0.9475*x[4]*x[22]-0.0558*x[5]*x[6]+0.4674*x[5]*x[7]-0.4878*x[5]*x[8]-0.0122*x[5]*x[13]-0.9361*x[5]*x[14]-0.0769*x[5]*x[15]-0.7356*x[5]*x[16]-0.2692*x[5]*x[17]+0.341*x[5]*x[18]-0.7277*x[5]*x[19]-0.458*x[5]*x[20]+0.6288*x[5]*x[21]-0.7241*x[5]*x[22]+0.275*x[5]*x[23]-0.1594*x[5]*x[26]-0.2459*x[5]*x[30]-0.9442*x[6]*x[6]+0.1671*x[6]*x[9]+0.8756*x[6]*x[10]+0.4346*x[6]*x[11]-0.4326*x[6]*x[12]-0.1741*x[6]*x[13]-0.4731*x[6]*x[15]+0.2913*x[6]*x[16]+0.7253*x[6]*x[17]-0.2296*x[6]*x[21]+0.2742*x[6]*x[23]-0.2536*x[6]*x[24]-0.6223*x[6]*x[29]+0.5092*x[6]*x[30]-0.1442*x[7]*x[8]+0.4395*x[7]*x[14]-0.171*x[7]*x[16]-0.5288*x[7]*x[21]+0.8321*x[7]*x[22]-0.9273*x[7]*x[23]-0.6073*x[7]*x[24]-0.1465*x[7]*x[26]-0.2186*x[7]*x[27]-0.5727*x[7]*x[28]+0.6493*x[7]*x[30]+0.523*x[8]*x[8]-0.3785*x[8]*x[12]-0.6688*x[8]*x[15]+0.7376*x[8]*x[17]-0.2849*x[8]*x[19]-0.1003*x[8]*x[22]+0.618*x[8]*x[24]-0.9483*x[8]*x[25]-0.9103*x[8]*x[28]+0.594*x[8]*x[29]+0.529*x[8]*x[30]+0.1345*x[9]*x[9]-0.8556*x[9]*x[10]+0.4571*x[9]*x[13]-0.6801*x[9]*x[17]-0.3837*x[9]*x[18]+0.4869*x[9]*x[19]-0.3734*x[9]*x[20]-0.0614*x[9]*x[21]+0.4458*x[9]*x[23]+0.9555*x[9]*x[24]-0.4221*x[9]*x[26]-0.6378*x[9]*x[27]-0.2224*x[9]*x[30]-0.1633*x[10]*x[12]-0.8435*x[10]*x[13]-0.9627*x[10]*x[17]-0.537*x[10]*x[18]-0.4142*x[10]*x[19]+0.0944*x[10]*x[20]+0.2836*x[10]*x[25]+0.8968*x[10]*x[26]+0.8181*x[10]*x[27]+0.1602*x[10]*x[30]-0.1927*x[11]*x[11]-0.909*x[11]*x[14]+0.5747*x[11]*x[17]-0.6553*x[11]*x[18]-0.0389*x[11]*x[19]-0.7118*x[11]*x[24]+0.4219*x[11]*x[25]-0.0301*x[11]*x[26]-0.5221*x[11]*x[30]-0.494*x[12]*x[12]+0.6446*x[12]*x[13]-0.2958*x[12]*x[14]-0.4712*x[12]*x[15]-0.4546*x[12]*x[17]-0.5165*x[12]*x[20]+0.4324*x[12]*x[23]-0.8105*x[12]*x[24]+0.7893*x[12]*x[25]-0.9756*x[12]*x[29]-0.4631*x[12]*x[30]-0.4841*x[13]*x[13]-0.1535*x[13]*x[15]-0.244*x[13]*x[20]+0.6211*x[13]*x[21]+0.1069*x[13]*x[23]+0.8784*x[13]*x[24]-0.8358*x[13]*x[25]-0.8445*x[13]*x[29]+0.7086*x[13]*x[30]-0.6258*x[14]*x[17]+0.8181*x[14]*x[19]+0.3852*x[14]*x[21]-0.2402*x[14]*x[22]-0.2936*x[14]*x[23]+0.2214*x[14]*x[24]+0.1429*x[14]*x[26]-0.8948*x[14]*x[28]+0.522*x[14]*x[29]-0.2267*x[14]*x[30]+0.4224*x[15]*x[15]-0.8185*x[15]*x[17]+0.3926*x[15]*x[20]-0.8367*x[15]*x[22]-0.6587*x[15]*x[25]-0.6886*x[15]*x[26]-0.2018*x[15]*x[27]+0.066*x[15]*x[28]-0.3618*x[15]*x[29]+0.1009*x[15]*x[30]+0.6898*x[16]*x[16]+0.7617*x[16]*x[18]-0.3654*x[16]*x[19]+0.7938*x[16]*x[21]+0.3533*x[16]*x[22]-0.3473*x[16]*x[24]+0.4455*x[16]*x[25]+0.0883*x[16]*x[26]+0.5394*x[17]*x[18]-0.9764*x[17]*x[20]-0.869*x[17]*x[21]-0.4911*x[17]*x[23]-0.3709*x[17]*x[26]+0.6556*x[17]*x[29]+0.6394*x[17]*x[30]-0.3988*x[18]*x[18]+0.9041*x[18]*x[19]-0.0476*x[18]*x[20]-0.9253*x[18]*x[23]+0.6617*x[18]*x[27]-0.2895*x[19]*x[21]+0.9648*x[19]*x[23]+0.5546*x[19]*x[27]+0.1111*x[19]*x[28]-0.0805*x[20]*x[20]+0.3605*x[20]*x[22]+0.5607*x[20]*x[24]-0.3081*x[20]*x[26]-0.7241*x[20]*x[27]-0.6059*x[20]*x[30]-0.1236*x[21]*x[25]+0.0987*x[21]*x[29]+0.3266*x[21]*x[30]+0.8349*x[22]*x[23]-0.7452*x[22]*x[27]+0.1874*x[22]*x[29]+0.1608*x[23]*x[23]-0.1369*x[23]*x[26]-0.0104*x[23]*x[27]-0.2307*x[23]*x[28]+0.2701*x[23]*x[29]+0.531*x[24]*x[24]-0.3195*x[24]*x[26]-0.317*x[24]*x[27]+0.232*x[24]*x[28]+0.4993*x[24]*x[29]-0.8614*x[24]*x[30]-0.3124*x[25]*x[25]+0.1596*x[25]*x[28]+0.6767*x[25]*x[29]-0.6672*x[25]*x[30]+0.6403*x[26]*x[26]+0.5534*x[26]*x[27]-0.6291*x[26]*x[29]-0.0562*x[26]*x[30]+0.7783*x[27]*x[29]+0.2553*x[28]*x[30]-0.2572*x[30]*x[30]-0.9038*x[1]+0.5933*x[2]-0.7324*x[3]-0.4658*x[4]+0.5942*x[5]-0.9977*x[6]+0.1528*x[7]-0.1399*x[8]+0.2696*x[9]+0.2251*x[10]+0.6132*x[11]-0.0054*x[12]-0.0729*x[13]+0.5583*x[14]+0.2671*x[15]-0.4073*x[16]+0.4714*x[17]+0.6918*x[18]-0.9986*x[19]+0.7936*x[20]-0.3758*x[21]-0.896*x[22]-0.2583*x[23]-0.5221*x[24]-0.6295*x[25]+0.7937*x[26]+0.9225*x[27]-0.7165*x[28]+0.5563*x[29]-0.0183*x[30] <= 64.404)
@NLconstraint(m, e4, (-0.8211*x[1]*x[1])-0.8462*x[1]*x[2]-0.5432*x[1]*x[6]+0.2126*x[1]*x[7]+0.0539*x[1]*x[10]+0.0797*x[1]*x[11]-0.571*x[1]*x[12]+0.9016*x[1]*x[14]-0.6571*x[1]*x[15]-0.9995*x[1]*x[16]+0.3583*x[1]*x[17]+0.901*x[1]*x[18]+0.1617*x[1]*x[19]-0.0541*x[1]*x[20]+0.8013*x[1]*x[23]+0.9578*x[1]*x[24]+0.3607*x[1]*x[25]+0.1807*x[1]*x[26]+0.4103*x[1]*x[27]-0.4761*x[1]*x[28]+0.1816*x[1]*x[30]-0.6692*x[2]*x[3]-0.1808*x[2]*x[7]-0.8054*x[2]*x[10]+0.9729*x[2]*x[11]-0.0231*x[2]*x[13]+0.2975*x[2]*x[14]-0.4192*x[2]*x[15]-0.5585*x[2]*x[17]-0.6946*x[2]*x[18]+0.9346*x[2]*x[20]+0.4866*x[2]*x[21]+0.5177*x[2]*x[23]+0.78*x[2]*x[24]+0.8787*x[2]*x[25]-0.4614*x[2]*x[28]-0.1059*x[2]*x[29]+0.9239*x[2]*x[30]+0.8637*x[3]*x[3]-0.5374*x[3]*x[4]+0.1093*x[3]*x[5]+0.177*x[3]*x[6]-0.0635*x[3]*x[7]+0.6252*x[3]*x[10]-0.3294*x[3]*x[11]-0.7879*x[3]*x[12]-0.9204*x[3]*x[16]-0.5713*x[3]*x[17]-0.324*x[3]*x[20]+0.5617*x[3]*x[21]-0.0793*x[3]*x[22]-0.3708*x[3]*x[23]+0.6358*x[3]*x[24]+0.1551*x[3]*x[26]-0.2217*x[3]*x[27]-0.2763*x[3]*x[28]-0.9008*x[3]*x[29]+0.8545*x[3]*x[30]-0.3092*x[4]*x[7]-0.3806*x[4]*x[8]-0.7246*x[4]*x[10]-0.0458*x[4]*x[12]-0.8584*x[4]*x[16]-0.2938*x[4]*x[17]+0.798*x[4]*x[18]+0.9724*x[4]*x[20]+0.0198*x[4]*x[23]+0.8869*x[4]*x[24]-0.0094*x[4]*x[30]+0.5468*x[5]*x[6]+0.7136*x[5]*x[10]+0.9351*x[5]*x[11]+0.3701*x[5]*x[12]-0.5542*x[5]*x[17]+0.0037*x[5]*x[18]+0.581*x[5]*x[19]-0.2254*x[5]*x[20]-0.2686*x[5]*x[21]+0.285*x[5]*x[23]-0.4888*x[5]*x[25]-0.7527*x[5]*x[28]-0.2991*x[6]*x[12]+0.1678*x[6]*x[16]+0.1323*x[6]*x[17]-0.3444*x[6]*x[19]-0.8163*x[6]*x[20]+0.4779*x[6]*x[26]+0.7653*x[6]*x[30]-0.4938*x[7]*x[7]-0.213*x[7]*x[11]-0.3911*x[7]*x[16]-0.916*x[7]*x[23]+0.5816*x[7]*x[24]+0.6232*x[7]*x[25]+0.8135*x[7]*x[26]+0.704*x[7]*x[28]+0.7376*x[7]*x[29]+0.0816*x[8]*x[8]-0.0979*x[8]*x[9]-0.2088*x[8]*x[11]+0.9516*x[8]*x[12]+0.2921*x[8]*x[15]-0.9298*x[8]*x[16]-0.5243*x[8]*x[19]+0.2172*x[8]*x[21]-0.3945*x[8]*x[22]-0.528*x[8]*x[23]+0.7872*x[8]*x[24]+0.331*x[8]*x[25]+0.919*x[8]*x[26]-0.5753*x[8]*x[27]-0.4575*x[9]*x[9]+0.0448*x[9]*x[10]-0.3352*x[9]*x[11]-0.2489*x[9]*x[12]-0.2547*x[9]*x[14]+0.1996*x[9]*x[17]+0.1806*x[9]*x[20]+0.3513*x[9]*x[24]+0.1918*x[9]*x[25]-0.6978*x[9]*x[27]-0.5902*x[9]*x[29]+0.4777*x[9]*x[30]-0.5049*x[10]*x[11]-0.8315*x[10]*x[12]-0.743*x[10]*x[13]+0.1532*x[10]*x[16]+0.3515*x[10]*x[18]+0.3853*x[10]*x[19]-0.2811*x[10]*x[22]-0.7864*x[10]*x[25]-0.0718*x[10]*x[26]-0.6249*x[10]*x[29]+0.1339*x[11]*x[12]+0.5453*x[11]*x[19]-0.1457*x[11]*x[21]-0.1792*x[11]*x[22]-0.1333*x[11]*x[23]-0.6815*x[11]*x[25]+0.7455*x[11]*x[27]+0.4146*x[11]*x[28]-0.7617*x[11]*x[30]-0.1193*x[12]*x[12]-0.7647*x[12]*x[13]-0.5525*x[12]*x[15]+0.1414*x[12]*x[21]-0.5071*x[12]*x[22]-0.1675*x[12]*x[23]-0.6941*x[12]*x[24]-0.3094*x[12]*x[27]+0.4698*x[12]*x[29]+0.8975*x[12]*x[30]-0.7687*x[13]*x[13]+0.3768*x[13]*x[14]+0.2701*x[13]*x[20]-0.9256*x[13]*x[23]+0.7003*x[13]*x[24]-0.0122*x[13]*x[25]+0.7877*x[13]*x[27]-0.0361*x[14]*x[17]+0.6745*x[14]*x[19]+0.0246*x[14]*x[20]-0.6589*x[14]*x[22]-0.1748*x[14]*x[23]-0.1847*x[14]*x[24]-0.0968*x[14]*x[25]-0.0534*x[14]*x[27]-0.2253*x[14]*x[29]-0.1199*x[15]*x[16]-0.7026*x[15]*x[17]+0.76*x[15]*x[18]+0.7724*x[15]*x[19]-0.7525*x[15]*x[21]-0.3766*x[15]*x[22]-0.1526*x[15]*x[23]+0.3871*x[15]*x[27]-0.8992*x[15]*x[29]-0.4224*x[15]*x[30]+0.9788*x[16]*x[16]+0.0406*x[16]*x[17]-0.1575*x[16]*x[18]-0.1968*x[16]*x[19]+0.6766*x[16]*x[20]+0.1929*x[16]*x[22]-0.1614*x[16]*x[24]-0.4982*x[16]*x[25]+0.7033*x[16]*x[26]+0.7927*x[16]*x[27]+0.7026*x[16]*x[30]+0.358*x[17]*x[17]+0.2129*x[17]*x[24]+0.3488*x[17]*x[25]-0.5079*x[17]*x[28]-0.5466*x[17]*x[29]-0.9739*x[17]*x[30]-0.4671*x[18]*x[18]-0.5335*x[18]*x[21]+0.7005*x[18]*x[25]+0.9951*x[18]*x[26]-0.6689*x[18]*x[27]-0.7211*x[19]*x[22]-0.2679*x[19]*x[23]-0.5679*x[19]*x[25]-0.3158*x[19]*x[26]+0.9102*x[19]*x[27]-0.7758*x[19]*x[29]+0.3513*x[20]*x[20]-0.0245*x[20]*x[21]-0.7603*x[20]*x[22]+0.3247*x[20]*x[25]-0.2528*x[20]*x[27]+0.9142*x[20]*x[28]+0.0632*x[20]*x[29]+0.6471*x[20]*x[30]+0.1218*x[21]*x[21]+0.3849*x[21]*x[25]-0.2393*x[21]*x[27]-0.693*x[21]*x[28]+0.4834*x[21]*x[30]+0.3725*x[22]*x[22]+0.2517*x[22]*x[23]-0.5593*x[22]*x[24]-0.3721*x[22]*x[26]+0.8802*x[22]*x[27]-0.9392*x[22]*x[29]+0.129*x[23]*x[24]+0.9342*x[23]*x[27]+0.0239*x[23]*x[29]-0.2629*x[24]*x[24]+0.959*x[24]*x[25]+0.4175*x[24]*x[27]-0.3722*x[24]*x[30]-0.8848*x[25]*x[25]+0.9733*x[25]*x[26]+0.1652*x[26]*x[27]-0.2676*x[26]*x[30]-0.9199*x[27]*x[28]-0.7794*x[27]*x[29]-0.6641*x[29]*x[29]-0.72*x[30]*x[30]+0.7662*x[1]+0.7629*x[2]-0.4278*x[3]-0.4552*x[4]-0.6602*x[5]+0.0127*x[6]+0.082*x[7]+0.6419*x[8]-0.1631*x[9]-0.3114*x[10]+0.0934*x[11]-0.5826*x[12]-0.47*x[13]-0.8486*x[14]+0.8808*x[15]-0.3313*x[16]+0.0869*x[17]-0.2095*x[18]-0.7998*x[19]-0.4007*x[20]-0.5814*x[21]-0.0133*x[22]-0.7711*x[23]-0.6837*x[24]-0.9236*x[25]-0.5493*x[26]+0.8254*x[27]-0.5492*x[28]-0.2216*x[29]+0.5475*x[30] <= 27.408)
@NLconstraint(m, e5, 0.2675*x[1]*x[1]-0.7999*x[1]*x[3]+0.7193*x[1]*x[5]-0.7598*x[1]*x[7]+0.3155*x[1]*x[8]+0.5904*x[1]*x[9]-0.362*x[1]*x[10]-0.6588*x[1]*x[11]-0.2793*x[1]*x[12]+0.9705*x[1]*x[13]+0.7746*x[1]*x[14]-0.1945*x[1]*x[15]+0.3636*x[1]*x[16]+0.8397*x[1]*x[17]+0.1503*x[1]*x[18]+0.9933*x[1]*x[19]-0.2049*x[1]*x[22]-0.411*x[1]*x[24]-0.6812*x[1]*x[25]-0.4475*x[1]*x[26]-0.3235*x[1]*x[28]-0.1894*x[1]*x[29]+0.3939*x[1]*x[30]-0.9321*x[2]*x[2]-0.0262*x[2]*x[3]-0.3972*x[2]*x[5]-0.0057*x[2]*x[18]-0.2466*x[2]*x[20]-0.0168*x[2]*x[21]+0.9218*x[2]*x[24]+0.6955*x[2]*x[27]+0.7223*x[2]*x[29]+0.3076*x[2]*x[30]+0.2324*x[3]*x[5]-0.2427*x[3]*x[6]+0.4066*x[3]*x[7]-0.8172*x[3]*x[8]-0.1332*x[3]*x[9]+0.0734*x[3]*x[10]+0.4634*x[3]*x[11]+0.1852*x[3]*x[12]-0.3207*x[3]*x[13]+0.9979*x[3]*x[14]+0.6444*x[3]*x[16]-0.3353*x[3]*x[25]-0.2634*x[3]*x[26]+0.8877*x[3]*x[27]-0.4049*x[3]*x[28]-0.0526*x[3]*x[30]-0.7367*x[4]*x[11]+0.5742*x[4]*x[12]-0.2391*x[4]*x[13]-0.3056*x[4]*x[15]+0.1949*x[4]*x[17]+0.409*x[4]*x[19]+0.7201*x[4]*x[21]-0.9665*x[4]*x[22]+0.9643*x[4]*x[23]-0.5727*x[4]*x[25]+0.8215*x[4]*x[26]-0.0162*x[4]*x[27]+0.5654*x[4]*x[28]-0.8949*x[4]*x[30]+0.6055*x[5]*x[7]+0.7013*x[5]*x[9]-0.5022*x[5]*x[11]+0.6362*x[5]*x[15]-0.4786*x[5]*x[17]-0.7691*x[5]*x[18]-0.1781*x[5]*x[19]+0.1443*x[5]*x[20]-0.0749*x[5]*x[23]-0.5688*x[5]*x[25]-0.4524*x[5]*x[27]+0.7702*x[5]*x[30]+0.4092*x[6]*x[6]+0.4245*x[6]*x[7]-0.8181*x[6]*x[12]-0.7154*x[6]*x[14]+0.7433*x[6]*x[16]-0.3969*x[6]*x[20]-0.3552*x[6]*x[21]-0.7276*x[6]*x[22]-0.4817*x[6]*x[23]+0.8383*x[6]*x[24]+0.4587*x[6]*x[25]+0.3607*x[6]*x[26]-0.5342*x[6]*x[28]+0.1099*x[6]*x[29]+0.9524*x[6]*x[30]-0.6435*x[7]*x[10]+0.9171*x[7]*x[12]+0.6012*x[7]*x[13]+0.6758*x[7]*x[15]-0.6156*x[7]*x[17]-0.406*x[7]*x[19]-0.3605*x[7]*x[21]+0.6061*x[7]*x[22]+0.8642*x[7]*x[23]-0.2381*x[7]*x[24]-0.5306*x[7]*x[25]+0.881*x[7]*x[26]-0.2658*x[7]*x[27]-0.6301*x[7]*x[28]-0.2508*x[7]*x[30]-0.399*x[8]*x[9]-0.6758*x[8]*x[11]-0.1862*x[8]*x[12]-0.5705*x[8]*x[14]-0.6345*x[8]*x[16]-0.5624*x[8]*x[20]+0.05*x[8]*x[21]-0.1841*x[8]*x[22]-0.4929*x[8]*x[23]+0.0623*x[8]*x[24]+0.0333*x[8]*x[29]+0.4691*x[8]*x[30]+0.514*x[9]*x[12]-0.8342*x[9]*x[13]+0.1592*x[9]*x[15]+0.9417*x[9]*x[16]-0.4271*x[9]*x[23]-0.5418*x[9]*x[25]-0.583*x[9]*x[28]-0.4887*x[9]*x[29]-0.4039*x[10]*x[10]+0.4067*x[10]*x[12]-0.534*x[10]*x[14]+0.9236*x[10]*x[15]+0.2671*x[10]*x[18]-0.0119*x[10]*x[19]+0.3356*x[10]*x[27]-0.2126*x[10]*x[28]-0.966*x[10]*x[29]+0.6492*x[10]*x[30]+0.675*x[11]*x[11]-0.3162*x[11]*x[12]-0.9719*x[11]*x[16]-0.3136*x[11]*x[18]-0.9923*x[11]*x[21]+0.8114*x[11]*x[23]-0.6655*x[11]*x[26]+0.1742*x[11]*x[27]-0.0341*x[11]*x[30]-0.1818*x[12]*x[12]+0.0084*x[12]*x[14]+0.014*x[12]*x[17]-0.8781*x[12]*x[24]+0.5497*x[12]*x[26]+0.6955*x[12]*x[27]+0.73*x[12]*x[28]-0.3793*x[12]*x[30]+0.9035*x[13]*x[13]+0.8204*x[13]*x[14]+0.9535*x[13]*x[16]-0.0128*x[13]*x[17]+0.1914*x[13]*x[19]+0.0849*x[13]*x[23]+0.9866*x[13]*x[25]+0.6072*x[13]*x[27]+0.3641*x[13]*x[30]+0.8445*x[14]*x[14]+0.6049*x[14]*x[20]-0.5912*x[14]*x[21]-0.8631*x[14]*x[24]-0.3433*x[14]*x[25]-0.8626*x[14]*x[29]-0.2346*x[15]*x[15]-0.9895*x[15]*x[16]+0.2522*x[15]*x[21]-0.1823*x[15]*x[22]+0.9769*x[15]*x[23]+0.1781*x[15]*x[25]-0.4517*x[15]*x[26]+0.2602*x[15]*x[27]+0.2781*x[15]*x[29]+0.9751*x[15]*x[30]-0.847*x[16]*x[16]-0.6062*x[16]*x[19]-0.4216*x[16]*x[20]+0.4856*x[16]*x[24]+0.1916*x[16]*x[25]-0.3966*x[16]*x[30]-0.0261*x[17]*x[18]-0.9691*x[17]*x[21]-0.3352*x[17]*x[22]+0.0466*x[17]*x[23]-0.5686*x[17]*x[24]+0.6966*x[17]*x[25]-0.6523*x[17]*x[26]-0.0439*x[17]*x[28]-0.5659*x[18]*x[18]+0.5056*x[18]*x[19]+0.0343*x[18]*x[20]+0.7522*x[18]*x[22]+0.2182*x[18]*x[23]+0.9982*x[18]*x[24]+0.9892*x[18]*x[28]-0.7007*x[18]*x[30]-0.4685*x[19]*x[19]+0.47*x[19]*x[21]+0.2758*x[19]*x[22]+0.3757*x[19]*x[25]+0.2062*x[19]*x[26]-0.4724*x[19]*x[28]-0.3784*x[19]*x[29]+0.3756*x[19]*x[30]+0.5954*x[20]*x[20]-0.3809*x[20]*x[21]-0.6679*x[20]*x[28]-0.0981*x[20]*x[29]+0.4837*x[21]*x[21]+0.1985*x[21]*x[23]-0.6652*x[21]*x[29]-0.7798*x[21]*x[30]-0.2547*x[22]*x[22]-0.9309*x[22]*x[23]-0.6698*x[22]*x[24]-0.3634*x[22]*x[26]-0.7476*x[22]*x[27]-0.5411*x[22]*x[29]-0.9408*x[23]*x[28]+0.9*x[23]*x[29]-0.6587*x[23]*x[30]-0.0245*x[24]*x[24]+0.7022*x[24]*x[26]+0.7669*x[24]*x[28]+0.2911*x[24]*x[30]+0.3781*x[25]*x[26]+0.5346*x[25]*x[28]-0.0612*x[25]*x[29]+0.0491*x[26]*x[26]-0.7014*x[26]*x[30]+0.8744*x[27]*x[28]-0.5857*x[27]*x[30]-0.3122*x[28]*x[28]-0.9611*x[28]*x[30]-0.7503*x[29]*x[29]+0.962*x[29]*x[30]-0.44*x[30]*x[30]+0.6799*x[1]+0.2537*x[2]+0.5786*x[3]-0.6911*x[4]-0.7588*x[5]+0.8295*x[6]+0.8309*x[7]+0.0808*x[8]-0.8617*x[9]+0.0306*x[10]+0.5335*x[11]-0.746*x[12]+0.807*x[13]+0.6738*x[14]-0.9284*x[15]-0.8018*x[16]+0.006*x[17]-0.9269*x[18]-0.1491*x[19]-0.3504*x[20]-0.8721*x[21]-0.9373*x[22]-0.6401*x[23]+0.2282*x[24]-0.4688*x[25]-0.2698*x[26]+0.2165*x[27]-0.4391*x[28]+0.8863*x[29]+0.9146*x[30] <= 52.707)
@NLconstraint(m, e6, 0.0254*x[1]*x[7]-0.1723*x[1]*x[3]-0.0822*x[1]*x[8]-0.645*x[1]*x[9]-0.5759*x[1]*x[13]-0.9422*x[1]*x[14]-0.8288*x[1]*x[15]+0.9377*x[1]*x[16]+0.9538*x[1]*x[19]+0.6597*x[1]*x[20]+0.9345*x[1]*x[21]+0.711*x[1]*x[22]-0.7921*x[1]*x[23]-0.3895*x[1]*x[24]-0.3341*x[1]*x[26]-0.8814*x[1]*x[27]-0.0356*x[1]*x[29]-0.9171*x[2]*x[4]-0.8512*x[2]*x[6]-0.834*x[2]*x[7]-0.8959*x[2]*x[8]+0.5974*x[2]*x[11]+0.6678*x[2]*x[12]+0.8297*x[2]*x[17]-0.9808*x[2]*x[19]-0.6811*x[2]*x[20]+0.2989*x[2]*x[26]-0.4835*x[2]*x[29]+0.7792*x[2]*x[30]-0.941*x[3]*x[4]-0.3646*x[3]*x[7]+0.856*x[3]*x[9]+0.7087*x[3]*x[10]+0.1414*x[3]*x[14]+0.5286*x[3]*x[20]-0.7835*x[3]*x[21]-0.3114*x[3]*x[23]-0.7815*x[3]*x[24]+0.734*x[3]*x[26]+0.5085*x[3]*x[27]+0.5981*x[3]*x[30]+0.633*x[4]*x[4]-0.4563*x[4]*x[5]+0.7289*x[4]*x[7]+0.9118*x[4]*x[12]-0.5188*x[4]*x[14]-0.7825*x[4]*x[15]+0.3872*x[4]*x[17]+0.0129*x[4]*x[18]+0.4329*x[4]*x[20]-0.9905*x[4]*x[24]+0.7972*x[4]*x[25]-0.2809*x[4]*x[26]-0.6177*x[4]*x[27]+0.0102*x[5]*x[5]+0.1172*x[5]*x[7]-0.9756*x[5]*x[9]+0.677*x[5]*x[10]-0.1069*x[5]*x[13]-0.3358*x[5]*x[14]+0.5551*x[5]*x[19]+0.164*x[5]*x[21]+0.1462*x[5]*x[25]+0.6082*x[5]*x[28]-0.0711*x[5]*x[29]+0.7242*x[5]*x[30]+0.249*x[6]*x[6]-0.047*x[6]*x[11]-0.0037*x[6]*x[14]+0.314*x[6]*x[18]+0.4279*x[6]*x[20]-0.8002*x[6]*x[22]-0.9504*x[6]*x[24]+0.9068*x[6]*x[25]+0.8313*x[6]*x[26]+0.2098*x[6]*x[29]-0.0937*x[6]*x[30]-0.5333*x[7]*x[7]+0.3042*x[7]*x[8]+0.8206*x[7]*x[10]-0.7687*x[7]*x[11]+0.7422*x[7]*x[13]-0.311*x[7]*x[14]+0.526*x[7]*x[15]-0.1606*x[7]*x[16]-0.356*x[7]*x[17]-0.0656*x[7]*x[18]-0.7805*x[7]*x[19]+0.6131*x[7]*x[20]-0.5999*x[7]*x[22]+0.1381*x[7]*x[24]+0.6933*x[7]*x[25]-0.0112*x[7]*x[28]+0.2043*x[7]*x[30]-0.5548*x[8]*x[8]-0.2925*x[8]*x[9]-0.194*x[8]*x[10]+0.1153*x[8]*x[11]-0.8563*x[8]*x[17]+0.3717*x[8]*x[21]-0.3518*x[8]*x[23]-0.302*x[8]*x[24]-0.8977*x[8]*x[25]-0.6773*x[8]*x[27]-0.2304*x[9]*x[9]+0.103*x[9]*x[13]+0.4765*x[9]*x[15]+0.3865*x[9]*x[16]+0.6372*x[9]*x[18]+0.1367*x[9]*x[20]+0.2566*x[9]*x[21]+0.5973*x[9]*x[25]+0.81*x[9]*x[26]+0.1848*x[9]*x[28]+0.0296*x[9]*x[29]-0.7857*x[9]*x[30]+0.3915*x[10]*x[12]+0.2324*x[10]*x[15]+0.8136*x[10]*x[16]-0.0033*x[10]*x[17]+0.2781*x[10]*x[18]+0.0927*x[10]*x[19]+0.3577*x[10]*x[23]-0.1774*x[10]*x[26]-0.6762*x[10]*x[28]+0.5997*x[10]*x[30]+0.1268*x[11]*x[11]+0.2476*x[11]*x[14]-0.4597*x[11]*x[17]+0.676*x[11]*x[19]+0.0293*x[11]*x[24]-0.7005*x[11]*x[27]+0.9008*x[11]*x[28]+0.7059*x[11]*x[30]-0.1676*x[12]*x[12]+0.8752*x[12]*x[13]+0.8661*x[12]*x[15]+0.7676*x[12]*x[16]+0.5787*x[12]*x[20]+0.5001*x[12]*x[25]+0.0844*x[12]*x[26]-0.0359*x[12]*x[27]-0.5939*x[12]*x[28]+0.7867*x[13]*x[13]+0.8819*x[13]*x[16]+0.0221*x[13]*x[18]-0.3606*x[13]*x[19]+0.6023*x[13]*x[20]+0.8041*x[13]*x[24]+0.7355*x[13]*x[25]+0.7056*x[13]*x[29]+0.1423*x[14]*x[15]+0.5348*x[14]*x[18]-0.0299*x[14]*x[19]-0.7148*x[14]*x[21]-0.4805*x[14]*x[23]-0.1721*x[14]*x[25]+0.6632*x[14]*x[26]-0.3057*x[14]*x[28]-0.8813*x[14]*x[29]-0.5478*x[15]*x[15]-0.2284*x[15]*x[17]-0.0272*x[15]*x[19]+0.1897*x[15]*x[21]+0.4108*x[15]*x[22]+0.712*x[15]*x[24]-0.2922*x[15]*x[29]-0.7102*x[15]*x[30]-0.7511*x[16]*x[16]+0.361*x[16]*x[18]-0.2335*x[16]*x[19]-0.7799*x[16]*x[21]-0.4807*x[16]*x[22]-0.6129*x[16]*x[23]-0.8068*x[16]*x[25]-0.6299*x[16]*x[26]+0.1039*x[16]*x[27]-0.7462*x[16]*x[30]-0.4159*x[17]*x[17]+0.6688*x[17]*x[19]-0.5626*x[17]*x[21]-0.1358*x[17]*x[25]-0.7601*x[17]*x[26]+0.8357*x[17]*x[27]-0.6957*x[17]*x[29]-0.5287*x[17]*x[30]+0.2849*x[18]*x[18]+0.2157*x[18]*x[22]+0.802*x[18]*x[23]+0.8868*x[18]*x[25]+0.8218*x[18]*x[28]+0.6632*x[18]*x[30]+0.002*x[19]*x[19]-0.2401*x[19]*x[21]+0.6599*x[19]*x[22]+0.6833*x[19]*x[23]-0.5329*x[19]*x[24]-0.4211*x[19]*x[26]-0.1502*x[20]*x[20]-0.8262*x[20]*x[21]-0.6008*x[20]*x[23]+0.2456*x[20]*x[25]+0.0449*x[21]*x[21]-0.9935*x[21]*x[22]-0.7717*x[21]*x[23]+0.9102*x[21]*x[25]-0.3655*x[21]*x[27]+0.0848*x[21]*x[30]-0.4774*x[22]*x[22]+0.6698*x[22]*x[23]+0.6486*x[22]*x[25]-0.4979*x[22]*x[26]-0.0764*x[22]*x[27]+0.1506*x[22]*x[28]-0.825*x[22]*x[29]-0.2307*x[23]*x[23]+0.4187*x[23]*x[24]+0.5367*x[23]*x[25]-0.0484*x[23]*x[26]-0.6332*x[23]*x[28]-0.6054*x[23]*x[29]-0.5842*x[23]*x[30]+0.3462*x[24]*x[28]+0.764*x[24]*x[30]+0.7931*x[25]*x[27]-0.8348*x[25]*x[28]-0.1732*x[25]*x[29]-0.0054*x[25]*x[30]-0.2774*x[26]*x[26]+0.7657*x[26]*x[27]+0.4892*x[26]*x[28]+0.2819*x[26]*x[29]+0.1089*x[27]*x[27]-0.6211*x[27]*x[28]-0.1953*x[27]*x[30]-0.4143*x[28]*x[28]+0.7819*x[28]*x[30]-0.2165*x[29]*x[29]-0.6039*x[29]*x[30]+0.718*x[30]*x[30]+0.961*x[1]+0.0737*x[2]-0.5711*x[3]-0.6584*x[4]-0.3072*x[5]+0.7807*x[6]-0.4983*x[7]-0.0735*x[8]+0.2285*x[9]+0.5584*x[10]-0.8785*x[11]+0.3708*x[12]-0.5631*x[13]-0.7939*x[14]+0.9096*x[15]-0.3808*x[16]+0.1726*x[17]+0.0895*x[18]+0.6723*x[19]-0.6702*x[20]-0.1998*x[21]-0.8209*x[22]+0.3728*x[23]-0.6711*x[24]-0.1333*x[25]+0.0154*x[26]+0.9591*x[27]+0.7901*x[28]-0.6773*x[29]+0.5712*x[30] <= 46.595)
@NLconstraint(m, e7, 0.9809*x[1]*x[2]-0.0326*x[1]*x[1]+0.5725*x[1]*x[3]-0.7051*x[1]*x[4]+0.2552*x[1]*x[5]-0.447*x[1]*x[7]+0.3717*x[1]*x[9]+0.9798*x[1]*x[12]-0.1733*x[1]*x[13]-0.8934*x[1]*x[14]-0.505*x[1]*x[17]+0.888*x[1]*x[24]+0.8566*x[1]*x[27]+0.428*x[1]*x[28]-0.707*x[1]*x[30]+0.7013*x[2]*x[2]-0.5679*x[2]*x[4]+0.289*x[2]*x[5]-0.9137*x[2]*x[6]-0.5298*x[2]*x[7]+0.9129*x[2]*x[8]-0.3049*x[2]*x[12]-0.8668*x[2]*x[14]+0.0342*x[2]*x[16]+0.8241*x[2]*x[18]+0.2012*x[2]*x[19]+0.2883*x[2]*x[20]-0.7727*x[2]*x[22]-0.1365*x[2]*x[25]-0.9148*x[2]*x[27]-0.3786*x[3]*x[3]-0.091*x[3]*x[7]+0.8784*x[3]*x[8]+0.0274*x[3]*x[13]+0.0688*x[3]*x[14]+0.5101*x[3]*x[16]+0.0092*x[3]*x[17]-0.7038*x[3]*x[20]+0.1781*x[3]*x[21]-0.0005*x[3]*x[22]-0.7421*x[3]*x[23]-0.6722*x[3]*x[25]-0.332*x[3]*x[27]-0.7263*x[4]*x[6]-0.4889*x[4]*x[7]-0.6927*x[4]*x[8]+0.8604*x[4]*x[11]-0.5693*x[4]*x[14]+0.5157*x[4]*x[15]+0.6092*x[4]*x[22]+0.6001*x[4]*x[23]-0.2573*x[4]*x[30]+0.8795*x[5]*x[5]+0.6549*x[5]*x[11]-0.3552*x[5]*x[12]+0.8765*x[5]*x[13]-0.8739*x[5]*x[20]+0.9227*x[5]*x[22]+0.5066*x[5]*x[23]-0.6022*x[5]*x[24]-0.9271*x[5]*x[28]-0.3899*x[5]*x[30]+0.2189*x[6]*x[6]-0.9445*x[6]*x[8]-0.6042*x[6]*x[9]+0.7063*x[6]*x[16]+0.8012*x[6]*x[19]-0.2783*x[6]*x[20]-0.3395*x[6]*x[22]-0.815*x[6]*x[24]+0.6589*x[6]*x[26]-0.2593*x[6]*x[27]-0.7958*x[6]*x[30]+0.1866*x[7]*x[9]-0.503*x[7]*x[15]+0.7875*x[7]*x[16]+0.7766*x[7]*x[17]+0.1751*x[7]*x[19]-0.4159*x[7]*x[21]+0.401*x[7]*x[22]-0.0013*x[7]*x[23]-0.8395*x[7]*x[27]-0.9597*x[7]*x[28]-0.7748*x[7]*x[29]+0.5212*x[8]*x[8]+0.5855*x[8]*x[9]+0.2831*x[8]*x[10]+0.9107*x[8]*x[11]-0.0801*x[8]*x[12]-0.856*x[8]*x[14]+0.6302*x[8]*x[17]-0.5105*x[8]*x[21]+0.7832*x[8]*x[25]+0.419*x[8]*x[28]+0.9809*x[9]*x[9]-0.3382*x[9]*x[11]-0.1191*x[9]*x[16]-0.8154*x[9]*x[17]+0.1554*x[9]*x[18]+0.0016*x[9]*x[22]-0.623*x[9]*x[23]+0.6661*x[9]*x[24]-0.2023*x[9]*x[27]+0.3436*x[9]*x[28]-0.9554*x[9]*x[29]-0.0373*x[10]*x[10]+0.4032*x[10]*x[12]-0.5303*x[10]*x[13]-0.7427*x[10]*x[15]+0.4592*x[10]*x[19]+0.7213*x[10]*x[20]-0.6686*x[10]*x[21]-0.0746*x[10]*x[23]-0.4794*x[10]*x[24]+0.5955*x[10]*x[26]+0.9727*x[10]*x[27]+0.2301*x[10]*x[28]+0.1171*x[10]*x[29]+0.5745*x[11]*x[11]+0.2002*x[11]*x[12]+0.9709*x[11]*x[13]-0.6466*x[11]*x[14]+0.5189*x[11]*x[15]-0.3492*x[11]*x[16]-0.7136*x[11]*x[17]-0.7884*x[11]*x[18]+0.9344*x[11]*x[19]-0.9373*x[11]*x[20]-0.4385*x[11]*x[21]+0.7174*x[11]*x[22]+0.7472*x[11]*x[24]-0.4351*x[11]*x[25]+0.1737*x[11]*x[26]-0.7392*x[11]*x[27]-0.8856*x[11]*x[29]-0.5665*x[11]*x[30]-0.1525*x[12]*x[12]-0.8098*x[12]*x[16]-0.6863*x[12]*x[18]-0.0277*x[12]*x[19]+0.0956*x[12]*x[20]-0.8222*x[12]*x[23]-0.0973*x[12]*x[25]-0.4901*x[12]*x[26]-0.9587*x[12]*x[28]+0.8661*x[12]*x[29]-0.537*x[13]*x[13]+0.6051*x[13]*x[14]+0.5639*x[13]*x[15]+0.2228*x[13]*x[18]-0.7697*x[13]*x[19]+0.4761*x[13]*x[20]+0.7955*x[13]*x[21]-0.1278*x[13]*x[22]+0.1071*x[13]*x[26]-0.0205*x[13]*x[27]-0.0866*x[13]*x[30]+0.494*x[14]*x[14]-0.2783*x[14]*x[19]-0.2936*x[14]*x[22]-0.2878*x[14]*x[25]+0.3774*x[14]*x[28]+0.7203*x[14]*x[30]-0.9498*x[15]*x[15]-0.007*x[15]*x[16]-0.254*x[15]*x[21]+0.1062*x[15]*x[28]-0.6897*x[16]*x[19]+0.4578*x[16]*x[20]+0.0488*x[16]*x[21]-0.745*x[16]*x[22]-0.4543*x[16]*x[23]-0.5136*x[16]*x[26]-0.3744*x[16]*x[29]-0.9936*x[16]*x[30]-0.3903*x[17]*x[17]-0.3345*x[17]*x[18]+0.5483*x[17]*x[20]+0.051*x[17]*x[21]-0.5015*x[17]*x[22]-0.3806*x[17]*x[23]+0.7582*x[17]*x[25]+0.1447*x[17]*x[26]-0.4759*x[17]*x[28]-0.939*x[17]*x[29]+0.6219*x[17]*x[30]-0.9191*x[18]*x[18]-0.4216*x[18]*x[20]-0.3417*x[18]*x[24]-0.7892*x[18]*x[25]+0.7199*x[18]*x[26]-0.4206*x[18]*x[29]+0.6803*x[19]*x[19]-0.8951*x[19]*x[20]-0.8891*x[19]*x[22]+0.381*x[19]*x[24]+0.8634*x[19]*x[25]-0.6081*x[19]*x[26]+0.7855*x[19]*x[27]+0.662*x[19]*x[30]-0.8016*x[20]*x[20]+0.9531*x[20]*x[21]-0.5291*x[20]*x[23]-0.8143*x[20]*x[24]+0.6167*x[20]*x[26]-0.2911*x[20]*x[28]+0.4147*x[20]*x[29]-0.8101*x[20]*x[30]-0.2021*x[21]*x[21]+0.7482*x[21]*x[23]+0.041*x[21]*x[25]-0.3397*x[21]*x[27]+0.5935*x[21]*x[28]+0.2268*x[22]*x[22]-0.5675*x[22]*x[24]+0.3429*x[22]*x[27]-0.4577*x[22]*x[29]+0.7185*x[22]*x[30]+0.715*x[23]*x[23]-0.2478*x[23]*x[26]+0.071*x[23]*x[27]-0.1425*x[23]*x[29]+0.7036*x[23]*x[30]-0.6581*x[24]*x[24]+0.8063*x[24]*x[26]+0.1988*x[24]*x[28]+0.55*x[24]*x[29]-0.0852*x[24]*x[30]+0.8678*x[25]*x[26]-0.3244*x[25]*x[30]-0.6216*x[26]*x[27]-0.4646*x[26]*x[28]+0.2314*x[26]*x[29]-0.3786*x[26]*x[30]-0.2168*x[27]*x[28]-0.2549*x[27]*x[30]+0.0993*x[28]*x[28]-0.9529*x[28]*x[29]-0.3275*x[28]*x[30]-0.9598*x[30]*x[30]+0.2982*x[1]-0.1051*x[2]-0.6935*x[3]+0.8059*x[4]-0.8956*x[5]-0.7159*x[6]-0.1568*x[7]+0.1175*x[8]-0.7984*x[9]-0.8277*x[10]-0.1805*x[11]-0.4163*x[12]+0.8163*x[13]-0.0319*x[14]-0.9973*x[15]+0.1633*x[16]-0.5178*x[17]+0.3729*x[18]+0.9978*x[19]+0.116*x[20]-0.9543*x[21]-0.1839*x[22]-0.5405*x[23]-0.9275*x[24]-0.8809*x[25]+0.4937*x[26]-0.1902*x[27]+0.168*x[28]+0.4038*x[29]+0.6007*x[30] <= 91.404)


# ----- Objective ----- #
@objective(m, Min, x[31])

m = m 		 # model get returned when including this script. 
