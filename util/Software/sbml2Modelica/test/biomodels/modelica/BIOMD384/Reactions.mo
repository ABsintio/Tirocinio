within BIOMD384;
class Reactions

    input Real elmt_Nt;
    input Real elmt_Vj;
    input Real elmt_Vcmax;
    input Real elmt_phi;
    input Real elmt_J;
    input Real elmt_NADP;
    input Real elmt_Vc;
    input Real elmt_Rp;
    input Real elmt_NADPH;
    input Real elmt_chloroplast;
    input Real elmt_PGA;

    Real elmt_PGA_prod_Vo(unit = "") "PGA production - v_o";
    Real elmt_reactant4 "";
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_reactant5 "";
    Real elmt_PGA_prod_Vc(unit = "") "PGA production - v_c";
    Real elmt_reactant2 "";
    Real elmt_reactant1 "";
    Real elmt_reactant0 "";
    Real elmt_product3 "";
    Real elmt_NADPH_prod(unit = "") "NADPH production";
    Real elmt_product11 "";
    Real elmt_reactant10 "";
    Real elmt_PGA_cons(unit = "") "PGA consumption";
    Real elmt_product9 "";
    Real elmt_reactant8 "";


    initial equation
        elmt_reactant2 = 2.0;
        elmt_product9 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_product7 = 1.5;
        elmt_reactant6 = 2.0;
        elmt_reactant5 = 1.0;
        elmt_product11 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product3 = 2.0;


    equation
        elmt_PGA_prod_Vo = (elmt_chloroplast * (((elmt_phi * ((elmt_Vc + elmt_Vj) - abs((elmt_Vc - elmt_Vj)))) / 2.0)));
        elmt_PGA_prod_Vc = (elmt_chloroplast * ((((elmt_Vc + elmt_Vj) - abs((elmt_Vc - elmt_Vj))) / 2.0)));
        elmt_NADPH_prod = (elmt_chloroplast * (((elmt_J / 2.0) * (elmt_NADP / elmt_Nt))));
        elmt_PGA_cons = (elmt_chloroplast * (((elmt_PGA / elmt_Rp) * (elmt_NADPH / elmt_Nt) * elmt_Vcmax)));
        der(elmt_reactant2) = 0;
        der(elmt_product9) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_product11) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product3) = 0;

end Reactions;
