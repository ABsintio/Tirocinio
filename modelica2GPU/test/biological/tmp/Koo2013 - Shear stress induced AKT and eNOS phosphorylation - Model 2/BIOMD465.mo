
model BIOMD465 "Koo2013 - Shear stress induced AKT and eNOS phosphorylation - Model 2"

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



    parameter Real normal_0 = 0.907;
    parameter Real unity_0 = 1.0;
    parameter Real unimol_0 = 1.0;
    parameter Real tf_0 = 15.0;
    parameter Real k2_1 = 0.2;
    parameter Real Km2_1 = 6170.0;
    parameter Real k3_2 = 7.5;
    parameter Real Km3_2 = 80.9;
    parameter Real k4_3 = 0.045;
    parameter Real kr4_3 = 0.089;
    parameter Real k8_4 = 20.0;
    parameter Real Km8_4 = 80000.0;
    parameter Real k10_5 = 20.0;
    parameter Real Km10_5 = 80000.0;
    parameter Real k7_6 = 0.037;
    parameter Real Km7_6 = 8800.0;
    parameter Real k9_7 = 0.04;
    parameter Real Km9_7 = 48000.0;
    parameter Real k11_8 = 0.163;
    parameter Real Km11_8 = 48000.0;
    parameter Real k5_9 = 0.0007;
    parameter Real k6_10 = 0.98;
    parameter Real unitime_11 = 1.0;
    parameter Real default = 1.0;
    parameter Real c1 = 1.0;



    Real s14;
    Real s15;
    Real s16;
    Real s17;
    Real s18;
    Real s19;
    Real s20;
    Real s21;
    Real s22;
    Real s23;
    Real s24;
    Real s25;
    Real s26;
    Real s27;
    Real s28;
    Real s119;

initial equation
    s14 = 0.246;
    s15 = 150.0;
    s16 = 167.616;
    s17 = 0.345;
    s18 = 0.1;
    s19 = 6967.271;
    s20 = 0.03;
    s21 = 0.0;
    s22 = 99.97;
    s23 = 0.0;
    s24 = 3.0;
    s25 = 999.754;
    s26 = 1.457;
    s27 = 1.723;
    s28 = 29.203;
    s119 = 0.0;

equation

    der(s14) = (k5_9 * s17 * s25) - (k6_10 * s14);
    der(s15) = 0.0;
    der(s16) = (k11_8 * s27 * s15 / (Km11_8 + s27)) - (k4_3 * s17 * s16 - kr4_3 * s28);
    der(s17) = (k2_1 * s19 * s20 / (Km2_1 + s19)) + (k11_8 * s27 * s15 / (Km11_8 + s27)) - (k3_2 * s17 * s18 / (Km3_2 + s17)) - (k4_3 * s17 * s16 - kr4_3 * s28);
    der(s18) = 0.0;
    der(s19) = (k3_2 * s17 * s18 / (Km3_2 + s17)) - (k2_1 * s19 * s20 / (Km2_1 + s19));
    der(s20) = (exp(unity_0 - pow(s23 / tf_0, 1.8)) * normal_0 * pow(s23 / unimol_0, 0.8) * (unity_0 - pow(s23 / tf_0, 1.8))) ;
    der(s21) =  - (unitime_11);
    der(s22) =  - (exp(unity_0 - pow(s23 / tf_0, 1.8)) * normal_0 * pow(s23 / unimol_0, 0.8) * (unity_0 - pow(s23 / tf_0, 1.8)));
    der(s23) = (unitime_11) ;
    der(s24) = 0.0;
    der(s25) = (k6_10 * s14) - (k5_9 * s17 * s25);
    der(s26) = (k8_4 * s28 * s14 / (Km8_4 + s28)) + (k9_7 * s27 * s15 / (Km9_7 + s27)) - (k10_5 * s26 * s24 / (Km10_5 + s26)) - (k7_6 * s26 * s15 / (Km7_6 + s26));
    der(s27) = (k10_5 * s26 * s24 / (Km10_5 + s26)) - (k9_7 * s27 * s15 / (Km9_7 + s27)) - (k11_8 * s27 * s15 / (Km11_8 + s27));
    der(s28) = (k4_3 * s17 * s16 - kr4_3 * s28) + (k7_6 * s26 * s15 / (Km7_6 + s26)) - (k8_4 * s28 * s14 / (Km8_4 + s28));
    der(s119) = 0.0;




end BIOMD465;
