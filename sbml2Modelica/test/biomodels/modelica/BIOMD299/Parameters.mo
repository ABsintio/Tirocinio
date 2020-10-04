within BIOMD299;
class Parameters

    input Real elmt_FC;
    input Real elmt_FN;

    Real elmt_k1(unit = "") "k1";
    Real elmt_n(unit = "") "n";
    Real elmt_Km(unit = "") "Km";
    Real elmt_vs(unit = "") "vs";
    Real elmt_KI(unit = "") "KI";
    Real elmt_Ft(unit = "") "Ft";
    Real elmt_vd(unit = "") "vd";
    Real elmt_Kd(unit = "") "Kd";
    Real elmt_vm(unit = "") "vm";
    Real elmt_k2(unit = "") "k2";
    Real elmt_ks(unit = "") "ks";


    initial equation
        elmt_k1 = 0.5;
        elmt_n = 4.0;
        elmt_Km = 0.5;
        elmt_vs = 1.6;
        elmt_KI = 1.0;
        elmt_vd = 1.4;
        elmt_Kd = 0.13;
        elmt_vm = 0.505;
        elmt_k2 = 0.6;
        elmt_ks = 0.5;


    equation
        der(elmt_k1) = 0;
        der(elmt_n) = 0;
        der(elmt_Km) = 0;
        der(elmt_vs) = 0;
        der(elmt_KI) = 0;
        elmt_Ft = (elmt_FC + elmt_FN);
        der(elmt_vd) = 0;
        der(elmt_Kd) = 0;
        der(elmt_vm) = 0;
        der(elmt_k2) = 0;
        der(elmt_ks) = 0;

end Parameters;
