within BIOMD029;
class Parameters

    Real elmt_kcat6(unit = "") "kcat6";
    Real elmt_kcat7(unit = "") "kcat7";
    Real elmt_kcat4(unit = "") "kcat4";
    Real elmt_Km7(unit = "") "Km7";
    Real elmt_kcat5(unit = "") "kcat5";
    Real elmt_Km8(unit = "") "Km8";
    Real elmt_Km5(unit = "") "Km5";
    Real elmt_Km6(unit = "") "Km6";
    Real elmt_Km3(unit = "") "Km3";
    Real elmt_Km4(unit = "") "Km4";
    Real elmt_kcat2(unit = "") "kcat2";
    Real elmt_kcat3(unit = "") "kcat3";
    Real elmt_kcat1(unit = "") "kcat1";
    Real elmt_Km1(unit = "") "Km1";
    Real elmt_Km2(unit = "") "Km2";


    initial equation
        elmt_kcat6 = 0.06;
        elmt_kcat7 = 0.108;
        elmt_kcat4 = 0.45;
        elmt_Km7 = 34.0;
        elmt_kcat5 = 0.084;
        elmt_Km8 = 40.0;
        elmt_Km5 = 22.0;
        elmt_Km6 = 18.0;
        elmt_Km3 = 20.0;
        elmt_Km4 = 300.0;
        elmt_kcat2 = 0.007;
        elmt_kcat3 = 0.008;
        elmt_kcat1 = 1.08;
        elmt_Km1 = 410.0;
        elmt_Km2 = 40.0;


    equation
        der(elmt_kcat6) = 0;
        der(elmt_kcat7) = 0;
        der(elmt_kcat4) = 0;
        der(elmt_Km7) = 0;
        der(elmt_kcat5) = 0;
        der(elmt_Km8) = 0;
        der(elmt_Km5) = 0;
        der(elmt_Km6) = 0;
        der(elmt_Km3) = 0;
        der(elmt_Km4) = 0;
        der(elmt_kcat2) = 0;
        der(elmt_kcat3) = 0;
        der(elmt_kcat1) = 0;
        der(elmt_Km1) = 0;
        der(elmt_Km2) = 0;

end Parameters;
