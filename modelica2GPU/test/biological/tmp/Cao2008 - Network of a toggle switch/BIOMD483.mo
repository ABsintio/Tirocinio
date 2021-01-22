
model BIOMD483 "Cao2008 - Network of a toggle switch"

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



    parameter Real da = 1.0;
    parameter Real db = 1.0;
    parameter Real sa = 100.0;
    parameter Real sb = 100.0;
    parameter Real ba = 1e-05;
    parameter Real bb = 1e-05;
    parameter Real ua = 0.1;
    parameter Real ub = 0.1;
    parameter Real default = 1.0;



    Real Pa;
    Real Pb;
    Real Da;
    Real Db;
    Real BDa;
    Real BDb;
    Real ESA;
    Real ESB;

initial equation
    Pa = 0.0;
    Pb = 0.0;
    Da = 0.0;
    Db = 0.0;
    BDa = 0.0;
    BDb = 0.0;
    ESA = 0.0;
    ESB = 0.0;

equation

    der(Pa) = (default * sa * Da) + (2.0 * default * ub * BDb) - (default * da * Pa) - (2.0 * default * bb * (Pa * (Pa - 1) / 2) * Db);
    der(Pb) = (default * sb * Db) + (2.0 * default * ua * BDa) - (default * db * Pb) - (2.0 * default * ba * (Pb * (Pb - 1) / 2) * Da);
    der(Da) = (default * ua * BDa) - (default * ba * (Pb * (Pb - 1) / 2) * Da);
    der(Db) = (default * ub * BDb) - (default * bb * (Pa * (Pa - 1) / 2) * Db);
    der(BDa) = (default * ba * (Pb * (Pb - 1) / 2) * Da) - (default * ua * BDa);
    der(BDb) = (default * bb * (Pa * (Pa - 1) / 2) * Db) - (default * ub * BDb);
    der(ESA) = (default * da * Pa) - (default * sa * Da);
    der(ESB) = (default * db * Pb) - (default * sb * Db);




end BIOMD483;
