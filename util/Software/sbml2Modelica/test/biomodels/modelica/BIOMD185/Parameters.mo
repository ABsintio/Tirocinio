within BIOMD185;
class Parameters

    input Real elmt_V1;
    input Real elmt_V2;

    Real elmt_K1(unit = "m-3.0.") "";
    Real elmt_n(unit = "") "";
    Real elmt_K(unit = "") "";
    Real elmt_L(unit = "m-3.0..s-1.0") "";
    Real elmt_vc(unit = "m-3.0..s-1.0") "";
    Real elmt_K8(unit = "m-3.0.") "";
    Real elmt_K6(unit = "m-3.0.") "";
    Real elmt_F(unit = "m-3.0.") "";
    Real elmt_k7(unit = "s-1.0") "";
    Real elmt_K4(unit = "m-3.0.") "";
    Real elmt_k5(unit = "s-1.0") "";
    Real elmt_K2(unit = "m-3.0.") "";
    Real elmt_k3(unit = "s-1.0") "";
    Real elmt_v_1(unit = "m-3.0..s-1.0") "";
    Real elmt_v_8(unit = "m-3.0..s-1.0") "";
    Real elmt_v_6(unit = "m-3.0..s-1.0") "";
    Real elmt_v_4(unit = "m-3.0..s-1.0") "";
    Real elmt_v_2(unit = "m-3.0..s-1.0") "";
    Real elmt_Kc(unit = "m-3.0.") "";


    initial equation
        elmt_K1 = 2.7266;
        elmt_n = 5.6645;
        elmt_K = 1.0;
        elmt_L = 0.0;
        elmt_vc = 6.7924;
        elmt_K8 = 7.4519;
        elmt_K6 = 9.9849;
        elmt_k7 = 0.2282;
        elmt_K4 = 8.1343;
        elmt_k5 = 0.3352;
        elmt_K2 = 0.291;
        elmt_k3 = 0.1177;
        elmt_v_1 = 6.8355;
        elmt_v_8 = 3.5216;
        elmt_v_6 = 4.6645;
        elmt_v_4 = 1.0841;
        elmt_v_2 = 8.4297;
        elmt_Kc = 4.8283;


    equation
        der(elmt_K1) = 0;
        der(elmt_n) = 0;
        der(elmt_K) = 0;
        der(elmt_L) = 0;
        der(elmt_vc) = 0;
        der(elmt_K8) = 0;
        der(elmt_K6) = 0;
        elmt_F = ((1.0 / 2.0) * (elmt_V1 + elmt_V2));
        der(elmt_k7) = 0;
        der(elmt_K4) = 0;
        der(elmt_k5) = 0;
        der(elmt_K2) = 0;
        der(elmt_k3) = 0;
        der(elmt_v_1) = 0;
        der(elmt_v_8) = 0;
        der(elmt_v_6) = 0;
        der(elmt_v_4) = 0;
        der(elmt_v_2) = 0;
        der(elmt_Kc) = 0;

end Parameters;
