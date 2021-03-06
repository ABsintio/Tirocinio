
model BIOMD117 "Dupont1991_CaOscillation"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real v0 = 1.0;
    parameter Real v1 = 7.3;
    parameter Real VM2 = 65.0;
    parameter Real VM3 = 500.0;
    parameter Real KR = 2.0;
    parameter Real KA = 0.9;
    parameter Real K2 = 1.0;
    parameter Real kf = 1.0;
    parameter Real k = 10.0;
    parameter Real n = 2.0;
    parameter Real m = 2.0;
    parameter Real p = 4.0;
    parameter Real tstim = 4.0;
    parameter Real extracellular = 1.0;
    parameter Real Cytosol = 1.0;
    parameter Real intracellular_Ca_storepool = 1.0;

    Real beta(start=0.0);
    Real flag(start=0.0);

    Real z;
    Real y;

initial equation
    z = 0.1;
    y = 1.4;

equation
    beta = flag * 0.96 * exp(-0.2 * (time - tstim));
    der(z) = (v1 * beta * Cytosol) + (v0 * Cytosol) + (kf * y * Cytosol) + (Cytosol * VM3 * (y^m / (KR^m + y^m)) * (z^p / (KA^p + z^p))) - (intracellular_Ca_storepool * VM2 * z^n / (K2^n + z^n)) - (k * z * extracellular);
    der(y) = (intracellular_Ca_storepool * VM2 * z^n / (K2^n + z^n)) - (kf * y * Cytosol) - (Cytosol * VM3 * (y^m / (KR^m + y^m)) * (z^p / (KA^p + z^p)));
    der(flag)=0.0;

    when time > tstim then
        reinit(flag,1);
    end when;

end BIOMD117;
