
model BIOMD461 "Liebal2012 - B.subtilis transcription inhibition model"

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



    parameter Real kbd = 0.044;
    parameter Real kbs = 100.0;
    parameter Real kxd = 9.0;
    parameter Real kxs = 0.76;
    parameter Real kzd = 0.041;
    parameter Real kzs = 0.0004;
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
    der(sigb) = (IPTG * kbs - kbd * sigb) - (-(kzd * lacz) + kzs * sigb / (1 + x)) - (-(kxd * x) + kxs * sigb / (1 + x));
    der(lacz) = ((-(kzd * lacz) + kzs * sigb / (1 + x))) ;
    der(x) = ((-(kxd * x) + kxs * sigb / (1 + x))) ;




end BIOMD461;
