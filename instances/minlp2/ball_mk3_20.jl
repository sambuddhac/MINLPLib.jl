using JuMP

m = Model()

# ----- Variables ----- #
i_Idx = Any[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21]
@variable(m, i[i_Idx])
set_integer(i[8])
set_lower_bound(i[8], 0.0)
set_upper_bound(i[8], 100.0)
set_integer(i[21])
set_lower_bound(i[21], 0.0)
set_upper_bound(i[21], 100.0)
set_integer(i[12])
set_lower_bound(i[12], 0.0)
set_upper_bound(i[12], 100.0)
set_integer(i[19])
set_lower_bound(i[19], 0.0)
set_upper_bound(i[19], 100.0)
set_integer(i[5])
set_lower_bound(i[5], 0.0)
set_upper_bound(i[5], 100.0)
set_integer(i[3])
set_lower_bound(i[3], 0.0)
set_upper_bound(i[3], 100.0)
set_integer(i[2])
set_lower_bound(i[2], 0.0)
set_upper_bound(i[2], 100.0)
set_integer(i[13])
set_lower_bound(i[13], 0.0)
set_upper_bound(i[13], 100.0)
set_integer(i[6])
set_lower_bound(i[6], 0.0)
set_upper_bound(i[6], 100.0)
set_integer(i[4])
set_lower_bound(i[4], 0.0)
set_upper_bound(i[4], 100.0)
set_integer(i[9])
set_lower_bound(i[9], 0.0)
set_upper_bound(i[9], 100.0)
set_integer(i[14])
set_lower_bound(i[14], 0.0)
set_upper_bound(i[14], 100.0)
set_integer(i[16])
set_lower_bound(i[16], 0.0)
set_upper_bound(i[16], 100.0)
set_integer(i[10])
set_lower_bound(i[10], 0.0)
set_upper_bound(i[10], 100.0)
set_integer(i[15])
set_lower_bound(i[15], 0.0)
set_upper_bound(i[15], 100.0)
set_integer(i[17])
set_lower_bound(i[17], 0.0)
set_upper_bound(i[17], 100.0)
set_integer(i[7])
set_lower_bound(i[7], 0.0)
set_upper_bound(i[7], 100.0)
set_integer(i[20])
set_lower_bound(i[20], 0.0)
set_upper_bound(i[20], 100.0)
set_integer(i[11])
set_lower_bound(i[11], 0.0)
set_upper_bound(i[11], 100.0)
set_integer(i[18])
set_lower_bound(i[18], 0.0)
set_upper_bound(i[18], 100.0)
set_lower_bound(i[2], -1.0)
set_upper_bound(i[2], 2.0)
set_lower_bound(i[3], -1.0)
set_upper_bound(i[3], 2.0)
set_lower_bound(i[4], -1.0)
set_upper_bound(i[4], 2.0)
set_lower_bound(i[5], -1.0)
set_upper_bound(i[5], 2.0)
set_lower_bound(i[6], -1.0)
set_upper_bound(i[6], 2.0)
set_lower_bound(i[7], -1.0)
set_upper_bound(i[7], 2.0)
set_lower_bound(i[8], -1.0)
set_upper_bound(i[8], 2.0)
set_lower_bound(i[9], -1.0)
set_upper_bound(i[9], 2.0)
set_lower_bound(i[10], -1.0)
set_upper_bound(i[10], 2.0)
set_lower_bound(i[11], -1.0)
set_upper_bound(i[11], 2.0)
set_lower_bound(i[12], -1.0)
set_upper_bound(i[12], 2.0)
set_lower_bound(i[13], -1.0)
set_upper_bound(i[13], 2.0)
set_lower_bound(i[14], -1.0)
set_upper_bound(i[14], 2.0)
set_lower_bound(i[15], -1.0)
set_upper_bound(i[15], 2.0)
set_lower_bound(i[16], -1.0)
set_upper_bound(i[16], 2.0)
set_lower_bound(i[17], -1.0)
set_upper_bound(i[17], 2.0)
set_lower_bound(i[18], -1.0)
set_upper_bound(i[18], 2.0)
set_lower_bound(i[19], -1.0)
set_upper_bound(i[19], 2.0)
set_lower_bound(i[20], -1.0)
set_upper_bound(i[20], 2.0)
set_lower_bound(i[21], -1.0)
set_upper_bound(i[21], 2.0)


# ----- Constraints ----- #
@NLconstraint(m, e2, 0.0560877535068921* (i[20])^2-0.0560877535068921*i[20]+0.0234361418326102* (i[19])^2-0.0234361418326102*i[19]+0.0804348252437088* (i[18])^2-0.0804348252437088*i[18]+0.083180630465482* (i[17])^2-0.083180630465482*i[17]+0.0168840147598981* (i[16])^2-0.0168840147598981*i[16]+0.0642555768399037* (i[15])^2-0.0642555768399037*i[15]+0.0515967329760445* (i[14])^2-0.0515967329760445*i[14]+0.0291406913653282* (i[13])^2-0.0291406913653282*i[13]+0.0358736092274657* (i[12])^2-0.0358736092274657*i[12]+0.0403619397376071* (i[11])^2-0.0403619397376071*i[11]+0.0604484044580273* (i[10])^2-0.0604484044580273*i[10]+0.0534869191762675* (i[9])^2-0.0534869191762675*i[9]+0.0820022096762534* (i[8])^2-0.0820022096762534*i[8]+0.0369575272885052* (i[7])^2-0.0369575272885052*i[7]+0.00889217633273991* (i[6])^2-0.00889217633273991*i[6]+0.0674863595874412* (i[5])^2-0.0674863595874412*i[5]+0.0436989257405813* (i[4])^2-0.0436989257405813*i[4]+0.0218982155241878* (i[3])^2-0.0218982155241878*i[3]+0.0699896991762921* (i[2])^2-0.0699896991762921*i[2]+0.0738876470847639* (i[21])^2-0.0738876470847639*i[21] <= -9.99999999999335e-5)


# ----- Objective ----- #
@objective(m, Min, i[2]+i[3]+i[4]+i[5]+i[6]+i[7]+i[8]+i[9]+i[10]+i[11]+i[12]+i[13]+i[14]+i[15]+i[16]+i[17]+i[18]+i[19]+i[20]+i[21])

m = m 		 # model get returned when including this script.