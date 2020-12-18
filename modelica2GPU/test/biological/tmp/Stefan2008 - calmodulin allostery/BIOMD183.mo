
model BIOMD183 "Stefan2008 - calmodulin allostery"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;


    function transition1_R_T
        	input Real ka;
	input Real b;
	input Real species;
        output Real y;
    algorithm
        y =  species * ka * b^(1 / 2);
    end transition1_R_T;


    function function_1
        	input Real parameter_10;
	input Real parameter_11;
	input Real species_18;
        output Real y;
    algorithm
        y =  species_18 * parameter_10 / parameter_11^(1 / 2);
    end function_1;


    function function_2
        	input Real parameter_10;
	input Real parameter_12;
	input Real species_19;
        output Real y;
    algorithm
        y =  species_19 * parameter_10 / parameter_12^(1 / 2);
    end function_2;


    function function_5
        	input Real parameter_11;
	input Real parameter_12;
	input Real parameter_9;
	input Real species_6;
        output Real y;
    algorithm
        y =  species_6 * parameter_9 * (parameter_11 * parameter_12)^(1 / 2);
    end function_5;


    function function_3
        	input Real parameter_10;
	input Real parameter_13;
	input Real species_20;
        output Real y;
    algorithm
        y =  species_20 * parameter_10 / parameter_13^(1 / 2);
    end function_3;


    function function_6
        	input Real parameter_11;
	input Real parameter_13;
	input Real parameter_9;
	input Real species_7;
        output Real y;
    algorithm
        y =  species_7 * parameter_9 * (parameter_11 * parameter_13)^(1 / 2);
    end function_6;


    function function_7
        	input Real parameter_11;
	input Real parameter_14;
	input Real parameter_9;
	input Real species_8;
        output Real y;
    algorithm
        y =  species_8 * parameter_9 * (parameter_11 * parameter_14)^(1 / 2);
    end function_7;


    function function_4
        	input Real parameter_10;
	input Real parameter_14;
	input Real species_21;
        output Real y;
    algorithm
        y =  species_21 * parameter_10 / parameter_14^(1 / 2);
    end function_4;


    function function_13
        	input Real parameter_10;
	input Real parameter_11;
	input Real parameter_14;
	input Real species_24;
        output Real y;
    algorithm
        y =  species_24 * parameter_10 / (parameter_11 * parameter_14)^(1 / 2);
    end function_13;


    function function_14
        	input Real parameter_10;
	input Real parameter_12;
	input Real parameter_13;
	input Real species_25;
        output Real y;
    algorithm
        y =  species_25 * parameter_10 / (parameter_12 * parameter_13)^(1 / 2);
    end function_14;


    function function_15
        	input Real parameter_10;
	input Real parameter_12;
	input Real parameter_14;
	input Real species_26;
        output Real y;
    algorithm
        y =  species_26 * parameter_10 / (parameter_12 * parameter_14)^(1 / 2);
    end function_15;


    function function_16
        	input Real parameter_10;
	input Real parameter_13;
	input Real parameter_14;
	input Real species_27;
        output Real y;
    algorithm
        y =  species_27 * parameter_10 / (parameter_13 * parameter_14)^(1 / 2);
    end function_16;


    function function_17
        	input Real parameter_11;
	input Real parameter_12;
	input Real parameter_13;
	input Real parameter_9;
	input Real species_12;
        output Real y;
    algorithm
        y =  species_12 * parameter_9 * (parameter_11 * parameter_12 * parameter_13)^(1 / 2);
    end function_17;


    function function_18
        	input Real parameter_11;
	input Real parameter_12;
	input Real parameter_14;
	input Real parameter_9;
	input Real species_13;
        output Real y;
    algorithm
        y =  species_13 * parameter_9 * (parameter_11 * parameter_12 * parameter_14)^(1 / 2);
    end function_18;


    function function_19
        	input Real parameter_11;
	input Real parameter_13;
	input Real parameter_14;
	input Real parameter_9;
	input Real species_14;
        output Real y;
    algorithm
        y =  species_14 * parameter_9 * (parameter_11 * parameter_13 * parameter_14)^(1 / 2);
    end function_19;


    function function_20
        	input Real parameter_12;
	input Real parameter_13;
	input Real parameter_14;
	input Real parameter_9;
	input Real species_15;
        output Real y;
    algorithm
        y =  species_15 * parameter_9 * (parameter_12 * parameter_13 * parameter_14)^(1 / 2);
    end function_20;


    function function_8
        	input Real parameter_12;
	input Real parameter_13;
	input Real parameter_9;
	input Real species_9;
        output Real y;
    algorithm
        y =  species_9 * parameter_9 * (parameter_12 * parameter_13)^(1 / 2);
    end function_8;


    function function_9
        	input Real parameter_12;
	input Real parameter_14;
	input Real parameter_9;
	input Real species_10;
        output Real y;
    algorithm
        y =  species_10 * parameter_9 * (parameter_12 * parameter_14)^(1 / 2);
    end function_9;


    function function_10
        	input Real parameter_13;
	input Real parameter_14;
	input Real parameter_9;
	input Real species_11;
        output Real y;
    algorithm
        y =  species_11 * parameter_9 * (parameter_13 * parameter_14)^(1 / 2);
    end function_10;


    function function_11
        	input Real parameter_10;
	input Real parameter_11;
	input Real parameter_12;
	input Real species_22;
        output Real y;
    algorithm
        y =  species_22 * parameter_10 / (parameter_11 * parameter_12)^(1 / 2);
    end function_11;


    function function_12
        	input Real parameter_10;
	input Real parameter_11;
	input Real parameter_13;
	input Real species_23;
        output Real y;
    algorithm
        y =  species_23 * parameter_10 / (parameter_11 * parameter_13)^(1 / 2);
    end function_12;


    function function_21
        	input Real parameter_10;
	input Real parameter_11;
	input Real parameter_12;
	input Real parameter_13;
	input Real species_28;
        output Real y;
    algorithm
        y =  species_28 * parameter_10 / (parameter_11 * parameter_12 * parameter_13)^(1 / 2);
    end function_21;


    function function_22
        	input Real parameter_10;
	input Real parameter_11;
	input Real parameter_12;
	input Real parameter_14;
	input Real species_29;
        output Real y;
    algorithm
        y =  species_29 * parameter_10 / (parameter_11 * parameter_12 * parameter_14)^(1 / 2);
    end function_22;


    function function_23
        	input Real parameter_10;
	input Real parameter_11;
	input Real parameter_13;
	input Real parameter_14;
	input Real species_30;
        output Real y;
    algorithm
        y =  species_30 * parameter_10 / (parameter_11 * parameter_13 * parameter_14)^(1 / 2);
    end function_23;


    function function_24
        	input Real parameter_10;
	input Real parameter_12;
	input Real parameter_13;
	input Real parameter_14;
	input Real species_31;
        output Real y;
    algorithm
        y =  species_31 * parameter_10 / (parameter_12 * parameter_13 * parameter_14)^(1 / 2);
    end function_24;


    function function_25
        	input Real parameter_11;
	input Real parameter_12;
	input Real parameter_13;
	input Real parameter_14;
	input Real parameter_9;
	input Real species_16;
        output Real y;
    algorithm
        y =  species_16 * parameter_9 * (parameter_11 * parameter_12 * parameter_13 * parameter_14)^(1 / 2);
    end function_25;


    function function_26
        	input Real parameter_10;
	input Real parameter_11;
	input Real parameter_12;
	input Real parameter_13;
	input Real parameter_14;
	input Real species_32;
        output Real y;
    algorithm
        y =  species_32 * parameter_10 / (parameter_11 * parameter_12 * parameter_13 * parameter_14)^(1 / 2);
    end function_26;


    parameter Real parameter_0 = 1000000.0;
    parameter Real parameter_9 = 1000000.0;
    parameter Real parameter_11 = 0.00396;
    parameter Real parameter_12 = 0.00396;
    parameter Real parameter_13 = 0.00396;
    parameter Real parameter_14 = 0.00396;
    parameter Real parameter_15 = 3200000.0;
    parameter Real parameter_16 = 0.343;
    parameter Real parameter_17 = 46000000.0;
    parameter Real parameter_18 = 0.0013;
    parameter Real parameter_49 = 20670.0;
    parameter Real parameter_50 = 8.32e-06;
    parameter Real parameter_51 = 1.66e-08;
    parameter Real parameter_52 = 1.74e-05;
    parameter Real parameter_53 = 1.45e-08;
    parameter Real compartment_0 = 1.0;

    Real parameter_1(start=8.32);
    Real parameter_2(start=0.0166);
    Real parameter_3(start=17.4);
    Real parameter_4(start=0.0145);
    Real parameter_5(start=2101.0101010101);
    Real parameter_6(start=4.19191919191919);
    Real parameter_7(start=4393.93939393939);
    Real parameter_8(start=3.66161616161616);
    Real parameter_10(start=48.3792936623125);
    Real parameter_19(start=0.0);
    Real parameter_20(start=0.0);
    Real parameter_21(start=0.0);
    Real parameter_22(start=0.0);
    Real parameter_23(start=0.0);
    Real parameter_24(start=0.0);
    Real parameter_25(start=0.0);
    Real parameter_26(start=0.0);
    Real parameter_27(start=7e-05);
    Real parameter_28(start=0.0);
    Real parameter_29(start=0.0);
    Real parameter_30(start=0.0);
    Real parameter_31(start=0.0);
    Real parameter_32(start=0.0);
    Real parameter_33(start=1.6e-06);
    Real parameter_34(start=0.0);
    Real parameter_35(start=9.7e-12);
    Real parameter_36(start=9.7e-12);
    Real parameter_37(start=2e-07);
    Real parameter_38(start=4.84976478640786e-05);
    Real parameter_39(start=0.0);
    Real parameter_40(start=0.0);
    Real parameter_41(start=0.0);
    Real parameter_42(start=0.0);
    Real parameter_43(start=0.0);
    Real parameter_44(start=0.0);
    Real parameter_45(start=0.0);
    Real parameter_46(start=2.000097e-07);
    Real parameter_47(start=2.000097e-07);
    Real parameter_48(start=0.0);
    Real parameter_54(start=0.0);
    Real parameter_55(start=0.0);
    Real parameter_56(start=0.0);
    Real parameter_57(start=0.0);
    Real parameter_58(start=4.84976478640786e-05);
    Real parameter_59(start=0.0);
    Real parameter_60(start=0.0);

    Real species_0;
    Real species_1;
    Real species_2;
    Real species_3;
    Real species_4;
    Real species_5;
    Real species_6;
    Real species_7;
    Real species_8;
    Real species_9;
    Real species_10;
    Real species_11;
    Real species_12;
    Real species_13;
    Real species_14;
    Real species_15;
    Real species_16;
    Real species_17;
    Real species_18;
    Real species_19;
    Real species_20;
    Real species_21;
    Real species_22;
    Real species_23;
    Real species_24;
    Real species_25;
    Real species_26;
    Real species_27;
    Real species_28;
    Real species_29;
    Real species_30;
    Real species_31;
    Real species_32;
    Real species_33;
    Real species_34;
    Real species_35;
    Real species_36;
    Real species_37;
    Real species_38;
    Real species_39;
    Real species_40;
    Real species_41;
    Real species_42;
    Real species_43;
    Real species_44;
    Real species_45;
    Real species_46;
    Real species_47;
    Real species_48;
    Real species_49;
    Real species_50;
    Real species_51;
    Real species_52;
    Real species_53;
    Real species_54;
    Real species_55;
    Real species_56;
    Real species_57;
    Real species_58;
    Real species_59;
    Real species_60;
    Real species_61;
    Real species_62;
    Real species_63;
    Real species_64;
    Real species_65;
    Real species_66;

