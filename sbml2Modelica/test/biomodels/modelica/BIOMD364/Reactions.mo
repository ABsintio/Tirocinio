within BIOMD364;
class Reactions

    input Real elmt_j3a;
    input Real elmt_compartment;
    input Real elmt_M1;
    input Real elmt_k7a;
    input Real elmt_E_P21;
    input Real elmt_j7a;
    input Real elmt_j7;
    input Real elmt_j5;
    input Real elmt_j3;
    input Real elmt_kC2;
    input Real elmt_j1;
    input Real elmt_k3a;
    input Real elmt_kC1;
    input Real elmt_P21;
    input Real elmt_E_M1;
    input Real elmt_k10;
    input Real elmt_k4a;
    input Real elmt_P;
    input Real elmt_k1;
    input Real elmt_M;
    input Real elmt_E_M;
    input Real elmt_k8a;
    input Real elmt_P2;
    input Real elmt_k8;
    input Real elmt_k9;
    input Real elmt_E;
    input Real elmt_k6;
    input Real elmt_k7;
    input Real elmt_k4;
    input Real elmt_k5;
    input Real elmt_k2;
    input Real elmt_k3;
    input Real elmt_E_P_1;
    input Real elmt_E_P_2;
    input Real elmt_E_P2;

    Real elmt_r7(unit = "") "r7";
    Real elmt_reactant17 "";
    Real elmt_product19 "";
    Real elmt_product18 "";
    Real elmt_r8(unit = "") "r8";
    Real elmt_reactant20 "";
    Real elmt_product22 "";
    Real elmt_reactant21 "";
    Real elmt_r16(unit = "") "r16";
    Real elmt_reactant42 "";
    Real elmt_product43 "";
    Real elmt_r5(unit = "") "r5";
    Real elmt_product13 "";
    Real elmt_reactant11 "";
    Real elmt_reactant12 "";
    Real elmt_r15(unit = "") "r15";
    Real elmt_product41 "";
    Real elmt_reactant40 "";
    Real elmt_r6(unit = "") "r6";
    Real elmt_reactant14 "";
    Real elmt_product16 "";
    Real elmt_product15 "";
    Real elmt_r14(unit = "") "r14";
    Real elmt_product38 "";
    Real elmt_reactant37 "";
    Real elmt_product39 "";
    Real elmt_r3(unit = "") "r3";
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_r13(unit = "") "r13";
    Real elmt_product36 "";
    Real elmt_product35 "";
    Real elmt_reactant34 "";
    Real elmt_r4(unit = "") "r4";
    Real elmt_reactant8 "";
    Real elmt_product10 "";
    Real elmt_reactant9 "";
    Real elmt_r12(unit = "") "r12";
    Real elmt_reactant31 "";
    Real elmt_product33 "";
    Real elmt_reactant32 "";
    Real elmt_r1(unit = "") "r1";
    Real elmt_reactant1 "";
    Real elmt_reactant0 "";
    Real elmt_product2 "";
    Real elmt_r11(unit = "") "r11";
    Real elmt_product30 "";
    Real elmt_reactant29 "";
    Real elmt_reactant28 "";
    Real elmt_r2(unit = "") "r2";
    Real elmt_reactant3 "";
    Real elmt_product5 "";
    Real elmt_product4 "";
    Real elmt_r10(unit = "") "r10";
    Real elmt_product27 "";
    Real elmt_reactant26 "";
    Real elmt_r9(unit = "") "r9";
    Real elmt_product25 "";
    Real elmt_product24 "";
    Real elmt_reactant23 "";


    initial equation
        elmt_product30 = 1.0;
        elmt_reactant40 = 1.0;
        elmt_reactant20 = 1.0;
        elmt_reactant42 = 1.0;
        elmt_product33 = 1.0;
        elmt_product10 = 1.0;
        elmt_reactant26 = 1.0;
        elmt_reactant28 = 1.0;
        elmt_reactant21 = 1.0;
        elmt_reactant23 = 1.0;
        elmt_product27 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product25 = 1.0;
        elmt_product24 = 1.0;
        elmt_product41 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant31 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product22 = 1.0;
        elmt_product43 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_reactant37 = 1.0;
        elmt_reactant17 = 1.0;
        elmt_reactant32 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant11 = 1.0;
        elmt_product4 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_reactant34 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product2 = 1.0;
        elmt_reactant29 = 1.0;
        elmt_product16 = 1.0;
        elmt_product38 = 1.0;
        elmt_product15 = 1.0;
        elmt_product36 = 1.0;
        elmt_product13 = 1.0;
        elmt_product35 = 1.0;
        elmt_product19 = 1.0;
        elmt_product18 = 1.0;
        elmt_product39 = 1.0;


    equation
        elmt_r7 = (elmt_compartment * elmt_k4a * elmt_E_M);
        elmt_r8 = (elmt_compartment * ((elmt_k5 * elmt_E * elmt_P) - (elmt_j5 * elmt_E_P_2)));
        elmt_r16 = (elmt_compartment * elmt_kC2 * elmt_E_P_2);
        elmt_r5 = (elmt_compartment * ((elmt_k3a * elmt_E * elmt_M) - (elmt_j3a * elmt_E_M)));
        elmt_r15 = (elmt_compartment * elmt_kC1 * elmt_E_P_1);
        elmt_r6 = (elmt_compartment * elmt_k4 * elmt_E_M1);
        elmt_r14 = (elmt_compartment * elmt_k8a * elmt_E_P2);
        elmt_r3 = (elmt_compartment * elmt_k9 * elmt_M);
        elmt_r13 = (elmt_compartment * elmt_k8 * elmt_E_P21);
        elmt_r4 = (elmt_compartment * ((elmt_k3 * elmt_E * elmt_M1) - (elmt_j3 * elmt_E_M1)));
        elmt_r12 = (elmt_compartment * ((elmt_k7a * elmt_E * elmt_P2) - (elmt_j7a * elmt_E_P2)));
        elmt_r1 = (elmt_compartment * ((elmt_k1 * elmt_E * elmt_P) - (elmt_j1 * elmt_E_P_1)));
        elmt_r11 = (elmt_compartment * ((elmt_k7 * elmt_E * elmt_P21) - (elmt_j7 * elmt_E_P21)));
        elmt_r2 = (elmt_compartment * elmt_k2 * elmt_E_P_1);
        elmt_r10 = (elmt_compartment * elmt_k10 * elmt_P2);
        elmt_r9 = (elmt_compartment * elmt_k6 * elmt_E_P_2);
        der(elmt_product30) = 0;
        der(elmt_reactant40) = 0;
        der(elmt_reactant20) = 0;
        der(elmt_reactant42) = 0;
        der(elmt_product33) = 0;
        der(elmt_product10) = 0;
        der(elmt_reactant26) = 0;
        der(elmt_reactant28) = 0;
        der(elmt_reactant21) = 0;
        der(elmt_reactant23) = 0;
        der(elmt_product27) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product25) = 0;
        der(elmt_product24) = 0;
        der(elmt_product41) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant31) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product22) = 0;
        der(elmt_product43) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_reactant37) = 0;
        der(elmt_reactant17) = 0;
        der(elmt_reactant32) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant11) = 0;
        der(elmt_product4) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_reactant34) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product2) = 0;
        der(elmt_reactant29) = 0;
        der(elmt_product16) = 0;
        der(elmt_product38) = 0;
        der(elmt_product15) = 0;
        der(elmt_product36) = 0;
        der(elmt_product13) = 0;
        der(elmt_product35) = 0;
        der(elmt_product19) = 0;
        der(elmt_product18) = 0;
        der(elmt_product39) = 0;

end Reactions;
