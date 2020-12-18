
model BIOMD267 "Lebeda2008 - BoNT paralysis (3 step model)"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real kT_0 = 0.141;
    parameter Real kL_1 = 0.013;
    parameter Real kB_2 = 0.058;
    parameter Real extracellular = 1.0;
    parameter Real endosome = 1.0;
    parameter Real neuroplasm = 1.0;

    Real tension(start=0.0);

    Real free;
    Real bound;
    Real translocate;
    Real lytic;

initial equation
    free = 1.0;
    bound = 0.0;
    translocate = 0.0;
    lytic = 0.0;

equation
    tension = 1 - lytic;
    der(free) =  - (kB_2 * free * extracellular);
    der(bound) = (kB_2 * free * extracellular) - (kT_0 * bound * extracellular);
    der(translocate) = (kT_0 * bound * extracellular) - (kL_1 * translocate * endosome);
    der(lytic) = (kL_1 * translocate * endosome) ;




end BIOMD267;