initial equation
    species_0 = 9.7e-12;
    species_1 = 1e-05;
    species_2 = 0.0;
    species_3 = 0.0;
    species_4 = 0.0;
    species_5 = 0.0;
    species_6 = 0.0;
    species_7 = 0.0;
    species_8 = 0.0;
    species_9 = 0.0;
    species_10 = 0.0;
    species_11 = 0.0;
    species_12 = 0.0;
    species_13 = 0.0;
    species_14 = 0.0;
    species_15 = 0.0;
    species_16 = 0.0;
    species_17 = 2e-07;
    species_18 = 0.0;
    species_19 = 0.0;
    species_20 = 0.0;
    species_21 = 0.0;
    species_22 = 0.0;
    species_23 = 0.0;
    species_24 = 0.0;
    species_25 = 0.0;
    species_26 = 0.0;
    species_27 = 0.0;
    species_28 = 0.0;
    species_29 = 0.0;
    species_30 = 0.0;
    species_31 = 0.0;
    species_32 = 0.0;
    species_33 = 7e-05;
    species_34 = 0.0;
    species_35 = 0.0;
    species_36 = 0.0;
    species_37 = 0.0;
    species_38 = 0.0;
    species_39 = 0.0;
    species_40 = 0.0;
    species_41 = 0.0;
    species_42 = 0.0;
    species_43 = 0.0;
    species_44 = 0.0;
    species_45 = 0.0;
    species_46 = 0.0;
    species_47 = 0.0;
    species_48 = 0.0;
    species_49 = 0.0;
    species_50 = 1.6e-06;
    species_51 = 0.0;
    species_52 = 0.0;
    species_53 = 0.0;
    species_54 = 0.0;
    species_55 = 0.0;
    species_56 = 0.0;
    species_57 = 0.0;
    species_58 = 0.0;
    species_59 = 0.0;
    species_60 = 0.0;
    species_61 = 0.0;
    species_62 = 0.0;
    species_63 = 0.0;
    species_64 = 0.0;
    species_65 = 0.0;
    species_66 = 0.0;

