
model BIOMD343 "Brannmark2010_InsulinSignalling_Mifamodel"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;



    parameter Real k1a = 0.3892881852;
    parameter Real k1abasic = 0.012452744;
    parameter Real k1b = 0.02000224505;
    parameter Real k1e = 4.38334e-05;
    parameter Real k1f = 20.0726035037;
    parameter Real k1g = 286.6994648072;
    parameter Real k1r = 3.6327773442;
    parameter Real k21 = 1.6722503302;
    parameter Real k22 = 0.036381619;
    parameter Real km2 = 32.5942371891;
    parameter Real k3 = 1.6286590231;
    parameter Real km3 = 0.1131073982;
    parameter Real ky1 = 152.9631668536;
    parameter Real ky2 = 8936.219557405;
    parameter Real kyanna = 16760.1203140926;
    parameter Real kyDosR = 13740.4321729991;
    parameter Real ins = 100.0;
    parameter Real k1c = 0.3635167928;
    parameter Real k1d = 1580.6782649401;
    parameter Real compartment_0000001 = 1.0;



    Real IR;
    Real IRins;
    Real IRp;
    Real IRip;
    Real IRi;
    Real IRS;
    Real IRSip;
    Real X;
    Real Xp;
    Real V1a;
    Real V1b;
    Real V1c;
    Real V1d;
    Real V1e;
    Real V1g;
    Real V1r;
    Real V2;
    Real Vm2;
    Real V3;
    Real Vm3;
    Real simXP;
    Real intamount;
    Real measIRp;
    Real measdoublestep;
    Real measanna;
    Real measdosR;

initial equation
    IR = 10.0;
    IRins = 0.0;
    IRp = 0.0;
    IRip = 0.0;
    IRi = 0.0;
    IRS = 10.0;
    IRSip = 0.0;
    X = 10.0;
    Xp = 0.0;
    measIRp = 1.0;

equation
    measanna = kyanna * IRSip;
    measdosR = kyDosR * IRSip;
    measdoublestep = ky2 * IRSip;
    V1a = k1a * ins * IR + k1abasic * IR;
    V1b = k1b * IRins;
    V1c = k1c * IRins;
    V1d = k1d * IRp;
    V1e = IRip * (k1e + k1f * Xp / (1 + Xp));
    V1g = k1g * IRp;
    V1r = k1r * IRi;
    V2 = k21 * (IRp + k22 * IRip) * IRS;
    Vm2 = km2 * IRSip;
    V3 = k3 * X * IRSip;
    Vm3 = km3 * Xp;
    simXP = Xp;
    intamount = (IRi + IRip) / 10;
    der(IR) = -V1a + V1b + V1r + V1g;
    der(IRins) = V1a - V1b - V1c;
    der(IRp) = V1c - V1d - V1g;
    der(IRip) = V1d - V1e;
    der(IRi) = V1e - V1r;
    der(IRS) = -V2 + Vm2;
    der(IRSip) = V2 - Vm2;
    der(X) = -V3 + Vm3;
    der(Xp) = V3 - Vm3;
    der(measIRp) = 0.0;




end BIOMD343;
