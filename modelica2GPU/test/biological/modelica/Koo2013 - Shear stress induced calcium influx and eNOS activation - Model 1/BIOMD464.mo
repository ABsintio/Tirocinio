
model BIOMD464 "Koo2013 - Shear stress induced calcium influx and eNOS activation - Model 1"

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



    parameter Real R_T = 44000.0;
    parameter Real k1 = 0.0006;
    parameter Real k2 = 1.0;
    parameter Real k3 = 3.32;
    parameter Real k4 = 2500.0;
    parameter Real k5 = 5e-11;
    parameter Real k6 = 0.05;
    parameter Real k7 = 150.0;
    parameter Real K1 = 0.0;
    parameter Real K2 = 200.0;
    parameter Real K3 = 150.0;
    parameter Real K4 = 80.0;
    parameter Real K5 = 321.0;
    parameter Real K_hi = 380.0;
    parameter Real k_CICR = 1.0;
    parameter Real K_CICR = 0.0;
    parameter Real k_CCE = 0.0;
    parameter Real B_T = 120000.0;
    parameter Real dot_Vp = 815.0;
    parameter Real dot_Vex = 9165.0;
    parameter Real dot_Vhi = 2380.0;
    parameter Real dot_q_inpass = 3000.0;
    parameter Real Cao = 100.0;
    parameter Real tau_I = 66.0;
    parameter Real tau_II = 0.01;
    parameter Real half = 0.5;
    parameter Real fracK = 7071067.81;
    parameter Real unisec_8 = 1.0;
    parameter Real default = 1.0;
    parameter Real c1 = 1.0;
    parameter Real c2 = 1.0;



    Real s1;
    Real s2;
    Real s3;
    Real s4;
    Real s5;
    Real s6;
    Real s7;
    Real s8;
    Real s9;
    Real s10;
    Real s11;
    Real s12;
    Real s13;
    Real s119;

initial equation
    s1 = 1500000.0;
    s2 = 2830000.0;
    s3 = 117.2;
    s4 = 3870.0;
    s5 = 0.0;
    s6 = 0.0;
    s7 = 0.0;
    s8 = 0.0;
    s9 = 0.0;
    s10 = 0.0;
    s11 = 0.0;
    s12 = 0.0;
    s13 = 0.0;
    s119 = 0.0;

equation

    der(s1) = 0.0;
    der(s2) = (k_CCE * (fracK * Cao / (K3 + Cao) - s2) * (s1 - s2)) - (k3 * (k_CICR * s3 / (K_CICR + s3)) * pow(s6 / (K2 + s6), 3) * s2 - k4 * pow(s3 / (K3 + s3), 2) + k5 * s2 * s2);
    der(s3) = ((-k6 * s3 * (B_T - s4) + k7 * s4)) + (k3 * (k_CICR * s3 / (K_CICR + s3)) * pow(s6 / (K2 + s6), 3) * s2 - k4 * pow(s3 / (K3 + s3), 2) + k5 * s2 * s2) + (dot_q_inpass) - (dot_Vhi * pow(s3, 4) / (pow(K_hi, 4) + pow(s3, 4))) - (dot_Vex * s3 / (K5 + s3)) - (dot_Vp * pow(s3, 2) / (pow(K4, 2) + pow(s3, 2)));
    der(s4) =  - (-k6 * s3 * (B_T - s4) + k7 * s4);
    der(s5) =  - (k_CCE * (fracK * Cao / (K3 + Cao) - s2) * (s1 - s2));
    der(s6) = (k1 * (R_T - half * R_T * (exp(-s12 / tau_I) + exp(-s12 / tau_II) + (exp(-s12 / tau_I) - exp(-s12 / tau_II)) * (tau_I + tau_II) / (tau_I - tau_II))) * s3 / (K1 + s3)) - (k2 * s6);
    der(s7) =  - (k1 * (R_T - half * R_T * (exp(-s12 / tau_I) + exp(-s12 / tau_II) + (exp(-s12 / tau_I) - exp(-s12 / tau_II)) * (tau_I + tau_II) / (tau_I - tau_II))) * s3 / (K1 + s3));
    der(s8) = (k2 * s6) ;
    der(s9) = (dot_Vhi * pow(s3, 4) / (pow(K_hi, 4) + pow(s3, 4))) + (dot_Vp * pow(s3, 2) / (pow(K4, 2) + pow(s3, 2))) ;
    der(s10) = (dot_Vex * s3 / (K5 + s3)) ;
    der(s11) =  - (dot_q_inpass);
    der(s12) = (unisec_8) ;
    der(s13) =  - (unisec_8);
    der(s119) = 0.0;




end BIOMD464;
