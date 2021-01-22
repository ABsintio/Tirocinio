
model BIOMD479 "Croft2013 - GPCR-RGS interaction that compartmentalizes RGS activity"

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



    parameter Real ka = 1.5;
    parameter Real Ligand_conc = 0.1;
    parameter Real k1_0 = 0.0025;
    parameter Real k2_1 = 0.005;
    parameter Real k3_2 = 0.02;
    parameter Real k4_3 = 0.005;
    parameter Real k5_4 = 0.005;
    parameter Real k6_5 = 0.005;
    parameter Real k7_6 = 0.02;
    parameter Real k8_7 = 0.005;
    parameter Real k9_8 = 50.0;
    parameter Real k10_9 = 0.2;
    parameter Real k11_10 = 40.0;
    parameter Real k12_11 = 10.0;
    parameter Real k13_12 = 0.0005;
    parameter Real k14_13 = 0.005;
    parameter Real k15_14 = 0.1;
    parameter Real k16_15 = 100.0;
    parameter Real k17_16 = 0.1;
    parameter Real k18_17 = 100.0;
    parameter Real k19_18 = 0.1;
    parameter Real k20_19 = 0.1;
    parameter Real k21_20 = 0.1;
    parameter Real k22_21 = 60.0;
    parameter Real k23_22 = 0.05;
    parameter Real k24_23 = 0.0001;
    parameter Real k25_24 = 1.0;
    parameter Real k26_25 = 0.005;
    parameter Real k27_26 = 500.0;
    parameter Real k28_27 = 2.5;
    parameter Real k29_28 = 100.0;
    parameter Real k30_29 = 2.5;
    parameter Real k31_30 = 0.5;
    parameter Real k32_31 = 0.5;
    parameter Real k33_32 = 0.005;
    parameter Real k34_33 = 50.0;
    parameter Real k35_34 = 0.3;
    parameter Real k36_35 = 50.0;
    parameter Real k37_36 = 0.3;
    parameter Real k38_37 = 1000.0;
    parameter Real k39_38 = 1000.0;
    parameter Real k40_39 = 10.0;
    parameter Real compartment = 1.0;



    Real L;
    Real R;
    Real LR;
    Real Gabg;
    Real RGabg;
    Real LRGabg;
    Real RRGSm;
    Real LRRGSm;
    Real RRGSmGabg;
    Real LRRGSmGabg;
    Real GaGTP;
    Real Gbg;
    Real Effector;
    Real GaGTPEffector;
    Real RGSc;
    Real RGSm;
    Real RGSmGaGTP;
    Real GaGTPEffectorOFF;
    Real RGSmGaGTPEffectorOFF;
    Real GaGDPP;
    Real LRRGSmGaGTP;
    Real RRGSmGaGTP;
    Real LRRGSmGaGTPEffectorOFF;
    Real GaGDP;
    Real P;
    Real z1;
    Real z2;
    Real z3;

initial equation
    L = 0.0;
    R = 205.0;
    LR = 0.0;
    Gabg = 0.0;
    RGabg = 0.0;
    LRGabg = 0.0;
    RRGSm = 0.0;
    LRRGSm = 0.0;
    RRGSmGabg = 0.0;
    LRRGSmGabg = 0.0;
    GaGTP = 0.0;
    Gbg = 205.0;
    Effector = 305.0;
    GaGTPEffector = 0.0;
    RGSc = 60.0;
    RGSm = 0.0;
    RGSmGaGTP = 0.0;
    GaGTPEffectorOFF = 0.0;
    RGSmGaGTPEffectorOFF = 0.0;
    GaGDPP = 0.0;
    LRRGSmGaGTP = 0.0;
    RRGSmGaGTP = 0.0;
    LRRGSmGaGTPEffectorOFF = 0.0;
    GaGDP = 205.0;
    P = 0.0;
    z1 = 0.0;
    z2 = 0.0;
    z3 = 0.0;

