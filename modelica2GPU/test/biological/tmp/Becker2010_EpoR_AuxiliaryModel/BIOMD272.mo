
model BIOMD272 "Becker2010_EpoR_AuxiliaryModel"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real kt = 0.0329366;
    parameter Real Bmax_SAv = 76.0;
    parameter Real kon_SAv = 2.29402e-06;
    parameter Real koff_SAv = 0.00679946;
    parameter Real kex_SAv = 0.01101;
    parameter Real kdi = 0.00317871;
    parameter Real kde = 0.0164042;
    parameter Real medium = 1.0;
    parameter Real cellsurface = 1.0;
    parameter Real cell = 1.0;

    Real SAv_medium(start=0.0);
    Real SAv_cells(start=0.0);

    Real EpoR;
    Real SAv;
    Real SAv_EpoR;
    Real SAv_EpoRi;
    Real dSAvi;
    Real dSAve;

initial equation
    EpoR = 76.0;
    SAv = 999.293;
    SAv_EpoR = 0.0;
    SAv_EpoRi = 0.0;
    dSAvi = 0.0;
    dSAve = 0.0;

equation
    SAv_medium = SAv + dSAve;
    SAv_cells = SAv_EpoRi + dSAvi;
    der(EpoR) = (kt * Bmax_SAv * cell) + (koff_SAv * SAv_EpoR * cell) - (kt * EpoR * cell) - (kon_SAv * SAv * EpoR * cell);
    der(SAv) = (koff_SAv * SAv_EpoR * cell) + (kex_SAv * SAv_EpoRi * cell) - (kon_SAv * SAv * EpoR * cell);
    der(SAv_EpoR) = (kon_SAv * SAv * EpoR * cell) - (koff_SAv * SAv_EpoR * cell) - (kt * SAv_EpoR * cell);
    der(SAv_EpoRi) = (kt * SAv_EpoR * cell) - (kex_SAv * SAv_EpoRi * cell) - (kdi * SAv_EpoRi * cell) - (kde * SAv_EpoRi * cell);
    der(dSAvi) = (kdi * SAv_EpoRi * cell) ;
    der(dSAve) = (kde * SAv_EpoRi * cell) ;




end BIOMD272;
