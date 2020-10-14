within BIOMD290;
class Reactions

    input Real elmt_pi1;
    input Real elmt_beta;
    input Real elmt_k;
    input Real elmt_G;
    input Real elmt_muG;
    input Real elmt_E;
    input Real elmt_muE;
    input Real elmt_f;
    input Real elmt_A;
    input Real elmt_muA;
    input Real elmt_lambdaE;
    input Real elmt_b1;
    input Real elmt_gamma;
    input Real elmt_v_max;
    input Real elmt_sigma1;
    input Real elmt_muR;
    input Real elmt_R;

    Real elmt_r7(unit = "") "r7: R death";
    Real elmt_reactant8 "";
    Real elmt_r8(unit = "") "r8: E death";
    Real elmt_reactant9 "";
    Real elmt_r5(unit = "") "r5: E generation by A";
    Real elmt_product6 "";
    Real elmt_r6(unit = "") "r6: A death";
    Real elmt_reactant7 "";
    Real elmt_r3(unit = "") "r3: R activation by A";
    Real elmt_product4 "";
    Real elmt_r4(unit = "") "r4: R activation by A and E";
    Real elmt_product5 "";
    Real elmt_r11(unit = "") "r11: A suppression by R";
    Real elmt_reactant12 "";
    Real elmt_r2(unit = "") "r2: self-antigen release triggered by E";
    Real elmt_product3 "";
    Real elmt_r10(unit = "") "r10: A suppression by Tregs of other specificity";
    Real elmt_reactant11 "";
    Real elmt_r9(unit = "") "r9: G clearance";
    Real elmt_reactant10 "";
    Real elmt_r1b(unit = "") "r1b: pAPC maturation";
    Real elmt_reactant1 "";
    Real elmt_product2 "";
    Real elmt_r1a(unit = "") "r1a: self-antigen uptake";
    Real elmt_reactant0 "";


    initial equation
        elmt_reactant1 = 1.0;
        elmt_product6 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_reactant7 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_product4 = 1.0;
        elmt_reactant11 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_product3 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product2 = 1.0;
        elmt_reactant9 = 1.0;


    equation
        elmt_r7 = (elmt_muR * elmt_R);
        elmt_r8 = (elmt_muE * elmt_E);
        elmt_r5 = (elmt_lambdaE * elmt_A);
        elmt_r6 = (elmt_muA * elmt_A);
        elmt_r3 = (elmt_beta * elmt_A);
        elmt_r4 = (elmt_pi1 * elmt_E * elmt_A);
        elmt_r11 = (elmt_sigma1 * elmt_A * elmt_R);
        elmt_r2 = (elmt_gamma * elmt_E);
        elmt_r10 = (elmt_b1 * elmt_A);
        elmt_r9 = (elmt_muG * elmt_G);
        elmt_r1b = (elmt_f * (elmt_v_max / (elmt_k + elmt_G)) * elmt_G);
        elmt_r1a = ((elmt_v_max / (elmt_k + elmt_G)) * elmt_G);
        der(elmt_reactant1) = 0;
        der(elmt_product6) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_product4) = 0;
        der(elmt_reactant11) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_product3) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product2) = 0;
        der(elmt_reactant9) = 0;

end Reactions;
