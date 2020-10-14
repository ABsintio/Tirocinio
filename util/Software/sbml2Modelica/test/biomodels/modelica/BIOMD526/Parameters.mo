within BIOMD526;
class Parameters

    input Real elmt_CD95L;
    input Real elmt_CD95;

    Real elmt_kD216trans_p55(unit = "") "";
    Real elmt_kDISC(unit = "") "";
    Real elmt_kD216trans_p43(unit = "") "";
    Real elmt_KDL(unit = "") "";
    Real elmt_kD216(unit = "") "";
    Real elmt_kBid(unit = "") "";
    Real elmt_koff_FADD(unit = "") "";
    Real elmt_kD374(unit = "") "";
    Real elmt_KDR(unit = "") "";
    Real elmt_kon_FADD(unit = "") "";
    Real elmt_CD95act(unit = "") "";
    Real elmt_kD374trans_p43(unit = "") "";
    Real elmt_kD374trans_p55(unit = "") "";
    Real elmt_kD374probe(unit = "") "";
    Real elmt_kdiss_p18(unit = "") "";


    initial equation
        elmt_kD216trans_p55 = 2.23246421372882E-4;
        elmt_kDISC = 3.64965874405544E-4;
        elmt_kD216trans_p43 = 5.29906975294056E-5;
        elmt_KDL = 30.0060394758199;
        elmt_kD216 = 0.00639775937416746;
        elmt_kBid = 5.2134055139547E-4;
        elmt_koff_FADD = 0.00130854998177646;
        elmt_kD374 = 6.44612643975149E-4;
        elmt_KDR = 57.2050013008496;
        elmt_kon_FADD = 0.00108871858684363;
        elmt_kD374trans_p43 = 0.00413530054938906;
        elmt_kD374trans_p55 = 5.43518631342483E-4;
        elmt_kD374probe = 0.00153710001025539;
        elmt_kdiss_p18 = 0.064713651554491;


    equation
        der(elmt_kD216trans_p55) = 0;
        der(elmt_kDISC) = 0;
        der(elmt_kD216trans_p43) = 0;
        der(elmt_KDL) = 0;
        der(elmt_kD216) = 0;
        der(elmt_kBid) = 0;
        der(elmt_koff_FADD) = 0;
        der(elmt_kD374) = 0;
        der(elmt_KDR) = 0;
        der(elmt_kon_FADD) = 0;
        elmt_CD95act = ((Functions.pow(elmt_CD95, 3.0) * Functions.pow(elmt_KDL, 2.0) * elmt_CD95L) / ((elmt_CD95L + elmt_KDL) * ((Functions.pow(elmt_CD95, 2.0) * Functions.pow(elmt_KDL, 2.0)) + (elmt_KDR * Functions.pow(elmt_CD95L, 2.0)) + (2.0 * elmt_KDR * elmt_KDL * elmt_CD95L) + (elmt_KDR * Functions.pow(elmt_KDL, 2.0)))));
        der(elmt_kD374trans_p43) = 0;
        der(elmt_kD374trans_p55) = 0;
        der(elmt_kD374probe) = 0;
        der(elmt_kdiss_p18) = 0;

end Parameters;
