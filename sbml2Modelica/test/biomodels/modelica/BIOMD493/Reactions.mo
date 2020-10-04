within BIOMD493;
class Reactions

    input Real elmt_kP;
    input Real elmt_cOC;
    input Real elmt_mP;
    input Real elmt_kO;
    input Real elmt_n;
    input Real elmt_aC;
    input Real elmt_mO;
    input Real elmt_aO;
    input Real elmt_zC;
    input Real elmt_zD;
    input Real elmt_mC;
    input Real elmt_cOP;
    input Real elmt_cCC;
    input Real elmt_cOO;
    input Real elmt_cCP;
    input Real elmt_cCO;
    input Real elmt_kC;
    input Real elmt_O;
    input Real elmt_P;
    input Real elmt_bC;
    input Real elmt_bO;
    input Real elmt_bP;
    input Real elmt_C;
    input Real elmt_zO;
    input Real elmt_cPP;
    input Real elmt_aP;

    Real elmt_a6(unit = "") "";
    Real elmt_reactant5 "";
    Real elmt_a4(unit = "") "";
    Real elmt_reactant3 "";
    Real elmt_a5(unit = "") "";
    Real elmt_product4 "";
    Real elmt_a2(unit = "") "";
    Real elmt_reactant1 "";
    Real elmt_a3(unit = "") "";
    Real elmt_product2 "";
    Real elmt_a1(unit = "") "";
    Real elmt_product0 "";


    initial equation
        elmt_reactant1 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_product0 = 1.0;
        elmt_product4 = 1.0;
        elmt_product2 = 1.0;


    equation
        elmt_a6 = (elmt_kC * elmt_C);
        elmt_a4 = (elmt_kO * elmt_O);
        elmt_a5 = (((elmt_aC * Functions.pow(elmt_C, elmt_n)) + elmt_bC + elmt_zC) / (elmt_mC + (elmt_cCO * Functions.pow(elmt_O, elmt_n)) + (elmt_cCP * Functions.pow(elmt_P, elmt_n)) + (elmt_cCC * Functions.pow(elmt_C, elmt_n))));
        elmt_a2 = (elmt_kP * elmt_P);
        elmt_a3 = (((elmt_aO * Functions.pow(elmt_O, elmt_n)) + elmt_bO + elmt_zO) / (elmt_mO + (elmt_cOC * Functions.pow(elmt_C, elmt_n)) + (elmt_cOP * Functions.pow(elmt_P, elmt_n)) + (elmt_cOO * Functions.pow(elmt_O, elmt_n))));
        elmt_a1 = (((elmt_aP * Functions.pow(elmt_P, elmt_n)) + elmt_bP) / (elmt_mP + elmt_zD + (elmt_cPP * Functions.pow(elmt_P, elmt_n))));
        der(elmt_reactant1) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_product0) = 0;
        der(elmt_product4) = 0;
        der(elmt_product2) = 0;

end Reactions;
