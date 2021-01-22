
model BIOMD500 "Begitt2014 - STAT1 cooperative DNA binding - single GAS polymer model"

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


    function function_4_DNA1
        	input Real DNA_000;
	input Real DNA_100;
	input Real Koff_NG1;
	input Real Kon_NG1;
	input Real S1;
	input Real nucleus;
        output Real y;
    algorithm
        y :=  (Kon_NG1 * DNA_000 * S1 - Koff_NG1 * DNA_100) / nucleus;
    end function_4_DNA1;


    function function_4_DNA50
        	input Real DNA_011;
	input Real DNA_01B1;
	input Real Koff_P1;
	input Real Kon_P1;
	input Real nucleus;
        output Real y;
    algorithm
        y :=  (Kon_P1 * DNA_011 - Koff_P1 * DNA_01B1) / nucleus;
    end function_4_DNA50;


    function function_4_DNA3
        	input Real DNA_000;
	input Real DNA_001;
	input Real Koff_NG1;
	input Real Kon_NG1;
	input Real S1;
	input Real nucleus;
        output Real y;
    algorithm
        y :=  (Kon_NG1 * DNA_000 * S1 - Koff_NG1 * DNA_001) / nucleus;
    end function_4_DNA3;


    function function_4_DNA53
        	input Real DNA_11B1;
	input Real DNA_1B1B1;
	input Real Koff_P1;
	input Real Kon_P1;
	input Real nucleus;
        output Real y;
    algorithm
        y :=  (Kon_P1 * DNA_11B1 - Koff_P1 * DNA_1B1B1) / nucleus;
    end function_4_DNA53;


    function function_4_DNA54
        	input Real DNA_1B11;
	input Real DNA_1B1B1;
	input Real Koff_P1;
	input Real Kon_P1;
	input Real nucleus;
        output Real y;
    algorithm
        y :=  (Kon_P1 * DNA_1B11 - Koff_P1 * DNA_1B1B1) / nucleus;
    end function_4_DNA54;


    function function_4_DNA2
        	input Real DNA_000;
	input Real DNA_010;
	input Real Koff_G1;
	input Real Kon_G1;
	input Real S1;
	input Real nucleus;
        output Real y;
    algorithm
        y :=  (Kon_G1 * DNA_000 * S1 - Koff_G1 * DNA_010) / nucleus;
    end function_4_DNA2;


    function function_4_DNA4
        	input Real DNA_100;
	input Real DNA_110;
	input Real Koff_G1;
	input Real Kon_G1;
	input Real S1;
	input Real nucleus;
        output Real y;
    algorithm
        y :=  (Kon_G1 * DNA_100 * S1 - Koff_G1 * DNA_110) / nucleus;
    end function_4_DNA4;


    function function_4_DNA51
        	input Real DNA_111;
	input Real DNA_11B1;
	input Real Koff_P1;
	input Real Kon_P1;
	input Real nucleus;
        output Real y;
    algorithm
        y :=  (Kon_P1 * DNA_111 - Koff_P1 * DNA_11B1) / nucleus;
    end function_4_DNA51;


    function function_4_DNA12
        	input Real DNA_011;
	input Real DNA_111;
	input Real Koff_NG1;
	input Real Kon_NG1;
	input Real S1;
	input Real nucleus;
        output Real y;
    algorithm
        y :=  (Kon_NG1 * DNA_011 * S1 - Koff_NG1 * DNA_111) / nucleus;
    end function_4_DNA12;


    function function_4_DNA9
        	input Real DNA_001;
	input Real DNA_011;
	input Real Koff_G1;
	input Real Kon_G1;
	input Real S1;
	input Real nucleus;
        output Real y;
    algorithm
        y :=  (Kon_G1 * DNA_001 * S1 - Koff_G1 * DNA_011) / nucleus;
    end function_4_DNA9;


    function function_4_DNA52
        	input Real DNA_111;
	input Real DNA_1B11;
	input Real Koff_P1;
	input Real Kon_P1;
	input Real nucleus;
        output Real y;
    algorithm
        y :=  (Kon_P1 * DNA_111 - Koff_P1 * DNA_1B11) / nucleus;
    end function_4_DNA52;


    function function_4_DNA6
        	input Real DNA_010;
	input Real DNA_110;
	input Real Koff_NG1;
	input Real Kon_NG1;
	input Real S1;
	input Real nucleus;
        output Real y;
    algorithm
        y :=  (Kon_NG1 * DNA_010 * S1 - Koff_NG1 * DNA_110) / nucleus;
    end function_4_DNA6;


    function function_4_DNA49
        	input Real DNA_110;
	input Real DNA_1B10;
	input Real Koff_P1;
	input Real Kon_P1;
	input Real nucleus;
        output Real y;
    algorithm
        y :=  (Kon_P1 * DNA_110 - Koff_P1 * DNA_1B10) / nucleus;
    end function_4_DNA49;


    function function_4_DNA8
        	input Real DNA_001;
	input Real DNA_101;
	input Real Koff_NG1;
	input Real Kon_NG1;
	input Real S1;
	input Real nucleus;
        output Real y;
    algorithm
        y :=  (Kon_NG1 * DNA_001 * S1 - Koff_NG1 * DNA_101) / nucleus;
    end function_4_DNA8;


    function function_4_DNA7
        	input Real DNA_010;
	input Real DNA_011;
	input Real Koff_NG1;
	input Real Kon_NG1;
	input Real S1;
	input Real nucleus;
        output Real y;
    algorithm
        y :=  (Kon_NG1 * DNA_010 * S1 - Koff_NG1 * DNA_011) / nucleus;
    end function_4_DNA7;


    function function_4_DNA10
        	input Real DNA_110;
	input Real DNA_111;
	input Real Koff_NG1;
	input Real Kon_NG1;
	input Real S1;
	input Real nucleus;
        output Real y;
    algorithm
        y :=  (Kon_NG1 * DNA_110 * S1 - Koff_NG1 * DNA_111) / nucleus;
    end function_4_DNA10;


    function function_4_DNA11
        	input Real DNA_101;
	input Real DNA_111;
	input Real Koff_G1;
	input Real Kon_G1;
	input Real S1;
	input Real nucleus;
        output Real y;
    algorithm
        y :=  (Kon_G1 * DNA_101 * S1 - Koff_G1 * DNA_111) / nucleus;
    end function_4_DNA11;


    function function_4_DNA5
        	input Real DNA_100;
	input Real DNA_101;
	input Real Koff_NG1;
	input Real Kon_NG1;
	input Real S1;
	input Real nucleus;
        output Real y;
    algorithm
        y :=  (Kon_NG1 * DNA_100 * S1 - Koff_NG1 * DNA_101) / nucleus;
    end function_4_DNA5;


    parameter Real Kon_P1 = 60000.0;
    parameter Real Koff_P1 = 100.0;
    parameter Real Kon_G1 = 20000000000.0;
    parameter Real Koff_G1 = 100.0;
    parameter Real Kon_NG1 = 20000000000.0;
    parameter Real Koff_NG1 = 20000.0;
    parameter Real default = 1.0;
    parameter Real nucleus = 1.0;

    Real parameter_1(start=0.0);

    Real S1;
    Real DNA_000;
    Real DNA_100;
    Real DNA_010;
    Real DNA_001;
    Real DNA_110;
    Real DNA_101;
    Real DNA_011;
    Real DNA_111;
    Real DNA_1B10;
    Real DNA_01B1;
    Real DNA_1B11;
    Real DNA_11B1;
    Real DNA_1B1B1;

