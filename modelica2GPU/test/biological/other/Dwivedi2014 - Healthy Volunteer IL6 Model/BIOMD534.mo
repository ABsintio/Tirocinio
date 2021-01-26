
model BIOMD534 "Dwivedi2014 - Healthy Volunteer IL6 Model"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;
    
    function piecewise
        input Real x;
        input Boolean condition;
        input Real y;
        output Real z;
        algorithm
            z := if condition then x else y;
    end piecewise;


    function function_1
        	input Real kRLOff;
	input Real kRLOn;
	input Real mw03db56ac_8dc6_4931_ae82_fef706d2ee3d;
	input Real mw30ae63db_6cd3_4b6f_93ad_3350cd360bcc;
	input Real mw53ffe9e6_beef_45c4_90a5_a79197ed506e;
	input Real mwf626e95e_543f_41e4_aad4_c6bf60ab345b;
        output Real y;
    algorithm
        y :=  (kRLOn * mw30ae63db_6cd3_4b6f_93ad_3350cd360bcc * mwf626e95e_543f_41e4_aad4_c6bf60ab345b - kRLOff * mw03db56ac_8dc6_4931_ae82_fef706d2ee3d) / mw53ffe9e6_beef_45c4_90a5_a79197ed506e;
    end function_1;


    function function_2
        	input Real kgp130Off;
	input Real kgp130On;
	input Real mw03db56ac_8dc6_4931_ae82_fef706d2ee3d;
	input Real mw53ffe9e6_beef_45c4_90a5_a79197ed506e;
	input Real mw810ff751_fa4e_4143_bd50_169b3e325e1e;
	input Real mwbbbce920_e8dd_4320_9386_fc94bfb2fc99;
        output Real y;
    algorithm
        y :=  (kgp130On * mw03db56ac_8dc6_4931_ae82_fef706d2ee3d * mwbbbce920_e8dd_4320_9386_fc94bfb2fc99 - kgp130Off * mw810ff751_fa4e_4143_bd50_169b3e325e1e) / mw53ffe9e6_beef_45c4_90a5_a79197ed506e;
    end function_2;


    function function_3
        	input Real kIL6Synth;
	input Real mw53ffe9e6_beef_45c4_90a5_a79197ed506e;
        output Real y;
    algorithm
        y :=  kIL6Synth / mw53ffe9e6_beef_45c4_90a5_a79197ed506e;
    end function_3;


    function function_4
        	input Real kIL6Decay;
	input Real mw53ffe9e6_beef_45c4_90a5_a79197ed506e;
	input Real mwf626e95e_543f_41e4_aad4_c6bf60ab345b;
        output Real y;
    algorithm
        y :=  kIL6Decay * mwf626e95e_543f_41e4_aad4_c6bf60ab345b / mw53ffe9e6_beef_45c4_90a5_a79197ed506e;
    end function_4;


    function function_5
        	input Real kCRPDecay;
	input Real mw114aa90f_5f5b_4fe8_9406_361c8489b6a1;
	input Real mw53ffe9e6_beef_45c4_90a5_a79197ed506e;
        output Real y;
    algorithm
        y :=  kCRPDecay * mw114aa90f_5f5b_4fe8_9406_361c8489b6a1 / mw53ffe9e6_beef_45c4_90a5_a79197ed506e;
    end function_5;


    function function_6
        	input Real kgp130Off;
	input Real kgp130On;
	input Real mw4638f126_8cb8_4021_ab41_6ae195743ba0;
	input Real mw80848184_e2dd_47ce_86d7_7a21479342bd;
	input Real mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e;
	input Real mwd2d9d93a_3bd1_4f17_bac1_baba9ef2d55a;
        output Real y;
    algorithm
        y :=  (kgp130On * mw4638f126_8cb8_4021_ab41_6ae195743ba0 * mw80848184_e2dd_47ce_86d7_7a21479342bd - kgp130Off * mwd2d9d93a_3bd1_4f17_bac1_baba9ef2d55a) / mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e;
    end function_6;


    function function_7
        	input Real kRLOff;
	input Real kRLOn;
	input Real mw0adf3eb4_a196_4c48_b10d_4e9e9faaf9e1;
	input Real mw10315fa3_6f13_4618_bda8_a8694bd3c374;
	input Real mw7d86cc23_a1af_44c3_bdb9_71e9b1bb2a83;
	input Real mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e;
        output Real y;
    algorithm
        y :=  (kRLOn * mw10315fa3_6f13_4618_bda8_a8694bd3c374 * mw0adf3eb4_a196_4c48_b10d_4e9e9faaf9e1 - kRLOff * mw7d86cc23_a1af_44c3_bdb9_71e9b1bb2a83) / mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e;
    end function_7;


    function function_8
        	input Real kgp130Off;
	input Real kgp130On;
	input Real mw7d86cc23_a1af_44c3_bdb9_71e9b1bb2a83;
	input Real mw80848184_e2dd_47ce_86d7_7a21479342bd;
	input Real mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e;
	input Real mwd2d9d93a_3bd1_4f17_bac1_baba9ef2d55a;
        output Real y;
    algorithm
        y :=  (kgp130On * mw7d86cc23_a1af_44c3_bdb9_71e9b1bb2a83 * mw80848184_e2dd_47ce_86d7_7a21479342bd - kgp130Off * mwd2d9d93a_3bd1_4f17_bac1_baba9ef2d55a) / mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e;
    end function_8;


    function function_9
        	input Real kRAct;
	input Real mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e;
	input Real mwd2d9d93a_3bd1_4f17_bac1_baba9ef2d55a;
        output Real y;
    algorithm
        y :=  kRAct * mwd2d9d93a_3bd1_4f17_bac1_baba9ef2d55a / mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e;
    end function_9;


    function function_10
        	input Real mw0eb6c959_d408_45a0_a450_928b8c5876bb;
	input Real mw42054cd7_17af_46da_970c_7f99151906ad;
	input Real mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e;
	input Real mw9442cd0e_4d7c_4ba6_a695_f84919bdf569;
	input Real mwe8fc1900_f07d_468b_b5c8_15400a583c3d;
        output Real y;
    algorithm
        y :=  mw9442cd0e_4d7c_4ba6_a695_f84919bdf569 * mw0eb6c959_d408_45a0_a450_928b8c5876bb * mw42054cd7_17af_46da_970c_7f99151906ad / (mwe8fc1900_f07d_468b_b5c8_15400a583c3d + mw42054cd7_17af_46da_970c_7f99151906ad) / mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e;
    end function_10;


    function function_11
        	input Real mw39c2e431_fdc3_4964_be29_6ca856620b1b;
	input Real mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e;
	input Real mwd36b0261_2480_4cab_9222_2cf8fb0e65dc;
	input Real mwfd291862_195f_4979_94b5_b4e5ae1b7d52;
        output Real y;
    algorithm
        y :=  mwd36b0261_2480_4cab_9222_2cf8fb0e65dc * mw39c2e431_fdc3_4964_be29_6ca856620b1b / (mwfd291862_195f_4979_94b5_b4e5ae1b7d52 + mw39c2e431_fdc3_4964_be29_6ca856620b1b) / mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e;
    end function_11;


    function function_12
        	input Real kRdeg;
	input Real mw10315fa3_6f13_4618_bda8_a8694bd3c374;
	input Real mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e;
        output Real y;
    algorithm
        y :=  kRdeg * mw10315fa3_6f13_4618_bda8_a8694bd3c374 / mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e;
    end function_12;


    function function_13
        	input Real kRint;
	input Real mw7d86cc23_a1af_44c3_bdb9_71e9b1bb2a83;
	input Real mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e;
        output Real y;
    algorithm
        y :=  kRint * mw7d86cc23_a1af_44c3_bdb9_71e9b1bb2a83 / mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e;
    end function_13;


    function function_14
        	input Real kRint;
	input Real mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e;
	input Real mwd2d9d93a_3bd1_4f17_bac1_baba9ef2d55a;
        output Real y;
    algorithm
        y :=  kRint * mwd2d9d93a_3bd1_4f17_bac1_baba9ef2d55a / mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e;
    end function_14;


    function function_15
        	input Real mw0eb6c959_d408_45a0_a450_928b8c5876bb;
	input Real mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e;
	input Real mwf44f7f27_5bb1_4c7f_8964_560fa5e1743a;
        output Real y;
    algorithm
        y :=  mwf44f7f27_5bb1_4c7f_8964_560fa5e1743a * mw0eb6c959_d408_45a0_a450_928b8c5876bb / mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e;
    end function_15;


    function function_16
        	input Real kRsynth;
	input Real mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e;
        output Real y;
    algorithm
        y :=  kRsynth / mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e;
    end function_16;


    function function_17
        	input Real kgp130Off;
	input Real kgp130On;
	input Real mw7becb5fe_8da8_4285_a821_0d77ad811b62;
	input Real mw824bc3d4_1ac3_4912_9b51_8f14ff1c96b9;
	input Real mw8c9107e6_f51d_442d_b2dc_2bfdbb8482ca;
	input Real mwe9501423_9fb4_494b_b5b6_288f3fcb17b5;
        output Real y;
    algorithm
        y :=  (kgp130On * mw7becb5fe_8da8_4285_a821_0d77ad811b62 * mw8c9107e6_f51d_442d_b2dc_2bfdbb8482ca - kgp130Off * mw824bc3d4_1ac3_4912_9b51_8f14ff1c96b9) / mwe9501423_9fb4_494b_b5b6_288f3fcb17b5;
    end function_17;


    function function_18
        	input Real kRAct;
	input Real mw824bc3d4_1ac3_4912_9b51_8f14ff1c96b9;
	input Real mwe9501423_9fb4_494b_b5b6_288f3fcb17b5;
        output Real y;
    algorithm
        y :=  kRAct * mw824bc3d4_1ac3_4912_9b51_8f14ff1c96b9 / mwe9501423_9fb4_494b_b5b6_288f3fcb17b5;
    end function_18;


    function function_19
        	input Real mw2b255f94_8018_4b99_bde8_918eeac45446;
	input Real mw6cce2109_0e32_4dd9_98ec_41173e8ef07d;
	input Real mw9442cd0e_4d7c_4ba6_a695_f84919bdf569;
	input Real mwe8fc1900_f07d_468b_b5c8_15400a583c3d;
	input Real mwe9501423_9fb4_494b_b5b6_288f3fcb17b5;
        output Real y;
    algorithm
        y :=  mw9442cd0e_4d7c_4ba6_a695_f84919bdf569 * mw6cce2109_0e32_4dd9_98ec_41173e8ef07d * mw2b255f94_8018_4b99_bde8_918eeac45446 / (mwe8fc1900_f07d_468b_b5c8_15400a583c3d + mw2b255f94_8018_4b99_bde8_918eeac45446) / mwe9501423_9fb4_494b_b5b6_288f3fcb17b5;
    end function_19;


    function function_20
        	input Real mw48867e93_f170_44e8_ac7a_185b23e1bf3b;
	input Real mwd36b0261_2480_4cab_9222_2cf8fb0e65dc;
	input Real mwe9501423_9fb4_494b_b5b6_288f3fcb17b5;
	input Real mwfd291862_195f_4979_94b5_b4e5ae1b7d52;
        output Real y;
    algorithm
        y :=  mwd36b0261_2480_4cab_9222_2cf8fb0e65dc * mw48867e93_f170_44e8_ac7a_185b23e1bf3b / (mwfd291862_195f_4979_94b5_b4e5ae1b7d52 + mw48867e93_f170_44e8_ac7a_185b23e1bf3b) / mwe9501423_9fb4_494b_b5b6_288f3fcb17b5;
    end function_20;


    function function_21
        	input Real kRint;
	input Real mw824bc3d4_1ac3_4912_9b51_8f14ff1c96b9;
	input Real mwe9501423_9fb4_494b_b5b6_288f3fcb17b5;
        output Real y;
    algorithm
        y :=  kRint * mw824bc3d4_1ac3_4912_9b51_8f14ff1c96b9 / mwe9501423_9fb4_494b_b5b6_288f3fcb17b5;
    end function_21;


    function function_22
        	input Real mw6cce2109_0e32_4dd9_98ec_41173e8ef07d;
	input Real mwe9501423_9fb4_494b_b5b6_288f3fcb17b5;
	input Real mwf44f7f27_5bb1_4c7f_8964_560fa5e1743a;
        output Real y;
    algorithm
        y :=  mwf44f7f27_5bb1_4c7f_8964_560fa5e1743a * mw6cce2109_0e32_4dd9_98ec_41173e8ef07d / mwe9501423_9fb4_494b_b5b6_288f3fcb17b5;
    end function_22;


    function function_23
        	input Real mw0eb6c959_d408_45a0_a450_928b8c5876bb;
	input Real mw1667a8e0_9d20_4e59_ba51_596148aba787;
	input Real mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e;
	input Real mwfcf06900_5f2f_4bb3_bb1f_12023612b8a8;
        output Real y;
    algorithm
        y :=  mw1667a8e0_9d20_4e59_ba51_596148aba787 * mw0eb6c959_d408_45a0_a450_928b8c5876bb / (mwfcf06900_5f2f_4bb3_bb1f_12023612b8a8 + mw0eb6c959_d408_45a0_a450_928b8c5876bb) / mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e;
    end function_23;


    function function_24
        	input Real mw1667a8e0_9d20_4e59_ba51_596148aba787;
	input Real mw6cce2109_0e32_4dd9_98ec_41173e8ef07d;
	input Real mwe9501423_9fb4_494b_b5b6_288f3fcb17b5;
	input Real mwfcf06900_5f2f_4bb3_bb1f_12023612b8a8;
        output Real y;
    algorithm
        y :=  mw1667a8e0_9d20_4e59_ba51_596148aba787 * mw6cce2109_0e32_4dd9_98ec_41173e8ef07d / (mwfcf06900_5f2f_4bb3_bb1f_12023612b8a8 + mw6cce2109_0e32_4dd9_98ec_41173e8ef07d) / mwe9501423_9fb4_494b_b5b6_288f3fcb17b5;
    end function_24;


    function function_25
        	input Real kRsynth;
	input Real mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e;
        output Real y;
    algorithm
        y :=  kRsynth / mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e;
    end function_25;


    function function_26
        	input Real kRdeg;
	input Real mw80848184_e2dd_47ce_86d7_7a21479342bd;
	input Real mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e;
        output Real y;
    algorithm
        y :=  kRdeg * mw80848184_e2dd_47ce_86d7_7a21479342bd / mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e;
    end function_26;


    function function_27
        	input Real kRsynth;
	input Real mwe9501423_9fb4_494b_b5b6_288f3fcb17b5;
        output Real y;
    algorithm
        y :=  kRsynth / mwe9501423_9fb4_494b_b5b6_288f3fcb17b5;
    end function_27;


    function function_28
        	input Real kRdeg;
	input Real mw8c9107e6_f51d_442d_b2dc_2bfdbb8482ca;
	input Real mwe9501423_9fb4_494b_b5b6_288f3fcb17b5;
        output Real y;
    algorithm
        y :=  kRdeg * mw8c9107e6_f51d_442d_b2dc_2bfdbb8482ca / mwe9501423_9fb4_494b_b5b6_288f3fcb17b5;
    end function_28;


    function function_29
        	input Real kRLOff;
	input Real kRLOn;
	input Real mw2c9b0499_3325_4394_8af3_bbf653a944a0;
	input Real mw7becb5fe_8da8_4285_a821_0d77ad811b62;
	input Real mwd31f52cc_04e7_40e0_885f_c7b2d9e62215;
	input Real mwe9501423_9fb4_494b_b5b6_288f3fcb17b5;
        output Real y;
    algorithm
        y :=  (kRLOn * mwd31f52cc_04e7_40e0_885f_c7b2d9e62215 * mw2c9b0499_3325_4394_8af3_bbf653a944a0 - kRLOff * mw7becb5fe_8da8_4285_a821_0d77ad811b62) / mwe9501423_9fb4_494b_b5b6_288f3fcb17b5;
    end function_29;


    function function_30
        	input Real kRLOff;
	input Real kRLOn;
	input Real mw0adf3eb4_a196_4c48_b10d_4e9e9faaf9e1;
	input Real mw2e464cf3_a09c_4b7c_9f3c_06720016a48e;
	input Real mw4638f126_8cb8_4021_ab41_6ae195743ba0;
	input Real mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e;
        output Real y;
    algorithm
        y :=  (kRLOn * mw2e464cf3_a09c_4b7c_9f3c_06720016a48e * mw0adf3eb4_a196_4c48_b10d_4e9e9faaf9e1 - kRLOff * mw4638f126_8cb8_4021_ab41_6ae195743ba0) / mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e;
    end function_30;


    function function_31
        	input Real mw862f1480_c60c_4863_a565_b2c1c77e238e;
	input Real mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e;
	input Real mwd5313618_89eb_4c8c_bc82_66f10f966349;
        output Real y;
    algorithm
        y :=  mw862f1480_c60c_4863_a565_b2c1c77e238e * mwd5313618_89eb_4c8c_bc82_66f10f966349 / mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e;
    end function_31;


    function function_32
        	input Real mw53ffe9e6_beef_45c4_90a5_a79197ed506e;
	input Real mw65c85954_5ca0_4df2_9e22_ff2aa3fbe3f1;
        output Real y;
    algorithm
        y :=  mw65c85954_5ca0_4df2_9e22_ff2aa3fbe3f1 / mw53ffe9e6_beef_45c4_90a5_a79197ed506e;
    end function_32;


    function function_33
        	input Real kgp130Off;
	input Real kgp130On;
	input Real mw6335d5d7_c7b0_4bc0_b883_f7ee4915c2c3;
	input Real mw7becb5fe_8da8_4285_a821_0d77ad811b62;
	input Real mwd65b5b39_dc1b_4e77_a999_67277a880e5e;
	input Real mwe9501423_9fb4_494b_b5b6_288f3fcb17b5;
        output Real y;
    algorithm
        y :=  (kgp130On * mwd65b5b39_dc1b_4e77_a999_67277a880e5e * mw7becb5fe_8da8_4285_a821_0d77ad811b62 - kgp130Off * mw6335d5d7_c7b0_4bc0_b883_f7ee4915c2c3) / mwe9501423_9fb4_494b_b5b6_288f3fcb17b5;
    end function_33;


    function function_34
        	input Real kgp130Off;
	input Real kgp130On;
	input Real mw147d30ec_478e_4090_b496_128a131d29eb;
	input Real mw4638f126_8cb8_4021_ab41_6ae195743ba0;
	input Real mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e;
	input Real mwab41493c_6349_45f1_a226_3030cfed0e06;
        output Real y;
    algorithm
        y :=  (kgp130On * mw4638f126_8cb8_4021_ab41_6ae195743ba0 * mw147d30ec_478e_4090_b496_128a131d29eb - kgp130Off * mwab41493c_6349_45f1_a226_3030cfed0e06) / mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e;
    end function_34;


    function function_35
        	input Real mw53ffe9e6_beef_45c4_90a5_a79197ed506e;
	input Real mwc4c58db7_5535_4590_aaa5_bbc8ed53cdab;
        output Real y;
    algorithm
        y :=  mwc4c58db7_5535_4590_aaa5_bbc8ed53cdab / mw53ffe9e6_beef_45c4_90a5_a79197ed506e;
    end function_35;


    function function_36
        	input Real mw30ae63db_6cd3_4b6f_93ad_3350cd360bcc;
	input Real mw53ffe9e6_beef_45c4_90a5_a79197ed506e;
	input Real mw88a75379_f9a1_4acc_baeb_94c32bb736a5;
        output Real y;
    algorithm
        y :=  mw88a75379_f9a1_4acc_baeb_94c32bb736a5 * mw30ae63db_6cd3_4b6f_93ad_3350cd360bcc / mw53ffe9e6_beef_45c4_90a5_a79197ed506e;
    end function_36;


    function function_37
        	input Real mw1f41474c_c399_4a60_a53a_9926dd092e8d;
	input Real mw53ffe9e6_beef_45c4_90a5_a79197ed506e;
        output Real y;
    algorithm
        y :=  mw1f41474c_c399_4a60_a53a_9926dd092e8d / mw53ffe9e6_beef_45c4_90a5_a79197ed506e;
    end function_37;


    function function_38
        	input Real mw53ffe9e6_beef_45c4_90a5_a79197ed506e;
	input Real mwbbbce920_e8dd_4320_9386_fc94bfb2fc99;
	input Real mwbcb5a310_9b67_405e_89ec_43d25e8cc93d;
        output Real y;
    algorithm
        y :=  mwbcb5a310_9b67_405e_89ec_43d25e8cc93d * mwbbbce920_e8dd_4320_9386_fc94bfb2fc99 / mw53ffe9e6_beef_45c4_90a5_a79197ed506e;
    end function_38;


    function function_39
        	input Real mwa8d72918_f6c2_4d81_bf3b_fc2b464d5e69;
	input Real mwe9501423_9fb4_494b_b5b6_288f3fcb17b5;
        output Real y;
    algorithm
        y :=  mwa8d72918_f6c2_4d81_bf3b_fc2b464d5e69 / mwe9501423_9fb4_494b_b5b6_288f3fcb17b5;
    end function_39;


    function function_40
        	input Real mw06241335_b5f2_47ed_bdcc_ef77b68a2b98;
	input Real mw2c9b0499_3325_4394_8af3_bbf653a944a0;
	input Real mwe9501423_9fb4_494b_b5b6_288f3fcb17b5;
        output Real y;
    algorithm
        y :=  mw06241335_b5f2_47ed_bdcc_ef77b68a2b98 * mw2c9b0499_3325_4394_8af3_bbf653a944a0 / mwe9501423_9fb4_494b_b5b6_288f3fcb17b5;
    end function_40;


    function function_41
        	input Real mw114aa90f_5f5b_4fe8_9406_361c8489b6a1;
	input Real mw53ffe9e6_beef_45c4_90a5_a79197ed506e;
	input Real mw5832a2dc_ee18_44df_aa59_ccb21cb74df2;
        output Real y;
    algorithm
        y :=  mw5832a2dc_ee18_44df_aa59_ccb21cb74df2 * mw114aa90f_5f5b_4fe8_9406_361c8489b6a1 / mw53ffe9e6_beef_45c4_90a5_a79197ed506e;
    end function_41;


    function function_43
        	input Real mw1da111f2_a036_4392_8512_015005bdcbb7;
	input Real mw53ffe9e6_beef_45c4_90a5_a79197ed506e;
	input Real mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30;
        output Real y;
    algorithm
        y :=  mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30 * mw1da111f2_a036_4392_8512_015005bdcbb7 / mw53ffe9e6_beef_45c4_90a5_a79197ed506e;
    end function_43;


    function function_45
        	input Real mw53ffe9e6_beef_45c4_90a5_a79197ed506e;
	input Real mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30;
	input Real mwf345ed7a_0622_403c_b816_c8749a2c9ded;
        output Real y;
    algorithm
        y :=  mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30 * mwf345ed7a_0622_403c_b816_c8749a2c9ded / mw53ffe9e6_beef_45c4_90a5_a79197ed506e;
    end function_45;


    function function_47
        	input Real mw5d764bb8_5693_4ac8_9557_f65992cc5eb0;
	input Real mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30;
	input Real mwe9501423_9fb4_494b_b5b6_288f3fcb17b5;
        output Real y;
    algorithm
        y :=  mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30 * mw5d764bb8_5693_4ac8_9557_f65992cc5eb0 / mwe9501423_9fb4_494b_b5b6_288f3fcb17b5;
    end function_47;


    function function_50
        	input Real mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e;
	input Real mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30;
	input Real mwf405687b_7401_44ec_a0d6_4a2b35c13e8a;
        output Real y;
    algorithm
        y :=  mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30 * mwf405687b_7401_44ec_a0d6_4a2b35c13e8a / mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e;
    end function_50;


    function function_52
        	input Real mw3667a5e1_02c9_44a0_acb4_b0431faa822d;
	input Real mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e;
	input Real mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30;
        output Real y;
    algorithm
        y :=  mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30 * mw3667a5e1_02c9_44a0_acb4_b0431faa822d / mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e;
    end function_52;


    function function_53
        	input Real mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30;
	input Real mwe9501423_9fb4_494b_b5b6_288f3fcb17b5;
	input Real mwf7796221_1fea_4274_a93e_c00adbf5778c;
        output Real y;
    algorithm
        y :=  mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30 * mwf7796221_1fea_4274_a93e_c00adbf5778c / mwe9501423_9fb4_494b_b5b6_288f3fcb17b5;
    end function_53;


    function function_51
        	input Real mw1d9426a3_e1e9_49e0_ad77_eb6833be398a;
	input Real mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e;
	input Real mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30;
        output Real y;
    algorithm
        y :=  mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30 * mw1d9426a3_e1e9_49e0_ad77_eb6833be398a / mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e;
    end function_51;


    function function_42
        	input Real mw1c4bc9c3_52ad_4ef7_bf7f_97b0e2101ead;
	input Real mw1da111f2_a036_4392_8512_015005bdcbb7;
	input Real mw53ffe9e6_beef_45c4_90a5_a79197ed506e;
	input Real mwa09d6284_843e_404e_abbb_052fbb535197;
	input Real mwf345ed7a_0622_403c_b816_c8749a2c9ded;
	input Real mwf626e95e_543f_41e4_aad4_c6bf60ab345b;
        output Real y;
    algorithm
        y :=  (mwa09d6284_843e_404e_abbb_052fbb535197 * mwf626e95e_543f_41e4_aad4_c6bf60ab345b * mwf345ed7a_0622_403c_b816_c8749a2c9ded - mw1c4bc9c3_52ad_4ef7_bf7f_97b0e2101ead * mw1da111f2_a036_4392_8512_015005bdcbb7) / mw53ffe9e6_beef_45c4_90a5_a79197ed506e;
    end function_42;


    function function_44
        	input Real mw53ffe9e6_beef_45c4_90a5_a79197ed506e;
	input Real mwa2d8dd1c_bb9a_4552_8738_e24671651c1d;
	input Real mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30;
        output Real y;
    algorithm
        y :=  mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30 * mwa2d8dd1c_bb9a_4552_8738_e24671651c1d / mw53ffe9e6_beef_45c4_90a5_a79197ed506e;
    end function_44;


    function function_49
        	input Real mw0adf3eb4_a196_4c48_b10d_4e9e9faaf9e1;
	input Real mw1c4bc9c3_52ad_4ef7_bf7f_97b0e2101ead;
	input Real mw3667a5e1_02c9_44a0_acb4_b0431faa822d;
	input Real mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e;
	input Real mwa09d6284_843e_404e_abbb_052fbb535197;
	input Real mwf405687b_7401_44ec_a0d6_4a2b35c13e8a;
        output Real y;
    algorithm
        y :=  (mwa09d6284_843e_404e_abbb_052fbb535197 * mw3667a5e1_02c9_44a0_acb4_b0431faa822d * mw0adf3eb4_a196_4c48_b10d_4e9e9faaf9e1 - mw1c4bc9c3_52ad_4ef7_bf7f_97b0e2101ead * mwf405687b_7401_44ec_a0d6_4a2b35c13e8a) / mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e;
    end function_49;


    function function_48
        	input Real mw1c4bc9c3_52ad_4ef7_bf7f_97b0e2101ead;
	input Real mw2c9b0499_3325_4394_8af3_bbf653a944a0;
	input Real mw5d764bb8_5693_4ac8_9557_f65992cc5eb0;
	input Real mwa09d6284_843e_404e_abbb_052fbb535197;
	input Real mwe9501423_9fb4_494b_b5b6_288f3fcb17b5;
	input Real mwf7796221_1fea_4274_a93e_c00adbf5778c;
        output Real y;
    algorithm
        y :=  (mwa09d6284_843e_404e_abbb_052fbb535197 * mwf7796221_1fea_4274_a93e_c00adbf5778c * mw2c9b0499_3325_4394_8af3_bbf653a944a0 - mw1c4bc9c3_52ad_4ef7_bf7f_97b0e2101ead * mw5d764bb8_5693_4ac8_9557_f65992cc5eb0) / mwe9501423_9fb4_494b_b5b6_288f3fcb17b5;
    end function_48;


    function function_46
        	input Real mw2f3d48e0_c9c4_4a0e_aca3_9241eb573296;
	input Real mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30;
	input Real mwe9501423_9fb4_494b_b5b6_288f3fcb17b5;
        output Real y;
    algorithm
        y :=  mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30 * mw2f3d48e0_c9c4_4a0e_aca3_9241eb573296 / mwe9501423_9fb4_494b_b5b6_288f3fcb17b5;
    end function_46;


    parameter Real kRLOn = 0.384;
    parameter Real kRLOff = 1.92;
    parameter Real kgp130On = 20.52;
    parameter Real kgp130Off = 1.026;
    parameter Real kRAct = 155.0;
    parameter Real kRint = 1.96;
    parameter Real kRsynth = 0.0685;
    parameter Real kRdeg = 0.1561;
    parameter Real kIL6Synth = 0.0011;
    parameter Real kIL6Decay = 34.82;
    parameter Real kCRPDecay = 0.36;
    parameter Real mwfd291862_195f_4979_94b5_b4e5ae1b7d52 = 5.34;
    parameter Real mwd36b0261_2480_4cab_9222_2cf8fb0e65dc = 0.62;
    parameter Real mw1667a8e0_9d20_4e59_ba51_596148aba787 = 0.525;
    parameter Real mwfcf06900_5f2f_4bb3_bb1f_12023612b8a8 = 155.3;
    parameter Real mw9442cd0e_4d7c_4ba6_a695_f84919bdf569 = 145.0;
    parameter Real mwe8fc1900_f07d_468b_b5c8_15400a583c3d = 219.0;
    parameter Real mw08950572_81b0_4570_b2e4_b9c3462c1425 = 10.0;
    parameter Real mw92d854a7_8aaf_458e_b5e2_20a63ce9b654 = 330.0;
    parameter Real mw862f1480_c60c_4863_a565_b2c1c77e238e = 0.5;
    parameter Real mw65c85954_5ca0_4df2_9e22_ff2aa3fbe3f1 = 0.42;
    parameter Real mwc4c58db7_5535_4590_aaa5_bbc8ed53cdab = 0.1;
    parameter Real mw88a75379_f9a1_4acc_baeb_94c32bb736a5 = 0.3;
    parameter Real mw1f41474c_c399_4a60_a53a_9926dd092e8d = 3.9;
    parameter Real mwbcb5a310_9b67_405e_89ec_43d25e8cc93d = 1.0;
    parameter Real mwa8d72918_f6c2_4d81_bf3b_fc2b464d5e69 = 0.0017;
    parameter Real mw06241335_b5f2_47ed_bdcc_ef77b68a2b98 = 1.0;
    parameter Real mwce10678d_8197_408c_ad47_1daec8104cd8 = 0.8473;
    parameter Real mwc67e1333_079a_4bea_9b4f_0a1b15ddd7bb = 1.2125;
    parameter Real mw5832a2dc_ee18_44df_aa59_ccb21cb74df2 = 0.0054;
    parameter Real mwf44f7f27_5bb1_4c7f_8964_560fa5e1743a = 0.01;
    parameter Real mwa09d6284_843e_404e_abbb_052fbb535197 = 1000.0;
    parameter Real mw1c4bc9c3_52ad_4ef7_bf7f_97b0e2101ead = 2.5;
    parameter Real mw640ca705_e089_4c64_a5f4_9562317e8c76 = mw434adaf5_cef0_4a33_9ad2_a4e49e1fd825 / mw2c605ff5_50f5_45f2_a70c_53fcd866d14c;
    parameter Real mw43ccad8c_cabf_4eaf_90d5_e06ae43be2cb = mw434adaf5_cef0_4a33_9ad2_a4e49e1fd825 / mwc691d0d1_8c1b_4ce4_85c6_1315c42e97b1;
    parameter Real mw9f83bdd3_3aa1_47ff_abd6_54e5ce60704a = mw6a5e10a9_d442_4dde_8ec3_6a26c9807374 / mw2c605ff5_50f5_45f2_a70c_53fcd866d14c;
    parameter Real mwa071fdbe_d498_4620_a7a4_940aa31c8161 = mw6a5e10a9_d442_4dde_8ec3_6a26c9807374 / mwa8283449_0e21_41a1_baac_ebf697b3555a;
    parameter Real mw2c605ff5_50f5_45f2_a70c_53fcd866d14c = 2.88;
    parameter Real mwc691d0d1_8c1b_4ce4_85c6_1315c42e97b1 = 2.88;
    parameter Real mwa8283449_0e21_41a1_baac_ebf697b3555a = 1.44;
    parameter Real mw6729db10_c577_4319_b355_2e3f11c0f942 = 0.576;
    parameter Real mw434adaf5_cef0_4a33_9ad2_a4e49e1fd825 = 0.06;
    parameter Real mw6a5e10a9_d442_4dde_8ec3_6a26c9807374 = 0.03;
    parameter Real mw1366c3b5_e79b_44a7_93cc_ee09d383eabf = 0.001;
    parameter Real mwf67caf9d_2f4b_4986_abf2_e6090bbb72ce = mw1366c3b5_e79b_44a7_93cc_ee09d383eabf / mw2c605ff5_50f5_45f2_a70c_53fcd866d14c;
    parameter Real mw4aea26f6_8860_414c_97f5_40d325196f2e = mw1366c3b5_e79b_44a7_93cc_ee09d383eabf / mw6729db10_c577_4319_b355_2e3f11c0f942;
    parameter Real mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30 = 0.0018;
    parameter Real mw427cd601_2c01_42ea_85dc_ab7c5a601fd8 = 1.0;
    parameter Real parameter_1 = 100.0;
    parameter Real Metabolite_6 = mwf345ed7a_0622_403c_b816_c8749a2c9ded;
    parameter Real ModelValue_48 = parameter_1;
    parameter Real mw53ffe9e6_beef_45c4_90a5_a79197ed506e = 1.0;
    parameter Real mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e = 1.0;
    parameter Real mwe9501423_9fb4_494b_b5b6_288f3fcb17b5 = 1.0;
    parameter Real mw8fbcbf3b_47d8_4adc_8ad4_f9fc547d3e87 = 1.0;



    Real mwf626e95e_543f_41e4_aad4_c6bf60ab345b;
    Real mwbbbce920_e8dd_4320_9386_fc94bfb2fc99;
    Real mw810ff751_fa4e_4143_bd50_169b3e325e1e;
    Real mw114aa90f_5f5b_4fe8_9406_361c8489b6a1;
    Real mw30ae63db_6cd3_4b6f_93ad_3350cd360bcc;
    Real mw03db56ac_8dc6_4931_ae82_fef706d2ee3d;
    Real mwf345ed7a_0622_403c_b816_c8749a2c9ded;
    Real mw1da111f2_a036_4392_8512_015005bdcbb7;
    Real mwa2d8dd1c_bb9a_4552_8738_e24671651c1d;
    Real mw80848184_e2dd_47ce_86d7_7a21479342bd;
    Real mwd2d9d93a_3bd1_4f17_bac1_baba9ef2d55a;
    Real mw4638f126_8cb8_4021_ab41_6ae195743ba0;
    Real mw10315fa3_6f13_4618_bda8_a8694bd3c374;
    Real mw0adf3eb4_a196_4c48_b10d_4e9e9faaf9e1;
    Real mw7d86cc23_a1af_44c3_bdb9_71e9b1bb2a83;
    Real mw0eb6c959_d408_45a0_a450_928b8c5876bb;
    Real mw42054cd7_17af_46da_970c_7f99151906ad;
    Real mw39c2e431_fdc3_4964_be29_6ca856620b1b;
    Real mwd5313618_89eb_4c8c_bc82_66f10f966349;
    Real mw2e464cf3_a09c_4b7c_9f3c_06720016a48e;
    Real mw36ea78c1_ed71_4def_96d3_857a442d7195;
    Real mw147d30ec_478e_4090_b496_128a131d29eb;
    Real mwab41493c_6349_45f1_a226_3030cfed0e06;
    Real mw1d9426a3_e1e9_49e0_ad77_eb6833be398a;
    Real mwf405687b_7401_44ec_a0d6_4a2b35c13e8a;
    Real mw3667a5e1_02c9_44a0_acb4_b0431faa822d;
    Real mw7becb5fe_8da8_4285_a821_0d77ad811b62;
    Real mw8c9107e6_f51d_442d_b2dc_2bfdbb8482ca;
    Real mw824bc3d4_1ac3_4912_9b51_8f14ff1c96b9;
    Real mw6cce2109_0e32_4dd9_98ec_41173e8ef07d;
    Real mw2b255f94_8018_4b99_bde8_918eeac45446;
    Real mw48867e93_f170_44e8_ac7a_185b23e1bf3b;
    Real mw0083d743_836f_4238_a17f_4602193d5bc0;
    Real mwd31f52cc_04e7_40e0_885f_c7b2d9e62215;
    Real mw2c9b0499_3325_4394_8af3_bbf653a944a0;
    Real mwd65b5b39_dc1b_4e77_a999_67277a880e5e;
    Real mw6335d5d7_c7b0_4bc0_b883_f7ee4915c2c3;
    Real mwf7796221_1fea_4274_a93e_c00adbf5778c;
    Real mw5d764bb8_5693_4ac8_9557_f65992cc5eb0;
    Real mw2f3d48e0_c9c4_4a0e_aca3_9241eb573296;
    Real mwbc2f5464_81e5_43fd_8b39_f5a2756af72f;

