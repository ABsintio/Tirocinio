within BIOMD591;
class Reactions

    input Real elmt_STAT5B;
    input Real elmt_STAT5A;
    input Real elmt_k_exp_hetero;
    input Real elmt_k_imp_hetero;
    input Real elmt_nucpApA;
    input Real elmt_nucpApB;
    input Real elmt_nucpBpB;
    input Real elmt_k_imp_homo;
    input Real elmt_Epo_degradation_BaF3;
    input Real elmt_pApB;
    input Real elmt_pBpB;
    input Real elmt_pApA;
    input Real elmt_k_phos;
    input Real elmt_k_exp_homo;

    Real elmt_reaction7(unit = "") "";
    Real elmt_product14 "";
    Real elmt_reactant13 "";
    Real elmt_reaction6(unit = "") "";
    Real elmt_product12 "";
    Real elmt_reactant11 "";
    Real elmt_reaction9(unit = "") "";
    Real elmt_reactant18 "";
    Real elmt_product19 "";
    Real elmt_reaction8(unit = "") "";
    Real elmt_product16 "";
    Real elmt_reactant15 "";
    Real elmt_product17 "";
    Real elmt_reaction3(unit = "") "";
    Real elmt_product6 "";
    Real elmt_reactant5 "";
    Real elmt_reaction2(unit = "") "";
    Real elmt_reactant2 "";
    Real elmt_reactant3 "";
    Real elmt_product4 "";
    Real elmt_reaction5(unit = "") "";
    Real elmt_product10 "";
    Real elmt_reactant9 "";
    Real elmt_reaction4(unit = "") "";
    Real elmt_product8 "";
    Real elmt_reactant7 "";
    Real elmt_reaction1(unit = "") "";
    Real elmt_product1 "";
    Real elmt_reactant0 "";


    initial equation
        elmt_reactant2 = 1.0;
        elmt_product8 = 1.0;
        elmt_product6 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_product12 = 1.0;
        elmt_reactant5 = 2.0;
        elmt_product10 = 1.0;
        elmt_reactant7 = 1.0;
        elmt_product1 = 1.0;
        elmt_reactant15 = 1.0;
        elmt_reactant11 = 1.0;
        elmt_product4 = 1.0;
        elmt_reactant0 = 2.0;
        elmt_reactant13 = 1.0;
        elmt_reactant18 = 1.0;
        elmt_product16 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product14 = 2.0;
        elmt_product19 = 2.0;
        elmt_product17 = 1.0;


    equation
        elmt_reaction7 = (elmt_k_exp_homo * elmt_nucpApA);
        elmt_reaction6 = (elmt_k_imp_homo * elmt_pBpB);
        elmt_reaction9 = (elmt_k_exp_homo * elmt_nucpBpB);
        elmt_reaction8 = (elmt_k_exp_hetero * elmt_nucpApB);
        elmt_reaction3 = (1.25E-7 * Functions.pow(elmt_STAT5B, 2.0) * elmt_k_phos * exp(((- elmt_Epo_degradation_BaF3) * time)));
        elmt_reaction2 = (1.25E-7 * elmt_STAT5A * elmt_STAT5B * elmt_k_phos * exp(((- elmt_Epo_degradation_BaF3) * time)));
        elmt_reaction5 = (elmt_k_imp_hetero * elmt_pApB);
        elmt_reaction4 = (elmt_k_imp_homo * elmt_pApA);
        elmt_reaction1 = (1.25E-7 * Functions.pow(elmt_STAT5A, 2.0) * elmt_k_phos * exp(((- elmt_Epo_degradation_BaF3) * time)));
        der(elmt_reactant2) = 0;
        der(elmt_product8) = 0;
        der(elmt_product6) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_product12) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_product10) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_product1) = 0;
        der(elmt_reactant15) = 0;
        der(elmt_reactant11) = 0;
        der(elmt_product4) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_reactant13) = 0;
        der(elmt_reactant18) = 0;
        der(elmt_product16) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product14) = 0;
        der(elmt_product19) = 0;
        der(elmt_product17) = 0;

end Reactions;
