within BIOMD021;
class Parameters

    input Real elmt_P1;
    input Real elmt_P2;
    input Real elmt_CC;
    input Real elmt_P0;
    input Real elmt_T1;
    input Real elmt_T2;
    input Real elmt_Cn;
    input Real elmt_T0;

    Real elmt_V_dT(unit = "") "";
    Real elmt_Pt(unit = "") "Total Per";
    Real elmt_Tt(unit = "") "Total Tim";
    Real elmt_V_mT(unit = "") "";


    initial equation
        elmt_V_dT = 2.0;
        elmt_V_mT = 0.7;


    equation
        der(elmt_V_dT) = 0;
        elmt_Pt = (elmt_CC + elmt_Cn + elmt_P0 + elmt_P1 + elmt_P2);
        elmt_Tt = (elmt_CC + elmt_Cn + elmt_T0 + elmt_T1 + elmt_T2);
        der(elmt_V_mT) = 0;

end Parameters;
