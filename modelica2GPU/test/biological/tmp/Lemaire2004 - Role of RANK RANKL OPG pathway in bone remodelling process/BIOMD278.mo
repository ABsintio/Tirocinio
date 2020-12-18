
model BIOMD278 "Lemaire2004 - Role of RANK RANKL OPG pathway in bone remodelling process"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real C_s = 0.005;
    parameter Real D_A = 0.7;
    parameter Real d_B = 0.7;
    parameter Real D_C = 0.0021;
    parameter Real D_R = 0.0007;
    parameter Real f0 = 0.05;
    parameter Real I_L = 0.0;
    parameter Real I_O = 0.0;
    parameter Real I_P = 0.0;
    parameter Real K = 10.0;
    parameter Real k1 = 0.01;
    parameter Real k2 = 10.0;
    parameter Real k3 = 0.00058;
    parameter Real k4 = 0.017;
    parameter Real k5 = 0.02;
    parameter Real k6 = 3.0;
    parameter Real k_B = 0.189;
    parameter Real K_L_P = 3000000.0;
    parameter Real kO = 0.35;
    parameter Real K_O_P = 200000.0;
    parameter Real k_P = 86.0;
    parameter Real r_L = 1000.0;
    parameter Real S_P = 250.0;
    parameter Real Compartment = 1.0;

    Real Phi_C(start=0.0);
    Real D_B(start=0.0);
    Real Phi_L(start=0.0);
    Real Phi_P(start=0.0);
    Real Pbar(start=0.0);
    Real P_O(start=0.0);
    Real P_S(start=0.0);

    Real R;
    Real B;
    Real C;

initial equation
    R = 0.0007734;
    B = 0.0007282;
    C = 0.0009127;

equation
    D_B = f0 * d_B;
    Phi_C = (C + f0 * C_s) / (C + C_s);
    Phi_L = k3 / k4 * K_L_P * Phi_P * B / (1 + k3 * K / k4 + k1 / (k2 * kO) * (I_O + K_O_P * R / Phi_P)) * (1 + I_L / r_L);
    Phi_P = (Pbar + P_O) / (Pbar + P_S);
    Pbar = I_P / k_P;
    P_O = S_P / k_P;
    P_S = k6 / k5;
    der(R) = D_R * Phi_C - D_B * R / Phi_C;
    der(B) = D_B * R / Phi_C - k_B * B;
    der(C) = D_C * Phi_L - D_A * Phi_C * C;




end BIOMD278;
