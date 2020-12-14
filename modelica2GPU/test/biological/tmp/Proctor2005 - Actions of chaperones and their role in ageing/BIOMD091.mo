
model BIOMD091 "Proctor2005 - Actions of chaperones and their role in ageing"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real k1 = 10.0;
    parameter Real k2 = 2e-05;
    parameter Real k3 = 50.0;
    parameter Real k4 = 1e-05;
    parameter Real k5 = 4e-06;
    parameter Real k6 = 6e-07;
    parameter Real k7 = 1e-07;
    parameter Real k8 = 500.0;
    parameter Real k9 = 1.0;
    parameter Real k10 = 0.01;
    parameter Real k11 = 100.0;
    parameter Real k12 = 0.5;
    parameter Real k13 = 0.5;
    parameter Real k14 = 0.05;
    parameter Real k15 = 0.08;
    parameter Real k16 = 1000.0;
    parameter Real k17 = 8.02e-09;
    parameter Real k18 = 12.0;
    parameter Real k19 = 0.02;
    parameter Real k20 = 0.1;
    parameter Real k21 = 0.001;
    parameter Real compartment = 1.0;



    Real Hsp90;
    Real HCom;
    Real HSF1;
    Real MisP;
    Real MCom;
    Real TriH;
    Real DiH;
    Real NatP;
    Real AggP;
    Real HSE;
    Real HSETriH;
    Real X;
    Real ROS;
    Real ATP;
    Real ADP;
    Real source;

initial equation
    Hsp90 = 300000.0;
    HCom = 5900.0;
    HSF1 = 100.0;
    MisP = 0.0;
    MCom = 0.0;
    TriH = 0.0;
    DiH = 0.0;
    NatP = 6000000.0;
    AggP = 0.0;
    HSE = 1.0;
    HSETriH = 0.0;
    X = 0.0;
    ROS = 100.0;
    ATP = 10000.0;
    ADP = 1000.0;
    source = 0.0;

equation

    der(Hsp90) = (k4 * MCom) + (k5 * MCom * ATP) + (k9 * HCom) + (k16 * HSETriH) - (k3 * MisP * Hsp90) - (k8 * Hsp90 * HSF1) - (k17 * Hsp90 * ATP);
    der(HCom) = (k8 * Hsp90 * HSF1) - (k9 * HCom);
    der(HSF1) = (k9 * HCom) + (k12 * TriH) + (2.0 * k13 * DiH) - (k8 * Hsp90 * HSF1) - (2.0 * (HSF1 - 1) * k10 * HSF1 / 2) - (k11 * HSF1 * DiH);
    der(MisP) = (k2 * NatP * ROS) + (k4 * MCom) - (k3 * MisP * Hsp90) - (k6 * MisP * ATP) - (2.0 * (MisP - 1) * k7 * MisP / 2) - (k7 * MisP * AggP);
    der(MCom) = (k3 * MisP * Hsp90) - (k4 * MCom) - (k5 * MCom * ATP);
    der(TriH) = (k11 * HSF1 * DiH) + (k15 * HSETriH) - (k12 * TriH) - (k14 * HSE * TriH);
    der(DiH) = ((HSF1 - 1) * k10 * HSF1 / 2) + (k12 * TriH) - (k11 * HSF1 * DiH) - (k13 * DiH);
    der(NatP) = (k1) + (k5 * MCom * ATP) - (k2 * NatP * ROS);
    der(AggP) = ((MisP - 1) * k7 * MisP / 2) + (2.0 * k7 * MisP * AggP) - (k7 * MisP * AggP);
    der(HSE) = (k15 * HSETriH) - (k14 * HSE * TriH);
    der(HSETriH) = (k14 * HSE * TriH) + (k16 * HSETriH) - (k15 * HSETriH) - (k16 * HSETriH);
    der(X) = (1) ;
    der(ROS) = (k2 * NatP * ROS) + (k20) - (k2 * NatP * ROS) - (k21 * ROS);
    der(ATP) = (k18 * ADP) - (k5 * MCom * ATP) - (k6 * MisP * ATP) - (k17 * Hsp90 * ATP) - (k19 * ATP);
    der(ADP) = (k5 * MCom * ATP) + (k6 * MisP * ATP) + (k17 * Hsp90 * ATP) + (k19 * ATP) - (k18 * ADP);
    der(source) = 0.0;




end BIOMD091;
