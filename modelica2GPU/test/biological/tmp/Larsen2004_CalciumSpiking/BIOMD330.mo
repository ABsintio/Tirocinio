
model BIOMD330 "Larsen2004_CalciumSpiking"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;



    parameter Real k1 = 0.35;
    parameter Real k2 = 0.0;
    parameter Real k3 = 0.0001;
    parameter Real K4 = 0.783;
    parameter Real k5 = 1.24;
    parameter Real K6 = 0.7;
    parameter Real k7 = 5.82;
    parameter Real k8 = 32.24;
    parameter Real K9 = 29.09;
    parameter Real k10 = 0.93;
    parameter Real K11 = 2.667;
    parameter Real k12 = 0.76;
    parameter Real k13 = 0.0;
    parameter Real k14 = 149.0;
    parameter Real K15 = 0.16;
    parameter Real k16 = 20.9;
    parameter Real K17 = 0.05;
    parameter Real k18 = 79.0;
    parameter Real K19 = 2.0;
    parameter Real k20 = 1.5;
    parameter Real K21 = 1.5;
    parameter Real cytoplasm = 1.0;
    parameter Real ER = 1.0;
    parameter Real mit = 1.0;



    Real G_alpha;
    Real PLC;
    Real Ca_cyt;
    Real Ca_ER;
    Real Ca_mit;

initial equation
    G_alpha = 0.01;
    PLC = 0.01;
    Ca_cyt = 0.01;
    Ca_ER = 10.0;
    Ca_mit = 0.001;

equation

    der(G_alpha) = k1 + k2 * G_alpha - k3 * G_alpha * PLC / (G_alpha + K4) - k5 * G_alpha * Ca_cyt / (G_alpha + K6);
    der(PLC) = k7 * G_alpha - k8 * PLC / (PLC + K9);
    der(Ca_cyt) = (Ca_ER - Ca_cyt) * k10 * Ca_cyt * pow(PLC, 4) / (pow(PLC, 4) + pow(K11, 4)) + k12 * PLC + k13 * G_alpha - k14 * Ca_cyt / (Ca_cyt + K15) - k16 * Ca_cyt / (Ca_cyt + K17) - k18 * pow(Ca_cyt, 8) / (pow(K19, 8) + pow(Ca_cyt, 8)) + (Ca_mit - Ca_cyt) * k20 * Ca_cyt / (Ca_cyt + K21);
    der(Ca_ER) = -(Ca_ER - Ca_cyt) * k10 * Ca_cyt * pow(PLC, 4) / (pow(PLC, 4) + pow(K11, 4)) + k16 * Ca_cyt / (Ca_cyt + K17);
    der(Ca_mit) = k18 * pow(Ca_cyt, 8) / (pow(K19, 8) + pow(Ca_cyt, 8)) - (Ca_mit - Ca_cyt) * k20 * Ca_cyt / (Ca_cyt + K21);




end BIOMD330;
