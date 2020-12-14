
model BIOMD106 "Yang2007_ArachidonicAcid"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real lin = 12.0;
    parameter Real K15 = 3600.0;
    parameter Real k15 = 2600.0;
    parameter Real K16 = 1000.0;
    parameter Real k16 = 70.0;
    parameter Real K17 = 1000.0;
    parameter Real k17 = 50.0;
    parameter Real K18 = 1000.0;
    parameter Real k18 = 50.0;
    parameter Real K19 = 3000.0;
    parameter Real k19 = 160.0;
    parameter Real K20 = 1599.0;
    parameter Real k20 = 4.0;
    parameter Real K21 = 5000.0;
    parameter Real k21 = 5.0;
    parameter Real K22 = 125.0;
    parameter Real k22 = 20.0;
    parameter Real K23 = 150.0;
    parameter Real k23 = 3.9;
    parameter Real K24 = 500.0;
    parameter Real k24 = 70.0;
    parameter Real kd2 = 0.05;
    parameter Real kd3 = 0.01;
    parameter Real kd8 = 0.1;
    parameter Real kd9 = 0.001;
    parameter Real kd11 = 0.001;
    parameter Real kd12 = 0.07;
    parameter Real kd13 = 0.01;
    parameter Real kd16 = 0.01;
    parameter Real ki1 = 0.3;
    parameter Real ki2 = 30.0;
    parameter Real ki3 = 30.0;
    parameter Real ki4 = 0.6;
    parameter Real ki5 = 0.1;
    parameter Real ki6 = 0.01;
    parameter Real ki7 = 30.0;
    parameter Real ki8 = 4.0;
    parameter Real ki9 = 0.175;
    parameter Real ki10 = 0.01;
    parameter Real ki11 = 15.0;
    parameter Real ki12 = 6.3;
    parameter Real ki14 = 0.2;
    parameter Real ki15 = 0.86;
    parameter Real ki16 = 10.0;
    parameter Real ki17 = 10.0;
    parameter Real ki18 = 10.0;
    parameter Real KI19 = 500.0;
    parameter Real KI20 = 200.0;
    parameter Real KI21 = 500.0;
    parameter Real KI22 = 500.0;
    parameter Real KI23 = 0.053;
    parameter Real KI24 = 2.3e-05;
    parameter Real a24 = 0.15;
    parameter Real ks = 500.0;
    parameter Real cell = 1.0;



    Real x1;
    Real x10;
    Real x11;
    Real x12;
    Real x13;
    Real x14;
    Real x15;
    Real x16;
    Real x17;
    Real x18;
    Real x19;
    Real x2;
    Real x20;
    Real x21;
    Real x22;
    Real x23;
    Real x24;
    Real x25;
    Real x3;
    Real x4;
    Real x5;
    Real x6;
    Real x7;
    Real x8;
    Real x9;

initial equation
    x1 = 0.001;
    x10 = 0.001;
    x11 = 0.001;
    x12 = 0.001;
    x13 = 0.001;
    x14 = 0.001;
    x15 = 1.5;
    x16 = 1.5;
    x17 = 0.5;
    x18 = 0.2;
    x19 = 0.5;
    x2 = 0.001;
    x20 = 0.5;
    x21 = 5.0;
    x22 = 0.76;
    x23 = 0.07;
    x24 = 0.8;
    x25 = 0.0;
    x3 = 0.001;
    x4 = 0.001;
    x5 = 0.001;
    x6 = 0.001;
    x7 = 0.001;
    x8 = 0.001;
    x9 = 0.001;

