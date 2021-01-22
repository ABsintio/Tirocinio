
model BIOMD493 "Schittler2010 - Cell fate of progenitor cells, osteoblasts or chondrocytes"

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



    parameter Real aP = 0.2;
    parameter Real n = 2.0;
    parameter Real bP = 0.5;
    parameter Real mP = 10.0;
    parameter Real cPP = 0.1;
    parameter Real kP = 0.1;
    parameter Real aO = 0.1;
    parameter Real bO = 1.0;
    parameter Real mO = 1.0;
    parameter Real cOC = 0.1;
    parameter Real cOP = 0.5;
    parameter Real cOO = 0.1;
    parameter Real kO = 0.1;
    parameter Real aC = 0.1;
    parameter Real bC = 1.0;
    parameter Real zC = 0.0;
    parameter Real mC = 1.0;
    parameter Real cCO = 0.1;
    parameter Real cCP = 0.5;
    parameter Real cCC = 0.1;
    parameter Real kC = 0.1;
    parameter Real default_compartment = 1.0;

    Real zD(start=0.0);
    Real zO(start=0.0);

    Real P;
    Real O;
    Real C;

initial equation
    P = 12.03;
    O = 0.14;
    C = 0.14;

equation

    der(P) = ((aP * pow(P, n) + bP) / (mP + zD + cPP * pow(P, n))) - (kP * P);
    der(O) = ((aO * pow(O, n) + bO + zO) / (mO + cOC * pow(C, n) + cOP * pow(P, n) + cOO * pow(O, n))) - (kO * O);
    der(C) = ((aC * pow(C, n) + bC + zC) / (mC + cCO * pow(O, n) + cCP * pow(P, n) + cCC * pow(C, n))) - (kC * C);
    der(zD)=0.0;
    der(zO)=0.0;

    when P > 12.03 then
        reinit(zO,1);
        reinit(zD,0.8);
    end when;
    when P > 12.03 then
        reinit(zO,0);
        reinit(zD,0);
    end when;

end BIOMD493;
