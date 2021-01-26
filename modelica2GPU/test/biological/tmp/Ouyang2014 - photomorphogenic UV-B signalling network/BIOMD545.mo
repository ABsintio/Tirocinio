
model BIOMD545 "Ouyang2014 - photomorphogenic UV-B signalling network"

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



    parameter Real ks1 = 0.23;
    parameter Real ks2 = 4.0526;
    parameter Real kdr1 = 0.1;
    parameter Real kdr2 = 0.2118;
    parameter Real k1 = 0.0043;
    parameter Real k2 = 161.62;
    parameter Real ka1 = 0.0372;
    parameter Real ka2 = 0.0611;
    parameter Real ka3 = 4.7207;
    parameter Real kd1 = 94.3524;
    parameter Real kd2 = 50.6973;
    parameter Real kd3 = 0.5508;
    parameter Real ks3 = 0.4397;
    parameter Real kdr3 = 1.246;
    parameter Real UV = 1.0;
    parameter Real ka4 = 10.1285;
    parameter Real kd4 = 1.1999;
    parameter Real n1 = 3.0;
    parameter Real n2 = 2.0;
    parameter Real n3 = 3.5;
    parameter Real kdr3a = 0.9735;
    parameter Real kdr3b = 0.406;
    parameter Real ksr = 0.7537;
    parameter Real Hypctol = 1.0;

    Real UM_Total(start=0.0);
    Real COP1_Total(start=0.0);

    Real CS;
    Real CD;
    Real CDCS;
    Real UVR8M;
    Real UCS;
    Real UVR8D;
    Real RUP;
    Real UR;
    Real UVR8_M;
    Real COP1;
    Real HY5;
    Real FHY3;
    Real DWD;
    Real CDW;

initial equation
    CS = 0.2;
    CD = 10.0;
    CDCS = 2.0;
    UVR8M = 0.0;
    UCS = 0.0;
    UVR8D = 20.0;
    RUP = 0.0;
    UR = 0.0;
    UVR8_M = 0.0;
    COP1 = 4.2;
    HY5 = 0.25;
    FHY3 = 5.0;
    DWD = 20.0;
    CDW = 0.0;

equation
    UM_Total = 2 * UCS + UVR8M + UR;
    COP1_Total = 2 * UCS + 2 * CDCS + CS;
    der(CS) = (ks1 * (1 + UV * n3 * (HY5 + FHY3)) - kdr1 * (1 + n1 * UV) * CS) - (2.0 * ka1 * pow(CS, 2) * pow(UVR8M, 2) - kd1 * UCS) - (2.0 * ka2 * pow(CS, 2) * CD - kd2 * CDCS);
    der(CD) =  - (ka2 * pow(CS, 2) * CD - kd2 * CDCS) - (ka4 * CD * DWD - kd4 * CDW);
    der(CDCS) = (ka2 * pow(CS, 2) * CD - kd2 * CDCS) ;
    der(UVR8M) = (2.0 * k2 * UVR8D) - (2.0 * k1 * pow(UVR8M, 2)) - (2.0 * ka1 * pow(CS, 2) * pow(UVR8M, 2) - kd1 * UCS) - (ka3 * UVR8M * RUP);
    der(UCS) = (ka1 * pow(CS, 2) * pow(UVR8M, 2) - kd1 * UCS) ;
    der(UVR8D) = (k1 * pow(UVR8M, 2)) + (kd3 * pow(UR, 2)) - (k2 * UVR8D);
    der(RUP) = (ks2 * (1 + UV * UCS) - kdr2 * RUP) + (2.0 * kd3 * pow(UR, 2)) - (ka3 * UVR8M * RUP);
    der(UR) = (ka3 * UVR8M * RUP) - (2.0 * kd3 * pow(UR, 2));
    der(UVR8_M) = 0.0;
    der(COP1) = 0.0;
    der(HY5) = (ks3 * (1 + n2 * UV) - kdr3 * (CDCS / (kdr3a + CDCS) + CDW / (kdr3b + CDW) - UCS / (ksr + UCS)) * HY5) ;
    der(FHY3) = 0.0;
    der(DWD) =  - (ka4 * CD * DWD - kd4 * CDW);
    der(CDW) = (ka4 * CD * DWD - kd4 * CDW) ;




end BIOMD545;
