within BIOMD462;
class Reactions

    input Real elmt_kdimer;
    input Real elmt_kdisagg;
    input Real elmt_kdeg;
    input Real elmt_Abeta;
    input Real elmt_kdegNep;
    input Real elmt_Source;
    input Real elmt_Nep;
    input Real elmt_kprod;
    input Real elmt_kdedimer;
    input Real elmt_kpg;
    input Real elmt_kpf;
    input Real elmt_AbP;
    input Real elmt_kpghalf;
    input Real elmt_AbDim;

    Real elmt_NepDegradation(unit = "") "";
    Real elmt_reactant17 "";
    Real elmt_product18 "";
    Real elmt_AbetaPlaqueGrowth(unit = "") "";
    Real elmt_product14 "";
    Real elmt_reactant12 "";
    Real elmt_reactant13 "";
    Real elmt_AbetaDedimerisation(unit = "") "";
    Real elmt_product9 "";
    Real elmt_reactant8 "";
    Real elmt_AbetaDisaggregation(unit = "") "";
    Real elmt_product16 "";
    Real elmt_reactant15 "";
    Real elmt_Abetaproduction(unit = "") "";
    Real elmt_product1 "";
    Real elmt_reactant0 "";
    Real elmt_AbetaDegradation(unit = "") "";
    Real elmt_reactant2 "";
    Real elmt_reactant3 "";
    Real elmt_product5 "";
    Real elmt_product4 "";
    Real elmt_AbetaDimerisation(unit = "") "";
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_AbetaPlaqueFormation(unit = "") "";
    Real elmt_product11 "";
    Real elmt_reactant10 "";


    initial equation
        elmt_product9 = 2.0;
        elmt_reactant2 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_reactant6 = 2.0;
        elmt_product11 = 4.0;
        elmt_reactant8 = 1.0;
        elmt_product1 = 1.0;
        elmt_reactant15 = 1.0;
        elmt_reactant17 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant10 = 2.0;
        elmt_product4 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_reactant13 = 1.0;
        elmt_product16 = 1.0;
        elmt_product14 = 2.0;
        elmt_product18 = 1.0;


    equation
        elmt_NepDegradation = (elmt_kdegNep * elmt_Nep);
        elmt_AbetaPlaqueGrowth = ((elmt_kpg * elmt_Abeta * Functions.pow(elmt_AbP, 2.0)) / (Functions.pow(elmt_kpghalf, 2.0) + Functions.pow(elmt_AbP, 2.0)));
        elmt_AbetaDedimerisation = (elmt_kdedimer * elmt_AbDim);
        elmt_AbetaDisaggregation = (elmt_kdisagg * elmt_AbP);
        elmt_Abetaproduction = (elmt_kprod * elmt_Source);
        elmt_AbetaDegradation = (elmt_kdeg * elmt_Abeta * elmt_Nep * 0.001);
        elmt_AbetaDimerisation = (elmt_kdimer * elmt_Abeta * (elmt_Abeta - 1.0) * 0.5);
        elmt_AbetaPlaqueFormation = (elmt_kpf * elmt_AbDim * (elmt_AbDim - 1.0) * 0.5);
        der(elmt_product9) = 0;
        der(elmt_reactant2) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product11) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_product1) = 0;
        der(elmt_reactant15) = 0;
        der(elmt_reactant17) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_product4) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_reactant13) = 0;
        der(elmt_product16) = 0;
        der(elmt_product14) = 0;
        der(elmt_product18) = 0;

end Reactions;
