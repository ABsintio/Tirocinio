within BIOMD198;
class Reactions

    input Real elmt_k1;
    input Real elmt_NO;
    input Real elmt_NO_sGCslow_6coord;
    input Real elmt_sGCfast;
    input Real elmt_k8;
    input Real elmt_NO_sGCfast_6coord;
    input Real elmt_k9;
    input Real elmt_k6;
    input Real elmt_k7;
    input Real elmt_cytosol;
    input Real elmt_k4;
    input Real elmt_k5;
    input Real elmt_k2;
    input Real elmt_k3;
    input Real elmt_NO_sGCslow;
    input Real elmt_NO_sGCfast;
    input Real elmt_NO_sGCfast_5coord;
    input Real elmt_NO_sGCslow_5coord;
    input Real elmt_sGCslow;
    input Real elmt_k12;
    input Real elmt_k11;
    input Real elmt_NO_sGCslow_6coord_NO_int;
    input Real elmt_k10;

    Real elmt_r1fast(unit = "") "r1fast";
    Real elmt_reactant1 "";
    Real elmt_reactant0 "";
    Real elmt_product2 "";
    Real elmt_r2slow(unit = "") "r2slow";
    Real elmt_product11 "";
    Real elmt_reactant10 "";
    Real elmt_r1slow(unit = "") "r1slow";
    Real elmt_product9 "";
    Real elmt_reactant8 "";
    Real elmt_reactant7 "";
    Real elmt_r3fast(unit = "") "r3fast";
    Real elmt_product6 "";
    Real elmt_reactant5 "";
    Real elmt_r2fast(unit = "") "r2fast";
    Real elmt_reactant3 "";
    Real elmt_product4 "";
    Real elmt_r4slow(unit = "") "r4slow";
    Real elmt_product16 "";
    Real elmt_reactant15 "";
    Real elmt_r3slow(unit = "") "r3slow";
    Real elmt_product14 "";
    Real elmt_reactant12 "";
    Real elmt_reactant13 "";


    initial equation
        elmt_product9 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_product6 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_product11 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_reactant7 = 1.0;
        elmt_reactant15 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_product4 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_product2 = 1.0;
        elmt_reactant13 = 1.0;
        elmt_product16 = 1.0;
        elmt_product14 = 1.0;


    equation
        elmt_r1fast = (elmt_cytosol * ((elmt_k1 * elmt_NO * elmt_sGCfast) - (elmt_k2 * elmt_NO_sGCfast)));
        elmt_r2slow = (elmt_k8 * elmt_cytosol * elmt_NO_sGCslow);
        elmt_r1slow = (elmt_cytosol * ((elmt_k6 * elmt_NO * elmt_sGCslow) - (elmt_k7 * elmt_NO_sGCslow)));
        elmt_r3fast = (elmt_cytosol * ((elmt_k4 * elmt_NO_sGCfast_6coord) - (elmt_k5 * elmt_NO_sGCfast_5coord)));
        elmt_r2fast = (elmt_k3 * elmt_cytosol * elmt_NO_sGCfast);
        elmt_r4slow = (elmt_cytosol * ((elmt_k11 * elmt_NO_sGCslow_6coord_NO_int) - (elmt_k12 * elmt_NO_sGCslow_5coord)));
        elmt_r3slow = (elmt_cytosol * ((elmt_k9 * elmt_NO * elmt_NO_sGCslow_6coord) - (elmt_k10 * elmt_NO_sGCslow_6coord_NO_int)));
        der(elmt_product9) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_product6) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_product11) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_reactant15) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_product4) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_product2) = 0;
        der(elmt_reactant13) = 0;
        der(elmt_product16) = 0;
        der(elmt_product14) = 0;

end Reactions;
