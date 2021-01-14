
model BIOMD400 "Cooling2007_IP3transients_CardiacMyocyte"

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
    
    function lt
        input Real x;
        input Real y;
        output Boolean z;
        algorithm
            z := x < y;
    end lt;
    
    
    function geq
        input Real x;
        input Real y;
        output Boolean z;
        algorithm
            z := x >= y;
    end geq;


    parameter Real Ls = 0.1;
    parameter Real ts = 30.0;
    parameter Real PIP2 = 4000.0;
    parameter Real kf1 = 0.0003;
    parameter Real Kd1 = 3e-05;
    parameter Real kf2 = 0.000275;
    parameter Real Kd2 = 27500.0;
    parameter Real kf3 = 1.0;
    parameter Real kr3 = 0.001;
    parameter Real kf4 = 0.3;
    parameter Real Kd4 = 3e-05;
    parameter Real kf5 = 0.0004;
    parameter Real kf6 = 1.0;
    parameter Real kf7 = 0.15;
    parameter Real kf8 = 0.0167;
    parameter Real kr8 = 0.0167;
    parameter Real kf9 = 0.0042;
    parameter Real kr9 = 1.0;
    parameter Real kf10 = 0.042;
    parameter Real kr10 = 1.0;
    parameter Real kf11 = 0.0334;
    parameter Real Kd11 = 0.1;
    parameter Real kf12 = 6.0;
    parameter Real kf13 = 6.0;
    parameter Real kf14 = 0.444;
    parameter Real Km14 = 19.8;
    parameter Real kf15 = 3.8;
    parameter Real Km15 = 5.0;
    parameter Real kf16 = 1.25;
    parameter Real Vc = 2550.0;
    parameter Real Rpc = 4.61;
    parameter Real Compartment = 1.0;

    Real L(start=0.0);
    Real J1(start=0.0);
    Real kr1(start=0.0);
    Real J2(start=0.0);
    Real kr2(start=0.0);
    Real J3(start=0.0);
    Real J4(start=0.0);
    Real kr4(start=0.0);
    Real J5(start=0.0);
    Real J6(start=0.0);
    Real J7(start=0.0);
    Real J8(start=0.0);
    Real J9(start=0.0);
    Real J10(start=0.0);
    Real J11(start=0.0);
    Real kr11(start=0.0);
    Real J12(start=0.0);
    Real J13(start=0.0);
    Real J14(start=0.0);
    Real J15(start=0.0);
    Real J16(start=0.0);
    Real Cpc(start=0.0);
    Real Cc(start=0.0);
    Real Cp(start=0.0);

    Real Gd;
    Real Gt;
    Real R;
    Real Rl;
    Real Rg;
    Real Rlg;
    Real Rlgp;
    Real IP3;
    Real Pc;
    Real Pcg;
    Real P;
    Real Pg;
    Real Ca;

initial equation
    Gd = 10000.0;
    Gt = 0.0;
    R = 13.9;
    Rl = 0.0;
    Rg = 5.06;
    Rlg = 0.0;
    Rlgp = 0.0;
    IP3 = 0.015;
    Pc = 9.09;
    Pcg = 0.0;
    P = 90.9;
    Pg = 0.0;
    Ca = 0.1;

equation
    Cc = 1 / (Vc * 602.2);
    Cp = 1 / (Vc * Rpc);
    Cpc = Cc / Cp;
    J13 = kf13 * Pg;
    J12 = kf12 * Pcg;
    kr11 = kf11 * Kd11;
    J11 = kf11 * Pg * Ca - kr11 * Pcg;
    J10 = kf10 * Pc * Gt - kr10 * Pcg;
    J8 = kf8 * P * Ca - kr8 * Pc;
    J9 = kf9 * P * Gt - kr9 * Pg;
    J16 = kf16 * IP3;
    J14 = kf14 * Pc * PIP2 / (Km14 / Cpc + PIP2);
    J15 = kf15 * Pcg * PIP2 / (Km15 / Cpc + PIP2);
    J7 = kf7 * Gt;
    L = piecewise(Ls / (1 + exp(-80 * (time - ts - 0.05))), lt(time, ts + 0.15) and geq(time, ts), piecewise(Ls, geq(time, ts + 0.15), 0));
    kr1 = kf1 * Kd1;
    J1 = kf1 * R * L - kr1 * Rl;
    kr2 = kf2 * Kd2;
    J2 = kf2 * R * Gd - kr2 * Rg;
    J3 = kf3 * Rl * Gd - kr3 * Rlg;
    kr4 = kf4 * Kd4;
    J4 = kf4 * L * Rg - kr4 * Rlg;
    J5 = kf5 * Rlg;
    J6 = kf6 * Rlg;
    der(P) = J13 - (J9 + J8);
    der(Pg) = J9 - (J11 + J13);
    der(Pc) = J8 + J12 - J10;
    der(Pcg) = J10 + J11 - J12;
    der(IP3) = Cpc * (J14 + J15) - J16;
    der(Gd) = J7 + J13 + J12 - (J2 + J3);
    der(Gt) = J6 - (J7 + J9 + J10);
    der(Ca) = Cpc * (-1) * (J8 + J11);
    der(R) = -1 * (J1 + J2);
    der(Rl) = J1 + J6 - J3;
    der(Rg) = J2 - J4;
    der(Rlgp) = J5;
    der(Rlg) = J3 - J5 + J4 - J6;




end BIOMD400;
