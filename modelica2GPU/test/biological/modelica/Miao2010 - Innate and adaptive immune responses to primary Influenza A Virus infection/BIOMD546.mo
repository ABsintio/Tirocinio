
model BIOMD546 "Miao2010 - Innate and adaptive immune responses to primary Influenza A Virus infection"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;
    
    function piecewise
        input Real x;
        input Boolean condition;
        input Real y;
        output Real z;
        algorithm
            z := if condition then x else y;
    end piecewise;



    parameter Real rho_E = 6.2e-08;
    parameter Real beta_a = 2.4e-06;
    parameter Real delta_Es = 0.6;
    parameter Real pi_a = 100.0;
    parameter Real c_V = 4.2;
    parameter Real default = 1.0;



    Real s1;
    Real s2;
    Real s3;
    Real s4;
    Real s5;
    Real s6;
    Real s7;

initial equation
    s1 = 5.8e5;
    s2 = 0;
    s3 = 1.473e3;
    s4 = 0.0;
    s5 = 0.0;
    s6 = 0.0;
    s7 = 0.0;

equation

    der(s1) = (rho_E * s1) - (beta_a * s1 * s3);
    der(s2) = (beta_a * s1 * s3) - (delta_Es * s2);
    der(s3) = (pi_a * s2) - (c_V * s3);
    der(s4) =  - (rho_E * s1);
    der(s5) = (delta_Es * s2) ;
    der(s6) = (c_V * s3) ;
    der(s7) =  - (pi_a * s2);




end BIOMD546;
