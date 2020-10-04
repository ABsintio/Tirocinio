within BIOMD098;
class Parameters

    Real elmt_beta(unit = "") "";
    Real elmt_p(unit = "") "";
    Real elmt_m(unit = "") "";
    Real elmt_n(unit = "") "";
    Real elmt_k(unit = "s-1.0") "";
    Real elmt_Vm3(unit = "m-3.0..s-1.0") "";
    Real elmt_Vm2(unit = "m-3.0..s-1.0") "";
    Real elmt_K2(unit = "m-3.0.") "";
    Real elmt_Kr(unit = "m-3.0.") "";
    Real elmt_Ka(unit = "m-3.0.") "";
    Real elmt_v1(unit = "m-3.0..s-1.0") "";
    Real elmt_kf(unit = "s-1.0") "";
    Real elmt_v0(unit = "m-3.0..s-1.0") "";


    initial equation
        elmt_beta = 0.301;
        elmt_p = 4.0;
        elmt_m = 2.0;
        elmt_n = 2.0;
        elmt_k = 10.0;
        elmt_Vm3 = 500.0;
        elmt_Vm2 = 65.0;
        elmt_K2 = 1.0;
        elmt_Kr = 2.0;
        elmt_Ka = 0.9;
        elmt_v1 = 7.3;
        elmt_kf = 1.0;
        elmt_v0 = 1.0;


    equation
        der(elmt_beta) = 0;
        der(elmt_p) = 0;
        der(elmt_m) = 0;
        der(elmt_n) = 0;
        der(elmt_k) = 0;
        der(elmt_Vm3) = 0;
        der(elmt_Vm2) = 0;
        der(elmt_K2) = 0;
        der(elmt_Kr) = 0;
        der(elmt_Ka) = 0;
        der(elmt_v1) = 0;
        der(elmt_kf) = 0;
        der(elmt_v0) = 0;

end Parameters;
