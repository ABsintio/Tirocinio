
model BIOMD390 "Arnold2011_Giersch1990_CalvinCycle"

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


    function function_6
        	input Real Vm;
	input Real S1;
	input Real S2;
	input Real P1;
	input Real P2;
	input Real P3;
	input Real k;
	input Real K1;
	input Real K2;
        output Real y;
    algorithm
        y :=  Vm * (S1 * S2 - P1 * P2 * P3 / k) / (K1 + S1 * S2 * K1 / K2 + P1 * P2 * P3 / k);
    end function_6;


    function function_5
        	input Real k;
	input Real E;
	input Real S;
	input Real K;
        output Real y;
    algorithm
        y :=  (k / 2) * (E + S + K - sqrt((E + S + K)^2 - 4 * E * S));
    end function_5;


    function function_7
        	input Real Vm;
	input Real S;
	input Real K;
        output Real y;
    algorithm
        y :=  Vm * S / (S + K);
    end function_7;


    function function_8
        	input Real Vm;
	input Real S1;
	input Real S2;
	input Real K1;
	input Real K2;
	input Real K3;
	input Real R;
        output Real y;
    algorithm
        y :=  Vm * S1 * S2 / (K1 * K2 + K2 * S2 + S1 * S2 + K3 * R);
    end function_8;


    function function_10
        	input Real Vm;
	input Real s1;
	input Real s2;
	input Real K1;
	input Real K2;
        output Real y;
    algorithm
        y :=  Vm * s1 * s2 / ((s1 + K1) * (s2 + K2));
    end function_10;


    function function_9
        	input Real S1;
	input Real S2;
	input Real P1;
	input Real P2;
	input Real K2;
	input Real K1;
	input Real Vm;
        output Real y;
    algorithm
        y :=  Vm * (S1 * S2 - P1 * P2) / ((S1 + P1) * K2 + (S2 + P2) * K1 + K1 * K2 * (S1 / K1 + P2 / K2) * (S2 / K2 + P1 / K1));
    end function_9;


    parameter Real V6 = 5.8801285588795;
    parameter Real P_0 = 16.0;
    parameter Real k_0 = 0.504;
    parameter Real K_0 = 0.04;
    parameter Real Vm_1 = 3.49;
    parameter Real k_1 = 14.0;
    parameter Real K1_1 = 1.0;
    parameter Real K2_1 = 1.0;
    parameter Real Vm_2 = 1.06;
    parameter Real K_2 = 0.4;
    parameter Real Vm_3 = 4.81;
    parameter Real K1_3 = 0.05;
    parameter Real K2_3 = 0.5;
    parameter Real K3_3 = 0.05;
    parameter Real K2_4 = 0.25;
    parameter Real K1_4 = 0.08;
    parameter Real Vm_4 = 3.3;
    parameter Real K1_5 = 0.08;
    parameter Real K2_5 = 0.5;
    parameter Real chloroplast = 1.0;
    parameter Real cytosol = 1.0;



    Real RuBP;
    Real PGA;
    Real TP;
    Real Ru5P;
    Real Pi;
    Real ATP;
    Real ADP;
    Real E_RuBisCO;
    Real totRuBP;
    Real TPc;
    Real Pic;

initial equation
    RuBP = 2.0;
    PGA = 2.4;
    TP = 0.5;
    Ru5P = 0.0500747384155456;
    Pi = 5.0;
    ATP = 0.68;
    ADP = 0.82;
    E_RuBisCO = 3.56;
    TPc = 0.2;
    Pic = 1.4;

equation
    totRuBP = 1 / 2 * (P_0 - (PGA + TP + Ru5P + Pi + ATP));
    der(RuBP) = (chloroplast * function_8(Vm_3, Ru5P, ATP, K1_3, K2_3, K3_3, Pi)) - (chloroplast * function_5(k_0, E_RuBisCO, totRuBP, K_0));
    der(PGA) = (2.0 * chloroplast * function_5(k_0, E_RuBisCO, totRuBP, K_0)) - (chloroplast * function_6(Vm_1, PGA, ATP, ADP, TP, Pi, k_1, K1_1, K2_1));
    der(TP) = (chloroplast * function_6(Vm_1, PGA, ATP, ADP, TP, Pi, k_1, K1_1, K2_1)) - (5.0 * chloroplast * function_7(Vm_2, TP, K_2)) - (function_9(TP, Pic, TPc, Pi, K2_4, K1_4, Vm_4));
    der(Ru5P) = (3.0 * chloroplast * function_7(Vm_2, TP, K_2)) - (chloroplast * function_8(Vm_3, Ru5P, ATP, K1_3, K2_3, K3_3, Pi));
    der(Pi) = (chloroplast * function_6(Vm_1, PGA, ATP, ADP, TP, Pi, k_1, K1_1, K2_1)) + (2.0 * chloroplast * function_7(Vm_2, TP, K_2)) + (function_9(TP, Pic, TPc, Pi, K2_4, K1_4, Vm_4)) - (chloroplast * function_10(V6, ADP, Pi, K1_5, K2_5));
    der(ATP) = (chloroplast * function_10(V6, ADP, Pi, K1_5, K2_5)) - (chloroplast * function_6(Vm_1, PGA, ATP, ADP, TP, Pi, k_1, K1_1, K2_1)) - (chloroplast * function_8(Vm_3, Ru5P, ATP, K1_3, K2_3, K3_3, Pi));
    der(ADP) = (chloroplast * function_6(Vm_1, PGA, ATP, ADP, TP, Pi, k_1, K1_1, K2_1)) + (chloroplast * function_8(Vm_3, Ru5P, ATP, K1_3, K2_3, K3_3, Pi)) - (chloroplast * function_10(V6, ADP, Pi, K1_5, K2_5));
    der(E_RuBisCO) = 0.0;
    der(TPc) = 0.0;
    der(Pic) = 0.0;




end BIOMD390;
