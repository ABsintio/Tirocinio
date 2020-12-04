model BIOMD057 "A dynamic model of the type-2 inositol trisphosphate receptor."

    parameter Real k1 = 0.640;
    parameter Real L1 = 0.120;
    parameter Real l2 = 1.700;
    parameter Real lminus2 = 0.800;
    parameter Real c = 10.000;
    parameter Real L3 = 0.025;
    parameter Real k2 = 37.400;
    parameter Real l4 = 1.700;
    parameter Real kminus1 = 0.040;
    parameter Real kminus2 = 1.400;
    parameter Real kminus3 = 29.800;
    parameter Real lminus4 = 2.500;
    parameter Real L5 = 57.400;
    parameter Real k3 = 0.110;
    parameter Real k4 = 4.000;
    parameter Real l6 = 4707.000;
    parameter Real kminus4 = 0.540;
    parameter Real lminus6 = 11.400;
    parameter Real IP3 = 10.000;

    Real open_probability(start=0.000);
    Real Phi1(start=0.000);
    Real Phi2(start=0.000);
    Real Phi_minus2(start=0.000);
    Real Phi3(start=0.000);
    Real Phi4(start=0.000);
    Real Phi_minus4(start=0.000);
    Real Phi5(start=0.000);
    
    Real R "Receptor";
    Real O "Open State";
    Real I1 "Inactivated State 1";
    Real S "Shut State";
    Real A "Activated State";
    Real I2 "Inactivated State 2";

initial equation
    R = 1.0;
    O = 0.0;
    I1 = 0.0;
    S = 0.0;
    A = 0.0;
    I2 = 0.0;

equation
    open_probability = (0.1*O + 0.9*A)^4;
    Phi1 = (k1*L1+12)*c/(L1+c*(1+L1/L3));
    Phi2 = (k2*L3+14*c)/(L3+c*(1+L3/L1));
    Phi_minus2 = (kminus2+lminus4*c)/(1+c/L5);
    Phi3 = k3*L5/(L5+c);
    Phi4 = (k4*L5 + 16)*c/(L5+c);
    Phi_minus4 = L1*(kminus4+lminus6)/(L1+c);
    Phi5 = (k1*L1+12)*c/(L1+c);
    der(R) = -(Phi2*IP3*R-Phi_minus2*O) - (Phi1*R-(kminus1+lminus2)*I1);
    der(O) = Phi2*IP3*R-Phi_minus2*O - (Phi3*O-kminus3*S) - (Phi4*O-Phi_minus4*A);
    der(I1) = Phi1*R-(kminus1+lminus2)*I1;
    der(S) = Phi3*O-kminus3*S;
    der(A) = Phi4*O-Phi_minus4*A - (Phi5*A-(kminus1+lminus2)*I2);
    der(I2) = Phi5*A-(kminus1+lminus2)*I2;

end BIOMD057;