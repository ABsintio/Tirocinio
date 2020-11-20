class Monitor

    input Real n; // Number of sample
    input Real[2, 1] x; // Plant State
    output Boolean y; // 1 or 0

    Boolean z;
    Real j;

equation

    j = sqrt(x[1, 1]*x[1, 1] + x[2, 1]*x[2, 1]);
    z = ((j <= 0.2) and n >= 10) or (n < 10);

algorithm

    y := (not z);

end Monitor;