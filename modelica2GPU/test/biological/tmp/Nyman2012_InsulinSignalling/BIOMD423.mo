
model BIOMD423 "Nyman2012_InsulinSignalling"

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



    parameter Real k1a = 0.153418;
    parameter Real k1aBasic = 0.0383389;
    parameter Real k1b = 3.4699e-06;
    parameter Real k1c = 0.574266;
    parameter Real k1d = 4.78844;
    parameter Real k1e = 5.25027e-05;
    parameter Real k1f = 119.353;
    parameter Real k1g = 4.14899;
    parameter Real k1r = 37954.7;
    parameter Real k21 = 538004.0;
    parameter Real k22 = 1.7252e-06;
    parameter Real km2 = 262759.0;
    parameter Real km23 = 88.9096;
    parameter Real k3 = 8.62917e-05;
    parameter Real km3 = 0.132671;
    parameter Real ins = 100.0;
    parameter Real default = 1.0;

    Real measIRS1(start=0.0);
    Real measIRp(start=0.0);
    Real IRmem(start=0.0);

    Real IR;
    Real IRins;
    Real IRp;
    Real IRiP;
    Real IRi;
    Real IRS;
    Real IRSiP;
    Real X;
    Real Xp;

initial equation
    IR = 8.94067597532632;
    IRins = 0.59688996214639;
    IRp = 0.0383525925240207;
    IRiP = 0.424076631823384;
    IRi = 4.83863890758515e-06;
    IRS = 9.43998194225544;
    IRSiP = 0.560018057744573;
    X = 9.99635886407151;
    Xp = 0.00364113592848386;

equation
    measIRS1 = IRSiP;
    measIRp = IRp + IRiP;
    IRmem = IRp + IRins + IR;
    der(IR) = (k1b * IRins) + (k1g * IRp) + (k1r * IRi) - (k1a * ins * IR + k1aBasic * IR);
    der(IRins) = (k1a * ins * IR + k1aBasic * IR) - (k1b * IRins) - (k1c * IRins);
    der(IRp) = (k1c * IRins) - (k1d * IRp) - (k1g * IRp);
    der(IRiP) = (k1d * IRp) - (IRiP * (k1e + k1f * Xp / (1 + Xp)));
    der(IRi) = (IRiP * (k1e + k1f * Xp / (1 + Xp))) - (k1r * IRi);
    der(IRS) = (km2 * IRSiP) - (k21 * IRS * (IRp + k22 * IRiP) / (1 + km23 * Xp));
    der(IRSiP) = (k21 * IRS * (IRp + k22 * IRiP) / (1 + km23 * Xp)) - (km2 * IRSiP);
    der(X) = (km3 * Xp) - (k3 * X * IRSiP);
    der(Xp) = (k3 * X * IRSiP) - (km3 * Xp);




end BIOMD423;
