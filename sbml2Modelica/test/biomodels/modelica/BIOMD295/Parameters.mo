within BIOMD295;
class Parameters

    input Real elmt_FNp;
    input Real elmt_FCp;
    input Real elmt_FC;
    input Real elmt_FN;

    Real elmt_n(unit = "") "n";
    Real elmt_Tot_FRQ(unit = "") "Tot_FRQ";
    Real elmt_dawn(unit = "") "dawn";
    Real elmt_km(unit = "") "km";
    Real elmt_vd(unit = "") "vd";
    Real elmt_ks(unit = "") "ks";
    Real elmt_k1n(unit = "") "k1n";
    Real elmt_ksp(unit = "") "ksp";
    Real elmt_k2n(unit = "") "k2n";
    Real elmt_amp(unit = "") "amp";
    Real elmt_vdp(unit = "") "vdp";
    Real elmt_vs(unit = "") "vs";
    Real elmt_dusk(unit = "") "dusk";
    Real elmt_ki(unit = "") "ki";
    Real elmt_k1np(unit = "") "k1np";
    Real elmt_vm(unit = "") "vm";
    Real elmt_k2np(unit = "") "k2np";


    initial equation
        elmt_n = 6.3958;
        elmt_dawn = 6.0;
        elmt_km = 0.0846004096489894;
        elmt_vd = 0.161111487362275;
        elmt_ks = 0.313846476998244;
        elmt_k1n = 0.222636680929471;
        elmt_ksp = 0.294840169149965;
        elmt_k2n = 0.331484503209686;
        elmt_amp = 0.0;
        elmt_vdp = 0.139750313979272;
        elmt_vs = 1.2236333742524;
        elmt_dusk = 18.0;
        elmt_ki = 5.04543346939346;
        elmt_k1np = 0.272306464006464;
        elmt_vm = 0.885376326739544;
        elmt_k2np = 0.295420749525813;


    equation
        der(elmt_n) = 0;
        elmt_Tot_FRQ = (elmt_FC + elmt_FCp + elmt_FN + elmt_FNp);
        der(elmt_dawn) = 0;
        der(elmt_km) = 0;
        der(elmt_vd) = 0;
        der(elmt_ks) = 0;
        der(elmt_k1n) = 0;
        der(elmt_ksp) = 0;
        der(elmt_k2n) = 0;
        der(elmt_amp) = 0;
        der(elmt_vdp) = 0;
        der(elmt_vs) = 0;
        der(elmt_dusk) = 0;
        der(elmt_ki) = 0;
        der(elmt_k1np) = 0;
        der(elmt_vm) = 0;
        der(elmt_k2np) = 0;

end Parameters;
