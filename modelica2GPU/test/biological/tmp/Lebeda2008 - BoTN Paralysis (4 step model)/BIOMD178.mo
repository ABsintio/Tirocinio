
model BIOMD178 "Lebeda2008 - BoTN Paralysis (4 step model)"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real kT_endocytosis = 0.141;
    parameter Real kL_translocation = 0.013;
    parameter Real kB_binding = 0.058;
    parameter Real kS_bulk_movement = 0.00015;
    parameter Real extracellular = 1.0;
    parameter Real endosome = 1.0;
    parameter Real neuroplasm = 1.0;

    Real tension(start=0.0);

    Real BoNT;
    Real bulk;
    Real free;
    Real bound;
    Real translocate;
    Real lytic;

initial equation
    bulk = 1.0;
    free = 0.0;
    bound = 0.0;
    translocate = 0.0;
    lytic = 0.0;

equation
    tension = 1 - lytic;
    BoNT = bulk + free;
    der(bulk) =  - (kS_bulk_movement * bulk * extracellular);
    der(free) = (kS_bulk_movement * bulk * extracellular) - (kB_binding * free * extracellular);
    der(bound) = (kB_binding * free * extracellular) - (kT_endocytosis * bound * extracellular);
    der(translocate) = (kT_endocytosis * bound * extracellular) - (kL_translocation * translocate * endosome);
    der(lytic) = (kL_translocation * translocate * endosome) ;




end BIOMD178;
