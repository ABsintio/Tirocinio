
model BIOMD538 "Clarke2000 - One-hit model of cell death in neuronal degenerations"

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



    parameter Real Munr = 0.278;
    parameter Real Mupcd = 0.223;
    parameter Real Rrom = 0.103;
    parameter Real ONLrom_0 = 40.947;
    parameter Real Murom = 0.0708;
    parameter Real Brain = 1.0;



    Real ONLnr;
    Real ONLpcd;
    Real ONLrom;

initial equation
    ONLnr = 100.0;
    ONLpcd = 100.0;

equation
    ONLrom = ONLrom_0 * exp((exp(-Rrom * time) - 1) * Murom / Rrom) * 100 / ONLrom_0;
    der(ONLnr) = -Munr * ONLnr;
    der(ONLpcd) = -Mupcd * ONLpcd;




end BIOMD538;
