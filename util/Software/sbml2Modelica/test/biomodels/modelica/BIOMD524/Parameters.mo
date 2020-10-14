within BIOMD524;
class Parameters

    input Real elmt_CD95L;
    input Real elmt_CD95;

    Real elmt_kDISC(unit = "") "";
    Real elmt_KDL(unit = "") "";
    Real elmt_kD216(unit = "") "";
    Real elmt_kBid(unit = "") "";
    Real elmt_koff_FADD(unit = "") "";
    Real elmt_KDR(unit = "") "";
    Real elmt_kon_FADD(unit = "") "";
    Real elmt_CD95act(unit = "") "";
    Real elmt_kD374trans_p43(unit = "") "";
    Real elmt_kD374trans_p55(unit = "") "";
    Real elmt_kD374probe(unit = "") "";
    Real elmt_kdiss_p18(unit = "") "";


    initial equation
        elmt_kDISC = 4.91828591049766E-4;
        elmt_KDL = 15.421878766215;
        elmt_kD216 = 0.0114186392006403;
        elmt_kBid = 5.2867403363568E-4;
        elmt_koff_FADD = 0.00566528253772301;
        elmt_KDR = 8.98496674617627;
        elmt_kon_FADD = 8.11711012144556E-4;
        elmt_kD374trans_p43 = 0.00343995957326369;
        elmt_kD374trans_p55 = 4.46994772958953E-4;
        elmt_kD374probe = 0.00152252549827479;
        elmt_kdiss_p18 = 0.0949914492651531;


    equation
        der(elmt_kDISC) = 0;
        der(elmt_KDL) = 0;
        der(elmt_kD216) = 0;
        der(elmt_kBid) = 0;
        der(elmt_koff_FADD) = 0;
        der(elmt_KDR) = 0;
        der(elmt_kon_FADD) = 0;
        elmt_CD95act = ((Functions.pow(elmt_CD95, 3.0) * Functions.pow(elmt_KDL, 2.0) * elmt_CD95L) / ((elmt_CD95L + elmt_KDL) * ((Functions.pow(elmt_CD95, 2.0) * Functions.pow(elmt_KDL, 2.0)) + (elmt_KDR * Functions.pow(elmt_CD95L, 2.0)) + (2.0 * elmt_KDR * elmt_KDL * elmt_CD95L) + (elmt_KDR * Functions.pow(elmt_KDL, 2.0)))));
        der(elmt_kD374trans_p43) = 0;
        der(elmt_kD374trans_p55) = 0;
        der(elmt_kD374probe) = 0;
        der(elmt_kdiss_p18) = 0;

end Parameters;
