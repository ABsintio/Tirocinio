
model BIOMD195 "Tyson2001_Cell_Cycle_Regulation"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;


    function GK
        	input Real A1;
	input Real A2;
	input Real A3;
	input Real A4;
	input Real 2 * A4 * A1 / ((A2 - A1) + A3 * A2 + A4 * A1 + root(2;
        output Real y;
    algorithm
        y =  ((A2 - A1) + A3 * A2 + A4 * A1)^2 - 4 * (A2 - A1) * A4 * A1));
    end GK;


    parameter Real k1 = 0.04;
    parameter Real k2p = 0.04;
    parameter Real k2pp = 1.0;
    parameter Real k2ppp = 1.0;
    parameter Real k3p = 1.0;
    parameter Real k3pp = 10.0;
    parameter Real J3 = 0.04;
    parameter Real k4 = 35.0;
    parameter Real k5p = 0.005;
    parameter Real k5pp = 0.2;
    parameter Real J5 = 0.3;
    parameter Real k6 = 0.1;
    parameter Real n = 4.0;
    parameter Real k7 = 1.0;
    parameter Real J7 = 0.001;
    parameter Real k8 = 0.5;
    parameter Real J8 = 0.001;
    parameter Real k9 = 0.1;
    parameter Real k10 = 0.02;
    parameter Real mu = 0.005;
    parameter Real k11 = 1.0;
    parameter Real k12p = 0.2;
    parameter Real k12pp = 50.0;
    parameter Real mmax = 10.0;
    parameter Real k12ppp = 100.0;
    parameter Real Keq = 1000.0;
    parameter Real k13 = 1.0;
    parameter Real k14 = 1.0;
    parameter Real k15p = 1.5;
    parameter Real k15pp = 0.05;
    parameter Real k16p = 1.0;
    parameter Real k16pp = 3.0;
    parameter Real J15 = 0.01;
    parameter Real J16 = 0.01;
    parameter Real k4p = 2.0;
    parameter Real J4 = 0.04;
    parameter Real cell = 1.0;

    Real TF(start=0.0);

    Real CycBt;
    Real CycB;
    Real Cdc20a;
    Real Trimer;
    Real Cdh1;
    Real m;
    Real Cdc20t;
    Real IEP;
    Real Mad;
    Real CKIt;
    Real SK;

initial equation
    CycBt = 0.001;
    Cdc20a = 0.001;
    Cdh1 = 0.001;
    m = 0.5;
    Cdc20t = 0.001;
    IEP = 0.001;
    CKIt = 0.001;
    SK = 0.001;

equation
    CycB = CycBt - 2 * CycBt * CKIt / (CycBt + CKIt + 1 / Keq + pow(pow(CycBt + CKIt + 1 / Keq, 2) - 4 * CycBt * CKIt, 1 / 2));
    Trimer = 2 * CycBt * CKIt / (CycBt + CKIt + 1 / Keq + pow(pow(CycBt + CKIt + 1 / Keq, 2) - 4 * CycBt * CKIt, 1 / 2));
    TF = GK(k15p * m + k15pp * SK, k16p + k16pp * m * CycB, J15, J16);
    Mad = 1;
    der(CycBt) = (k1) - (k2p * CycBt) - (k2pp * Cdh1 * CycBt) - (k2ppp * Cdc20a * CycBt);
    der(Cdc20a) = (k7 * IEP * (Cdc20t - Cdc20a) / (J7 + Cdc20t - Cdc20a)) - (k8 * Mad * Cdc20a / (J8 + Cdc20a)) - (k6 * Cdc20a);
    der(Cdh1) = ((k3p + k3pp * Cdc20a) * (1 - Cdh1) / (J3 + 1 - Cdh1)) - ((k4p * SK * Cdh1 + k4 * m * CycB * Cdh1) / (J4 + Cdh1));
    der(m) = (mu * m * (1 - m / mmax)) ;
    der(Cdc20t) = (k5p + k5pp * (CycB * m / J5)^n / (1 + (CycB * m / J5)^n)) - (k6 * Cdc20t);
    der(IEP) = (k9 * m * CycB * (1 - IEP)) - (k10 * IEP);
    der(CKIt) = (k11) - (k12p * CKIt) - (k12pp * SK * CKIt) - (k12ppp * m * CycB * CKIt);
    der(SK) = (k13 * TF) - (k14 * SK);


    when CycB < 0.1 then
        reinit(m,m / 2);
    end when;

end BIOMD195;
