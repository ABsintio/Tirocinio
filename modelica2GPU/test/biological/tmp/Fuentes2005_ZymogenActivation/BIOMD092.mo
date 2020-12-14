
model BIOMD092 "Fuentes2005_ZymogenActivation"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real k1_v1 = 0.004;
    parameter Real k21_v2 = 1000.0;
    parameter Real k22_v2 = 0.00021;
    parameter Real k3_v3 = 0.00054;



    Real z;
    Real e;
    Real w;
    Real ez;

initial equation
    z = 2.4e-05;
    e = 0.0;
    w = 0.0;
    ez = 0.0;

equation

    der(z) =  - (1.0 * k1_v1 * z) - (1.0 * (k21_v2 * e * z - k22_v2 * ez));
    der(e) = (1.0 * k1_v1 * z) + (2.0 * 1.0 * k3_v3 * ez) - (1.0 * (k21_v2 * e * z - k22_v2 * ez));
    der(w) = (1.0 * k1_v1 * z) + (1.0 * k3_v3 * ez) ;
    der(ez) = (1.0 * (k21_v2 * e * z - k22_v2 * ez)) - (1.0 * k3_v3 * ez);



end BIOMD092;