initial equation
    mwf626e95e_543f_41e4_aad4_c6bf60ab345b = 4.82830639918582e-05;
    mwbbbce920_e8dd_4320_9386_fc94bfb2fc99 = 3.9;
    mw810ff751_fa4e_4143_bd50_169b3e325e1e = 0.00158509246200931;
    mw114aa90f_5f5b_4fe8_9406_361c8489b6a1 = 40.196036452179;
    mw30ae63db_6cd3_4b6f_93ad_3350cd360bcc = 1.05563779110703;
    mw03db56ac_8dc6_4931_ae82_fef706d2ee3d = 1.99215203510923e-05;
    mwf345ed7a_0622_403c_b816_c8749a2c9ded = 1e-26;
    mw1da111f2_a036_4392_8512_015005bdcbb7 = 9.8773753365085e-28;
    mwa2d8dd1c_bb9a_4552_8738_e24671651c1d = -1.15536021610192e-26;
    mw80848184_e2dd_47ce_86d7_7a21479342bd = 0.437781481555189;
    mwd2d9d93a_3bd1_4f17_bac1_baba9ef2d55a = 1.37781774217442e-06;
    mw4638f126_8cb8_4021_ab41_6ae195743ba0 = 1.75027407369445e-05;
    mw10315fa3_6f13_4618_bda8_a8694bd3c374 = 0.438768626591536;
    mw0adf3eb4_a196_4c48_b10d_4e9e9faaf9e1 = 5.88006568524737e-05;
    mw7d86cc23_a1af_44c3_bdb9_71e9b1bb2a83 = 8.80086553913515e-07;
    mw0eb6c959_d408_45a0_a450_928b8c5876bb = 0.015961020646031;
    mw42054cd7_17af_46da_970c_7f99151906ad = 9.06918671945582;
    mw39c2e431_fdc3_4964_be29_6ca856620b1b = 0.930813280544178;
    mw2e464cf3_a09c_4b7c_9f3c_06720016a48e = 1.51063415282403;
    mw36ea78c1_ed71_4def_96d3_857a442d7195 = 74.1039387714523;
    mw147d30ec_478e_4090_b496_128a131d29eb = 5.58113535879753;
    mwab41493c_6349_45f1_a226_3030cfed0e06 = 0.00209599327398083;
    mw1d9426a3_e1e9_49e0_ad77_eb6833be398a = -1.40627697813568e-27;
    mwf405687b_7401_44ec_a0d6_4a2b35c13e8a = 1.08229088508198e-27;
    mw3667a5e1_02c9_44a0_acb4_b0431faa822d = 1e-26;
    mw7becb5fe_8da8_4285_a821_0d77ad811b62 = 2.37592804897571e-05;
    mw8c9107e6_f51d_442d_b2dc_2bfdbb8482ca = 0.437466744395661;
    mw824bc3d4_1ac3_4912_9b51_8f14ff1c96b9 = 1.794860923584e-06;
    mw6cce2109_0e32_4dd9_98ec_41173e8ef07d = 0.0207923272427145;
    mw2b255f94_8018_4b99_bde8_918eeac45446 = 8.76987224478195;
    mw48867e93_f170_44e8_ac7a_185b23e1bf3b = 1.23012775521805;
    mwd31f52cc_04e7_40e0_885f_c7b2d9e62215 = 1.51017985268264;
    mw2c9b0499_3325_4394_8af3_bbf653a944a0 = 0.000743306813085487;
    mwd65b5b39_dc1b_4e77_a999_67277a880e5e = 5.58075296241649;
    mw6335d5d7_c7b0_4bc0_b883_f7ee4915c2c3 = 0.00247838965501352;
    mwf7796221_1fea_4274_a93e_c00adbf5778c = 1e-26;
    mw5d764bb8_5693_4ac8_9557_f65992cc5eb0 = 1.04407998182156e-26;
    mw2f3d48e0_c9c4_4a0e_aca3_9241eb573296 = -2.42821658464018e-27;
    mwbc2f5464_81e5_43fd_8b39_f5a2756af72f = 1e-26;

