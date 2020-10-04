within BIOMD225;
class Parameters

    Real elmt_Sgk(unit = "m-3.0.") "Sgk";
    Real elmt_min_to_sec(unit = "") "min_to_sec";
    Real elmt_Vgk_min(unit = "kg-1.0..s-1.0") "Vgk_min";
    Real elmt_Spfk(unit = "m-3.0.") "Spfk";
    Real elmt_KeqGPI(unit = "") "KeqGPI";
    Real elmt_Vpfk(unit = "m-3.0..s-1.0") "Vpfk";
    Real elmt_Vgk(unit = "m-3.0..s-1.0") "Vgk";
    Real elmt_Vpfk_min(unit = "kg-1.0..s-1.0") "Vpfk_min";
    Real elmt_sigcorr(unit = "") "sigcorr";
    Real elmt_Xpfk(unit = "m-3.0.") "Xpfk";
    Real elmt_hx(unit = "") "hx";
    Real elmt_hact(unit = "") "hact";
    Real elmt_Sfba(unit = "m-3.0.") "Sfba";
    Real elmt_Vfba(unit = "m-3.0..s-1.0") "Vfba";
    Real elmt_dw_per_ml(unit = ".m-3.0") "dw_per_ml";
    Real elmt_hGK(unit = "") "hGK";
    Real elmt_alpha(unit = "") "alpha";
    Real elmt_Vfba_min(unit = "kg-1.0..s-1.0") "Vfba_min";
    Real elmt_hpfk(unit = "") "hpfk";


    initial equation
        elmt_Sgk = 8.0;
        elmt_min_to_sec = 60.0;
        elmt_Vgk_min = 10.0;
        elmt_Spfk = 4.0;
        elmt_KeqGPI = 0.3;
        elmt_Vpfk_min = 100.0;
        elmt_sigcorr = 1.5;
        elmt_Xpfk = 0.01;
        elmt_hx = 2.5;
        elmt_hact = 1.0;
        elmt_Sfba = 0.005;
        elmt_dw_per_ml = 0.3333;
        elmt_hGK = 1.7;
        elmt_alpha = 5.0;
        elmt_Vfba_min = 25.0;
        elmt_hpfk = 2.5;


    equation
        der(elmt_Sgk) = 0;
        der(elmt_min_to_sec) = 0;
        der(elmt_Vgk_min) = 0;
        der(elmt_Spfk) = 0;
        der(elmt_KeqGPI) = 0;
        elmt_Vpfk = ((elmt_Vpfk_min * elmt_dw_per_ml) / elmt_min_to_sec);
        elmt_Vgk = ((elmt_Vgk_min * elmt_dw_per_ml) / elmt_min_to_sec);
        der(elmt_Vpfk_min) = 0;
        der(elmt_sigcorr) = 0;
        der(elmt_Xpfk) = 0;
        der(elmt_hx) = 0;
        der(elmt_hact) = 0;
        der(elmt_Sfba) = 0;
        elmt_Vfba = ((elmt_Vfba_min * elmt_dw_per_ml) / elmt_min_to_sec);
        der(elmt_dw_per_ml) = 0;
        der(elmt_hGK) = 0;
        der(elmt_alpha) = 0;
        der(elmt_Vfba_min) = 0;
        der(elmt_hpfk) = 0;

end Parameters;
