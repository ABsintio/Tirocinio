
model BIOMD391 "Arnold2011_Poolman2000_CalvinCycle_Starch"

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


    function function_2
        	input Real Vm;
	input Real S;
	input Real K;
	input Real R1;
	input Real KR1;
	input Real R2;
	input Real KR2;
        output Real y;
    algorithm
        y :=  Vm * S / (S + K * (1 + R1 / KR1 + R2 / KR2));
    end function_2;


    function function_7
        	input Real Vm;
	input Real S;
	input Real KA;
	input Real A;
	input Real K;
	input Real R1;
	input Real KR1;
	input Real R2;
	input Real KR2;
	input Real R3;
	input Real KR3;
        output Real y;
    algorithm
        y :=  Vm * S / (S * (1 + KA / A) + K * (1 + (1 + KA / A) * (R1 / KR1 + R2 / KR2 + R3 / KR3)));
    end function_7;


    function function_4
        	input Real Vm;
	input Real S1;
	input Real S2;
	input Real K1;
	input Real R1;
	input Real KR1;
	input Real R2;
	input Real KR2;
	input Real R3;
	input Real KR3;
	input Real R4;
	input Real KR41;
	input Real K2;
	input Real KR42;
        output Real y;
    algorithm
        y :=  Vm * S1 * S2 / ((S1 + K1 * (1 + R1 / KR1 + R2 / KR2 + R3 / KR3)) * (S2 * (1 + R4 / KR41) + K2 * (1 + R4 / KR42)));
    end function_4;


    function function_6
        	input Real Vm;
	input Real s1;
	input Real s2;
	input Real K1;
	input Real K2;
        output Real y;
    algorithm
        y :=  Vm * s1 * s2 / ((s1 + K1) * (s2 + K2));
    end function_6;


    function function_1
        	input Real Vm;
	input Real S;
	input Real K;
	input Real R1;
	input Real KR1;
	input Real R2;
	input Real KR2;
	input Real R3;
	input Real KR3;
	input Real R4;
	input Real KR4;
	input Real R5;
	input Real KR5;
        output Real y;
    algorithm
        y :=  Vm * S / (S + K * (1 + R1 / KR1 + R2 / KR2 + R3 / KR3 + R4 / KR4 + R5 / KR5));
    end function_1;


    function function_3
        	input Real Vm;
	input Real S;
	input Real K;
	input Real R1;
	input Real KR1;
        output Real y;
    algorithm
        y :=  Vm * S / (S + K * (1 + R1 / KR1));
    end function_3;


    function function_5
        	input Real Vm;
	input Real S1;
	input Real S2;
	input Real K1;
	input Real K2;
	input Real R1;
	input Real KR1;
	input Real R2;
	input Real KA1;
	input Real A1;
	input Real KA2;
	input Real A2;
	input Real KA3;
	input Real A3;
        output Real y;
    algorithm
        y :=  Vm * S1 * S2 / ((S1 + K1) * (1 + R1 / KR1) * (S2 + K2 * (1 + K2 * R2 / (KA1 * A1 + KA2 * A2 + KA3 * A3))));
    end function_5;


    parameter Real Vm_0 = 340.0;
    parameter Real K_0 = 0.02;
    parameter Real KR1_0 = 0.84;
    parameter Real KR2_0 = 0.04;
    parameter Real KR3_0 = 0.0075;
    parameter Real KR4_0 = 0.9;
    parameter Real KR5_0 = 0.07;
    parameter Real k1_1 = 500000000.0;
    parameter Real k2_1 = 1612900000000.0;
    parameter Real k1_2 = 500000000.0;
    parameter Real k2_2 = 31.25;
    parameter Real k1_3 = 500000000.0;
    parameter Real k2_3 = 22727000.0;
    parameter Real k1_4 = 500000000.0;
    parameter Real k2_4 = 70423000.0;
    parameter Real Vm_5 = 200.0;
    parameter Real K_5 = 0.03;
    parameter Real KR1_5 = 0.7;
    parameter Real KR2_5 = 12.0;
    parameter Real k1_6 = 500000000.0;
    parameter Real k2_6 = 5952400000.0;
    parameter Real k1_7 = 500000000.0;
    parameter Real k2_7 = 38461500.0;
    parameter Real Vm_8 = 40.0;
    parameter Real K_8 = 0.02;
    parameter Real KR1_8 = 12.0;
    parameter Real k1_9 = 500000000.0;
    parameter Real k2_9 = 588240000.0;
    parameter Real k1_10 = 500000000.0;
    parameter Real k2_10 = 1250000000.0;
    parameter Real k1_11 = 500000000.0;
    parameter Real k2_11 = 746269000.0;
    parameter Real Vm_12 = 1000.0;
    parameter Real K1_12 = 0.05;
    parameter Real KR1_12 = 2.0;
    parameter Real KR2_12 = 0.7;
    parameter Real KR3_12 = 4.0;
    parameter Real KR41_12 = 2.5;
    parameter Real K2_12 = 0.05;
    parameter Real KR42_12 = 0.4;
    parameter Real k1_13 = 500000000.0;
    parameter Real k2_13 = 217400000.0;
    parameter Real k1_14 = 500000000.0;
    parameter Real k2_14 = 8621000000.0;
    parameter Real Vm_15 = 40.0;
    parameter Real K1_15 = 0.08;
    parameter Real K2_15 = 0.08;
    parameter Real KR1_15 = 10.0;
    parameter Real KA1_15 = 0.1;
    parameter Real KA2_15 = 0.02;
    parameter Real KA3_15 = 0.02;
    parameter Real Vm_16 = 40.0;
    parameter Real K_16 = 0.1;
    parameter Real KR1_16 = 0.05;
    parameter Real Vm_17 = 350.0;
    parameter Real K1_17 = 0.014;
    parameter Real K2_17 = 0.3;
    parameter Real Vm_18 = 250.0;
    parameter Real KA_18 = 0.74;
    parameter Real K_18 = 0.25;
    parameter Real KR1_18 = 0.63;
    parameter Real KR2_18 = 0.075;
    parameter Real KR3_18 = 0.077;
    parameter Real Vm_19 = 250.0;
    parameter Real KA_19 = 0.74;
    parameter Real K_19 = 0.075;
    parameter Real KR1_19 = 0.63;
    parameter Real KR2_19 = 0.25;
    parameter Real KR3_19 = 0.077;
    parameter Real Vm_20 = 250.0;
    parameter Real KA_20 = 0.74;
    parameter Real K_20 = 0.077;
    parameter Real KR1_20 = 0.63;
    parameter Real KR2_20 = 0.25;
    parameter Real KR3_20 = 0.075;
    parameter Real chloroplast = 1.0;
    parameter Real cytosol = 1.0;



    Real RuBP;
    Real PGA;
    Real DPGA;
    Real GAP;
    Real DHAP;
    Real FBP;
    Real F6P;
    Real E4P;
    Real SBP;
    Real S7P;
    Real X5P;
    Real R5P;
    Real Ru5P;
    Real G6P;
    Real G1P;
    Real ATP;
    Real ADP;
    Real NADPH;
    Real NADP;
    Real H;
    Real Pi;
    Real Pext;