equation
    parameter_1 = parameter_50 * parameter_0;
    parameter_20 = species_28 + species_29 + species_30 + species_31;
    parameter_2 = parameter_51 * parameter_0;
    parameter_3 = parameter_52 * parameter_0;
    parameter_4 = parameter_53 * parameter_0;
    parameter_5 = parameter_1 / parameter_11;
    parameter_6 = parameter_2 / parameter_12;
    parameter_7 = parameter_3 / parameter_13;
    parameter_8 = parameter_4 / parameter_14;
    parameter_10 = parameter_9 / parameter_49;
    parameter_19 = species_12 + species_13 + species_14 + species_15;
    parameter_21 = parameter_19 + parameter_20;
    parameter_22 = species_16 + species_32 + species_49 + species_66;
    parameter_23 = species_35 + species_36 + species_37 + species_38;
    parameter_25 = species_45 + species_46 + species_47 + species_48;
    parameter_24 = species_39 + species_40 + species_41 + species_42 + species_43 + species_44;
    parameter_26 = species_34 + parameter_23 + parameter_24 + parameter_25 + species_49;
    parameter_27 = parameter_26 + species_33;
    parameter_28 = parameter_26 / parameter_27;
    parameter_29 = species_52 + species_53 + species_54 + species_55;
    parameter_30 = species_56 + species_57 + species_58 + species_59 + species_60 + species_61;
    parameter_31 = species_62 + species_63 + species_64 + species_65;
    parameter_32 = species_51 + parameter_29 + parameter_30 + parameter_31 + species_66;
    parameter_35 = species_0 + species_2 + species_3 + species_4 + species_5 + species_6 + species_7 + species_8 + species_9 + species_10 + species_11 + species_12 + species_13 + species_14 + species_15 + species_16;
    parameter_33 = parameter_32 + species_50;
    parameter_34 = parameter_32 / parameter_33;
    parameter_37 = species_17 + species_18 + species_19 + species_20 + species_21 + species_22 + species_23 + species_24 + species_25 + species_26 + species_27 + species_28 + species_29 + species_30 + species_31 + species_32;
    parameter_36 = parameter_35 + parameter_26 + parameter_32;
    parameter_39 = parameter_25 + parameter_31 + parameter_21;
    parameter_38 = parameter_36 / (parameter_36 + parameter_37);
    parameter_40 = species_6 + species_7 + species_8 + species_9 + species_10 + species_11;
    parameter_41 = species_22 + species_23 + species_24 + species_25 + species_26 + species_27;
    parameter_42 = parameter_40 + parameter_41;
    parameter_43 = parameter_42 + parameter_24 + parameter_30;
    parameter_44 = species_2 + species_3 + species_4 + species_5 + species_18 + species_19 + species_20 + species_21;
    parameter_45 = parameter_44 + parameter_23 + parameter_29;
    parameter_46 = species_0 + species_17 + species_34 + species_51;
    parameter_47 = parameter_46 + parameter_45 + parameter_43 + parameter_39 + parameter_22;
    parameter_48 = (4 * parameter_22 + 3 * parameter_39 + 2 * parameter_43 + parameter_45) / parameter_47;
    parameter_54 = species_16 / (species_16 + species_32);
    parameter_55 = parameter_19 / parameter_21;
    parameter_56 = parameter_40 / parameter_42;
    parameter_57 = (species_2 + species_3 + species_4 + species_5) / (species_2 + species_3 + species_4 + species_5 + species_18 + species_19 + species_20 + species_21);
    parameter_58 = species_0 / (species_0 + species_17);
    parameter_59 = parameter_48 / 4;
    parameter_60 = parameter_59 / (1 - parameter_59);
    der(species_0) = (compartment_0 * parameter_1 * species_2) + (compartment_0 * parameter_2 * species_3) + (compartment_0 * parameter_3 * species_4) + (compartment_0 * parameter_4 * species_5) + (compartment_0 * parameter_10 * species_17) + (compartment_0 * parameter_16 * species_34) + (compartment_0 * parameter_18 * species_51) - (compartment_0 * parameter_0 * species_0 * species_1) - (compartment_0 * parameter_0 * species_0 * species_1) - (compartment_0 * parameter_0 * species_0 * species_1) - (compartment_0 * parameter_0 * species_0 * species_1) - (compartment_0 * parameter_9 * species_0) - (compartment_0 * parameter_15 * species_0 * species_33) - (compartment_0 * parameter_17 * species_0 * species_50);
    der(species_1) = (compartment_0 * parameter_1 * species_2) + (compartment_0 * parameter_2 * species_3) + (compartment_0 * parameter_3 * species_4) + (compartment_0 * parameter_4 * species_5) + (compartment_0 * parameter_2 * species_6) + (compartment_0 * parameter_3 * species_7) + (compartment_0 * parameter_4 * species_8) + (compartment_0 * parameter_1 * species_6) + (compartment_0 * parameter_3 * species_9) + (compartment_0 * parameter_4 * species_10) + (compartment_0 * parameter_1 * species_7) + (compartment_0 * parameter_2 * species_9) + (compartment_0 * parameter_4 * species_11) + (compartment_0 * parameter_1 * species_8) + (compartment_0 * parameter_2 * species_10) + (compartment_0 * parameter_3 * species_11) + (compartment_0 * parameter_1 * species_12) + (compartment_0 * parameter_2 * species_12) + (compartment_0 * parameter_3 * species_12) + (compartment_0 * parameter_1 * species_13) + (compartment_0 * parameter_2 * species_13) + (compartment_0 * parameter_4 * species_13) + (compartment_0 * parameter_1 * species_14) + (compartment_0 * parameter_3 * species_14) + (compartment_0 * parameter_4 * species_14) + (compartment_0 * parameter_2 * species_15) + (compartment_0 * parameter_3 * species_15) + (compartment_0 * parameter_4 * species_15) + (compartment_0 * parameter_4 * species_16) + (compartment_0 * parameter_3 * species_16) + (compartment_0 * parameter_2 * species_16) + (compartment_0 * parameter_1 * species_16) + (compartment_0 * parameter_5 * species_18) + (compartment_0 * parameter_6 * species_19) + (compartment_0 * parameter_7 * species_20) + (compartment_0 * parameter_8 * species_21) + (compartment_0 * parameter_5 * species_22) + (compartment_0 * parameter_6 * species_22) + (compartment_0 * parameter_5 * species_23) + (compartment_0 * parameter_7 * species_23) + (compartment_0 * parameter_5 * species_24) + (compartment_0 * parameter_8 * species_24) + (compartment_0 * parameter_6 * species_25) + (compartment_0 * parameter_7 * species_25) + (compartment_0 * parameter_6 * species_26) + (compartment_0 * parameter_8 * species_26) + (compartment_0 * parameter_7 * species_27) + (compartment_0 * parameter_8 * species_27) + (compartment_0 * parameter_6 * species_28) + (compartment_0 * parameter_5 * species_28) + (compartment_0 * parameter_8 * species_29) + (compartment_0 * parameter_6 * species_29) + (compartment_0 * parameter_5 * species_29) + (compartment_0 * parameter_8 * species_30) + (compartment_0 * parameter_7 * species_30) + (compartment_0 * parameter_5 * species_30) + (compartment_0 * parameter_8 * species_31) + (compartment_0 * parameter_7 * species_31) + (compartment_0 * parameter_6 * species_31) + (compartment_0 * parameter_8 * species_32) + (compartment_0 * parameter_7 * species_32) + (compartment_0 * parameter_6 * species_32) + (compartment_0 * parameter_5 * species_32) + (compartment_0 * parameter_1 * species_35) + (compartment_0 * parameter_3 * species_37) + (compartment_0 * parameter_4 * species_38) + (compartment_0 * parameter_1 * species_39) + (compartment_0 * parameter_2 * species_39) + (compartment_0 * parameter_1 * species_40) + (compartment_0 * parameter_3 * species_40) + (compartment_0 * parameter_1 * species_41) + (compartment_0 * parameter_4 * species_41) + (compartment_0 * parameter_2 * species_42) + (compartment_0 * parameter_3 * species_42) + (compartment_0 * parameter_2 * species_43) + (compartment_0 * parameter_4 * species_43) + (compartment_0 * parameter_3 * species_44) + (compartment_0 * parameter_4 * species_44) + (compartment_0 * parameter_3 * species_45) + (compartment_0 * parameter_2 * species_45) + (compartment_0 * parameter_1 * species_45) + (compartment_0 * parameter_4 * species_46) + (compartment_0 * parameter_2 * species_46) + (compartment_0 * parameter_1 * species_46) + (compartment_0 * parameter_4 * species_47) + (compartment_0 * parameter_3 * species_47) + (compartment_0 * parameter_1 * species_47) + (compartment_0 * parameter_4 * species_48) + (compartment_0 * parameter_3 * species_48) + (compartment_0 * parameter_2 * species_48) + (compartment_0 * parameter_1 * species_49) + (compartment_0 * parameter_2 * species_49) + (compartment_0 * parameter_3 * species_49) + (compartment_0 * parameter_4 * species_49) + (compartment_0 * parameter_1 * species_52) + (compartment_0 * parameter_2 * species_53) + (compartment_0 * parameter_3 * species_54) + (compartment_0 * parameter_4 * species_55) + (compartment_0 * parameter_1 * species_56) + (compartment_0 * parameter_2 * species_56) + (compartment_0 * parameter_1 * species_57) + (compartment_0 * parameter_3 * species_57) + (compartment_0 * parameter_1 * species_58) + (compartment_0 * parameter_4 * species_58) + (compartment_0 * parameter_2 * species_59) + (compartment_0 * parameter_3 * species_59) + (compartment_0 * parameter_2 * species_60) + (compartment_0 * parameter_4 * species_60) + (compartment_0 * parameter_3 * species_61) + (compartment_0 * parameter_4 * species_61) + (compartment_0 * parameter_1 * species_62) + (compartment_0 * parameter_2 * species_62) + (compartment_0 * parameter_3 * species_62) + (compartment_0 * parameter_1 * species_63) + (compartment_0 * parameter_2 * species_63) + (compartment_0 * parameter_4 * species_63) + (compartment_0 * parameter_1 * species_64) + (compartment_0 * parameter_3 * species_64) + (compartment_0 * parameter_4 * species_64) + (compartment_0 * parameter_2 * species_65) + (compartment_0 * parameter_3 * species_65) + (compartment_0 * parameter_4 * species_65) + (compartment_0 * parameter_1 * species_66) + (compartment_0 * parameter_2 * species_66) + (compartment_0 * parameter_3 * species_66) + (compartment_0 * parameter_4 * species_66) + (compartment_0 * parameter_2 * species_36) + (compartment_0 * parameter_7 * species_28) - (compartment_0 * parameter_0 * species_0 * species_1) - (compartment_0 * parameter_0 * species_0 * species_1) - (compartment_0 * parameter_0 * species_0 * species_1) - (compartment_0 * parameter_0 * species_0 * species_1) - (compartment_0 * parameter_0 * species_2 * species_1) - (compartment_0 * parameter_0 * species_2 * species_1) - (compartment_0 * parameter_0 * species_2 * species_1) - (compartment_0 * parameter_0 * species_3 * species_1) - (compartment_0 * parameter_0 * species_3 * species_1) - (compartment_0 * parameter_0 * species_3 * species_1) - (compartment_0 * parameter_0 * species_4 * species_1) - (compartment_0 * parameter_0 * species_4 * species_1) - (compartment_0 * parameter_0 * species_4 * species_1) - (compartment_0 * parameter_0 * species_5 * species_1) - (compartment_0 * parameter_0 * species_5 * species_1) - (compartment_0 * parameter_0 * species_5 * species_1) - (compartment_0 * parameter_0 * species_6 * species_1) - (compartment_0 * parameter_0 * species_6 * species_1) - (compartment_0 * parameter_0 * species_7 * species_1) - (compartment_0 * parameter_0 * species_7 * species_1) - (compartment_0 * parameter_0 * species_8 * species_1) - (compartment_0 * parameter_0 * species_8 * species_1) - (compartment_0 * parameter_0 * species_9 * species_1) - (compartment_0 * parameter_0 * species_9 * species_1) - (compartment_0 * parameter_0 * species_10 * species_1) - (compartment_0 * parameter_0 * species_10 * species_1) - (compartment_0 * parameter_0 * species_11 * species_1) - (compartment_0 * parameter_0 * species_11 * species_1) - (compartment_0 * parameter_0 * species_12 * species_1) - (compartment_0 * parameter_0 * species_13 * species_1) - (compartment_0 * parameter_0 * species_14 * species_1) - (compartment_0 * parameter_0 * species_15 * species_1) - (compartment_0 * parameter_0 * species_17 * species_1) - (compartment_0 * parameter_0 * species_17 * species_1) - (compartment_0 * parameter_0 * species_17 * species_1) - (compartment_0 * parameter_0 * species_17 * species_1) - (compartment_0 * parameter_0 * species_18 * species_1) - (compartment_0 * parameter_0 * species_18 * species_1) - (compartment_0 * parameter_0 * species_18 * species_1) - (compartment_0 * parameter_0 * species_19 * species_1) - (compartment_0 * parameter_0 * species_19 * species_1) - (compartment_0 * parameter_0 * species_19 * species_1) - (compartment_0 * parameter_0 * species_20 * species_1) - (compartment_0 * parameter_0 * species_20 * species_1) - (compartment_0 * parameter_0 * species_20 * species_1) - (compartment_0 * parameter_0 * species_21 * species_1) - (compartment_0 * parameter_0 * species_21 * species_1) - (compartment_0 * parameter_0 * species_21 * species_1) - (compartment_0 * parameter_0 * species_22 * species_1) - (compartment_0 * parameter_0 * species_22 * species_1) - (compartment_0 * parameter_0 * species_23 * species_1) - (compartment_0 * parameter_0 * species_23 * species_1) - (compartment_0 * parameter_0 * species_24 * species_1) - (compartment_0 * parameter_0 * species_24 * species_1) - (compartment_0 * parameter_0 * species_25 * species_1) - (compartment_0 * parameter_0 * species_25 * species_1) - (compartment_0 * parameter_0 * species_26 * species_1) - (compartment_0 * parameter_0 * species_26 * species_1) - (compartment_0 * parameter_0 * species_27 * species_1) - (compartment_0 * parameter_0 * species_27 * species_1) - (compartment_0 * parameter_0 * species_28 * species_1) - (compartment_0 * parameter_0 * species_29 * species_1) - (compartment_0 * parameter_0 * species_30 * species_1) - (compartment_0 * parameter_0 * species_31 * species_1) - (compartment_0 * parameter_0 * species_34 * species_1) - (compartment_0 * parameter_0 * species_34 * species_1) - (compartment_0 * parameter_0 * species_34 * species_1) - (compartment_0 * parameter_0 * species_34 * species_1) - (compartment_0 * parameter_0 * species_35 * species_1) - (compartment_0 * parameter_0 * species_35 * species_1) - (compartment_0 * parameter_0 * species_35 * species_1) - (compartment_0 * parameter_0 * species_36 * species_1) - (compartment_0 * parameter_0 * species_36 * species_1) - (compartment_0 * parameter_0 * species_36 * species_1) - (compartment_0 * parameter_0 * species_37 * species_1) - (compartment_0 * parameter_0 * species_37 * species_1) - (compartment_0 * parameter_0 * species_37 * species_1) - (compartment_0 * parameter_0 * species_38 * species_1) - (compartment_0 * parameter_0 * species_38 * species_1) - (compartment_0 * parameter_0 * species_38 * species_1) - (compartment_0 * parameter_0 * species_39 * species_1) - (compartment_0 * parameter_0 * species_39 * species_1) - (compartment_0 * parameter_0 * species_40 * species_1) - (compartment_0 * parameter_0 * species_40 * species_1) - (compartment_0 * parameter_0 * species_41 * species_1) - (compartment_0 * parameter_0 * species_41 * species_1) - (compartment_0 * parameter_0 * species_42 * species_1) - (compartment_0 * parameter_0 * species_42 * species_1) - (compartment_0 * parameter_0 * species_43 * species_1) - (compartment_0 * parameter_0 * species_43 * species_1) - (compartment_0 * parameter_0 * species_44 * species_1) - (compartment_0 * parameter_0 * species_44 * species_1) - (compartment_0 * parameter_0 * species_48 * species_1) - (compartment_0 * parameter_0 * species_47 * species_1) - (compartment_0 * parameter_0 * species_46 * species_1) - (compartment_0 * parameter_0 * species_45 * species_1) - (compartment_0 * parameter_0 * species_51 * species_1) - (compartment_0 * parameter_0 * species_51 * species_1) - (compartment_0 * parameter_0 * species_51 * species_1) - (compartment_0 * parameter_0 * species_51 * species_1) - (compartment_0 * parameter_0 * species_52 * species_1) - (compartment_0 * parameter_0 * species_52 * species_1) - (compartment_0 * parameter_0 * species_52 * species_1) - (compartment_0 * parameter_0 * species_53 * species_1) - (compartment_0 * parameter_0 * species_53 * species_1) - (compartment_0 * parameter_0 * species_53 * species_1) - (compartment_0 * parameter_0 * species_54 * species_1) - (compartment_0 * parameter_0 * species_54 * species_1) - (compartment_0 * parameter_0 * species_54 * species_1) - (compartment_0 * parameter_0 * species_55 * species_1) - (compartment_0 * parameter_0 * species_55 * species_1) - (compartment_0 * parameter_0 * species_55 * species_1) - (compartment_0 * parameter_0 * species_56 * species_1) - (compartment_0 * parameter_0 * species_56 * species_1) - (compartment_0 * parameter_0 * species_57 * species_1) - (compartment_0 * parameter_0 * species_57 * species_1) - (compartment_0 * parameter_0 * species_58 * species_1) - (compartment_0 * parameter_0 * species_58 * species_1) - (compartment_0 * parameter_0 * species_59 * species_1) - (compartment_0 * parameter_0 * species_59 * species_1) - (compartment_0 * parameter_0 * species_60 * species_1) - (compartment_0 * parameter_0 * species_60 * species_1) - (compartment_0 * parameter_0 * species_61 * species_1) - (compartment_0 * parameter_0 * species_61 * species_1) - (compartment_0 * parameter_0 * species_62 * species_1) - (compartment_0 * parameter_0 * species_63 * species_1) - (compartment_0 * parameter_0 * species_64 * species_1) - (compartment_0 * parameter_0 * species_65 * species_1);
    der(species_2) = (compartment_0 * parameter_0 * species_0 * species_1) + (compartment_0 * parameter_2 * species_6) + (compartment_0 * parameter_3 * species_7) + (compartment_0 * parameter_4 * species_8) + (compartment_0 * function_1(parameter_10, parameter_11, species_18)) + (compartment_0 * parameter_16 * species_35) + (compartment_0 * parameter_18 * species_52) - (compartment_0 * parameter_1 * species_2) - (compartment_0 * parameter_0 * species_2 * species_1) - (compartment_0 * parameter_0 * species_2 * species_1) - (compartment_0 * parameter_0 * species_2 * species_1) - (compartment_0 * transition1_R_T(parameter_9, parameter_10, species_2)) - (compartment_0 * parameter_15 * species_2 * species_33) - (compartment_0 * parameter_17 * species_2 * species_50);
    der(species_3) = (compartment_0 * parameter_0 * species_0 * species_1) + (compartment_0 * parameter_1 * species_6) + (compartment_0 * parameter_3 * species_9) + (compartment_0 * parameter_4 * species_10) + (compartment_0 * function_2(parameter_10, parameter_12, species_19)) + (compartment_0 * parameter_16 * species_36) + (compartment_0 * parameter_18 * species_53) - (compartment_0 * parameter_2 * species_3) - (compartment_0 * parameter_0 * species_3 * species_1) - (compartment_0 * parameter_0 * species_3 * species_1) - (compartment_0 * parameter_0 * species_3 * species_1) - (compartment_0 * transition1_R_T(parameter_9, parameter_12, species_3)) - (compartment_0 * parameter_15 * species_3 * species_33) - (compartment_0 * parameter_17 * species_3 * species_50);
    der(species_4) = (compartment_0 * parameter_0 * species_0 * species_1) + (compartment_0 * parameter_1 * species_7) + (compartment_0 * parameter_2 * species_9) + (compartment_0 * parameter_4 * species_11) + (compartment_0 * function_3(parameter_10, parameter_13, species_20)) + (compartment_0 * parameter_16 * species_37) + (compartment_0 * parameter_18 * species_54) - (compartment_0 * parameter_3 * species_4) - (compartment_0 * parameter_0 * species_4 * species_1) - (compartment_0 * parameter_0 * species_4 * species_1) - (compartment_0 * parameter_0 * species_4 * species_1) - (compartment_0 * transition1_R_T(parameter_9, parameter_13, species_4)) - (compartment_0 * parameter_15 * species_4 * species_33) - (compartment_0 * parameter_17 * species_4 * species_50);
    der(species_5) = (compartment_0 * parameter_0 * species_0 * species_1) + (compartment_0 * parameter_1 * species_8) + (compartment_0 * parameter_2 * species_10) + (compartment_0 * parameter_3 * species_11) + (compartment_0 * function_4(parameter_10, parameter_14, species_21)) + (compartment_0 * parameter_16 * species_38) + (compartment_0 * parameter_18 * species_55) - (compartment_0 * parameter_4 * species_5) - (compartment_0 * parameter_0 * species_5 * species_1) - (compartment_0 * parameter_0 * species_5 * species_1) - (compartment_0 * parameter_0 * species_5 * species_1) - (compartment_0 * transition1_R_T(parameter_9, parameter_14, species_5)) - (compartment_0 * parameter_15 * species_5 * species_33) - (compartment_0 * parameter_17 * species_5 * species_50);
    der(species_6) = (compartment_0 * parameter_0 * species_2 * species_1) + (compartment_0 * parameter_0 * species_3 * species_1) + (compartment_0 * parameter_3 * species_12) + (compartment_0 * parameter_4 * species_13) + (compartment_0 * function_11(parameter_10, parameter_11, parameter_12, species_22)) + (compartment_0 * parameter_16 * species_39) + (compartment_0 * parameter_18 * species_56) - (compartment_0 * parameter_2 * species_6) - (compartment_0 * parameter_1 * species_6) - (compartment_0 * parameter_0 * species_6 * species_1) - (compartment_0 * parameter_0 * species_6 * species_1) - (compartment_0 * function_5(parameter_11, parameter_12, parameter_9, species_6)) - (compartment_0 * parameter_15 * species_6 * species_33) - (compartment_0 * parameter_17 * species_6 * species_50);
    der(species_7) = (compartment_0 * parameter_0 * species_2 * species_1) + (compartment_0 * parameter_0 * species_4 * species_1) + (compartment_0 * parameter_2 * species_12) + (compartment_0 * parameter_4 * species_14) + (compartment_0 * function_12(parameter_10, parameter_11, parameter_13, species_23)) + (compartment_0 * parameter_16 * species_40) + (compartment_0 * parameter_18 * species_57) - (compartment_0 * parameter_3 * species_7) - (compartment_0 * parameter_1 * species_7) - (compartment_0 * parameter_0 * species_7 * species_1) - (compartment_0 * parameter_0 * species_7 * species_1) - (compartment_0 * function_6(parameter_11, parameter_13, parameter_9, species_7)) - (compartment_0 * parameter_15 * species_7 * species_33) - (compartment_0 * parameter_17 * species_7 * species_50);
    der(species_8) = (compartment_0 * parameter_0 * species_2 * species_1) + (compartment_0 * parameter_0 * species_5 * species_1) + (compartment_0 * parameter_2 * species_13) + (compartment_0 * parameter_3 * species_14) + (compartment_0 * function_13(parameter_10, parameter_11, parameter_14, species_24)) + (compartment_0 * parameter_16 * species_41) + (compartment_0 * parameter_18 * species_58) - (compartment_0 * parameter_4 * species_8) - (compartment_0 * parameter_1 * species_8) - (compartment_0 * parameter_0 * species_8 * species_1) - (compartment_0 * parameter_0 * species_8 * species_1) - (compartment_0 * function_7(parameter_11, parameter_14, parameter_9, species_8)) - (compartment_0 * parameter_15 * species_8 * species_33) - (compartment_0 * parameter_17 * species_8 * species_50);
    der(species_9) = (compartment_0 * parameter_0 * species_3 * species_1) + (compartment_0 * parameter_0 * species_4 * species_1) + (compartment_0 * parameter_1 * species_12) + (compartment_0 * parameter_4 * species_15) + (compartment_0 * function_14(parameter_10, parameter_12, parameter_13, species_25)) + (compartment_0 * parameter_16 * species_42) + (compartment_0 * parameter_18 * species_59) - (compartment_0 * parameter_3 * species_9) - (compartment_0 * parameter_2 * species_9) - (compartment_0 * parameter_0 * species_9 * species_1) - (compartment_0 * parameter_0 * species_9 * species_1) - (compartment_0 * function_8(parameter_12, parameter_13, parameter_9, species_9)) - (compartment_0 * parameter_15 * species_9 * species_33) - (compartment_0 * parameter_17 * species_9 * species_50);
    der(species_10) = (compartment_0 * parameter_0 * species_3 * species_1) + (compartment_0 * parameter_0 * species_5 * species_1) + (compartment_0 * parameter_1 * species_13) + (compartment_0 * parameter_3 * species_15) + (compartment_0 * function_15(parameter_10, parameter_12, parameter_14, species_26)) + (compartment_0 * parameter_16 * species_43) + (compartment_0 * parameter_18 * species_60) - (compartment_0 * parameter_4 * species_10) - (compartment_0 * parameter_2 * species_10) - (compartment_0 * parameter_0 * species_10 * species_1) - (compartment_0 * parameter_0 * species_10 * species_1) - (compartment_0 * function_9(parameter_12, parameter_14, parameter_9, species_10)) - (compartment_0 * parameter_15 * species_10 * species_33) - (compartment_0 * parameter_17 * species_10 * species_50);
    der(species_11) = (compartment_0 * parameter_0 * species_4 * species_1) + (compartment_0 * parameter_0 * species_5 * species_1) + (compartment_0 * parameter_1 * species_14) + (compartment_0 * parameter_2 * species_15) + (compartment_0 * function_16(parameter_10, parameter_13, parameter_14, species_27)) + (compartment_0 * parameter_16 * species_44) + (compartment_0 * parameter_18 * species_61) - (compartment_0 * parameter_4 * species_11) - (compartment_0 * parameter_3 * species_11) - (compartment_0 * parameter_0 * species_11 * species_1) - (compartment_0 * parameter_0 * species_11 * species_1) - (compartment_0 * function_10(parameter_13, parameter_14, parameter_9, species_11)) - (compartment_0 * parameter_15 * species_11 * species_33) - (compartment_0 * parameter_17 * species_11 * species_50);
    der(species_12) = (compartment_0 * parameter_0 * species_6 * species_1) + (compartment_0 * parameter_0 * species_7 * species_1) + (compartment_0 * parameter_0 * species_9 * species_1) + (compartment_0 * parameter_4 * species_16) + (compartment_0 * function_21(parameter_10, parameter_11, parameter_12, parameter_13, species_28)) + (compartment_0 * parameter_16 * species_45) + (compartment_0 * parameter_18 * species_62) - (compartment_0 * parameter_1 * species_12) - (compartment_0 * parameter_2 * species_12) - (compartment_0 * parameter_3 * species_12) - (compartment_0 * parameter_0 * species_12 * species_1) - (compartment_0 * function_17(parameter_11, parameter_12, parameter_13, parameter_9, species_12)) - (compartment_0 * parameter_15 * species_12 * species_33) - (compartment_0 * parameter_17 * species_12 * species_50);
    der(species_13) = (compartment_0 * parameter_0 * species_6 * species_1) + (compartment_0 * parameter_0 * species_8 * species_1) + (compartment_0 * parameter_0 * species_10 * species_1) + (compartment_0 * parameter_3 * species_16) + (compartment_0 * function_22(parameter_10, parameter_11, parameter_12, parameter_14, species_29)) + (compartment_0 * parameter_16 * species_46) + (compartment_0 * parameter_18 * species_63) - (compartment_0 * parameter_1 * species_13) - (compartment_0 * parameter_2 * species_13) - (compartment_0 * parameter_4 * species_13) - (compartment_0 * parameter_0 * species_13 * species_1) - (compartment_0 * function_18(parameter_11, parameter_12, parameter_14, parameter_9, species_13)) - (compartment_0 * parameter_15 * species_13 * species_33) - (compartment_0 * parameter_17 * species_13 * species_50);
    der(species_14) = (compartment_0 * parameter_0 * species_7 * species_1) + (compartment_0 * parameter_0 * species_8 * species_1) + (compartment_0 * parameter_0 * species_11 * species_1) + (compartment_0 * parameter_2 * species_16) + (compartment_0 * function_23(parameter_10, parameter_11, parameter_13, parameter_14, species_30)) + (compartment_0 * parameter_16 * species_47) + (compartment_0 * parameter_18 * species_64) - (compartment_0 * parameter_1 * species_14) - (compartment_0 * parameter_3 * species_14) - (compartment_0 * parameter_4 * species_14) - (compartment_0 * parameter_0 * species_14 * species_1) - (compartment_0 * function_19(parameter_11, parameter_13, parameter_14, parameter_9, species_14)) - (compartment_0 * parameter_15 * species_14 * species_33) - (compartment_0 * parameter_17 * species_14 * species_50);
    der(species_15) = (compartment_0 * parameter_0 * species_9 * species_1) + (compartment_0 * parameter_0 * species_10 * species_1) + (compartment_0 * parameter_0 * species_11 * species_1) + (compartment_0 * parameter_1 * species_16) + (compartment_0 * function_24(parameter_10, parameter_12, parameter_13, parameter_14, species_31)) + (compartment_0 * parameter_16 * species_48) + (compartment_0 * parameter_18 * species_65) - (compartment_0 * parameter_2 * species_15) - (compartment_0 * parameter_3 * species_15) - (compartment_0 * parameter_4 * species_15) - (compartment_0 * parameter_0 * species_15 * species_1) - (compartment_0 * function_20(parameter_12, parameter_13, parameter_14, parameter_9, species_15)) - (compartment_0 * parameter_15 * species_15 * species_33) - (compartment_0 * parameter_17 * species_15 * species_50);
    der(species_16) = (compartment_0 * parameter_0 * species_12 * species_1) + (compartment_0 * parameter_0 * species_13 * species_1) + (compartment_0 * parameter_0 * species_14 * species_1) + (compartment_0 * parameter_0 * species_15 * species_1) + (compartment_0 * function_26(parameter_10, parameter_11, parameter_12, parameter_13, parameter_14, species_32)) + (compartment_0 * parameter_16 * species_49) + (compartment_0 * parameter_18 * species_66) - (compartment_0 * parameter_4 * species_16) - (compartment_0 * parameter_3 * species_16) - (compartment_0 * parameter_2 * species_16) - (compartment_0 * parameter_1 * species_16) - (compartment_0 * function_25(parameter_11, parameter_12, parameter_13, parameter_14, parameter_9, species_16)) - (compartment_0 * parameter_15 * species_16 * species_33) - (compartment_0 * parameter_17 * species_16 * species_50);
    der(species_17) = (compartment_0 * parameter_5 * species_18) + (compartment_0 * parameter_6 * species_19) + (compartment_0 * parameter_7 * species_20) + (compartment_0 * parameter_8 * species_21) + (compartment_0 * parameter_9 * species_0) - (compartment_0 * parameter_0 * species_17 * species_1) - (compartment_0 * parameter_0 * species_17 * species_1) - (compartment_0 * parameter_0 * species_17 * species_1) - (compartment_0 * parameter_0 * species_17 * species_1) - (compartment_0 * parameter_10 * species_17);
    der(species_18) = (compartment_0 * parameter_0 * species_17 * species_1) + (compartment_0 * parameter_6 * species_22) + (compartment_0 * parameter_7 * species_23) + (compartment_0 * parameter_8 * species_24) + (compartment_0 * transition1_R_T(parameter_9, parameter_10, species_2)) - (compartment_0 * parameter_5 * species_18) - (compartment_0 * parameter_0 * species_18 * species_1) - (compartment_0 * parameter_0 * species_18 * species_1) - (compartment_0 * parameter_0 * species_18 * species_1) - (compartment_0 * function_1(parameter_10, parameter_11, species_18));
    der(species_19) = (compartment_0 * parameter_0 * species_17 * species_1) + (compartment_0 * parameter_5 * species_22) + (compartment_0 * parameter_7 * species_25) + (compartment_0 * parameter_8 * species_26) + (compartment_0 * transition1_R_T(parameter_9, parameter_12, species_3)) - (compartment_0 * parameter_6 * species_19) - (compartment_0 * parameter_0 * species_19 * species_1) - (compartment_0 * parameter_0 * species_19 * species_1) - (compartment_0 * parameter_0 * species_19 * species_1) - (compartment_0 * function_2(parameter_10, parameter_12, species_19));
    der(species_20) = (compartment_0 * parameter_0 * species_17 * species_1) + (compartment_0 * parameter_5 * species_23) + (compartment_0 * parameter_6 * species_25) + (compartment_0 * parameter_8 * species_27) + (compartment_0 * transition1_R_T(parameter_9, parameter_13, species_4)) - (compartment_0 * parameter_7 * species_20) - (compartment_0 * parameter_0 * species_20 * species_1) - (compartment_0 * parameter_0 * species_20 * species_1) - (compartment_0 * parameter_0 * species_20 * species_1) - (compartment_0 * function_3(parameter_10, parameter_13, species_20));
    der(species_21) = (compartment_0 * parameter_0 * species_17 * species_1) + (compartment_0 * parameter_5 * species_24) + (compartment_0 * parameter_6 * species_26) + (compartment_0 * parameter_7 * species_27) + (compartment_0 * transition1_R_T(parameter_9, parameter_14, species_5)) - (compartment_0 * parameter_8 * species_21) - (compartment_0 * parameter_0 * species_21 * species_1) - (compartment_0 * parameter_0 * species_21 * species_1) - (compartment_0 * parameter_0 * species_21 * species_1) - (compartment_0 * function_4(parameter_10, parameter_14, species_21));
    der(species_22) = (compartment_0 * parameter_0 * species_18 * species_1) + (compartment_0 * parameter_0 * species_19 * species_1) + (compartment_0 * parameter_8 * species_29) + (compartment_0 * function_5(parameter_11, parameter_12, parameter_9, species_6)) + (compartment_0 * parameter_7 * species_28) - (compartment_0 * parameter_5 * species_22) - (compartment_0 * parameter_6 * species_22) - (compartment_0 * parameter_0 * species_22 * species_1) - (compartment_0 * parameter_0 * species_22 * species_1) - (compartment_0 * function_11(parameter_10, parameter_11, parameter_12, species_22));
    der(species_23) = (compartment_0 * parameter_0 * species_18 * species_1) + (compartment_0 * parameter_0 * species_20 * species_1) + (compartment_0 * parameter_6 * species_28) + (compartment_0 * parameter_8 * species_30) + (compartment_0 * function_6(parameter_11, parameter_13, parameter_9, species_7)) - (compartment_0 * parameter_5 * species_23) - (compartment_0 * parameter_7 * species_23) - (compartment_0 * parameter_0 * species_23 * species_1) - (compartment_0 * parameter_0 * species_23 * species_1) - (compartment_0 * function_12(parameter_10, parameter_11, parameter_13, species_23));
    der(species_24) = (compartment_0 * parameter_0 * species_18 * species_1) + (compartment_0 * parameter_0 * species_21 * species_1) + (compartment_0 * parameter_6 * species_29) + (compartment_0 * parameter_7 * species_30) + (compartment_0 * function_7(parameter_11, parameter_14, parameter_9, species_8)) - (compartment_0 * parameter_5 * species_24) - (compartment_0 * parameter_8 * species_24) - (compartment_0 * parameter_0 * species_24 * species_1) - (compartment_0 * parameter_0 * species_24 * species_1) - (compartment_0 * function_13(parameter_10, parameter_11, parameter_14, species_24));
    der(species_25) = (compartment_0 * parameter_0 * species_19 * species_1) + (compartment_0 * parameter_0 * species_20 * species_1) + (compartment_0 * parameter_5 * species_28) + (compartment_0 * parameter_8 * species_31) + (compartment_0 * function_8(parameter_12, parameter_13, parameter_9, species_9)) - (compartment_0 * parameter_6 * species_25) - (compartment_0 * parameter_7 * species_25) - (compartment_0 * parameter_0 * species_25 * species_1) - (compartment_0 * parameter_0 * species_25 * species_1) - (compartment_0 * function_14(parameter_10, parameter_12, parameter_13, species_25));
    der(species_26) = (compartment_0 * parameter_0 * species_19 * species_1) + (compartment_0 * parameter_0 * species_21 * species_1) + (compartment_0 * parameter_5 * species_29) + (compartment_0 * parameter_7 * species_31) + (compartment_0 * function_9(parameter_12, parameter_14, parameter_9, species_10)) - (compartment_0 * parameter_6 * species_26) - (compartment_0 * parameter_8 * species_26) - (compartment_0 * parameter_0 * species_26 * species_1) - (compartment_0 * parameter_0 * species_26 * species_1) - (compartment_0 * function_15(parameter_10, parameter_12, parameter_14, species_26));
    der(species_27) = (compartment_0 * parameter_0 * species_20 * species_1) + (compartment_0 * parameter_0 * species_21 * species_1) + (compartment_0 * parameter_5 * species_30) + (compartment_0 * parameter_6 * species_31) + (compartment_0 * function_10(parameter_13, parameter_14, parameter_9, species_11)) - (compartment_0 * parameter_7 * species_27) - (compartment_0 * parameter_8 * species_27) - (compartment_0 * parameter_0 * species_27 * species_1) - (compartment_0 * parameter_0 * species_27 * species_1) - (compartment_0 * function_16(parameter_10, parameter_13, parameter_14, species_27));
    der(species_28) = (compartment_0 * parameter_0 * species_22 * species_1) + (compartment_0 * parameter_0 * species_23 * species_1) + (compartment_0 * parameter_0 * species_25 * species_1) + (compartment_0 * parameter_8 * species_32) + (compartment_0 * function_17(parameter_11, parameter_12, parameter_13, parameter_9, species_12)) - (compartment_0 * parameter_6 * species_28) - (compartment_0 * parameter_5 * species_28) - (compartment_0 * parameter_0 * species_28 * species_1) - (compartment_0 * function_21(parameter_10, parameter_11, parameter_12, parameter_13, species_28)) - (compartment_0 * parameter_7 * species_28);
    der(species_29) = (compartment_0 * parameter_0 * species_22 * species_1) + (compartment_0 * parameter_0 * species_24 * species_1) + (compartment_0 * parameter_0 * species_26 * species_1) + (compartment_0 * parameter_7 * species_32) + (compartment_0 * function_18(parameter_11, parameter_12, parameter_14, parameter_9, species_13)) - (compartment_0 * parameter_8 * species_29) - (compartment_0 * parameter_6 * species_29) - (compartment_0 * parameter_5 * species_29) - (compartment_0 * parameter_0 * species_29 * species_1) - (compartment_0 * function_22(parameter_10, parameter_11, parameter_12, parameter_14, species_29));
    der(species_30) = (compartment_0 * parameter_0 * species_23 * species_1) + (compartment_0 * parameter_0 * species_24 * species_1) + (compartment_0 * parameter_0 * species_27 * species_1) + (compartment_0 * parameter_6 * species_32) + (compartment_0 * function_19(parameter_11, parameter_13, parameter_14, parameter_9, species_14)) - (compartment_0 * parameter_8 * species_30) - (compartment_0 * parameter_7 * species_30) - (compartment_0 * parameter_5 * species_30) - (compartment_0 * parameter_0 * species_30 * species_1) - (compartment_0 * function_23(parameter_10, parameter_11, parameter_13, parameter_14, species_30));
    der(species_31) = (compartment_0 * parameter_0 * species_25 * species_1) + (compartment_0 * parameter_0 * species_26 * species_1) + (compartment_0 * parameter_0 * species_27 * species_1) + (compartment_0 * parameter_5 * species_32) + (compartment_0 * function_20(parameter_12, parameter_13, parameter_14, parameter_9, species_15)) - (compartment_0 * parameter_8 * species_31) - (compartment_0 * parameter_7 * species_31) - (compartment_0 * parameter_6 * species_31) - (compartment_0 * parameter_0 * species_31 * species_1) - (compartment_0 * function_24(parameter_10, parameter_12, parameter_13, parameter_14, species_31));
    der(species_32) = (compartment_0 * parameter_0 * species_28 * species_1) + (compartment_0 * parameter_0 * species_29 * species_1) + (compartment_0 * parameter_0 * species_30 * species_1) + (compartment_0 * parameter_0 * species_31 * species_1) + (compartment_0 * function_25(parameter_11, parameter_12, parameter_13, parameter_14, parameter_9, species_16)) - (compartment_0 * parameter_8 * species_32) - (compartment_0 * parameter_7 * species_32) - (compartment_0 * parameter_6 * species_32) - (compartment_0 * parameter_5 * species_32) - (compartment_0 * function_26(parameter_10, parameter_11, parameter_12, parameter_13, parameter_14, species_32));
    der(species_33) = (compartment_0 * parameter_16 * species_34) + (compartment_0 * parameter_16 * species_35) + (compartment_0 * parameter_16 * species_36) + (compartment_0 * parameter_16 * species_37) + (compartment_0 * parameter_16 * species_38) + (compartment_0 * parameter_16 * species_39) + (compartment_0 * parameter_16 * species_40) + (compartment_0 * parameter_16 * species_41) + (compartment_0 * parameter_16 * species_42) + (compartment_0 * parameter_16 * species_43) + (compartment_0 * parameter_16 * species_44) + (compartment_0 * parameter_16 * species_45) + (compartment_0 * parameter_16 * species_46) + (compartment_0 * parameter_16 * species_47) + (compartment_0 * parameter_16 * species_48) + (compartment_0 * parameter_16 * species_49) - (compartment_0 * parameter_15 * species_0 * species_33) - (compartment_0 * parameter_15 * species_2 * species_33) - (compartment_0 * parameter_15 * species_3 * species_33) - (compartment_0 * parameter_15 * species_4 * species_33) - (compartment_0 * parameter_15 * species_5 * species_33) - (compartment_0 * parameter_15 * species_6 * species_33) - (compartment_0 * parameter_15 * species_7 * species_33) - (compartment_0 * parameter_15 * species_8 * species_33) - (compartment_0 * parameter_15 * species_9 * species_33) - (compartment_0 * parameter_15 * species_10 * species_33) - (compartment_0 * parameter_15 * species_11 * species_33) - (compartment_0 * parameter_15 * species_12 * species_33) - (compartment_0 * parameter_15 * species_13 * species_33) - (compartment_0 * parameter_15 * species_14 * species_33) - (compartment_0 * parameter_15 * species_15 * species_33) - (compartment_0 * parameter_15 * species_16 * species_33);
    der(species_34) = (compartment_0 * parameter_15 * species_0 * species_33) + (compartment_0 * parameter_1 * species_35) + (compartment_0 * parameter_3 * species_37) + (compartment_0 * parameter_4 * species_38) + (compartment_0 * parameter_2 * species_36) - (compartment_0 * parameter_16 * species_34) - (compartment_0 * parameter_0 * species_34 * species_1) - (compartment_0 * parameter_0 * species_34 * species_1) - (compartment_0 * parameter_0 * species_34 * species_1) - (compartment_0 * parameter_0 * species_34 * species_1);
    der(species_35) = (compartment_0 * parameter_15 * species_2 * species_33) + (compartment_0 * parameter_0 * species_34 * species_1) + (compartment_0 * parameter_2 * species_39) + (compartment_0 * parameter_3 * species_40) + (compartment_0 * parameter_4 * species_41) - (compartment_0 * parameter_16 * species_35) - (compartment_0 * parameter_1 * species_35) - (compartment_0 * parameter_0 * species_35 * species_1) - (compartment_0 * parameter_0 * species_35 * species_1) - (compartment_0 * parameter_0 * species_35 * species_1);
    der(species_36) = (compartment_0 * parameter_15 * species_3 * species_33) + (compartment_0 * parameter_0 * species_34 * species_1) + (compartment_0 * parameter_1 * species_39) + (compartment_0 * parameter_3 * species_42) + (compartment_0 * parameter_4 * species_43) - (compartment_0 * parameter_16 * species_36) - (compartment_0 * parameter_0 * species_36 * species_1) - (compartment_0 * parameter_0 * species_36 * species_1) - (compartment_0 * parameter_0 * species_36 * species_1) - (compartment_0 * parameter_2 * species_36);
    der(species_37) = (compartment_0 * parameter_15 * species_4 * species_33) + (compartment_0 * parameter_0 * species_34 * species_1) + (compartment_0 * parameter_1 * species_40) + (compartment_0 * parameter_2 * species_42) + (compartment_0 * parameter_4 * species_44) - (compartment_0 * parameter_16 * species_37) - (compartment_0 * parameter_3 * species_37) - (compartment_0 * parameter_0 * species_37 * species_1) - (compartment_0 * parameter_0 * species_37 * species_1) - (compartment_0 * parameter_0 * species_37 * species_1);
    der(species_38) = (compartment_0 * parameter_15 * species_5 * species_33) + (compartment_0 * parameter_0 * species_34 * species_1) + (compartment_0 * parameter_1 * species_41) + (compartment_0 * parameter_2 * species_43) + (compartment_0 * parameter_3 * species_44) - (compartment_0 * parameter_16 * species_38) - (compartment_0 * parameter_4 * species_38) - (compartment_0 * parameter_0 * species_38 * species_1) - (compartment_0 * parameter_0 * species_38 * species_1) - (compartment_0 * parameter_0 * species_38 * species_1);
    der(species_39) = (compartment_0 * parameter_15 * species_6 * species_33) + (compartment_0 * parameter_0 * species_35 * species_1) + (compartment_0 * parameter_0 * species_36 * species_1) + (compartment_0 * parameter_3 * species_45) + (compartment_0 * parameter_4 * species_46) - (compartment_0 * parameter_16 * species_39) - (compartment_0 * parameter_1 * species_39) - (compartment_0 * parameter_2 * species_39) - (compartment_0 * parameter_0 * species_39 * species_1) - (compartment_0 * parameter_0 * species_39 * species_1);
    der(species_40) = (compartment_0 * parameter_15 * species_7 * species_33) + (compartment_0 * parameter_0 * species_35 * species_1) + (compartment_0 * parameter_0 * species_37 * species_1) + (compartment_0 * parameter_2 * species_45) + (compartment_0 * parameter_4 * species_47) - (compartment_0 * parameter_16 * species_40) - (compartment_0 * parameter_1 * species_40) - (compartment_0 * parameter_3 * species_40) - (compartment_0 * parameter_0 * species_40 * species_1) - (compartment_0 * parameter_0 * species_40 * species_1);
    der(species_41) = (compartment_0 * parameter_15 * species_8 * species_33) + (compartment_0 * parameter_0 * species_35 * species_1) + (compartment_0 * parameter_0 * species_38 * species_1) + (compartment_0 * parameter_2 * species_46) + (compartment_0 * parameter_3 * species_47) - (compartment_0 * parameter_16 * species_41) - (compartment_0 * parameter_1 * species_41) - (compartment_0 * parameter_4 * species_41) - (compartment_0 * parameter_0 * species_41 * species_1) - (compartment_0 * parameter_0 * species_41 * species_1);
    der(species_42) = (compartment_0 * parameter_15 * species_9 * species_33) + (compartment_0 * parameter_0 * species_36 * species_1) + (compartment_0 * parameter_0 * species_37 * species_1) + (compartment_0 * parameter_1 * species_45) + (compartment_0 * parameter_4 * species_48) - (compartment_0 * parameter_16 * species_42) - (compartment_0 * parameter_2 * species_42) - (compartment_0 * parameter_3 * species_42) - (compartment_0 * parameter_0 * species_42 * species_1) - (compartment_0 * parameter_0 * species_42 * species_1);
    der(species_43) = (compartment_0 * parameter_15 * species_10 * species_33) + (compartment_0 * parameter_0 * species_36 * species_1) + (compartment_0 * parameter_0 * species_38 * species_1) + (compartment_0 * parameter_1 * species_46) + (compartment_0 * parameter_3 * species_48) - (compartment_0 * parameter_16 * species_43) - (compartment_0 * parameter_2 * species_43) - (compartment_0 * parameter_4 * species_43) - (compartment_0 * parameter_0 * species_43 * species_1) - (compartment_0 * parameter_0 * species_43 * species_1);
    der(species_44) = (compartment_0 * parameter_15 * species_11 * species_33) + (compartment_0 * parameter_0 * species_37 * species_1) + (compartment_0 * parameter_0 * species_38 * species_1) + (compartment_0 * parameter_1 * species_47) + (compartment_0 * parameter_2 * species_48) - (compartment_0 * parameter_16 * species_44) - (compartment_0 * parameter_3 * species_44) - (compartment_0 * parameter_4 * species_44) - (compartment_0 * parameter_0 * species_44 * species_1) - (compartment_0 * parameter_0 * species_44 * species_1);
    der(species_45) = (compartment_0 * parameter_15 * species_12 * species_33) + (compartment_0 * parameter_0 * species_39 * species_1) + (compartment_0 * parameter_0 * species_40 * species_1) + (compartment_0 * parameter_0 * species_42 * species_1) + (compartment_0 * parameter_4 * species_49) - (compartment_0 * parameter_16 * species_45) - (compartment_0 * parameter_3 * species_45) - (compartment_0 * parameter_2 * species_45) - (compartment_0 * parameter_1 * species_45) - (compartment_0 * parameter_0 * species_45 * species_1);
    der(species_46) = (compartment_0 * parameter_15 * species_13 * species_33) + (compartment_0 * parameter_0 * species_39 * species_1) + (compartment_0 * parameter_0 * species_41 * species_1) + (compartment_0 * parameter_0 * species_43 * species_1) + (compartment_0 * parameter_3 * species_49) - (compartment_0 * parameter_16 * species_46) - (compartment_0 * parameter_4 * species_46) - (compartment_0 * parameter_2 * species_46) - (compartment_0 * parameter_1 * species_46) - (compartment_0 * parameter_0 * species_46 * species_1);
    der(species_47) = (compartment_0 * parameter_15 * species_14 * species_33) + (compartment_0 * parameter_0 * species_40 * species_1) + (compartment_0 * parameter_0 * species_41 * species_1) + (compartment_0 * parameter_0 * species_44 * species_1) + (compartment_0 * parameter_2 * species_49) - (compartment_0 * parameter_16 * species_47) - (compartment_0 * parameter_4 * species_47) - (compartment_0 * parameter_3 * species_47) - (compartment_0 * parameter_1 * species_47) - (compartment_0 * parameter_0 * species_47 * species_1);
    der(species_48) = (compartment_0 * parameter_15 * species_15 * species_33) + (compartment_0 * parameter_0 * species_42 * species_1) + (compartment_0 * parameter_0 * species_43 * species_1) + (compartment_0 * parameter_0 * species_44 * species_1) + (compartment_0 * parameter_1 * species_49) - (compartment_0 * parameter_16 * species_48) - (compartment_0 * parameter_4 * species_48) - (compartment_0 * parameter_3 * species_48) - (compartment_0 * parameter_2 * species_48) - (compartment_0 * parameter_0 * species_48 * species_1);
    der(species_49) = (compartment_0 * parameter_15 * species_16 * species_33) + (compartment_0 * parameter_0 * species_48 * species_1) + (compartment_0 * parameter_0 * species_47 * species_1) + (compartment_0 * parameter_0 * species_46 * species_1) + (compartment_0 * parameter_0 * species_45 * species_1) - (compartment_0 * parameter_16 * species_49) - (compartment_0 * parameter_1 * species_49) - (compartment_0 * parameter_2 * species_49) - (compartment_0 * parameter_3 * species_49) - (compartment_0 * parameter_4 * species_49);
    der(species_50) = (compartment_0 * parameter_18 * species_51) + (compartment_0 * parameter_18 * species_52) + (compartment_0 * parameter_18 * species_53) + (compartment_0 * parameter_18 * species_54) + (compartment_0 * parameter_18 * species_55) + (compartment_0 * parameter_18 * species_56) + (compartment_0 * parameter_18 * species_57) + (compartment_0 * parameter_18 * species_58) + (compartment_0 * parameter_18 * species_59) + (compartment_0 * parameter_18 * species_60) + (compartment_0 * parameter_18 * species_61) + (compartment_0 * parameter_18 * species_62) + (compartment_0 * parameter_18 * species_63) + (compartment_0 * parameter_18 * species_64) + (compartment_0 * parameter_18 * species_65) + (compartment_0 * parameter_18 * species_66) - (compartment_0 * parameter_17 * species_0 * species_50) - (compartment_0 * parameter_17 * species_2 * species_50) - (compartment_0 * parameter_17 * species_3 * species_50) - (compartment_0 * parameter_17 * species_4 * species_50) - (compartment_0 * parameter_17 * species_5 * species_50) - (compartment_0 * parameter_17 * species_6 * species_50) - (compartment_0 * parameter_17 * species_7 * species_50) - (compartment_0 * parameter_17 * species_8 * species_50) - (compartment_0 * parameter_17 * species_9 * species_50) - (compartment_0 * parameter_17 * species_10 * species_50) - (compartment_0 * parameter_17 * species_11 * species_50) - (compartment_0 * parameter_17 * species_12 * species_50) - (compartment_0 * parameter_17 * species_13 * species_50) - (compartment_0 * parameter_17 * species_14 * species_50) - (compartment_0 * parameter_17 * species_15 * species_50) - (compartment_0 * parameter_17 * species_16 * species_50);
    der(species_51) = (compartment_0 * parameter_17 * species_0 * species_50) + (compartment_0 * parameter_1 * species_52) + (compartment_0 * parameter_2 * species_53) + (compartment_0 * parameter_3 * species_54) + (compartment_0 * parameter_4 * species_55) - (compartment_0 * parameter_18 * species_51) - (compartment_0 * parameter_0 * species_51 * species_1) - (compartment_0 * parameter_0 * species_51 * species_1) - (compartment_0 * parameter_0 * species_51 * species_1) - (compartment_0 * parameter_0 * species_51 * species_1);
    der(species_52) = (compartment_0 * parameter_17 * species_2 * species_50) + (compartment_0 * parameter_0 * species_51 * species_1) + (compartment_0 * parameter_2 * species_56) + (compartment_0 * parameter_3 * species_57) + (compartment_0 * parameter_4 * species_58) - (compartment_0 * parameter_18 * species_52) - (compartment_0 * parameter_1 * species_52) - (compartment_0 * parameter_0 * species_52 * species_1) - (compartment_0 * parameter_0 * species_52 * species_1) - (compartment_0 * parameter_0 * species_52 * species_1);
    der(species_53) = (compartment_0 * parameter_17 * species_3 * species_50) + (compartment_0 * parameter_0 * species_51 * species_1) + (compartment_0 * parameter_1 * species_56) + (compartment_0 * parameter_3 * species_59) + (compartment_0 * parameter_4 * species_60) - (compartment_0 * parameter_18 * species_53) - (compartment_0 * parameter_2 * species_53) - (compartment_0 * parameter_0 * species_53 * species_1) - (compartment_0 * parameter_0 * species_53 * species_1) - (compartment_0 * parameter_0 * species_53 * species_1);
    der(species_54) = (compartment_0 * parameter_17 * species_4 * species_50) + (compartment_0 * parameter_0 * species_51 * species_1) + (compartment_0 * parameter_1 * species_57) + (compartment_0 * parameter_2 * species_59) + (compartment_0 * parameter_4 * species_61) - (compartment_0 * parameter_18 * species_54) - (compartment_0 * parameter_3 * species_54) - (compartment_0 * parameter_0 * species_54 * species_1) - (compartment_0 * parameter_0 * species_54 * species_1) - (compartment_0 * parameter_0 * species_54 * species_1);
    der(species_55) = (compartment_0 * parameter_17 * species_5 * species_50) + (compartment_0 * parameter_0 * species_51 * species_1) + (compartment_0 * parameter_1 * species_58) + (compartment_0 * parameter_2 * species_60) + (compartment_0 * parameter_3 * species_61) - (compartment_0 * parameter_18 * species_55) - (compartment_0 * parameter_4 * species_55) - (compartment_0 * parameter_0 * species_55 * species_1) - (compartment_0 * parameter_0 * species_55 * species_1) - (compartment_0 * parameter_0 * species_55 * species_1);
    der(species_56) = (compartment_0 * parameter_17 * species_6 * species_50) + (compartment_0 * parameter_0 * species_52 * species_1) + (compartment_0 * parameter_0 * species_53 * species_1) + (compartment_0 * parameter_3 * species_62) + (compartment_0 * parameter_4 * species_63) - (compartment_0 * parameter_18 * species_56) - (compartment_0 * parameter_1 * species_56) - (compartment_0 * parameter_2 * species_56) - (compartment_0 * parameter_0 * species_56 * species_1) - (compartment_0 * parameter_0 * species_56 * species_1);
    der(species_57) = (compartment_0 * parameter_17 * species_7 * species_50) + (compartment_0 * parameter_0 * species_52 * species_1) + (compartment_0 * parameter_0 * species_54 * species_1) + (compartment_0 * parameter_2 * species_62) + (compartment_0 * parameter_4 * species_64) - (compartment_0 * parameter_18 * species_57) - (compartment_0 * parameter_1 * species_57) - (compartment_0 * parameter_3 * species_57) - (compartment_0 * parameter_0 * species_57 * species_1) - (compartment_0 * parameter_0 * species_57 * species_1);
    der(species_58) = (compartment_0 * parameter_17 * species_8 * species_50) + (compartment_0 * parameter_0 * species_52 * species_1) + (compartment_0 * parameter_0 * species_55 * species_1) + (compartment_0 * parameter_2 * species_63) + (compartment_0 * parameter_3 * species_64) - (compartment_0 * parameter_18 * species_58) - (compartment_0 * parameter_1 * species_58) - (compartment_0 * parameter_4 * species_58) - (compartment_0 * parameter_0 * species_58 * species_1) - (compartment_0 * parameter_0 * species_58 * species_1);
    der(species_59) = (compartment_0 * parameter_17 * species_9 * species_50) + (compartment_0 * parameter_0 * species_53 * species_1) + (compartment_0 * parameter_0 * species_54 * species_1) + (compartment_0 * parameter_1 * species_62) + (compartment_0 * parameter_4 * species_65) - (compartment_0 * parameter_18 * species_59) - (compartment_0 * parameter_2 * species_59) - (compartment_0 * parameter_3 * species_59) - (compartment_0 * parameter_0 * species_59 * species_1) - (compartment_0 * parameter_0 * species_59 * species_1);
    der(species_60) = (compartment_0 * parameter_17 * species_10 * species_50) + (compartment_0 * parameter_0 * species_53 * species_1) + (compartment_0 * parameter_0 * species_55 * species_1) + (compartment_0 * parameter_1 * species_63) + (compartment_0 * parameter_3 * species_65) - (compartment_0 * parameter_18 * species_60) - (compartment_0 * parameter_2 * species_60) - (compartment_0 * parameter_4 * species_60) - (compartment_0 * parameter_0 * species_60 * species_1) - (compartment_0 * parameter_0 * species_60 * species_1);
    der(species_61) = (compartment_0 * parameter_17 * species_11 * species_50) + (compartment_0 * parameter_0 * species_54 * species_1) + (compartment_0 * parameter_0 * species_55 * species_1) + (compartment_0 * parameter_1 * species_64) + (compartment_0 * parameter_2 * species_65) - (compartment_0 * parameter_18 * species_61) - (compartment_0 * parameter_3 * species_61) - (compartment_0 * parameter_4 * species_61) - (compartment_0 * parameter_0 * species_61 * species_1) - (compartment_0 * parameter_0 * species_61 * species_1);
    der(species_62) = (compartment_0 * parameter_17 * species_12 * species_50) + (compartment_0 * parameter_0 * species_56 * species_1) + (compartment_0 * parameter_0 * species_57 * species_1) + (compartment_0 * parameter_0 * species_59 * species_1) + (compartment_0 * parameter_4 * species_66) - (compartment_0 * parameter_18 * species_62) - (compartment_0 * parameter_1 * species_62) - (compartment_0 * parameter_2 * species_62) - (compartment_0 * parameter_3 * species_62) - (compartment_0 * parameter_0 * species_62 * species_1);
    der(species_63) = (compartment_0 * parameter_17 * species_13 * species_50) + (compartment_0 * parameter_0 * species_56 * species_1) + (compartment_0 * parameter_0 * species_58 * species_1) + (compartment_0 * parameter_0 * species_60 * species_1) + (compartment_0 * parameter_3 * species_66) - (compartment_0 * parameter_18 * species_63) - (compartment_0 * parameter_1 * species_63) - (compartment_0 * parameter_2 * species_63) - (compartment_0 * parameter_4 * species_63) - (compartment_0 * parameter_0 * species_63 * species_1);
    der(species_64) = (compartment_0 * parameter_17 * species_14 * species_50) + (compartment_0 * parameter_0 * species_57 * species_1) + (compartment_0 * parameter_0 * species_58 * species_1) + (compartment_0 * parameter_0 * species_61 * species_1) + (compartment_0 * parameter_2 * species_66) - (compartment_0 * parameter_18 * species_64) - (compartment_0 * parameter_1 * species_64) - (compartment_0 * parameter_3 * species_64) - (compartment_0 * parameter_4 * species_64) - (compartment_0 * parameter_0 * species_64 * species_1);
    der(species_65) = (compartment_0 * parameter_17 * species_15 * species_50) + (compartment_0 * parameter_0 * species_59 * species_1) + (compartment_0 * parameter_0 * species_60 * species_1) + (compartment_0 * parameter_0 * species_61 * species_1) + (compartment_0 * parameter_1 * species_66) - (compartment_0 * parameter_18 * species_65) - (compartment_0 * parameter_2 * species_65) - (compartment_0 * parameter_3 * species_65) - (compartment_0 * parameter_4 * species_65) - (compartment_0 * parameter_0 * species_65 * species_1);
    der(species_66) = (compartment_0 * parameter_17 * species_16 * species_50) + (compartment_0 * parameter_0 * species_62 * species_1) + (compartment_0 * parameter_0 * species_63 * species_1) + (compartment_0 * parameter_0 * species_64 * species_1) + (compartment_0 * parameter_0 * species_65 * species_1) - (compartment_0 * parameter_18 * species_66) - (compartment_0 * parameter_1 * species_66) - (compartment_0 * parameter_2 * species_66) - (compartment_0 * parameter_3 * species_66) - (compartment_0 * parameter_4 * species_66);




end BIOMD183;
