
model BIOMD429 "Schaber2012 - Hog pathway in yeast"

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


    function function_10
        	input Real ko;
	input Real k;
	input Real S;
	input Real M;
	input Real Ki;
	input Real h;
        output Real y;
    algorithm
        y :=  ko * k * S / (1 + (M / Ki)^h);
    end function_10;


    function function_9
        	input Real ko;
	input Real k;
	input Real M;
	input Real S;
        output Real y;
    algorithm
        y :=  ko * k * M * S;
    end function_9;


    function function_8
        	input Real ko;
	input Real k;
	input Real M1;
	input Real S1;
	input Real S2;
	input Real M2;
	input Real Ki;
	input Real h;
        output Real y;
    algorithm
        y :=  ko * k * M1 * S1 * S2 / (1 + (M2 / Ki)^h);
    end function_8;


    function function_4
        	input Real k;
	input Real M;
        output Real y;
    algorithm
        y :=  k * M;
    end function_4;


    function function_6
        	input Real A;
	input Real P;
	input Real S;
	input Real f;
	input Real ks;
        output Real y;
    algorithm
        y :=  f * ks * A * (S - P);
    end function_6;


    function function_2
        	input Real k;
	input Real M;
	input Real S;
        output Real y;
    algorithm
        y :=  k * M * S;
    end function_2;


    function function_5
        	input Real k1;
	input Real M1;
	input Real k2;
	input Real M2;
	input Real Km;
        output Real y;
    algorithm
        y :=  k1 * M1 * (1 + k2 * M2) / (Km + M1 * (1 + k2 * M2));
    end function_5;


    function function_7
        	input Real k;
	input Real M;
	input Real Km;
        output Real y;
    algorithm
        y :=  k * M / (Km + M);
    end function_7;


    function function_3
        	input Real k1;
	input Real M1;
	input Real S;
	input Real k2;
	input Real M2;
        output Real y;
    algorithm
        y :=  k1 * M1 * S + k2 * M2 * S;
    end function_3;


    function function_1
        	input Real ko;
	input Real k;
	input Real M1;
	input Real S;
	input Real M2;
	input Real h;
	input Real Ki;
        output Real y;
    algorithm
        y :=  ko * k * M1 * S / (1 + (M2 / Ki)^h);
    end function_1;


    parameter Real parameter_1 = 8.314;
    parameter Real parameter_2 = 303.15;
    parameter Real parameter_3 = 6.022e+23;
    parameter Real parameter_4 = 0.93;
    parameter Real parameter_5 = 1e-09;
    parameter Real parameter_6 = 10.0;
    parameter Real parameter_7 = 0.013;
    parameter Real parameter_8 = 0.61;
    parameter Real parameter_9 = 14.3;
    parameter Real parameter_10 = 0.41;
    parameter Real parameter_11 = 260000.0;
    parameter Real parameter_12 = 50.0;
    parameter Real parameter_13 = parameter_12 * parameter_10;
    parameter Real parameter_14 = 0.8;
    parameter Real parameter_15 = parameter_12 * exp(-parameter_8 / parameter_9);
    parameter Real parameter_17 = 2.23;
    parameter Real parameter_18 = 1e21 / (parameter_3 * compartment_1);
    parameter Real parameter_19 = parameter_11 + parameter_8 / (parameter_5 * parameter_1 * parameter_2);
    parameter Real parameter_20 = parameter_19 - species_1 / compartment_1;
    parameter Real parameter_23 = 0.4;
    parameter Real parameter_24 = -parameter_72 * (species_6 / compartment_1) * (species_5 / compartment_1) * (1 + (species_3 / compartment_1 / parameter_73)^parameter_74) / (parameter_75 * (species_4 / compartment_1));
    parameter Real parameter_25 = 42.6396538263077;
    parameter Real parameter_26 = 1.78587;
    parameter Real parameter_34 = 0.128378897200866;
    parameter Real parameter_35 = parameter_76 * (species_8 / compartment_1) / (species_7 / compartment_1);
    parameter Real parameter_37 = 6788 * parameter_18;
    parameter Real parameter_38 = 2160 * parameter_18;
    parameter Real parameter_39 = parameter_77 * (species_3 / compartment_1) / (parameter_78 + species_3 / compartment_1) / (species_8 / compartment_1);
    parameter Real parameter_40 = 2330 * parameter_18;
    parameter Real parameter_41 = 48.0003902091319;
    parameter Real parameter_42 = 2.23;
    parameter Real parameter_43 = 2.23;
    parameter Real parameter_46 = parameter_12 * (1 - parameter_10);
    parameter Real parameter_47 = (36 * pi)^(1 / 3) * parameter_12^(2 / 3);
    parameter Real parameter_48 = 600.0;
    parameter Real parameter_50 = parameter_53 / 100;
    parameter Real parameter_51 = 807 * parameter_18;
    parameter Real parameter_52 = 0.034;
    parameter Real parameter_53 = 180000.0;
    parameter Real parameter_54 = piecewise(parameter_37 * parameter_17 * parameter_14 / 100, (parameter_58 == 1) && (parameter_57 == 1), piecewise(parameter_37 * parameter_42 * parameter_14 / 100, (parameter_58 == 1) && (parameter_57 == 0), parameter_37 * parameter_43 * parameter_14 / 100));
    parameter Real parameter_55 = -parameter_79 * (species_11 / compartment_1) * (1 + (species_3 / compartment_1 / parameter_80)^parameter_81) / (parameter_82 * (species_4 / compartment_1) * (species_10 / compartment_1));
    parameter Real parameter_57 = 1.0;
    parameter Real parameter_58 = 1.0;
    parameter Real parameter_59 = 907 * parameter_18;
    parameter Real parameter_61 = 2.0;
    parameter Real parameter_64 = parameter_83 * (species_14 / compartment_4) * parameter_63 / (species_15 / compartment_4);
    parameter Real parameter_65 = parameter_83 * (species_14 / compartment_4) * parameter_63 * (1 + (species_3 / compartment_1 / parameter_84)^parameter_85) / (species_15 / compartment_4);
    parameter Real parameter_66 = parameter_83 * (species_14 / compartment_4) * parameter_63 / ((species_15 / compartment_4) * parameter_62);
    parameter Real parameter_67 = 0.001;
    parameter Real parameter_68 = 600.0;
    parameter Real parameter_70 = 0.0;
    parameter Real parameter_71 = 1.0;
    parameter Real parameter_72 = 0.607124;
    parameter Real parameter_73 = 0.00940584;
    parameter Real parameter_74 = 0.345701;
    parameter Real parameter_75 = 0.075474;
    parameter Real parameter_76 = 9.06781e-05;
    parameter Real parameter_77 = 18.1824;
    parameter Real parameter_78 = 0.506878;
    parameter Real parameter_79 = 0.00226722;
    parameter Real parameter_80 = 0.297524;
    parameter Real parameter_81 = 2.0793;
    parameter Real parameter_82 = 0.00459138;
    parameter Real parameter_83 = 0.00529124;
    parameter Real parameter_84 = 0.0811033;
    parameter Real parameter_85 = 0.628719;
    parameter Real parameter_86 = 680.818;
    parameter Real parameter_87 = 46.8363;
    parameter Real parameter_88 = 0.420741;
    parameter Real compartment_1 = 1.0;
    parameter Real compartment_2 = 1.0;
    parameter Real compartment_3 = 1.0;
    parameter Real compartment_4 = 1.0;

    Real parameter_16(start=65.6342903668733);
    Real parameter_21(start=0.609999999999999);
    Real parameter_22(start=0.000710539561053171);
    Real parameter_27(start=0.000428194136809108);
    Real parameter_28(start=0.5);
    Real parameter_29(start=100.0);
    Real parameter_30(start=2.23);
    Real parameter_31(start=19.9);
    Real parameter_32(start=17.0);
    Real parameter_33(start=242026.122077737);
    Real parameter_36(start=3.4);
    Real parameter_44(start=260000.0);
    Real parameter_45(start=502026.122077738);
    Real parameter_49(start=258200.0);
    Real parameter_56(start=0.0036065403549782);
    Real parameter_60(start=0.0510557334969518);
    Real parameter_62(start=0.499999999999999);
    Real parameter_63(start=0.500000000000001);
    Real parameter_69(start=1.0);

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

