
model BIOMD529 "Fribourg2014 - Dynamics of viral antagonism and innate immune response (H1N1 influenza A virus - NC_99)"

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



    parameter Real r5 = 1.0;
    parameter Real n3 = 8.0;
    parameter Real bm = 4.5;
    parameter Real sp = 0.1;
    parameter Real delta1 = 0.1;
    parameter Real n1 = 5.0;
    parameter Real sv = 0.1;
    parameter Real delta2 = 0.4;
    parameter Real n2 = 5.0;
    parameter Real TJtot = 0.0001;
    parameter Real K3 = 0.0043;
    parameter Real K9 = 780.0;
    parameter Real delta = 0.0003;
    parameter Real r0 = 0.003;
    parameter Real k15 = 3.6e-05;
    parameter Real tao1 = 2.5;
    parameter Real C = 500000.0;
    parameter Real vmax2 = 72000.0;
    parameter Real NA = 6.023e+23;
    parameter Real K2 = 72000.0;
    parameter Real K5 = 0.01;
    parameter Real tao3 = 0.56;
    parameter Real r3 = 1e-07;
    parameter Real k8 = 0.0036;
    parameter Real tao4 = 0.46;
    parameter Real k11 = 0.00036;
    parameter Real k14 = 3.204e-07;
    parameter Real tao6 = 1.0;
    parameter Real k12 = 3600.0;
    parameter Real k16 = 3600.0;
    parameter Real tao8 = 2.0;
    parameter Real vmax17 = 72000.0;
    parameter Real K17 = 0.002;
    parameter Real r1 = 0.00025;
    parameter Real rmax20 = 0.001;
    parameter Real K20 = 0.0006;
    parameter Real tao9 = 2.0;
    parameter Real vmax19 = 154800.0;
    parameter Real K19 = 0.004;
    parameter Real r4 = 1e-06;
    parameter Real k26 = 0.360085;
    parameter Real tao12 = 1.0;
    parameter Real k28 = 360.0;
    parameter Real tao13 = 15.0;
    parameter Real default = 1.0;
    parameter Real c2 = 1.0;
    parameter Real compartment = 1.0;

    Real NS(start=0.0);
    Real IC1(start=0.0);
    Real IC2(start=0.0);
    Real IC2ifa(start=0.0);
    Real TJ(start=0.0);

    Real w;
    Real IFNb_mRNA;
    Real IFNb_env;
    Real STATP2n;
    Real SOCS1m;
    Real IRF7m;
    Real IRF7Pn;
    Real IFNa_mRNA;
    Real IFNa_env;
    Real TNFam;
    Real TNFenv;
    Real STATm;
    Real STAT;

initial equation
    w = 0.0;
    IFNb_mRNA = 0.0;
    IFNb_env = 0.0;
    STATP2n = 0.0;
    SOCS1m = 0.0;
    IRF7m = 0.0;
    IRF7Pn = 0.0;
    IFNa_mRNA = 0.0;
    IFNa_env = 0.0;
    TNFam = 0.0;
    TNFenv = 0.0;
    STATm = 0.0;
    STAT = 0.1;

equation
    NS = r5 * pow(time, n3) / (pow(bm, n3) + pow(time, n3));
    IC1 = (1 + sp * pow(NS / delta1, n1)) / (1 + pow(NS / delta1, n1));
    IC2 = (1 + sv * pow(NS / delta2, n2)) / (1 + pow(NS / delta2, n2));
    IC2ifa = (1 + 3 * sv * pow(NS / delta2, n2)) / (1 + pow(NS / delta2, n2));
    TJ = TJtot * (IFNb_env + IFNa_env) / (K3 + IFNb_env + IFNa_env) * 1 / (1 + K9 * SOCS1m / delta);
    der(w) = 0.0;
    der(IFNb_mRNA) = ((r0 * IC1 + k15 * IRF7Pn) * IC2 - IFNb_mRNA * log(2) / tao1) ;
    der(IFNb_env) = (1000000000 * C * vmax2 / NA * IFNb_mRNA / (K2 + IFNb_mRNA)) ;
    der(STATP2n) = (K5 * TJ * STAT / 2 / (K5 + STAT) - STATP2n * log(2) / tao3) ;
    der(SOCS1m) = ((r3 * IC1 + k8 * STATP2n) * IC2 - SOCS1m * log(2) / tao4) ;
    der(IRF7m) = ((k11 * STATP2n + k14 * IRF7Pn) * IC2 - IRF7m * log(2) / tao6) ;
    der(IRF7Pn) = (k12 * IC1 * IRF7m) ;
    der(IFNa_mRNA) = (k16 * IRF7Pn * IC2ifa - IFNa_mRNA * log(2) / tao8) ;
    der(IFNa_env) = (1000000000 * C * vmax17 / NA * IFNa_mRNA / (K17 + IFNa_mRNA)) ;
    der(TNFam) = ((r1 * IC1 + rmax20 * TNFenv / (K20 + TNFenv)) * IC2 - TNFam * log(2) / tao9) ;
    der(TNFenv) = (1000000000 * C * vmax19 / NA * TNFam / (K19 + TNFam)) ;
    der(STATm) = ((r4 * IC1 + k26 * STATP2n) * IC2 - STATm * log(2) / tao12) ;
    der(STAT) = (k28 * STATm - STAT * log(2) / tao13) ;




end BIOMD529;