initial equation
    RuBP = 2.0;
    PGA = 2.4;
    DPGA = 0.0011;
    GAP = 0.02;
    DHAP = 0.48;
    FBP = 0.669999999999999;
    F6P = 0.640764257004719;
    E4P = 0.05;
    SBP = 0.3;
    S7P = 2.0;
    X5P = 0.0747384155455904;
    R5P = 0.125186846038864;
    Ru5P = 0.0500747384155456;
    G6P = 1.47375779111085;
    G1P = 0.0854779518844294;
    ATP = 0.68;
    NADPH = 0.21;
    NADP = 0.29;
    H = 1.25892541179417e-05;
    Pext = 0.5;

equation
    Pi = 15 - 2 * (RuBP + DPGA + FBP + SBP) - (PGA + GAP + DHAP + F6P + E4P + S7P + X5P + R5P + Ru5P + G6P + G1P + ATP);
    ADP = 1.5 - ATP;
    der(RuBP) = (chloroplast * function_4(Vm_12, Ru5P, ATP, K1_12, PGA, KR1_12, RuBP, KR2_12, Pi, KR3_12, ADP, KR41_12, K2_12, KR42_12)) - (chloroplast * function_1(Vm_0, RuBP, K_0, PGA, K_0R1, FBP, K_0R2, SBP, K_0R3, Pi, K_0R4, NADPH, K_0R5));
    der(PGA) = (2.0 * chloroplast * function_1(Vm_0, RuBP, K_0, PGA, K_0R1, FBP, K_0R2, SBP, K_0R3, Pi, K_0R4, NADPH, K_0R5)) - (chloroplast * (k1_1 * PGA * ATP - k2_1 * DPGA * ADP)) - (chloroplast * function_7(Vm_18, PGA, K_18A_18, Pext, K_18, Pi, K_18R1, GAP, K_18R2, DHAP, K_18R3));
    der(DPGA) = (chloroplast * (k1_1 * PGA * ATP - k2_1 * DPGA * ADP)) - (chloroplast * (k1_2 * DPGA * NADPH * H - k2_2 * GAP * NADP * Pi));
    der(GAP) = (chloroplast * (k1_2 * DPGA * NADPH * H - k2_2 * GAP * NADP * Pi)) - (chloroplast * (k1_3 * GAP - k2_3 * DHAP)) - (chloroplast * (k1_4 * DHAP * GAP - k2_4 * FBP)) - (chloroplast * (k1_6 * GAP * F6P - k2_6 * X5P * E4P)) - (chloroplast * (k1_9 * GAP * S7P - k2_9 * X5P * R5P)) - (chloroplast * function_7(Vm_19, GAP, K_19A_19, Pext, K_19, Pi, K_19R1, PGA, K_19R2, DHAP, K_19R3));
    der(DHAP) = (chloroplast * (k1_3 * GAP - k2_3 * DHAP)) - (chloroplast * (k1_4 * DHAP * GAP - k2_4 * FBP)) - (chloroplast * (k1_7 * DHAP * E4P - k2_7 * SBP)) - (chloroplast * function_7(Vm_20, DHAP, K_20A_20, Pext, K_20, Pi, K_20R1, PGA, K_20R2, GAP, K_20R3));
    der(FBP) = (chloroplast * (k1_4 * DHAP * GAP - k2_4 * FBP)) - (chloroplast * function_2(Vm_5, FBP, K_5, F6P, K_5R1, Pi, K_5R2));
    der(F6P) = (chloroplast * function_2(Vm_5, FBP, K_5, F6P, K_5R1, Pi, K_5R2)) - (chloroplast * (k1_6 * GAP * F6P - k2_6 * X5P * E4P)) - (chloroplast * (k1_13 * F6P - k2_13 * G6P));
    der(E4P) = (chloroplast * (k1_6 * GAP * F6P - k2_6 * X5P * E4P)) - (chloroplast * (k1_7 * DHAP * E4P - k2_7 * SBP));
    der(SBP) = (chloroplast * (k1_7 * DHAP * E4P - k2_7 * SBP)) - (chloroplast * function_3(Vm_8, SBP, K_8, Pi, K_8R1));
    der(S7P) = (chloroplast * function_3(Vm_8, SBP, K_8, Pi, K_8R1)) - (chloroplast * (k1_9 * GAP * S7P - k2_9 * X5P * R5P));
    der(X5P) = (chloroplast * (k1_6 * GAP * F6P - k2_6 * X5P * E4P)) + (chloroplast * (k1_9 * GAP * S7P - k2_9 * X5P * R5P)) - (chloroplast * (k1_11 * X5P - k2_11 * Ru5P));
    der(R5P) = (chloroplast * (k1_9 * GAP * S7P - k2_9 * X5P * R5P)) - (chloroplast * (k1_10 * R5P - k2_10 * Ru5P));
    der(Ru5P) = (chloroplast * (k1_10 * R5P - k2_10 * Ru5P)) + (chloroplast * (k1_11 * X5P - k2_11 * Ru5P)) - (chloroplast * function_4(Vm_12, Ru5P, ATP, K1_12, PGA, KR1_12, RuBP, KR2_12, Pi, KR3_12, ADP, KR41_12, K2_12, KR42_12));
    der(G6P) = (chloroplast * (k1_13 * F6P - k2_13 * G6P)) - (chloroplast * (k1_14 * G6P - k2_14 * G1P));
    der(G1P) = (chloroplast * (k1_14 * G6P - k2_14 * G1P)) + (chloroplast * function_3(Vm_16, Pi, K_16, G1P, K_16R1)) - (chloroplast * function_5(Vm_15, G1P, ATP, K1_15, K2_15, ADP, KR1_15, Pi, KA1_15, PGA, KA2_15, F6P, KA3_15, FBP));
    der(ATP) = (chloroplast * function_6(Vm_17, ADP, Pi, K1_17, K2_17)) - (chloroplast * (k1_1 * PGA * ATP - k2_1 * DPGA * ADP)) - (chloroplast * function_4(Vm_12, Ru5P, ATP, K1_12, PGA, KR1_12, RuBP, KR2_12, Pi, KR3_12, ADP, KR41_12, K2_12, KR42_12)) - (chloroplast * function_5(Vm_15, G1P, ATP, K1_15, K2_15, ADP, KR1_15, Pi, KA1_15, PGA, KA2_15, F6P, KA3_15, FBP));
    der(NADPH) = 0.0;
    der(NADP) = 0.0;
    der(H) = 0.0;
    der(Pext) = 0.0;




end BIOMD391;
