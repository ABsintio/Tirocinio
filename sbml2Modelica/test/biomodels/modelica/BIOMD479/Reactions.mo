within BIOMD479;
class Reactions

    input Real elmt_RRGSm;
    input Real elmt_LR;
    input Real elmt_RGSmGaGTPEffectorOFF;
    input Real elmt_compartment;
    input Real elmt_Gabg;
    input Real elmt_LRRGSmGabg;
    input Real elmt_Effector;
    input Real elmt_RRGSmGaGTP;
    input Real elmt_GaGDP;
    input Real elmt_RGSm;
    input Real elmt_GaGDPP;
    input Real elmt_GaGTPEffectorOFF;
    input Real elmt_z3;
    input Real elmt_Gbg;
    input Real elmt_z1;
    input Real elmt_R;
    input Real elmt_z2;
    input Real elmt_LRRGSmGaGTP;
    input Real elmt_P;
    input Real elmt_GaGTP;
    input Real elmt_L;
    input Real elmt_LRRGSm;
    input Real elmt_RGabg;
    input Real elmt_RGSc;
    input Real elmt_RGSmGaGTP;
    input Real elmt_ka;
    input Real elmt_LRGabg;
    input Real elmt_LRRGSmGaGTPEffectorOFF;
    input Real elmt_RRGSmGabg;
    input Real elmt_GaGTPEffector;

    Real elmt_R16(unit = "") "R-RGSm dissociation";
    parameter Real elmt_R16_elmt_k16(unit "s-1.0") = 100.0 "";
    Real elmt_product47 "";
    Real elmt_product46 "";
    Real elmt_reactant45 "";
    Real elmt_R38(unit = "") "Phosphate release";
    parameter Real elmt_R38_elmt_k38(unit "s-1.0") = 1000.0 "";
    Real elmt_product113 "";
    Real elmt_product112 "";
    Real elmt_reactant111 "";
    Real elmt_R17(unit = "") "LR recruits RGSc to membrane";
    parameter Real elmt_R17_elmt_k17(unit "m3.0.mol-1.0.s-1.0") = 0.1 "";
    Real elmt_product50 "";
    Real elmt_reactant48 "";
    Real elmt_reactant49 "";
    Real elmt_R39(unit = "") "Gprotein subunits association";
    parameter Real elmt_R39_elmt_k39(unit "m3.0.mol-1.0.s-1.0") = 1000.0 "";
    Real elmt_reactant115 "";
    Real elmt_reactant114 "";
    Real elmt_product116 "";
    Real elmt_R14(unit = "") "RGS in membrane moves to cytosol";
    parameter Real elmt_R14_elmt_k14(unit "s-1.0") = 0.005 "";
    Real elmt_product41 "";
    Real elmt_reactant40 "";
    Real elmt_R36(unit = "") "GaGTPEffectorOFF-LRRGSm association";
    parameter Real elmt_R36_elmt_k36(unit "m3.0.mol-1.0.s-1.0") = 50.0 "";
    Real elmt_reactant105 "";
    Real elmt_reactant104 "";
    Real elmt_product106 "";
    Real elmt_R15(unit = "") "Receptor recruits RGSc to membrane";
    parameter Real elmt_R15_elmt_k15(unit "m3.0.mol-1.0.s-1.0") = 0.1 "";
    Real elmt_reactant42 "";
    Real elmt_product44 "";
    Real elmt_reactant43 "";
    Real elmt_R37(unit = "") "LRRGSmGaGTPEffectorOFF hydrolyzes GTP";
    parameter Real elmt_R37_elmt_k37(unit "s-1.0") = 0.3 "";
    Real elmt_product110 "";
    Real elmt_reactant107 "";
    Real elmt_product109 "";
    Real elmt_product108 "";
    Real elmt_R12(unit = "") "Effector-GaGTP association";
    parameter Real elmt_R12_elmt_k12(unit "m3.0.mol-1.0.s-1.0") = 10.0 "";
    Real elmt_reactant36 "";
    Real elmt_product37 "";
    Real elmt_reactant35 "";
    Real elmt_R34(unit = "") "GaGTPEffectorOFF-RGSm association";
    parameter Real elmt_R34_elmt_k34(unit "m3.0.mol-1.0.s-1.0") = 50.0 "";
    Real elmt_reactant97 "";
    Real elmt_product99 "";
    Real elmt_reactant98 "";
    Real elmt_R13(unit = "") "RGS in cytosol moves to membrane";
    parameter Real elmt_R13_elmt_k13(unit "s-1.0") = 5.0E-4 "";
    Real elmt_reactant38 "";
    Real elmt_product39 "";
    Real elmt_R35(unit = "") "RGSmGaGTPEffectorOFF hydrolyzes GTP";
    parameter Real elmt_R35_elmt_k35(unit "s-1.0") = 0.3 "";
    Real elmt_product102 "";
    Real elmt_product101 "";
    Real elmt_product103 "";
    Real elmt_reactant100 "";
    Real elmt_R10(unit = "") "Gprotein spontaneous activation";
    parameter Real elmt_R10_elmt_k10(unit "s-1.0") = 0.2 "";
    Real elmt_product30 "";
    Real elmt_reactant28 "";
    Real elmt_product29 "";
    Real elmt_R32(unit = "") "RRGSmGaGTP hydrolyzes GTP";
    parameter Real elmt_R32_elmt_k32(unit "s-1.0") = 0.5 "";
    Real elmt_product93 "";
    Real elmt_reactant91 "";
    Real elmt_product92 "";
    Real elmt_R11(unit = "") "Gprotein activation by LRRGSm";
    parameter Real elmt_R11_elmt_k11(unit "s-1.0") = 40.0 "";
    Real elmt_reactant31 "";
    Real elmt_product34 "";
    Real elmt_product33 "";
    Real elmt_product32 "";
    Real elmt_R33(unit = "") "GaGTPEffectorOFF hydrolyzes GTP";
    parameter Real elmt_R33_elmt_k33(unit "s-1.0") = 0.005 "";
    Real elmt_reactant94 "";
    Real elmt_product96 "";
    Real elmt_product95 "";
    Real elmt_R18(unit = "") "LR-RGSm dissociation";
    parameter Real elmt_R18_elmt_k18(unit "s-1.0") = 100.0 "";
    Real elmt_product52 "";
    Real elmt_reactant51 "";
    Real elmt_product53 "";
    Real elmt_R19(unit = "") "RGabg recruits RGSc to membrane";
    parameter Real elmt_R19_elmt_k19(unit "m3.0.mol-1.0.s-1.0") = 0.1 "";
    Real elmt_product56 "";
    Real elmt_reactant54 "";
    Real elmt_reactant55 "";
    Real elmt_R41(unit = "") "Delay 1";
    Real elmt_product118 "";
    Real elmt_R20(unit = "") "RRGSmGabg dissociation";
    parameter Real elmt_R20_elmt_k20(unit "s-1.0") = 0.1 "";
    Real elmt_product59 "";
    Real elmt_product58 "";
    Real elmt_reactant57 "";
    Real elmt_R42(unit = "") "Delay 2";
    Real elmt_product120 "";
    Real elmt_reactant119 "";
    Real elmt_R40(unit = "") "Phosphate degradation";
    parameter Real elmt_R40_elmt_k40(unit "s-1.0") = 10.0 "";
    Real elmt_reactant117 "";
    Real elmt_R7(unit = "") "LRRGSm-Gprotein association";
    parameter Real elmt_R7_elmt_k7(unit "m3.0.mol-1.0.s-1.0") = 0.02 "";
    Real elmt_reactant18 "";
    Real elmt_reactant19 "";
    Real elmt_product20 "";
    Real elmt_R27(unit = "") "GaGTP-RGSm association";
    parameter Real elmt_R27_elmt_k27(unit "m3.0.mol-1.0.s-1.0") = 500.0 "";
    Real elmt_product78 "";
    Real elmt_reactant76 "";
    Real elmt_reactant77 "";
    Real elmt_R8(unit = "") "Ligand-RRGSmGabg association";
    parameter Real elmt_R8_elmt_k8(unit "m3.0.mol-1.0.s-1.0") = 0.005 "";
    Real elmt_product23 "";
    Real elmt_reactant21 "";
    Real elmt_reactant22 "";
    Real elmt_R28(unit = "") "RGSmGaGTP hydrolyzes GTP";
    parameter Real elmt_R28_elmt_k28(unit "s-1.0") = 2.5 "";
    Real elmt_product81 "";
    Real elmt_product80 "";
    Real elmt_reactant79 "";
    Real elmt_R5(unit = "") "Ligand-RRGSm association";
    parameter Real elmt_R5_elmt_k5(unit "m3.0.mol-1.0.s-1.0") = 0.005 "";
    Real elmt_product14 "";
    Real elmt_reactant12 "";
    Real elmt_reactant13 "";
    Real elmt_R25(unit = "") "Effector turns off";
    parameter Real elmt_R25_elmt_k25(unit "s-1.0") = 1.0 "";
    Real elmt_reactant72 "";
    Real elmt_product73 "";
    Real elmt_R6(unit = "") "RRGSm-Gprotein association";
    parameter Real elmt_R6_elmt_k6(unit "m3.0.mol-1.0.s-1.0") = 0.005 "";
    Real elmt_reactant15 "";
    Real elmt_reactant16 "";
    Real elmt_product17 "";
    Real elmt_R26(unit = "") "GaGTP hydrolyzes GTP";
    parameter Real elmt_R26_elmt_k26(unit "s-1.0") = 0.005 "";
    Real elmt_reactant74 "";
    Real elmt_product75 "";
    Real elmt_R3(unit = "") "LR-Gprotein association";
    parameter Real elmt_R3_elmt_k3(unit "m3.0.mol-1.0.s-1.0") = 0.02 "";
    Real elmt_product8 "";
    Real elmt_reactant6 "";
    Real elmt_reactant7 "";
    Real elmt_R23(unit = "") "RGSmGaGTP dissociation";
    parameter Real elmt_R23_elmt_k23(unit "s-1.0") = 0.05 "";
    Real elmt_product67 "";
    Real elmt_product68 "";
    Real elmt_reactant66 "";
    Real elmt_R4(unit = "") "Ligand-RGabg association";
    parameter Real elmt_R4_elmt_k4(unit "m3.0.mol-1.0.s-1.0") = 0.005 "";
    Real elmt_product11 "";
    Real elmt_reactant9 "";
    Real elmt_reactant10 "";
    Real elmt_R24(unit = "") "GaGTPEffectorOFF recruits RGS from cytosol";
    parameter Real elmt_R24_elmt_k24(unit "m3.0.mol-1.0.s-1.0") = 1.0E-4 "";
    Real elmt_product71 "";
    Real elmt_reactant70 "";
    Real elmt_reactant69 "";
    Real elmt_R1(unit = "") "Receptor-Ligand association";
    parameter Real elmt_R1_elmt_k1(unit "m3.0.mol-1.0.s-1.0") = 0.0025 "";
    Real elmt_reactant1 "";
    Real elmt_reactant0 "";
    Real elmt_product2 "";
    Real elmt_R21(unit = "") "LRGabg recruits RGSc to membrane";
    parameter Real elmt_R21_elmt_k21(unit "m3.0.mol-1.0.s-1.0") = 0.1 "";
    Real elmt_reactant61 "";
    Real elmt_product62 "";
    Real elmt_reactant60 "";
    Real elmt_R43(unit = "") "Delay 3";
    Real elmt_reactant121 "";
    Real elmt_product122 "";
    Real elmt_R2(unit = "") "Receptor-Gprotein association";
    parameter Real elmt_R2_elmt_k2(unit "m3.0.mol-1.0.s-1.0") = 0.005 "";
    Real elmt_reactant4 "";
    Real elmt_reactant3 "";
    Real elmt_product5 "";
    Real elmt_R22(unit = "") "GaGTP recruits RGSc to membrane";
    parameter Real elmt_R22_elmt_k22(unit "m3.0.mol-1.0.s-1.0") = 60.0 "";
    Real elmt_reactant63 "";
    Real elmt_reactant64 "";
    Real elmt_product65 "";
    Real elmt_R44(unit = "") "Final output";
    Real elmt_reactant123 "";
    Real elmt_R9(unit = "") "Gprotein activation by LR";
    parameter Real elmt_R9_elmt_k9(unit "s-1.0") = 50.0 "";
    Real elmt_product27 "";
    Real elmt_product26 "";
    Real elmt_product25 "";
    Real elmt_reactant24 "";
    Real elmt_R29(unit = "") "GaGTP-LRRGSm association";
    parameter Real elmt_R29_elmt_k29(unit "m3.0.mol-1.0.s-1.0") = 100.0 "";
    Real elmt_reactant83 "";
    Real elmt_product84 "";
    Real elmt_reactant82 "";
    Real elmt_R30(unit = "") "LRRGSmGaGTP hydrolyzes GTP";
    parameter Real elmt_R30_elmt_k30(unit "s-1.0") = 2.5 "";
    Real elmt_reactant85 "";
    Real elmt_product87 "";
    Real elmt_product86 "";
    Real elmt_R31(unit = "") "GaGTP-RRGSm association";
    parameter Real elmt_R31_elmt_k31(unit "m3.0.mol-1.0.s-1.0") = 0.5 "";
    Real elmt_reactant88 "";
    Real elmt_reactant89 "";
    Real elmt_product90 "";


    initial equation
        elmt_reactant40 = 1.0;
        elmt_product73 = 1.0;
        elmt_reactant42 = 1.0;
        elmt_product71 = 1.0;
        elmt_product78 = 1.0;
        elmt_product75 = 1.0;
        elmt_reactant48 = 1.0;
        elmt_reactant49 = 1.0;
        elmt_reactant43 = 1.0;
        elmt_reactant45 = 1.0;
        elmt_reactant117 = 1.0;
        elmt_reactant115 = 1.0;
        elmt_product68 = 1.0;
        elmt_reactant114 = 1.0;
        elmt_reactant111 = 1.0;
        elmt_reactant51 = 1.0;
        elmt_product84 = 1.0;
        elmt_product87 = 1.0;
        elmt_reactant119 = 1.0;
        elmt_product86 = 1.0;
        elmt_reactant54 = 1.0;
        elmt_product81 = 1.0;
        elmt_reactant55 = 1.0;
        elmt_product80 = 1.0;
        elmt_reactant57 = 1.0;
        elmt_product102 = 1.0;
        elmt_reactant121 = 1.0;
        elmt_product101 = 1.0;
        elmt_product103 = 1.0;
        elmt_product109 = 1.0;
        elmt_product106 = 1.0;
        elmt_product108 = 1.0;
        elmt_reactant123 = 1.0;
        elmt_product96 = 1.0;
        elmt_product95 = 1.0;
        elmt_product93 = 1.0;
        elmt_product99 = 1.0;
        elmt_product11 = 1.0;
        elmt_reactant28 = 1.0;
        elmt_product92 = 1.0;
        elmt_reactant21 = 1.0;
        elmt_reactant22 = 1.0;
        elmt_product90 = 1.0;
        elmt_reactant24 = 1.0;
        elmt_reactant18 = 1.0;
        elmt_reactant19 = 1.0;
        elmt_product8 = 1.0;
        elmt_reactant31 = 1.0;
        elmt_product23 = 1.0;
        elmt_product20 = 1.0;
        elmt_reactant36 = 1.0;
        elmt_reactant38 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant35 = 1.0;
        elmt_product2 = 1.0;
        elmt_reactant107 = 1.0;
        elmt_reactant105 = 1.0;
        elmt_product14 = 1.0;
        elmt_reactant104 = 1.0;
        elmt_reactant100 = 1.0;
        elmt_product17 = 1.0;
        elmt_product30 = 1.0;
        elmt_reactant83 = 1.0;
        elmt_reactant85 = 1.0;
        elmt_product34 = 1.0;
        elmt_product33 = 1.0;
        elmt_product32 = 1.0;
        elmt_reactant82 = 1.0;
        elmt_reactant88 = 1.0;
        elmt_reactant89 = 1.0;
        elmt_product27 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product26 = 1.0;
        elmt_product25 = 1.0;
        elmt_product29 = 1.0;
        elmt_product41 = 1.0;
        elmt_reactant94 = 1.0;
        elmt_reactant97 = 1.0;
        elmt_product44 = 1.0;
        elmt_reactant91 = 1.0;
        elmt_reactant15 = 1.0;
        elmt_reactant16 = 1.0;
        elmt_reactant98 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_reactant13 = 1.0;
        elmt_product37 = 1.0;
        elmt_product39 = 1.0;
        elmt_product52 = 1.0;
        elmt_reactant61 = 1.0;
        elmt_product50 = 1.0;
        elmt_reactant63 = 1.0;
        elmt_reactant64 = 1.0;
        elmt_product56 = 1.0;
        elmt_product53 = 1.0;
        elmt_reactant60 = 1.0;
        elmt_reactant69 = 1.0;
        elmt_reactant66 = 1.0;
        elmt_product113 = 1.0;
        elmt_product112 = 1.0;
        elmt_product110 = 1.0;
        elmt_product47 = 1.0;
        elmt_product46 = 1.0;
        elmt_product116 = 1.0;
        elmt_product118 = 1.0;
        elmt_reactant72 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_product62 = 1.0;
        elmt_reactant74 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product67 = 1.0;
        elmt_reactant70 = 1.0;
        elmt_product65 = 1.0;
        elmt_reactant7 = 1.0;
        elmt_reactant76 = 1.0;
        elmt_reactant77 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_reactant79 = 1.0;
        elmt_product120 = 1.0;
        elmt_product122 = 1.0;
        elmt_product59 = 1.0;
        elmt_product58 = 1.0;


    equation
        elmt_R16 = (elmt_compartment * elmt_RRGSm * elmt_R16_elmt_k16);
        elmt_R38 = (elmt_compartment * elmt_GaGDPP * elmt_R38_elmt_k38);
        elmt_R17 = (elmt_compartment * elmt_LR * elmt_RGSc * elmt_R17_elmt_k17);
        elmt_R39 = (elmt_compartment * elmt_GaGDP * elmt_Gbg * elmt_R39_elmt_k39);
        elmt_R14 = (elmt_compartment * elmt_RGSm * elmt_R14_elmt_k14);
        elmt_R36 = (elmt_compartment * elmt_GaGTPEffectorOFF * elmt_LRRGSm * elmt_R36_elmt_k36);
        elmt_R15 = (elmt_compartment * elmt_R * elmt_RGSc * elmt_R15_elmt_k15);
        elmt_R37 = (elmt_compartment * elmt_LRRGSmGaGTPEffectorOFF * elmt_R37_elmt_k37);
        elmt_R12 = (elmt_compartment * elmt_Effector * elmt_GaGTP * elmt_R12_elmt_k12);
        elmt_R34 = (elmt_compartment * elmt_GaGTPEffectorOFF * elmt_RGSm * elmt_R34_elmt_k34);
        elmt_R13 = (elmt_compartment * elmt_RGSc * elmt_R13_elmt_k13);
        elmt_R35 = (elmt_compartment * elmt_RGSmGaGTPEffectorOFF * elmt_R35_elmt_k35);
        elmt_R10 = (elmt_compartment * elmt_Gabg * elmt_R10_elmt_k10);
        elmt_R32 = (elmt_compartment * elmt_RRGSmGaGTP * elmt_R32_elmt_k32);
        elmt_R11 = (elmt_compartment * elmt_LRRGSmGabg * elmt_R11_elmt_k11);
        elmt_R33 = (elmt_compartment * elmt_GaGTPEffectorOFF * elmt_R33_elmt_k33);
        elmt_R18 = (elmt_compartment * elmt_LRRGSm * elmt_R18_elmt_k18);
        elmt_R19 = (elmt_compartment * elmt_RGabg * elmt_RGSc * elmt_R19_elmt_k19);
        elmt_R41 = (elmt_compartment * elmt_GaGTPEffector * elmt_ka);
        elmt_R20 = (elmt_compartment * elmt_RRGSmGabg * elmt_R20_elmt_k20);
        elmt_R42 = (elmt_compartment * elmt_z1 * elmt_ka);
        elmt_R40 = (elmt_compartment * elmt_P * elmt_R40_elmt_k40);
        elmt_R7 = (elmt_compartment * elmt_LRRGSm * elmt_Gabg * elmt_R7_elmt_k7);
        elmt_R27 = (elmt_compartment * elmt_GaGTP * elmt_RGSm * elmt_R27_elmt_k27);
        elmt_R8 = (elmt_compartment * elmt_L * elmt_RRGSmGabg * elmt_R8_elmt_k8);
        elmt_R28 = (elmt_compartment * elmt_RGSmGaGTP * elmt_R28_elmt_k28);
        elmt_R5 = (elmt_compartment * elmt_L * elmt_RRGSm * elmt_R5_elmt_k5);
        elmt_R25 = (elmt_compartment * elmt_GaGTPEffector * elmt_R25_elmt_k25);
        elmt_R6 = (elmt_compartment * elmt_RRGSm * elmt_Gabg * elmt_R6_elmt_k6);
        elmt_R26 = (elmt_compartment * elmt_GaGTP * elmt_R26_elmt_k26);
        elmt_R3 = (elmt_compartment * elmt_LR * elmt_Gabg * elmt_R3_elmt_k3);
        elmt_R23 = (elmt_compartment * elmt_RGSmGaGTP * elmt_R23_elmt_k23);
        elmt_R4 = (elmt_compartment * elmt_L * elmt_RGabg * elmt_R4_elmt_k4);
        elmt_R24 = (elmt_compartment * elmt_GaGTPEffectorOFF * elmt_RGSc * elmt_R24_elmt_k24);
        elmt_R1 = (elmt_compartment * elmt_L * elmt_R * elmt_R1_elmt_k1);
        elmt_R21 = (elmt_compartment * elmt_LRGabg * elmt_RGSc * elmt_R21_elmt_k21);
        elmt_R43 = (elmt_compartment * elmt_z2 * elmt_ka);
        elmt_R2 = (elmt_compartment * elmt_R * elmt_Gabg * elmt_R2_elmt_k2);
        elmt_R22 = (elmt_compartment * elmt_GaGTP * elmt_RGSc * elmt_R22_elmt_k22);
        elmt_R44 = (elmt_compartment * elmt_z3 * elmt_ka);
        elmt_R9 = (elmt_compartment * elmt_LRGabg * elmt_R9_elmt_k9);
        elmt_R29 = (elmt_compartment * elmt_GaGTP * elmt_LRRGSm * elmt_R29_elmt_k29);
        elmt_R30 = (elmt_compartment * elmt_LRRGSmGaGTP * elmt_R30_elmt_k30);
        elmt_R31 = (elmt_compartment * elmt_GaGTP * elmt_RRGSm * elmt_R31_elmt_k31);
        der(elmt_reactant40) = 0;
        der(elmt_product73) = 0;
        der(elmt_reactant42) = 0;
        der(elmt_product71) = 0;
        der(elmt_product78) = 0;
        der(elmt_product75) = 0;
        der(elmt_reactant48) = 0;
        der(elmt_reactant49) = 0;
        der(elmt_reactant43) = 0;
        der(elmt_reactant45) = 0;
        der(elmt_reactant117) = 0;
        der(elmt_reactant115) = 0;
        der(elmt_product68) = 0;
        der(elmt_reactant114) = 0;
        der(elmt_reactant111) = 0;
        der(elmt_reactant51) = 0;
        der(elmt_product84) = 0;
        der(elmt_product87) = 0;
        der(elmt_reactant119) = 0;
        der(elmt_product86) = 0;
        der(elmt_reactant54) = 0;
        der(elmt_product81) = 0;
        der(elmt_reactant55) = 0;
        der(elmt_product80) = 0;
        der(elmt_reactant57) = 0;
        der(elmt_product102) = 0;
        der(elmt_reactant121) = 0;
        der(elmt_product101) = 0;
        der(elmt_product103) = 0;
        der(elmt_product109) = 0;
        der(elmt_product106) = 0;
        der(elmt_product108) = 0;
        der(elmt_reactant123) = 0;
        der(elmt_product96) = 0;
        der(elmt_product95) = 0;
        der(elmt_product93) = 0;
        der(elmt_product99) = 0;
        der(elmt_product11) = 0;
        der(elmt_reactant28) = 0;
        der(elmt_product92) = 0;
        der(elmt_reactant21) = 0;
        der(elmt_reactant22) = 0;
        der(elmt_product90) = 0;
        der(elmt_reactant24) = 0;
        der(elmt_reactant18) = 0;
        der(elmt_reactant19) = 0;
        der(elmt_product8) = 0;
        der(elmt_reactant31) = 0;
        der(elmt_product23) = 0;
        der(elmt_product20) = 0;
        der(elmt_reactant36) = 0;
        der(elmt_reactant38) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant35) = 0;
        der(elmt_product2) = 0;
        der(elmt_reactant107) = 0;
        der(elmt_reactant105) = 0;
        der(elmt_product14) = 0;
        der(elmt_reactant104) = 0;
        der(elmt_reactant100) = 0;
        der(elmt_product17) = 0;
        der(elmt_product30) = 0;
        der(elmt_reactant83) = 0;
        der(elmt_reactant85) = 0;
        der(elmt_product34) = 0;
        der(elmt_product33) = 0;
        der(elmt_product32) = 0;
        der(elmt_reactant82) = 0;
        der(elmt_reactant88) = 0;
        der(elmt_reactant89) = 0;
        der(elmt_product27) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product26) = 0;
        der(elmt_product25) = 0;
        der(elmt_product29) = 0;
        der(elmt_product41) = 0;
        der(elmt_reactant94) = 0;
        der(elmt_reactant97) = 0;
        der(elmt_product44) = 0;
        der(elmt_reactant91) = 0;
        der(elmt_reactant15) = 0;
        der(elmt_reactant16) = 0;
        der(elmt_reactant98) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_reactant13) = 0;
        der(elmt_product37) = 0;
        der(elmt_product39) = 0;
        der(elmt_product52) = 0;
        der(elmt_reactant61) = 0;
        der(elmt_product50) = 0;
        der(elmt_reactant63) = 0;
        der(elmt_reactant64) = 0;
        der(elmt_product56) = 0;
        der(elmt_product53) = 0;
        der(elmt_reactant60) = 0;
        der(elmt_reactant69) = 0;
        der(elmt_reactant66) = 0;
        der(elmt_product113) = 0;
        der(elmt_product112) = 0;
        der(elmt_product110) = 0;
        der(elmt_product47) = 0;
        der(elmt_product46) = 0;
        der(elmt_product116) = 0;
        der(elmt_product118) = 0;
        der(elmt_reactant72) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_product62) = 0;
        der(elmt_reactant74) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product67) = 0;
        der(elmt_reactant70) = 0;
        der(elmt_product65) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_reactant76) = 0;
        der(elmt_reactant77) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_reactant79) = 0;
        der(elmt_product120) = 0;
        der(elmt_product122) = 0;
        der(elmt_product59) = 0;
        der(elmt_product58) = 0;

end Reactions;
