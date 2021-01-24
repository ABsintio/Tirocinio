
model BIOMD502 "Messiha2013 - Pentose phosphate pathway model"

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



    parameter Real sum_NADP = 0.33;
    parameter Real Kx5p_TAL = 0.67;
    parameter Real Ke4p_TAL = 0.946;
    parameter Real Kr5p_TAL = 0.235;
    parameter Real Kgap_TAL = 0.1;
    parameter Real Kf6p_TAL = 1.1;
    parameter Real Ks7p_TAL = 0.15;
    parameter Real kcat_GND1_0 = 28.0;
    parameter Real Kp6g_GND1_0 = 0.062;
    parameter Real Knadp_GND1_0 = 0.094;
    parameter Real Kru5p_GND1_0 = 0.1;
    parameter Real Knadph_GND1_0 = 0.055;
    parameter Real kcat_GND2_0 = 27.3;
    parameter Real Kp6g_GND2_0 = 0.115;
    parameter Real Knadp_GND2_0 = 0.094;
    parameter Real Kru5p_GND2_0 = 0.1;
    parameter Real Knadph_GND2_0 = 0.055;
    parameter Real kcat_1 = 335.0;
    parameter Real Kru5p_1 = 2.47;
    parameter Real Kr5p_1 = 5.7;
    parameter Real Kiru5p_1 = 9.88;
    parameter Real Keq_1 = 4.0;
    parameter Real kcat_2 = 4020.0;
    parameter Real Kru5p_2 = 5.97;
    parameter Real Kx5p_2 = 7.7;
    parameter Real Keq_2 = 1.4;
    parameter Real kcat_3 = 4.3;
    parameter Real Kg6l_3 = 0.8;
    parameter Real Kp6g_3 = 0.5;
    parameter Real kcat_TAL1_4 = 0.694;
    parameter Real Kgap_TAL1_4 = 0.272;
    parameter Real Ks7p_TAL1_4 = 0.786;
    parameter Real Kf6p_TAL1_4 = 1.44;
    parameter Real Ke4p_TAL1_4 = 0.362;
    parameter Real kcat_NQM1_4 = 0.694;
    parameter Real Kgap_NQM1_4 = 0.272;
    parameter Real Ks7p_NQM1_4 = 0.786;
    parameter Real Kf6p_NQM1_4 = 1.04;
    parameter Real Ke4p_NQM1_4 = 0.305;
    parameter Real Keq_4 = 1.05;
    parameter Real kcat_5 = 47.1;
    parameter Real Keq_5 = 10.0;
    parameter Real kcat_6 = 40.5;
    parameter Real Keq_6 = 1.2;
    parameter Real kcat_7 = 189.0;
    parameter Real Kg6p_7 = 0.042;
    parameter Real Knadp_7 = 0.045;
    parameter Real Kg6l_7 = 0.01;
    parameter Real Knadph_7 = 0.017;
    parameter Real k_8 = 1.0;
    parameter Real k_9 = 1.0;
    parameter Real k_10 = 1.0;
    parameter Real cell = 1.0;



    Real E4P;
    Real G6L;
    Real NADPH;
    Real P6G;
    Real R5P;
    Real Ru5P;
    Real S7P;
    Real X5P;
    Real NADP;
    Real G6P;
    Real F6P;
    Real GAP;
    Real GND1;
    Real GND2;
    Real NQM1;
    Real RKI1;
    Real RPE1;
    Real SOL3;
    Real TAL1;
    Real TKL1;
    Real ZWF1;

initial equation
    E4P = 0.029;
    G6L = 0.1;
    NADPH = 0.16;
    P6G = 0.25;
    R5P = 0.118;
    Ru5P = 0.033;
    S7P = 0.082;
    X5P = 0.041;
    F6P = 0.325;
    GAP = 0.067;
    GND1 = 0.013;
    GND2 = 0.003;
    NQM1 = 0.02;
    RKI1 = 0.05;
    RPE1 = 0.03;
    SOL3 = 0.0296;
    TAL1 = 0.144;
    TKL1 = 0.455;
    ZWF1 = 0.02;

