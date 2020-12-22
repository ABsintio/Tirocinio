
model BIOMD105 "Proctor2007 - Age related decline of proteolysis, ubiquitin-proteome system"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real k1 = 0.01;
    parameter Real k2 = 2e-06;
    parameter Real k3 = 4e-06;
    parameter Real k61 = 1.7e-05;
    parameter Real k61r = 0.0002;
    parameter Real k62 = 0.0002;
    parameter Real k63 = 0.001;
    parameter Real k64 = 0.001;
    parameter Real k65 = 0.01;
    parameter Real k66 = 1e-05;
    parameter Real k67 = 1e-05;
    parameter Real k68 = 1e-05;
    parameter Real k69 = 0.0;
    parameter Real k71 = 1e-08;
    parameter Real k72 = 1e-08;
    parameter Real k73 = 0.001;
    parameter Real k74 = 1e-05;
    parameter Real cytosol = 1.0;



    Real NatP;
    Real MisP;
    Real Ub;
    Real E1;
    Real E2;
    Real E3;
    Real DUB;
    Real Proteasome;
    Real ROS;
    Real E1_Ub;
    Real E2_Ub;
    Real E3_MisP;
    Real MisP_Ub;
    Real MisP_Ub2;
    Real MisP_Ub3;
    Real MisP_Ub4;
    Real MisP_Ub5;
    Real MisP_Ub6;
    Real MisP_Ub7;
    Real MisP_Ub8;
    Real MisP_Ub4_Proteasome;
    Real MisP_Ub5_Proteasome;
    Real MisP_Ub6_Proteasome;
    Real MisP_Ub7_Proteasome;
    Real MisP_Ub8_Proteasome;
    Real ATP;
    Real ADP;
    Real AMP;
    Real Source;
    Real degUb4;
    Real degUb5;
    Real degUb6;
    Real degUb7;
    Real degUb8;
    Real totMisP;
    Real refNatP;
    Real AggP;
    Real SeqAggP;
    Real AggP_Proteasome;

initial equation
    NatP = 500.0;
    MisP = 0.0;
    Ub = 500.0;
    E1 = 100.0;
    E2 = 100.0;
    E3 = 100.0;
    DUB = 200.0;
    Proteasome = 100.0;
    ROS = 10.0;
    E1_Ub = 0.0;
    E2_Ub = 0.0;
    E3_MisP = 0.0;
    MisP_Ub = 0.0;
    MisP_Ub2 = 0.0;
    MisP_Ub3 = 0.0;
    MisP_Ub4 = 0.0;
    MisP_Ub5 = 0.0;
    MisP_Ub6 = 0.0;
    MisP_Ub7 = 0.0;
    MisP_Ub8 = 0.0;
    MisP_Ub4_Proteasome = 0.0;
    MisP_Ub5_Proteasome = 0.0;
    MisP_Ub6_Proteasome = 0.0;
    MisP_Ub7_Proteasome = 0.0;
    MisP_Ub8_Proteasome = 0.0;
    ATP = 10000.0;
    ADP = 1000.0;
    AMP = 1000.0;
    Source = 1.0;
    degUb4 = 0.0;
    degUb5 = 0.0;
    degUb6 = 0.0;
    degUb7 = 0.0;
    degUb8 = 0.0;
    totMisP = 0.0;
    refNatP = 0.0;
    AggP = 0.0;
    SeqAggP = 0.0;
    AggP_Proteasome = 0.0;

