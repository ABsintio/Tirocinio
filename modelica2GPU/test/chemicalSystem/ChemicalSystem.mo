model ChemicalSystem
    Real C[3];
    parameter Real k[3] = {0.1, 0.1, 10};
initial equation
    C = {1, 1, 0};
equation
    der(C) = [-k[1]*C[2], 0,           k[2];
              -k[1]*C[2], -k[3]*C[3],  k[2];
               k[1]*C[2], -k[3]*C[3], -k[2]]*C;
end ChemicalSystem;
