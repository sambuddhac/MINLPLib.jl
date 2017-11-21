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
@NLconstraint(m, e1, -(0.8727*x[1]*x[1]-0.2959*x[1]*x[2]-0.7141*x[1]*x[3]-0.7346*x[1]*x[4]-0.9422*x[1]*x[5]+0.7824*x[1]*x[6]+0.4184*x[1]*x[7]+0.649*x[1]*x[8]+0.0384*x[1]*x[9]+0.9789*x[1]*x[10]-0.8868*x[1]*x[11]-0.7421*x[1]*x[12]-0.3318*x[1]*x[13]+0.3174*x[1]*x[14]+0.4195*x[1]*x[15]+0.005*x[1]*x[16]+0.0262*x[1]*x[17]+0.3385*x[1]*x[18]-0.4241*x[1]*x[19]-0.8364*x[1]*x[20]-0.5239*x[2]*x[2]-0.7887*x[2]*x[3]-0.1545*x[2]*x[4]+0.7725*x[2]*x[5]-0.3651*x[2]*x[6]-0.1779*x[2]*x[7]+0.2559*x[2]*x[8]-0.535*x[2]*x[9]+0.1278*x[2]*x[10]+0.5194*x[2]*x[11]+0.648*x[2]*x[12]+0.9947*x[2]*x[13]+0.1175*x[2]*x[14]-0.1423*x[2]*x[15]+0.6628*x[2]*x[16]+0.13*x[2]*x[17]-0.4071*x[2]*x[18]+0.6814*x[2]*x[19]-0.7882*x[2]*x[20]+0.3766*x[3]*x[3]+0.8334*x[3]*x[4]+0.5986*x[3]*x[5]+0.0747*x[3]*x[6]-0.8366*x[3]*x[7]+0.9998*x[3]*x[8]-0.6049*x[3]*x[9]+0.5164*x[3]*x[10]-0.4278*x[3]*x[11]+0.1725*x[3]*x[12]-0.1331*x[3]*x[13]+0.909*x[3]*x[14]+0.1085*x[3]*x[15]+0.8271*x[3]*x[16]+0.9195*x[3]*x[17]-0.1959*x[3]*x[18]-0.5706*x[3]*x[19]+0.6792*x[3]*x[20]+0.0743*x[4]*x[4]+0.9861*x[4]*x[5]-0.2362*x[4]*x[6]+0.6625*x[4]*x[7]+0.5037*x[4]*x[8]+0.5795*x[4]*x[9]-0.0203*x[4]*x[10]+0.8518*x[4]*x[11]-0.5176*x[4]*x[12]-0.3992*x[4]*x[13]+0.9736*x[4]*x[14]-0.6318*x[4]*x[15]-0.7577*x[4]*x[16]+0.5937*x[4]*x[17]+0.1*x[4]*x[18]-0.9659*x[4]*x[19]-0.9886*x[4]*x[20]-0.6746*x[5]*x[5]-0.9364*x[5]*x[6]+0.2979*x[5]*x[7]-0.9268*x[5]*x[8]+0.9874*x[5]*x[9]+0.7388*x[5]*x[10]-0.8378*x[5]*x[11]-0.0282*x[5]*x[12]+0.0836*x[5]*x[13]-0.2515*x[5]*x[14]-0.0813*x[5]*x[15]+0.4116*x[5]*x[16]-0.2989*x[5]*x[17]+0.9294*x[5]*x[18]+0.8361*x[5]*x[19]-0.5397*x[5]*x[20]-0.5446*x[6]*x[6]-0.3315*x[6]*x[7]+0.9279*x[6]*x[8]+0.0875*x[6]*x[9]-0.6838*x[6]*x[10]+0.5755*x[6]*x[11]-0.2985*x[6]*x[12]+0.7666*x[6]*x[13]-0.9363*x[6]*x[14]-0.1764*x[6]*x[15]+0.6139*x[6]*x[16]-0.8264*x[6]*x[17]+0.372*x[6]*x[18]-0.2674*x[6]*x[19]-0.2559*x[6]*x[20]+0.7807*x[7]*x[7]-0.7351*x[7]*x[8]-0.7983*x[7]*x[9]-0.8325*x[7]*x[10]+0.3431*x[7]*x[11]-0.6811*x[7]*x[12]+0.0826*x[7]*x[13]-0.6364*x[7]*x[14]+0.737*x[7]*x[15]+0.0265*x[7]*x[16]+0.3772*x[7]*x[17]-0.199*x[7]*x[18]+0.2168*x[7]*x[19]+0.5755*x[7]*x[20]+0.4204*x[8]*x[8]+0.2847*x[8]*x[9]+0.1227*x[8]*x[10]+0.8318*x[8]*x[11]-0.0133*x[8]*x[12]+0.4677*x[8]*x[13]+0.9818*x[8]*x[14]-0.884*x[8]*x[15]+0.7955*x[8]*x[16]+0.8508*x[8]*x[17]-0.219*x[8]*x[18]-0.1155*x[8]*x[19]+0.6978*x[8]*x[20]+0.4425*x[9]*x[9]+0.9231*x[9]*x[10]+0.6453*x[9]*x[11]+0.9226*x[9]*x[12]-0.9742*x[9]*x[13]-0.1023*x[9]*x[14]-0.506*x[9]*x[15]-0.2771*x[9]*x[16]-0.5851*x[9]*x[17]+0.4033*x[9]*x[18]-0.969*x[9]*x[19]+0.4623*x[9]*x[20]+0.8593*x[10]*x[10]+0.8792*x[10]*x[11]+0.7004*x[10]*x[12]-0.1326*x[10]*x[13]+0.2992*x[10]*x[14]-0.107*x[10]*x[15]-0.0243*x[10]*x[16]-0.3026*x[10]*x[17]+0.4911*x[10]*x[18]+0.0888*x[10]*x[19]-0.2336*x[10]*x[20]-0.5938*x[11]*x[11]+0.957*x[11]*x[12]-0.0037*x[11]*x[13]-0.4063*x[11]*x[14]+0.6278*x[11]*x[15]+0.196*x[11]*x[16]+0.5782*x[11]*x[17]-0.7207*x[11]*x[18]+0.2847*x[11]*x[19]-0.1592*x[11]*x[20]-0.2277*x[12]*x[12]+0.0512*x[12]*x[13]+0.6212*x[12]*x[14]-0.9616*x[12]*x[15]-0.8938*x[12]*x[16]-0.2326*x[12]*x[17]+0.102*x[12]*x[18]+0.9971*x[12]*x[19]+0.7663*x[12]*x[20]-0.5352*x[13]*x[13]+0.5066*x[13]*x[14]-0.387*x[13]*x[15]-0.2135*x[13]*x[16]+0.0129*x[13]*x[17]-0.4558*x[13]*x[18]-0.6481*x[13]*x[19]-0.7218*x[13]*x[20]-0.7735*x[14]*x[14]+0.5381*x[14]*x[15]+0.9237*x[14]*x[16]+0.088*x[14]*x[17]-0.1725*x[14]*x[18]-0.7814*x[14]*x[19]-0.2254*x[14]*x[20]+0.3023*x[15]*x[15]-0.9957*x[15]*x[16]+0.8797*x[15]*x[17]+0.3441*x[15]*x[18]-0.6929*x[15]*x[19]-0.6938*x[15]*x[20]+0.5092*x[16]*x[16]+0.5327*x[16]*x[17]+0.9047*x[16]*x[18]+0.5129*x[16]*x[19]-0.2257*x[16]*x[20]+0.683*x[17]*x[17]+0.9313*x[17]*x[18]+0.7966*x[17]*x[19]-0.0138*x[17]*x[20]-0.5195*x[18]*x[18]-0.4867*x[18]*x[19]+0.2583*x[18]*x[20]-0.3795*x[19]*x[19]+0.7816*x[19]*x[20]+0.5152*x[20]*x[20]-0.1462*x[1]+0.936*x[2]+0.7522*x[3]+0.6735*x[4]+0.3848*x[5]-0.7218*x[6]-0.0423*x[7]-0.0761*x[8]+0.2217*x[9]-0.9153*x[10]-0.6715*x[11]-0.3961*x[12]-0.8626*x[13]-0.0404*x[14]-0.3617*x[15]-0.1537*x[16]+0.8246*x[17]-0.1935*x[18]-0.2477*x[19]-0.7696*x[20])+x[21] == 0.0)
@NLconstraint(m, e2, 0.9909*x[1]*x[1]+0.0748*x[1]*x[2]-0.8779*x[1]*x[3]-0.8327*x[1]*x[4]+0.7868*x[1]*x[5]+0.1163*x[1]*x[6]-0.942*x[1]*x[7]-0.6458*x[1]*x[8]-0.8999*x[1]*x[9]+0.4182*x[1]*x[10]+0.2392*x[1]*x[11]+0.5241*x[1]*x[12]-0.2673*x[1]*x[13]+0.5598*x[1]*x[14]+0.0393*x[1]*x[15]-0.4651*x[1]*x[16]-0.4112*x[1]*x[17]+0.554*x[1]*x[18]-0.669*x[1]*x[19]-0.6671*x[1]*x[20]-0.0306*x[2]*x[2]+0.7802*x[2]*x[3]-0.9761*x[2]*x[4]+0.5948*x[2]*x[5]-0.6119*x[2]*x[6]+0.3109*x[2]*x[7]+0.9424*x[2]*x[8]-0.6722*x[2]*x[9]-0.6334*x[2]*x[10]+0.8146*x[2]*x[11]-0.5433*x[2]*x[12]+0.504*x[2]*x[13]-0.2001*x[2]*x[14]-0.4751*x[2]*x[15]-0.0336*x[2]*x[16]+0.0878*x[2]*x[17]+0.2829*x[2]*x[18]-0.0083*x[2]*x[19]+0.2969*x[2]*x[20]+0.5089*x[3]*x[3]+0.4122*x[3]*x[4]+0.9213*x[3]*x[5]+0.0134*x[3]*x[6]-0.3941*x[3]*x[7]+0.3974*x[3]*x[8]+0.9566*x[3]*x[9]-0.6902*x[3]*x[10]+0.863*x[3]*x[11]+0.1033*x[3]*x[12]+0.0337*x[3]*x[13]-0.2807*x[3]*x[14]-0.9105*x[3]*x[15]+0.9483*x[3]*x[16]-0.9439*x[3]*x[17]-0.2194*x[3]*x[18]+0.7061*x[3]*x[19]-0.9406*x[3]*x[20]-0.628*x[4]*x[4]-0.8495*x[4]*x[5]-0.7901*x[4]*x[6]+0.852*x[4]*x[7]-0.1366*x[4]*x[8]+0.4938*x[4]*x[9]+0.9668*x[4]*x[10]-0.0051*x[4]*x[11]-0.1645*x[4]*x[12]-0.4354*x[4]*x[13]+0.6882*x[4]*x[14]-0.2731*x[4]*x[15]-0.3722*x[4]*x[16]-0.3987*x[4]*x[17]-0.3982*x[4]*x[18]+0.15*x[4]*x[19]+0.6625*x[4]*x[20]+0.4707*x[5]*x[5]+0.0694*x[5]*x[6]-0.2509*x[5]*x[7]-0.4938*x[5]*x[8]-0.1628*x[5]*x[9]+0.9853*x[5]*x[10]+0.9489*x[5]*x[11]-0.8969*x[5]*x[12]+0.922*x[5]*x[13]-0.732*x[5]*x[14]-0.1461*x[5]*x[15]-0.7353*x[5]*x[16]+0.9094*x[5]*x[17]-0.3529*x[5]*x[18]+0.8817*x[5]*x[19]-0.8949*x[5]*x[20]+0.087*x[6]*x[6]+0.6581*x[6]*x[7]-0.2619*x[6]*x[8]-0.7369*x[6]*x[9]+0.5566*x[6]*x[10]-0.0352*x[6]*x[11]-0.019*x[6]*x[12]+0.4251*x[6]*x[13]-0.5842*x[6]*x[14]-0.369*x[6]*x[15]+0.6078*x[6]*x[16]-0.6787*x[6]*x[17]+0.8941*x[6]*x[18]+0.838*x[6]*x[19]-0.1334*x[6]*x[20]-0.4354*x[7]*x[7]+0.7738*x[7]*x[8]+0.9265*x[7]*x[9]+0.0021*x[7]*x[10]-0.1424*x[7]*x[11]+0.029*x[7]*x[12]+0.4908*x[7]*x[13]-0.9012*x[7]*x[14]+0.9202*x[7]*x[15]+0.1117*x[7]*x[16]+0.8405*x[7]*x[17]-0.6392*x[7]*x[18]+0.3465*x[7]*x[19]-0.2707*x[7]*x[20]-0.1297*x[8]*x[8]+0.0517*x[8]*x[9]-0.9476*x[8]*x[10]+0.3201*x[8]*x[11]-0.1354*x[8]*x[12]-0.5631*x[8]*x[13]+0.5518*x[8]*x[14]-0.26*x[8]*x[15]+0.8151*x[8]*x[16]-0.9843*x[8]*x[17]+0.2846*x[8]*x[18]+0.4025*x[8]*x[19]-0.9355*x[8]*x[20]+0.9253*x[9]*x[9]-0.4085*x[9]*x[10]+0.8788*x[9]*x[11]-0.3754*x[9]*x[12]-0.9325*x[9]*x[13]+0.339*x[9]*x[14]-0.999*x[9]*x[15]-0.8062*x[9]*x[16]-0.2439*x[9]*x[17]-0.7512*x[9]*x[18]-0.2493*x[9]*x[19]+0.5373*x[9]*x[20]+0.7918*x[10]*x[10]+0.8969*x[10]*x[11]-0.8554*x[10]*x[12]+0.4564*x[10]*x[13]-0.6794*x[10]*x[14]-0.2583*x[10]*x[15]+0.0657*x[10]*x[16]+0.5094*x[10]*x[17]-0.1373*x[10]*x[18]+0.1699*x[10]*x[19]+0.006*x[10]*x[20]-0.3309*x[11]*x[11]+0.653*x[11]*x[12]-0.2004*x[11]*x[13]+0.5956*x[11]*x[14]-0.3572*x[11]*x[15]-0.0727*x[11]*x[16]+0.3593*x[11]*x[17]+0.256*x[11]*x[18]-0.9685*x[11]*x[19]-0.8723*x[11]*x[20]+0.0834*x[12]*x[12]-0.5313*x[12]*x[13]+0.5325*x[12]*x[14]+0.2584*x[12]*x[15]+0.0279*x[12]*x[16]-0.6832*x[12]*x[17]+0.8784*x[12]*x[18]-0.471*x[12]*x[19]+0.5628*x[12]*x[20]+0.789*x[13]*x[13]+0.493*x[13]*x[14]-0.2459*x[13]*x[15]-0.2754*x[13]*x[16]-0.9558*x[13]*x[17]+0.4206*x[13]*x[18]-0.453*x[13]*x[19]-0.1921*x[13]*x[20]+0.8635*x[14]*x[14]+0.1509*x[14]*x[15]+0.1774*x[14]*x[16]-0.394*x[14]*x[17]+0.7015*x[14]*x[18]-0.3913*x[14]*x[19]+0.2043*x[14]*x[20]-0.0989*x[15]*x[15]-0.2251*x[15]*x[16]-0.4868*x[15]*x[17]-0.4957*x[15]*x[18]+0.4184*x[15]*x[19]-0.7236*x[15]*x[20]+0.3151*x[16]*x[16]+0.2697*x[16]*x[17]-0.5657*x[16]*x[18]+0.6512*x[16]*x[19]-0.3987*x[16]*x[20]-0.4005*x[17]*x[17]+0.6944*x[17]*x[18]+0.3478*x[17]*x[19]+0.0849*x[17]*x[20]-0.176*x[18]*x[18]+0.6687*x[18]*x[19]-0.3992*x[18]*x[20]-0.058*x[19]*x[19]-0.9027*x[19]*x[20]+0.4944*x[20]*x[20]-0.6414*x[1]+0.4047*x[2]-0.9853*x[3]+0.2794*x[4]-0.8018*x[5]+0.8592*x[6]+0.9296*x[7]+0.856*x[8]-0.9458*x[9]-0.2323*x[10]-0.6635*x[11]-0.5774*x[12]+0.8092*x[13]+0.4942*x[14]-0.8332*x[15]-0.7174*x[16]+0.656*x[17]-0.7688*x[18]+0.8464*x[19]-0.2542*x[20] <= 68.3)
@NLconstraint(m, e3, 0.8138*x[1]*x[1]+0.9509*x[1]*x[2]-0.8221*x[1]*x[3]+0.3543*x[1]*x[4]+0.9828*x[1]*x[5]+0.4506*x[1]*x[6]+0.9935*x[1]*x[7]+0.7256*x[1]*x[8]-0.9364*x[1]*x[9]-0.2058*x[1]*x[10]-0.614*x[1]*x[11]+0.7967*x[1]*x[12]+0.7394*x[1]*x[13]-0.6747*x[1]*x[14]+0.0894*x[1]*x[15]+0.5584*x[1]*x[16]+0.0991*x[1]*x[17]-0.4804*x[1]*x[18]-0.0242*x[1]*x[19]-0.7873*x[1]*x[20]+0.8412*x[2]*x[2]-0.495*x[2]*x[3]+0.2405*x[2]*x[4]-0.1204*x[2]*x[5]-0.3264*x[2]*x[6]-0.4306*x[2]*x[7]-0.2724*x[2]*x[8]-0.4368*x[2]*x[9]+0.6508*x[2]*x[10]-0.7863*x[2]*x[11]+0.267*x[2]*x[12]-0.1086*x[2]*x[13]-0.9236*x[2]*x[14]-0.9839*x[2]*x[15]-0.6711*x[2]*x[16]+0.6487*x[2]*x[17]-0.255*x[2]*x[18]-0.3431*x[2]*x[19]+0.6568*x[2]*x[20]+0.9668*x[3]*x[3]+0.0781*x[3]*x[4]-0.0251*x[3]*x[5]-0.3213*x[3]*x[6]+0.8957*x[3]*x[7]+0.8012*x[3]*x[8]+0.3741*x[3]*x[9]+0.7507*x[3]*x[10]+0.6214*x[3]*x[11]-0.9874*x[3]*x[12]-0.824*x[3]*x[13]-0.7364*x[3]*x[14]+0.5632*x[3]*x[15]+0.0277*x[3]*x[16]+0.6984*x[3]*x[17]-0.8929*x[3]*x[18]+0.9844*x[3]*x[19]+0.0604*x[3]*x[20]-0.8473*x[4]*x[4]-0.6641*x[4]*x[5]-0.5341*x[4]*x[6]-0.7171*x[4]*x[7]-0.9632*x[4]*x[8]-0.3165*x[4]*x[9]-0.4889*x[4]*x[10]-0.8841*x[4]*x[11]+0.1736*x[4]*x[12]+0.9399*x[4]*x[13]-0.491*x[4]*x[14]+0.2638*x[4]*x[15]-0.2165*x[4]*x[16]+0.1249*x[4]*x[17]-0.917*x[4]*x[18]-0.5353*x[4]*x[19]+0.6693*x[4]*x[20]-0.1613*x[5]*x[5]+0.014*x[5]*x[6]-0.8024*x[5]*x[7]+0.2702*x[5]*x[8]-0.5259*x[5]*x[9]-0.3402*x[5]*x[10]-0.1302*x[5]*x[11]+0.0525*x[5]*x[12]+0.0527*x[5]*x[13]+0.6322*x[5]*x[14]+0.1137*x[5]*x[15]+0.5705*x[5]*x[16]-0.9104*x[5]*x[17]+0.258*x[5]*x[18]+0.9474*x[5]*x[19]+0.074*x[5]*x[20]+0.3502*x[6]*x[6]+0.8905*x[6]*x[7]-0.3495*x[6]*x[8]+0.6298*x[6]*x[9]+0.6175*x[6]*x[10]+0.7286*x[6]*x[11]-0.0633*x[6]*x[12]+0.011*x[6]*x[13]+0.9293*x[6]*x[14]-0.6776*x[6]*x[15]-0.8715*x[6]*x[16]-0.2535*x[6]*x[17]+0.2768*x[6]*x[18]-0.2311*x[6]*x[19]+0.3271*x[6]*x[20]-0.4892*x[7]*x[7]+0.4076*x[7]*x[8]+0.5567*x[7]*x[9]+0.4763*x[7]*x[10]-0.4468*x[7]*x[11]-0.8031*x[7]*x[12]-0.6015*x[7]*x[13]-0.512*x[7]*x[14]-0.3397*x[7]*x[15]+0.0676*x[7]*x[16]+0.0997*x[7]*x[17]-0.6051*x[7]*x[18]+0.4815*x[7]*x[19]+0.3643*x[7]*x[20]+0.963*x[8]*x[8]-0.0217*x[8]*x[9]+0.3736*x[8]*x[10]-0.1637*x[8]*x[11]+0.3246*x[8]*x[12]+0.8406*x[8]*x[13]-0.4054*x[8]*x[14]-0.1194*x[8]*x[15]-0.6792*x[8]*x[16]-0.0179*x[8]*x[17]+0.5678*x[8]*x[18]-0.6136*x[8]*x[19]-0.0113*x[8]*x[20]-0.7408*x[9]*x[9]+0.4983*x[9]*x[10]+0.7166*x[9]*x[11]+0.7196*x[9]*x[12]+0.8041*x[9]*x[13]-0.417*x[9]*x[14]-0.4665*x[9]*x[15]-0.9472*x[9]*x[16]+0.3186*x[9]*x[17]+0.0008*x[9]*x[18]+0.4112*x[9]*x[19]-0.549*x[9]*x[20]+0.714*x[10]*x[10]+0.3726*x[10]*x[11]+0.2059*x[10]*x[12]+0.3263*x[10]*x[13]+0.0664*x[10]*x[14]-0.3905*x[10]*x[15]-0.396*x[10]*x[16]+0.2489*x[10]*x[17]-0.3591*x[10]*x[18]+0.8875*x[10]*x[19]-0.1074*x[10]*x[20]+0.3386*x[11]*x[11]+0.1374*x[11]*x[12]+0.0261*x[11]*x[13]-0.6731*x[11]*x[14]+0.2712*x[11]*x[15]+0.8375*x[11]*x[16]+0.7226*x[11]*x[17]-0.6796*x[11]*x[18]+0.0595*x[11]*x[19]-0.26*x[11]*x[20]-0.3089*x[12]*x[12]+0.9926*x[12]*x[13]-0.2871*x[12]*x[14]-0.9585*x[12]*x[15]+0.1679*x[12]*x[16]+0.3712*x[12]*x[17]-0.6788*x[12]*x[18]-0.5049*x[12]*x[19]+0.6338*x[12]*x[20]-0.6546*x[13]*x[13]+0.7588*x[13]*x[14]-0.9789*x[13]*x[15]-0.1334*x[13]*x[16]-0.1394*x[13]*x[17]+0.2722*x[13]*x[18]-0.615*x[13]*x[19]+0.3584*x[13]*x[20]+0.4657*x[14]*x[14]+0.6566*x[14]*x[15]-0.6826*x[14]*x[16]+0.1999*x[14]*x[17]-0.0253*x[14]*x[18]-0.1107*x[14]*x[19]-0.8714*x[14]*x[20]-0.0102*x[15]*x[15]+0.4648*x[15]*x[16]-0.0905*x[15]*x[17]+0.5086*x[15]*x[18]-0.2488*x[15]*x[19]+0.4272*x[15]*x[20]+0.5776*x[16]*x[16]+0.2769*x[16]*x[17]-0.063*x[16]*x[18]-0.7313*x[16]*x[19]+0.7715*x[16]*x[20]+0.1597*x[17]*x[17]+0.7531*x[17]*x[18]-0.5785*x[17]*x[19]-0.8593*x[17]*x[20]-0.4655*x[18]*x[18]+0.0644*x[18]*x[19]-0.906*x[18]*x[20]-0.6081*x[19]*x[19]+0.4693*x[19]*x[20]-0.1253*x[20]*x[20]-0.4972*x[1]+0.5691*x[2]+0.5647*x[3]+0.2197*x[4]-0.4624*x[5]+0.1284*x[6]-0.5544*x[7]-0.7919*x[8]+0.4457*x[9]-0.5018*x[10]-0.1074*x[11]+0.3765*x[12]-0.5653*x[13]+0.6294*x[14]-0.2739*x[15]-0.4372*x[16]+0.512*x[17]-0.844*x[18]+0.9969*x[19]-0.5885*x[20] <= 44.281)
@NLconstraint(m, e4, 0.7908*x[1]*x[2]-0.6107*x[1]*x[1]+0.182*x[1]*x[3]+0.9472*x[1]*x[4]+0.4685*x[1]*x[5]+0.1261*x[1]*x[6]-0.2826*x[1]*x[7]-0.9628*x[1]*x[8]-0.1975*x[1]*x[9]-0.8846*x[1]*x[10]-0.3241*x[1]*x[11]+0.2676*x[1]*x[12]-0.8234*x[1]*x[13]-0.403*x[1]*x[14]+0.9641*x[1]*x[15]-0.771*x[1]*x[16]+0.1811*x[1]*x[17]-0.0485*x[1]*x[18]-0.96*x[1]*x[19]+0.2713*x[1]*x[20]+0.6957*x[2]*x[2]-0.0005*x[2]*x[3]+0.3724*x[2]*x[4]+0.3826*x[2]*x[5]-0.7448*x[2]*x[6]-0.4609*x[2]*x[7]+0.8893*x[2]*x[8]+0.0209*x[2]*x[9]+0.7726*x[2]*x[10]-0.3305*x[2]*x[11]-0.4044*x[2]*x[12]+0.893*x[2]*x[13]-0.1441*x[2]*x[14]+0.2757*x[2]*x[15]-0.4443*x[2]*x[16]-0.8606*x[2]*x[17]+0.262*x[2]*x[18]-0.9311*x[2]*x[19]+0.6962*x[2]*x[20]+0.34*x[3]*x[3]-0.6767*x[3]*x[4]+0.5489*x[3]*x[5]+0.6817*x[3]*x[6]-0.8311*x[3]*x[7]-0.3426*x[3]*x[8]+0.649*x[3]*x[9]+0.6072*x[3]*x[10]-0.069*x[3]*x[11]+0.6601*x[3]*x[12]+0.1823*x[3]*x[13]+0.147*x[3]*x[14]+0.2094*x[3]*x[15]-0.1199*x[3]*x[16]-0.186*x[3]*x[17]-0.5173*x[3]*x[18]+0.5678*x[3]*x[19]-0.7257*x[3]*x[20]-0.8313*x[4]*x[4]-0.0265*x[4]*x[5]-0.4171*x[4]*x[6]+0.508*x[4]*x[7]+0.3584*x[4]*x[8]+0.7849*x[4]*x[9]-0.5624*x[4]*x[10]-0.6201*x[4]*x[11]+0.5614*x[4]*x[12]-0.8259*x[4]*x[13]+0.4341*x[4]*x[14]-0.367*x[4]*x[15]-0.148*x[4]*x[16]-0.3364*x[4]*x[17]-0.5221*x[4]*x[18]+0.6808*x[4]*x[19]+0.5431*x[4]*x[20]+0.4402*x[5]*x[5]-0.6268*x[5]*x[6]+0.1851*x[5]*x[7]+0.5158*x[5]*x[8]-0.839*x[5]*x[9]-0.5171*x[5]*x[10]+0.4746*x[5]*x[11]+0.5149*x[5]*x[12]+0.5923*x[5]*x[13]+0.4214*x[5]*x[14]+0.822*x[5]*x[15]+0.1561*x[5]*x[16]+0.045*x[5]*x[17]-0.4624*x[5]*x[18]-0.628*x[5]*x[19]-0.8193*x[5]*x[20]+0.88*x[6]*x[6]+0.3325*x[6]*x[7]+0.2248*x[6]*x[8]-0.9475*x[6]*x[9]-0.7829*x[6]*x[10]+0.706*x[6]*x[11]+0.9682*x[6]*x[12]-0.4792*x[6]*x[13]-0.8235*x[6]*x[14]+0.1143*x[6]*x[15]-0.9136*x[6]*x[16]+0.4592*x[6]*x[17]-0.5743*x[6]*x[18]+0.3856*x[6]*x[19]+0.4046*x[6]*x[20]-0.2754*x[7]*x[7]+0.2892*x[7]*x[8]-0.2923*x[7]*x[9]-0.2782*x[7]*x[10]-0.0047*x[7]*x[11]+0.408*x[7]*x[12]+0.4987*x[7]*x[13]-0.5873*x[7]*x[14]-0.7365*x[7]*x[15]-0.5048*x[7]*x[16]-0.2407*x[7]*x[17]-0.1926*x[7]*x[18]-0.6831*x[7]*x[19]+0.2108*x[7]*x[20]-0.0767*x[8]*x[8]+0.4378*x[8]*x[9]+0.6018*x[8]*x[10]-0.4227*x[8]*x[11]+0.157*x[8]*x[12]+0.2023*x[8]*x[13]+0.2637*x[8]*x[14]+0.7597*x[8]*x[15]+0.0555*x[8]*x[16]-0.0298*x[8]*x[17]-0.2673*x[8]*x[18]+0.9751*x[8]*x[19]-0.8388*x[8]*x[20]-0.3659*x[9]*x[9]-0.9626*x[9]*x[10]+0.3125*x[9]*x[11]-0.9484*x[9]*x[12]-0.0054*x[9]*x[13]-0.6158*x[9]*x[14]+0.9396*x[9]*x[15]-0.1757*x[9]*x[16]-0.7912*x[9]*x[17]-0.95*x[9]*x[18]+0.4887*x[9]*x[19]+0.7019*x[9]*x[20]+0.6019*x[10]*x[10]-0.8171*x[10]*x[11]+0.2866*x[10]*x[12]+0.6855*x[10]*x[13]-0.8868*x[10]*x[14]+0.724*x[10]*x[15]+0.4656*x[10]*x[16]-0.9901*x[10]*x[17]+0.4581*x[10]*x[18]-0.999*x[10]*x[19]+0.2168*x[10]*x[20]-0.3081*x[11]*x[11]-0.3446*x[11]*x[12]-0.8796*x[11]*x[13]-0.0782*x[11]*x[14]+0.6861*x[11]*x[15]-0.2288*x[11]*x[16]+0.3206*x[11]*x[17]-0.1097*x[11]*x[18]-0.9174*x[11]*x[19]+0.483*x[11]*x[20]-0.9674*x[12]*x[12]+0.201*x[12]*x[13]+0.3907*x[12]*x[14]+0.5618*x[12]*x[15]+0.5785*x[12]*x[16]+0.6697*x[12]*x[17]+0.1999*x[12]*x[18]+0.1005*x[12]*x[19]-0.1216*x[12]*x[20]+0.597*x[13]*x[13]+0.8168*x[13]*x[14]-0.6426*x[13]*x[15]-0.517*x[13]*x[16]+0.1262*x[13]*x[17]+0.5641*x[13]*x[18]+0.1047*x[13]*x[19]+0.8031*x[13]*x[20]+0.332*x[14]*x[14]-0.4309*x[14]*x[15]-0.3016*x[14]*x[16]-0.8074*x[14]*x[17]+0.3954*x[14]*x[18]-0.4079*x[14]*x[19]-0.8889*x[14]*x[20]-0.2882*x[15]*x[15]+0.8684*x[15]*x[16]+0.3332*x[15]*x[17]+0.9228*x[15]*x[18]+0.7214*x[15]*x[19]-0.1923*x[15]*x[20]+0.6391*x[16]*x[16]+0.2258*x[16]*x[17]-0.8557*x[16]*x[18]-0.8994*x[16]*x[19]-0.7207*x[16]*x[20]+0.9324*x[17]*x[17]-0.7458*x[17]*x[18]-0.1378*x[17]*x[19]+0.6105*x[17]*x[20]-0.1968*x[18]*x[18]-0.8182*x[18]*x[19]+0.3214*x[18]*x[20]-0.7038*x[19]*x[19]+0.9277*x[19]*x[20]+0.942*x[20]*x[20]-0.977*x[1]-0.7141*x[2]-0.42*x[3]+0.8145*x[4]+0.1563*x[5]+0.0874*x[6]-0.6285*x[7]+0.8329*x[8]-0.7258*x[9]-0.0014*x[10]-0.6891*x[11]-0.3747*x[12]-0.1786*x[13]-0.4208*x[14]+0.2546*x[15]-0.4322*x[16]+0.1618*x[17]+0.5295*x[18]-0.586*x[19]-0.372*x[20] <= 12.357)
@NLconstraint(m, e5, 0.5351*x[1]*x[2]-0.9126*x[1]*x[1]+0.9797*x[1]*x[3]+0.1692*x[1]*x[4]-0.255*x[1]*x[5]-0.188*x[1]*x[6]+0.9214*x[1]*x[7]-0.9508*x[1]*x[8]-0.953*x[1]*x[9]+0.0391*x[1]*x[10]-0.1465*x[1]*x[11]+0.1307*x[1]*x[12]-0.6012*x[1]*x[13]+0.4247*x[1]*x[14]+0.4644*x[1]*x[15]+0.2796*x[1]*x[16]+0.559*x[1]*x[17]+0.9849*x[1]*x[18]+0.8894*x[1]*x[19]+0.8323*x[1]*x[20]-0.1287*x[2]*x[2]+0.3937*x[2]*x[3]+0.7247*x[2]*x[4]+0.758*x[2]*x[5]-0.207*x[2]*x[6]-0.3095*x[2]*x[7]-0.5086*x[2]*x[8]-0.3823*x[2]*x[9]-0.2361*x[2]*x[10]-0.9314*x[2]*x[11]-0.8978*x[2]*x[12]-0.6707*x[2]*x[13]-0.1195*x[2]*x[14]+0.3484*x[2]*x[15]+0.6799*x[2]*x[16]+0.138*x[2]*x[17]+0.0417*x[2]*x[18]-0.6399*x[2]*x[19]+0.5319*x[2]*x[20]-0.5359*x[3]*x[3]-0.7788*x[3]*x[4]-0.9809*x[3]*x[5]-0.6282*x[3]*x[6]-0.9843*x[3]*x[7]+0.0573*x[3]*x[8]-0.4861*x[3]*x[9]+0.1098*x[3]*x[10]+0.4814*x[3]*x[11]+0.6639*x[3]*x[12]-0.6953*x[3]*x[13]+0.3484*x[3]*x[14]+0.5372*x[3]*x[15]+0.4092*x[3]*x[16]+0.0376*x[3]*x[17]-0.7834*x[3]*x[18]-0.7464*x[3]*x[19]-0.7768*x[3]*x[20]+0.9599*x[4]*x[4]-0.5774*x[4]*x[5]-0.717*x[4]*x[6]+0.2833*x[4]*x[7]+0.4515*x[4]*x[8]+0.1883*x[4]*x[9]-0.4221*x[4]*x[10]-0.5294*x[4]*x[11]-0.1498*x[4]*x[12]-0.9796*x[4]*x[13]+0.5184*x[4]*x[14]-0.7527*x[4]*x[15]-0.2411*x[4]*x[16]-0.2212*x[4]*x[17]-0.3065*x[4]*x[18]+0.1302*x[4]*x[19]+0.5883*x[4]*x[20]+0.432*x[5]*x[5]+0.2389*x[5]*x[6]-0.7093*x[5]*x[7]-0.9992*x[5]*x[8]+0.8763*x[5]*x[9]+0.7087*x[5]*x[10]-0.0649*x[5]*x[11]+0.6267*x[5]*x[12]-0.768*x[5]*x[13]+0.3104*x[5]*x[14]+0.2314*x[5]*x[15]-0.0697*x[5]*x[16]-0.4129*x[5]*x[17]-0.1365*x[5]*x[18]-0.8296*x[5]*x[19]-0.2968*x[5]*x[20]-0.862*x[6]*x[6]-0.4875*x[6]*x[7]-0.1104*x[6]*x[8]-0.6234*x[6]*x[9]+0.0948*x[6]*x[10]-0.5229*x[6]*x[11]-0.786*x[6]*x[12]+0.3301*x[6]*x[13]+0.1155*x[6]*x[14]-0.9235*x[6]*x[15]-0.9514*x[6]*x[16]-0.9054*x[6]*x[17]+0.4058*x[6]*x[18]-0.5633*x[6]*x[19]-0.0991*x[6]*x[20]-0.0021*x[7]*x[7]-0.2952*x[7]*x[8]-0.5508*x[7]*x[9]-0.1529*x[7]*x[10]+0.0526*x[7]*x[11]+0.9086*x[7]*x[12]+0.5866*x[7]*x[13]-0.8777*x[7]*x[14]+0.0181*x[7]*x[15]+0.2463*x[7]*x[16]+0.1697*x[7]*x[17]-0.9148*x[7]*x[18]+0.4976*x[7]*x[19]-0.7257*x[7]*x[20]-0.5447*x[8]*x[8]-0.3333*x[8]*x[9]+0.7602*x[8]*x[10]-0.6432*x[8]*x[11]+0.4335*x[8]*x[12]+0.6657*x[8]*x[13]-0.3522*x[8]*x[14]-0.3207*x[8]*x[15]-0.9375*x[8]*x[16]-0.2883*x[8]*x[17]-0.313*x[8]*x[18]-0.8875*x[8]*x[19]-0.4723*x[8]*x[20]+0.6583*x[9]*x[9]-0.605*x[9]*x[10]+0.464*x[9]*x[11]-0.4779*x[9]*x[12]+0.142*x[9]*x[13]-0.7121*x[9]*x[14]+0.8174*x[9]*x[15]+0.6158*x[9]*x[16]+0.8037*x[9]*x[17]-0.0199*x[9]*x[18]+0.6277*x[9]*x[19]+0.3422*x[9]*x[20]+0.0111*x[10]*x[10]+0.5486*x[10]*x[11]-0.0931*x[10]*x[12]+0.8128*x[10]*x[13]-0.0344*x[10]*x[14]+0.4717*x[10]*x[15]-0.9813*x[10]*x[16]+0.7195*x[10]*x[17]+0.4506*x[10]*x[18]+0.9142*x[10]*x[19]-0.5671*x[10]*x[20]-x[11]*x[11]+0.4309*x[11]*x[12]-0.7718*x[11]*x[13]+0.2419*x[11]*x[14]+0.5704*x[11]*x[15]-0.1569*x[11]*x[16]+0.8264*x[11]*x[17]-0.6979*x[11]*x[18]-0.1654*x[11]*x[19]+0.0075*x[11]*x[20]-0.103*x[12]*x[12]+0.1481*x[12]*x[13]-0.4042*x[12]*x[14]-0.8684*x[12]*x[15]+0.7861*x[12]*x[16]+0.6305*x[12]*x[17]-0.7861*x[12]*x[18]+0.3864*x[12]*x[19]+0.1221*x[12]*x[20]-0.2269*x[13]*x[13]+0.7585*x[13]*x[14]+0.7047*x[13]*x[15]-0.9711*x[13]*x[16]+0.7653*x[13]*x[17]+0.3736*x[13]*x[18]-0.6228*x[13]*x[19]+0.7512*x[13]*x[20]+0.8001*x[14]*x[14]+0.2115*x[14]*x[15]+0.4233*x[14]*x[16]-0.0698*x[14]*x[17]-0.9454*x[14]*x[18]-0.1547*x[14]*x[19]-0.5725*x[14]*x[20]+0.673*x[15]*x[15]+0.5522*x[15]*x[16]-0.159*x[15]*x[17]+0.2449*x[15]*x[18]-0.4471*x[15]*x[19]-0.2434*x[15]*x[20]+0.0362*x[16]*x[16]-0.387*x[16]*x[17]+0.5732*x[16]*x[18]-0.7043*x[16]*x[19]+0.888*x[16]*x[20]-0.8349*x[17]*x[17]-0.3865*x[17]*x[18]+0.4258*x[17]*x[19]-0.6689*x[17]*x[20]-0.6511*x[18]*x[18]-0.8375*x[18]*x[19]+0.4936*x[18]*x[20]-0.8259*x[19]*x[19]-0.4668*x[19]*x[20]+0.8427*x[20]*x[20]-0.6952*x[1]+0.929*x[2]-0.8077*x[3]-0.0395*x[4]+0.8801*x[5]-0.0749*x[6]+0.4775*x[7]+0.539*x[8]-0.7211*x[9]-0.1826*x[10]+0.6841*x[11]+0.9129*x[12]+0.4184*x[13]+0.1598*x[14]-0.6438*x[15]-0.1606*x[16]+0.9786*x[17]+0.1005*x[18]+0.5611*x[19]-0.8311*x[20] <= 38.18)


# ----- Objective ----- #
@objective(m, Min, x[21])

m = m 		 # model get returned when including this script. 