equation

    der(NatP) = (k1 * Source) + (k3 * MisP) - (k2 * NatP * ROS);
    der(MisP) = (k2 * NatP * ROS) + (k61r * E3_MisP) + (k66 * MisP_Ub * DUB) - (k3 * MisP) - (k61 * MisP * E3) - (2.0 * k71 * MisP * (MisP - 1) * 0.5) - (k71 * MisP * AggP) - (k72 * MisP_Ub * MisP) - (k72 * MisP_Ub2 * MisP) - (k72 * MisP_Ub3 * MisP) - (k72 * MisP_Ub4 * MisP) - (k72 * MisP_Ub5 * MisP) - (k72 * MisP_Ub6 * MisP) - (k72 * MisP_Ub7 * MisP) - (k72 * MisP_Ub8 * MisP);
    der(Ub) = (k66 * MisP_Ub8 * DUB) + (k66 * MisP_Ub7 * DUB) + (k66 * MisP_Ub6 * DUB) + (k66 * MisP_Ub5 * DUB) + (k66 * MisP_Ub4 * DUB) + (k66 * MisP_Ub3 * DUB) + (k66 * MisP_Ub2 * DUB) + (k66 * MisP_Ub * DUB) + (k68 * MisP_Ub8_Proteasome * DUB) + (k68 * MisP_Ub7_Proteasome * DUB) + (k68 * MisP_Ub6_Proteasome * DUB) + (k68 * MisP_Ub5_Proteasome * DUB) + (k68 * MisP_Ub4_Proteasome * DUB) + (4.0 * k69 * MisP_Ub4_Proteasome * ATP / (5000 + ATP)) + (5.0 * k69 * MisP_Ub5_Proteasome * ATP / (5000 + ATP)) + (6.0 * k69 * MisP_Ub6_Proteasome * ATP / (5000 + ATP)) + (7.0 * k69 * MisP_Ub7_Proteasome * ATP / (5000 + ATP)) + (8.0 * k69 * MisP_Ub8_Proteasome * ATP / (5000 + ATP)) - (k62 * E1 * Ub * ATP / (5000 + ATP));
    der(E1) = (k63 * E2 * E1_Ub) - (k62 * E1 * Ub * ATP / (5000 + ATP));
    der(E2) = (k64 * E2_Ub * E3_MisP) + (k65 * MisP_Ub * E2_Ub) + (k65 * MisP_Ub2 * E2_Ub) + (k65 * MisP_Ub3 * E2_Ub) + (k65 * MisP_Ub4 * E2_Ub) + (k65 * MisP_Ub5 * E2_Ub) + (k65 * MisP_Ub6 * E2_Ub) + (k65 * MisP_Ub7 * E2_Ub) - (k63 * E2 * E1_Ub);
    der(E3) = (k61r * E3_MisP) + (k64 * E2_Ub * E3_MisP) - (k61 * MisP * E3);
    der(DUB) = (k66 * MisP_Ub8 * DUB) + (k66 * MisP_Ub7 * DUB) + (k66 * MisP_Ub6 * DUB) + (k66 * MisP_Ub5 * DUB) + (k66 * MisP_Ub4 * DUB) + (k66 * MisP_Ub3 * DUB) + (k66 * MisP_Ub2 * DUB) + (k66 * MisP_Ub * DUB) + (k68 * MisP_Ub8_Proteasome * DUB) + (k68 * MisP_Ub7_Proteasome * DUB) + (k68 * MisP_Ub6_Proteasome * DUB) + (k68 * MisP_Ub5_Proteasome * DUB) + (k68 * MisP_Ub4_Proteasome * DUB) - (k66 * MisP_Ub8 * DUB) - (k66 * MisP_Ub7 * DUB) - (k66 * MisP_Ub6 * DUB) - (k66 * MisP_Ub5 * DUB) - (k66 * MisP_Ub4 * DUB) - (k66 * MisP_Ub3 * DUB) - (k66 * MisP_Ub2 * DUB) - (k66 * MisP_Ub * DUB) - (k68 * MisP_Ub8_Proteasome * DUB) - (k68 * MisP_Ub7_Proteasome * DUB) - (k68 * MisP_Ub6_Proteasome * DUB) - (k68 * MisP_Ub5_Proteasome * DUB) - (k68 * MisP_Ub4_Proteasome * DUB);
    der(Proteasome) = (k68 * MisP_Ub4_Proteasome * DUB) + (k69 * MisP_Ub4_Proteasome * ATP / (5000 + ATP)) + (k69 * MisP_Ub5_Proteasome * ATP / (5000 + ATP)) + (k69 * MisP_Ub6_Proteasome * ATP / (5000 + ATP)) + (k69 * MisP_Ub7_Proteasome * ATP / (5000 + ATP)) + (k69 * MisP_Ub8_Proteasome * ATP / (5000 + ATP)) - (k67 * MisP_Ub4 * Proteasome) - (k67 * MisP_Ub5 * Proteasome) - (k67 * MisP_Ub6 * Proteasome) - (k67 * MisP_Ub7 * Proteasome) - (k67 * MisP_Ub8 * Proteasome) - (k74 * AggP * Proteasome);
    der(ROS) = (k2 * NatP * ROS) - (k2 * NatP * ROS);
    der(E1_Ub) = (k62 * E1 * Ub * ATP / (5000 + ATP)) - (k63 * E2 * E1_Ub);
    der(E2_Ub) = (k63 * E2 * E1_Ub) - (k64 * E2_Ub * E3_MisP) - (k65 * MisP_Ub * E2_Ub) - (k65 * MisP_Ub2 * E2_Ub) - (k65 * MisP_Ub3 * E2_Ub) - (k65 * MisP_Ub4 * E2_Ub) - (k65 * MisP_Ub5 * E2_Ub) - (k65 * MisP_Ub6 * E2_Ub) - (k65 * MisP_Ub7 * E2_Ub);
    der(E3_MisP) = (k61 * MisP * E3) - (k61r * E3_MisP) - (k64 * E2_Ub * E3_MisP);
    der(MisP_Ub) = (k64 * E2_Ub * E3_MisP) + (k66 * MisP_Ub2 * DUB) - (k65 * MisP_Ub * E2_Ub) - (k66 * MisP_Ub * DUB) - (2.0 * k72 * MisP_Ub * (MisP_Ub - 1) * 0.5) - (k72 * MisP_Ub * MisP) - (k72 * MisP_Ub * AggP) - (k72 * MisP_Ub * MisP_Ub2) - (k72 * MisP_Ub * MisP_Ub3) - (k72 * MisP_Ub * MisP_Ub4) - (k72 * MisP_Ub * MisP_Ub5) - (k72 * MisP_Ub * MisP_Ub6) - (k72 * MisP_Ub * MisP_Ub7) - (k72 * MisP_Ub * MisP_Ub8);
    der(MisP_Ub2) = (k65 * MisP_Ub * E2_Ub) + (k66 * MisP_Ub3 * DUB) - (k65 * MisP_Ub2 * E2_Ub) - (k66 * MisP_Ub2 * DUB) - (2.0 * k72 * MisP_Ub2 * (MisP_Ub2 - 1) * 0.5) - (k72 * MisP_Ub2 * MisP) - (k72 * MisP_Ub2 * AggP) - (k72 * MisP_Ub * MisP_Ub2) - (k72 * MisP_Ub2 * MisP_Ub3) - (k72 * MisP_Ub2 * MisP_Ub4) - (k72 * MisP_Ub2 * MisP_Ub5) - (k72 * MisP_Ub2 * MisP_Ub6) - (k72 * MisP_Ub2 * MisP_Ub7) - (k72 * MisP_Ub2 * MisP_Ub8);
    der(MisP_Ub3) = (k65 * MisP_Ub2 * E2_Ub) + (k66 * MisP_Ub4 * DUB) + (k68 * MisP_Ub4_Proteasome * DUB) - (k65 * MisP_Ub3 * E2_Ub) - (k66 * MisP_Ub3 * DUB) - (2.0 * k72 * MisP_Ub3 * (MisP_Ub3 - 1) * 0.5) - (k72 * MisP_Ub3 * MisP) - (k72 * MisP_Ub3 * AggP) - (k72 * MisP_Ub * MisP_Ub3) - (k72 * MisP_Ub2 * MisP_Ub3) - (k72 * MisP_Ub3 * MisP_Ub4) - (k72 * MisP_Ub3 * MisP_Ub5) - (k72 * MisP_Ub3 * MisP_Ub6) - (k72 * MisP_Ub3 * MisP_Ub7) - (k72 * MisP_Ub3 * MisP_Ub8);
    der(MisP_Ub4) = (k65 * MisP_Ub3 * E2_Ub) + (k66 * MisP_Ub5 * DUB) - (k65 * MisP_Ub4 * E2_Ub) - (k66 * MisP_Ub4 * DUB) - (k67 * MisP_Ub4 * Proteasome) - (2.0 * k72 * MisP_Ub4 * (MisP_Ub4 - 1) * 0.5) - (k72 * MisP_Ub4 * MisP) - (k72 * MisP_Ub4 * AggP) - (k72 * MisP_Ub * MisP_Ub4) - (k72 * MisP_Ub2 * MisP_Ub4) - (k72 * MisP_Ub3 * MisP_Ub4) - (k72 * MisP_Ub4 * MisP_Ub5) - (k72 * MisP_Ub4 * MisP_Ub6) - (k72 * MisP_Ub4 * MisP_Ub7) - (k72 * MisP_Ub4 * MisP_Ub8);
    der(MisP_Ub5) = (k65 * MisP_Ub4 * E2_Ub) + (k66 * MisP_Ub6 * DUB) - (k65 * MisP_Ub5 * E2_Ub) - (k66 * MisP_Ub5 * DUB) - (k67 * MisP_Ub5 * Proteasome) - (2.0 * k72 * MisP_Ub5 * (MisP_Ub5 - 1) * 0.5) - (k72 * MisP_Ub5 * MisP) - (k72 * MisP_Ub5 * AggP) - (k72 * MisP_Ub * MisP_Ub5) - (k72 * MisP_Ub2 * MisP_Ub5) - (k72 * MisP_Ub3 * MisP_Ub5) - (k72 * MisP_Ub4 * MisP_Ub5) - (k72 * MisP_Ub5 * MisP_Ub6) - (k72 * MisP_Ub5 * MisP_Ub7) - (k72 * MisP_Ub5 * MisP_Ub8);
    der(MisP_Ub6) = (k65 * MisP_Ub5 * E2_Ub) + (k66 * MisP_Ub7 * DUB) - (k65 * MisP_Ub6 * E2_Ub) - (k66 * MisP_Ub6 * DUB) - (k67 * MisP_Ub6 * Proteasome) - (2.0 * k72 * MisP_Ub6 * (MisP_Ub6 - 1) * 0.5) - (k72 * MisP_Ub6 * MisP) - (k72 * MisP_Ub6 * AggP) - (k72 * MisP_Ub * MisP_Ub6) - (k72 * MisP_Ub2 * MisP_Ub6) - (k72 * MisP_Ub3 * MisP_Ub6) - (k72 * MisP_Ub4 * MisP_Ub6) - (k72 * MisP_Ub5 * MisP_Ub6) - (k72 * MisP_Ub6 * MisP_Ub7) - (k72 * MisP_Ub6 * MisP_Ub8);
    der(MisP_Ub7) = (k65 * MisP_Ub6 * E2_Ub) + (k66 * MisP_Ub8 * DUB) - (k65 * MisP_Ub7 * E2_Ub) - (k66 * MisP_Ub7 * DUB) - (k67 * MisP_Ub7 * Proteasome) - (2.0 * k72 * MisP_Ub7 * (MisP_Ub7 - 1) * 0.5) - (k72 * MisP_Ub7 * MisP) - (k72 * MisP_Ub7 * AggP) - (k72 * MisP_Ub * MisP_Ub7) - (k72 * MisP_Ub2 * MisP_Ub7) - (k72 * MisP_Ub3 * MisP_Ub7) - (k72 * MisP_Ub4 * MisP_Ub7) - (k72 * MisP_Ub5 * MisP_Ub7) - (k72 * MisP_Ub6 * MisP_Ub7) - (k72 * MisP_Ub7 * MisP_Ub8);
    der(MisP_Ub8) = (k65 * MisP_Ub7 * E2_Ub) - (k66 * MisP_Ub8 * DUB) - (k67 * MisP_Ub8 * Proteasome) - (2.0 * k72 * MisP_Ub8 * (MisP_Ub8 - 1) * 0.5) - (k72 * MisP_Ub8 * MisP) - (k72 * MisP_Ub8 * AggP) - (k72 * MisP_Ub * MisP_Ub8) - (k72 * MisP_Ub2 * MisP_Ub8) - (k72 * MisP_Ub3 * MisP_Ub8) - (k72 * MisP_Ub4 * MisP_Ub8) - (k72 * MisP_Ub5 * MisP_Ub8) - (k72 * MisP_Ub6 * MisP_Ub8) - (k72 * MisP_Ub7 * MisP_Ub8);
    der(MisP_Ub4_Proteasome) = (k67 * MisP_Ub4 * Proteasome) + (k68 * MisP_Ub5_Proteasome * DUB) - (k68 * MisP_Ub4_Proteasome * DUB) - (k69 * MisP_Ub4_Proteasome * ATP / (5000 + ATP));
    der(MisP_Ub5_Proteasome) = (k67 * MisP_Ub5 * Proteasome) + (k68 * MisP_Ub6_Proteasome * DUB) - (k68 * MisP_Ub5_Proteasome * DUB) - (k69 * MisP_Ub5_Proteasome * ATP / (5000 + ATP));
    der(MisP_Ub6_Proteasome) = (k67 * MisP_Ub6 * Proteasome) + (k68 * MisP_Ub7_Proteasome * DUB) - (k68 * MisP_Ub6_Proteasome * DUB) - (k69 * MisP_Ub6_Proteasome * ATP / (5000 + ATP));
    der(MisP_Ub7_Proteasome) = (k67 * MisP_Ub7 * Proteasome) + (k68 * MisP_Ub8_Proteasome * DUB) - (k68 * MisP_Ub7_Proteasome * DUB) - (k69 * MisP_Ub7_Proteasome * ATP / (5000 + ATP));
    der(MisP_Ub8_Proteasome) = (k67 * MisP_Ub8 * Proteasome) - (k68 * MisP_Ub8_Proteasome * DUB) - (k69 * MisP_Ub8_Proteasome * ATP / (5000 + ATP));
    der(ATP) = 0.0;
    der(ADP) = 0.0;
    der(AMP) = 0.0;
    der(Source) = 0.0;
    der(degUb4) = (k69 * MisP_Ub4_Proteasome * ATP / (5000 + ATP)) ;
    der(degUb5) = (k69 * MisP_Ub5_Proteasome * ATP / (5000 + ATP)) ;
    der(degUb6) = (k69 * MisP_Ub6_Proteasome * ATP / (5000 + ATP)) ;
    der(degUb7) = (k69 * MisP_Ub7_Proteasome * ATP / (5000 + ATP)) ;
    der(degUb8) = (k69 * MisP_Ub8_Proteasome * ATP / (5000 + ATP)) ;
    der(totMisP) = (k2 * NatP * ROS) ;
    der(refNatP) = (k3 * MisP) ;
    der(AggP) = (k71 * MisP * (MisP - 1) * 0.5) + (2.0 * k71 * MisP * AggP) + (k72 * MisP_Ub * (MisP_Ub - 1) * 0.5) + (k72 * MisP_Ub2 * (MisP_Ub2 - 1) * 0.5) + (k72 * MisP_Ub3 * (MisP_Ub3 - 1) * 0.5) + (k72 * MisP_Ub4 * (MisP_Ub4 - 1) * 0.5) + (k72 * MisP_Ub5 * (MisP_Ub5 - 1) * 0.5) + (k72 * MisP_Ub6 * (MisP_Ub6 - 1) * 0.5) + (k72 * MisP_Ub7 * (MisP_Ub7 - 1) * 0.5) + (k72 * MisP_Ub8 * (MisP_Ub8 - 1) * 0.5) + (k72 * MisP_Ub * MisP) + (k72 * MisP_Ub2 * MisP) + (k72 * MisP_Ub3 * MisP) + (k72 * MisP_Ub4 * MisP) + (k72 * MisP_Ub5 * MisP) + (k72 * MisP_Ub6 * MisP) + (k72 * MisP_Ub7 * MisP) + (k72 * MisP_Ub8 * MisP) + (2.0 * k72 * MisP_Ub * AggP) + (2.0 * k72 * MisP_Ub2 * AggP) + (2.0 * k72 * MisP_Ub3 * AggP) + (2.0 * k72 * MisP_Ub4 * AggP) + (2.0 * k72 * MisP_Ub5 * AggP) + (2.0 * k72 * MisP_Ub6 * AggP) + (2.0 * k72 * MisP_Ub7 * AggP) + (2.0 * k72 * MisP_Ub8 * AggP) + (k72 * MisP_Ub * MisP_Ub2) + (k72 * MisP_Ub * MisP_Ub3) + (k72 * MisP_Ub * MisP_Ub4) + (k72 * MisP_Ub * MisP_Ub5) + (k72 * MisP_Ub * MisP_Ub6) + (k72 * MisP_Ub * MisP_Ub7) + (k72 * MisP_Ub * MisP_Ub8) + (k72 * MisP_Ub2 * MisP_Ub3) + (k72 * MisP_Ub2 * MisP_Ub4) + (k72 * MisP_Ub2 * MisP_Ub5) + (k72 * MisP_Ub2 * MisP_Ub6) + (k72 * MisP_Ub2 * MisP_Ub7) + (k72 * MisP_Ub2 * MisP_Ub8) + (k72 * MisP_Ub3 * MisP_Ub4) + (k72 * MisP_Ub3 * MisP_Ub5) + (k72 * MisP_Ub3 * MisP_Ub6) + (k72 * MisP_Ub3 * MisP_Ub7) + (k72 * MisP_Ub3 * MisP_Ub8) + (k72 * MisP_Ub4 * MisP_Ub5) + (k72 * MisP_Ub4 * MisP_Ub6) + (k72 * MisP_Ub4 * MisP_Ub7) + (k72 * MisP_Ub4 * MisP_Ub8) + (k72 * MisP_Ub5 * MisP_Ub6) + (k72 * MisP_Ub5 * MisP_Ub7) + (k72 * MisP_Ub5 * MisP_Ub8) + (k72 * MisP_Ub6 * MisP_Ub7) + (k72 * MisP_Ub6 * MisP_Ub8) + (k72 * MisP_Ub7 * MisP_Ub8) - (k71 * MisP * AggP) - (k72 * MisP_Ub * AggP) - (k72 * MisP_Ub2 * AggP) - (k72 * MisP_Ub3 * AggP) - (k72 * MisP_Ub4 * AggP) - (k72 * MisP_Ub5 * AggP) - (k72 * MisP_Ub6 * AggP) - (k72 * MisP_Ub7 * AggP) - (k72 * MisP_Ub8 * AggP) - (k73 * AggP) - (k74 * AggP * Proteasome);
    der(SeqAggP) = (k73 * AggP) ;
    der(AggP_Proteasome) = (k74 * AggP * Proteasome) ;




end BIOMD105;