equation
    G6P = 0.9 + piecewise(44.1 * t / (48 + t + 0.45 * pow(t, 2)), geq(t, 0), 0);
    NADP = sum_NADP - NADPH;
    der(E4P) = (cell * (TAL1 * kcat_TAL1_4 * (GAP * S7P - F6P * E4P / Keq_4) / (Kgap_TAL1_4 * Ks7p_TAL1_4) / ((1 + GAP / Kgap_TAL1_4 + F6P / Kf6p_TAL1_4) * (1 + S7P / Ks7p_TAL1_4 + E4P / Ke4p_TAL1_4)) + NQM1 * kcat_NQM1_4 * (GAP * S7P - F6P * E4P / Keq_4) / (Kgap_NQM1_4 * Ks7p_NQM1_4) / ((1 + GAP / Kgap_NQM1_4 + F6P / Kf6p_NQM1_4) * (1 + S7P / Ks7p_NQM1_4 + E4P / Ke4p_NQM1_4)))) - (cell * TKL1 * kcat_5 * (X5P * E4P - GAP * F6P / Keq_5) / (Kx5p_TAL * Ke4p_TAL) / ((1 + X5P / Kx5p_TAL + GAP / Kgap_TAL) * (1 + E4P / Ke4p_TAL + F6P / Kf6p_TAL + R5P / Kr5p_TAL + S7P / Ks7p_TAL))) - (cell * k_9 * E4P);
    der(G6L) = (cell * ZWF1 * kcat_7 * G6P * NADP / (Kg6p_7 * Knadp_7) / ((1 + G6P / Kg6p_7 + G6L / Kg6l_7) * (1 + NADP / Knadp_7 + NADPH / Knadp_7h))) - (cell * SOL3 * kcat_3 * G6L / Kg6l_3 / (1 + G6L / Kg6l_3 + P6G / Kp6g_3));
    der(NADPH) = (cell * (GND1 * kcat_GND1_0 * P6G * NADP / (Kp6g_GND1_0 * Knadp_GND1_0) / ((1 + P6G / Kp6g_GND1_0 + Ru5P / Kru5p_GND1_0) * (1 + NADP / Knadp_GND1_0 + NADPH / Knadph_GND1_0)) + GND2 * kcat_GND2_0 * P6G * NADP / ((1 + P6G / Kp6g_GND2_0 + Ru5P / Kru5p_GND2_0) * (1 + NADP / Knadp_GND2_0 + NADPH / Knadph_GND2_0)))) + (cell * ZWF1 * kcat_7 * G6P * NADP / (Kg6p_7 * Knadp_7) / ((1 + G6P / Kg6p_7 + G6L / Kg6l_7) * (1 + NADP / Knadp_7 + NADPH / Knadp_7h))) - (cell * k_8 * NADPH);
    der(P6G) = (cell * SOL3 * kcat_3 * G6L / Kg6l_3 / (1 + G6L / Kg6l_3 + P6G / Kp6g_3)) - (cell * (GND1 * kcat_GND1_0 * P6G * NADP / (Kp6g_GND1_0 * Knadp_GND1_0) / ((1 + P6G / Kp6g_GND1_0 + Ru5P / Kru5p_GND1_0) * (1 + NADP / Knadp_GND1_0 + NADPH / Knadph_GND1_0)) + GND2 * kcat_GND2_0 * P6G * NADP / ((1 + P6G / Kp6g_GND2_0 + Ru5P / Kru5p_GND2_0) * (1 + NADP / Knadp_GND2_0 + NADPH / Knadph_GND2_0))));
    der(R5P) = (cell * RKI1 * kcat_1 * (Ru5P - R5P / Keq_1) / Kru5p_1 / (1 + Ru5P / Kru5p_1 + R5P / Kr5p_1)) - (cell * TKL1 * kcat_6 * (X5P * R5P - GAP * S7P / Keq_6) / (Kx5p_TAL * Kr5p_TAL) / ((1 + X5P / Kx5p_TAL + GAP / Kgap_TAL) * (1 + E4P / Ke4p_TAL + F6P / Kf6p_TAL + R5P / Kr5p_TAL + S7P / Ks7p_TAL))) - (cell * k_10 * R5P);
    der(Ru5P) = (cell * (GND1 * kcat_GND1_0 * P6G * NADP / (Kp6g_GND1_0 * Knadp_GND1_0) / ((1 + P6G / Kp6g_GND1_0 + Ru5P / Kru5p_GND1_0) * (1 + NADP / Knadp_GND1_0 + NADPH / Knadph_GND1_0)) + GND2 * kcat_GND2_0 * P6G * NADP / ((1 + P6G / Kp6g_GND2_0 + Ru5P / Kru5p_GND2_0) * (1 + NADP / Knadp_GND2_0 + NADPH / Knadph_GND2_0)))) - (cell * RKI1 * kcat_1 * (Ru5P - R5P / Keq_1) / Kru5p_1 / (1 + Ru5P / Kru5p_1 + R5P / Kr5p_1)) - (cell * RPE1 * kcat_2 * (Ru5P - X5P / Keq_2) / Kru5p_2 / (1 + Ru5P / Kru5p_2 + X5P / Kx5p_2));
    der(S7P) = (cell * TKL1 * kcat_6 * (X5P * R5P - GAP * S7P / Keq_6) / (Kx5p_TAL * Kr5p_TAL) / ((1 + X5P / Kx5p_TAL + GAP / Kgap_TAL) * (1 + E4P / Ke4p_TAL + F6P / Kf6p_TAL + R5P / Kr5p_TAL + S7P / Ks7p_TAL))) - (cell * (TAL1 * kcat_TAL1_4 * (GAP * S7P - F6P * E4P / Keq_4) / (Kgap_TAL1_4 * Ks7p_TAL1_4) / ((1 + GAP / Kgap_TAL1_4 + F6P / Kf6p_TAL1_4) * (1 + S7P / Ks7p_TAL1_4 + E4P / Ke4p_TAL1_4)) + NQM1 * kcat_NQM1_4 * (GAP * S7P - F6P * E4P / Keq_4) / (Kgap_NQM1_4 * Ks7p_NQM1_4) / ((1 + GAP / Kgap_NQM1_4 + F6P / Kf6p_NQM1_4) * (1 + S7P / Ks7p_NQM1_4 + E4P / Ke4p_NQM1_4))));
    der(X5P) = (cell * RPE1 * kcat_2 * (Ru5P - X5P / Keq_2) / Kru5p_2 / (1 + Ru5P / Kru5p_2 + X5P / Kx5p_2)) - (cell * TKL1 * kcat_5 * (X5P * E4P - GAP * F6P / Keq_5) / (Kx5p_TAL * Ke4p_TAL) / ((1 + X5P / Kx5p_TAL + GAP / Kgap_TAL) * (1 + E4P / Ke4p_TAL + F6P / Kf6p_TAL + R5P / Kr5p_TAL + S7P / Ks7p_TAL))) - (cell * TKL1 * kcat_6 * (X5P * R5P - GAP * S7P / Keq_6) / (Kx5p_TAL * Kr5p_TAL) / ((1 + X5P / Kx5p_TAL + GAP / Kgap_TAL) * (1 + E4P / Ke4p_TAL + F6P / Kf6p_TAL + R5P / Kr5p_TAL + S7P / Ks7p_TAL)));
    der(F6P) = 0.0;
    der(GAP) = 0.0;
    der(GND1) = 0.0;
    der(GND2) = 0.0;
    der(NQM1) = 0.0;
    der(RKI1) = 0.0;
    der(RPE1) = 0.0;
    der(SOL3) = 0.0;
    der(TAL1) = 0.0;
    der(TKL1) = 0.0;
    der(ZWF1) = 0.0;




end BIOMD502;
