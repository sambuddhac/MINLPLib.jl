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
@NLconstraint(m, e1, -(1.2871*x[1]*x[5]-0.8953*x[1]*x[12]-1.2742*x[1]*x[14]+1.3248*x[2]*x[2]-1.0415*x[2]*x[3]+0.9667*x[2]*x[4]-0.1849*x[2]*x[5]+1.6306*x[2]*x[6]-0.964*x[2]*x[8]-0.5246*x[2]*x[9]+1.0674*x[2]*x[10]+1.963*x[2]*x[11]-1.1491*x[2]*x[17]-0.1184*x[3]*x[6]-0.4162*x[3]*x[11]-0.5624*x[3]*x[17]+0.5878*x[3]*x[19]+0.4155*x[4]*x[8]-0.5919*x[4]*x[9]+1.1935*x[4]*x[12]-0.2344*x[4]*x[14]+1.4148*x[4]*x[17]-0.42*x[5]*x[9]+1.8633*x[5]*x[17]-0.5642*x[5]*x[18]+0.8765*x[5]*x[19]+0.5145*x[6]*x[6]-1.1965*x[6]*x[7]+0.3559*x[6]*x[14]-0.2564*x[6]*x[15]-0.0435*x[6]*x[20]+1.9663*x[7]*x[12]-0.914*x[7]*x[15]+0.3176*x[7]*x[16]+0.711*x[8]*x[13]+0.5944*x[9]*x[9]-1.651*x[9]*x[13]-0.9838*x[9]*x[14]+0.4257*x[10]*x[12]+0.732*x[10]*x[13]-0.1848*x[10]*x[16]+0.5944*x[10]*x[18]-1.5456*x[10]*x[19]-1.8758*x[11]*x[11]-1.2626*x[11]*x[13]-1.5307*x[11]*x[14]-0.3621*x[11]*x[17]-0.6273*x[12]*x[13]+0.0926*x[12]*x[17]+1.9721*x[15]*x[16]+1.5207*x[16]*x[18]+0.0616*x[17]*x[18]-0.8113*x[1]+0.3038*x[2]+0.8093*x[3]+0.5277*x[4]+0.7849*x[5]+0.6706*x[6]+0.0152*x[7]-0.009*x[8]+0.0082*x[9]+0.5372*x[10]-0.2333*x[11]-0.8164*x[12]+0.8521*x[13]+0.4163*x[14]+0.6625*x[15]+0.6022*x[16]+0.1782*x[17]+0.63*x[18]+0.4385*x[19]+0.9963*x[20])+x[21] == 0.0)
@NLconstraint(m, e2, 1.4969*x[1]*x[4]-0.6637*x[1]*x[3]-1.0729*x[1]*x[10]-0.1447*x[2]*x[4]-0.9224*x[2]*x[6]+0.2876*x[2]*x[17]-1.9282*x[2]*x[18]+1.4121*x[2]*x[19]+1.3342*x[3]*x[5]-1.983*x[3]*x[6]-1.2019*x[3]*x[10]+0.4809*x[3]*x[12]+0.8061*x[3]*x[19]+0.5431*x[3]*x[20]+0.4144*x[4]*x[5]+0.994*x[4]*x[17]-0.6546*x[4]*x[19]-1.5013*x[4]*x[20]-0.4681*x[5]*x[7]+0.6107*x[5]*x[10]-0.057*x[5]*x[16]-1.6895*x[6]*x[10]-1.8722*x[6]*x[12]+1.175*x[6]*x[18]-0.4765*x[7]*x[11]+0.8778*x[7]*x[16]-1.1278*x[7]*x[19]+1.6251*x[8]*x[9]+0.6911*x[8]*x[11]-1.9009*x[9]*x[10]-0.2845*x[9]*x[16]-1.6941*x[10]*x[10]-1.3755*x[10]*x[11]+0.4721*x[10]*x[15]+1.9514*x[10]*x[16]-1.3761*x[10]*x[18]-0.4616*x[10]*x[19]-0.7417*x[11]*x[15]-0.0195*x[12]*x[16]+1.7735*x[12]*x[17]-1.9912*x[13]*x[14]+1.0452*x[13]*x[18]-1.0141*x[14]*x[15]-0.8118*x[14]*x[17]-0.3494*x[14]*x[18]+0.8835*x[14]*x[19]-1.3037*x[15]*x[17]+1.8712*x[15]*x[19]-0.8121*x[15]*x[20]-0.0764*x[16]*x[18]+0.2259*x[18]*x[19]-1.5161*x[19]*x[19]-0.0037*x[1]-0.4974*x[2]-0.1368*x[3]-0.663*x[4]-0.3471*x[5]-0.9665*x[6]-0.6331*x[7]-0.0998*x[8]+0.9348*x[9]-0.5585*x[10]-0.1588*x[11]+0.3535*x[12]-0.5013*x[13]+0.5619*x[14]+0.6594*x[15]-0.6765*x[16]+0.8412*x[17]-0.6171*x[18]+0.5953*x[19]+0.9679*x[20] <= 88.419)
@NLconstraint(m, e3, 1.5971*x[1]*x[5]+0.2896*x[1]*x[9]+1.328*x[1]*x[18]+0.327*x[2]*x[2]-0.1663*x[2]*x[4]-1.007*x[2]*x[9]+1.6463*x[2]*x[10]-0.1286*x[2]*x[14]-0.0595*x[2]*x[18]-1.1592*x[2]*x[19]+0.6122*x[3]*x[4]-0.6379*x[3]*x[5]+1.9924*x[3]*x[8]+1.831*x[3]*x[9]-1.0454*x[3]*x[12]+0.7138*x[3]*x[18]+0.388*x[4]*x[10]-0.7374*x[4]*x[13]+0.8911*x[4]*x[16]-0.2319*x[5]*x[6]-1.598*x[5]*x[8]+1.6647*x[5]*x[13]+0.9576*x[6]*x[14]-0.7583*x[7]*x[12]+0.3628*x[7]*x[15]-1.7606*x[7]*x[20]-1.6463*x[8]*x[11]-1.0522*x[8]*x[13]-0.8122*x[8]*x[15]-1.3906*x[8]*x[18]-1.5988*x[9]*x[12]+1.209*x[9]*x[13]-0.6655*x[9]*x[16]-1.9038*x[9]*x[17]+0.9673*x[9]*x[20]+0.4996*x[11]*x[12]+0.5374*x[11]*x[14]-1.7501*x[11]*x[18]+0.9771*x[11]*x[19]-0.4576*x[12]*x[12]+0.7462*x[12]*x[14]-0.3494*x[12]*x[15]-1.1394*x[12]*x[20]-1.0033*x[13]*x[13]-0.1191*x[13]*x[18]+1.247*x[14]*x[16]-1.6191*x[15]*x[15]+0.8143*x[15]*x[17]+0.0803*x[18]*x[18]+0.8768*x[18]*x[19]+0.9388*x[19]*x[19]+0.0528*x[19]*x[20]+0.0104*x[1]-0.6145*x[2]+0.3569*x[3]-0.0835*x[4]-0.1778*x[5]+0.1688*x[6]-0.6302*x[7]+0.0573*x[8]+0.8851*x[9]+0.9515*x[10]-0.0604*x[11]-0.8915*x[12]-0.0968*x[13]-0.5954*x[14]-0.902*x[15]+0.9315*x[16]+0.4294*x[17]+0.7398*x[18]-0.6759*x[19]-0.0166*x[20] <= 65.88)
@NLconstraint(m, e4, 1.6355*x[1]*x[7]-0.6342*x[1]*x[11]+0.288*x[1]*x[17]-0.4357*x[2]*x[4]-1.79*x[2]*x[5]+0.9945*x[2]*x[6]+1.646*x[2]*x[11]-1.2117*x[2]*x[12]+1.369*x[2]*x[15]-1.2149*x[2]*x[17]-1.9026*x[2]*x[20]-0.4843*x[3]*x[4]-1.8646*x[3]*x[6]+0.4833*x[3]*x[8]-0.4773*x[3]*x[11]-1.3537*x[3]*x[13]+1.2891*x[3]*x[15]-0.5774*x[3]*x[16]+1.9969*x[4]*x[6]+1.0736*x[4]*x[15]+0.1465*x[4]*x[18]-1.58*x[4]*x[19]+1.7416*x[5]*x[5]-0.2822*x[5]*x[6]-1.6444*x[5]*x[8]-1.4441*x[5]*x[14]-0.081*x[5]*x[18]-1.7041*x[7]*x[7]-0.5135*x[7]*x[9]-1.25*x[7]*x[10]+0.5248*x[7]*x[15]+0.0977*x[7]*x[16]+1.8566*x[8]*x[10]+1.5264*x[8]*x[11]-1.1412*x[8]*x[12]+0.9133*x[8]*x[13]-0.9546*x[8]*x[17]+1.0433*x[8]*x[19]-1.1983*x[9]*x[10]+1.5764*x[9]*x[12]-1.0622*x[9]*x[13]-0.8948*x[9]*x[20]-1.4341*x[10]*x[15]-0.0355*x[11]*x[13]+0.0805*x[12]*x[16]-1.1114*x[12]*x[18]+0.0442*x[13]*x[15]-1.615*x[14]*x[15]+0.284*x[14]*x[16]-0.8044*x[15]*x[18]+1.2022*x[17]*x[18]+0.7363*x[19]*x[20]+0.9241*x[1]+0.9873*x[2]+0.5992*x[3]+0.8133*x[4]+0.4239*x[5]-0.1981*x[6]+0.5006*x[7]-0.5385*x[8]+0.1593*x[9]-0.0871*x[10]-0.9382*x[11]-0.0148*x[12]-0.4904*x[13]+0.5096*x[14]-0.4809*x[15]-0.4848*x[16]+0.3062*x[17]+0.9318*x[18]-0.1853*x[19]+0.5946*x[20] <= 0.011)
@NLconstraint(m, e5, 1.0756*x[1]*x[6]-0.2715*x[1]*x[12]+0.9367*x[1]*x[13]-0.1951*x[1]*x[14]+1.1552*x[2]*x[10]+1.5268*x[2]*x[14]-0.0368*x[2]*x[16]-1.6967*x[2]*x[17]-0.6452*x[2]*x[20]-0.961*x[3]*x[7]-1.6975*x[3]*x[9]+0.068*x[3]*x[12]-0.5934*x[3]*x[15]+0.816*x[4]*x[7]-0.0439*x[4]*x[10]+0.2156*x[4]*x[17]+0.4846*x[4]*x[18]-0.6318*x[5]*x[6]+1.2849*x[5]*x[9]-0.5381*x[5]*x[15]+0.3521*x[5]*x[20]+0.4291*x[6]*x[10]-0.0539*x[7]*x[11]-0.3175*x[7]*x[12]+1.6705*x[7]*x[14]-1.5327*x[7]*x[15]+0.4177*x[7]*x[18]+1.9647*x[7]*x[19]+0.5044*x[8]*x[9]-0.7283*x[8]*x[12]+1.5223*x[8]*x[13]-0.9697*x[8]*x[14]+0.0109*x[8]*x[17]-1.5603*x[9]*x[10]+1.1111*x[9]*x[12]-1.8319*x[9]*x[15]-0.7956*x[10]*x[15]-1.9951*x[10]*x[19]+1.2308*x[11]*x[13]+1.1905*x[11]*x[14]+1.3445*x[11]*x[15]-0.6441*x[11]*x[19]+0.9541*x[11]*x[20]-1.0312*x[12]*x[16]-1.7827*x[12]*x[18]+1.8304*x[13]*x[15]-1.6907*x[13]*x[19]+0.7342*x[13]*x[20]-0.9223*x[14]*x[20]-1.3326*x[15]*x[15]+0.0465*x[16]*x[20]+0.108*x[17]*x[18]-0.357*x[1]-0.2066*x[2]-0.1247*x[3]-0.9086*x[4]-0.4053*x[5]-0.6526*x[6]-0.7753*x[7]+0.6139*x[8]+0.0606*x[9]-0.4917*x[10]+0.82*x[11]-0.8487*x[12]-0.4958*x[13]-0.4949*x[14]+0.7862*x[15]+0.7091*x[16]-0.6288*x[17]+0.7083*x[18]+0.4814*x[19]+0.1703*x[20] <= 75.549)


# ----- Objective ----- #
@objective(m, Min, x[21])

m = m 		 # model get returned when including this script. 