equation

    der(x1) = (cell * K15 * x15 * lin * (1 + x4 / KI19 + x2 / KI20 + x13 / KI21 + x11 / KI22) / (lin + k15 * (1 + x1 / ks))) - (cell * K16 * x16 * x1 / (x1 + k16 * (1 + x2 / ks))) - (cell * K17 * x17 * x1 / (x1 + k17 * (1 + x4 / ki18 + x3 / ki16 + x4 / ks))) - (cell * K18 * x18 * x1 / (x1 + k18 * (1 + x7 / ki3 + x6 / ks))) - (cell * K21 * x21 * x1 / (x1 + k21 * (1 + x5 / ki7 + x3 / ki8 + x7 / ki11 + x11 / ki12 + x10 / ks))) - (0.1 * x1 * cell);
    der(x10) = (cell * K21 * x21 * x1 / (x1 + k21 * (1 + x5 / ki7 + x3 / ki8 + x7 / ki11 + x11 / ki12 + x10 / ks))) - (cell * K24 * x24 * x10 / (x10 + k24 * (1 + x11 / ks))) - (cell * K21 * x21 * x10 / (x10 + k21 * (1 + x5 / ki7 + x3 / ki8 + x7 / ki11 + x11 / ki12 + x12 / ks)));
    der(x11) = (cell * K24 * x24 * x10 / (x10 + k24 * (1 + x11 / ks))) - (kd11 * x11 * cell);
    der(x12) = (cell * K21 * x21 * x10 / (x10 + k21 * (1 + x5 / ki7 + x3 / ki8 + x7 / ki11 + x11 / ki12 + x12 / ks))) - (cell * K22 * x22 * x12 / (x12 + k22 * (1 + x13 / ks))) - (cell * x12 * kd12);
    der(x13) = (cell * K22 * x22 * x12 / (x12 + k22 * (1 + x13 / ks))) - (cell * K23 * x23 * x13 / (x13 + k23 * (1 + x5 / ki14 + x11 / ki15 + x14 / ks))) - (cell * kd13 * x13);
    der(x14) = (cell * K23 * x23 * x13 / (x13 + k23 * (1 + x5 / ki14 + x11 / ki15 + x14 / ks))) ;
    der(x15) = 0.0;
    der(x16) = (cell * a24 * x7 * x7 / (x7 * x7 + KI24 * KI24)) - (cell * kd16 * x16);
    der(x17) =  - (cell * ki17 * x2 * x17);
    der(x18) = 0.0;
    der(x19) = 0.0;
    der(x2) = (cell * K16 * x16 * x1 / (x1 + k16 * (1 + x2 / ks))) - (cell * K24 * x24 * x2 / (x2 + k24 * (1 + x3 / ks))) - (kd2 * cell * x2);
    der(x20) =  - (ki4 * x2 * x20 * cell) - (cell * ki5 * x6 * x20);
    der(x21) = (cell * KI23 * x13 * x21) - (cell * ki9 * x12 * x21) - (cell * ki10 * x10 * x21) - (cell * ki6 * x21 * x2);
    der(x22) =  - (cell * K22 * x22 * x12 / ((x12 + k22) * 129));
    der(x23) = 0.0;
    der(x24) = 0.0;
    der(x25) = 0.0;
    der(x3) = (cell * K24 * x24 * x2 / (x2 + k24 * (1 + x3 / ks))) - (kd3 * x3 * cell);
    der(x4) = (cell * K17 * x17 * x1 / (x1 + k17 * (1 + x4 / ki18 + x3 / ki16 + x4 / ks))) - (cell * K24 * x24 * x4 / (x4 + k24 * (1 + x5 / ks)));
    der(x5) = (cell * K24 * x24 * x4 / (x4 + k24 * (1 + x5 / ks))) ;
    der(x6) = (cell * K18 * x18 * x1 / (x1 + k18 * (1 + x7 / ki3 + x6 / ks))) - (cell * K19 * x19 * x6 / (x6 + k19 * (1 + x1 / ki1 + x3 / ki2 + x7 / ks))) - (cell * K20 * x20 * x6 / (x6 + k20 * (1 + x8 / ks)));
    der(x7) = (cell * K19 * x19 * x6 / (x6 + k19 * (1 + x1 / ki1 + x3 / ki2 + x7 / ks))) ;
    der(x8) = (cell * K20 * x20 * x6 / (x6 + k20 * (1 + x8 / ks))) - (cell * kd8 * x8);
    der(x9) = (kd8 * x8 * cell) - (kd9 * x9 * cell);




end BIOMD106;
