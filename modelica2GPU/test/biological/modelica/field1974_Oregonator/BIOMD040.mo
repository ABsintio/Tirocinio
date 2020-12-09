model BIOMD040 "Oscillations in chemical systems. IV. Limit cycle behavior in a model of a real chemical reaction"

    parameter Real f = 1.0;
    parameter Real k1 = 1.34;
    parameter Real k2 = 1.6e9;
    parameter Real k3 = 8000.0;
    parameter Real k4 = 4e7;
    parameter Real k5 = 1.0;
    
    Real Br "Br-";
    Real BrO3 "BrO3-";
    Real Ce "Ce4+";
    Real HBrO2;
    Real HOBr;

initial equation
    Br = 1.0e-7;
    BrO3 = 0.06;
    Ce = 0.05;
    HBrO2 = 5.0e-11;
    HOBr = 0.0;

equation
    der(BrO3) = 0.0;
    der(HOBr) = 0.0;
    der(Br) = f*Ce*k5 - Br*BrO3*k1 - Br*HBrO2*k2;
    der(Ce) = BrO3*HBrO2*k3 - Ce*k5;
    der(HBrO2) = Br*BrO3*k1 + 2*BrO3*HBrO2*k3 - Br*HBrO2*k2 - BrO3*HBrO2*k3 - 2*HBrO2^2*k4;

end BIOMD040;
