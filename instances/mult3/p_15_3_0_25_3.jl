using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]
@variable(m, x[x_Idx])
setlowerbound(x[4], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[14], 0.0)
setlowerbound(x[3], 0.0)
setlowerbound(x[11], 0.0)
setlowerbound(x[12], 0.0)
setlowerbound(x[5], 0.0)
setlowerbound(x[2], 0.0)
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


# ----- Constraints ----- #
@NLconstraint(m, e1, -(-0.4461*x[10]^3-0.2362*x[10]^2+0.5783*x[10]+0.9786*x[1]*x[6]-0.469*x[1]*x[11]-0.6698*x[2]*x[7]+0.7216*x[2]*x[13]-0.2722*x[3]*x[6]+0.2956*x[3]*x[7]+0.2996*x[3]*x[10]+0.1311*x[4]*x[7]+0.435*x[4]*x[8]-0.7161*x[4]*x[10]-0.333*x[4]*x[14]-0.5567*x[5]*x[8]+0.3379*x[5]*x[14]+0.7493*x[6]*x[8]+0.9942*x[6]*x[9]-0.0523*x[6]*x[12]+0.9969*x[6]*x[14]-0.0483*x[7]*x[10]-0.919*x[8]*x[13]-0.2043*x[8]*x[15]-0.3901*x[9]*x[10]+0.4934*x[9]*x[14]+0.1516*x[10]*x[12]-0.5648*x[10]*x[15]+0.9238*x[11]*x[15]-0.2003*x[12]*x[13]-0.0731*x[13]*x[14]+0.0661*x[14]*x[15]-0.6195*x[1]+0.4109*x[2]+0.774*x[3]-0.6599*x[4]+0.5277*x[5]-0.207*x[6]+0.7556*x[7]-0.0444*x[8]-0.6359*x[9]+0.4262*x[11]-0.5666*x[12]+0.4188*x[13]+0.3495*x[14]-0.6488*x[15]+0.8865*x[2]^2*x[7]-0.2805*x[1]^2*x[8]-0.8432*x[2]^2*x[10]-0.5412*x[3]^2*x[4]-0.6065*x[3]^2*x[6]-0.2521*x[3]^2*x[10]-0.7626*x[3]^2*x[12]+0.7189*x[3]^2*x[15]+0.0948*x[4]^2*x[6]+0.0774*x[4]^2*x[10]+0.6427*x[4]^2*x[12]+0.7128*x[5]^2*x[3]+0.8422*x[5]^2*x[8]-0.4543*x[5]^2*x[10]-0.0837*x[6]^2*x[5]-0.9197*x[6]^2*x[8]-0.1793*x[6]^2*x[15]+0.2066*x[7]^2*x[10]+0.5678*x[7]^2*x[11]+0.9708*x[8]^2*x[4]+0.6063*x[8]^2*x[9]+0.6526*x[8]^2*x[12]+0.305*x[9]^2*x[11]+0.2648*x[10]^2*x[2]+0.9751*x[10]^2*x[9]+0.7518*x[11]^2*x[1]+0.4006*x[11]^2*x[2]+0.4041*x[11]^2*x[6]-0.7986*x[11]^2*x[7]+0.3498*x[12]^2*x[4]-0.9033*x[12]^2*x[5]+0.8448*x[12]^2*x[6]-0.5041*x[12]^2*x[13]+0.3574*x[13]^2*x[3]-0.1772*x[14]^2*x[4]+0.1537*x[14]^2*x[6]-0.7344*x[15]^2*x[7]+0.0856*x[1]*x[2]*x[15]-0.6238*x[1]*x[3]*x[4]-0.1203*x[1]*x[3]*x[11]-0.9889*x[1]*x[4]*x[5]-0.078*x[1]*x[4]*x[12]-0.1364*x[1]*x[5]*x[8]+0.7441*x[1]*x[5]*x[10]+0.8412*x[1]*x[5]*x[11]-0.628*x[1]*x[5]*x[13]+0.379*x[1]*x[6]*x[10]+0.9391*x[1]*x[6]*x[13]+0.0294*x[1]*x[7]*x[8]+0.2279*x[1]*x[7]*x[10]-0.6747*x[1]*x[7]*x[15]+0.3232*x[1]*x[8]*x[15]-0.1359*x[1]*x[9]*x[13]+0.1736*x[1]*x[11]*x[15]-0.3237*x[1]*x[12]*x[13]-0.6774*x[1]*x[13]*x[15]+0.388*x[2]*x[3]*x[5]+0.6336*x[2]*x[3]*x[7]-0.7634*x[2]*x[3]*x[14]-0.396*x[2]*x[4]*x[8]+0.4836*x[2]*x[4]*x[9]-0.0455*x[2]*x[4]*x[13]-0.8782*x[2]*x[5]*x[8]-0.9401*x[2]*x[5]*x[9]-0.874*x[2]*x[5]*x[11]-0.2451*x[2]*x[5]*x[13]+0.718*x[2]*x[6]*x[8]+0.8642*x[2]*x[6]*x[10]+0.54*x[2]*x[6]*x[12]-0.9557*x[2]*x[6]*x[13]+0.2995*x[2]*x[6]*x[14]+0.1493*x[2]*x[7]*x[10]-0.5043*x[2]*x[7]*x[15]+0.0474*x[2]*x[8]*x[9]-0.5144*x[2]*x[8]*x[10]-0.0645*x[2]*x[8]*x[11]-0.5112*x[2]*x[8]*x[12]-0.7454*x[2]*x[9]*x[10]+0.1067*x[2]*x[9]*x[13]-0.6316*x[2]*x[9]*x[14]-0.6117*x[2]*x[10]*x[11]-0.0211*x[2]*x[10]*x[13]+0.519*x[2]*x[10]*x[14]-0.3577*x[2]*x[11]*x[12]+0.2734*x[2]*x[11]*x[14]-0.1996*x[2]*x[11]*x[15]-0.7955*x[2]*x[13]*x[15]+0.6936*x[3]*x[4]*x[10]-0.5562*x[3]*x[4]*x[11]-0.0524*x[3]*x[4]*x[12]-0.1685*x[3]*x[5]*x[6]-0.0865*x[3]*x[5]*x[8]+0.1187*x[3]*x[5]*x[11]+0.1872*x[3]*x[5]*x[12]+0.6992*x[3]*x[6]*x[9]-0.9023*x[3]*x[6]*x[10]-0.4182*x[3]*x[6]*x[13]-0.6494*x[3]*x[7]*x[10]-0.6558*x[3]*x[7]*x[12]+0.3803*x[3]*x[7]*x[13]-0.1743*x[3]*x[7]*x[14]-0.0071*x[3]*x[8]*x[9]+0.3352*x[3]*x[9]*x[12]+0.2131*x[3]*x[9]*x[14]-0.2396*x[3]*x[10]*x[12]+0.3956*x[3]*x[10]*x[14]+0.3657*x[3]*x[11]*x[13]+0.7864*x[3]*x[11]*x[14]+0.325*x[3]*x[12]*x[13]+0.607*x[3]*x[12]*x[14]+0.807*x[3]*x[13]*x[14]-0.1296*x[4]*x[5]*x[9]-0.8*x[4]*x[5]*x[11]-0.0804*x[4]*x[6]*x[8]+0.4886*x[4]*x[6]*x[9]-0.4226*x[4]*x[6]*x[14]-0.4673*x[4]*x[7]*x[9]+0.6061*x[4]*x[7]*x[14]-0.1305*x[4]*x[8]*x[10]-0.1111*x[4]*x[8]*x[12]+0.1566*x[4]*x[9]*x[10]-0.6577*x[4]*x[9]*x[11]+0.8772*x[4]*x[9]*x[14]-0.0214*x[4]*x[9]*x[15]+0.531*x[4]*x[10]*x[12]+0.7293*x[4]*x[11]*x[13]+0.157*x[5]*x[7]*x[11]+0.994*x[5]*x[7]*x[14]-0.0164*x[5]*x[7]*x[15]-0.1292*x[5]*x[8]*x[12]+0.6883*x[5]*x[9]*x[13]-0.3376*x[5]*x[10]*x[12]-0.6494*x[5]*x[11]*x[13]-0.5488*x[5]*x[11]*x[14]-0.8854*x[5]*x[12]*x[13]+0.8307*x[5]*x[13]*x[14]+0.3488*x[6]*x[8]*x[10]-0.1022*x[6]*x[8]*x[14]-0.0821*x[6]*x[8]*x[15]+0.8758*x[6]*x[9]*x[10]+0.5142*x[6]*x[9]*x[13]+0.1699*x[6]*x[9]*x[15]-0.6424*x[6]*x[11]*x[12]+0.0886*x[6]*x[13]*x[14]-0.2566*x[6]*x[13]*x[15]-0.8811*x[7]*x[8]*x[12]-0.7844*x[7]*x[8]*x[13]+0.6343*x[7]*x[8]*x[14]+0.4719*x[7]*x[9]*x[10]-0.3642*x[7]*x[9]*x[11]-0.3557*x[7]*x[9]*x[12]+0.4854*x[7]*x[10]*x[13]+0.3702*x[7]*x[11]*x[13]+0.3953*x[7]*x[12]*x[14]+0.5098*x[7]*x[12]*x[15]+0.992*x[7]*x[14]*x[15]-0.5107*x[8]*x[10]*x[11]+0.8381*x[8]*x[11]*x[13]+0.689*x[8]*x[11]*x[14]+0.3674*x[8]*x[13]*x[14]+0.4333*x[8]*x[14]*x[15]-0.2001*x[9]*x[10]*x[13]-0.14*x[9]*x[11]*x[13]-0.3239*x[9]*x[12]*x[13]+0.8619*x[9]*x[13]*x[15]-0.3171*x[10]*x[11]*x[13]-0.0644*x[10]*x[12]*x[15]+0.0133*x[11]*x[12]*x[13]-0.6707*x[12]*x[14]*x[15])+x[16] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[16])

m = m 		 # model get returned when including this script. 
