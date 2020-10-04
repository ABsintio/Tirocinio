within BIOMD025;
class Parameters

    input Real elmt_Per;
    input Real elmt_dClk;

    Real elmt_dClkF_tau1(unit = "m-3.0.") "dClkF_tau1";
    Real elmt_K1(unit = "m-3.0.") "K1";
    Real elmt_kdp(unit = "s-1.0") "kdp";
    Real elmt_dClkF_tau2(unit = "m-3.0.") "dClkF_tau2";
    Real elmt_tau2(unit = "") "tau2";
    Real elmt_Vsc(unit = "m-3.0..s-1.0") "Vsc";
    Real elmt_tau1(unit = "") "tau1";
    Real elmt_Vsp(unit = "m-3.0..s-1.0") "Vsp";
    Real elmt_K2(unit = "m-3.0.") "K2";
    Real elmt_kdc(unit = "s-1.0") "kdc";


    initial equation
        elmt_K1 = 0.3;
        elmt_kdp = 0.5;
        elmt_tau2 = 10.0;
        elmt_Vsc = 0.25;
        elmt_tau1 = 10.0;
        elmt_Vsp = 0.5;
        elmt_K2 = 0.1;
        elmt_kdc = 0.5;


    equation
        elmt_dClkF_tau1 = (if ((delay(elmt_dClk, elmt_tau1, Constants.INFINITY) - delay(elmt_Per, elmt_tau1, Constants.INFINITY)) < 0.0) then 0.0 else (delay(elmt_dClk, elmt_tau1, Constants.INFINITY) - delay(elmt_Per, elmt_tau1, Constants.INFINITY)));
        der(elmt_K1) = 0;
        der(elmt_kdp) = 0;
        elmt_dClkF_tau2 = (if ((delay(elmt_dClk, elmt_tau2, Constants.INFINITY) - delay(elmt_Per, elmt_tau2, Constants.INFINITY)) < 0.0) then 0.0 else (delay(elmt_dClk, elmt_tau2, Constants.INFINITY) - delay(elmt_Per, elmt_tau2, Constants.INFINITY)));
        der(elmt_tau2) = 0;
        der(elmt_Vsc) = 0;
        der(elmt_tau1) = 0;
        der(elmt_Vsp) = 0;
        der(elmt_K2) = 0;
        der(elmt_kdc) = 0;

end Parameters;
