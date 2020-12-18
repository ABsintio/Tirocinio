
model BIOMD271 "Becker2010_EpoR_CoreModel"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real kt = 0.0329366;
    parameter Real Bmax = 516.0;
    parameter Real kon = 0.00010496;
    parameter Real koff = 0.0172135;
    parameter Real ke = 0.0748267;
    parameter Real kex = 0.00993805;
    parameter Real kdi = 0.00317871;
    parameter Real kde = 0.0164042;
    parameter Real medium = 1.0;
    parameter Real cellsurface = 1.0;
    parameter Real cell = 1.0;

    Real Epo_medium(start=0.0);
    Real Epo_cells(start=0.0);

    Real EpoR;
    Real Epo;
    Real Epo_EpoR;
    Real Epo_EpoRi;
    Real dEpoi;
    Real dEpoe;

initial equation
    EpoR = 516.0;
    Epo = 2030.19;
    Epo_EpoR = 0.0;
    Epo_EpoRi = 0.0;
    dEpoi = 0.0;
    dEpoe = 0.0;

equation
    Epo_medium = Epo + dEpoe;
    Epo_cells = Epo_EpoRi + dEpoi;
    der(EpoR) = (kt * Bmax * cell) + (koff * Epo_EpoR * cell) + (kex * Epo_EpoRi * cell) - (kt * EpoR * cell) - (kon * Epo * EpoR * cell);
    der(Epo) = (koff * Epo_EpoR * cell) + (kex * Epo_EpoRi * cell) - (kon * Epo * EpoR * cell);
    der(Epo_EpoR) = (kon * Epo * EpoR * cell) - (koff * Epo_EpoR * cell) - (ke * Epo_EpoR * cell);
    der(Epo_EpoRi) = (ke * Epo_EpoR * cell) - (kex * Epo_EpoRi * cell) - (kdi * Epo_EpoRi * cell) - (kde * Epo_EpoRi * cell);
    der(dEpoi) = (kdi * Epo_EpoRi * cell) ;
    der(dEpoe) = (kde * Epo_EpoRi * cell) ;




end BIOMD271;
