within BIOMD377;
class Parameters

    input Real elmt_n;
    input Real elmt_s2;
    input Real elmt_s1;
    input Real elmt_V;

    Real elmt_minf(unit = "") "minf";
    Real elmt_Il(unit = "") "Il";
    Real elmt_gK(unit = "") "gK";
    Real elmt_Vs2(unit = "") "Vs2";
    Real elmt_Vs1(unit = "") "Vs1";
    Real elmt_s1inf(unit = "") "s1inf";
    Real elmt_Cm(unit = "") "Cm";
    Real elmt_ICa(unit = "") "ICa";
    Real elmt_VK(unit = "") "VK";
    Real elmt_gs2(unit = "") "gs2";
    Real elmt_gs1(unit = "") "gs1";
    Real elmt_tnbar(unit = "") "tnbar";
    Real elmt_parameter_1(unit = "") "I1+I2";
    Real elmt_gl(unit = "") "gl";
    Real elmt_ninf(unit = "") "ninf";
    Real elmt_VCa(unit = "") "VCa";
    Real elmt_IK(unit = "") "IK";
    Real elmt_s2inf(unit = "") "s2inf";
    Real elmt_ss2(unit = "") "ss2";
    Real elmt_ss1(unit = "") "ss1";
    Real elmt_taus1(unit = "") "taus1";
    Real elmt_taus2(unit = "") "taus2";
    Real elmt_Is1(unit = "") "Is1";
    Real elmt_Is2(unit = "") "Is2";
    Real elmt_Vl(unit = "") "Vl";
    Real elmt_gCa(unit = "") "gCa";
    Real elmt_sn(unit = "") "sn";
    Real elmt_sm(unit = "") "sm";
    Real elmt_Vm(unit = "") "Vm";
    Real elmt_taun(unit = "") "taun";
    Real elmt_lambda(unit = "") "lambda";
    Real elmt_Vn(unit = "") "Vn";


    initial equation
        elmt_gK = 1300.0;
        elmt_Vs2 = (-42.0);
        elmt_Vs1 = (-40.0);
        elmt_Cm = 4524.0;
        elmt_VK = (-80.0);
        elmt_gs2 = 32.0;
        elmt_gs1 = 20.0;
        elmt_tnbar = 8.3;
        elmt_gl = 25.0;
        elmt_VCa = 100.0;
        elmt_ss2 = 0.4;
        elmt_ss1 = 0.5;
        elmt_taus1 = 1000.0;
        elmt_taus2 = 120000.0;
        elmt_Vl = (-40.0);
        elmt_gCa = 280.0;
        elmt_sn = 10.0;
        elmt_sm = 7.5;
        elmt_Vm = (-22.0);
        elmt_lambda = 1.1;
        elmt_Vn = (-9.0);


    equation
        elmt_minf = (1.0 / (1.0 + exp(((elmt_Vm - elmt_V) / elmt_sm))));
        elmt_Il = (elmt_gl * (elmt_V - elmt_Vl));
        der(elmt_gK) = 0;
        der(elmt_Vs2) = 0;
        der(elmt_Vs1) = 0;
        elmt_s1inf = (1.0 / (1.0 + exp(((elmt_Vs1 - elmt_V) / elmt_ss1))));
        der(elmt_Cm) = 0;
        elmt_ICa = (elmt_gCa * elmt_minf * (elmt_V - elmt_VCa));
        der(elmt_VK) = 0;
        der(elmt_gs2) = 0;
        der(elmt_gs1) = 0;
        der(elmt_tnbar) = 0;
        elmt_parameter_1 = (elmt_Is1 + elmt_Is2);
        der(elmt_gl) = 0;
        elmt_ninf = (1.0 / (1.0 + exp(((elmt_Vn - elmt_V) / elmt_sn))));
        der(elmt_VCa) = 0;
        elmt_IK = (elmt_gK * elmt_n * (elmt_V - elmt_VK));
        elmt_s2inf = (1.0 / (1.0 + exp(((elmt_Vs2 - elmt_V) / elmt_ss2))));
        der(elmt_ss2) = 0;
        der(elmt_ss1) = 0;
        der(elmt_taus1) = 0;
        der(elmt_taus2) = 0;
        elmt_Is1 = (elmt_gs1 * elmt_s1 * (elmt_V - elmt_VK));
        elmt_Is2 = (elmt_gs2 * elmt_s2 * (elmt_V - elmt_VK));
        der(elmt_Vl) = 0;
        der(elmt_gCa) = 0;
        der(elmt_sn) = 0;
        der(elmt_sm) = 0;
        der(elmt_Vm) = 0;
        elmt_taun = (elmt_tnbar / (1.0 + exp(((elmt_V - elmt_Vn) / elmt_sn))));
        der(elmt_lambda) = 0;
        der(elmt_Vn) = 0;

end Parameters;
