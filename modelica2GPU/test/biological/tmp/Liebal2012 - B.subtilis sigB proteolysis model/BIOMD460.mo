
model BIOMD460 "Liebal2012 - B.subtilis sigB proteolysis model"

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



    parameter Real kbd = 5.8e-09;
    parameter Real kbs = 100.0;
    parameter Real kbx = 8.4e-05;
    parameter Real kxd = 1.2e-13;
    parameter Real kxs = 2e-06;
    parameter Real kzd = 0.052;
    parameter Real kzs = 1.7e-06;
    parameter Real compartment = 1.0;



    Real IPTG;
    Real sigb;
    Real lacz;
    Real x;

initial equation
    IPTG = 100.0;
    sigb = 0.0;
    lacz = 0.0;
    x = 0.0;

equation

    der(IPTG) = 0.0;
    der(sigb) = (IPTG * kbs - sigb * (kbd + kbx * x)) - (-(kzd * lacz) + kzs * sigb) - (kxs * sigb - kxd * x);
    der(lacz) = ((-(kzd * lacz) + kzs * sigb)) ;
    der(x) = (kxs * sigb - kxd * x) ;




end BIOMD460;
