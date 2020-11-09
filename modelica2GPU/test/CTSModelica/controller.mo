class Controller "Controllore"
    
    parameter Real T = 1; // Sampling time
    parameter Real N = 1;

    // Controller parameter
    parameter Real[1, 2] K = [1, 1];

    input Real[2, 1] x; // Plant State
    input Real Delta = 0.01;
    input Real LoVal = 0;
    input Real HiVal = 6;

    output Real[1, 1] u; // Plant input

    //Real sensor;
    output Real n;

equation

    when sample(0, T) then
        u = K * x;
    end when;

    when sample(1, N) then
        n = pre(n) + 1;
    end when;

end Controller;