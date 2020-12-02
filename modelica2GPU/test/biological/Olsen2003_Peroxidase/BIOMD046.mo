model BIOMD046 "Mechanism of protection of peroxidase activity by oscillatory dynamics"

    parameter Real k1 = 3.0e-6;
    parameter Real k2 = 18.0;
    parameter Real k3 = 0.15;
    parameter Real k4 = 0.005;
    parameter Real k5 = 20.0;
    parameter Real k6 = 17.0;
    parameter Real k7 = 20.0;
    parameter Real k8 = 40.0;
    parameter Real k9 = 60.0;
    parameter Real k10 = 1.8;
    parameter Real k11 = 0.1;
    parameter Real k12 = 0.08;
    parameter Real k13f = 0.006;
    parameter Real k13b = 0.006;
    parameter Real k14 = 0.7;

    Real NADH;
    Real O2;
    Real H2O2;
    Real per3;
    Real coI;
    Real ArH;
    Real coII;
    Real Ar;
    Real NADrad;
    Real super;
    Real coIII;
    Real per2;
    Real NAD2;
    Real NAD;
    Real O2g;
    Real NADHres;

initial equation
    NADH = 0.0;
    O2 = 0.0;
    H2O2 = 0.0;
    per3 = 1.4;
    coI = 0.0;
    ArH = 500.0;
    coII = 0.0;
    Ar = 0.0;
    NADrad = 0.0;
    super = 0.0;
    coIII = 0.0;
    per2 = 0.0;
    NAD2 = 0.0;
    NAD = 0.0;
    O2g = 12.0;
    NADHres = 0.0;

equation
    der(NADH) = k12 - k1*NADH*O2 - k14*Ar*NADH;
    der(O2) = k7*super*super + k13f*O2g - k1*NADH*O2 - k5*NADrad*O2 - k11*per2*O2 - k13b*O2;
    der(H2O2) = k1*NADH*O2 + k7*super*super - k2*H2O2*per3;
    der(per3) = k4*coII*ArH - k2*H2O2*per3 - k6*super*per3 - k10*per3*NADrad;
    der(coI) = k2*H2O2*per3 + k8*coIII*NADrad - k3*coI*ArH;
    der(ArH) = k14*Ar*NADH - k3*coI*ArH - k4*coII*ArH;
    der(coII) = k3*coI*ArH - k4*coII*ArH;
    der(Ar) = k3*coI*ArH + k4*coII*ArH - k14*Ar*NADH;
    der(NADrad) = k14*Ar*NADH - k5*NADrad*O2 - k8*coIII*NADrad - 2*k9*NADrad*NADrad - k10*per3*NADrad;
    der(super) = k5*NADrad*O2 - k6*super*per3 - 2*k7*super*super;
    der(coIII) = k6*super*per3 + k11*per2*O2 - k8*coIII*NADrad;
    der(per2) = k10*per3*NADrad - k11*per2*O2;
    der(NAD2) = 0.0;
    der(NAD) = 0.0;
    der(O2g) = 0.0;
    der(NADHres) = 0.0; 
    
end BIOMD046;