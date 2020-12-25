
model BIOMD237 "Schaber2006_Pheromone_Starvation_Crosstalk"

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



    parameter Real alphaA = 1.0;
    parameter Real betaA = 1.0;
    parameter Real alphat = 0.0;
    parameter Real betat = 0.0;
    parameter Real alphas = 2.0;
    parameter Real betas = 20.0;
    parameter Real alphae = 10.0;
    parameter Real betae = 360.0;
    parameter Real k3 = 1.0;
    parameter Real k4 = 1.0;
    parameter Real k5 = 1.0;
    parameter Real k6 = 1.0;
    parameter Real k9 = 1.0;
    parameter Real k10 = 1.0;
    parameter Real k11 = 1.0;
    parameter Real k12 = 1.0;
    parameter Real k13 = 1.0;
    parameter Real k17 = 1.0;
    parameter Real k19 = 1.0;
    parameter Real k20 = 1.0;
    parameter Real k21 = 1.0;
    parameter Real k22 = 1.0;
    parameter Real k23 = 1.0;
    parameter Real k25 = 1.0;
    parameter Real k27 = 1.0;
    parameter Real k31 = 1.0;
    parameter Real k32 = 1.0;
    parameter Real k33 = 1.0;
    parameter Real k34 = 1.0;
    parameter Real k8 = 0.1;
    parameter Real k14 = 0.1;
    parameter Real k15 = 0.1;
    parameter Real k16 = 0.1;
    parameter Real k26 = 0.1;
    parameter Real k30 = 0.1;
    parameter Real k7 = 10.0;
    parameter Real k18 = 10.0;
    parameter Real k1 = 0.01;
    parameter Real k2 = 0.01;
    parameter Real k24 = 0.01;
    parameter Real k28 = 0.01;
    parameter Real k29 = 0.01;
    parameter Real alphastim = 1.0;
    parameter Real betastim = 1.0;
    parameter Real compartment = 1.0;

    Real alpha(start=0.0);
    Real beta(start=0.0);

    Real Ste5;
    Real Ste11;
    Real Ste5Ste11;
    Real Gbg;
    Real Ste5Ste11Gbg;
    Real Fus3;
    Real Ste5Ste11GbgFus3;
    Real Ste5Ste11GbgFus3P;
    Real Fus3PP;
    Real Ste5Ste11GbgP;
    Real Ste11Ubi;
    Real p;
    Real Kss1;
    Real Ste5Ste11GbgKss1;
    Real Ste5Ste11GbgKss1P;
    Real Kss1PP;
    Real Ste11P;
    Real Ste12Kss1;
    Real Ste12;
    Real Ste12P;
    Real s;
    Real PREP;
    Real Ste12TeSte5Kss1;
    Real Ste12TeSte5;
    Real Ste12TeSte5P;
    Real FREP;

initial equation
    Ste5 = 42.3;
    Ste11 = 13.3;
    Ste5Ste11 = 5.6;
    Gbg = 53.0;
    Ste5Ste11Gbg = 0.0;
    Fus3 = 217.0;
    Ste5Ste11GbgFus3 = 0.0;
    Ste5Ste11GbgFus3P = 0.0;
    Fus3PP = 0.0;
    Ste5Ste11GbgP = 0.0;
    Ste11Ubi = 0.0;
    p = 0.0;
    Kss1 = 54.4;
    Ste5Ste11GbgKss1 = 0.0;
    Ste5Ste11GbgKss1P = 0.0;
    Kss1PP = 0.0;
    Ste11P = 0.0;
    Ste12Kss1 = 35.9;
    Ste12 = 0.07;
    Ste12P = 0.0;
    s = 0.0;
    PREP = 0.0;
    Ste12TeSte5Kss1 = 13.7;
    Ste12TeSte5 = 0.25;
    Ste12TeSte5P = 0.0;
    FREP = 0.0;

