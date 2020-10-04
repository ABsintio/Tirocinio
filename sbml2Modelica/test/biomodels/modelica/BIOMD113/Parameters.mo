within BIOMD113;
class Parameters

    input Real elmt_Z;

    Real elmt_Kp(unit = "") "";
    Real elmt_p(unit = "") "";
    Real elmt_K1(unit = "") "";
    Real elmt_m(unit = "") "";
    Real elmt_n(unit = "") "";
    Real elmt_k(unit = "") "";
    Real elmt_vMK(unit = "") "";
    Real elmt_Vm3(unit = "") "";
    Real elmt_Vm2(unit = "") "";
    Real elmt_v1_beta(unit = "") "";
    Real elmt_Kr(unit = "") "";
    Real elmt_K2(unit = "") "";
    Real elmt_vk(unit = "") "";
    Real elmt_Ka(unit = "") "";
    Real elmt_K_A(unit = "") "";
    Real elmt_kf(unit = "") "";
    Real elmt_v0(unit = "") "";
    Real elmt_vp(unit = "") "";
    Real elmt_q(unit = "") "";


    initial equation
        elmt_Kp = 1.0;
        elmt_p = 4.0;
        elmt_K1 = 0.01;
        elmt_m = 2.0;
        elmt_n = 2.0;
        elmt_k = 10.0;
        elmt_vMK = 20.0;
        elmt_Vm3 = 500.0;
        elmt_Vm2 = 65.0;
        elmt_v1_beta = 2.7;
        elmt_Kr = 2.0;
        elmt_K2 = 0.01;
        elmt_Ka = 2.5;
        elmt_K_A = 0.9;
        elmt_kf = 1.0;
        elmt_v0 = 1.0;
        elmt_vp = 2.5;
        elmt_q = 1.0;


    equation
        der(elmt_Kp) = 0;
        der(elmt_p) = 0;
        der(elmt_K1) = 0;
        der(elmt_m) = 0;
        der(elmt_n) = 0;
        der(elmt_k) = 0;
        der(elmt_vMK) = 0;
        der(elmt_Vm3) = 0;
        der(elmt_Vm2) = 0;
        der(elmt_v1_beta) = 0;
        der(elmt_Kr) = 0;
        der(elmt_K2) = 0;
        elmt_vk = ((elmt_vMK * Functions.pow(elmt_Z, elmt_q)) / (Functions.pow(elmt_Ka, elmt_q) + Functions.pow(elmt_Z, elmt_q)));
        der(elmt_Ka) = 0;
        der(elmt_K_A) = 0;
        der(elmt_kf) = 0;
        der(elmt_v0) = 0;
        der(elmt_vp) = 0;
        der(elmt_q) = 0;

end Parameters;