initial equation
    S1 = 1e-10;
    DNA_000 = 1e-10;
    DNA_100 = 0.0;
    DNA_010 = 0.0;
    DNA_001 = 0.0;
    DNA_110 = 0.0;
    DNA_101 = 0.0;
    DNA_011 = 0.0;
    DNA_111 = 0.0;
    DNA_1B10 = 0.0;
    DNA_01B1 = 0.0;
    DNA_1B11 = 0.0;
    DNA_11B1 = 0.0;
    DNA_1B1B1 = 0.0;

equation
    parameter_1 = DNA_010 + DNA_011 + DNA_110 + DNA_111 + DNA_01B1 + DNA_1B10 + DNA_1B11 + DNA_11B1 + DNA_1B1B1;
    der(S1) =  - (nucleus * function_4_DNA1(DNA_000, DNA_100, Koff_NG1, Kon_NG1, S1, nucleus)) - (nucleus * function_4_DNA2(DNA_000, DNA_010, Koff_G1, Kon_G1, S1, nucleus)) - (nucleus * function_4_DNA3(DNA_000, DNA_001, Koff_NG1, Kon_NG1, S1, nucleus)) - (nucleus * function_4_DNA4(DNA_100, DNA_110, Koff_G1, Kon_G1, S1, nucleus)) - (nucleus * function_4_DNA5(DNA_100, DNA_101, Koff_NG1, Kon_NG1, S1, nucleus)) - (nucleus * function_4_DNA6(DNA_010, DNA_110, Koff_NG1, Kon_NG1, S1, nucleus)) - (nucleus * function_4_DNA7(DNA_010, DNA_011, Koff_NG1, Kon_NG1, S1, nucleus)) - (nucleus * function_4_DNA8(DNA_001, DNA_101, Koff_NG1, Kon_NG1, S1, nucleus)) - (nucleus * function_4_DNA9(DNA_001, DNA_011, Koff_G1, Kon_G1, S1, nucleus)) - (nucleus * function_4_DNA10(DNA_110, DNA_111, Koff_NG1, Kon_NG1, S1, nucleus)) - (nucleus * function_4_DNA11(DNA_101, DNA_111, Koff_G1, Kon_G1, S1, nucleus)) - (nucleus * function_4_DNA12(DNA_011, DNA_111, Koff_NG1, Kon_NG1, S1, nucleus));
    der(DNA_000) =  - (nucleus * function_4_DNA1(DNA_000, DNA_100, Koff_NG1, Kon_NG1, S1, nucleus)) - (nucleus * function_4_DNA2(DNA_000, DNA_010, Koff_G1, Kon_G1, S1, nucleus)) - (nucleus * function_4_DNA3(DNA_000, DNA_001, Koff_NG1, Kon_NG1, S1, nucleus));
    der(DNA_100) = (nucleus * function_4_DNA1(DNA_000, DNA_100, Koff_NG1, Kon_NG1, S1, nucleus)) - (nucleus * function_4_DNA4(DNA_100, DNA_110, Koff_G1, Kon_G1, S1, nucleus)) - (nucleus * function_4_DNA5(DNA_100, DNA_101, Koff_NG1, Kon_NG1, S1, nucleus));
    der(DNA_010) = (nucleus * function_4_DNA2(DNA_000, DNA_010, Koff_G1, Kon_G1, S1, nucleus)) - (nucleus * function_4_DNA6(DNA_010, DNA_110, Koff_NG1, Kon_NG1, S1, nucleus)) - (nucleus * function_4_DNA7(DNA_010, DNA_011, Koff_NG1, Kon_NG1, S1, nucleus));
    der(DNA_001) = (nucleus * function_4_DNA3(DNA_000, DNA_001, Koff_NG1, Kon_NG1, S1, nucleus)) - (nucleus * function_4_DNA8(DNA_001, DNA_101, Koff_NG1, Kon_NG1, S1, nucleus)) - (nucleus * function_4_DNA9(DNA_001, DNA_011, Koff_G1, Kon_G1, S1, nucleus));
    der(DNA_110) = (nucleus * function_4_DNA4(DNA_100, DNA_110, Koff_G1, Kon_G1, S1, nucleus)) + (nucleus * function_4_DNA6(DNA_010, DNA_110, Koff_NG1, Kon_NG1, S1, nucleus)) - (nucleus * function_4_DNA10(DNA_110, DNA_111, Koff_NG1, Kon_NG1, S1, nucleus)) - (nucleus * function_4_DNA49(DNA_110, DNA_1B10, Koff_P1, Kon_P1, nucleus));
    der(DNA_101) = (nucleus * function_4_DNA5(DNA_100, DNA_101, Koff_NG1, Kon_NG1, S1, nucleus)) + (nucleus * function_4_DNA8(DNA_001, DNA_101, Koff_NG1, Kon_NG1, S1, nucleus)) - (nucleus * function_4_DNA11(DNA_101, DNA_111, Koff_G1, Kon_G1, S1, nucleus));
    der(DNA_011) = (nucleus * function_4_DNA7(DNA_010, DNA_011, Koff_NG1, Kon_NG1, S1, nucleus)) + (nucleus * function_4_DNA9(DNA_001, DNA_011, Koff_G1, Kon_G1, S1, nucleus)) - (nucleus * function_4_DNA12(DNA_011, DNA_111, Koff_NG1, Kon_NG1, S1, nucleus)) - (nucleus * function_4_DNA50(DNA_011, DNA_01B1, Koff_P1, Kon_P1, nucleus));
    der(DNA_111) = (nucleus * function_4_DNA10(DNA_110, DNA_111, Koff_NG1, Kon_NG1, S1, nucleus)) + (nucleus * function_4_DNA11(DNA_101, DNA_111, Koff_G1, Kon_G1, S1, nucleus)) + (nucleus * function_4_DNA12(DNA_011, DNA_111, Koff_NG1, Kon_NG1, S1, nucleus)) - (nucleus * function_4_DNA51(DNA_111, DNA_11B1, Koff_P1, Kon_P1, nucleus)) - (nucleus * function_4_DNA52(DNA_111, DNA_1B11, Koff_P1, Kon_P1, nucleus));
    der(DNA_1B10) = (nucleus * function_4_DNA49(DNA_110, DNA_1B10, Koff_P1, Kon_P1, nucleus)) ;
    der(DNA_01B1) = (nucleus * function_4_DNA50(DNA_011, DNA_01B1, Koff_P1, Kon_P1, nucleus)) ;
    der(DNA_1B11) = (nucleus * function_4_DNA52(DNA_111, DNA_1B11, Koff_P1, Kon_P1, nucleus)) - (nucleus * function_4_DNA54(DNA_1B11, DNA_1B1B1, Koff_P1, Kon_P1, nucleus));
    der(DNA_11B1) = (nucleus * function_4_DNA51(DNA_111, DNA_11B1, Koff_P1, Kon_P1, nucleus)) - (nucleus * function_4_DNA53(DNA_11B1, DNA_1B1B1, Koff_P1, Kon_P1, nucleus));
    der(DNA_1B1B1) = (nucleus * function_4_DNA53(DNA_11B1, DNA_1B1B1, Koff_P1, Kon_P1, nucleus)) + (nucleus * function_4_DNA54(DNA_1B11, DNA_1B1B1, Koff_P1, Kon_P1, nucleus)) ;




end BIOMD500;
