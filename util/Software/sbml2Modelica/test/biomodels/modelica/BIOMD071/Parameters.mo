within BIOMD071;
class Parameters

    input Real elmt_glycosome;
    input Real elmt_cytosol;
    input Real elmt_tot_cell;

    Real elmt_Keq_anti(unit = "") "";
    Real elmt_TPIact(unit = "") "";
    Real elmt_Keq_PGM(unit = "") "";
    Real elmt_Vc(unit = "kg-1.0.m3.0") "Vc";
    Real elmt_KeqAK(unit = "") "";
    Real elmt_sumAc(unit = "m-3.0.") "";
    Real elmt_sumAg(unit = "m-3.0.") "";
    Real elmt_Vg(unit = "kg-1.0.m3.0") "Vg";
    Real elmt_Keq_ENO(unit = "") "";
    Real elmt_sumc4(unit = "m-3.0.") "";
    Real elmt_Vt(unit = "kg-1.0.m3.0") "tot volume per mg protein";
    Real elmt_sumc5(unit = "m-3.0.") "";


    initial equation
        elmt_Keq_anti = 1.0;
        elmt_TPIact = 1.0;
        elmt_Keq_PGM = 0.187;
        elmt_KeqAK = 0.442;
        elmt_sumAc = 3.9;
        elmt_sumAg = 6.0;
        elmt_Keq_ENO = 6.7;
        elmt_sumc4 = 45.0;
        elmt_Vt = 5.7;
        elmt_sumc5 = 5.0;


    equation
        der(elmt_Keq_anti) = 0;
        der(elmt_TPIact) = 0;
        der(elmt_Keq_PGM) = 0;
        elmt_Vc = ((elmt_cytosol * elmt_Vt) / elmt_tot_cell);
        der(elmt_KeqAK) = 0;
        der(elmt_sumAc) = 0;
        der(elmt_sumAg) = 0;
        elmt_Vg = ((elmt_glycosome * elmt_Vt) / elmt_tot_cell);
        der(elmt_Keq_ENO) = 0;
        der(elmt_sumc4) = 0;
        der(elmt_Vt) = 0;
        der(elmt_sumc5) = 0;

end Parameters;
