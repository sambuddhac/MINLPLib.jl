using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (x[1])^2+ (x[2])^2+ (x[3])^2+ (x[4])^2+ (x[5])^2+ (x[6])^2+ (x[7])^2+ (x[8])^2+ (x[9])^2+ (x[10])^2+ (x[11])^2+ (x[12])^2+ (x[13])^2+ (x[14])^2+ (x[15])^2+ (x[16])^2+ (x[17])^2+ (x[18])^2+ (x[19])^2+ (x[20])^2+ (x[21])^2+ (x[22])^2+ (x[23])^2+ (x[24])^2+ (x[25])^2+ (x[26])^2+ (x[27])^2+ (x[28])^2+ (x[29])^2+ (x[30])^2+ (x[31])^2+ (x[32])^2+ (x[33])^2+ (x[34])^2+ (x[35])^2+ (x[36])^2+ (x[37])^2+ (x[38])^2+ (x[39])^2+ (x[40])^2+ (x[41])^2+ (x[42])^2+ (x[43])^2+ (x[44])^2+ (x[45])^2+ (x[46])^2+ (x[47])^2+ (x[48])^2+ (x[49])^2+ (x[50])^2+ (0.5*x[1]+x[2]+1.5*x[3]+2*x[4]+2.5*x[5]+3*x[6]+3.5*x[7]+4*x[8]+4.5*x[9]+5*x[10]+5.5*x[11]+6*x[12]+6.5*x[13]+7*x[14]+7.5*x[15]+8*x[16]+8.5*x[17]+9*x[18]+9.5*x[19]+10*x[20]+10.5*x[21]+11*x[22]+11.5*x[23]+12*x[24]+12.5*x[25]+13*x[26]+13.5*x[27]+14*x[28]+14.5*x[29]+15*x[30]+15.5*x[31]+16*x[32]+16.5*x[33]+17*x[34]+17.5*x[35]+18*x[36]+18.5*x[37]+19*x[38]+19.5*x[39]+20*x[40]+20.5*x[41]+21*x[42]+21.5*x[43]+22*x[44]+22.5*x[45]+23*x[46]+23.5*x[47]+24*x[48]+24.5*x[49]+25*x[50])^2+ (0.5*x[1]+x[2]+1.5*x[3]+2*x[4]+2.5*x[5]+3*x[6]+3.5*x[7]+4*x[8]+4.5*x[9]+5*x[10]+5.5*x[11]+6*x[12]+6.5*x[13]+7*x[14]+7.5*x[15]+8*x[16]+8.5*x[17]+9*x[18]+9.5*x[19]+10*x[20]+10.5*x[21]+11*x[22]+11.5*x[23]+12*x[24]+12.5*x[25]+13*x[26]+13.5*x[27]+14*x[28]+14.5*x[29]+15*x[30]+15.5*x[31]+16*x[32]+16.5*x[33]+17*x[34]+17.5*x[35]+18*x[36]+18.5*x[37]+19*x[38]+19.5*x[39]+20*x[40]+20.5*x[41]+21*x[42]+21.5*x[43]+22*x[44]+22.5*x[45]+23*x[46]+23.5*x[47]+24*x[48]+24.5*x[49]+25*x[50])^4)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
