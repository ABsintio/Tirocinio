model BIOMD067 "A synthetic gene-metabolic oscillator"

    parameter Real S0 = 0.500;
    parameter Real kTCA = 10.000;
    parameter Real k1 = 80.000;
    parameter Real KM1 = 0.060;
    parameter Real k2 = 0.800;
    parameter Real KM2 = 0.100;
    parameter Real kAck_f = 1.000;
    parameter Real kAck_r = 1.000;
    parameter Real C = 100.000;
    parameter Real H = 1.0e-7;
    parameter Real Keq = 5.0e-4;
    parameter Real k3 = 0.010;
    parameter Real alpha0 = 0.000;
    parameter Real alpha1 = 0.100;
    parameter Real alpha2 = 2.000;
    parameter Real alpha3 = 2.000;
    parameter Real Kg1 = 10.000;
    parameter Real Kg2 = 10.000;
    parameter Real Kg3 = 0.001;
    parameter Real n = 2.000;
    parameter Real kd = 0.060;
    
    Real AcCoA "Acetyl-CoA";
    Real AcP "Acetyl phosphate";
    Real OAc "Acetate";
    Real HOAc "protonated acetate";
    Real LacI "lac repressor";
    Real Acs "Acetyl-CoA synthase";
    Real Pta "Phosphate acetyl transferase";
    Real HOAc_E "acetate export";

initial equation
    AcCoA = 0.0;
    AcP = 0.0;
    OAc = 0.0;
    HOAc = 0.0;
    LacI = 0.0;
    Acs = 0.0;
    Pta = 0.0;
    HOAc_E = 0.0;

equation
    der(AcCoA) = S0 + k2*Acs*OAc/(KM2+OAc) - kTCA*AcCoA - k1*Pta*AcCoA/(KM1+AcCoA);
    der(AcP) = k1*Pta*AcCoA/(KM1+AcCoA) - (kAck_f*AcP-kAck_r*OAc);
    der(OAc) = (kAck_f*AcP-kAck_r*OAc) - k2*Acs*OAc/(KM2+OAc) - C*(OAc*H-Keq*HOAc);
    der(HOAc) = C*(OAc*H-Keq*HOAc) - k3*(HOAc-HOAc_E);
    der(LacI) = (alpha1*(AcP/Kg1)^n/(1+(AcP/Kg1)^n)+alpha0) - kd*LacI;
    der(Acs) = (alpha2*(AcP/Kg2)^n/(1+(AcP/Kg2)^n)+alpha0) - kd*Acs;
    der(Pta) = (alpha3/(1+(LacI/Kg3)^n)+alpha0) - kd*Pta;
    der(HOAc_E) = 0.0;

end BIOMD067;
