
model BIOMD410 "Wegner2012_TGFbetaSignalling_FeedbackLoops"

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


    function function_4
        	input Real v;
        output Real y;
    algorithm
        y :=  v;
    end function_4;


    function function_1
        	input Real substrate;
	input Real Km;
	input Real V;
        output Real y;
    algorithm
        y :=  V * substrate / (Km + substrate);
    end function_1;


    function function_3
        	input Real k;
	input Real rec;
	input Real s;
	input Real km;
        output Real y;
    algorithm
        y :=  k * rec * s / (km + s);
    end function_3;


    function function_2
        	input Real TGFbeta;
	input Real k;
	input Real s;
	input Real s2;
        output Real y;
    algorithm
        y :=  k * s * s2 * TGFbeta;
    end function_2;


    function function_7
        	input Real k1;
	input Real substrate;
	input Real modifier;
        output Real y;
    algorithm
        y :=  k1 * substrate * (1 + modifier);
    end function_7;


    function function_5
        	input Real k;
	input Real k1;
	input Real m;
        output Real y;
    algorithm
        y :=  k + k1 * m;
    end function_5;


    function function_6
        	input Real k;
	input Real k1;
	input Real m;
	input Real m2;
	input Real m3;
        output Real y;
    algorithm
        y :=  (k + k1 * m) / (1 + m2 + m3);
    end function_6;


    parameter Real parameter_1 = 0.01;
    parameter Real k1_0 = 0.0492;
    parameter Real Km_1 = 40.0;
    parameter Real V_1 = 2.34;
    parameter Real k1_2 = 1.6;
    parameter Real k2_2 = 1.6;
    parameter Real k1_3 = 0.232;
    parameter Real k1_4 = 255.068;
    parameter Real Km_5 = 0.53;
    parameter Real V_5 = 3.51;
    parameter Real k1_6 = 0.2;
    parameter Real k1_7 = 2.9;
    parameter Real k2_7 = 0.2;
    parameter Real k_8 = 9.45;
    parameter Real k1_9 = 0.03333;
    parameter Real k2_9 = 0.03333;
    parameter Real k1_10 = 1.0;
    parameter Real k2_10 = 0.1;
    parameter Real k_11 = 1000.0;
    parameter Real km_11 = 0.0318;
    parameter Real k_12 = 3.51;
    parameter Real km_12 = 0.53;
    parameter Real k1_13 = 16.6;
    parameter Real k1_14 = 1000.0;
    parameter Real k1_15 = 0.156;
    parameter Real k2_15 = 0.156;
    parameter Real k1_16 = 0.16;
    parameter Real k1_17 = 0.1;
    parameter Real k2_17 = 0.01;
    parameter Real k1_18 = 1.0;
    parameter Real k2_18 = 0.01;
    parameter Real k1_19 = 1900.0;
    parameter Real k1_20 = 8.69;
    parameter Real k2_20 = 0.01;
    parameter Real v_21 = 0.00146;
    parameter Real k_22 = 0.0001;
    parameter Real k1_22 = 0.031;
    parameter Real k_23 = 0.0001;
    parameter Real k1_23 = 0.1;
    parameter Real k_24 = 0.000228;
    parameter Real k1_24 = 0.0285;
    parameter Real k_25 = 2e-05;
    parameter Real k1_25 = 0.00055;
    parameter Real v_26 = 0.0125;
    parameter Real k1_27 = 1.0;
    parameter Real k2_27 = 0.05288;
    parameter Real k1_28 = 0.156;
    parameter Real k2_28 = 0.336;
    parameter Real k1_29 = 0.027778;
    parameter Real k1_30 = 0.027778;
    parameter Real k1_31 = 0.027778;
    parameter Real k1_32 = 0.03333;
    parameter Real v_33 = 0.0156;
    parameter Real v_34 = 0.01183;
    parameter Real k1_35 = 0.1266;
    parameter Real k1_36 = 0.065;
    parameter Real Km_37 = 3.51;
    parameter Real V_37 = 0.53;
    parameter Real k1_38 = 0.232;
    parameter Real k1_39 = 0.2333;
    parameter Real k2_39 = 1.8056;
    parameter Real k1_40 = 0.2;
    parameter Real k1_41 = 0.1;
    parameter Real k2_41 = 0.2;
    parameter Real v_42 = 0.04528;
    parameter Real k1_43 = 0.2;
    parameter Real Km_44 = 3.51;
    parameter Real V_44 = 0.53;
    parameter Real Km_45 = 40.0;
    parameter Real V_45 = 2.34;
    parameter Real Km_46 = 0.53;
    parameter Real V_46 = 3.51;
    parameter Real k_47 = 1000.0;
    parameter Real km_47 = 0.0318;
    parameter Real k_48 = 3.51;
    parameter Real km_48 = 0.53;
    parameter Real k1_49 = 0.2;
    parameter Real k1_50 = 0.156;
    parameter Real k2_50 = 0.336;
    parameter Real k1_51 = 1.0;
    parameter Real k2_51 = 0.1;
    parameter Real k1_52 = 0.0492;
    parameter Real k1_53 = 16.6;
    parameter Real k1_54 = 1000.0;
    parameter Real k1_55 = 255.068;
    parameter Real k1_56 = 1.6;
    parameter Real k2_56 = 1.6;
    parameter Real k1_57 = 0.16;
    parameter Real k1_58 = 0.232;
    parameter Real k1_59 = 0.1;
    parameter Real k1_60 = 0.232;
    parameter Real k1_61 = 0.1;
    parameter Real k2_61 = 0.2;
    parameter Real k_62 = 2e-05;
    parameter Real k1_62 = 0.00055;
    parameter Real k1_63 = 0.05;
    parameter Real k1_64 = 1.0;
    parameter Real k2_64 = 0.05288;
    parameter Real k1_65 = 0.1;
    parameter Real k2_65 = 0.1;
    parameter Real k1_66 = 2.9;
    parameter Real k2_66 = 0.2;
    parameter Real k_67 = 0.0001;
    parameter Real k1_67 = 0.0022;
    parameter Real k1_68 = 1.6;
    parameter Real k2_68 = 1.6;
    parameter Real k1_69 = 1900.0;
    parameter Real k1_70 = 1.0;
    parameter Real k2_70 = 0.01;
    parameter Real k1_71 = 0.5;
    parameter Real k1_72 = 0.05;
    parameter Real k2_72 = 3.0;
    parameter Real k1_73 = 0.463;
    parameter Real k2_73 = 0.102;
    parameter Real k1_74 = 0.463;
    parameter Real k2_74 = 0.102;
    parameter Real k1_75 = 0.2;
    parameter Real k2_75 = 0.2;
    parameter Real k1_76 = 0.2;
    parameter Real k2_76 = 0.2;
    parameter Real k1_77 = 0.2;
    parameter Real k2_77 = 0.2;
    parameter Real k1_78 = 1.6;
    parameter Real k2_78 = 1.6;
    parameter Real k1_79 = 0.2;
    parameter Real k2_79 = 0.2;
    parameter Real k1_80 = 0.1;
    parameter Real k2_80 = 0.1;
    parameter Real k1_81 = 0.1;
    parameter Real k2_81 = 0.1;
    parameter Real k1_82 = 1.0;
    parameter Real k2_82 = 1.0;
    parameter Real k1_83 = 1.0;
    parameter Real k2_83 = 1.0;
    parameter Real k1_84 = 0.005;
    parameter Real k1_85 = 0.005;
    parameter Real v_86 = 2e-05;
    parameter Real k1_87 = 0.1;
    parameter Real k1_88 = 0.1;
    parameter Real k1_89 = 0.1;
    parameter Real k1_90 = 0.1;
    parameter Real k2_90 = 0.1;
    parameter Real _1 = 1.0;
    parameter Real _3 = 1.0;

    Real parameter_2(start=0.0);
    Real parameter_3(start=0.0);
    Real parameter_4(start=0.0);
    Real parameter_5(start=0.0);
    Real parameter_6(start=0.0);
    Real parameter_7(start=0.0);
    Real parameter_8(start=0.0);
    Real parameter_9(start=0.0);
    Real parameter_10(start=0.0);

    Real _75;
    Real _79;
    Real _84;
    Real _96;
    Real _99;
    Real _101;
    Real _105;
    Real _129;
    Real _147;
    Real _153;
    Real _174;
    Real _181;
    Real _198;
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
    Real _5;
    Real _9;
    Real _11;
    Real _13;
    Real _15;
    Real _19;
    Real _21;
    Real _25;
    Real _27;
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

