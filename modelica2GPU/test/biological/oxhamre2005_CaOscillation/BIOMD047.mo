model BIOMD047 "A minimal generic model of bacteria-induced intracellular Ca2+ oscillations in epitheralial cells"

    parameter Real n0 = 1.0;
    parameter Real kbN = 0.50;
    parameter Real kappa = 5.00;
    parameter Real p11 = 0.20;
    parameter Real p12 = 0.80;
    parameter Real K1 = 5.00;
    parameter Real K2 = 0.70;
    parameter Real k31 = 0.50;
    parameter Real K3 = 0.70;
    parameter Real Fpump_0 = 2.0;
    parameter Real Kpump = 0.1;
    parameter Real Fch_0 = 8.0;
    parameter Real Fleak = 0.5;

    Real n(start=1.0);
    Real p1(start=0.0);
    Real p2(start=0.0);
    Real p3(start=0.95);

    Real CaER;
    Real Ca_Cyt;

initial equation
    CaER = 0.0;
    Ca_Cyt = 0.0;

equation
    n = n0*(exp((-kbN)*time)+kappa*(1-exp((-kbN)*time)));
    p1 = p11+p12*n/(K1+n);
    p2 = Ca_Cyt/(K2+Ca_Cyt);
    der(p3) = (-(k31*Ca_Cyt*p3)) + k31*K3*(1-p3);
    der(CaER) = Fpump_0*Ca_Cyt/(Kpump+Ca_Cyt) - Fch_0*p1*p2*p3 - Fleak;
    der(Ca_Cyt) = -(Fpump_0*Ca_Cyt/(Kpump+Ca_Cyt) - Fch_0*p1*p2*p3 - Fleak);
    
end BIOMD047;
