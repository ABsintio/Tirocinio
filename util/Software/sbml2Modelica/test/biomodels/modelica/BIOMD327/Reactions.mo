within BIOMD327;
class Reactions

    input Real elmt_japl;
    input Real elmt_zeta;
    input Real elmt_buf;
    input Real elmt_lumen;
    input Real elmt_jbcftr;
    input Real elmt_bl;
    input Real elmt_bi;
    input Real elmt_jlum;
    input Real elmt_cell;
    input Real elmt_rat;
    input Real elmt_jnaleak;
    input Real elmt_japbl;
    input Real elmt_jnak;
    input Real elmt_jac;
    input Real elmt_jccftr;
    input Real elmt_bi0;

    Real elmt_nak(unit = "") "";
    Real elmt_reactant16 "";
    Real elmt_product17 "";
    Real elmt_cac(unit = "") "";
    Real elmt_product22 "";
    Real elmt_bac(unit = "") "";
    Real elmt_product21 "";
    Real elmt_buffering(unit = "") "";
    Real elmt_product20 "";
    Real elmt_naleak(unit = "") "";
    Real elmt_reactant18 "";
    Real elmt_product19 "";
    Real elmt_nbc(unit = "") "";
    Real elmt_reactant1 "";
    Real elmt_reactant0 "";
    Real elmt_product3 "";
    Real elmt_product2 "";
    Real elmt_bcftr(unit = "") "";
    Real elmt_reactant4 "";
    Real elmt_product5 "";
    Real elmt_ccftr(unit = "") "";
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_apbl(unit = "") "";
    Real elmt_product15 "";
    Real elmt_product14 "";
    Real elmt_reactant12 "";
    Real elmt_reactant13 "";
    Real elmt_apl(unit = "") "";
    Real elmt_product11 "";
    Real elmt_reactant8 "";
    Real elmt_product10 "";
    Real elmt_reactant9 "";
    Real elmt_outflow(unit = "") "";
    Real elmt_reactant23 "";


    initial equation
        elmt_reactant1 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product22 = 1.0;
        elmt_product11 = 1.0;
        elmt_product21 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_product10 = 1.0;
        elmt_product20 = 1.0;
        elmt_reactant16 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant0 = 2.0;
        elmt_product3 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_reactant23 = 1.0;
        elmt_product2 = 2.0;
        elmt_reactant13 = 1.0;
        elmt_reactant18 = 1.0;
        elmt_product15 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product14 = 1.0;
        elmt_product19 = 1.0;
        elmt_product17 = 1.0;


    equation
        elmt_nak = (elmt_cell * elmt_zeta * elmt_jnak);
        elmt_cac = (elmt_lumen * elmt_zeta * elmt_jac);
        elmt_bac = (elmt_lumen * elmt_zeta * elmt_jac * elmt_rat);
        elmt_buffering = (elmt_cell * elmt_zeta * elmt_buf * (elmt_bi0 - elmt_bi));
        elmt_naleak = (elmt_cell * elmt_zeta * elmt_jnaleak);
        elmt_nbc = (elmt_cell * elmt_zeta * elmt_japl);
        elmt_bcftr = (elmt_cell * elmt_zeta * elmt_jbcftr);
        elmt_ccftr = (elmt_cell * elmt_zeta * elmt_jccftr);
        elmt_apbl = (elmt_cell * elmt_zeta * elmt_japbl);
        elmt_apl = (elmt_cell * elmt_zeta * elmt_japl);
        elmt_outflow = (elmt_lumen * elmt_zeta * elmt_jlum * elmt_bl);
        der(elmt_reactant1) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product22) = 0;
        der(elmt_product11) = 0;
        der(elmt_product21) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_product10) = 0;
        der(elmt_product20) = 0;
        der(elmt_reactant16) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product3) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_reactant23) = 0;
        der(elmt_product2) = 0;
        der(elmt_reactant13) = 0;
        der(elmt_reactant18) = 0;
        der(elmt_product15) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product14) = 0;
        der(elmt_product19) = 0;
        der(elmt_product17) = 0;

end Reactions;
