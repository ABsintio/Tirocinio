
model BIOMD245 "Lei2001_Yeast_Aerobic_Metabolism"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real k_1h = 0.584;
    parameter Real K_1h = 0.0116;
    parameter Real k_1l = 1.43;
    parameter Real K_1l = 0.94;
    parameter Real k_1e = 47.1;
    parameter Real K_1e = 0.12;
    parameter Real K_1i = 14.2;
    parameter Real k_2 = 0.501;
    parameter Real K_2 = 2e-05;
    parameter Real K_2i = 0.101;
    parameter Real k_3 = 5.81;
    parameter Real K_3 = 5e-07;
    parameter Real k_4 = 4.8;
    parameter Real K_4 = 0.000264;
    parameter Real k_5 = 0.0104;
    parameter Real K_5 = 0.0102;
    parameter Real k_5e = 0.775;
    parameter Real K_5e = 0.1;
    parameter Real K_5i = 440.0;
    parameter Real k_6 = 2.82;
    parameter Real K_6 = 0.034;
    parameter Real k_6r = 0.0125;
    parameter Real K_6e = 0.057;
    parameter Real k_7 = 1.203;
    parameter Real K_7 = 0.0101;
    parameter Real k_8 = 0.589;
    parameter Real k_9 = 0.008;
    parameter Real K_9 = 1e-06;
    parameter Real k_9e = 0.0751;
    parameter Real K_9e = 13.0;
    parameter Real K_9i = 25.0;
    parameter Real k_9c = 0.00399;
    parameter Real k_10 = 0.392;
    parameter Real K_10 = 0.0023;
    parameter Real k_10e = 0.00339;
    parameter Real K_10e = 0.0018;
    parameter Real k_11 = 0.02;
    parameter Real D = 0.1;
    parameter Real env = 1.0;
    parameter Real cell = 1.0;

    Real qO2(start=0.0);
    Real qCO2(start=0.0);
    Real X_a(start=0.1);
    Real X_AcDH(start=0.0075);

    Real s_glu;
    Real s_pyr;
    Real s_acetate;
    Real s_acetald;
    Real s_EtOH;
    Real x;
    Real a;
    Real AcDH;
    Real CO2;
    Real Red;
    Real S_f;

initial equation
    s_glu = 15.0;
    s_pyr = 0.0;
    s_acetate = 0.0;
    s_acetald = 0.0;
    s_EtOH = 0.0;
    x = 0.002;
    CO2 = 0.0;
    Red = 0.0;
    S_f = 15.0;

equation
    a = x * X_a;
    AcDH = x * X_AcDH;
    qO2 = 1000 / 32 * (0.178 * r1 + 0.908 * r2 + 0.363 * r4 + 1.066 * r5 - 0.363 * r6 + 0.063 * r7 + 0.214 * r8) / (x * env);
    qCO2 = 1000 / 44.01 * (1.499 * r2 + 0.5 * r3 + 1.466 * r5 + 0.127 * r7 + 0.325 * r8) / (x * env);
    der(X_a) = ((0.732 * r7 + 0.619 * r8) * (1 - X_a) - r9 - r10) / (x * env);
    der(X_AcDH) = (r9 - r11 - (0.732 * r7 + 0.619 * r8) * X_AcDH) / (x * env);
    der(s_glu) = (S_f * D * env) - ((k_1l * s_glu / (s_glu + K_1l) + k_1h * s_glu / (s_glu + K_1h) + k_1e * s_acetald * s_glu / (s_glu * (K_1i * s_acetald + 1) + K_1e)) * x * X_a * env) - ((k_7 * s_glu / (s_glu + K_7)) * x * X_a * env) - (s_glu * D * env);
    der(s_pyr) = (0.978 * (k_1l * s_glu / (s_glu + K_1l) + k_1h * s_glu / (s_glu + K_1h) + k_1e * s_acetald * s_glu / (s_glu * (K_1i * s_acetald + 1) + K_1e)) * x * X_a * env) - ((k_2 * s_pyr / ((s_pyr + K_2) * (K_2i * s_glu + 1))) * x * X_a * env) - ((k_3 * s_pyr^4 / (s_pyr^4 + K_3)) * x * X_a * env) - (s_pyr * D * env);
    der(s_acetate) = (1.363 * (k_4 * s_acetald / (s_acetald + K_4)) * x * X_a * X_AcDH * env) - ((k_5 * s_acetate / (s_acetate + K_5) + k_5e * s_acetate / ((s_acetate + K_5e) * (1 + K_5i * s_glu))) * x * X_a * env) - ((k_8 * s_acetate / ((s_acetate + K_5e) * (1 + K_5i * s_glu))) * x * X_a * env) - (s_acetate * D * env);
    der(s_acetald) = (0.5 * (k_3 * s_pyr^4 / (s_pyr^4 + K_3)) * x * X_a * env) - ((k_4 * s_acetald / (s_acetald + K_4)) * x * X_a * X_AcDH * env) - ((k_6 * (s_acetald - k_6r * s_EtOH) / (s_acetald + K_6 + K_6e * s_EtOH)) * x * X_a * env) - (s_acetald * D * env);
    der(s_EtOH) = (1.045 * (k_6 * (s_acetald - k_6r * s_EtOH) / (s_acetald + K_6 + K_6e * s_EtOH)) * x * X_a * env) - (s_EtOH * D * env);
    der(x) = (0.732 * (k_7 * s_glu / (s_glu + K_7)) * x * X_a * env) + (0.619 * (k_8 * s_acetate / ((s_acetate + K_5e) * (1 + K_5i * s_glu))) * x * X_a * env) - (x * D * env);
    der(CO2) = 0.0;
    der(Red) = 0.0;
    der(S_f) = 0.0;




end BIOMD245;
