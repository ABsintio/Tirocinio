model BIOMD054 "A possible role of adenylate metabolism in human erythrocytes: simple mathematical model"

    parameter Real P = 0.121;
    parameter Real J = 100.000;
    parameter Real W2 = 0.200;
    parameter Real W3 = 13.480;
    parameter Real U = 0.020;
    parameter Real W = 0.010;
    parameter Real n = 1.200;
    parameter Real k = -1.000;

    Real T(start=1.000);
    Real M(start=0.010);

    Real I "Ions";
    Real E "Energy pool";
    Real A "Adenylate pool";

initial equation
    I = 10.0;
    E = 2.1;
    A = 1.11;

equation
    T = (A + 3*E - sqrt(6*A*E - 3*E^2 + A^2))/6;
    M = (7*A - 3*E - sqrt(6*A*E - 3*E^2 + A^2))/6;
    der(I) = P*J - 3*W2*I*T;
    der(E) = W3*T^0.52*M^0.41 - W2*I*T - 2*U;
    der(A) = U*(1-W*T^n*M^k);
    
end BIOMD054;