equation
    mw0083d743_836f_4238_a17f_4602193d5bc0 = mw92d854a7_8aaf_458e_b5e2_20a63ce9b654 * mw48867e93_f170_44e8_ac7a_185b23e1bf3b / (mw08950572_81b0_4570_b2e4_b9c3462c1425 + mw48867e93_f170_44e8_ac7a_185b23e1bf3b);
    mwd5313618_89eb_4c8c_bc82_66f10f966349 = mw92d854a7_8aaf_458e_b5e2_20a63ce9b654 * mw39c2e431_fdc3_4964_be29_6ca856620b1b / (mw08950572_81b0_4570_b2e4_b9c3462c1425 + mw39c2e431_fdc3_4964_be29_6ca856620b1b);
    der(mwf626e95e_543f_41e4_aad4_c6bf60ab345b) = (mw53ffe9e6_beef_45c4_90a5_a79197ed506e * function_3(kIL6Synth, mw53ffe9e6_beef_45c4_90a5_a79197ed506e)) - (mw53ffe9e6_beef_45c4_90a5_a79197ed506e * function_1(kRLOff, kRLOn, mw03db56ac_8dc6_4931_ae82_fef706d2ee3d, mw30ae63db_6cd3_4b6f_93ad_3350cd360bcc, mw53ffe9e6_beef_45c4_90a5_a79197ed506e, mwf626e95e_543f_41e4_aad4_c6bf60ab345b)) - (mw53ffe9e6_beef_45c4_90a5_a79197ed506e * function_4(kIL6Decay, mw53ffe9e6_beef_45c4_90a5_a79197ed506e, mwf626e95e_543f_41e4_aad4_c6bf60ab345b)) - (mwc67e1333_079a_4bea_9b4f_0a1b15ddd7bb * mwf626e95e_543f_41e4_aad4_c6bf60ab345b - mwce10678d_8197_408c_ad47_1daec8104cd8 * mw2c9b0499_3325_4394_8af3_bbf653a944a0) - (mwc67e1333_079a_4bea_9b4f_0a1b15ddd7bb * mwf626e95e_543f_41e4_aad4_c6bf60ab345b - mwce10678d_8197_408c_ad47_1daec8104cd8 * mw0adf3eb4_a196_4c48_b10d_4e9e9faaf9e1) - (mw53ffe9e6_beef_45c4_90a5_a79197ed506e * function_42(mw1c4bc9c3_52ad_4ef7_bf7f_97b0e2101ead, mw1da111f2_a036_4392_8512_015005bdcbb7, mw53ffe9e6_beef_45c4_90a5_a79197ed506e, mwa09d6284_843e_404e_abbb_052fbb535197, mwf345ed7a_0622_403c_b816_c8749a2c9ded, mwf626e95e_543f_41e4_aad4_c6bf60ab345b));
    der(mwbbbce920_e8dd_4320_9386_fc94bfb2fc99) = (mw53ffe9e6_beef_45c4_90a5_a79197ed506e * function_37(mw1f41474c_c399_4a60_a53a_9926dd092e8d, mw53ffe9e6_beef_45c4_90a5_a79197ed506e)) - (mw53ffe9e6_beef_45c4_90a5_a79197ed506e * function_2(kgp130Off, kgp130On, mw03db56ac_8dc6_4931_ae82_fef706d2ee3d, mw53ffe9e6_beef_45c4_90a5_a79197ed506e, mw810ff751_fa4e_4143_bd50_169b3e325e1e, mwbbbce920_e8dd_4320_9386_fc94bfb2fc99)) - (mwc67e1333_079a_4bea_9b4f_0a1b15ddd7bb * mwbbbce920_e8dd_4320_9386_fc94bfb2fc99 - mwce10678d_8197_408c_ad47_1daec8104cd8 * mwd65b5b39_dc1b_4e77_a999_67277a880e5e) - (mwc67e1333_079a_4bea_9b4f_0a1b15ddd7bb * mwbbbce920_e8dd_4320_9386_fc94bfb2fc99 - mwce10678d_8197_408c_ad47_1daec8104cd8 * mw147d30ec_478e_4090_b496_128a131d29eb) - (mw53ffe9e6_beef_45c4_90a5_a79197ed506e * function_38(mw53ffe9e6_beef_45c4_90a5_a79197ed506e, mwbbbce920_e8dd_4320_9386_fc94bfb2fc99, mwbcb5a310_9b67_405e_89ec_43d25e8cc93d));
    der(mw810ff751_fa4e_4143_bd50_169b3e325e1e) = (mw53ffe9e6_beef_45c4_90a5_a79197ed506e * function_2(kgp130Off, kgp130On, mw03db56ac_8dc6_4931_ae82_fef706d2ee3d, mw53ffe9e6_beef_45c4_90a5_a79197ed506e, mw810ff751_fa4e_4143_bd50_169b3e325e1e, mwbbbce920_e8dd_4320_9386_fc94bfb2fc99)) - (mwc67e1333_079a_4bea_9b4f_0a1b15ddd7bb * mw810ff751_fa4e_4143_bd50_169b3e325e1e - mwce10678d_8197_408c_ad47_1daec8104cd8 * mw6335d5d7_c7b0_4bc0_b883_f7ee4915c2c3) - (mwc67e1333_079a_4bea_9b4f_0a1b15ddd7bb * mw810ff751_fa4e_4143_bd50_169b3e325e1e - mwce10678d_8197_408c_ad47_1daec8104cd8 * mwab41493c_6349_45f1_a226_3030cfed0e06);
    der(mw114aa90f_5f5b_4fe8_9406_361c8489b6a1) = (mw53ffe9e6_beef_45c4_90a5_a79197ed506e * function_32(mw53ffe9e6_beef_45c4_90a5_a79197ed506e, mw65c85954_5ca0_4df2_9e22_ff2aa3fbe3f1)) + (mw53ffe9e6_beef_45c4_90a5_a79197ed506e * function_41(mw114aa90f_5f5b_4fe8_9406_361c8489b6a1, mw53ffe9e6_beef_45c4_90a5_a79197ed506e, mw5832a2dc_ee18_44df_aa59_ccb21cb74df2)) - (mw53ffe9e6_beef_45c4_90a5_a79197ed506e * function_5(kCRPDecay, mw114aa90f_5f5b_4fe8_9406_361c8489b6a1, mw53ffe9e6_beef_45c4_90a5_a79197ed506e)) - (mwc67e1333_079a_4bea_9b4f_0a1b15ddd7bb * mw114aa90f_5f5b_4fe8_9406_361c8489b6a1 - mwce10678d_8197_408c_ad47_1daec8104cd8 * mw36ea78c1_ed71_4def_96d3_857a442d7195) - (mw53ffe9e6_beef_45c4_90a5_a79197ed506e * function_41(mw114aa90f_5f5b_4fe8_9406_361c8489b6a1, mw53ffe9e6_beef_45c4_90a5_a79197ed506e, mw5832a2dc_ee18_44df_aa59_ccb21cb74df2));
    der(mw30ae63db_6cd3_4b6f_93ad_3350cd360bcc) = (mw53ffe9e6_beef_45c4_90a5_a79197ed506e * function_35(mw53ffe9e6_beef_45c4_90a5_a79197ed506e, mwc4c58db7_5535_4590_aaa5_bbc8ed53cdab)) + (mw53ffe9e6_beef_45c4_90a5_a79197ed506e * function_41(mw114aa90f_5f5b_4fe8_9406_361c8489b6a1, mw53ffe9e6_beef_45c4_90a5_a79197ed506e, mw5832a2dc_ee18_44df_aa59_ccb21cb74df2)) - (mw53ffe9e6_beef_45c4_90a5_a79197ed506e * function_1(kRLOff, kRLOn, mw03db56ac_8dc6_4931_ae82_fef706d2ee3d, mw30ae63db_6cd3_4b6f_93ad_3350cd360bcc, mw53ffe9e6_beef_45c4_90a5_a79197ed506e, mwf626e95e_543f_41e4_aad4_c6bf60ab345b)) - (mwc67e1333_079a_4bea_9b4f_0a1b15ddd7bb * mw30ae63db_6cd3_4b6f_93ad_3350cd360bcc - mwce10678d_8197_408c_ad47_1daec8104cd8 * mwd31f52cc_04e7_40e0_885f_c7b2d9e62215) - (mwc67e1333_079a_4bea_9b4f_0a1b15ddd7bb * mw30ae63db_6cd3_4b6f_93ad_3350cd360bcc - mwce10678d_8197_408c_ad47_1daec8104cd8 * mw2e464cf3_a09c_4b7c_9f3c_06720016a48e) - (mw53ffe9e6_beef_45c4_90a5_a79197ed506e * function_36(mw30ae63db_6cd3_4b6f_93ad_3350cd360bcc, mw53ffe9e6_beef_45c4_90a5_a79197ed506e, mw88a75379_f9a1_4acc_baeb_94c32bb736a5));
    der(mw03db56ac_8dc6_4931_ae82_fef706d2ee3d) = (mw53ffe9e6_beef_45c4_90a5_a79197ed506e * function_1(kRLOff, kRLOn, mw03db56ac_8dc6_4931_ae82_fef706d2ee3d, mw30ae63db_6cd3_4b6f_93ad_3350cd360bcc, mw53ffe9e6_beef_45c4_90a5_a79197ed506e, mwf626e95e_543f_41e4_aad4_c6bf60ab345b)) - (mw53ffe9e6_beef_45c4_90a5_a79197ed506e * function_2(kgp130Off, kgp130On, mw03db56ac_8dc6_4931_ae82_fef706d2ee3d, mw53ffe9e6_beef_45c4_90a5_a79197ed506e, mw810ff751_fa4e_4143_bd50_169b3e325e1e, mwbbbce920_e8dd_4320_9386_fc94bfb2fc99)) - (mwc67e1333_079a_4bea_9b4f_0a1b15ddd7bb * mw03db56ac_8dc6_4931_ae82_fef706d2ee3d - mwce10678d_8197_408c_ad47_1daec8104cd8 * mw7becb5fe_8da8_4285_a821_0d77ad811b62) - (mwc67e1333_079a_4bea_9b4f_0a1b15ddd7bb * mw03db56ac_8dc6_4931_ae82_fef706d2ee3d - mwce10678d_8197_408c_ad47_1daec8104cd8 * mw4638f126_8cb8_4021_ab41_6ae195743ba0);
    der(mwf345ed7a_0622_403c_b816_c8749a2c9ded) =  - (mwf67caf9d_2f4b_4986_abf2_e6090bbb72ce * mwf345ed7a_0622_403c_b816_c8749a2c9ded - mw4aea26f6_8860_414c_97f5_40d325196f2e * mwbc2f5464_81e5_43fd_8b39_f5a2756af72f) - (mw53ffe9e6_beef_45c4_90a5_a79197ed506e * function_42(mw1c4bc9c3_52ad_4ef7_bf7f_97b0e2101ead, mw1da111f2_a036_4392_8512_015005bdcbb7, mw53ffe9e6_beef_45c4_90a5_a79197ed506e, mwa09d6284_843e_404e_abbb_052fbb535197, mwf345ed7a_0622_403c_b816_c8749a2c9ded, mwf626e95e_543f_41e4_aad4_c6bf60ab345b)) - (mw53ffe9e6_beef_45c4_90a5_a79197ed506e * function_45(mw53ffe9e6_beef_45c4_90a5_a79197ed506e, mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30, mwf345ed7a_0622_403c_b816_c8749a2c9ded)) - (mw640ca705_e089_4c64_a5f4_9562317e8c76 * mwf345ed7a_0622_403c_b816_c8749a2c9ded - mw43ccad8c_cabf_4eaf_90d5_e06ae43be2cb * mw3667a5e1_02c9_44a0_acb4_b0431faa822d) - (mw9f83bdd3_3aa1_47ff_abd6_54e5ce60704a * mwf345ed7a_0622_403c_b816_c8749a2c9ded - mwa071fdbe_d498_4620_a7a4_940aa31c8161 * mwf7796221_1fea_4274_a93e_c00adbf5778c);
    der(mw1da111f2_a036_4392_8512_015005bdcbb7) = (mw53ffe9e6_beef_45c4_90a5_a79197ed506e * function_42(mw1c4bc9c3_52ad_4ef7_bf7f_97b0e2101ead, mw1da111f2_a036_4392_8512_015005bdcbb7, mw53ffe9e6_beef_45c4_90a5_a79197ed506e, mwa09d6284_843e_404e_abbb_052fbb535197, mwf345ed7a_0622_403c_b816_c8749a2c9ded, mwf626e95e_543f_41e4_aad4_c6bf60ab345b)) - (mw53ffe9e6_beef_45c4_90a5_a79197ed506e * function_43(mw1da111f2_a036_4392_8512_015005bdcbb7, mw53ffe9e6_beef_45c4_90a5_a79197ed506e, mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30)) - (mw640ca705_e089_4c64_a5f4_9562317e8c76 * mw1da111f2_a036_4392_8512_015005bdcbb7 - mw43ccad8c_cabf_4eaf_90d5_e06ae43be2cb * mwf405687b_7401_44ec_a0d6_4a2b35c13e8a) - (mw9f83bdd3_3aa1_47ff_abd6_54e5ce60704a * mw1da111f2_a036_4392_8512_015005bdcbb7 - mwa071fdbe_d498_4620_a7a4_940aa31c8161 * mw5d764bb8_5693_4ac8_9557_f65992cc5eb0);
    der(mwa2d8dd1c_bb9a_4552_8738_e24671651c1d) =  - (mw53ffe9e6_beef_45c4_90a5_a79197ed506e * function_44(mw53ffe9e6_beef_45c4_90a5_a79197ed506e, mwa2d8dd1c_bb9a_4552_8738_e24671651c1d, mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30)) - (mw640ca705_e089_4c64_a5f4_9562317e8c76 * mwa2d8dd1c_bb9a_4552_8738_e24671651c1d - mw43ccad8c_cabf_4eaf_90d5_e06ae43be2cb * mw1d9426a3_e1e9_49e0_ad77_eb6833be398a) - (mw9f83bdd3_3aa1_47ff_abd6_54e5ce60704a * mwa2d8dd1c_bb9a_4552_8738_e24671651c1d - mwa071fdbe_d498_4620_a7a4_940aa31c8161 * mw2f3d48e0_c9c4_4a0e_aca3_9241eb573296);
    der(mw80848184_e2dd_47ce_86d7_7a21479342bd) = (mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e * function_25(kRsynth, mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e)) - (mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e * function_6(kgp130Off, kgp130On, mw4638f126_8cb8_4021_ab41_6ae195743ba0, mw80848184_e2dd_47ce_86d7_7a21479342bd, mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e, mwd2d9d93a_3bd1_4f17_bac1_baba9ef2d55a)) - (mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e * function_8(kgp130Off, kgp130On, mw7d86cc23_a1af_44c3_bdb9_71e9b1bb2a83, mw80848184_e2dd_47ce_86d7_7a21479342bd, mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e, mwd2d9d93a_3bd1_4f17_bac1_baba9ef2d55a)) - (mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e * function_26(kRdeg, mw80848184_e2dd_47ce_86d7_7a21479342bd, mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e));
    der(mwd2d9d93a_3bd1_4f17_bac1_baba9ef2d55a) = (mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e * function_6(kgp130Off, kgp130On, mw4638f126_8cb8_4021_ab41_6ae195743ba0, mw80848184_e2dd_47ce_86d7_7a21479342bd, mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e, mwd2d9d93a_3bd1_4f17_bac1_baba9ef2d55a)) + (mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e * function_8(kgp130Off, kgp130On, mw7d86cc23_a1af_44c3_bdb9_71e9b1bb2a83, mw80848184_e2dd_47ce_86d7_7a21479342bd, mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e, mwd2d9d93a_3bd1_4f17_bac1_baba9ef2d55a)) + (mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e * function_23(mw0eb6c959_d408_45a0_a450_928b8c5876bb, mw1667a8e0_9d20_4e59_ba51_596148aba787, mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e, mwfcf06900_5f2f_4bb3_bb1f_12023612b8a8)) - (mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e * function_9(kRAct, mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e, mwd2d9d93a_3bd1_4f17_bac1_baba9ef2d55a)) - (mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e * function_14(kRint, mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e, mwd2d9d93a_3bd1_4f17_bac1_baba9ef2d55a));
    der(mw4638f126_8cb8_4021_ab41_6ae195743ba0) = (mwc67e1333_079a_4bea_9b4f_0a1b15ddd7bb * mw03db56ac_8dc6_4931_ae82_fef706d2ee3d - mwce10678d_8197_408c_ad47_1daec8104cd8 * mw4638f126_8cb8_4021_ab41_6ae195743ba0) + (mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e * function_30(kRLOff, kRLOn, mw0adf3eb4_a196_4c48_b10d_4e9e9faaf9e1, mw2e464cf3_a09c_4b7c_9f3c_06720016a48e, mw4638f126_8cb8_4021_ab41_6ae195743ba0, mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e)) - (mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e * function_6(kgp130Off, kgp130On, mw4638f126_8cb8_4021_ab41_6ae195743ba0, mw80848184_e2dd_47ce_86d7_7a21479342bd, mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e, mwd2d9d93a_3bd1_4f17_bac1_baba9ef2d55a)) - (mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e * function_34(kgp130Off, kgp130On, mw147d30ec_478e_4090_b496_128a131d29eb, mw4638f126_8cb8_4021_ab41_6ae195743ba0, mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e, mwab41493c_6349_45f1_a226_3030cfed0e06));
    der(mw10315fa3_6f13_4618_bda8_a8694bd3c374) = (mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e * function_16(kRsynth, mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e)) - (mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e * function_7(kRLOff, kRLOn, mw0adf3eb4_a196_4c48_b10d_4e9e9faaf9e1, mw10315fa3_6f13_4618_bda8_a8694bd3c374, mw7d86cc23_a1af_44c3_bdb9_71e9b1bb2a83, mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e)) - (mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e * function_12(kRdeg, mw10315fa3_6f13_4618_bda8_a8694bd3c374, mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e));
    der(mw0adf3eb4_a196_4c48_b10d_4e9e9faaf9e1) = (mwc67e1333_079a_4bea_9b4f_0a1b15ddd7bb * mwf626e95e_543f_41e4_aad4_c6bf60ab345b - mwce10678d_8197_408c_ad47_1daec8104cd8 * mw0adf3eb4_a196_4c48_b10d_4e9e9faaf9e1) - (mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e * function_7(kRLOff, kRLOn, mw0adf3eb4_a196_4c48_b10d_4e9e9faaf9e1, mw10315fa3_6f13_4618_bda8_a8694bd3c374, mw7d86cc23_a1af_44c3_bdb9_71e9b1bb2a83, mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e)) - (mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e * function_30(kRLOff, kRLOn, mw0adf3eb4_a196_4c48_b10d_4e9e9faaf9e1, mw2e464cf3_a09c_4b7c_9f3c_06720016a48e, mw4638f126_8cb8_4021_ab41_6ae195743ba0, mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e)) - (mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e * function_49(mw0adf3eb4_a196_4c48_b10d_4e9e9faaf9e1, mw1c4bc9c3_52ad_4ef7_bf7f_97b0e2101ead, mw3667a5e1_02c9_44a0_acb4_b0431faa822d, mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e, mwa09d6284_843e_404e_abbb_052fbb535197, mwf405687b_7401_44ec_a0d6_4a2b35c13e8a));
    der(mw7d86cc23_a1af_44c3_bdb9_71e9b1bb2a83) = (mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e * function_7(kRLOff, kRLOn, mw0adf3eb4_a196_4c48_b10d_4e9e9faaf9e1, mw10315fa3_6f13_4618_bda8_a8694bd3c374, mw7d86cc23_a1af_44c3_bdb9_71e9b1bb2a83, mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e)) - (mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e * function_8(kgp130Off, kgp130On, mw7d86cc23_a1af_44c3_bdb9_71e9b1bb2a83, mw80848184_e2dd_47ce_86d7_7a21479342bd, mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e, mwd2d9d93a_3bd1_4f17_bac1_baba9ef2d55a)) - (mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e * function_13(kRint, mw7d86cc23_a1af_44c3_bdb9_71e9b1bb2a83, mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e));
    der(mw0eb6c959_d408_45a0_a450_928b8c5876bb) = (mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e * function_9(kRAct, mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e, mwd2d9d93a_3bd1_4f17_bac1_baba9ef2d55a)) + (mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e * function_10(mw0eb6c959_d408_45a0_a450_928b8c5876bb, mw42054cd7_17af_46da_970c_7f99151906ad, mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e, mw9442cd0e_4d7c_4ba6_a695_f84919bdf569, mwe8fc1900_f07d_468b_b5c8_15400a583c3d)) - (mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e * function_10(mw0eb6c959_d408_45a0_a450_928b8c5876bb, mw42054cd7_17af_46da_970c_7f99151906ad, mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e, mw9442cd0e_4d7c_4ba6_a695_f84919bdf569, mwe8fc1900_f07d_468b_b5c8_15400a583c3d)) - (mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e * function_15(mw0eb6c959_d408_45a0_a450_928b8c5876bb, mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e, mwf44f7f27_5bb1_4c7f_8964_560fa5e1743a)) - (mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e * function_23(mw0eb6c959_d408_45a0_a450_928b8c5876bb, mw1667a8e0_9d20_4e59_ba51_596148aba787, mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e, mwfcf06900_5f2f_4bb3_bb1f_12023612b8a8));
    der(mw42054cd7_17af_46da_970c_7f99151906ad) = (mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e * function_11(mw39c2e431_fdc3_4964_be29_6ca856620b1b, mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e, mwd36b0261_2480_4cab_9222_2cf8fb0e65dc, mwfd291862_195f_4979_94b5_b4e5ae1b7d52)) - (mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e * function_10(mw0eb6c959_d408_45a0_a450_928b8c5876bb, mw42054cd7_17af_46da_970c_7f99151906ad, mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e, mw9442cd0e_4d7c_4ba6_a695_f84919bdf569, mwe8fc1900_f07d_468b_b5c8_15400a583c3d));
    der(mw39c2e431_fdc3_4964_be29_6ca856620b1b) = (mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e * function_10(mw0eb6c959_d408_45a0_a450_928b8c5876bb, mw42054cd7_17af_46da_970c_7f99151906ad, mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e, mw9442cd0e_4d7c_4ba6_a695_f84919bdf569, mwe8fc1900_f07d_468b_b5c8_15400a583c3d)) - (mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e * function_11(mw39c2e431_fdc3_4964_be29_6ca856620b1b, mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e, mwd36b0261_2480_4cab_9222_2cf8fb0e65dc, mwfd291862_195f_4979_94b5_b4e5ae1b7d52));
    der(mw2e464cf3_a09c_4b7c_9f3c_06720016a48e) = (mwc67e1333_079a_4bea_9b4f_0a1b15ddd7bb * mw30ae63db_6cd3_4b6f_93ad_3350cd360bcc - mwce10678d_8197_408c_ad47_1daec8104cd8 * mw2e464cf3_a09c_4b7c_9f3c_06720016a48e) - (mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e * function_30(kRLOff, kRLOn, mw0adf3eb4_a196_4c48_b10d_4e9e9faaf9e1, mw2e464cf3_a09c_4b7c_9f3c_06720016a48e, mw4638f126_8cb8_4021_ab41_6ae195743ba0, mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e));
    der(mw36ea78c1_ed71_4def_96d3_857a442d7195) = (mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e * function_31(mw862f1480_c60c_4863_a565_b2c1c77e238e, mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e, mwd5313618_89eb_4c8c_bc82_66f10f966349)) + (mwc67e1333_079a_4bea_9b4f_0a1b15ddd7bb * mw114aa90f_5f5b_4fe8_9406_361c8489b6a1 - mwce10678d_8197_408c_ad47_1daec8104cd8 * mw36ea78c1_ed71_4def_96d3_857a442d7195) ;
    der(mw147d30ec_478e_4090_b496_128a131d29eb) = (mwc67e1333_079a_4bea_9b4f_0a1b15ddd7bb * mwbbbce920_e8dd_4320_9386_fc94bfb2fc99 - mwce10678d_8197_408c_ad47_1daec8104cd8 * mw147d30ec_478e_4090_b496_128a131d29eb) - (mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e * function_34(kgp130Off, kgp130On, mw147d30ec_478e_4090_b496_128a131d29eb, mw4638f126_8cb8_4021_ab41_6ae195743ba0, mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e, mwab41493c_6349_45f1_a226_3030cfed0e06));
    der(mwab41493c_6349_45f1_a226_3030cfed0e06) = (mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e * function_34(kgp130Off, kgp130On, mw147d30ec_478e_4090_b496_128a131d29eb, mw4638f126_8cb8_4021_ab41_6ae195743ba0, mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e, mwab41493c_6349_45f1_a226_3030cfed0e06)) + (mwc67e1333_079a_4bea_9b4f_0a1b15ddd7bb * mw810ff751_fa4e_4143_bd50_169b3e325e1e - mwce10678d_8197_408c_ad47_1daec8104cd8 * mwab41493c_6349_45f1_a226_3030cfed0e06) ;
    der(mw1d9426a3_e1e9_49e0_ad77_eb6833be398a) = (mw640ca705_e089_4c64_a5f4_9562317e8c76 * mwa2d8dd1c_bb9a_4552_8738_e24671651c1d - mw43ccad8c_cabf_4eaf_90d5_e06ae43be2cb * mw1d9426a3_e1e9_49e0_ad77_eb6833be398a) - (mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e * function_51(mw1d9426a3_e1e9_49e0_ad77_eb6833be398a, mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e, mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30));
    der(mwf405687b_7401_44ec_a0d6_4a2b35c13e8a) = (mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e * function_49(mw0adf3eb4_a196_4c48_b10d_4e9e9faaf9e1, mw1c4bc9c3_52ad_4ef7_bf7f_97b0e2101ead, mw3667a5e1_02c9_44a0_acb4_b0431faa822d, mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e, mwa09d6284_843e_404e_abbb_052fbb535197, mwf405687b_7401_44ec_a0d6_4a2b35c13e8a)) + (mw640ca705_e089_4c64_a5f4_9562317e8c76 * mw1da111f2_a036_4392_8512_015005bdcbb7 - mw43ccad8c_cabf_4eaf_90d5_e06ae43be2cb * mwf405687b_7401_44ec_a0d6_4a2b35c13e8a) - (mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e * function_50(mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e, mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30, mwf405687b_7401_44ec_a0d6_4a2b35c13e8a));
    der(mw3667a5e1_02c9_44a0_acb4_b0431faa822d) = (mw640ca705_e089_4c64_a5f4_9562317e8c76 * mwf345ed7a_0622_403c_b816_c8749a2c9ded - mw43ccad8c_cabf_4eaf_90d5_e06ae43be2cb * mw3667a5e1_02c9_44a0_acb4_b0431faa822d) - (mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e * function_49(mw0adf3eb4_a196_4c48_b10d_4e9e9faaf9e1, mw1c4bc9c3_52ad_4ef7_bf7f_97b0e2101ead, mw3667a5e1_02c9_44a0_acb4_b0431faa822d, mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e, mwa09d6284_843e_404e_abbb_052fbb535197, mwf405687b_7401_44ec_a0d6_4a2b35c13e8a)) - (mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e * function_52(mw3667a5e1_02c9_44a0_acb4_b0431faa822d, mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e, mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30));
    der(mw7becb5fe_8da8_4285_a821_0d77ad811b62) = (mwe9501423_9fb4_494b_b5b6_288f3fcb17b5 * function_29(kRLOff, kRLOn, mw2c9b0499_3325_4394_8af3_bbf653a944a0, mw7becb5fe_8da8_4285_a821_0d77ad811b62, mwd31f52cc_04e7_40e0_885f_c7b2d9e62215, mwe9501423_9fb4_494b_b5b6_288f3fcb17b5)) + (mwc67e1333_079a_4bea_9b4f_0a1b15ddd7bb * mw03db56ac_8dc6_4931_ae82_fef706d2ee3d - mwce10678d_8197_408c_ad47_1daec8104cd8 * mw7becb5fe_8da8_4285_a821_0d77ad811b62) - (mwe9501423_9fb4_494b_b5b6_288f3fcb17b5 * function_17(kgp130Off, kgp130On, mw7becb5fe_8da8_4285_a821_0d77ad811b62, mw824bc3d4_1ac3_4912_9b51_8f14ff1c96b9, mw8c9107e6_f51d_442d_b2dc_2bfdbb8482ca, mwe9501423_9fb4_494b_b5b6_288f3fcb17b5)) - (mwe9501423_9fb4_494b_b5b6_288f3fcb17b5 * function_33(kgp130Off, kgp130On, mw6335d5d7_c7b0_4bc0_b883_f7ee4915c2c3, mw7becb5fe_8da8_4285_a821_0d77ad811b62, mwd65b5b39_dc1b_4e77_a999_67277a880e5e, mwe9501423_9fb4_494b_b5b6_288f3fcb17b5));
    der(mw8c9107e6_f51d_442d_b2dc_2bfdbb8482ca) = (mwe9501423_9fb4_494b_b5b6_288f3fcb17b5 * function_27(kRsynth, mwe9501423_9fb4_494b_b5b6_288f3fcb17b5)) - (mwe9501423_9fb4_494b_b5b6_288f3fcb17b5 * function_17(kgp130Off, kgp130On, mw7becb5fe_8da8_4285_a821_0d77ad811b62, mw824bc3d4_1ac3_4912_9b51_8f14ff1c96b9, mw8c9107e6_f51d_442d_b2dc_2bfdbb8482ca, mwe9501423_9fb4_494b_b5b6_288f3fcb17b5)) - (mwe9501423_9fb4_494b_b5b6_288f3fcb17b5 * function_28(kRdeg, mw8c9107e6_f51d_442d_b2dc_2bfdbb8482ca, mwe9501423_9fb4_494b_b5b6_288f3fcb17b5));
    der(mw824bc3d4_1ac3_4912_9b51_8f14ff1c96b9) = (mwe9501423_9fb4_494b_b5b6_288f3fcb17b5 * function_17(kgp130Off, kgp130On, mw7becb5fe_8da8_4285_a821_0d77ad811b62, mw824bc3d4_1ac3_4912_9b51_8f14ff1c96b9, mw8c9107e6_f51d_442d_b2dc_2bfdbb8482ca, mwe9501423_9fb4_494b_b5b6_288f3fcb17b5)) + (mwe9501423_9fb4_494b_b5b6_288f3fcb17b5 * function_24(mw1667a8e0_9d20_4e59_ba51_596148aba787, mw6cce2109_0e32_4dd9_98ec_41173e8ef07d, mwe9501423_9fb4_494b_b5b6_288f3fcb17b5, mwfcf06900_5f2f_4bb3_bb1f_12023612b8a8)) - (mwe9501423_9fb4_494b_b5b6_288f3fcb17b5 * function_18(kRAct, mw824bc3d4_1ac3_4912_9b51_8f14ff1c96b9, mwe9501423_9fb4_494b_b5b6_288f3fcb17b5)) - (mwe9501423_9fb4_494b_b5b6_288f3fcb17b5 * function_21(kRint, mw824bc3d4_1ac3_4912_9b51_8f14ff1c96b9, mwe9501423_9fb4_494b_b5b6_288f3fcb17b5));
    der(mw6cce2109_0e32_4dd9_98ec_41173e8ef07d) = (mwe9501423_9fb4_494b_b5b6_288f3fcb17b5 * function_18(kRAct, mw824bc3d4_1ac3_4912_9b51_8f14ff1c96b9, mwe9501423_9fb4_494b_b5b6_288f3fcb17b5)) + (mwe9501423_9fb4_494b_b5b6_288f3fcb17b5 * function_19(mw2b255f94_8018_4b99_bde8_918eeac45446, mw6cce2109_0e32_4dd9_98ec_41173e8ef07d, mw9442cd0e_4d7c_4ba6_a695_f84919bdf569, mwe8fc1900_f07d_468b_b5c8_15400a583c3d, mwe9501423_9fb4_494b_b5b6_288f3fcb17b5)) - (mwe9501423_9fb4_494b_b5b6_288f3fcb17b5 * function_19(mw2b255f94_8018_4b99_bde8_918eeac45446, mw6cce2109_0e32_4dd9_98ec_41173e8ef07d, mw9442cd0e_4d7c_4ba6_a695_f84919bdf569, mwe8fc1900_f07d_468b_b5c8_15400a583c3d, mwe9501423_9fb4_494b_b5b6_288f3fcb17b5)) - (mwe9501423_9fb4_494b_b5b6_288f3fcb17b5 * function_22(mw6cce2109_0e32_4dd9_98ec_41173e8ef07d, mwe9501423_9fb4_494b_b5b6_288f3fcb17b5, mwf44f7f27_5bb1_4c7f_8964_560fa5e1743a)) - (mwe9501423_9fb4_494b_b5b6_288f3fcb17b5 * function_24(mw1667a8e0_9d20_4e59_ba51_596148aba787, mw6cce2109_0e32_4dd9_98ec_41173e8ef07d, mwe9501423_9fb4_494b_b5b6_288f3fcb17b5, mwfcf06900_5f2f_4bb3_bb1f_12023612b8a8));
    der(mw2b255f94_8018_4b99_bde8_918eeac45446) = (mwe9501423_9fb4_494b_b5b6_288f3fcb17b5 * function_20(mw48867e93_f170_44e8_ac7a_185b23e1bf3b, mwd36b0261_2480_4cab_9222_2cf8fb0e65dc, mwe9501423_9fb4_494b_b5b6_288f3fcb17b5, mwfd291862_195f_4979_94b5_b4e5ae1b7d52)) - (mwe9501423_9fb4_494b_b5b6_288f3fcb17b5 * function_19(mw2b255f94_8018_4b99_bde8_918eeac45446, mw6cce2109_0e32_4dd9_98ec_41173e8ef07d, mw9442cd0e_4d7c_4ba6_a695_f84919bdf569, mwe8fc1900_f07d_468b_b5c8_15400a583c3d, mwe9501423_9fb4_494b_b5b6_288f3fcb17b5));
    der(mw48867e93_f170_44e8_ac7a_185b23e1bf3b) = (mwe9501423_9fb4_494b_b5b6_288f3fcb17b5 * function_19(mw2b255f94_8018_4b99_bde8_918eeac45446, mw6cce2109_0e32_4dd9_98ec_41173e8ef07d, mw9442cd0e_4d7c_4ba6_a695_f84919bdf569, mwe8fc1900_f07d_468b_b5c8_15400a583c3d, mwe9501423_9fb4_494b_b5b6_288f3fcb17b5)) - (mwe9501423_9fb4_494b_b5b6_288f3fcb17b5 * function_20(mw48867e93_f170_44e8_ac7a_185b23e1bf3b, mwd36b0261_2480_4cab_9222_2cf8fb0e65dc, mwe9501423_9fb4_494b_b5b6_288f3fcb17b5, mwfd291862_195f_4979_94b5_b4e5ae1b7d52));
    der(mwd31f52cc_04e7_40e0_885f_c7b2d9e62215) = (mwc67e1333_079a_4bea_9b4f_0a1b15ddd7bb * mw30ae63db_6cd3_4b6f_93ad_3350cd360bcc - mwce10678d_8197_408c_ad47_1daec8104cd8 * mwd31f52cc_04e7_40e0_885f_c7b2d9e62215) - (mwe9501423_9fb4_494b_b5b6_288f3fcb17b5 * function_29(kRLOff, kRLOn, mw2c9b0499_3325_4394_8af3_bbf653a944a0, mw7becb5fe_8da8_4285_a821_0d77ad811b62, mwd31f52cc_04e7_40e0_885f_c7b2d9e62215, mwe9501423_9fb4_494b_b5b6_288f3fcb17b5));
    der(mw2c9b0499_3325_4394_8af3_bbf653a944a0) = (mwc67e1333_079a_4bea_9b4f_0a1b15ddd7bb * mwf626e95e_543f_41e4_aad4_c6bf60ab345b - mwce10678d_8197_408c_ad47_1daec8104cd8 * mw2c9b0499_3325_4394_8af3_bbf653a944a0) + (mwe9501423_9fb4_494b_b5b6_288f3fcb17b5 * function_39(mwa8d72918_f6c2_4d81_bf3b_fc2b464d5e69, mwe9501423_9fb4_494b_b5b6_288f3fcb17b5)) - (mwe9501423_9fb4_494b_b5b6_288f3fcb17b5 * function_29(kRLOff, kRLOn, mw2c9b0499_3325_4394_8af3_bbf653a944a0, mw7becb5fe_8da8_4285_a821_0d77ad811b62, mwd31f52cc_04e7_40e0_885f_c7b2d9e62215, mwe9501423_9fb4_494b_b5b6_288f3fcb17b5)) - (mwe9501423_9fb4_494b_b5b6_288f3fcb17b5 * function_40(mw06241335_b5f2_47ed_bdcc_ef77b68a2b98, mw2c9b0499_3325_4394_8af3_bbf653a944a0, mwe9501423_9fb4_494b_b5b6_288f3fcb17b5)) - (mwe9501423_9fb4_494b_b5b6_288f3fcb17b5 * function_48(mw1c4bc9c3_52ad_4ef7_bf7f_97b0e2101ead, mw2c9b0499_3325_4394_8af3_bbf653a944a0, mw5d764bb8_5693_4ac8_9557_f65992cc5eb0, mwa09d6284_843e_404e_abbb_052fbb535197, mwe9501423_9fb4_494b_b5b6_288f3fcb17b5, mwf7796221_1fea_4274_a93e_c00adbf5778c));
    der(mwd65b5b39_dc1b_4e77_a999_67277a880e5e) = (mwc67e1333_079a_4bea_9b4f_0a1b15ddd7bb * mwbbbce920_e8dd_4320_9386_fc94bfb2fc99 - mwce10678d_8197_408c_ad47_1daec8104cd8 * mwd65b5b39_dc1b_4e77_a999_67277a880e5e) - (mwe9501423_9fb4_494b_b5b6_288f3fcb17b5 * function_33(kgp130Off, kgp130On, mw6335d5d7_c7b0_4bc0_b883_f7ee4915c2c3, mw7becb5fe_8da8_4285_a821_0d77ad811b62, mwd65b5b39_dc1b_4e77_a999_67277a880e5e, mwe9501423_9fb4_494b_b5b6_288f3fcb17b5));
    der(mw6335d5d7_c7b0_4bc0_b883_f7ee4915c2c3) = (mwe9501423_9fb4_494b_b5b6_288f3fcb17b5 * function_33(kgp130Off, kgp130On, mw6335d5d7_c7b0_4bc0_b883_f7ee4915c2c3, mw7becb5fe_8da8_4285_a821_0d77ad811b62, mwd65b5b39_dc1b_4e77_a999_67277a880e5e, mwe9501423_9fb4_494b_b5b6_288f3fcb17b5)) + (mwc67e1333_079a_4bea_9b4f_0a1b15ddd7bb * mw810ff751_fa4e_4143_bd50_169b3e325e1e - mwce10678d_8197_408c_ad47_1daec8104cd8 * mw6335d5d7_c7b0_4bc0_b883_f7ee4915c2c3) ;
    der(mwf7796221_1fea_4274_a93e_c00adbf5778c) = (mw9f83bdd3_3aa1_47ff_abd6_54e5ce60704a * mwf345ed7a_0622_403c_b816_c8749a2c9ded - mwa071fdbe_d498_4620_a7a4_940aa31c8161 * mwf7796221_1fea_4274_a93e_c00adbf5778c) - (mwe9501423_9fb4_494b_b5b6_288f3fcb17b5 * function_48(mw1c4bc9c3_52ad_4ef7_bf7f_97b0e2101ead, mw2c9b0499_3325_4394_8af3_bbf653a944a0, mw5d764bb8_5693_4ac8_9557_f65992cc5eb0, mwa09d6284_843e_404e_abbb_052fbb535197, mwe9501423_9fb4_494b_b5b6_288f3fcb17b5, mwf7796221_1fea_4274_a93e_c00adbf5778c)) - (mwe9501423_9fb4_494b_b5b6_288f3fcb17b5 * function_53(mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30, mwe9501423_9fb4_494b_b5b6_288f3fcb17b5, mwf7796221_1fea_4274_a93e_c00adbf5778c));
    der(mw5d764bb8_5693_4ac8_9557_f65992cc5eb0) = (mwe9501423_9fb4_494b_b5b6_288f3fcb17b5 * function_48(mw1c4bc9c3_52ad_4ef7_bf7f_97b0e2101ead, mw2c9b0499_3325_4394_8af3_bbf653a944a0, mw5d764bb8_5693_4ac8_9557_f65992cc5eb0, mwa09d6284_843e_404e_abbb_052fbb535197, mwe9501423_9fb4_494b_b5b6_288f3fcb17b5, mwf7796221_1fea_4274_a93e_c00adbf5778c)) + (mw9f83bdd3_3aa1_47ff_abd6_54e5ce60704a * mw1da111f2_a036_4392_8512_015005bdcbb7 - mwa071fdbe_d498_4620_a7a4_940aa31c8161 * mw5d764bb8_5693_4ac8_9557_f65992cc5eb0) - (mwe9501423_9fb4_494b_b5b6_288f3fcb17b5 * function_47(mw5d764bb8_5693_4ac8_9557_f65992cc5eb0, mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30, mwe9501423_9fb4_494b_b5b6_288f3fcb17b5));
    der(mw2f3d48e0_c9c4_4a0e_aca3_9241eb573296) = (mw9f83bdd3_3aa1_47ff_abd6_54e5ce60704a * mwa2d8dd1c_bb9a_4552_8738_e24671651c1d - mwa071fdbe_d498_4620_a7a4_940aa31c8161 * mw2f3d48e0_c9c4_4a0e_aca3_9241eb573296) - (mwe9501423_9fb4_494b_b5b6_288f3fcb17b5 * function_46(mw2f3d48e0_c9c4_4a0e_aca3_9241eb573296, mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30, mwe9501423_9fb4_494b_b5b6_288f3fcb17b5));
    der(mwbc2f5464_81e5_43fd_8b39_f5a2756af72f) = (mwf67caf9d_2f4b_4986_abf2_e6090bbb72ce * mwf345ed7a_0622_403c_b816_c8749a2c9ded - mw4aea26f6_8860_414c_97f5_40d325196f2e * mwbc2f5464_81e5_43fd_8b39_f5a2756af72f) ;


    when time >= 0.1 then
        reinit(mwf345ed7a_0622_403c_b816_c8749a2c9ded,mwf345ed7a_0622_403c_b816_c8749a2c9ded + ModelValue_48 * 2.346);
    end when;
    when time >= 672 then
        reinit(mwf345ed7a_0622_403c_b816_c8749a2c9ded,mwf345ed7a_0622_403c_b816_c8749a2c9ded + ModelValue_48 * 2.346);
    end when;
    when time >= 1344 then
        reinit(mwf345ed7a_0622_403c_b816_c8749a2c9ded,mwf345ed7a_0622_403c_b816_c8749a2c9ded + ModelValue_48 * 2.346);
    end when;
    when time >= 2016 then
        reinit(mwf345ed7a_0622_403c_b816_c8749a2c9ded,Metabolite_6 + ModelValue_48 * 2.346);
    end when;

end BIOMD534;
