model BIOMD058 "A bifurcation analysis of two coupled calcium oscillatorstion"

    parameter Real r2 = 100.0;
    parameter Real R1 = 6.0;
    parameter Real k1 = 44.0;
    parameter Real R3 = 50.0;
    parameter Real k2 = 26.5;
    parameter Real r4 = 20.0;
    parameter Real k3 = 1.6;
    parameter Real R5 = 1.6;
    parameter Real kf = 28.00;
    parameter Real p = 0.278;
    parameter Real Vp = 1.20;
    parameter Real Kp = 0.18;
    parameter Real Jleak = 0.2;
    parameter Real D = 0.01;

    Real Phi1_c1(start=0.0);
    Real Phi_minus1_c1(start=0.0);
    Real Phi2_c2(start=0.0);
    Real Phi3_c1(start=0.0);
    Real Phi1_c2(start=0.0);
    Real Phi_minus1_c2(start=0.0);
    Real Phi2_c2(start=0.0);
    Real Phi3_c2(start=0.0);

    Real c1 "Calcium Ion Cell 1";
    Real h1 "Receptor Fraction Cell 1";
    Real c2 "Calcium Ion Cell 2";
    Real h2 "Receptor Fraction Cell 2";

initial equation
    c1 = 0.3;
    h1 = 0.8;
    c2 = 0.1;
    h2 = 0.1;

equation
    Phi1_c1 = r2*c1/(R1+c1);
    Phi_minus1_c1 = k1/(R3+c1);
    Phi2_c1 = (k2 + r4*c1)/(R3+c1);
    Phi3_c1 = k3/(R5+c1);
    Phi1_c2  = r2*c2/(R1+c2);
    Phi_minus1_c2 = k1/(R3+c2);
    Phi2_c2 = (k2+r4*c2)/(R3+c2);
    Phi3_c2 = k3/(R5+c2);
    der(c1) = kf*(p*h1*Phi1_c1/(Phi1_c1*p+Phi_minus1_c1))^4 + Jleak + D*(c2-c1) - Vp*c1^2/(Kp^2+c1^2);
    der(h1) = Phi3_c1*(1-h1) - Phi1_c1*Phi2_c2*h1*p/(Phi1_c1*p-Phi_minus1_c1);
    der(c2) = kf*(p*h2*Phi1_c2/(Phi1_c2*p+Phi_minus1_c2))^4 + Jleak - Vp*c2^2/(Kp^2+c2^2) - D*(c2-c1);
    der(h2) = Phi3_c2*(1-h2) - Phi1_c1*Phi2_c2*h2*p/(Phi1_c1*p-Phi_minus1_c1);
    
end BIOMD058;