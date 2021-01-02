
model BIOMD388 "Arnold2011_Zhu2009_CalvinCycle"

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
        	input Real substrate;
	input Real Km;
	input Real V;
        output Real y;
    algorithm
        y :=  V * substrate / (Km + substrate);
    end function_1;


    function function_2
        	input Real Vm;
	input Real s1;
	input Real s2;
	input Real K1;
	input Real K2;
        output Real y;
    algorithm
        y :=  Vm * s1 * s2 / ((s1 + K1) * (s2 + K2));
    end function_2;


    parameter Real Km_0 = 1.0;
    parameter Real V_0 = 3.78;
    parameter Real Vm_1 = 11.75;
    parameter Real K1_1 = 0.24;
    parameter Real K2_1 = 0.39;
    parameter Real Km_2 = 0.5;
    parameter Real V_2 = 5.04;
    parameter Real Km_3 = 0.84;
    parameter Real V_3 = 3.05;
    parameter Real Vm_4 = 8.0;
    parameter Real K1_4 = 0.15;
    parameter Real K2_4 = 0.059;
    parameter Real Km_5 = 0.75;
    parameter Real V_5 = 3.0;
    parameter Real Km_6 = 5.0;
    parameter Real V_6 = 0.1;
    parameter Real chloroplast = 1.0;



    Real RuBP;
    Real PGA;
    Real DPGA;
    Real GAP;
    Real Ru5P;
    Real ADP;
    Real ATP;
    Real Pi;

initial equation
    RuBP = 2.0;
    PGA = 2.4;
    DPGA = 0.0011;
    GAP = 0.02;
    Ru5P = 0.0501;
    ADP = 0.82;
    ATP = 0.68;

equation
    Pi = 15 - 2 * (RuBP + DPGA + ATP) - (PGA + GAP + Ru5P + ADP);
    der(RuBP) = (chloroplast * function_2(Vm_4, Ru5P, ATP, K1_4, K2_4)) - (chloroplast * function_1(RuBP, Km_0, V_0));
    der(PGA) = (2.0 * chloroplast * function_1(RuBP, Km_0, V_0)) - (chloroplast * function_2(Vm_1, PGA, ATP, K1_1, K2_1)) - (chloroplast * function_1(PGA, Km_5, V_5));
    der(DPGA) = (chloroplast * function_2(Vm_1, PGA, ATP, K1_1, K2_1)) - (chloroplast * function_1(DPGA, Km_2, V_2));
    der(GAP) = (chloroplast * function_1(DPGA, Km_2, V_2)) - (chloroplast * function_1(GAP, Km_3, V_3)) - (chloroplast * function_1(GAP, Km_6, V_6));
    der(Ru5P) = (0.6 * chloroplast * function_1(GAP, Km_3, V_3)) - (chloroplast * function_2(Vm_4, Ru5P, ATP, K1_4, K2_4));
    der(ADP) = 0.0;
    der(ATP) = 0.0;




end BIOMD388;