initial equation
    _75 = 0.0;
    _79 = 0.0;
    _84 = 0.0;
    _96 = 0.0;
    _99 = 0.0;
    _101 = 0.0;
    _105 = 0.0;
    _129 = 0.0;
    _147 = 0.0;
    _153 = 0.0;
    _174 = 0.0;
    _181 = 0.0;
    _198 = 0.0;
    species_1 = 0.0;
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
    _5 = 0.0;
    _9 = 0.0;
    _11 = 0.0;
    _13 = 0.0;
    _15 = 0.0;
    _19 = 0.0;
    _21 = 0.0;
    _25 = 0.0;
    _27 = 0.0;
    species_16 = 0.0;
    species_17 = 0.0;
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
    species_28 = 0.0999999951844375;
    species_29 = 0.0;
    species_30 = 0.0;
    species_31 = 0.0;

equation
    parameter_3 = _174 + _181 + _198 + _25 + _27;
    parameter_2 = species_2 + _11 + species_16 + species_16;
    parameter_4 = _181 + species_1 + _15 + _27;
    parameter_5 = _99 + _105 + _129 + _153 + _9 + _13 + _19 + _21 + species_19;
    parameter_6 = _147 + _153 + species_6 + _5 + _9 + species_18 + _13 + species_16 + species_19 + species_21 + species_27 + species_26 + species_23;
    parameter_7 = species_4 + species_6 + species_18 + species_20 + species_21 + species_26;
    parameter_8 = species_3 + species_4 + species_5 + species_6 + species_8 + species_17 + species_18 + species_20 + species_21 + species_26 + species_27;
    parameter_9 = _147 + _153 + species_6;
    parameter_10 = species_11 + _5 + _9 + _13 + species_18 + species_16 + species_18 + species_19 + species_21 + species_23 + species_26 + species_26 + species_27;
    der(_75) = (_1 * function_4(v_21)) + (2.0 * _1 * k1_32 * _79) - (2.0 * _1 * function_2(parameter_1, k_8, _75, _75)) - (_1 * k1_31 * _75);
    der(_79) = (_1 * function_2(parameter_1, k_8, _75, _75)) - (_1 * (k1_9 * _79 * pow(_84, 2) - k2_9 * _96)) - (_1 * k1_32 * _79);
    der(_84) = (_1 * function_4(v_26)) - (2.0 * _1 * (k1_9 * _79 * pow(_84, 2) - k2_9 * _96)) - (_1 * k1_30 * _84);
    der(_96) = (_1 * (k1_9 * _79 * pow(_84, 2) - k2_9 * _96)) - (_1 * k1_19 * _181 * _96) - (_1 * (k1_20 * _174 * _96 - k2_20 * _198)) - (_1 * k1_29 * _96) - (_1 * k1_69 * species_10 * _96);
    der(_99) = (_1 * function_4(v_33)) + (_1 * function_1(_129, Km_37, V_37)) - (_1 * (k1_10 * _101 * _99 - k2_10 * _105)) - (_1 * function_3(k_11, _96, _99, k_11m)) - (k1_28 * _99 - k2_28 * _21) - (_1 * k1_40 * _99) - (_1 * (k1_81 * _99 * species_7 - k2_81 * species_12));
    der(_101) = (_1 * function_3(k_12, _96, _105, k_12m)) + (_1 * function_5(k_22, k_221, species_30)) + (_1 * function_3(k_48, _96, species_5, k_48m)) - (_1 * (k1_10 * _101 * _99 - k2_10 * _105)) - (_1 * k1_36 * _101) - (_1 * (k1_51 * _101 * species_3 - k2_51 * species_5));
    der(_105) = (_1 * (k1_10 * _101 * _99 - k2_10 * _105)) - (_1 * function_3(k_12, _96, _105, k_12m));
    der(_129) = (_1 * function_3(k_11, _96, _99, k_11m)) + (_1 * function_3(k_12, _96, _105, k_12m)) - (k1_13 * _129) - (2.0 * _1 * k1_14 * _147 * pow(_129, 2)) - (_1 * function_1(_129, Km_37, V_37));
    der(_147) = (_1 * function_4(v_34)) - (_1 * k1_14 * _147 * pow(_129, 2)) - (k1_15 * _147 - k2_15 * _5) - (_1 * k1_35 * _147) - (_1 * k1_54 * _147 * pow(species_4, 2));
    der(_153) = (_1 * k1_14 * _147 * pow(_129, 2)) - (k1_16 * _153);
    der(_174) = (k1_17 * _25 - k2_17 * _174) + (_1 * function_6(k_23, k_231, species_30, species_16, species_23)) - (_1 * (k1_20 * _174 * _96 - k2_20 * _198)) - (_1 * function_7(k1_59, _174, species_15));
    der(_181) = (k1_18 * _27 - k2_18 * _181) - (_1 * k1_19 * _181 * _96);
    der(_198) = (_1 * (k1_20 * _174 * _96 - k2_20 * _198)) ;
    der(species_1) = (_1 * function_5(k_24, k_241, species_30)) + (k1_39 * _15 - k2_39 * species_1) - (_1 * function_7(k1_63, species_1, _174));
    der(species_2) = (_1 * function_5(k_25, k_251, species_30)) - (_1 * k1_38 * species_2) - (k1_41 * species_2 - k2_41 * _11);
    der(species_3) = (_1 * function_4(v_42)) + (_1 * function_1(species_4, Km_44, V_44)) - (_1 * k1_43 * species_3) - (_1 * function_3(k_47, _96, species_3, k_47m)) - (k1_50 * species_3 - k2_50 * species_17) - (_1 * (k1_51 * _101 * species_3 - k2_51 * species_5)) - (_1 * (k1_65 * species_3 * species_7 - k2_65 * species_8));
    der(species_4) = (_1 * function_3(k_47, _96, species_3, k_47m)) + (_1 * function_3(k_48, _96, species_5, k_48m)) - (_1 * function_1(species_4, Km_44, V_44)) - (k1_53 * species_4) - (2.0 * _1 * k1_54 * _147 * pow(species_4, 2));
    der(species_5) = (_1 * (k1_51 * _101 * species_3 - k2_51 * species_5)) - (_1 * function_3(k_48, _96, species_5, k_48m));
    der(species_6) = (_1 * k1_54 * _147 * pow(species_4, 2)) - (k1_57 * species_6);
    der(species_7) = (_1 * function_5(k_62, k_621, species_30)) - (_1 * k1_60 * species_7) - (k1_61 * species_7 - k2_61 * species_22) - (_1 * (k1_65 * species_3 * species_7 - k2_65 * species_8)) - (_1 * (k1_81 * _99 * species_7 - k2_81 * species_12));
    der(species_8) = (_1 * (k1_65 * species_3 * species_7 - k2_65 * species_8)) ;
    der(species_9) = (_1 * function_5(k_67, k_671, species_30)) + (k1_72 * species_24 - k2_72 * species_9) - (_1 * function_7(k1_71, species_9, _174));
    der(species_10) = (k1_70 * species_25 - k2_70 * species_10) - (_1 * k1_69 * species_10 * _96);
    der(species_11) = (k1_78 * _9 * pow(species_22, 2) - k2_78 * species_11) - (k1_79 * species_11 * species_28 - k2_79 * species_29);
    der(species_12) = (_1 * (k1_81 * _99 * species_7 - k2_81 * species_12)) ;
    der(species_13) = (k1_82 * pow(_19, 3) * pow(_11, 3) - k2_82 * species_13) - (k1_3 * pow(_15, 3) * species_13) - (k1_88 * species_13 * pow(species_31, 3));
    der(species_14) = (k1_83 * pow(species_20, 3) * pow(_11, 3) - k2_83 * species_14) - (k1_58 * species_14) - (k1_89 * species_14 * pow(species_31, 3));
    der(species_15) = (_1 * function_4(v_86)) - (_1 * k1_87 * species_15) - (k1_90 * species_15 - k2_90 * species_31);
    der(_5) = (_3 * k1_0 * species_27) + (k1_15 * _147 - k2_15 * _5) + (_3 * k1_52 * species_19) - (_3 * k1_4 * _5 * pow(_19, 2)) - (_3 * (k1_27 * _5 * _11 - k2_27 * species_16)) - (_3 * k1_55 * _5 * pow(species_20, 2)) - (_3 * (k1_64 * _5 * species_22 - k2_64 * species_23));
    der(_9) = (_3 * k1_4 * _5 * pow(_19, 2)) + (k1_16 * _153) - (_3 * function_1(_9, Km_1, V_1)) - (_3 * (k1_2 * _9 * pow(_11, 2) - k2_2 * _13)) - (_3 * (k1_74 * _9 * species_28 - k2_74 * species_30)) - (k1_78 * _9 * pow(species_22, 2) - k2_78 * species_11) - (_3 * k1_84 * _9);
    der(_11) = (k1_41 * species_2 - k2_41 * _11) - (2.0 * _3 * (k1_2 * _9 * pow(_11, 2) - k2_2 * _13)) - (_3 * (k1_27 * _5 * _11 - k2_27 * species_16)) - (2.0 * _3 * (k1_56 * species_18 * pow(_11, 2) - k2_56 * species_21)) - (3.0 * k1_82 * pow(_19, 3) * pow(_11, 3) - k2_82 * species_13) - (3.0 * k1_83 * pow(species_20, 3) * pow(_11, 3) - k2_83 * species_14);
    der(_13) = (_3 * (k1_2 * _9 * pow(_11, 2) - k2_2 * _13)) - (_3 * (k1_76 * _13 * species_28 - k2_76 * species_29));
    der(_15) =  - (3.0 * k1_3 * pow(_15, 3) * species_13) - (_3 * k1_6 * _21 * _15) - (_3 * (k1_7 * _15 * _25 - k2_7 * _27)) - (k1_39 * _15 - k2_39 * species_1);
    der(_19) = (3.0 * k1_3 * pow(_15, 3) * species_13) + (k1_13 * _129) + (3.0 * k1_88 * species_13 * pow(species_31, 3)) - (2.0 * _3 * k1_4 * _5 * pow(_19, 2)) - (_3 * function_1(_19, Km_5, V_5)) - (3.0 * k1_82 * pow(_19, 3) * pow(_11, 3) - k2_82 * species_13);
    der(_21) = (_3 * function_1(_19, Km_5, V_5)) + (k1_28 * _99 - k2_28 * _21) + (2.0 * _3 * k1_52 * species_19) - (_3 * k1_6 * _21 * _15);
    der(_25) =  - (_3 * (k1_7 * _15 * _25 - k2_7 * _27)) - (k1_17 * _25 - k2_17 * _174) - (_3 * (k1_66 * species_24 * _25 - k2_66 * species_25));
    der(_27) = (_3 * (k1_7 * _15 * _25 - k2_7 * _27)) - (k1_18 * _27 - k2_18 * _181);
    der(species_16) = (_3 * (k1_27 * _5 * _11 - k2_27 * species_16)) ;
    der(species_17) = (2.0 * _3 * k1_0 * species_27) + (_3 * function_1(species_20, Km_46, V_46)) + (k1_50 * species_3 - k2_50 * species_17) - (_3 * k1_49 * species_17);
    der(species_18) = (_3 * k1_55 * _5 * pow(species_20, 2)) + (k1_57 * species_6) - (_3 * function_1(species_18, Km_45, V_45)) - (_3 * (k1_56 * species_18 * pow(_11, 2) - k2_56 * species_21)) - (_3 * (k1_68 * species_18 * pow(species_22, 2) - k2_68 * species_26)) - (_3 * (k1_73 * species_18 * species_28 - k2_73 * species_30)) - (_3 * k1_85 * species_18);
    der(species_19) = (_3 * function_1(_9, Km_1, V_1)) - (_3 * k1_52 * species_19);
    der(species_20) = (k1_53 * species_4) + (k1_58 * species_14) + (k1_89 * species_14 * pow(species_31, 3)) - (_3 * function_1(species_20, Km_46, V_46)) - (2.0 * _3 * k1_55 * _5 * pow(species_20, 2)) - (3.0 * k1_83 * pow(species_20, 3) * pow(_11, 3) - k2_83 * species_14);
    der(species_21) = (_3 * (k1_56 * species_18 * pow(_11, 2) - k2_56 * species_21)) - (_3 * (k1_75 * species_21 * species_28 - k2_75 * species_29));
    der(species_22) = (k1_61 * species_7 - k2_61 * species_22) - (_3 * (k1_64 * _5 * species_22 - k2_64 * species_23)) - (2.0 * _3 * (k1_68 * species_18 * pow(species_22, 2) - k2_68 * species_26)) - (2.0 * k1_78 * _9 * pow(species_22, 2) - k2_78 * species_11);
    der(species_23) = (_3 * (k1_64 * _5 * species_22 - k2_64 * species_23)) - (_3 * (k1_80 * species_23 * species_28 - k2_80 * species_29));
    der(species_24) =  - (_3 * (k1_66 * species_24 * _25 - k2_66 * species_25)) - (k1_72 * species_24 - k2_72 * species_9);
    der(species_25) = (_3 * (k1_66 * species_24 * _25 - k2_66 * species_25)) - (k1_70 * species_25 - k2_70 * species_10);
    der(species_26) = (_3 * (k1_68 * species_18 * pow(species_22, 2) - k2_68 * species_26)) - (_3 * (k1_77 * species_26 * species_28 - k2_77 * species_29));
    der(species_27) = (_3 * function_1(species_18, Km_45, V_45)) - (_3 * k1_0 * species_27);
    der(species_28) =  - (_3 * (k1_73 * species_18 * species_28 - k2_73 * species_30)) - (_3 * (k1_74 * _9 * species_28 - k2_74 * species_30)) - (_3 * (k1_75 * species_21 * species_28 - k2_75 * species_29)) - (_3 * (k1_76 * _13 * species_28 - k2_76 * species_29)) - (_3 * (k1_77 * species_26 * species_28 - k2_77 * species_29)) - (k1_79 * species_11 * species_28 - k2_79 * species_29) - (_3 * (k1_80 * species_23 * species_28 - k2_80 * species_29));
    der(species_29) = (_3 * (k1_75 * species_21 * species_28 - k2_75 * species_29)) + (_3 * (k1_76 * _13 * species_28 - k2_76 * species_29)) + (_3 * (k1_77 * species_26 * species_28 - k2_77 * species_29)) + (k1_79 * species_11 * species_28 - k2_79 * species_29) + (_3 * (k1_80 * species_23 * species_28 - k2_80 * species_29)) ;
    der(species_30) = (_3 * (k1_73 * species_18 * species_28 - k2_73 * species_30)) + (_3 * (k1_74 * _9 * species_28 - k2_74 * species_30)) ;
    der(species_31) = (k1_90 * species_15 - k2_90 * species_31) - (3.0 * k1_88 * species_13 * pow(species_31, 3)) - (3.0 * k1_89 * species_14 * pow(species_31, 3));




end BIOMD410;