initial equation
    species_1 = parameter_53 * compartment_1;
    species_2 = (parameter_37 - species_9 / compartment_1 - species_3 / compartment_1) * compartment_1;
    species_3 = parameter_54 * compartment_1;
    species_4 = (parameter_38 - species_5 / compartment_1 - species_11 / compartment_1) * compartment_1;
    species_5 = piecewise(-(parameter_26 * (species_6 / compartment_1) * (species_3 / compartment_1 + sqrt((species_3 / compartment_1) * (4 * parameter_37 - 3 * (species_3 / compartment_1)))) / (4 * parameter_25 * (species_3 / compartment_1 - parameter_37))), (parameter_58 == 1) && (parameter_57 == 1), piecewise(-((parameter_25 * parameter_26 * (species_6 / compartment_1) * (species_3 / compartment_1) + sqrt((parameter_25 * parameter_26 * (species_6 / compartment_1))^2 * (species_3 / compartment_1) * (4 * parameter_37 - 3 * (species_3 / compartment_1)))) / (2 * parameter_25^2 * (species_3 / compartment_1 - parameter_37))), (parameter_58 == 1) && (parameter_57 == 0), 0)) * compartment_1;
    species_6 = 769 * parameter_18 * compartment_1;
    species_7 = parameter_51 * compartment_1;
    species_8 = parameter_52 * compartment_1;
    species_9 = piecewise((1 / 2) * (-(species_3 / compartment_1) + sqrt((species_3 / compartment_1) * (4 * parameter_37 - 3 * (species_3 / compartment_1)))), (parameter_58 == 1) && (parameter_57 == 1), piecewise((-parameter_25 * parameter_26 * (species_6 / compartment_1) * (species_3 / compartment_1) + sqrt((parameter_25 * parameter_26 * (species_6 / compartment_1))^2 * (species_3 / compartment_1) * (4 * parameter_37 - 3 * (species_3 / compartment_1)))) / (2 * parameter_25 * parameter_26 * (species_6 / compartment_1)), (parameter_58 == 1) && (parameter_57 == 0), (-parameter_41 * parameter_26 * (species_6 / compartment_1) * (species_3 / compartment_1) + sqrt((parameter_41 * parameter_26 * (species_6 / compartment_1))^2 * (species_3 / compartment_1) * (4 * parameter_37 - 3 * (species_3 / compartment_1)))) / (2 * parameter_41 * parameter_26 * (species_6 / compartment_1)))) * compartment_1;
    species_10 = (parameter_40 - species_11 / compartment_1) * compartment_1;
    species_11 = piecewise(-(parameter_26 * (species_6 / compartment_1) * (species_3 / compartment_1 + sqrt((species_3 / compartment_1) * (4 * parameter_37 - 3 * (species_3 / compartment_1)))) / (4 * parameter_41 * (species_3 / compartment_1 - parameter_37))), (parameter_58 == 1) && (parameter_57 == 1), piecewise(-((parameter_41 * parameter_26 * (species_6 / compartment_1) * (species_3 / compartment_1) + sqrt((parameter_41 * parameter_26 * (species_6 / compartment_1))^2 * (species_3 / compartment_1) * (4 * parameter_37 - 3 * (species_3 / compartment_1)))) / (2 * parameter_41^2 * (species_3 / compartment_1 - parameter_37))), (parameter_58 == 0) && (parameter_57 == 1), 0)) * compartment_1;
    species_13 = (species_1 / compartment_1 / 100) * compartment_2;
    species_14 = (parameter_59 / 2) * compartment_4;
    species_15 = (parameter_59 / 2) * compartment_4;

