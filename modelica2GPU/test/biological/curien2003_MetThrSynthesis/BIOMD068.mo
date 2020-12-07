model BIOMD068 "A kinetic model of the branch-point between the methionine and threonine biosysnthesis pathways in Arabidopsis thaliana"
    
    parameter Real V0 = 1.0;
    parameter Real kcat2 = 30.0;
    parameter Real KmCYS = 460.0;
    parameter Real KmPHSER = 2500.0;
    parameter Real Ki2 = 2000.0;
    parameter Real Ki3 = 1000.0;

    Real Phser "Phosphohomoserine";
    Real Thr "Threonine";
    Real Cystathionine "Cystathionine";
    Real Hser "Homoserine";
    Real Phi "Inorganic phosphate";
    Real Cys "Cysteine";
    Real AdoMet "S-adenosylmethionine";
    Real CGS "Cystathionine gamma-synthase";
    Real TS "Threonine synthase";

initial equation
    Phser = 0.0;
    Thr = 0.0;
    Cystathionine = 0.0;
    Hser = 0.0;
    Phi = 10000.0;
    Cys = 15.0;
    AdoMet = 20.0;
    CGS = 0.7;
    TS = 5.0;

equation
    der(Phser) = V0 - CGS*kcat2/(1+KmCYS/Cys)*Phser/(Phser+KmPHSER*(1+Phi/Ki2)/(1+KmCYS/Cys)) - TS*(5.9E-4+0.062*AdoMet^2.9/(32^2.9+AdoMet^2.9))*Phser/(1+Phi/Ki3);
    der(Thr) = 0.0;
    der(Cystathionine) = 0.0;
    der(Hser) = 0.0;
    der(Phi) = 0.0;
    der(Cys) = 0.0;
    der(AdoMet) = 0.0;
    der(CGS) = 0.0;
    der(TS) = 0.0; 

end BIOMD068;