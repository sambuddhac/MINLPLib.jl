using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@constraint(m, e1, x[1]+5*x[4]-25*x[5] >= 1.0)
@constraint(m, e2, x[1]+0.5*x[2]+0.25*x[3]+7.41924571815058*x[4]-33.3866057316776*x[5] >= 1.64872127070013)
@constraint(m, e3, x[1]+x[2]+x[3]+10.8731273138362*x[4]-43.4925092553447*x[5] >= 2.71828182845905)
@constraint(m, e4, x[1]+1.5*x[2]+2.25*x[3]+15.6859117461832*x[4]-54.9006911116413*x[5] >= 4.48168907033806)
@constraint(m, e5, x[1]+2*x[2]+4*x[3]+22.1671682967919*x[4]-66.5015048903759*x[5] >= 7.38905609893065)
@constraint(m, e6, x[1]+2.5*x[2]+6.25*x[3]+30.4562349017587*x[4]-76.1405872543967*x[5] >= 12.1824939607035)
@constraint(m, e7, x[1]+3*x[2]+9*x[3]+40.1710738463753*x[4]-80.3421476927507*x[5] >= 20.0855369231877)
@constraint(m, e8, x[1]+3.5*x[2]+12.25*x[3]+49.6731779380385*x[4]-74.5097669070577*x[5] >= 33.1154519586923)
@constraint(m, e9, x[1]+4*x[2]+16*x[3]+54.5981500331442*x[4]-54.5981500331442*x[5] >= 54.5981500331442)
@constraint(m, e10, x[1]+4.5*x[2]+20.25*x[3]+45.0085656502609*x[4]-22.5042828251305*x[5] >= 90.0171313005218)
@constraint(m, e11, x[1]+5*x[2]+25*x[3] >= 148.413159102577)
@constraint(m, e12, -5*x[4]+25*x[5] >= -0.99999)
@constraint(m, e13, -4.5*x[4]+20.25*x[5] >= -0.99999)
@constraint(m, e14, -4*x[4]+16*x[5] >= -0.99999)
@constraint(m, e15, -3.5*x[4]+12.25*x[5] >= -0.99999)
@constraint(m, e16, -3*x[4]+9*x[5] >= -0.99999)
@constraint(m, e17, -2.5*x[4]+6.25*x[5] >= -0.99999)
@constraint(m, e18, -2*x[4]+4*x[5] >= -0.99999)
@constraint(m, e19, -1.5*x[4]+2.25*x[5] >= -0.99999)
@constraint(m, e20, -x[4]+x[5] >= -0.99999)
@constraint(m, e21, -0.5*x[4]+0.25*x[5] >= -0.99999)
@NLconstraint(m, e22, -( ((-1)+x[1]/(1-5*x[4]+25*x[5]))^2+ ((-1)+(x[1]+0.5*x[2]+0.25*x[3])/(1.64872127070013-7.41924571815058*x[4]+33.3866057316776*x[5]))^2+ ((-1)+(x[1]+x[2]+x[3])/(2.71828182845905-10.8731273138362*x[4]+43.4925092553447*x[5]))^2+ ((-1)+(x[1]+1.5*x[2]+2.25*x[3])/(4.48168907033806-15.6859117461832*x[4]+54.9006911116413*x[5]))^2+ ((-1)+(x[1]+2*x[2]+4*x[3])/(7.38905609893065-22.1671682967919*x[4]+66.5015048903759*x[5]))^2+ ((-1)+(x[1]+2.5*x[2]+6.25*x[3])/(12.1824939607035-30.4562349017587*x[4]+76.1405872543967*x[5]))^2+ ((-1)+(x[1]+3*x[2]+9*x[3])/(20.0855369231877-40.1710738463753*x[4]+80.3421476927507*x[5]))^2+ ((-1)+(x[1]+3.5*x[2]+12.25*x[3])/(33.1154519586923-49.6731779380385*x[4]+74.5097669070577*x[5]))^2+ ((-1)+(x[1]+4*x[2]+16*x[3])/(54.5981500331442-54.5981500331442*x[4]+54.5981500331442*x[5]))^2+ ((-1)+(x[1]+4.5*x[2]+20.25*x[3])/(90.0171313005218-45.0085656502609*x[4]+22.5042828251305*x[5]))^2+ ((-1)+0.00673794699908547*x[1]+0.0336897349954273*x[2]+0.168448674977137*x[3])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