equation
    compartment_3 = parameter_13 + compartment_1;
    parameter_16 = pow(36 * pi, 1 / 3) * pow(compartment_3, 2 / 3);
    parameter_21 = piecewise(parameter_9 * log(compartment_3 / parameter_15), gt(compartment_3, parameter_15), 0);
    parameter_22 = piecewise((parameter_47 - parameter_16) / parameter_47 - parameter_24, gt((parameter_47 - parameter_16) / parameter_47, parameter_24), 0);
    parameter_27 = parameter_86 * parameter_51 * (1 + parameter_87 * parameter_54) / (parameter_88 + parameter_51 * (1 + parameter_87 * parameter_54)) * parameter_46 / (0.5 * parameter_47 * (parameter_53 - parameter_50));
    parameter_28 = species_14 / compartment_4 / parameter_59;
    parameter_29 = 100 * compartment_3 / parameter_12;
    parameter_30 = 100 * (species_3 / compartment_1) * compartment_1 / (parameter_14 * parameter_37 * parameter_46);
    parameter_31 = 19.9 * (species_7 / compartment_1) * compartment_1 / (parameter_51 * parameter_46);
    parameter_32 = 17 * (species_1 / compartment_1) * compartment_1 / (parameter_53 * parameter_46);
    parameter_33 = parameter_21 / (parameter_1 * parameter_2 * parameter_5);
    parameter_36 = 3.4 * (species_8 / compartment_1) * compartment_1 / (parameter_52 * parameter_46);
    parameter_45 = species_1 / compartment_1 + parameter_20 * parameter_46 / compartment_1;
    parameter_49 = piecewise(parameter_11 - parameter_50 + (1 - exp((parameter_48 - time) / parameter_6)) * 2 * parameter_4 * parameter_23 * pow(10, 6), gt(time, parameter_48), parameter_11 - parameter_50);
    parameter_44 = parameter_49 + species_13 / compartment_2;
    parameter_56 = piecewise((parameter_47 - parameter_16) / parameter_47 - parameter_55, gt((parameter_47 - parameter_16) / parameter_47, parameter_55), 0);
    parameter_60 = species_14 / compartment_4 + species_15 / compartment_4;
    parameter_62 = pow(parameter_21, parameter_61) / (pow(parameter_8, parameter_61) + pow(parameter_21, parameter_61));
    parameter_63 = 1 - pow(parameter_21, parameter_61) / (pow(parameter_8, parameter_61) + pow(parameter_21, parameter_61));
    parameter_69 = piecewise(piecewise(parameter_67, gt(time, parameter_68), 1), eq(parameter_70, 1), 1);
    species_12 = parameter_69 * (species_3 / compartment_1) * compartment_1;
    der(compartment_1) = -parameter_7 * parameter_16 * (parameter_21 + parameter_5 * parameter_1 * parameter_2 * (parameter_44 - parameter_45));
    der(species_1) = (compartment_1 * function_5(parameter_86, species_7 / compartment_1, parameter_87, species_12 / compartment_1, parameter_88)) - (function_6(parameter_16, species_13 / compartment_2, species_1 / compartment_1, parameter_28, parameter_27));
    der(species_2) = (compartment_1 * function_2(parameter_26, species_6 / compartment_1, species_9 / compartment_1)) - (compartment_1 * function_3(parameter_25, species_5 / compartment_1, species_2 / compartment_1, parameter_41, species_11 / compartment_1));
    der(species_3) = (compartment_1 * function_3(parameter_25, species_5 / compartment_1, species_9 / compartment_1, parameter_41, species_11 / compartment_1)) - (compartment_1 * function_2(parameter_26, species_6 / compartment_1, species_3 / compartment_1));
    der(species_4) = (compartment_1 * function_2(parameter_72, species_6 / compartment_1, species_5 / compartment_1)) + (parameter_79 * species_11) - (compartment_1 * function_1(parameter_58, parameter_75, parameter_22, species_4 / compartment_1, species_12 / compartment_1, parameter_74, parameter_73)) - (compartment_1 * function_8(parameter_57, parameter_82, parameter_56, species_4 / compartment_1, species_10 / compartment_1, species_12 / compartment_1, parameter_80, parameter_81));
    der(species_5) = (compartment_1 * function_1(parameter_58, parameter_75, parameter_22, species_4 / compartment_1, species_12 / compartment_1, parameter_74, parameter_73)) - (compartment_1 * function_2(parameter_72, species_6 / compartment_1, species_5 / compartment_1));
    der(species_6) = 0.0;
    der(species_7) = (compartment_1 * function_4(parameter_76, species_8 / compartment_1)) - (parameter_35 * species_7);
    der(species_8) = (compartment_1 * function_7(parameter_77, species_12 / compartment_1, parameter_78)) - (parameter_39 * species_8);
    der(species_9) = (compartment_1 * function_3(parameter_25, species_5 / compartment_1, species_2 / compartment_1, parameter_41, species_11 / compartment_1)) + (compartment_1 * function_2(parameter_26, species_6 / compartment_1, species_3 / compartment_1)) - (compartment_1 * function_2(parameter_26, species_6 / compartment_1, species_9 / compartment_1)) - (compartment_1 * function_3(parameter_25, species_5 / compartment_1, species_9 / compartment_1, parameter_41, species_11 / compartment_1));
    der(species_10) = (parameter_79 * species_11) - (compartment_1 * function_8(parameter_57, parameter_82, parameter_56, species_4 / compartment_1, species_10 / compartment_1, species_12 / compartment_1, parameter_80, parameter_81));
    der(species_11) = (compartment_1 * function_8(parameter_57, parameter_82, parameter_56, species_4 / compartment_1, species_10 / compartment_1, species_12 / compartment_1, parameter_80, parameter_81)) - (parameter_79 * species_11);
    der(species_13) = (function_6(parameter_16, species_13 / compartment_2, species_1 / compartment_1, parameter_28, parameter_27)) ;
    der(species_14) = (compartment_4 * function_10(parameter_71, parameter_65, species_15 / compartment_4, species_12 / compartment_1, parameter_84, parameter_85)) - (compartment_4 * function_9(parameter_71, parameter_83, parameter_63, species_14 / compartment_4));
    der(species_15) = (compartment_4 * function_9(parameter_71, parameter_83, parameter_63, species_14 / compartment_4)) - (compartment_4 * function_10(parameter_71, parameter_65, species_15 / compartment_4, species_12 / compartment_1, parameter_84, parameter_85));




end BIOMD429;
