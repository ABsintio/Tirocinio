
model BIOMD389 "Arnold2011_Hahn1986_CalvinCycle_Starch_Sucrose"

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
        	input Real v;
        output Real y;
    algorithm
        y :=  v;
    end function_1;


    parameter Real r = 3e-05;
    parameter Real D = 0.0001;
    parameter Real phi = 0.0001;
    parameter Real k1_0 = 0.006;
    parameter Real k1_1 = 0.0207;
    parameter Real k1_2 = 4.0;
    parameter Real k2_2 = 0.0;
    parameter Real k1_3 = 0.031;
    parameter Real k1_4 = 3.1;
    parameter Real k1_5 = 0.31;
    parameter Real k1_6 = 6.2;
    parameter Real k1_7 = 0.031;
    parameter Real k1_8 = 0.279;
    parameter Real k1_9 = 0.002;
    parameter Real k1_10 = 4e-05;
    parameter Real k1_11 = 0.5;
    parameter Real k1_12 = 1.55;
    parameter Real k1_14 = 0.00755;
    parameter Real chloroplast = 1.0;
    parameter Real cytosol = 1.0;
    parameter Real vacuole = 1.0;
    parameter Real phloem = 1.0;

    Real v_15(start=0.00998718);

    Real RuBP;
    Real PGA;
    Real TP;
    Real HeP;
    Real TPGA;
    Real E4P;
    Real S7P;
    Real Ru5P;
    Real GG;
    Real ATP;
    Real ADP;
    Real UTP;
    Real UDP;
    Real Pi;
    Real CO2;
    Real TPc;
    Real HePc;
    Real Suc;
    Real Pic;
    Real SucV;
    Real E;
    Real Resp;

initial equation
    RuBP = 2.0;
    PGA = 2.4;
    TP = 0.5;
    HeP = 2.2;
    TPGA = 0.2;
    E4P = 0.05;
    S7P = 2.0;
    Ru5P = 0.05;
    GG = 99.9999999999999;
    ATP = 3.875;
    ADP = 0.53;
    UTP = 3.871;
    UDP = 1.613;
    Pi = 2.5;
    CO2 = 31.0;
    TPc = 0.114;
    HePc = 0.1;
    Suc = 77.31;
    Pic = 0.8;
    SucV = 77.31;
    E = 0.5;
    Resp = 1.0;

equation
    v_15 = 0.0258 * HePc * UTP;
    der(RuBP) = (chloroplast * k1_7 * Ru5P * ATP) - (chloroplast * k1_0 * RuBP * CO2);
    der(PGA) = (2.0 * chloroplast * k1_0 * RuBP * CO2) - (chloroplast * k1_1 * PGA * ATP);
    der(TP) = (chloroplast * k1_1 * PGA * ATP) - (2.0 * chloroplast * (k1_2 * pow(TP, 2) - k2_2 * HeP * Pi)) - (chloroplast * k1_4 * E4P * TP) - (chloroplast * k1_6 * TPGA * TP) - (k1_11 * TP * Pic);
    der(HeP) = (chloroplast * (k1_2 * pow(TP, 2) - k2_2 * HeP * Pi)) + (chloroplast * k1_10 * GG * Pi) - (chloroplast * k1_3 * HeP) - (chloroplast * k1_9 * ATP * HeP);
    der(TPGA) = (chloroplast * k1_3 * HeP) + (chloroplast * k1_5 * S7P) - (chloroplast * k1_6 * TPGA * TP);
    der(E4P) = (chloroplast * k1_3 * HeP) - (chloroplast * k1_4 * E4P * TP);
    der(S7P) = (chloroplast * k1_4 * E4P * TP) - (chloroplast * k1_5 * S7P);
    der(Ru5P) = (chloroplast * k1_5 * S7P) + (chloroplast * k1_6 * TPGA * TP) - (chloroplast * k1_7 * Ru5P * ATP);
    der(GG) = (chloroplast * k1_9 * ATP * HeP) - (chloroplast * k1_10 * GG * Pi);
    der(ATP) = (chloroplast * k1_8 * ADP * Pi) - (chloroplast * k1_1 * PGA * ATP) - (chloroplast * k1_7 * Ru5P * ATP) - (chloroplast * k1_9 * ATP * HeP);
    der(ADP) = (chloroplast * k1_1 * PGA * ATP) + (chloroplast * k1_7 * Ru5P * ATP) + (chloroplast * k1_9 * ATP * HeP) - (chloroplast * k1_8 * ADP * Pi);
    der(UTP) = (k1_14 * UDP * Pic) - (function_1(v_15));
    der(UDP) = (function_1(v_15)) - (k1_14 * UDP * Pic);
    der(Pi) = (chloroplast * k1_1 * PGA * ATP) + (chloroplast * (k1_2 * pow(TP, 2) - k2_2 * HeP * Pi)) + (chloroplast * k1_4 * E4P * TP) + (2.0 * chloroplast * k1_9 * ATP * HeP) + (k1_11 * TP * Pic) - (chloroplast * k1_8 * ADP * Pi) - (chloroplast * k1_10 * GG * Pi);
    der(CO2) = 0.0;
    der(TPc) = (k1_11 * TP * Pic) - (2.0 * cytosol * k1_12 * pow(TPc, 2));
    der(HePc) = (cytosol * k1_12 * pow(TPc, 2)) - (2.0 * function_1(v_15));
    der(Suc) = (function_1(v_15)) - (r * Suc) - (D * Suc - D * SucV) - (phi * Suc - phi * E);
    der(Pic) = (cytosol * k1_12 * pow(TPc, 2)) + (3.0 * function_1(v_15)) - (k1_11 * TP * Pic) - (k1_14 * UDP * Pic);
    der(SucV) = (D * Suc - D * SucV) ;
    der(E) = 0.0;
    der(Resp) = 0.0;




end BIOMD389;
