
model BIOMD320 "Grange2001 - PK interaction of L-dopa and benserazide"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real F_G = 1.0;
    parameter Real Q = 0.828;
    parameter Real f_H = 0.13;
    parameter Real f_AADC = 0.69;
    parameter Real f_COMT = 0.1;
    parameter Real ki = 0.00246;
    parameter Real CL_dopa0 = 0.823;
    parameter Real ka_c = 1.29;
    parameter Real ka_M = 2.47;
    parameter Real ka_B = 0.94;
    parameter Real F_B = 0.022;
    parameter Real CL_OMD = 0.00895;
    parameter Real CL_B = 1.67;
    parameter Real fm = 0.15;
    parameter Real CL_M = 4.29;
    parameter Real CL_dB = 0.072;
    parameter Real CL_dM = 1.06;
    parameter Real L_Dopa_per_kg_rat = 404.0;
    parameter Real Benserazide_per_kg_rat = 78.0;
    parameter Real rat_body_mass = 0.25;
    parameter Real A_bens_tot = 0.0;
    parameter Real B_M_frac = 0.07;
    parameter Real gut = 1.0;
    parameter Real Vdopa = 1.0;
    parameter Real V_3_OMD = 1.0;
    parameter Real V1_B = 1.0;
    parameter Real V2_B = 1.0;
    parameter Real V1_M = 1.0;
    parameter Real V2_M = 1.0;

    Real F_c(start=0.0);
    Real F_H(start=0.0);
    Real CL_H(start=0.0);
    Real CL_dopa(start=0.0);
    Real f_rest(start=0.0);
    Real CL_AADC(start=0.0);
    Real CL_rest(start=0.0);
    Real CL_COMT(start=0.0);
    Real CL_AADC0(start=0.0);

    Real A_dopa;
    Real A_B;
    Real A_M;
    Real C_dopa;
    Real C_OMD;
    Real C1_M;
    Real C2_M;
    Real C1_B;
    Real C2_B;

initial equation
    A_dopa = 0.0;
    A_B = 0.0;
    A_M = 0.0;
    C_dopa = 0.0;
    C_OMD = 0.0;
    C1_M = 0.0;
    C2_M = 0.0;
    C1_B = 0.0;
    C2_B = 0.0;

equation
    F_c = F_H * F_G;
    F_H = 1 - CL_H / Q;
    CL_H = f_H * CL_dopa;
    CL_dopa = CL_AADC + CL_rest + CL_COMT;
    f_rest = 1 - (f_AADC + f_COMT);
    CL_AADC = CL_AADC0 / (1 + C1_M / ki);
    CL_rest = CL_dopa0 * f_rest;
    CL_COMT = CL_dopa0 * f_COMT;
    CL_AADC0 = CL_dopa0 * f_AADC;
    der(A_dopa) =  - (ka_c * A_dopa * F_c) - (ka_c * A_dopa * (1 - F_c));
    der(A_B) =  - (ka_B * A_B * F_B) - (ka_B * A_B * (1 - F_B));
    der(A_M) =  - (ka_M * A_M);
    der(C_dopa) = (ka_c * A_dopa * F_c) - (CL_AADC * C_dopa) - (CL_COMT * C_dopa) - (CL_rest * C_dopa);
    der(C_OMD) = (CL_COMT * C_dopa) - (CL_OMD * C_OMD);
    der(C1_M) = (ka_M * A_M) + ((fm / (1 - fm)) * CL_B * C1_B) - (CL_M * C1_M) - (CL_dM * (C1_M - C2_M));
    der(C2_M) = (CL_dM * (C1_M - C2_M)) ;
    der(C1_B) = (ka_B * A_B * F_B) - (CL_B * C1_B) - ((fm / (1 - fm)) * CL_B * C1_B) - (CL_dB * (C1_B - C2_B));
    der(C2_B) = (CL_dB * (C1_B - C2_B)) ;




end BIOMD320;
