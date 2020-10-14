within BIOMD271;
class Parameters

    input Real elmt_dEpoi;
    input Real elmt_Epo;
    input Real elmt_Epo_EpoRi;
    input Real elmt_dEpoe;

    Real elmt_koff(unit = "s-1.0") "";
    Real elmt_Bmax(unit = "m-3.0.") "";
    Real elmt_Epo_cells(unit = "") "Epo_cells";
    Real elmt_Epo_medium(unit = "") "Epo_medium";
    Real elmt_kdi(unit = "s-1.0") "";
    Real elmt_kex(unit = "s-1.0") "";
    Real elmt_kt(unit = "s-1.0") "";
    Real elmt_kde(unit = "s-1.0") "";
    Real elmt_ke(unit = "s-1.0") "";
    Real elmt_kon(unit = "m3.0.mol-1.0.s-1.0") "";


    initial equation
        elmt_koff = 0.0172135;
        elmt_Bmax = 516.0;
        elmt_kdi = 0.00317871;
        elmt_kex = 0.00993805;
        elmt_kt = 0.0329366;
        elmt_kde = 0.0164042;
        elmt_ke = 0.0748267;
        elmt_kon = 1.0496E-4;


    equation
        der(elmt_koff) = 0;
        der(elmt_Bmax) = 0;
        elmt_Epo_cells = (elmt_Epo_EpoRi + elmt_dEpoi);
        elmt_Epo_medium = (elmt_Epo + elmt_dEpoe);
        der(elmt_kdi) = 0;
        der(elmt_kex) = 0;
        der(elmt_kt) = 0;
        der(elmt_kde) = 0;
        der(elmt_ke) = 0;
        der(elmt_kon) = 0;

end Parameters;
