class cts "Continous Time System"

    parameter Real[2, 1] x0 = [0.1 ; 0.2]; // Initial State

    // Matrici del sistema
    parameter Real[2, 2] A = [4, 1 ; 0, 5];
    parameter Real[2, 1] B = [1 ; 1];
    parameter Real[1, 2] C = [1, 0];

    input Real[1, 1] u;

    // Variabili
    Real[2, 1] x;
    Real[1, 1] y;

initial equation
    x = x0;

equation
    
    der(x) = A * x + B * u;
    y = C * x;

end cts;