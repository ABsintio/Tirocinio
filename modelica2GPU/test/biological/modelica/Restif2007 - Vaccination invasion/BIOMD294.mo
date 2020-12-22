
model BIOMD294 "Restif2007 - Vaccination invasion"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;



    parameter Real l_e = 50.0;
    parameter Real R0 = 17.0;
    parameter Real p = 1.0;
    parameter Real tau = 0.7;
    parameter Real theta = 0.5;
    parameter Real nu = 0.5;
    parameter Real eta = 0.5;
    parameter Real tInf = 21.0;
    parameter Real tImm = 20.0;
    parameter Real tImm_V = 50.0;
    parameter Real env = 1.0;

    Real mu(start=0.0);
    Real beta(start=0.0);
    Real gamma(start=0.0);
    Real sigma(start=0.0);
    Real sigmaV(start=0.0);
    Real strain1_frac(start=0.0);
    Real strain2_frac(start=0.0);
    Real S_frac(start=0.0);
    Real V_frac(start=0.0);
    Real R_1_frac(start=0.0);
    Real R_2_frac(start=0.0);
    Real R_frac(start=0.0);

    Real N;
    Real S;
    Real I1;
    Real I2;
    Real R1;
    Real R2;
    Real V;
    Real Iv2;
    Real J2;
    Real J1;
    Real R;

initial equation
    N = 1.0;
    S = 0.0588235;
    I1 = 0.00176967;
    I2 = 1e-06;
    R1 = 0.439407;
    R2 = 0.0;
    V = 0.9;
    Iv2 = 0.5;
    J2 = 0.0;
    J1 = 0.0;
    R = 0.0;

equation
    mu = 1 / l_e;
    beta = R0 * (gamma + mu);
    gamma = 365 / tInf;
    sigma = 1 / tImm;
    sigmaV = 1 / tImm_V;
    strain1_frac = (I1 + J1) / N;
    strain2_frac = (I2 + J2 + Iv2) / N;
    S_frac = S / N;
    V_frac = V / N;
    R_1_frac = (R1 + R) / N;
    R_2_frac = (R2 + R) / N;
    R_frac = R / N;
    der(N) = 0.0;
    der(S) = (mu * (1 - p) * N) + (sigma * R1) + (sigma * R2) + (sigma * R) + (sigmaV * V) - (mu * S) - (beta * S * ((I1 + J1) / N)) - (beta * S * ((I2 + J2 + Iv2) / N));
    der(I1) = (beta * S * ((I1 + J1) / N)) - (mu * I1) - (gamma * I1);
    der(I2) = (beta * S * ((I2 + J2 + Iv2) / N)) - (mu * I2) - (gamma * I2);
    der(R1) = (gamma * I1) - (mu * R1) - (beta * (1 - theta) * R1 * (I2 + J2 + Iv2) / N) - (sigma * R1);
    der(R2) = (gamma * I2) - (mu * R2) - (beta * (1 - theta) * R2 * (I1 + J1) / N) - (sigma * R2);
    der(V) = (mu * p * N) - (mu * V) - (beta * (1 - tau) * V * ((I2 + J2 + Iv2) / N)) - (sigmaV * V);
    der(Iv2) = (beta * (1 - tau) * V * ((I2 + J2 + Iv2) / N)) - (mu * Iv2) - ((gamma / (1 - eta)) * Iv2);
    der(J2) = (beta * (1 - theta) * R1 * (I2 + J2 + Iv2) / N) - (mu * J2) - ((gamma / (1 - nu)) * J2);
    der(J1) = (beta * (1 - theta) * R2 * (I1 + J1) / N) - (mu * J1) - ((gamma / (1 - nu)) * J1);
    der(R) = ((gamma / (1 - nu)) * J1) + ((gamma / (1 - nu)) * J2) + ((gamma / (1 - eta)) * Iv2) - (mu * R) - (sigma * R);




end BIOMD294;
