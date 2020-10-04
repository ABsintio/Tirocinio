within BIOMD236;
class Parameters

    input Real elmt_F6P;

    Real elmt_Sgk(unit = "m-3.0.") "Sgk";
    Real elmt_Vgk_min(unit = "kg-1.0..s-1.0") "Vgk_min";
    Real elmt_Spfk(unit = "m-3.0.") "Spfk";
    Real elmt_Vgk(unit = "m-3.0..s-1.0") "Vgk";
    Real elmt_KeqTPI(unit = "") "KeqTPI";
    Real elmt_hact(unit = "") "hact";
    Real elmt_Sfba(unit = "m-3.0.") "Sfba";
    Real elmt_sigma(unit = "") "sigma";
    Real elmt_hGK(unit = "") "hGK";
    Real elmt_alpha(unit = "") "alpha";
    Real elmt_Qfba(unit = "m-3.0.") "Qfba";
    Real elmt_min_to_sec(unit = "") "min_to_sec";
    Real elmt_KeqGPI(unit = "") "KeqGPI";
    Real elmt_Vpfk(unit = "m-3.0..s-1.0") "Vpfk";
    Real elmt_Vpfk_min(unit = "kg-1.0..s-1.0") "Vpfk_min";
    Real elmt_KeqFBA(unit = "m-3.0.") "KeqFBA";
    Real elmt_Xpfk(unit = "m-3.0.") "Xpfk";
    Real elmt_Sgapdh(unit = "m-3.0.") "Sgapdh";
    Real elmt_hx(unit = "") "hx";
    Real elmt_Vfba(unit = "m-3.0..s-1.0") "Vfba";
    Real elmt_dw_per_ml(unit = ".m-3.0") "dw_per_ml";
    Real elmt_Vfba_min(unit = "kg-1.0..s-1.0") "Vfba_min";
    Real elmt_Vgapdh_min(unit = "kg-1.0..s-1.0") "Vgapdh_min";
    Real elmt_hpfk(unit = "") "hpfk";
    Real elmt_Vgapdh(unit = "m-3.0..s-1.0") "Vgapdh";
    Real elmt_Pfba(unit = "m-3.0.") "Pfba";


    initial equation
        elmt_Sgk = 8.0;
        elmt_Vgk_min = 10.0;
        elmt_Spfk = 4.0;
        elmt_KeqTPI = 0.045455;
        elmt_hact = 1.0;
        elmt_Sfba = 0.005;
        elmt_hGK = 1.7;
        elmt_alpha = 5.0;
        elmt_Qfba = 0.275;
        elmt_min_to_sec = 60.0;
        elmt_KeqGPI = 0.3;
        elmt_Vpfk_min = 100.0;
        elmt_KeqFBA = 0.1;
        elmt_Xpfk = 0.01;
        elmt_Sgapdh = 0.005;
        elmt_hx = 2.5;
        elmt_dw_per_ml = 0.3333;
        elmt_Vfba_min = 25.0;
        elmt_Vgapdh_min = 250.0;
        elmt_hpfk = 2.5;
        elmt_Pfba = 0.5;


    equation
        der(elmt_Sgk) = 0;
        der(elmt_Vgk_min) = 0;
        der(elmt_Spfk) = 0;
        elmt_Vgk = ((elmt_Vgk_min * elmt_dw_per_ml) / elmt_min_to_sec);
        der(elmt_KeqTPI) = 0;
        der(elmt_hact) = 0;
        der(elmt_Sfba) = 0;
        elmt_sigma = (elmt_F6P / elmt_Spfk);
        der(elmt_hGK) = 0;
        der(elmt_alpha) = 0;
        der(elmt_Qfba) = 0;
        der(elmt_min_to_sec) = 0;
        der(elmt_KeqGPI) = 0;
        elmt_Vpfk = ((elmt_Vpfk_min * elmt_dw_per_ml) / elmt_min_to_sec);
        der(elmt_Vpfk_min) = 0;
        der(elmt_KeqFBA) = 0;
        der(elmt_Xpfk) = 0;
        der(elmt_Sgapdh) = 0;
        der(elmt_hx) = 0;
        elmt_Vfba = ((elmt_Vfba_min * elmt_dw_per_ml) / elmt_min_to_sec);
        der(elmt_dw_per_ml) = 0;
        der(elmt_Vfba_min) = 0;
        der(elmt_Vgapdh_min) = 0;
        der(elmt_hpfk) = 0;
        elmt_Vgapdh = ((elmt_Vgapdh_min * elmt_dw_per_ml) / elmt_min_to_sec);
        der(elmt_Pfba) = 0;

end Parameters;
