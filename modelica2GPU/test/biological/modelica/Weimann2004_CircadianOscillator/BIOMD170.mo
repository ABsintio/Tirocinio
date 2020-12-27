
model BIOMD170 "Weimann2004_CircadianOscillator"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real v1b = 9.0;
    parameter Real c = 0.01;
    parameter Real k1b = 1.0;
    parameter Real k1i = 0.56;
    parameter Real hill_coeff = 8.0;
    parameter Real v4b = 3.6;
    parameter Real r = 3.0;
    parameter Real k4b = 2.16;
    parameter Real k1d = 0.12;
    parameter Real k2b = 0.3;
    parameter Real q = 2.0;
    parameter Real k2d = 0.05;
    parameter Real k2t = 0.24;
    parameter Real k3t = 0.02;
    parameter Real k3d = 0.12;
    parameter Real k4d = 0.75;
    parameter Real k5b = 0.24;
    parameter Real k5d = 0.06;
    parameter Real k5t = 0.45;
    parameter Real k6t = 0.06;
    parameter Real k6d = 0.12;
    parameter Real k6a = 0.09;
    parameter Real k7a = 0.003;
    parameter Real k7d = 0.09;
    parameter Real Nucleus = 1.0;
    parameter Real Cytoplasm = 1.0;

    Real trans_per2_cry(start=0.0);
    Real trans_Bmal1(start=0.0);
    Real y5_y6_y7(start=3.05);

    Real y1;
    Real y2;
    Real y3;
    Real y4;
    Real y5;
    Real y6;
    Real y7;

initial equation
    y1 = 0.2;
    y2 = 0.0;
    y3 = 1.1;
    y4 = 0.8;
    y5 = 1.0;
    y6 = 1.0;
    y7 = 1.05;

equation
    trans_per2_cry = v1b * (y7 + c) / (k1b * (1 + pow(y3 / k1i, hill_coeff)) + y7 + c);
    trans_Bmal1 = v4b * pow(y3, r) / (pow(k4b, r) + pow(y3, r));
    y5_y6_y7 = y5 + y6 + y7;
    der(y1) = (Cytoplasm * trans_per2_cry) - (Cytoplasm * k1d * y1);
    der(y2) = (Cytoplasm * k2b * y1^q) + (Nucleus * k3t * y3) - (Cytoplasm * k2d * y2) - (Cytoplasm * k2t * y2);
    der(y3) = (Cytoplasm * k2t * y2) - (Nucleus * k3t * y3) - (Nucleus * k3d * y3);
    der(y4) = (Cytoplasm * trans_Bmal1) - (Cytoplasm * k4d * y4);
    der(y5) = (Cytoplasm * k5b * y4) + (Nucleus * k6t * y6) - (Cytoplasm * k5d * y5) - (Cytoplasm * k5t * y5);
    der(y6) = (Cytoplasm * k5t * y5) + (Nucleus * k7a * y7) - (Nucleus * k6t * y6) - (Nucleus * k6d * y6) - (Nucleus * k6a * y6);
    der(y7) = (Nucleus * k6a * y6) - (Nucleus * k7a * y7) - (Nucleus * k7d * y7);




end BIOMD170;
