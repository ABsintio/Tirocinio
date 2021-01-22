
model BIOMD480 "Carbo2013 - Mucosal Immune Response during H.pylori Infection"

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


    function function_13
        	input Real v;
        output Real y;
    algorithm
        y :=  v;
    end function_13;


    function function_1
        	input Real Vf;
	input Real r1;
	input Real A1;
	input Real n1;
	input Real A2;
	input Real n2;
	input Real A3;
	input Real n3;
        output Real y;
    algorithm
        y :=  Vf * r1 * (n1 * A1 + n2 * A2 + n3 * A3);
    end function_1;


    function function_3
        	input Real substrate;
	input Real a1;
	input Real k1;
        output Real y;
    algorithm
        y :=  substrate * a1 * k1;
    end function_3;


    function function_8
        	input Real substrate;
	input Real k1;
	input Real a1;
	input Real k2;
	input Real a2;
        output Real y;
    algorithm
        y :=  substrate * (k1 * a1 + k2 * a2);
    end function_8;


    function function_10
        	input Real c;
	input Real k;
	input Real A;
	input Real n;
	input Real kA;
	input Real B;
	input Real kB;
	input Real C;
	input Real kC;
        output Real y;
    algorithm
        y :=  c + k * (A^n / (A^n + kA^n) + B^n / (B^n + kB^n) + C^n / (C^n + kC^n));
    end function_10;


    function function_7
        	input Real k;
	input Real A;
	input Real n;
	input Real kA;
	input Real c;
        output Real y;
    algorithm
        y :=  c + k * (A^n / (A^n + kA^n));
    end function_7;


    function function_2
        	input Real k;
	input Real substrate;
	input Real A;
	input Real n;
	input Real kA;
	input Real B;
	input Real kB;
	input Real C;
	input Real kC;
	input Real D;
	input Real kD;
	input Real E;
	input Real kE;
        output Real y;
    algorithm
        y :=  k * substrate * (A^n / (A^n + kA^n) + B^n / (B^n + kB^n) + C^n / (C^n + kC^n) + D^n / (D^n + kD^n) + E^n / (E^n + kE^n));
    end function_2;


    function function_4
        	input Real k;
	input Real substrate;
	input Real A;
	input Real n;
	input Real kA;
	input Real B;
	input Real kB;
	input Real C;
	input Real kC;
        output Real y;
    algorithm
        y :=  k * substrate * (A^n / (A^n + kA^n) + B^n / (B^n + kB^n) + C^n / (C^n + kC^n));
    end function_4;


    function function_11
        	input Real k;
	input Real substrate;
	input Real A;
	input Real n;
	input Real kA;
	input Real B;
	input Real kB;
        output Real y;
    algorithm
        y :=  k * substrate * (A^n / (A^n + kA^n) + B^n / (B^n + kB^n));
    end function_11;


    function function_5
        	input Real k;
	input Real sub;
	input Real c;
        output Real y;
    algorithm
        y :=  k * sub / (c + sub);
    end function_5;


    function function_12
        	input Real V;
	input Real s;
	input Real k;
	input Real P;
        output Real y;
    algorithm
        y :=  V * (s - k * P);
    end function_12;


    function function_9
        	input Real substrate;
	input Real k;
	input Real k1;
	input Real a1;
	input Real k2;
	input Real a2;
        output Real y;
    algorithm
        y :=  substrate * k * (k1 * a1 + k2 * a2);
    end function_9;


    function function_6
        	input Real substrate;
	input Real k1;
	input Real a1;
	input Real k2;
	input Real a2;
	input Real k3;
	input Real a3;
        output Real y;
    algorithm
        y :=  substrate * (k1 * a1 + k2 * a2 + k3 * a3);
    end function_6;


    parameter Real parameter_1 = 0.5;
    parameter Real parameter_3 = 1.0;
    parameter Real parameter_4 = 0.3;
    parameter Real parameter_7 = 1e-06;
    parameter Real parameter_8 = 0.5;
    parameter Real parameter_9 = 1.0;
    parameter Real parameter_10 = 1e-06;
    parameter Real parameter_12 = 3e-07;
    parameter Real parameter_13 = 0.143;
    parameter Real parameter_14 = 0.1;
    parameter Real parameter_19 = 1.0;
    parameter Real parameter_20 = 2.0;
    parameter Real parameter_21 = 1.0;
    parameter Real parameter_31 = 1000.0;
    parameter Real parameter_32 = 0.0001;
    parameter Real parameter_33 = 100.0;
    parameter Real parameter_34 = 1.0;
    parameter Real parameter_35 = 100000000.0;
    parameter Real parameter_36 = 1.0;
    parameter Real parameter_38 = 0.0001;
    parameter Real parameter_39 = 1.0;
    parameter Real parameter_40 = 1000.0;
    parameter Real parameter_41 = 1000.0;
    parameter Real parameter_42 = 1e-06;
    parameter Real parameter_44 = 1.0;
    parameter Real parameter_45 = 1.0;
    parameter Real parameter_47 = 1e-06;
    parameter Real parameter_48 = 1e-06;
    parameter Real parameter_49 = 512.0;
    parameter Real parameter_50 = 128.0;
    parameter Real parameter_51 = 0.01;
    parameter Real parameter_52 = 0.01;
    parameter Real parameter_53 = 1e-06;
    parameter Real parameter_61 = 1.0;
    parameter Real parameter_62 = 0.0218776162394955;
    parameter Real parameter_63 = 2.0;
    parameter Real parameter_43 = 0.01;
    parameter Real parameter_65 = 100000.0;
    parameter Real parameter_66 = 1000000.0;
    parameter Real parameter_6 = 1e-06;
    parameter Real parameter_70 = 10.0;
    parameter Real parameter_46 = 0.5;
    parameter Real parameter_74 = 0.5;
    parameter Real parameter_76 = 1.0;
    parameter Real parameter_85 = 10000.0;
    parameter Real parameter_86 = 10000.0;
    parameter Real parameter_87 = 1.0;
    parameter Real parameter_88 = 2.5;
    parameter Real parameter_89 = 2.0;
    parameter Real parameter_90 = 1.0;
    parameter Real parameter_91 = 100000.0;
    parameter Real parameter_92 = 100000.0;
    parameter Real parameter_93 = 0.001;
    parameter Real parameter_94 = 0.0714;
    parameter Real parameter_95 = 3e-07;
    parameter Real parameter_97 = 0.3;
    parameter Real parameter_105 = 0.0;
    parameter Real parameter_106 = 1.0;
    parameter Real parameter_107 = 0.62677;
    parameter Real ModelValue_3 = parameter_4;
    parameter Real ModelValue_10 = parameter_12;
    parameter Real V_60 = 94.3761;
    parameter Real k_60 = 1.35871;
    parameter Real k1_74 = 0.00260615;
    parameter Real k1_75 = 0.105682;
    parameter Real k1_76 = 0.158489;
    parameter Real k1_77 = 0.1;
    parameter Real k1_78 = 0.107647;
    parameter Real k1_79 = 0.00214783;
    parameter Real k1_80 = 0.11695;
    parameter Real k1_81 = 0.1;
    parameter Real k1_82 = 0.1;
    parameter Real k1_83 = 0.00346737;
    parameter Real k1_84 = 0.1;
    parameter Real k1_85 = 0.1;
    parameter Real k1_86 = 0.119124;
    parameter Real k1_87 = 0.167494;
    parameter Real c1 = 1.0;
    parameter Real c2 = 1.0;
    parameter Real c4 = 1.0;
    parameter Real c3 = 1.0;

    Real parameter_2(start=0.5);
    Real parameter_5(start=0.7);
    Real parameter_11(start=7e-07);
    Real parameter_15(start=0.00572);
    Real parameter_16(start=0.00858);
    Real parameter_17(start=512.0);
    Real parameter_18(start=128.0);
    Real parameter_22(start=3e-07);
    Real parameter_23(start=7e-07);
    Real parameter_24(start=1e-06);
    Real parameter_25(start=7e-07);
    Real parameter_26(start=3e-07);
    Real parameter_27(start=1e-06);
    Real parameter_28(start=7e-13);
    Real parameter_29(start=3e-13);
    Real parameter_30(start=1e-12);
    Real parameter_37(start=1e-06);
    Real parameter_54(start=1e-06);
    Real parameter_55(start=0.313385);
    Real parameter_56(start=5e-07);
    Real parameter_57(start=0.313385);
    Real parameter_58(start=5e-07);
    Real parameter_59(start=5e-07);
    Real parameter_60(start=5e-07);
    Real parameter_64(start=0.1287);
    Real parameter_67(start=0.0);
    Real parameter_68(start=0.0);
    Real parameter_69(start=0.0);
    Real parameter_71(start=0.0);
    Real parameter_72(start=0.0);
    Real parameter_73(start=0.0);
    Real parameter_75(start=0.5);
    Real parameter_77(start=0.5);
    Real parameter_78(start=0.313385);
    Real parameter_79(start=0.0);
    Real parameter_80(start=14972.2359256258);
    Real parameter_81(start=6416.67253955392);
    Real parameter_82(start=0.0);
    Real parameter_83(start=214.717263795239);
    Real parameter_84(start=92.0216844836741);
    Real parameter_96(start=7e-07);
    Real parameter_98(start=0.7);
    Real parameter_99(start=3e-07);
    Real parameter_100(start=7e-07);
    Real parameter_101(start=7e-07);
    Real parameter_102(start=3e-07);
    Real parameter_103(start=7e-13);
    Real parameter_104(start=3e-13);

    Real s1;
    Real species_7;
    Real species_10;
    Real species_11;
    Real species_12;
    Real species_13;
    Real species_14;
    Real species_15;
    Real species_16;
    Real species_17;
    Real s9;
    Real s13;
    Real s15;
    Real s16;
    Real s19;
    Real s21;
    Real s22;
    Real s25;
    Real s17;
    Real s6;
    Real species_1;
    Real species_2;
    Real species_3;
    Real species_4;
    Real species_18;
    Real species_19;
    Real s2;
    Real s3;
    Real species_5;
    Real s4;
    Real s26;
    Real s27;
    Real s28;
    Real s29;
    Real s30;
    Real s31;
    Real s33;
    Real species_6;
    Real species_8;
    Real species_9;
    Real species_20;