equation
    alpha = alphastim * piecewise(alphaA * (1 - exp(-(time - alphat) / alphas)), ((time >= alphat) and (time <= alphae)), piecewise(alphaA * exp(-(time - alphat) / alphas), (time >= alphae), 0));
    beta = betastim * betaA * piecewise(1 - exp(-(time - betat) / betas), ((time >= betat) and (time <= betae)), piecewise(exp(-(time - betae) / betas), (time > betae), 0));
    der(Ste5) = (compartment * k27 * Ste5Ste11) - (compartment * k1 * Ste5 * Ste11) - (compartment * k7 * Ste5Ste11GbgP);
    der(Ste11) = (compartment * k14 * Ste11P) + (compartment * k27 * Ste5Ste11) - (compartment * k1 * Ste5 * Ste11) - (compartment * k13 * Ste11 * beta);
    der(Ste5Ste11) = (compartment * k1 * Ste5 * Ste11) - (compartment * k2 * Ste5Ste11 * Gbg * alpha) - (compartment * k27 * Ste5Ste11);
    der(Gbg) = (compartment * k7 * Ste5Ste11GbgP) - (compartment * k2 * Ste5Ste11 * Gbg * alpha);
    der(Ste5Ste11Gbg) = (compartment * k2 * Ste5Ste11 * Gbg * alpha) - (compartment * k3 * Ste5Ste11Gbg * Fus3) - (compartment * k9 * Ste5Ste11Gbg * Kss1);
    der(Fus3) = (compartment * k26 * Fus3PP) - (compartment * k3 * Ste5Ste11Gbg * Fus3) - (compartment * k6 * Fus3 * Ste5Ste11GbgP);
    der(Ste5Ste11GbgFus3) = (compartment * k3 * Ste5Ste11Gbg * Fus3) - (compartment * k4 * Ste5Ste11GbgFus3);
    der(Ste5Ste11GbgFus3P) = (compartment * k4 * Ste5Ste11GbgFus3) + (compartment * k6 * Fus3 * Ste5Ste11GbgP) - (compartment * k5 * Ste5Ste11GbgFus3P);
    der(Fus3PP) = (compartment * k5 * Ste5Ste11GbgFus3P) - (compartment * k26 * Fus3PP);
    der(Ste5Ste11GbgP) = (compartment * k5 * Ste5Ste11GbgFus3P) + (compartment * k11 * Ste5Ste11GbgKss1P) - (compartment * k6 * Fus3 * Ste5Ste11GbgP) - (compartment * k7 * Ste5Ste11GbgP) - (compartment * k12 * Ste5Ste11GbgP * Kss1);
    der(Ste11Ubi) = (compartment * k7 * Ste5Ste11GbgP) - (compartment * k8 * Ste11Ubi);
    der(p) = 0.0;
    der(Kss1) = (compartment * (k16 * Kss1PP + k28 * Kss1PP * Fus3PP)) + (2.0 * compartment * k17 * Ste12Kss1) + (compartment * k21 * Ste12TeSte5Kss1) - (compartment * k9 * Ste5Ste11Gbg * Kss1) - (compartment * k12 * Ste5Ste11GbgP * Kss1) - (compartment * (k15 * Kss1 * Ste11P + k30 * Kss1 * Ste11Ubi)) - (2.0 * compartment * k18 * Kss1 * Ste12) - (compartment * k22 * Kss1 * Ste12TeSte5);
    der(Ste5Ste11GbgKss1) = (compartment * k9 * Ste5Ste11Gbg * Kss1) - (compartment * k10 * Ste5Ste11GbgKss1);
    der(Ste5Ste11GbgKss1P) = (compartment * k10 * Ste5Ste11GbgKss1) + (compartment * k12 * Ste5Ste11GbgP * Kss1) - (compartment * k11 * Ste5Ste11GbgKss1P);
    der(Kss1PP) = (compartment * k11 * Ste5Ste11GbgKss1P) + (compartment * (k15 * Kss1 * Ste11P + k30 * Kss1 * Ste11Ubi)) - (compartment * (k16 * Kss1PP + k28 * Kss1PP * Fus3PP));
    der(Ste11P) = (compartment * k13 * Ste11 * beta) - (compartment * k14 * Ste11P);
    der(Ste12Kss1) = (compartment * k18 * Kss1 * Ste12) - (compartment * k17 * Ste12Kss1);
    der(Ste12) = (compartment * k17 * Ste12Kss1) + (compartment * k31 * Ste12P) - (compartment * k18 * Kss1 * Ste12) - (compartment * (k19 * Ste12 * Fus3PP + k29 * Ste12 * Kss1PP));
    der(Ste12P) = (compartment * (k19 * Ste12 * Fus3PP + k29 * Ste12 * Kss1PP)) - (compartment * k31 * Ste12P);
    der(s) = 0.0;
    der(PREP) = (compartment * k20 * Ste12P) - (compartment * k32 * PREP);
    der(Ste12TeSte5Kss1) = (compartment * k22 * Kss1 * Ste12TeSte5) - (compartment * k21 * Ste12TeSte5Kss1);
    der(Ste12TeSte5) = (compartment * k21 * Ste12TeSte5Kss1) + (compartment * k33 * Ste12TeSte5P) - (compartment * k22 * Kss1 * Ste12TeSte5) - (compartment * k23 * Ste12TeSte5 * Kss1PP) - (compartment * k24 * Ste12TeSte5 * Fus3PP);
    der(Ste12TeSte5P) = (compartment * k23 * Ste12TeSte5 * Kss1PP) - (compartment * k33 * Ste12TeSte5P);
    der(FREP) = (compartment * k25 * Ste12TeSte5P) - (compartment * k34 * FREP);




end BIOMD237;
