model BIOMD072 "A quantitative characterization of the yeast heterotrimeric G protein cycle"

    parameter Real k1 = 3.32e-8;
    parameter Real k2 = 0.010;
    parameter Real v = 4.0;
    parameter Real k3 = 4.0e-4;
    parameter Real k4 = 1.0;
    parameter Real k5 = 1.0e-5;
    parameter Real k6 = 0.004;
    parameter Real k7 = 0.11;

    Real L "Ligand";
    Real R "Receptor";
    Real G "Inactive heterotrimetric G-protein";
    Real Gbg "Free levels of G-beta-gamma";
    Real Gd "G-alpha-GDP";
    Real Ga "G-alpha-GTP";
    Real RL "Receptor-Ligand";

initial equation
    L = 6.02e17;
    R = 10000.0;
    G = 7000.0;
    Gbg = 3000.0;
    Gd = 3000.0;
    Ga = 0.0;
    RL = 0.0;

equation
    der(L) = -((k1*L*R-k2*RL));
    der(R) = v - (k1*L*R-k2*RL) - k3*R;
    der(G) = k4*Gd*Gbg - k5*RL*G;
    der(Gbg) = -(k4*Gd*Gbg - k5*RL*G);
    der(Gd) = k7*Ga - k4*Gd*Gbg;
    der(Ga) = k5*RL*G - k7*Ga;
    der(RL) = (k1*L*R-k2*RL) - k6*RL;  
    
end BIOMD072;