initial equation
    s1 = parameter_6 * species_7;
    species_7 = 0.0534;
    species_10 = species_11;
    species_11 = 1.0;
    species_12 = 1.0;
    species_13 = 150000.0;
    species_14 = 1.0;
    species_15 = 150000.0;
    species_16 = 1.0;
    species_17 = 150000.0;
    s9 = 1.0;
    s13 = 0.0;
    s15 = 0.0;
    s16 = 0.0;
    s19 = 0.0;
    s21 = 0.0;
    s22 = 1000000.0;
    s25 = 0.0;
    s17 = 1198199.01671451;
    s6 = 0.0;
    species_1 = 1000000.0;
    species_18 = 1.0;
    species_19 = 1.0;
    s2 = 10000.0;
    s3 = 0.0;
    species_5 = 0.0;
    s4 = 4501139.56260765;
    s26 = 0.0;
    s27 = 0.0;
    s28 = 10000000.0;
    s29 = 41775201.8460542;
    s30 = 0.0;
    s31 = 0.0;
    s33 = 0.0;
    species_20 = 1.0;

equation
    parameter_2 = 1 - parameter_1;
    parameter_5 = 1 - ModelValue_3;
    parameter_11 = 1e-6 - ModelValue_10;
    parameter_16 = parameter_13 * parameter_14 * 0.6;
    parameter_15 = parameter_13 * 0.4 * parameter_14;
    species_2 = s9 + species_1 + s25 + s4;
    species_3 = s22 + s19 + s21;
    species_4 = s13 + s16 + s15 + s17;
    species_6 = s26 + s27;
    species_8 = s31 + s30 + s33 + s29 + s28;
    species_9 = 0.01 * (s31 + s30 + s33 + (s28 + s29) / parameter_70);
    parameter_17 = parameter_49 * (1 / (1 + parameter_51 * s33));
    parameter_18 = parameter_50 * (1 / (1 + parameter_51 * s15 + parameter_52 * s6));
    parameter_22 = parameter_4 * parameter_48;
    parameter_23 = parameter_48 * parameter_5;
    parameter_24 = parameter_3 * parameter_48;
    parameter_25 = parameter_5 * parameter_53;
    parameter_26 = parameter_4 * parameter_53;
    parameter_27 = parameter_3 * parameter_53;
    parameter_28 = parameter_11 * parameter_53;
    parameter_29 = parameter_12 * parameter_53;
    parameter_30 = parameter_10 * parameter_53;
    parameter_37 = parameter_7 * parameter_36;
    parameter_54 = parameter_7 * parameter_39;
    parameter_55 = parameter_1 * parameter_107;
    parameter_56 = parameter_2 * parameter_47;
    parameter_57 = parameter_1 * parameter_107;
    parameter_58 = parameter_2 * parameter_48;
    parameter_59 = parameter_1 * parameter_48;
    parameter_60 = parameter_2 * parameter_48;
    parameter_79 = parameter_17 * (parameter_27 * s29 + parameter_30 * s28) * s27;
    parameter_64 = (1 - parameter_14) * parameter_13;
    parameter_67 = s33 / species_8;
    parameter_68 = s31 / species_8;
    parameter_69 = s30 / species_8;
    parameter_71 = s33 / species_9;
    parameter_72 = s31 / species_9;
    parameter_73 = s30 / species_9;
    parameter_75 = 1 - parameter_74;
    parameter_77 = parameter_75 * parameter_76;
    parameter_78 = parameter_74 * parameter_107;
    parameter_82 = parameter_18 * parameter_24 * (s25 + s21) * s17;
    parameter_96 = 1e-6 - parameter_95;
    parameter_98 = 1 - parameter_97;
    parameter_100 = parameter_48 * parameter_98;
    parameter_83 = parameter_18 * (parameter_23 * (s19 + s9) * s17 + s17 * species_18 * parameter_100);
    parameter_99 = parameter_48 * parameter_97;
    parameter_84 = parameter_18 * (parameter_22 * (s19 + s9) * s17 + s17 * species_18 * parameter_99);
    parameter_101 = parameter_53 * parameter_98;
    parameter_102 = parameter_53 * parameter_97;
    parameter_103 = parameter_53 * parameter_96;
    parameter_80 = parameter_17 * ((parameter_25 * s29 + parameter_28 * s28) * s26 + (s29 * parameter_101 + s28 * parameter_103) * species_20);
    parameter_104 = parameter_95 * parameter_53;
    parameter_81 = parameter_17 * ((parameter_26 * s29 + parameter_29 * s28) * s26 + species_20 * (s29 * parameter_102 + s28 * parameter_104));
    der(s1) = (2.0 * c1 * function_5(parameter_20, s1, parameter_93)) - (function_3(s1, species_5, parameter_7)) - (parameter_55 * s4 * s1) - (c1 * function_5(parameter_20, s1, parameter_93)) - (c1 * parameter_19 * s1) - (function_3(s1, s3, parameter_37)) - (parameter_56 * s4 * s1) - (c1 * function_3(s1, s3, parameter_54));
    der(species_7) = 0.0;
    der(species_10) =  - (c1 * parameter_94 * species_10);
    der(species_11) = 0.0;
    der(species_12) = (k1_74 * s28) - (c1 * k1_75 * species_12) - (c1 * k1_78 * species_12);
    der(species_13) = (c1 * k1_75 * species_12) + (2.0 * c1 * k1_77 * species_13) - (c1 * k1_76 * species_13) - (c1 * k1_77 * species_13);
    der(species_14) = (k1_79 * s28) - (c1 * k1_80 * species_14) - (c1 * k1_82 * species_14);
    der(species_15) = (c1 * k1_80 * species_14) - (c1 * k1_81 * species_15) - (c1 * k1_87 * species_15);
    der(species_16) = (k1_83 * s28) - (c1 * k1_84 * species_16) - (c1 * k1_86 * species_16);
    der(species_17) = (c1 * k1_84 * species_16) + (c1 * k1_87 * species_15) - (c1 * k1_85 * species_17);
    der(s9) = (c2 * parameter_57 * species_1 * s6) + (parameter_55 * s4 * s1) + (function_3(s4, species_10, parameter_78)) - (parameter_9 * s9);
    der(s13) = (parameter_8 * s31) + (c2 * function_6(s17, parameter_23, s19, parameter_23, s9, parameter_100, species_18)) + (c2 * function_13(parameter_83)) - (c2 * parameter_15 * s13) - (parameter_16 * s13) - (c2 * parameter_64 * s13);
    der(s15) = (c2 * function_8(s17, parameter_24, s21, parameter_24, s25)) + (parameter_8 * s33) + (c2 * function_4(parameter_88, s16, s15, parameter_63, parameter_92, s25, parameter_92, s21, parameter_92)) + (c2 * function_13(parameter_82)) - (c2 * function_2(parameter_87, s15, s16, parameter_63, parameter_91, s9, parameter_91, s19, parameter_91, s13, parameter_91, s3, parameter_31)) - (c2 * parameter_15 * s15) - (parameter_16 * s15) - (c2 * parameter_64 * s15);
    der(s16) = (parameter_8 * s30) + (c2 * function_2(parameter_87, s15, s16, parameter_63, parameter_91, s9, parameter_91, s19, parameter_91, s13, parameter_91, s3, parameter_31)) + (c2 * function_6(s17, parameter_22, s19, parameter_22, s9, parameter_99, species_18)) + (c2 * function_13(parameter_84)) - (c2 * parameter_15 * s16) - (parameter_16 * s16) - (c2 * parameter_64 * s16) - (c2 * function_4(parameter_88, s16, s15, parameter_63, parameter_92, s25, parameter_92, s21, parameter_92));
    der(s19) = (c2 * function_2(parameter_61, s22, s19, parameter_63, parameter_91, s9, parameter_91, s13, parameter_91, s16, parameter_91, s3, parameter_106)) + (c2 * function_2(parameter_89, s21, s13, parameter_63, parameter_91, s19, parameter_91, s9, parameter_91, s16, parameter_91, s3, parameter_31)) + (c2 * parameter_59 * s22 * s6) - (c2 * parameter_62 * s19) - (c2 * function_4(parameter_90, s19, s15, parameter_63, parameter_92, s21, parameter_92, s25, parameter_92));
    der(s21) = (c2 * function_4(parameter_61, s22, s21, parameter_63, parameter_92, s15, parameter_92, s25, parameter_92)) + (c2 * function_4(parameter_90, s19, s15, parameter_63, parameter_92, s21, parameter_92, s25, parameter_92)) + (c2 * parameter_60 * s22 * s6) - (c2 * function_2(parameter_89, s21, s13, parameter_63, parameter_91, s19, parameter_91, s9, parameter_91, s16, parameter_91, s3, parameter_31)) - (c2 * parameter_62 * s21);
    der(s22) = (c2 * function_10(parameter_65, parameter_41, s19, parameter_63, parameter_85, s3, parameter_40, s9, parameter_85)) - (c2 * function_2(parameter_61, s22, s19, parameter_63, parameter_91, s9, parameter_91, s13, parameter_91, s16, parameter_91, s3, parameter_106)) - (c2 * function_4(parameter_61, s22, s21, parameter_63, parameter_92, s15, parameter_92, s25, parameter_92)) - (c2 * parameter_45 * s22) - (c2 * parameter_59 * s22 * s6) - (c2 * parameter_60 * s22 * s6);
    der(s25) = (c2 * parameter_58 * species_1 * s6) + (parameter_56 * s4 * s1) + (function_3(s4, species_10, parameter_77)) - (parameter_9 * s25);
    der(s17) = (c2 * parameter_15 * s16) + (c2 * parameter_15 * s13) + (c2 * parameter_15 * s15) - (c2 * function_8(s17, parameter_24, s21, parameter_24, s25)) - (c2 * function_6(s17, parameter_23, s19, parameter_23, s9, parameter_100, species_18)) - (c2 * function_6(s17, parameter_22, s19, parameter_22, s9, parameter_99, species_18));
    der(s6) = (function_3(s1, species_5, parameter_7)) + (2.0 * c2 * function_5(parameter_20, s6, parameter_93)) + (function_3(s1, s3, parameter_37)) - (c2 * parameter_57 * species_1 * s6) - (c2 * parameter_58 * species_1 * s6) - (c2 * function_5(parameter_20, s6, parameter_93)) - (c2 * parameter_19 * s6) - (c2 * function_9(s6, parameter_48, parameter_39, s3, parameter_38, s19)) - (c2 * parameter_59 * s22 * s6) - (c2 * parameter_60 * s22 * s6);
    der(species_1) = (c2 * function_10(parameter_66, parameter_41, s3, parameter_63, parameter_40, s19, parameter_85, s9, parameter_85)) - (c2 * parameter_57 * species_1 * s6) - (c2 * parameter_58 * species_1 * s6) - (c2 * parameter_44 * species_1) - (function_12(V_60, species_1, k_60, s4));
    der(species_18) =  - (parameter_9 * species_18);
    der(species_19) = 0.0;
    der(s2) = (c4 * parameter_21 * s3) + (c4 * parameter_21 * species_5) - (c4 * function_3(s2, s1, parameter_7)) - (c4 * function_1(parameter_48, s2, s13, parameter_32, s16, parameter_32, s19, parameter_38)) - (c4 * function_2(parameter_105, s2, s13, parameter_63, parameter_91, s16, parameter_91, s9, parameter_91, s19, parameter_91, s3, parameter_106));
    der(s3) = (c4 * function_3(s2, s1, parameter_7)) + (c4 * function_2(parameter_105, s2, s13, parameter_63, parameter_91, s16, parameter_91, s9, parameter_91, s19, parameter_91, s3, parameter_106)) - (c4 * function_1(parameter_48, s3, s13, parameter_32, s16, parameter_32, s19, parameter_38)) - (c4 * parameter_21 * s3);
    der(species_5) = (c4 * function_1(parameter_48, s3, s13, parameter_32, s16, parameter_32, s19, parameter_38)) + (c4 * function_1(parameter_48, s2, s13, parameter_32, s16, parameter_32, s19, parameter_38)) - (c4 * parameter_21 * species_5);
    der(s4) = (function_12(V_60, species_1, k_60, s4)) - (parameter_55 * s4 * s1) - (parameter_56 * s4 * s1) - (function_3(s4, species_10, parameter_77)) - (function_3(s4, species_10, parameter_78));
    der(s26) = (parameter_9 * s9) - (c3 * parameter_46 * s26);
    der(s27) = (parameter_9 * s25) - (c3 * parameter_46 * s27);
    der(s28) = (c3 * function_7(parameter_33, s26, parameter_63, parameter_86, parameter_35)) - (c3 * function_8(s28, parameter_29, s26, parameter_104, species_20)) - (c3 * function_8(s28, parameter_28, s26, parameter_103, s26)) - (c3 * function_3(s28, s27, parameter_30)) - (c3 * parameter_34 * s28) - (k1_74 * s28) - (k1_79 * s28) - (k1_83 * s28);
    der(s29) = (parameter_16 * s16) + (parameter_16 * s13) + (parameter_16 * s15) - (c3 * function_8(s29, parameter_26, s26, parameter_102, species_20)) - (c3 * function_8(s29, parameter_25, s26, parameter_101, species_20)) - (c3 * function_3(s29, s27, parameter_27));
    der(s30) = (c3 * function_8(s28, parameter_29, s26, parameter_104, species_20)) + (c3 * function_8(s29, parameter_26, s26, parameter_102, species_20)) + (c3 * function_4(parameter_87, s33, s31, parameter_63, parameter_91, s26, parameter_91, s30, parameter_91)) + (c3 * function_13(parameter_81)) - (parameter_8 * s30) - (c3 * function_11(parameter_88, s30, s33, parameter_63, parameter_92, s27, parameter_92));
    der(s31) = (c3 * function_8(s28, parameter_28, s26, parameter_103, s26)) + (c3 * function_8(s29, parameter_25, s26, parameter_101, species_20)) + (c3 * function_13(parameter_80)) - (parameter_8 * s31);
    der(s33) = (c3 * function_3(s28, s27, parameter_30)) + (c3 * function_3(s29, s27, parameter_27)) + (c3 * function_11(parameter_88, s30, s33, parameter_63, parameter_92, s27, parameter_92)) + (c3 * function_13(parameter_79)) - (parameter_8 * s33) - (c3 * function_4(parameter_87, s33, s31, parameter_63, parameter_91, s26, parameter_91, s30, parameter_91));
    der(species_20) = (parameter_9 * species_18) - (c3 * parameter_46 * species_20) - (c3 * parameter_46 * species_20);


    when time >= 2 then
        reinit(s1,s1 + species_7 * parameter_6);
        reinit(species_10,species_10 + species_11);
    end when;
    when time >= 4 then
        reinit(s1,s1 + species_7 * parameter_6);
        reinit(species_10,species_10 + species_11);
    end when;

end BIOMD480;
