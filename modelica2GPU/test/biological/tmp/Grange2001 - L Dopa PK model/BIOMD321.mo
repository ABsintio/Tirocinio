
model BIOMD321 "Grange2001 - L Dopa PK model"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;



    parameter Real F_G = 0.24;
    parameter Real Q = 0.828;
    parameter Real f_H = 0.13;
    parameter Real f_AADC = 0.69;
    parameter Real f_COMT = 0.1;
    parameter Real CL_dopa0 = 0.823;
    parameter Real ka_b = 2.11;
    parameter Real CL_OMD = 0.012;
    parameter Real L_Dopa_per_kg_rat = 404.0;
    parameter Real rat_body_mass = 0.25;
    parameter Real gut = 1.0;
    parameter Real Vdopa = 1.0;
    parameter Real V_3_OMD = 1.0;

    Real F_b(start=0.0);
    Real F_H(start=0.0);
    Real CL_H(start=0.0);
    Real CL_dopa(start=0.0);
    Real f_rest(start=0.0);
    Real CL_AADC(start=0.0);
    Real CL_rest(start=0.0);
    Real CL_COMT(start=0.0);

    Real A_dopa;
    Real C_dopa;
    Real C_OMD;

initial equation
    A_dopa = L_Dopa_per_kg_rat * rat_body_mass;
    C_dopa = 0.0;
    C_OMD = 0.0;

equation
    F_b = F_H * F_G;
    F_H = 1 - CL_H / Q;
    CL_H = f_H * CL_dopa;
    CL_dopa = CL_AADC + CL_rest + CL_COMT;
    f_rest = 1 - (f_AADC + f_COMT);
    CL_AADC = CL_dopa0 * f_AADC;
    CL_rest = CL_dopa0 * f_rest;
    CL_COMT = CL_dopa0 * f_COMT;
    der(A_dopa) =  - (ka_b * A_dopa * F_b) - (ka_b * A_dopa * (1 - F_b));
    der(C_dopa) = (ka_b * A_dopa * F_b) - (CL_AADC * C_dopa) - (CL_COMT * C_dopa) - (CL_rest * C_dopa);
    der(C_OMD) = (CL_COMT * C_dopa) - (CL_OMD * C_OMD);




end BIOMD321;
