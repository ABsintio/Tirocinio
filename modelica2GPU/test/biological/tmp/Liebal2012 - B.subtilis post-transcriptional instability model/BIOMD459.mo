
model BIOMD459 "Liebal2012 - B.subtilis post-transcriptional instability model"

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



    parameter Real kbd = 0.0164812;
    parameter Real kbs = 100.0;
    parameter Real kxd = 1.08559e-09;
    parameter Real kxs = 9.32517e-08;
    parameter Real kzd = 1.34615e-07;
    parameter Real kzs = 9.03538e-07;
    parameter Real kzx = 0.00317772;
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
    der(sigb) = (IPTG * kbs - kbd * sigb) - (kzs * sigb - lacz * (kzd + kzx * x)) - (kxs * sigb - kxd * x);
    der(lacz) = (kzs * sigb - lacz * (kzd + kzx * x)) ;
    der(x) = (kxs * sigb - kxd * x) ;




end BIOMD459;