equation

    der(L) =  - (compartment * L * R * k1_0) - (compartment * L * RGabg * k4_3) - (compartment * L * RRGSm * k5_4) - (compartment * L * RRGSmGabg * k8_7);
    der(R) = (compartment * RRGSm * k16_15) - (compartment * L * R * k1_0) - (compartment * R * Gabg * k2_1) - (compartment * R * RGSc * k15_14);
    der(LR) = (compartment * L * R * k1_0) + (compartment * LRGabg * k9_8) + (compartment * LRRGSm * k18_17) - (compartment * LR * Gabg * k3_2) - (compartment * LR * RGSc * k17_16);
    der(Gabg) = (compartment * GaGDP * Gbg * k39_38) - (compartment * R * Gabg * k2_1) - (compartment * LR * Gabg * k3_2) - (compartment * RRGSm * Gabg * k6_5) - (compartment * LRRGSm * Gabg * k7_6) - (compartment * Gabg * k10_9);
    der(RGabg) = (compartment * R * Gabg * k2_1) + (compartment * RRGSmGabg * k20_19) - (compartment * L * RGabg * k4_3) - (compartment * RGabg * RGSc * k19_18);
    der(LRGabg) = (compartment * LR * Gabg * k3_2) + (compartment * L * RGabg * k4_3) - (compartment * LRGabg * k9_8) - (compartment * LRGabg * RGSc * k21_20);
    der(RRGSm) = (compartment * R * RGSc * k15_14) + (compartment * RRGSmGaGTP * k32_31) - (compartment * L * RRGSm * k5_4) - (compartment * RRGSm * Gabg * k6_5) - (compartment * RRGSm * k16_15) - (compartment * GaGTP * RRGSm * k31_30);
    der(LRRGSm) = (compartment * L * RRGSm * k5_4) + (compartment * LRRGSmGabg * k11_10) + (compartment * LR * RGSc * k17_16) + (compartment * LRRGSmGaGTP * k30_29) + (compartment * LRRGSmGaGTPEffectorOFF * k37_36) - (compartment * LRRGSm * Gabg * k7_6) - (compartment * LRRGSm * k18_17) - (compartment * GaGTP * LRRGSm * k29_28) - (compartment * GaGTPEffectorOFF * LRRGSm * k36_35);
    der(RRGSmGabg) = (compartment * RRGSm * Gabg * k6_5) + (compartment * RGabg * RGSc * k19_18) - (compartment * L * RRGSmGabg * k8_7) - (compartment * RRGSmGabg * k20_19);
    der(LRRGSmGabg) = (compartment * LRRGSm * Gabg * k7_6) + (compartment * L * RRGSmGabg * k8_7) + (compartment * LRGabg * RGSc * k21_20) - (compartment * LRRGSmGabg * k11_10);
    der(GaGTP) = (compartment * LRGabg * k9_8) + (compartment * Gabg * k10_9) + (compartment * LRRGSmGabg * k11_10) + (compartment * RGSmGaGTP * k23_22) - (compartment * Effector * GaGTP * k12_11) - (compartment * GaGTP * RGSc * k22_21) - (compartment * GaGTP * k26_25) - (compartment * GaGTP * RGSm * k27_26) - (compartment * GaGTP * LRRGSm * k29_28) - (compartment * GaGTP * RRGSm * k31_30);
    der(Gbg) = (compartment * LRGabg * k9_8) + (compartment * Gabg * k10_9) + (compartment * LRRGSmGabg * k11_10) - (compartment * GaGDP * Gbg * k39_38);
    der(Effector) = (compartment * GaGTPEffectorOFF * k33_32) + (compartment * RGSmGaGTPEffectorOFF * k35_34) + (compartment * LRRGSmGaGTPEffectorOFF * k37_36) - (compartment * Effector * GaGTP * k12_11);
    der(GaGTPEffector) = (compartment * Effector * GaGTP * k12_11) - (compartment * GaGTPEffector * k25_24);
    der(RGSc) = (compartment * RGSm * k14_13) + (compartment * RGSmGaGTP * k23_22) + (compartment * RGSmGaGTP * k28_27) + (compartment * RGSmGaGTPEffectorOFF * k35_34) - (compartment * RGSc * k13_12) - (compartment * R * RGSc * k15_14) - (compartment * LR * RGSc * k17_16) - (compartment * RGabg * RGSc * k19_18) - (compartment * LRGabg * RGSc * k21_20) - (compartment * GaGTP * RGSc * k22_21) - (compartment * GaGTPEffectorOFF * RGSc * k24_23);
    der(RGSm) = (compartment * RGSc * k13_12) + (compartment * RRGSm * k16_15) + (compartment * LRRGSm * k18_17) + (compartment * RRGSmGabg * k20_19) - (compartment * RGSm * k14_13) - (compartment * GaGTP * RGSm * k27_26) - (compartment * GaGTPEffectorOFF * RGSm * k34_33);
    der(RGSmGaGTP) = (compartment * GaGTP * RGSc * k22_21) + (compartment * GaGTP * RGSm * k27_26) - (compartment * RGSmGaGTP * k23_22) - (compartment * RGSmGaGTP * k28_27);
    der(GaGTPEffectorOFF) = (compartment * GaGTPEffector * k25_24) - (compartment * GaGTPEffectorOFF * RGSc * k24_23) - (compartment * GaGTPEffectorOFF * k33_32) - (compartment * GaGTPEffectorOFF * RGSm * k34_33) - (compartment * GaGTPEffectorOFF * LRRGSm * k36_35);
    der(RGSmGaGTPEffectorOFF) = (compartment * GaGTPEffectorOFF * RGSc * k24_23) + (compartment * GaGTPEffectorOFF * RGSm * k34_33) - (compartment * RGSmGaGTPEffectorOFF * k35_34);
    der(GaGDPP) = (compartment * GaGTP * k26_25) + (compartment * RGSmGaGTP * k28_27) + (compartment * LRRGSmGaGTP * k30_29) + (compartment * RRGSmGaGTP * k32_31) + (compartment * GaGTPEffectorOFF * k33_32) + (compartment * RGSmGaGTPEffectorOFF * k35_34) + (compartment * LRRGSmGaGTPEffectorOFF * k37_36) - (compartment * GaGDPP * k38_37);
    der(LRRGSmGaGTP) = (compartment * GaGTP * LRRGSm * k29_28) - (compartment * LRRGSmGaGTP * k30_29);
    der(RRGSmGaGTP) = (compartment * GaGTP * RRGSm * k31_30) - (compartment * RRGSmGaGTP * k32_31);
    der(LRRGSmGaGTPEffectorOFF) = (compartment * GaGTPEffectorOFF * LRRGSm * k36_35) - (compartment * LRRGSmGaGTPEffectorOFF * k37_36);
    der(GaGDP) = (compartment * GaGDPP * k38_37) - (compartment * GaGDP * Gbg * k39_38);
    der(P) = (compartment * GaGDPP * k38_37) - (compartment * P * k40_39);
    der(z1) = (compartment * GaGTPEffector * ka) - (compartment * z1 * ka);
    der(z2) = (compartment * z1 * ka) - (compartment * z2 * ka);
    der(z3) = (compartment * z2 * ka) - (compartment * z3 * ka);


    when time >= 14 then
        reinit(L,L + Ligand_conc);
    end when;

end BIOMD479;
