within BIOMD272;
class Parameters

    input Real elmt_SAv;
    input Real elmt_SAv_EpoRi;
    input Real elmt_dSAvi;
    input Real elmt_dSAve;

    Real elmt_kex_SAv(unit = "s-1.0") "";
    Real elmt_kon_SAv(unit = "m3.0.mol-1.0.s-1.0") "";
    Real elmt_koff_SAv(unit = "s-1.0") "";
    Real elmt_kdi(unit = "s-1.0") "";
    Real elmt_kt(unit = "s-1.0") "";
    Real elmt_kde(unit = "s-1.0") "";
    Real elmt_Bmax_SAv(unit = "m-3.0.") "";
    Real elmt_SAv_cells(unit = "") "SAv_cells";
    Real elmt_SAv_medium(unit = "") "SAv_medium";


    initial equation
        elmt_kex_SAv = 0.01101;
        elmt_kon_SAv = 2.29402E-6;
        elmt_koff_SAv = 0.00679946;
        elmt_kdi = 0.00317871;
        elmt_kt = 0.0329366;
        elmt_kde = 0.0164042;
        elmt_Bmax_SAv = 76.0;


    equation
        der(elmt_kex_SAv) = 0;
        der(elmt_kon_SAv) = 0;
        der(elmt_koff_SAv) = 0;
        der(elmt_kdi) = 0;
        der(elmt_kt) = 0;
        der(elmt_kde) = 0;
        der(elmt_Bmax_SAv) = 0;
        elmt_SAv_cells = (elmt_SAv_EpoRi + elmt_dSAvi);
        elmt_SAv_medium = (elmt_SAv + elmt_dSAve);

end Parameters;
