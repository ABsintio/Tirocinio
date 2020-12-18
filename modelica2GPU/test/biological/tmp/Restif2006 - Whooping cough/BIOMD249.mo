
model BIOMD249 "Restif2006 - Whooping cough"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real l_e = 50.0;
    parameter Real R0_1 = 17.0;
    parameter Real R0_2 = 17.0;
    parameter Real tInf_1 = 21.0;
    parameter Real tInf_2 = 21.0;
    parameter Real tImm = 20.0;
    parameter Real psi = 0.2;
    parameter Real env = 1.0;

    Real mu(start=0.0);
    Real beta_1(start=0.0);
    Real gamma_1(start=0.0);
    Real beta_2(start=0.0);
    Real gamma_2(start=0.0);
    Real sigma(start=0.0);
    Real Lambda_1(start=0.0);
    Real Lambda_2(start=0.0);
    Real I_1_frac(start=0.0);
    Real I_2_frac(start=0.0);
    Real S_frac(start=0.0);
    Real R1_frac(start=0.0);
    Real R2_frac(start=0.0);
    Real Rp_frac(start=0.0);

    Real N;
    Real S;
    Real I_1;
    Real I_2;
    Real R_1;
    Real R_2;
    Real I_1p;
    Real I_2p;
    Real R_p;

initial equation
    N = 1.0;
    S = 0.0588912;
    I_1 = 0.003775;
    I_2 = 1e-06;
    R_1 = 0.93733;
    R_2 = 0.0;
    I_1p = 0.0;
    I_2p = 0.0;
    R_p = 0.0;

equation
    mu = 1 / l_e;
    beta_1 = R0_1 * gamma_1;
    gamma_1 = 365 / tInf_1;
    beta_2 = R0_2 * gamma_2;
    gamma_2 = 365 / tInf_2;
    sigma = 1 / tImm;
    Lambda_1 = beta_1 * (I_1 + I_1p) / N;
    Lambda_2 = beta_2 * (I_2 + I_2p) / N;
    I_1_frac = (I_1 + I_1p) / N;
    I_2_frac = (I_2 + I_2p) / N;
    S_frac = S / N;
    R1_frac = (R_1 + R_p) / N;
    R2_frac = (R_2 + R_p) / N;
    Rp_frac = R_p / N;
    der(N) = 0.0;
    der(S) = (mu * N) + (sigma * R_1) + (sigma * R_2) + (sigma * R_p) - (mu * S) - (beta_1 * ((I_1 + I_1p) / N) * S) - (beta_2 * ((I_2 + I_2p) / N) * S);
    der(I_1) = (beta_1 * ((I_1 + I_1p) / N) * S) - (mu * I_1) - (gamma_1 * I_1);
    der(I_2) = (beta_2 * ((I_2 + I_2p) / N) * S) - (mu * I_2) - (gamma_2 * I_2);
    der(R_1) = (gamma_1 * I_1) - (mu * R_1) - (((1 - psi) * beta_2 * (I_2 + I_2p) / N) * R_1) - (sigma * R_1);
    der(R_2) = (gamma_2 * I_2) - (mu * R_2) - (((1 - psi) * beta_1 * (I_1 + I_1p) / N) * R_2) - (sigma * R_2);
    der(I_1p) = (((1 - psi) * beta_1 * (I_1 + I_1p) / N) * R_2) - (mu * I_1p) - (gamma_1 * I_1p);
    der(I_2p) = (((1 - psi) * beta_2 * (I_2 + I_2p) / N) * R_1) - (mu * I_2p) - (gamma_2 * I_2p);
    der(R_p) = (gamma_1 * I_1p) + (gamma_2 * I_2p) - (mu * R_p) - (sigma * R_p);




end BIOMD249;
