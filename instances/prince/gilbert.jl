using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 768, 769, 770, 771, 772, 773, 774, 775, 776, 777, 778, 779, 780, 781, 782, 783, 784, 785, 786, 787, 788, 789, 790, 791, 792, 793, 794, 795, 796, 797, 798, 799, 800, 801, 802, 803, 804, 805, 806, 807, 808, 809, 810, 811, 812, 813, 814, 815, 816, 817, 818, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934, 935, 936, 937, 938, 939, 940, 941, 942, 943, 944, 945, 946, 947, 948, 949, 950, 951, 952, 953, 954, 955, 956, 957, 958, 959, 960, 961, 962, 963, 964, 965, 966, 967, 968, 969, 970, 971, 972, 973, 974, 975, 976, 977, 978, 979, 980, 981, 982, 983, 984, 985, 986, 987, 988, 989, 990, 991, 992, 993, 994, 995, 996, 997, 998, 999, 1000]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, -0.5*( (x[1])^2+ (x[2])^2+ (x[3])^2+ (x[4])^2+ (x[5])^2+ (x[6])^2+ (x[7])^2+ (x[8])^2+ (x[9])^2+ (x[10])^2+ (x[11])^2+ (x[12])^2+ (x[13])^2+ (x[14])^2+ (x[15])^2+ (x[16])^2+ (x[17])^2+ (x[18])^2+ (x[19])^2+ (x[20])^2+ (x[21])^2+ (x[22])^2+ (x[23])^2+ (x[24])^2+ (x[25])^2+ (x[26])^2+ (x[27])^2+ (x[28])^2+ (x[29])^2+ (x[30])^2+ (x[31])^2+ (x[32])^2+ (x[33])^2+ (x[34])^2+ (x[35])^2+ (x[36])^2+ (x[37])^2+ (x[38])^2+ (x[39])^2+ (x[40])^2+ (x[41])^2+ (x[42])^2+ (x[43])^2+ (x[44])^2+ (x[45])^2+ (x[46])^2+ (x[47])^2+ (x[48])^2+ (x[49])^2+ (x[50])^2+ (x[51])^2+ (x[52])^2+ (x[53])^2+ (x[54])^2+ (x[55])^2+ (x[56])^2+ (x[57])^2+ (x[58])^2+ (x[59])^2+ (x[60])^2+ (x[61])^2+ (x[62])^2+ (x[63])^2+ (x[64])^2+ (x[65])^2+ (x[66])^2+ (x[67])^2+ (x[68])^2+ (x[69])^2+ (x[70])^2+ (x[71])^2+ (x[72])^2+ (x[73])^2+ (x[74])^2+ (x[75])^2+ (x[76])^2+ (x[77])^2+ (x[78])^2+ (x[79])^2+ (x[80])^2+ (x[81])^2+ (x[82])^2+ (x[83])^2+ (x[84])^2+ (x[85])^2+ (x[86])^2+ (x[87])^2+ (x[88])^2+ (x[89])^2+ (x[90])^2+ (x[91])^2+ (x[92])^2+ (x[93])^2+ (x[94])^2+ (x[95])^2+ (x[96])^2+ (x[97])^2+ (x[98])^2+ (x[99])^2+ (x[100])^2+ (x[101])^2+ (x[102])^2+ (x[103])^2+ (x[104])^2+ (x[105])^2+ (x[106])^2+ (x[107])^2+ (x[108])^2+ (x[109])^2+ (x[110])^2+ (x[111])^2+ (x[112])^2+ (x[113])^2+ (x[114])^2+ (x[115])^2+ (x[116])^2+ (x[117])^2+ (x[118])^2+ (x[119])^2+ (x[120])^2+ (x[121])^2+ (x[122])^2+ (x[123])^2+ (x[124])^2+ (x[125])^2+ (x[126])^2+ (x[127])^2+ (x[128])^2+ (x[129])^2+ (x[130])^2+ (x[131])^2+ (x[132])^2+ (x[133])^2+ (x[134])^2+ (x[135])^2+ (x[136])^2+ (x[137])^2+ (x[138])^2+ (x[139])^2+ (x[140])^2+ (x[141])^2+ (x[142])^2+ (x[143])^2+ (x[144])^2+ (x[145])^2+ (x[146])^2+ (x[147])^2+ (x[148])^2+ (x[149])^2+ (x[150])^2+ (x[151])^2+ (x[152])^2+ (x[153])^2+ (x[154])^2+ (x[155])^2+ (x[156])^2+ (x[157])^2+ (x[158])^2+ (x[159])^2+ (x[160])^2+ (x[161])^2+ (x[162])^2+ (x[163])^2+ (x[164])^2+ (x[165])^2+ (x[166])^2+ (x[167])^2+ (x[168])^2+ (x[169])^2+ (x[170])^2+ (x[171])^2+ (x[172])^2+ (x[173])^2+ (x[174])^2+ (x[175])^2+ (x[176])^2+ (x[177])^2+ (x[178])^2+ (x[179])^2+ (x[180])^2+ (x[181])^2+ (x[182])^2+ (x[183])^2+ (x[184])^2+ (x[185])^2+ (x[186])^2+ (x[187])^2+ (x[188])^2+ (x[189])^2+ (x[190])^2+ (x[191])^2+ (x[192])^2+ (x[193])^2+ (x[194])^2+ (x[195])^2+ (x[196])^2+ (x[197])^2+ (x[198])^2+ (x[199])^2+ (x[200])^2+ (x[201])^2+ (x[202])^2+ (x[203])^2+ (x[204])^2+ (x[205])^2+ (x[206])^2+ (x[207])^2+ (x[208])^2+ (x[209])^2+ (x[210])^2+ (x[211])^2+ (x[212])^2+ (x[213])^2+ (x[214])^2+ (x[215])^2+ (x[216])^2+ (x[217])^2+ (x[218])^2+ (x[219])^2+ (x[220])^2+ (x[221])^2+ (x[222])^2+ (x[223])^2+ (x[224])^2+ (x[225])^2+ (x[226])^2+ (x[227])^2+ (x[228])^2+ (x[229])^2+ (x[230])^2+ (x[231])^2+ (x[232])^2+ (x[233])^2+ (x[234])^2+ (x[235])^2+ (x[236])^2+ (x[237])^2+ (x[238])^2+ (x[239])^2+ (x[240])^2+ (x[241])^2+ (x[242])^2+ (x[243])^2+ (x[244])^2+ (x[245])^2+ (x[246])^2+ (x[247])^2+ (x[248])^2+ (x[249])^2+ (x[250])^2+ (x[251])^2+ (x[252])^2+ (x[253])^2+ (x[254])^2+ (x[255])^2+ (x[256])^2+ (x[257])^2+ (x[258])^2+ (x[259])^2+ (x[260])^2+ (x[261])^2+ (x[262])^2+ (x[263])^2+ (x[264])^2+ (x[265])^2+ (x[266])^2+ (x[267])^2+ (x[268])^2+ (x[269])^2+ (x[270])^2+ (x[271])^2+ (x[272])^2+ (x[273])^2+ (x[274])^2+ (x[275])^2+ (x[276])^2+ (x[277])^2+ (x[278])^2+ (x[279])^2+ (x[280])^2+ (x[281])^2+ (x[282])^2+ (x[283])^2+ (x[284])^2+ (x[285])^2+ (x[286])^2+ (x[287])^2+ (x[288])^2+ (x[289])^2+ (x[290])^2+ (x[291])^2+ (x[292])^2+ (x[293])^2+ (x[294])^2+ (x[295])^2+ (x[296])^2+ (x[297])^2+ (x[298])^2+ (x[299])^2+ (x[300])^2+ (x[301])^2+ (x[302])^2+ (x[303])^2+ (x[304])^2+ (x[305])^2+ (x[306])^2+ (x[307])^2+ (x[308])^2+ (x[309])^2+ (x[310])^2+ (x[311])^2+ (x[312])^2+ (x[313])^2+ (x[314])^2+ (x[315])^2+ (x[316])^2+ (x[317])^2+ (x[318])^2+ (x[319])^2+ (x[320])^2+ (x[321])^2+ (x[322])^2+ (x[323])^2+ (x[324])^2+ (x[325])^2+ (x[326])^2+ (x[327])^2+ (x[328])^2+ (x[329])^2+ (x[330])^2+ (x[331])^2+ (x[332])^2+ (x[333])^2+ (x[334])^2+ (x[335])^2+ (x[336])^2+ (x[337])^2+ (x[338])^2+ (x[339])^2+ (x[340])^2+ (x[341])^2+ (x[342])^2+ (x[343])^2+ (x[344])^2+ (x[345])^2+ (x[346])^2+ (x[347])^2+ (x[348])^2+ (x[349])^2+ (x[350])^2+ (x[351])^2+ (x[352])^2+ (x[353])^2+ (x[354])^2+ (x[355])^2+ (x[356])^2+ (x[357])^2+ (x[358])^2+ (x[359])^2+ (x[360])^2+ (x[361])^2+ (x[362])^2+ (x[363])^2+ (x[364])^2+ (x[365])^2+ (x[366])^2+ (x[367])^2+ (x[368])^2+ (x[369])^2+ (x[370])^2+ (x[371])^2+ (x[372])^2+ (x[373])^2+ (x[374])^2+ (x[375])^2+ (x[376])^2+ (x[377])^2+ (x[378])^2+ (x[379])^2+ (x[380])^2+ (x[381])^2+ (x[382])^2+ (x[383])^2+ (x[384])^2+ (x[385])^2+ (x[386])^2+ (x[387])^2+ (x[388])^2+ (x[389])^2+ (x[390])^2+ (x[391])^2+ (x[392])^2+ (x[393])^2+ (x[394])^2+ (x[395])^2+ (x[396])^2+ (x[397])^2+ (x[398])^2+ (x[399])^2+ (x[400])^2+ (x[401])^2+ (x[402])^2+ (x[403])^2+ (x[404])^2+ (x[405])^2+ (x[406])^2+ (x[407])^2+ (x[408])^2+ (x[409])^2+ (x[410])^2+ (x[411])^2+ (x[412])^2+ (x[413])^2+ (x[414])^2+ (x[415])^2+ (x[416])^2+ (x[417])^2+ (x[418])^2+ (x[419])^2+ (x[420])^2+ (x[421])^2+ (x[422])^2+ (x[423])^2+ (x[424])^2+ (x[425])^2+ (x[426])^2+ (x[427])^2+ (x[428])^2+ (x[429])^2+ (x[430])^2+ (x[431])^2+ (x[432])^2+ (x[433])^2+ (x[434])^2+ (x[435])^2+ (x[436])^2+ (x[437])^2+ (x[438])^2+ (x[439])^2+ (x[440])^2+ (x[441])^2+ (x[442])^2+ (x[443])^2+ (x[444])^2+ (x[445])^2+ (x[446])^2+ (x[447])^2+ (x[448])^2+ (x[449])^2+ (x[450])^2+ (x[451])^2+ (x[452])^2+ (x[453])^2+ (x[454])^2+ (x[455])^2+ (x[456])^2+ (x[457])^2+ (x[458])^2+ (x[459])^2+ (x[460])^2+ (x[461])^2+ (x[462])^2+ (x[463])^2+ (x[464])^2+ (x[465])^2+ (x[466])^2+ (x[467])^2+ (x[468])^2+ (x[469])^2+ (x[470])^2+ (x[471])^2+ (x[472])^2+ (x[473])^2+ (x[474])^2+ (x[475])^2+ (x[476])^2+ (x[477])^2+ (x[478])^2+ (x[479])^2+ (x[480])^2+ (x[481])^2+ (x[482])^2+ (x[483])^2+ (x[484])^2+ (x[485])^2+ (x[486])^2+ (x[487])^2+ (x[488])^2+ (x[489])^2+ (x[490])^2+ (x[491])^2+ (x[492])^2+ (x[493])^2+ (x[494])^2+ (x[495])^2+ (x[496])^2+ (x[497])^2+ (x[498])^2+ (x[499])^2+ (x[500])^2+ (x[501])^2+ (x[502])^2+ (x[503])^2+ (x[504])^2+ (x[505])^2+ (x[506])^2+ (x[507])^2+ (x[508])^2+ (x[509])^2+ (x[510])^2+ (x[511])^2+ (x[512])^2+ (x[513])^2+ (x[514])^2+ (x[515])^2+ (x[516])^2+ (x[517])^2+ (x[518])^2+ (x[519])^2+ (x[520])^2+ (x[521])^2+ (x[522])^2+ (x[523])^2+ (x[524])^2+ (x[525])^2+ (x[526])^2+ (x[527])^2+ (x[528])^2+ (x[529])^2+ (x[530])^2+ (x[531])^2+ (x[532])^2+ (x[533])^2+ (x[534])^2+ (x[535])^2+ (x[536])^2+ (x[537])^2+ (x[538])^2+ (x[539])^2+ (x[540])^2+ (x[541])^2+ (x[542])^2+ (x[543])^2+ (x[544])^2+ (x[545])^2+ (x[546])^2+ (x[547])^2+ (x[548])^2+ (x[549])^2+ (x[550])^2+ (x[551])^2+ (x[552])^2+ (x[553])^2+ (x[554])^2+ (x[555])^2+ (x[556])^2+ (x[557])^2+ (x[558])^2+ (x[559])^2+ (x[560])^2+ (x[561])^2+ (x[562])^2+ (x[563])^2+ (x[564])^2+ (x[565])^2+ (x[566])^2+ (x[567])^2+ (x[568])^2+ (x[569])^2+ (x[570])^2+ (x[571])^2+ (x[572])^2+ (x[573])^2+ (x[574])^2+ (x[575])^2+ (x[576])^2+ (x[577])^2+ (x[578])^2+ (x[579])^2+ (x[580])^2+ (x[581])^2+ (x[582])^2+ (x[583])^2+ (x[584])^2+ (x[585])^2+ (x[586])^2+ (x[587])^2+ (x[588])^2+ (x[589])^2+ (x[590])^2+ (x[591])^2+ (x[592])^2+ (x[593])^2+ (x[594])^2+ (x[595])^2+ (x[596])^2+ (x[597])^2+ (x[598])^2+ (x[599])^2+ (x[600])^2+ (x[601])^2+ (x[602])^2+ (x[603])^2+ (x[604])^2+ (x[605])^2+ (x[606])^2+ (x[607])^2+ (x[608])^2+ (x[609])^2+ (x[610])^2+ (x[611])^2+ (x[612])^2+ (x[613])^2+ (x[614])^2+ (x[615])^2+ (x[616])^2+ (x[617])^2+ (x[618])^2+ (x[619])^2+ (x[620])^2+ (x[621])^2+ (x[622])^2+ (x[623])^2+ (x[624])^2+ (x[625])^2+ (x[626])^2+ (x[627])^2+ (x[628])^2+ (x[629])^2+ (x[630])^2+ (x[631])^2+ (x[632])^2+ (x[633])^2+ (x[634])^2+ (x[635])^2+ (x[636])^2+ (x[637])^2+ (x[638])^2+ (x[639])^2+ (x[640])^2+ (x[641])^2+ (x[642])^2+ (x[643])^2+ (x[644])^2+ (x[645])^2+ (x[646])^2+ (x[647])^2+ (x[648])^2+ (x[649])^2+ (x[650])^2+ (x[651])^2+ (x[652])^2+ (x[653])^2+ (x[654])^2+ (x[655])^2+ (x[656])^2+ (x[657])^2+ (x[658])^2+ (x[659])^2+ (x[660])^2+ (x[661])^2+ (x[662])^2+ (x[663])^2+ (x[664])^2+ (x[665])^2+ (x[666])^2+ (x[667])^2+ (x[668])^2+ (x[669])^2+ (x[670])^2+ (x[671])^2+ (x[672])^2+ (x[673])^2+ (x[674])^2+ (x[675])^2+ (x[676])^2+ (x[677])^2+ (x[678])^2+ (x[679])^2+ (x[680])^2+ (x[681])^2+ (x[682])^2+ (x[683])^2+ (x[684])^2+ (x[685])^2+ (x[686])^2+ (x[687])^2+ (x[688])^2+ (x[689])^2+ (x[690])^2+ (x[691])^2+ (x[692])^2+ (x[693])^2+ (x[694])^2+ (x[695])^2+ (x[696])^2+ (x[697])^2+ (x[698])^2+ (x[699])^2+ (x[700])^2+ (x[701])^2+ (x[702])^2+ (x[703])^2+ (x[704])^2+ (x[705])^2+ (x[706])^2+ (x[707])^2+ (x[708])^2+ (x[709])^2+ (x[710])^2+ (x[711])^2+ (x[712])^2+ (x[713])^2+ (x[714])^2+ (x[715])^2+ (x[716])^2+ (x[717])^2+ (x[718])^2+ (x[719])^2+ (x[720])^2+ (x[721])^2+ (x[722])^2+ (x[723])^2+ (x[724])^2+ (x[725])^2+ (x[726])^2+ (x[727])^2+ (x[728])^2+ (x[729])^2+ (x[730])^2+ (x[731])^2+ (x[732])^2+ (x[733])^2+ (x[734])^2+ (x[735])^2+ (x[736])^2+ (x[737])^2+ (x[738])^2+ (x[739])^2+ (x[740])^2+ (x[741])^2+ (x[742])^2+ (x[743])^2+ (x[744])^2+ (x[745])^2+ (x[746])^2+ (x[747])^2+ (x[748])^2+ (x[749])^2+ (x[750])^2+ (x[751])^2+ (x[752])^2+ (x[753])^2+ (x[754])^2+ (x[755])^2+ (x[756])^2+ (x[757])^2+ (x[758])^2+ (x[759])^2+ (x[760])^2+ (x[761])^2+ (x[762])^2+ (x[763])^2+ (x[764])^2+ (x[765])^2+ (x[766])^2+ (x[767])^2+ (x[768])^2+ (x[769])^2+ (x[770])^2+ (x[771])^2+ (x[772])^2+ (x[773])^2+ (x[774])^2+ (x[775])^2+ (x[776])^2+ (x[777])^2+ (x[778])^2+ (x[779])^2+ (x[780])^2+ (x[781])^2+ (x[782])^2+ (x[783])^2+ (x[784])^2+ (x[785])^2+ (x[786])^2+ (x[787])^2+ (x[788])^2+ (x[789])^2+ (x[790])^2+ (x[791])^2+ (x[792])^2+ (x[793])^2+ (x[794])^2+ (x[795])^2+ (x[796])^2+ (x[797])^2+ (x[798])^2+ (x[799])^2+ (x[800])^2+ (x[801])^2+ (x[802])^2+ (x[803])^2+ (x[804])^2+ (x[805])^2+ (x[806])^2+ (x[807])^2+ (x[808])^2+ (x[809])^2+ (x[810])^2+ (x[811])^2+ (x[812])^2+ (x[813])^2+ (x[814])^2+ (x[815])^2+ (x[816])^2+ (x[817])^2+ (x[818])^2+ (x[819])^2+ (x[820])^2+ (x[821])^2+ (x[822])^2+ (x[823])^2+ (x[824])^2+ (x[825])^2+ (x[826])^2+ (x[827])^2+ (x[828])^2+ (x[829])^2+ (x[830])^2+ (x[831])^2+ (x[832])^2+ (x[833])^2+ (x[834])^2+ (x[835])^2+ (x[836])^2+ (x[837])^2+ (x[838])^2+ (x[839])^2+ (x[840])^2+ (x[841])^2+ (x[842])^2+ (x[843])^2+ (x[844])^2+ (x[845])^2+ (x[846])^2+ (x[847])^2+ (x[848])^2+ (x[849])^2+ (x[850])^2+ (x[851])^2+ (x[852])^2+ (x[853])^2+ (x[854])^2+ (x[855])^2+ (x[856])^2+ (x[857])^2+ (x[858])^2+ (x[859])^2+ (x[860])^2+ (x[861])^2+ (x[862])^2+ (x[863])^2+ (x[864])^2+ (x[865])^2+ (x[866])^2+ (x[867])^2+ (x[868])^2+ (x[869])^2+ (x[870])^2+ (x[871])^2+ (x[872])^2+ (x[873])^2+ (x[874])^2+ (x[875])^2+ (x[876])^2+ (x[877])^2+ (x[878])^2+ (x[879])^2+ (x[880])^2+ (x[881])^2+ (x[882])^2+ (x[883])^2+ (x[884])^2+ (x[885])^2+ (x[886])^2+ (x[887])^2+ (x[888])^2+ (x[889])^2+ (x[890])^2+ (x[891])^2+ (x[892])^2+ (x[893])^2+ (x[894])^2+ (x[895])^2+ (x[896])^2+ (x[897])^2+ (x[898])^2+ (x[899])^2+ (x[900])^2+ (x[901])^2+ (x[902])^2+ (x[903])^2+ (x[904])^2+ (x[905])^2+ (x[906])^2+ (x[907])^2+ (x[908])^2+ (x[909])^2+ (x[910])^2+ (x[911])^2+ (x[912])^2+ (x[913])^2+ (x[914])^2+ (x[915])^2+ (x[916])^2+ (x[917])^2+ (x[918])^2+ (x[919])^2+ (x[920])^2+ (x[921])^2+ (x[922])^2+ (x[923])^2+ (x[924])^2+ (x[925])^2+ (x[926])^2+ (x[927])^2+ (x[928])^2+ (x[929])^2+ (x[930])^2+ (x[931])^2+ (x[932])^2+ (x[933])^2+ (x[934])^2+ (x[935])^2+ (x[936])^2+ (x[937])^2+ (x[938])^2+ (x[939])^2+ (x[940])^2+ (x[941])^2+ (x[942])^2+ (x[943])^2+ (x[944])^2+ (x[945])^2+ (x[946])^2+ (x[947])^2+ (x[948])^2+ (x[949])^2+ (x[950])^2+ (x[951])^2+ (x[952])^2+ (x[953])^2+ (x[954])^2+ (x[955])^2+ (x[956])^2+ (x[957])^2+ (x[958])^2+ (x[959])^2+ (x[960])^2+ (x[961])^2+ (x[962])^2+ (x[963])^2+ (x[964])^2+ (x[965])^2+ (x[966])^2+ (x[967])^2+ (x[968])^2+ (x[969])^2+ (x[970])^2+ (x[971])^2+ (x[972])^2+ (x[973])^2+ (x[974])^2+ (x[975])^2+ (x[976])^2+ (x[977])^2+ (x[978])^2+ (x[979])^2+ (x[980])^2+ (x[981])^2+ (x[982])^2+ (x[983])^2+ (x[984])^2+ (x[985])^2+ (x[986])^2+ (x[987])^2+ (x[988])^2+ (x[989])^2+ (x[990])^2+ (x[991])^2+ (x[992])^2+ (x[993])^2+ (x[994])^2+ (x[995])^2+ (x[996])^2+ (x[997])^2+ (x[998])^2+ (x[999])^2+ (x[1000])^2) == -0.5)
@NLconstraint(m, e2, -0.5*( ((-1)+x[1])^2+ ((-1)+0.999*x[2])^2+ ((-1)+0.998*x[3])^2+ ((-1)+0.997*x[4])^2+ ((-1)+0.996*x[5])^2+ ((-1)+0.995*x[6])^2+ ((-1)+0.994*x[7])^2+ ((-1)+0.993*x[8])^2+ ((-1)+0.992*x[9])^2+ ((-1)+0.991*x[10])^2+ ((-1)+0.99*x[11])^2+ ((-1)+0.989*x[12])^2+ ((-1)+0.988*x[13])^2+ ((-1)+0.987*x[14])^2+ ((-1)+0.986*x[15])^2+ ((-1)+0.985*x[16])^2+ ((-1)+0.984*x[17])^2+ ((-1)+0.983*x[18])^2+ ((-1)+0.982*x[19])^2+ ((-1)+0.981*x[20])^2+ ((-1)+0.98*x[21])^2+ ((-1)+0.979*x[22])^2+ ((-1)+0.978*x[23])^2+ ((-1)+0.977*x[24])^2+ ((-1)+0.976*x[25])^2+ ((-1)+0.975*x[26])^2+ ((-1)+0.974*x[27])^2+ ((-1)+0.973*x[28])^2+ ((-1)+0.972*x[29])^2+ ((-1)+0.971*x[30])^2+ ((-1)+0.97*x[31])^2+ ((-1)+0.969*x[32])^2+ ((-1)+0.968*x[33])^2+ ((-1)+0.967*x[34])^2+ ((-1)+0.966*x[35])^2+ ((-1)+0.965*x[36])^2+ ((-1)+0.964*x[37])^2+ ((-1)+0.963*x[38])^2+ ((-1)+0.962*x[39])^2+ ((-1)+0.961*x[40])^2+ ((-1)+0.96*x[41])^2+ ((-1)+0.959*x[42])^2+ ((-1)+0.958*x[43])^2+ ((-1)+0.957*x[44])^2+ ((-1)+0.956*x[45])^2+ ((-1)+0.955*x[46])^2+ ((-1)+0.954*x[47])^2+ ((-1)+0.953*x[48])^2+ ((-1)+0.952*x[49])^2+ ((-1)+0.951*x[50])^2+ ((-1)+0.95*x[51])^2+ ((-1)+0.949*x[52])^2+ ((-1)+0.948*x[53])^2+ ((-1)+0.947*x[54])^2+ ((-1)+0.946*x[55])^2+ ((-1)+0.945*x[56])^2+ ((-1)+0.944*x[57])^2+ ((-1)+0.943*x[58])^2+ ((-1)+0.942*x[59])^2+ ((-1)+0.941*x[60])^2+ ((-1)+0.94*x[61])^2+ ((-1)+0.939*x[62])^2+ ((-1)+0.938*x[63])^2+ ((-1)+0.937*x[64])^2+ ((-1)+0.936*x[65])^2+ ((-1)+0.935*x[66])^2+ ((-1)+0.934*x[67])^2+ ((-1)+0.933*x[68])^2+ ((-1)+0.932*x[69])^2+ ((-1)+0.931*x[70])^2+ ((-1)+0.93*x[71])^2+ ((-1)+0.929*x[72])^2+ ((-1)+0.928*x[73])^2+ ((-1)+0.927*x[74])^2+ ((-1)+0.926*x[75])^2+ ((-1)+0.925*x[76])^2+ ((-1)+0.924*x[77])^2+ ((-1)+0.923*x[78])^2+ ((-1)+0.922*x[79])^2+ ((-1)+0.921*x[80])^2+ ((-1)+0.92*x[81])^2+ ((-1)+0.919*x[82])^2+ ((-1)+0.918*x[83])^2+ ((-1)+0.917*x[84])^2+ ((-1)+0.916*x[85])^2+ ((-1)+0.915*x[86])^2+ ((-1)+0.914*x[87])^2+ ((-1)+0.913*x[88])^2+ ((-1)+0.912*x[89])^2+ ((-1)+0.911*x[90])^2+ ((-1)+0.91*x[91])^2+ ((-1)+0.909*x[92])^2+ ((-1)+0.908*x[93])^2+ ((-1)+0.907*x[94])^2+ ((-1)+0.906*x[95])^2+ ((-1)+0.905*x[96])^2+ ((-1)+0.904*x[97])^2+ ((-1)+0.903*x[98])^2+ ((-1)+0.902*x[99])^2+ ((-1)+0.901*x[100])^2+ ((-1)+0.9*x[101])^2+ ((-1)+0.899*x[102])^2+ ((-1)+0.898*x[103])^2+ ((-1)+0.897*x[104])^2+ ((-1)+0.896*x[105])^2+ ((-1)+0.895*x[106])^2+ ((-1)+0.894*x[107])^2+ ((-1)+0.893*x[108])^2+ ((-1)+0.892*x[109])^2+ ((-1)+0.891*x[110])^2+ ((-1)+0.89*x[111])^2+ ((-1)+0.889*x[112])^2+ ((-1)+0.888*x[113])^2+ ((-1)+0.887*x[114])^2+ ((-1)+0.886*x[115])^2+ ((-1)+0.885*x[116])^2+ ((-1)+0.884*x[117])^2+ ((-1)+0.883*x[118])^2+ ((-1)+0.882*x[119])^2+ ((-1)+0.881*x[120])^2+ ((-1)+0.88*x[121])^2+ ((-1)+0.879*x[122])^2+ ((-1)+0.878*x[123])^2+ ((-1)+0.877*x[124])^2+ ((-1)+0.876*x[125])^2+ ((-1)+0.875*x[126])^2+ ((-1)+0.874*x[127])^2+ ((-1)+0.873*x[128])^2+ ((-1)+0.872*x[129])^2+ ((-1)+0.871*x[130])^2+ ((-1)+0.87*x[131])^2+ ((-1)+0.869*x[132])^2+ ((-1)+0.868*x[133])^2+ ((-1)+0.867*x[134])^2+ ((-1)+0.866*x[135])^2+ ((-1)+0.865*x[136])^2+ ((-1)+0.864*x[137])^2+ ((-1)+0.863*x[138])^2+ ((-1)+0.862*x[139])^2+ ((-1)+0.861*x[140])^2+ ((-1)+0.86*x[141])^2+ ((-1)+0.859*x[142])^2+ ((-1)+0.858*x[143])^2+ ((-1)+0.857*x[144])^2+ ((-1)+0.856*x[145])^2+ ((-1)+0.855*x[146])^2+ ((-1)+0.854*x[147])^2+ ((-1)+0.853*x[148])^2+ ((-1)+0.852*x[149])^2+ ((-1)+0.851*x[150])^2+ ((-1)+0.85*x[151])^2+ ((-1)+0.849*x[152])^2+ ((-1)+0.848*x[153])^2+ ((-1)+0.847*x[154])^2+ ((-1)+0.846*x[155])^2+ ((-1)+0.845*x[156])^2+ ((-1)+0.844*x[157])^2+ ((-1)+0.843*x[158])^2+ ((-1)+0.842*x[159])^2+ ((-1)+0.841*x[160])^2+ ((-1)+0.84*x[161])^2+ ((-1)+0.839*x[162])^2+ ((-1)+0.838*x[163])^2+ ((-1)+0.837*x[164])^2+ ((-1)+0.836*x[165])^2+ ((-1)+0.835*x[166])^2+ ((-1)+0.834*x[167])^2+ ((-1)+0.833*x[168])^2+ ((-1)+0.832*x[169])^2+ ((-1)+0.831*x[170])^2+ ((-1)+0.83*x[171])^2+ ((-1)+0.829*x[172])^2+ ((-1)+0.828*x[173])^2+ ((-1)+0.827*x[174])^2+ ((-1)+0.826*x[175])^2+ ((-1)+0.825*x[176])^2+ ((-1)+0.824*x[177])^2+ ((-1)+0.823*x[178])^2+ ((-1)+0.822*x[179])^2+ ((-1)+0.821*x[180])^2+ ((-1)+0.82*x[181])^2+ ((-1)+0.819*x[182])^2+ ((-1)+0.818*x[183])^2+ ((-1)+0.817*x[184])^2+ ((-1)+0.816*x[185])^2+ ((-1)+0.815*x[186])^2+ ((-1)+0.814*x[187])^2+ ((-1)+0.813*x[188])^2+ ((-1)+0.812*x[189])^2+ ((-1)+0.811*x[190])^2+ ((-1)+0.81*x[191])^2+ ((-1)+0.809*x[192])^2+ ((-1)+0.808*x[193])^2+ ((-1)+0.807*x[194])^2+ ((-1)+0.806*x[195])^2+ ((-1)+0.805*x[196])^2+ ((-1)+0.804*x[197])^2+ ((-1)+0.803*x[198])^2+ ((-1)+0.802*x[199])^2+ ((-1)+0.801*x[200])^2+ ((-1)+0.8*x[201])^2+ ((-1)+0.799*x[202])^2+ ((-1)+0.798*x[203])^2+ ((-1)+0.797*x[204])^2+ ((-1)+0.796*x[205])^2+ ((-1)+0.795*x[206])^2+ ((-1)+0.794*x[207])^2+ ((-1)+0.793*x[208])^2+ ((-1)+0.792*x[209])^2+ ((-1)+0.791*x[210])^2+ ((-1)+0.79*x[211])^2+ ((-1)+0.789*x[212])^2+ ((-1)+0.788*x[213])^2+ ((-1)+0.787*x[214])^2+ ((-1)+0.786*x[215])^2+ ((-1)+0.785*x[216])^2+ ((-1)+0.784*x[217])^2+ ((-1)+0.783*x[218])^2+ ((-1)+0.782*x[219])^2+ ((-1)+0.781*x[220])^2+ ((-1)+0.78*x[221])^2+ ((-1)+0.779*x[222])^2+ ((-1)+0.778*x[223])^2+ ((-1)+0.777*x[224])^2+ ((-1)+0.776*x[225])^2+ ((-1)+0.775*x[226])^2+ ((-1)+0.774*x[227])^2+ ((-1)+0.773*x[228])^2+ ((-1)+0.772*x[229])^2+ ((-1)+0.771*x[230])^2+ ((-1)+0.77*x[231])^2+ ((-1)+0.769*x[232])^2+ ((-1)+0.768*x[233])^2+ ((-1)+0.767*x[234])^2+ ((-1)+0.766*x[235])^2+ ((-1)+0.765*x[236])^2+ ((-1)+0.764*x[237])^2+ ((-1)+0.763*x[238])^2+ ((-1)+0.762*x[239])^2+ ((-1)+0.761*x[240])^2+ ((-1)+0.76*x[241])^2+ ((-1)+0.759*x[242])^2+ ((-1)+0.758*x[243])^2+ ((-1)+0.757*x[244])^2+ ((-1)+0.756*x[245])^2+ ((-1)+0.755*x[246])^2+ ((-1)+0.754*x[247])^2+ ((-1)+0.753*x[248])^2+ ((-1)+0.752*x[249])^2+ ((-1)+0.751*x[250])^2+ ((-1)+0.75*x[251])^2+ ((-1)+0.749*x[252])^2+ ((-1)+0.748*x[253])^2+ ((-1)+0.747*x[254])^2+ ((-1)+0.746*x[255])^2+ ((-1)+0.745*x[256])^2+ ((-1)+0.744*x[257])^2+ ((-1)+0.743*x[258])^2+ ((-1)+0.742*x[259])^2+ ((-1)+0.741*x[260])^2+ ((-1)+0.74*x[261])^2+ ((-1)+0.739*x[262])^2+ ((-1)+0.738*x[263])^2+ ((-1)+0.737*x[264])^2+ ((-1)+0.736*x[265])^2+ ((-1)+0.735*x[266])^2+ ((-1)+0.734*x[267])^2+ ((-1)+0.733*x[268])^2+ ((-1)+0.732*x[269])^2+ ((-1)+0.731*x[270])^2+ ((-1)+0.73*x[271])^2+ ((-1)+0.729*x[272])^2+ ((-1)+0.728*x[273])^2+ ((-1)+0.727*x[274])^2+ ((-1)+0.726*x[275])^2+ ((-1)+0.725*x[276])^2+ ((-1)+0.724*x[277])^2+ ((-1)+0.723*x[278])^2+ ((-1)+0.722*x[279])^2+ ((-1)+0.721*x[280])^2+ ((-1)+0.72*x[281])^2+ ((-1)+0.719*x[282])^2+ ((-1)+0.718*x[283])^2+ ((-1)+0.717*x[284])^2+ ((-1)+0.716*x[285])^2+ ((-1)+0.715*x[286])^2+ ((-1)+0.714*x[287])^2+ ((-1)+0.713*x[288])^2+ ((-1)+0.712*x[289])^2+ ((-1)+0.711*x[290])^2+ ((-1)+0.71*x[291])^2+ ((-1)+0.709*x[292])^2+ ((-1)+0.708*x[293])^2+ ((-1)+0.707*x[294])^2+ ((-1)+0.706*x[295])^2+ ((-1)+0.705*x[296])^2+ ((-1)+0.704*x[297])^2+ ((-1)+0.703*x[298])^2+ ((-1)+0.702*x[299])^2+ ((-1)+0.701*x[300])^2+ ((-1)+0.7*x[301])^2+ ((-1)+0.699*x[302])^2+ ((-1)+0.698*x[303])^2+ ((-1)+0.697*x[304])^2+ ((-1)+0.696*x[305])^2+ ((-1)+0.695*x[306])^2+ ((-1)+0.694*x[307])^2+ ((-1)+0.693*x[308])^2+ ((-1)+0.692*x[309])^2+ ((-1)+0.691*x[310])^2+ ((-1)+0.69*x[311])^2+ ((-1)+0.689*x[312])^2+ ((-1)+0.688*x[313])^2+ ((-1)+0.687*x[314])^2+ ((-1)+0.686*x[315])^2+ ((-1)+0.685*x[316])^2+ ((-1)+0.684*x[317])^2+ ((-1)+0.683*x[318])^2+ ((-1)+0.682*x[319])^2+ ((-1)+0.681*x[320])^2+ ((-1)+0.68*x[321])^2+ ((-1)+0.679*x[322])^2+ ((-1)+0.678*x[323])^2+ ((-1)+0.677*x[324])^2+ ((-1)+0.676*x[325])^2+ ((-1)+0.675*x[326])^2+ ((-1)+0.674*x[327])^2+ ((-1)+0.673*x[328])^2+ ((-1)+0.672*x[329])^2+ ((-1)+0.671*x[330])^2+ ((-1)+0.67*x[331])^2+ ((-1)+0.669*x[332])^2+ ((-1)+0.668*x[333])^2+ ((-1)+0.667*x[334])^2+ ((-1)+0.666*x[335])^2+ ((-1)+0.665*x[336])^2+ ((-1)+0.664*x[337])^2+ ((-1)+0.663*x[338])^2+ ((-1)+0.662*x[339])^2+ ((-1)+0.661*x[340])^2+ ((-1)+0.66*x[341])^2+ ((-1)+0.659*x[342])^2+ ((-1)+0.658*x[343])^2+ ((-1)+0.657*x[344])^2+ ((-1)+0.656*x[345])^2+ ((-1)+0.655*x[346])^2+ ((-1)+0.654*x[347])^2+ ((-1)+0.653*x[348])^2+ ((-1)+0.652*x[349])^2+ ((-1)+0.651*x[350])^2+ ((-1)+0.65*x[351])^2+ ((-1)+0.649*x[352])^2+ ((-1)+0.648*x[353])^2+ ((-1)+0.647*x[354])^2+ ((-1)+0.646*x[355])^2+ ((-1)+0.645*x[356])^2+ ((-1)+0.644*x[357])^2+ ((-1)+0.643*x[358])^2+ ((-1)+0.642*x[359])^2+ ((-1)+0.641*x[360])^2+ ((-1)+0.64*x[361])^2+ ((-1)+0.639*x[362])^2+ ((-1)+0.638*x[363])^2+ ((-1)+0.637*x[364])^2+ ((-1)+0.636*x[365])^2+ ((-1)+0.635*x[366])^2+ ((-1)+0.634*x[367])^2+ ((-1)+0.633*x[368])^2+ ((-1)+0.632*x[369])^2+ ((-1)+0.631*x[370])^2+ ((-1)+0.63*x[371])^2+ ((-1)+0.629*x[372])^2+ ((-1)+0.628*x[373])^2+ ((-1)+0.627*x[374])^2+ ((-1)+0.626*x[375])^2+ ((-1)+0.625*x[376])^2+ ((-1)+0.624*x[377])^2+ ((-1)+0.623*x[378])^2+ ((-1)+0.622*x[379])^2+ ((-1)+0.621*x[380])^2+ ((-1)+0.62*x[381])^2+ ((-1)+0.619*x[382])^2+ ((-1)+0.618*x[383])^2+ ((-1)+0.617*x[384])^2+ ((-1)+0.616*x[385])^2+ ((-1)+0.615*x[386])^2+ ((-1)+0.614*x[387])^2+ ((-1)+0.613*x[388])^2+ ((-1)+0.612*x[389])^2+ ((-1)+0.611*x[390])^2+ ((-1)+0.61*x[391])^2+ ((-1)+0.609*x[392])^2+ ((-1)+0.608*x[393])^2+ ((-1)+0.607*x[394])^2+ ((-1)+0.606*x[395])^2+ ((-1)+0.605*x[396])^2+ ((-1)+0.604*x[397])^2+ ((-1)+0.603*x[398])^2+ ((-1)+0.602*x[399])^2+ ((-1)+0.601*x[400])^2+ ((-1)+0.6*x[401])^2+ ((-1)+0.599*x[402])^2+ ((-1)+0.598*x[403])^2+ ((-1)+0.597*x[404])^2+ ((-1)+0.596*x[405])^2+ ((-1)+0.595*x[406])^2+ ((-1)+0.594*x[407])^2+ ((-1)+0.593*x[408])^2+ ((-1)+0.592*x[409])^2+ ((-1)+0.591*x[410])^2+ ((-1)+0.59*x[411])^2+ ((-1)+0.589*x[412])^2+ ((-1)+0.588*x[413])^2+ ((-1)+0.587*x[414])^2+ ((-1)+0.586*x[415])^2+ ((-1)+0.585*x[416])^2+ ((-1)+0.584*x[417])^2+ ((-1)+0.583*x[418])^2+ ((-1)+0.582*x[419])^2+ ((-1)+0.581*x[420])^2+ ((-1)+0.58*x[421])^2+ ((-1)+0.579*x[422])^2+ ((-1)+0.578*x[423])^2+ ((-1)+0.577*x[424])^2+ ((-1)+0.576*x[425])^2+ ((-1)+0.575*x[426])^2+ ((-1)+0.574*x[427])^2+ ((-1)+0.573*x[428])^2+ ((-1)+0.572*x[429])^2+ ((-1)+0.571*x[430])^2+ ((-1)+0.57*x[431])^2+ ((-1)+0.569*x[432])^2+ ((-1)+0.568*x[433])^2+ ((-1)+0.567*x[434])^2+ ((-1)+0.566*x[435])^2+ ((-1)+0.565*x[436])^2+ ((-1)+0.564*x[437])^2+ ((-1)+0.563*x[438])^2+ ((-1)+0.562*x[439])^2+ ((-1)+0.561*x[440])^2+ ((-1)+0.56*x[441])^2+ ((-1)+0.559*x[442])^2+ ((-1)+0.558*x[443])^2+ ((-1)+0.557*x[444])^2+ ((-1)+0.556*x[445])^2+ ((-1)+0.555*x[446])^2+ ((-1)+0.554*x[447])^2+ ((-1)+0.553*x[448])^2+ ((-1)+0.552*x[449])^2+ ((-1)+0.551*x[450])^2+ ((-1)+0.55*x[451])^2+ ((-1)+0.549*x[452])^2+ ((-1)+0.548*x[453])^2+ ((-1)+0.547*x[454])^2+ ((-1)+0.546*x[455])^2+ ((-1)+0.545*x[456])^2+ ((-1)+0.544*x[457])^2+ ((-1)+0.543*x[458])^2+ ((-1)+0.542*x[459])^2+ ((-1)+0.541*x[460])^2+ ((-1)+0.54*x[461])^2+ ((-1)+0.539*x[462])^2+ ((-1)+0.538*x[463])^2+ ((-1)+0.537*x[464])^2+ ((-1)+0.536*x[465])^2+ ((-1)+0.535*x[466])^2+ ((-1)+0.534*x[467])^2+ ((-1)+0.533*x[468])^2+ ((-1)+0.532*x[469])^2+ ((-1)+0.531*x[470])^2+ ((-1)+0.53*x[471])^2+ ((-1)+0.529*x[472])^2+ ((-1)+0.528*x[473])^2+ ((-1)+0.527*x[474])^2+ ((-1)+0.526*x[475])^2+ ((-1)+0.525*x[476])^2+ ((-1)+0.524*x[477])^2+ ((-1)+0.523*x[478])^2+ ((-1)+0.522*x[479])^2+ ((-1)+0.521*x[480])^2+ ((-1)+0.52*x[481])^2+ ((-1)+0.519*x[482])^2+ ((-1)+0.518*x[483])^2+ ((-1)+0.517*x[484])^2+ ((-1)+0.516*x[485])^2+ ((-1)+0.515*x[486])^2+ ((-1)+0.514*x[487])^2+ ((-1)+0.513*x[488])^2+ ((-1)+0.512*x[489])^2+ ((-1)+0.511*x[490])^2+ ((-1)+0.51*x[491])^2+ ((-1)+0.509*x[492])^2+ ((-1)+0.508*x[493])^2+ ((-1)+0.507*x[494])^2+ ((-1)+0.506*x[495])^2+ ((-1)+0.505*x[496])^2+ ((-1)+0.504*x[497])^2+ ((-1)+0.503*x[498])^2+ ((-1)+0.502*x[499])^2+ ((-1)+0.501*x[500])^2+ ((-1)+0.5*x[501])^2+ ((-1)+0.499*x[502])^2+ ((-1)+0.498*x[503])^2+ ((-1)+0.497*x[504])^2+ ((-1)+0.496*x[505])^2+ ((-1)+0.495*x[506])^2+ ((-1)+0.494*x[507])^2+ ((-1)+0.493*x[508])^2+ ((-1)+0.492*x[509])^2+ ((-1)+0.491*x[510])^2+ ((-1)+0.49*x[511])^2+ ((-1)+0.489*x[512])^2+ ((-1)+0.488*x[513])^2+ ((-1)+0.487*x[514])^2+ ((-1)+0.486*x[515])^2+ ((-1)+0.485*x[516])^2+ ((-1)+0.484*x[517])^2+ ((-1)+0.483*x[518])^2+ ((-1)+0.482*x[519])^2+ ((-1)+0.481*x[520])^2+ ((-1)+0.48*x[521])^2+ ((-1)+0.479*x[522])^2+ ((-1)+0.478*x[523])^2+ ((-1)+0.477*x[524])^2+ ((-1)+0.476*x[525])^2+ ((-1)+0.475*x[526])^2+ ((-1)+0.474*x[527])^2+ ((-1)+0.473*x[528])^2+ ((-1)+0.472*x[529])^2+ ((-1)+0.471*x[530])^2+ ((-1)+0.47*x[531])^2+ ((-1)+0.469*x[532])^2+ ((-1)+0.468*x[533])^2+ ((-1)+0.467*x[534])^2+ ((-1)+0.466*x[535])^2+ ((-1)+0.465*x[536])^2+ ((-1)+0.464*x[537])^2+ ((-1)+0.463*x[538])^2+ ((-1)+0.462*x[539])^2+ ((-1)+0.461*x[540])^2+ ((-1)+0.46*x[541])^2+ ((-1)+0.459*x[542])^2+ ((-1)+0.458*x[543])^2+ ((-1)+0.457*x[544])^2+ ((-1)+0.456*x[545])^2+ ((-1)+0.455*x[546])^2+ ((-1)+0.454*x[547])^2+ ((-1)+0.453*x[548])^2+ ((-1)+0.452*x[549])^2+ ((-1)+0.451*x[550])^2+ ((-1)+0.45*x[551])^2+ ((-1)+0.449*x[552])^2+ ((-1)+0.448*x[553])^2+ ((-1)+0.447*x[554])^2+ ((-1)+0.446*x[555])^2+ ((-1)+0.445*x[556])^2+ ((-1)+0.444*x[557])^2+ ((-1)+0.443*x[558])^2+ ((-1)+0.442*x[559])^2+ ((-1)+0.441*x[560])^2+ ((-1)+0.44*x[561])^2+ ((-1)+0.439*x[562])^2+ ((-1)+0.438*x[563])^2+ ((-1)+0.437*x[564])^2+ ((-1)+0.436*x[565])^2+ ((-1)+0.435*x[566])^2+ ((-1)+0.434*x[567])^2+ ((-1)+0.433*x[568])^2+ ((-1)+0.432*x[569])^2+ ((-1)+0.431*x[570])^2+ ((-1)+0.43*x[571])^2+ ((-1)+0.429*x[572])^2+ ((-1)+0.428*x[573])^2+ ((-1)+0.427*x[574])^2+ ((-1)+0.426*x[575])^2+ ((-1)+0.425*x[576])^2+ ((-1)+0.424*x[577])^2+ ((-1)+0.423*x[578])^2+ ((-1)+0.422*x[579])^2+ ((-1)+0.421*x[580])^2+ ((-1)+0.42*x[581])^2+ ((-1)+0.419*x[582])^2+ ((-1)+0.418*x[583])^2+ ((-1)+0.417*x[584])^2+ ((-1)+0.416*x[585])^2+ ((-1)+0.415*x[586])^2+ ((-1)+0.414*x[587])^2+ ((-1)+0.413*x[588])^2+ ((-1)+0.412*x[589])^2+ ((-1)+0.411*x[590])^2+ ((-1)+0.41*x[591])^2+ ((-1)+0.409*x[592])^2+ ((-1)+0.408*x[593])^2+ ((-1)+0.407*x[594])^2+ ((-1)+0.406*x[595])^2+ ((-1)+0.405*x[596])^2+ ((-1)+0.404*x[597])^2+ ((-1)+0.403*x[598])^2+ ((-1)+0.402*x[599])^2+ ((-1)+0.401*x[600])^2+ ((-1)+0.4*x[601])^2+ ((-1)+0.399*x[602])^2+ ((-1)+0.398*x[603])^2+ ((-1)+0.397*x[604])^2+ ((-1)+0.396*x[605])^2+ ((-1)+0.395*x[606])^2+ ((-1)+0.394*x[607])^2+ ((-1)+0.393*x[608])^2+ ((-1)+0.392*x[609])^2+ ((-1)+0.391*x[610])^2+ ((-1)+0.39*x[611])^2+ ((-1)+0.389*x[612])^2+ ((-1)+0.388*x[613])^2+ ((-1)+0.387*x[614])^2+ ((-1)+0.386*x[615])^2+ ((-1)+0.385*x[616])^2+ ((-1)+0.384*x[617])^2+ ((-1)+0.383*x[618])^2+ ((-1)+0.382*x[619])^2+ ((-1)+0.381*x[620])^2+ ((-1)+0.38*x[621])^2+ ((-1)+0.379*x[622])^2+ ((-1)+0.378*x[623])^2+ ((-1)+0.377*x[624])^2+ ((-1)+0.376*x[625])^2+ ((-1)+0.375*x[626])^2+ ((-1)+0.374*x[627])^2+ ((-1)+0.373*x[628])^2+ ((-1)+0.372*x[629])^2+ ((-1)+0.371*x[630])^2+ ((-1)+0.37*x[631])^2+ ((-1)+0.369*x[632])^2+ ((-1)+0.368*x[633])^2+ ((-1)+0.367*x[634])^2+ ((-1)+0.366*x[635])^2+ ((-1)+0.365*x[636])^2+ ((-1)+0.364*x[637])^2+ ((-1)+0.363*x[638])^2+ ((-1)+0.362*x[639])^2+ ((-1)+0.361*x[640])^2+ ((-1)+0.36*x[641])^2+ ((-1)+0.359*x[642])^2+ ((-1)+0.358*x[643])^2+ ((-1)+0.357*x[644])^2+ ((-1)+0.356*x[645])^2+ ((-1)+0.355*x[646])^2+ ((-1)+0.354*x[647])^2+ ((-1)+0.353*x[648])^2+ ((-1)+0.352*x[649])^2+ ((-1)+0.351*x[650])^2+ ((-1)+0.35*x[651])^2+ ((-1)+0.349*x[652])^2+ ((-1)+0.348*x[653])^2+ ((-1)+0.347*x[654])^2+ ((-1)+0.346*x[655])^2+ ((-1)+0.345*x[656])^2+ ((-1)+0.344*x[657])^2+ ((-1)+0.343*x[658])^2+ ((-1)+0.342*x[659])^2+ ((-1)+0.341*x[660])^2+ ((-1)+0.34*x[661])^2+ ((-1)+0.339*x[662])^2+ ((-1)+0.338*x[663])^2+ ((-1)+0.337*x[664])^2+ ((-1)+0.336*x[665])^2+ ((-1)+0.335*x[666])^2+ ((-1)+0.334*x[667])^2+ ((-1)+0.333*x[668])^2+ ((-1)+0.332*x[669])^2+ ((-1)+0.331*x[670])^2+ ((-1)+0.33*x[671])^2+ ((-1)+0.329*x[672])^2+ ((-1)+0.328*x[673])^2+ ((-1)+0.327*x[674])^2+ ((-1)+0.326*x[675])^2+ ((-1)+0.325*x[676])^2+ ((-1)+0.324*x[677])^2+ ((-1)+0.323*x[678])^2+ ((-1)+0.322*x[679])^2+ ((-1)+0.321*x[680])^2+ ((-1)+0.32*x[681])^2+ ((-1)+0.319*x[682])^2+ ((-1)+0.318*x[683])^2+ ((-1)+0.317*x[684])^2+ ((-1)+0.316*x[685])^2+ ((-1)+0.315*x[686])^2+ ((-1)+0.314*x[687])^2+ ((-1)+0.313*x[688])^2+ ((-1)+0.312*x[689])^2+ ((-1)+0.311*x[690])^2+ ((-1)+0.31*x[691])^2+ ((-1)+0.309*x[692])^2+ ((-1)+0.308*x[693])^2+ ((-1)+0.307*x[694])^2+ ((-1)+0.306*x[695])^2+ ((-1)+0.305*x[696])^2+ ((-1)+0.304*x[697])^2+ ((-1)+0.303*x[698])^2+ ((-1)+0.302*x[699])^2+ ((-1)+0.301*x[700])^2+ ((-1)+0.3*x[701])^2+ ((-1)+0.299*x[702])^2+ ((-1)+0.298*x[703])^2+ ((-1)+0.297*x[704])^2+ ((-1)+0.296*x[705])^2+ ((-1)+0.295*x[706])^2+ ((-1)+0.294*x[707])^2+ ((-1)+0.293*x[708])^2+ ((-1)+0.292*x[709])^2+ ((-1)+0.291*x[710])^2+ ((-1)+0.29*x[711])^2+ ((-1)+0.289*x[712])^2+ ((-1)+0.288*x[713])^2+ ((-1)+0.287*x[714])^2+ ((-1)+0.286*x[715])^2+ ((-1)+0.285*x[716])^2+ ((-1)+0.284*x[717])^2+ ((-1)+0.283*x[718])^2+ ((-1)+0.282*x[719])^2+ ((-1)+0.281*x[720])^2+ ((-1)+0.28*x[721])^2+ ((-1)+0.279*x[722])^2+ ((-1)+0.278*x[723])^2+ ((-1)+0.277*x[724])^2+ ((-1)+0.276*x[725])^2+ ((-1)+0.275*x[726])^2+ ((-1)+0.274*x[727])^2+ ((-1)+0.273*x[728])^2+ ((-1)+0.272*x[729])^2+ ((-1)+0.271*x[730])^2+ ((-1)+0.27*x[731])^2+ ((-1)+0.269*x[732])^2+ ((-1)+0.268*x[733])^2+ ((-1)+0.267*x[734])^2+ ((-1)+0.266*x[735])^2+ ((-1)+0.265*x[736])^2+ ((-1)+0.264*x[737])^2+ ((-1)+0.263*x[738])^2+ ((-1)+0.262*x[739])^2+ ((-1)+0.261*x[740])^2+ ((-1)+0.26*x[741])^2+ ((-1)+0.259*x[742])^2+ ((-1)+0.258*x[743])^2+ ((-1)+0.257*x[744])^2+ ((-1)+0.256*x[745])^2+ ((-1)+0.255*x[746])^2+ ((-1)+0.254*x[747])^2+ ((-1)+0.253*x[748])^2+ ((-1)+0.252*x[749])^2+ ((-1)+0.251*x[750])^2+ ((-1)+0.25*x[751])^2+ ((-1)+0.249*x[752])^2+ ((-1)+0.248*x[753])^2+ ((-1)+0.247*x[754])^2+ ((-1)+0.246*x[755])^2+ ((-1)+0.245*x[756])^2+ ((-1)+0.244*x[757])^2+ ((-1)+0.243*x[758])^2+ ((-1)+0.242*x[759])^2+ ((-1)+0.241*x[760])^2+ ((-1)+0.24*x[761])^2+ ((-1)+0.239*x[762])^2+ ((-1)+0.238*x[763])^2+ ((-1)+0.237*x[764])^2+ ((-1)+0.236*x[765])^2+ ((-1)+0.235*x[766])^2+ ((-1)+0.234*x[767])^2+ ((-1)+0.233*x[768])^2+ ((-1)+0.232*x[769])^2+ ((-1)+0.231*x[770])^2+ ((-1)+0.23*x[771])^2+ ((-1)+0.229*x[772])^2+ ((-1)+0.228*x[773])^2+ ((-1)+0.227*x[774])^2+ ((-1)+0.226*x[775])^2+ ((-1)+0.225*x[776])^2+ ((-1)+0.224*x[777])^2+ ((-1)+0.223*x[778])^2+ ((-1)+0.222*x[779])^2+ ((-1)+0.221*x[780])^2+ ((-1)+0.22*x[781])^2+ ((-1)+0.219*x[782])^2+ ((-1)+0.218*x[783])^2+ ((-1)+0.217*x[784])^2+ ((-1)+0.216*x[785])^2+ ((-1)+0.215*x[786])^2+ ((-1)+0.214*x[787])^2+ ((-1)+0.213*x[788])^2+ ((-1)+0.212*x[789])^2+ ((-1)+0.211*x[790])^2+ ((-1)+0.21*x[791])^2+ ((-1)+0.209*x[792])^2+ ((-1)+0.208*x[793])^2+ ((-1)+0.207*x[794])^2+ ((-1)+0.206*x[795])^2+ ((-1)+0.205*x[796])^2+ ((-1)+0.204*x[797])^2+ ((-1)+0.203*x[798])^2+ ((-1)+0.202*x[799])^2+ ((-1)+0.201*x[800])^2+ ((-1)+0.2*x[801])^2+ ((-1)+0.199*x[802])^2+ ((-1)+0.198*x[803])^2+ ((-1)+0.197*x[804])^2+ ((-1)+0.196*x[805])^2+ ((-1)+0.195*x[806])^2+ ((-1)+0.194*x[807])^2+ ((-1)+0.193*x[808])^2+ ((-1)+0.192*x[809])^2+ ((-1)+0.191*x[810])^2+ ((-1)+0.19*x[811])^2+ ((-1)+0.189*x[812])^2+ ((-1)+0.188*x[813])^2+ ((-1)+0.187*x[814])^2+ ((-1)+0.186*x[815])^2+ ((-1)+0.185*x[816])^2+ ((-1)+0.184*x[817])^2+ ((-1)+0.183*x[818])^2+ ((-1)+0.182*x[819])^2+ ((-1)+0.181*x[820])^2+ ((-1)+0.18*x[821])^2+ ((-1)+0.179*x[822])^2+ ((-1)+0.178*x[823])^2+ ((-1)+0.177*x[824])^2+ ((-1)+0.176*x[825])^2+ ((-1)+0.175*x[826])^2+ ((-1)+0.174*x[827])^2+ ((-1)+0.173*x[828])^2+ ((-1)+0.172*x[829])^2+ ((-1)+0.171*x[830])^2+ ((-1)+0.17*x[831])^2+ ((-1)+0.169*x[832])^2+ ((-1)+0.168*x[833])^2+ ((-1)+0.167*x[834])^2+ ((-1)+0.166*x[835])^2+ ((-1)+0.165*x[836])^2+ ((-1)+0.164*x[837])^2+ ((-1)+0.163*x[838])^2+ ((-1)+0.162*x[839])^2+ ((-1)+0.161*x[840])^2+ ((-1)+0.16*x[841])^2+ ((-1)+0.159*x[842])^2+ ((-1)+0.158*x[843])^2+ ((-1)+0.157*x[844])^2+ ((-1)+0.156*x[845])^2+ ((-1)+0.155*x[846])^2+ ((-1)+0.154*x[847])^2+ ((-1)+0.153*x[848])^2+ ((-1)+0.152*x[849])^2+ ((-1)+0.151*x[850])^2+ ((-1)+0.15*x[851])^2+ ((-1)+0.149*x[852])^2+ ((-1)+0.148*x[853])^2+ ((-1)+0.147*x[854])^2+ ((-1)+0.146*x[855])^2+ ((-1)+0.145*x[856])^2+ ((-1)+0.144*x[857])^2+ ((-1)+0.143*x[858])^2+ ((-1)+0.142*x[859])^2+ ((-1)+0.141*x[860])^2+ ((-1)+0.14*x[861])^2+ ((-1)+0.139*x[862])^2+ ((-1)+0.138*x[863])^2+ ((-1)+0.137*x[864])^2+ ((-1)+0.136*x[865])^2+ ((-1)+0.135*x[866])^2+ ((-1)+0.134*x[867])^2+ ((-1)+0.133*x[868])^2+ ((-1)+0.132*x[869])^2+ ((-1)+0.131*x[870])^2+ ((-1)+0.13*x[871])^2+ ((-1)+0.129*x[872])^2+ ((-1)+0.128*x[873])^2+ ((-1)+0.127*x[874])^2+ ((-1)+0.126*x[875])^2+ ((-1)+0.125*x[876])^2+ ((-1)+0.124*x[877])^2+ ((-1)+0.123*x[878])^2+ ((-1)+0.122*x[879])^2+ ((-1)+0.121*x[880])^2+ ((-1)+0.12*x[881])^2+ ((-1)+0.119*x[882])^2+ ((-1)+0.118*x[883])^2+ ((-1)+0.117*x[884])^2+ ((-1)+0.116*x[885])^2+ ((-1)+0.115*x[886])^2+ ((-1)+0.114*x[887])^2+ ((-1)+0.113*x[888])^2+ ((-1)+0.112*x[889])^2+ ((-1)+0.111*x[890])^2+ ((-1)+0.11*x[891])^2+ ((-1)+0.109*x[892])^2+ ((-1)+0.108*x[893])^2+ ((-1)+0.107*x[894])^2+ ((-1)+0.106*x[895])^2+ ((-1)+0.105*x[896])^2+ ((-1)+0.104*x[897])^2+ ((-1)+0.103*x[898])^2+ ((-1)+0.102*x[899])^2+ ((-1)+0.101*x[900])^2+ ((-1)+0.1*x[901])^2+ ((-1)+0.099*x[902])^2+ ((-1)+0.098*x[903])^2+ ((-1)+0.097*x[904])^2+ ((-1)+0.096*x[905])^2+ ((-1)+0.095*x[906])^2+ ((-1)+0.094*x[907])^2+ ((-1)+0.093*x[908])^2+ ((-1)+0.092*x[909])^2+ ((-1)+0.091*x[910])^2+ ((-1)+0.09*x[911])^2+ ((-1)+0.089*x[912])^2+ ((-1)+0.088*x[913])^2+ ((-1)+0.087*x[914])^2+ ((-1)+0.086*x[915])^2+ ((-1)+0.085*x[916])^2+ ((-1)+0.084*x[917])^2+ ((-1)+0.083*x[918])^2+ ((-1)+0.082*x[919])^2+ ((-1)+0.081*x[920])^2+ ((-1)+0.08*x[921])^2+ ((-1)+0.079*x[922])^2+ ((-1)+0.078*x[923])^2+ ((-1)+0.077*x[924])^2+ ((-1)+0.076*x[925])^2+ ((-1)+0.075*x[926])^2+ ((-1)+0.074*x[927])^2+ ((-1)+0.073*x[928])^2+ ((-1)+0.072*x[929])^2+ ((-1)+0.071*x[930])^2+ ((-1)+0.07*x[931])^2+ ((-1)+0.069*x[932])^2+ ((-1)+0.068*x[933])^2+ ((-1)+0.067*x[934])^2+ ((-1)+0.066*x[935])^2+ ((-1)+0.065*x[936])^2+ ((-1)+0.064*x[937])^2+ ((-1)+0.063*x[938])^2+ ((-1)+0.062*x[939])^2+ ((-1)+0.061*x[940])^2+ ((-1)+0.06*x[941])^2+ ((-1)+0.059*x[942])^2+ ((-1)+0.058*x[943])^2+ ((-1)+0.057*x[944])^2+ ((-1)+0.056*x[945])^2+ ((-1)+0.055*x[946])^2+ ((-1)+0.054*x[947])^2+ ((-1)+0.053*x[948])^2+ ((-1)+0.052*x[949])^2+ ((-1)+0.051*x[950])^2+ ((-1)+0.05*x[951])^2+ ((-1)+0.049*x[952])^2+ ((-1)+0.048*x[953])^2+ ((-1)+0.047*x[954])^2+ ((-1)+0.046*x[955])^2+ ((-1)+0.045*x[956])^2+ ((-1)+0.044*x[957])^2+ ((-1)+0.043*x[958])^2+ ((-1)+0.042*x[959])^2+ ((-1)+0.041*x[960])^2+ ((-1)+0.04*x[961])^2+ ((-1)+0.039*x[962])^2+ ((-1)+0.038*x[963])^2+ ((-1)+0.037*x[964])^2+ ((-1)+0.036*x[965])^2+ ((-1)+0.035*x[966])^2+ ((-1)+0.034*x[967])^2+ ((-1)+0.033*x[968])^2+ ((-1)+0.032*x[969])^2+ ((-1)+0.031*x[970])^2+ ((-1)+0.03*x[971])^2+ ((-1)+0.029*x[972])^2+ ((-1)+0.028*x[973])^2+ ((-1)+0.027*x[974])^2+ ((-1)+0.026*x[975])^2+ ((-1)+0.025*x[976])^2+ ((-1)+0.024*x[977])^2+ ((-1)+0.023*x[978])^2+ ((-1)+0.022*x[979])^2+ ((-1)+0.021*x[980])^2+ ((-1)+0.02*x[981])^2+ ((-1)+0.019*x[982])^2+ ((-1)+0.018*x[983])^2+ ((-1)+0.017*x[984])^2+ ((-1)+0.016*x[985])^2+ ((-1)+0.015*x[986])^2+ ((-1)+0.014*x[987])^2+ ((-1)+0.013*x[988])^2+ ((-1)+0.012*x[989])^2+ ((-1)+0.011*x[990])^2+ ((-1)+0.01*x[991])^2+ ((-1)+0.009*x[992])^2+ ((-1)+0.008*x[993])^2+ ((-1)+0.007*x[994])^2+ ((-1)+0.006*x[995])^2+ ((-1)+0.005*x[996])^2+ ((-1)+0.004*x[997])^2+ ((-1)+0.003*x[998])^2+ ((-1)+0.002*x[999])^2+ ((-1)+0.001*x[1000])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
