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
@NLconstraint(m, e1, -(0.7278*x[1]*x[2]-0.8657*x[1]*x[3]-0.1454*x[1]*x[4]-0.7254*x[1]*x[5]-0.7618*x[1]*x[6]-0.3881*x[1]*x[7]+0.2265*x[1]*x[8]+0.3273*x[1]*x[9]+0.7918*x[1]*x[10]+0.5074*x[2]*x[3]+0.2597*x[2]*x[4]-0.558*x[2]*x[5]-0.0323*x[2]*x[6]+0.23*x[2]*x[7]+0.9753*x[2]*x[8]+0.1184*x[2]*x[9]-0.2582*x[2]*x[10]-0.3248*x[3]*x[4]+0.4909*x[3]*x[5]+0.1395*x[3]*x[6]-0.0877*x[3]*x[7]+0.2964*x[3]*x[8]+0.3672*x[3]*x[9]-0.6592*x[3]*x[10]-0.4539*x[4]*x[5]-0.1185*x[4]*x[6]-0.0846*x[4]*x[7]-0.2095*x[4]*x[8]+0.3767*x[4]*x[9]-0.4022*x[4]*x[10]-0.5895*x[5]*x[6]-0.6154*x[5]*x[7]-0.162*x[5]*x[8]+0.3813*x[5]*x[9]-0.7189*x[5]*x[10]-0.7125*x[6]*x[7]+0.3249*x[6]*x[8]+0.1514*x[6]*x[9]+0.5499*x[6]*x[10]+0.5506*x[7]*x[8]+0.5307*x[7]*x[9]+0.753*x[7]*x[10]-0.8016*x[8]*x[9]-0.331*x[8]*x[10]+0.2902*x[9]*x[10]-0.7368*x[1]+0.6151*x[2]+0.0837*x[3]-0.4685*x[4]-0.0823*x[5]+0.0219*x[6]+0.0097*x[7]+0.9235*x[8]+0.1005*x[9]-0.6207*x[10]+0.6888*x[1]*x[2]*x[3]-0.4837*x[1]*x[2]*x[4]+0.6795*x[1]*x[2]*x[5]+0.0753*x[1]*x[2]*x[6]+0.2431*x[1]*x[2]*x[7]-0.0184*x[1]*x[2]*x[8]-0.4303*x[1]*x[2]*x[9]-0.5289*x[1]*x[2]*x[10]+0.3028*x[1]*x[3]*x[4]+0.2143*x[1]*x[3]*x[5]-0.2037*x[1]*x[3]*x[6]+0.6976*x[1]*x[3]*x[7]+0.2752*x[1]*x[3]*x[8]-0.4824*x[1]*x[3]*x[9]-0.2823*x[1]*x[3]*x[10]+0.1237*x[1]*x[4]*x[5]-0.7571*x[1]*x[4]*x[6]+0.9569*x[1]*x[4]*x[7]-0.2336*x[1]*x[4]*x[8]+0.4414*x[1]*x[4]*x[9]-0.2835*x[1]*x[4]*x[10]+0.8198*x[1]*x[5]*x[6]+0.0874*x[1]*x[5]*x[7]+0.9194*x[1]*x[5]*x[8]+0.8589*x[1]*x[5]*x[9]+0.2666*x[1]*x[5]*x[10]-0.4088*x[1]*x[6]*x[7]-0.6505*x[1]*x[6]*x[8]+0.6852*x[1]*x[6]*x[9]+0.2372*x[1]*x[6]*x[10]+0.4118*x[1]*x[7]*x[8]-0.5151*x[1]*x[7]*x[9]+0.5959*x[1]*x[7]*x[10]-0.218*x[1]*x[8]*x[9]-0.7801*x[1]*x[8]*x[10]+0.5074*x[1]*x[9]*x[10]-0.9404*x[2]*x[3]*x[4]+0.4013*x[2]*x[3]*x[5]+0.0504*x[2]*x[3]*x[6]+0.5051*x[2]*x[3]*x[7]+0.2954*x[2]*x[3]*x[8]+0.7422*x[2]*x[3]*x[9]+0.6614*x[2]*x[3]*x[10]+0.9144*x[2]*x[4]*x[5]-0.5555*x[2]*x[4]*x[6]+0.159*x[2]*x[4]*x[7]+0.9815*x[2]*x[4]*x[8]+0.6799*x[2]*x[4]*x[9]-0.6504*x[2]*x[4]*x[10]+0.4191*x[2]*x[5]*x[6]-0.3969*x[2]*x[5]*x[7]-0.9499*x[2]*x[5]*x[8]+0.8335*x[2]*x[5]*x[9]+0.3776*x[2]*x[5]*x[10]+0.5135*x[2]*x[6]*x[7]+0.8655*x[2]*x[6]*x[8]-0.89*x[2]*x[6]*x[9]-0.0021*x[2]*x[6]*x[10]-0.881*x[2]*x[7]*x[8]-0.6563*x[2]*x[7]*x[9]+0.3767*x[2]*x[7]*x[10]-0.3868*x[2]*x[8]*x[9]+0.4704*x[2]*x[8]*x[10]+0.5043*x[2]*x[9]*x[10]-0.2086*x[3]*x[4]*x[5]-0.8244*x[3]*x[4]*x[6]-0.9021*x[3]*x[4]*x[7]+0.5587*x[3]*x[4]*x[8]+0.3616*x[3]*x[4]*x[9]-0.3769*x[3]*x[4]*x[10]+0.0455*x[3]*x[5]*x[6]+0.0116*x[3]*x[5]*x[7]-0.1229*x[3]*x[5]*x[8]+0.1753*x[3]*x[5]*x[9]-0.4053*x[3]*x[5]*x[10]-0.4102*x[3]*x[6]*x[7]-0.8524*x[3]*x[6]*x[8]+0.9499*x[3]*x[6]*x[9]+0.4563*x[3]*x[6]*x[10]+0.5162*x[3]*x[7]*x[8]-0.3816*x[3]*x[7]*x[9]-0.507*x[3]*x[7]*x[10]-0.4862*x[3]*x[8]*x[9]+0.2361*x[3]*x[8]*x[10]+0.8756*x[3]*x[9]*x[10]+0.9844*x[4]*x[5]*x[6]-0.5504*x[4]*x[5]*x[7]+0.8946*x[4]*x[5]*x[8]+0.6956*x[4]*x[5]*x[9]+0.4003*x[4]*x[5]*x[10]+0.1089*x[4]*x[6]*x[7]-0.1168*x[4]*x[6]*x[8]-0.5016*x[4]*x[6]*x[9]+0.7953*x[4]*x[6]*x[10]-0.7085*x[4]*x[7]*x[8]-0.1308*x[4]*x[7]*x[9]-0.0852*x[4]*x[7]*x[10]-0.3812*x[4]*x[8]*x[9]-0.0382*x[4]*x[8]*x[10]+0.3795*x[4]*x[9]*x[10]+0.6216*x[5]*x[6]*x[7]-0.2157*x[5]*x[6]*x[8]-0.4137*x[5]*x[6]*x[9]+0.152*x[5]*x[6]*x[10]+0.4507*x[5]*x[7]*x[8]-0.7145*x[5]*x[7]*x[9]-0.3329*x[5]*x[7]*x[10]-0.6792*x[5]*x[8]*x[9]+0.0692*x[5]*x[8]*x[10]+0.4467*x[5]*x[9]*x[10]-0.5436*x[6]*x[7]*x[8]-0.602*x[6]*x[7]*x[9]+0.9452*x[6]*x[7]*x[10]+0.9871*x[6]*x[8]*x[9]-0.8361*x[6]*x[8]*x[10]-0.4982*x[6]*x[9]*x[10]-0.5683*x[7]*x[8]*x[9]-0.6084*x[7]*x[8]*x[10]+0.7005*x[7]*x[9]*x[10]-0.9106*x[8]*x[9]*x[10]+0.9951*x[1]*x[2]*x[3]*x[4]+0.1336*x[1]*x[2]*x[3]*x[5]+0.9318*x[1]*x[2]*x[3]*x[6]+0.4959*x[1]*x[2]*x[3]*x[7]-0.2652*x[1]*x[2]*x[3]*x[8]-0.0387*x[1]*x[2]*x[3]*x[9]-0.8525*x[1]*x[2]*x[3]*x[10]-0.9893*x[1]*x[2]*x[4]*x[5]-0.3058*x[1]*x[2]*x[4]*x[6]-0.3155*x[1]*x[2]*x[4]*x[7]-0.5641*x[1]*x[2]*x[4]*x[8]-0.7337*x[1]*x[2]*x[4]*x[9]+0.801*x[1]*x[2]*x[4]*x[10]-0.2265*x[1]*x[2]*x[5]*x[6]-0.109*x[1]*x[2]*x[5]*x[7]+0.3239*x[1]*x[2]*x[5]*x[8]-0.9678*x[1]*x[2]*x[5]*x[9]+0.3017*x[1]*x[2]*x[5]*x[10]+0.2928*x[1]*x[2]*x[6]*x[7]-0.354*x[1]*x[2]*x[6]*x[8]+0.7114*x[1]*x[2]*x[6]*x[9]-0.1974*x[1]*x[2]*x[6]*x[10]-0.5863*x[1]*x[2]*x[7]*x[8]+0.9371*x[1]*x[2]*x[7]*x[9]+0.1968*x[1]*x[2]*x[7]*x[10]+0.346*x[1]*x[2]*x[8]*x[9]-0.0862*x[1]*x[2]*x[8]*x[10]-0.34*x[1]*x[2]*x[9]*x[10]-0.7992*x[1]*x[3]*x[4]*x[5]+0.5109*x[1]*x[3]*x[4]*x[6]+0.2114*x[1]*x[3]*x[4]*x[7]+0.4381*x[1]*x[3]*x[4]*x[8]+0.7947*x[1]*x[3]*x[4]*x[9]+0.3165*x[1]*x[3]*x[4]*x[10]-0.6986*x[1]*x[3]*x[5]*x[6]+0.2246*x[1]*x[3]*x[5]*x[7]+0.9573*x[1]*x[3]*x[5]*x[8]+0.9983*x[1]*x[3]*x[5]*x[9]-0.4864*x[1]*x[3]*x[5]*x[10]+0.1017*x[1]*x[3]*x[6]*x[7]+0.3181*x[1]*x[3]*x[6]*x[8]+0.108*x[1]*x[3]*x[6]*x[9]+0.9555*x[1]*x[3]*x[6]*x[10]+0.8038*x[1]*x[3]*x[7]*x[8]+0.3158*x[1]*x[3]*x[7]*x[9]+0.4577*x[1]*x[3]*x[7]*x[10]-0.1951*x[1]*x[3]*x[8]*x[9]+0.8573*x[1]*x[3]*x[8]*x[10]-0.7043*x[1]*x[3]*x[9]*x[10]+0.3491*x[1]*x[4]*x[5]*x[6]+0.5392*x[1]*x[4]*x[5]*x[7]-0.3214*x[1]*x[4]*x[5]*x[8]-0.7684*x[1]*x[4]*x[5]*x[9]+0.2287*x[1]*x[4]*x[5]*x[10]+0.6412*x[1]*x[4]*x[6]*x[7]+0.8942*x[1]*x[4]*x[6]*x[8]+0.4623*x[1]*x[4]*x[6]*x[9]-0.0048*x[1]*x[4]*x[6]*x[10]-0.2504*x[1]*x[4]*x[7]*x[8]-0.157*x[1]*x[4]*x[7]*x[9]+0.1058*x[1]*x[4]*x[7]*x[10]+0.9958*x[1]*x[4]*x[8]*x[9]+0.9808*x[1]*x[4]*x[8]*x[10]+0.4926*x[1]*x[4]*x[9]*x[10]+0.9075*x[1]*x[5]*x[6]*x[7]-0.8135*x[1]*x[5]*x[6]*x[8]+0.468*x[1]*x[5]*x[6]*x[9]+0.5035*x[1]*x[5]*x[6]*x[10]+0.8937*x[1]*x[5]*x[7]*x[8]+0.4124*x[1]*x[5]*x[7]*x[9]+0.6276*x[1]*x[5]*x[7]*x[10]+0.1172*x[1]*x[5]*x[8]*x[9]-0.8766*x[1]*x[5]*x[8]*x[10]-0.0392*x[1]*x[5]*x[9]*x[10]+0.1954*x[1]*x[6]*x[7]*x[8]-0.7249*x[1]*x[6]*x[7]*x[9]+0.1748*x[1]*x[6]*x[7]*x[10]+0.0399*x[1]*x[6]*x[8]*x[9]+0.7718*x[1]*x[6]*x[8]*x[10]-0.3924*x[1]*x[6]*x[9]*x[10]+0.3393*x[1]*x[7]*x[8]*x[9]+0.3299*x[1]*x[7]*x[8]*x[10]+0.0074*x[1]*x[7]*x[9]*x[10]-0.4768*x[1]*x[8]*x[9]*x[10]-0.8469*x[2]*x[3]*x[4]*x[5]-0.7975*x[2]*x[3]*x[4]*x[6]+0.0985*x[2]*x[3]*x[4]*x[7]-0.2488*x[2]*x[3]*x[4]*x[8]-0.9697*x[2]*x[3]*x[4]*x[9]+0.5858*x[2]*x[3]*x[4]*x[10]+0.2418*x[2]*x[3]*x[5]*x[6]+0.5472*x[2]*x[3]*x[5]*x[7]+0.9072*x[2]*x[3]*x[5]*x[8]-0.7715*x[2]*x[3]*x[5]*x[9]-0.3631*x[2]*x[3]*x[5]*x[10]+0.1936*x[2]*x[3]*x[6]*x[7]-0.9037*x[2]*x[3]*x[6]*x[8]-0.7716*x[2]*x[3]*x[6]*x[9]-0.5681*x[2]*x[3]*x[6]*x[10]-0.7989*x[2]*x[3]*x[7]*x[8]-0.8533*x[2]*x[3]*x[7]*x[9]-0.5063*x[2]*x[3]*x[7]*x[10]-0.1132*x[2]*x[3]*x[8]*x[9]-0.5833*x[2]*x[3]*x[8]*x[10]+0.134*x[2]*x[3]*x[9]*x[10]-0.9514*x[2]*x[4]*x[5]*x[6]-0.1594*x[2]*x[4]*x[5]*x[7]-0.2043*x[2]*x[4]*x[5]*x[8]+0.9532*x[2]*x[4]*x[5]*x[9]+0.3852*x[2]*x[4]*x[5]*x[10]-0.9901*x[2]*x[4]*x[6]*x[7]-0.7402*x[2]*x[4]*x[6]*x[8]-0.9064*x[2]*x[4]*x[6]*x[9]+0.6796*x[2]*x[4]*x[6]*x[10]+0.357*x[2]*x[4]*x[7]*x[8]+0.1639*x[2]*x[4]*x[7]*x[9]+0.4671*x[2]*x[4]*x[7]*x[10]-0.7679*x[2]*x[4]*x[8]*x[9]+0.6806*x[2]*x[4]*x[8]*x[10]+0.67*x[2]*x[4]*x[9]*x[10]+0.4931*x[2]*x[5]*x[6]*x[7]+0.6864*x[2]*x[5]*x[6]*x[8]+0.0577*x[2]*x[5]*x[6]*x[9]+0.331*x[2]*x[5]*x[6]*x[10]+0.4615*x[2]*x[5]*x[7]*x[8]-0.1788*x[2]*x[5]*x[7]*x[9]-0.2886*x[2]*x[5]*x[7]*x[10]+0.4708*x[2]*x[5]*x[8]*x[9]-0.0574*x[2]*x[5]*x[8]*x[10]-0.0747*x[2]*x[5]*x[9]*x[10]+0.5194*x[2]*x[6]*x[7]*x[8]+0.4049*x[2]*x[6]*x[7]*x[9]-0.4841*x[2]*x[6]*x[7]*x[10]+0.8754*x[2]*x[6]*x[8]*x[9]-0.0878*x[2]*x[6]*x[8]*x[10]+0.617*x[2]*x[6]*x[9]*x[10]+0.8177*x[2]*x[7]*x[8]*x[9]+0.3898*x[2]*x[7]*x[8]*x[10]-0.561*x[2]*x[7]*x[9]*x[10]+0.7099*x[2]*x[8]*x[9]*x[10]+0.4888*x[3]*x[4]*x[5]*x[6]-0.3978*x[3]*x[4]*x[5]*x[7]+0.3439*x[3]*x[4]*x[5]*x[8]+0.2374*x[3]*x[4]*x[5]*x[9]+0.9351*x[3]*x[4]*x[5]*x[10]+0.9805*x[3]*x[4]*x[6]*x[7]-0.324*x[3]*x[4]*x[6]*x[8]+0.8415*x[3]*x[4]*x[6]*x[9]-0.3219*x[3]*x[4]*x[6]*x[10]+0.8619*x[3]*x[4]*x[7]*x[8]+0.0931*x[3]*x[4]*x[7]*x[9]-0.069*x[3]*x[4]*x[7]*x[10]-0.6462*x[3]*x[4]*x[8]*x[9]-0.244*x[3]*x[4]*x[8]*x[10]-0.6496*x[3]*x[4]*x[9]*x[10]-0.2863*x[3]*x[5]*x[6]*x[7]+0.3314*x[3]*x[5]*x[6]*x[8]+0.2371*x[3]*x[5]*x[6]*x[9]-0.0621*x[3]*x[5]*x[6]*x[10]-0.3675*x[3]*x[5]*x[7]*x[8]-0.4622*x[3]*x[5]*x[7]*x[9]-0.6002*x[3]*x[5]*x[7]*x[10]-0.1691*x[3]*x[5]*x[8]*x[9]+0.9586*x[3]*x[5]*x[8]*x[10]+0.0864*x[3]*x[5]*x[9]*x[10]-0.741*x[3]*x[6]*x[7]*x[8]+0.6095*x[3]*x[6]*x[7]*x[9]+0.6916*x[3]*x[6]*x[7]*x[10]+0.4181*x[3]*x[6]*x[8]*x[9]+0.0579*x[3]*x[6]*x[8]*x[10]+0.3277*x[3]*x[6]*x[9]*x[10]+0.8015*x[3]*x[7]*x[8]*x[9]+0.8823*x[3]*x[7]*x[8]*x[10]-0.7712*x[3]*x[7]*x[9]*x[10]+0.7333*x[3]*x[8]*x[9]*x[10]+0.2647*x[4]*x[5]*x[6]*x[7]-0.5144*x[4]*x[5]*x[6]*x[8]-0.6792*x[4]*x[5]*x[6]*x[9]-0.9575*x[4]*x[5]*x[6]*x[10]-0.6195*x[4]*x[5]*x[7]*x[8]-0.3753*x[4]*x[5]*x[7]*x[9]+0.6193*x[4]*x[5]*x[7]*x[10]+0.1474*x[4]*x[5]*x[8]*x[9]+0.6525*x[4]*x[5]*x[8]*x[10]-0.4271*x[4]*x[5]*x[9]*x[10]-0.679*x[4]*x[6]*x[7]*x[8]-0.3382*x[4]*x[6]*x[7]*x[9]-0.4683*x[4]*x[6]*x[7]*x[10]+0.0896*x[4]*x[6]*x[8]*x[9]+0.107*x[4]*x[6]*x[8]*x[10]-0.9568*x[4]*x[6]*x[9]*x[10]-0.7025*x[4]*x[7]*x[8]*x[9]-0.7902*x[4]*x[7]*x[8]*x[10]+0.2284*x[4]*x[7]*x[9]*x[10]-0.1874*x[4]*x[8]*x[9]*x[10]+0.8031*x[5]*x[6]*x[7]*x[8]+0.8857*x[5]*x[6]*x[7]*x[9]-0.6868*x[5]*x[6]*x[7]*x[10]+0.8739*x[5]*x[6]*x[8]*x[9]-0.7291*x[5]*x[6]*x[8]*x[10]-0.2574*x[5]*x[6]*x[9]*x[10]-0.357*x[5]*x[7]*x[8]*x[9]+0.4299*x[5]*x[7]*x[8]*x[10]+0.4594*x[5]*x[7]*x[9]*x[10]-0.2428*x[5]*x[8]*x[9]*x[10]+0.6579*x[6]*x[7]*x[8]*x[9]+0.9073*x[6]*x[7]*x[8]*x[10]-0.3832*x[6]*x[7]*x[9]*x[10]+0.1595*x[6]*x[8]*x[9]*x[10]-0.5331*x[7]*x[8]*x[9]*x[10])+x[11] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[11])

m = m 		 # model get returned when including this script. 
