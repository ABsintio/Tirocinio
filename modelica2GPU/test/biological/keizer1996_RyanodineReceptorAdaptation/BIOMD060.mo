model BIOMD060 "Ryanodine receptor adaptation and Ca2+(-)induced Ca2+ release-dependent Ca2+ osciallations"

    parameter Real ka_minus = 28.8;
    parameter Real ka_plus = 1500.0;
    parameter Real Ca = 0.9;
    parameter Real n = 4.0;
    parameter Real kb_plus = 1500.0;
    parameter Real Ca = 0.9;
    parameter Real m = 3.0;
    parameter Real kb_minus = 385.9;
    parameter Real kc_plus = 1.75;
    parameter Real kc_minus = 0.10;

    Real open_probability(start=0.0);

    Real Pc1;
    Real Po2;
    Real Po1;
    Real Pc2;

initial equation
    Pc1 = 0.963;
    Po2 = 0.0;
    Po1 = 0.0;
    Pc2 = 0.037;

equation
    open_probability = Po1 + Po2;
    der(Pc1) = ka_minus*Po1-ka_plus*Ca^n*Pc1;
    der(Po2) = kb_plus*Ca^m*Po1-kb_minus*Po2;
    der(Pc2) = kc_plus*Po1-kc_minus*Pc2;
    der(Po1) = -(ka_minus*Po1-ka_plus*Ca^n*Pc1) - (kb_plus*Ca^m*Po1-kb_minus*Po2) - (kc_plus*Po1-kc_minus*Pc2);
    
end BIOMD060;