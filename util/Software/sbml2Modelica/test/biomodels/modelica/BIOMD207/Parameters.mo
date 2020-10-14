within BIOMD207;
class Parameters

    input Real elmt_M2;
    input Real elmt_M1;
    input Real elmt_C2;
    input Real elmt_C1;

    Real elmt_kd1(unit = "s-1.0") "";
    Real elmt_K1(unit = "") "";
    Real elmt_K_d1(unit = "m-3.0.") "";
    Real elmt_V_M1(unit = "s-1.0") "";
    Real elmt_K_d2(unit = "m-3.0.") "";
    Real elmt_U4(unit = "s-1.0") "";
    Real elmt_K4(unit = "") "";
    Real elmt_Kc1(unit = "m-3.0.") "";
    Real elmt_K2(unit = "") "";
    Real elmt_Kc2(unit = "m-3.0.") "";
    Real elmt_K3(unit = "") "";
    Real elmt_kd2(unit = "s-1.0") "";
    Real elmt_vd2(unit = "m-3.0..s-1.0") "";
    Real elmt_vd1(unit = "m-3.0..s-1.0") "";
    Real elmt_U2(unit = "s-1.0") "";
    Real elmt_U3(unit = "s-1.0") "";
    Real elmt_U1(unit = "s-1.0") "";
    Real elmt_U_M3(unit = "s-1.0") "";
    Real elmt_Kim2(unit = "") "";
    Real elmt_U_M1(unit = "s-1.0") "";
    Real elmt_Kim1(unit = "") "";
    Real elmt_vi2(unit = "m-3.0..s-1.0") "";
    Real elmt_vi1(unit = "m-3.0..s-1.0") "";
    Real elmt_H3(unit = "") "";
    Real elmt_H4(unit = "") "";
    Real elmt_H1(unit = "") "";
    Real elmt_H2(unit = "") "";
    Real elmt_V3(unit = "s-1.0") "";
    Real elmt_V4(unit = "s-1.0") "";
    Real elmt_V1(unit = "s-1.0") "";
    Real elmt_V_M3(unit = "s-1.0") "";
    Real elmt_V2(unit = "s-1.0") "";


    initial equation
        elmt_kd1 = 0.001;
        elmt_K1 = 0.01;
        elmt_K_d1 = 0.02;
        elmt_V_M1 = 0.3;
        elmt_K_d2 = 0.02;
        elmt_U4 = 0.05;
        elmt_K4 = 0.01;
        elmt_Kc1 = 0.5;
        elmt_K2 = 0.01;
        elmt_Kc2 = 0.5;
        elmt_K3 = 0.01;
        elmt_kd2 = 0.001;
        elmt_vd2 = 0.025;
        elmt_vd1 = 0.025;
        elmt_U2 = 0.15;
        elmt_U_M3 = 0.1;
        elmt_Kim2 = 0.03;
        elmt_U_M1 = 0.3;
        elmt_Kim1 = 0.03;
        elmt_vi2 = 0.05;
        elmt_vi1 = 0.05;
        elmt_H3 = 0.01;
        elmt_H4 = 0.01;
        elmt_H1 = 0.01;
        elmt_H2 = 0.01;
        elmt_V4 = 0.05;
        elmt_V_M3 = 0.1;
        elmt_V2 = 0.15;


    equation
        der(elmt_kd1) = 0;
        der(elmt_K1) = 0;
        der(elmt_K_d1) = 0;
        der(elmt_V_M1) = 0;
        der(elmt_K_d2) = 0;
        der(elmt_U4) = 0;
        der(elmt_K4) = 0;
        der(elmt_Kc1) = 0;
        der(elmt_K2) = 0;
        der(elmt_Kc2) = 0;
        der(elmt_K3) = 0;
        der(elmt_kd2) = 0;
        der(elmt_vd2) = 0;
        der(elmt_vd1) = 0;
        der(elmt_U2) = 0;
        elmt_U3 = (elmt_M2 * elmt_U_M3);
        elmt_U1 = ((elmt_C2 / (elmt_Kc2 + elmt_C2)) * elmt_U_M1);
        der(elmt_U_M3) = 0;
        der(elmt_Kim2) = 0;
        der(elmt_U_M1) = 0;
        der(elmt_Kim1) = 0;
        der(elmt_vi2) = 0;
        der(elmt_vi1) = 0;
        der(elmt_H3) = 0;
        der(elmt_H4) = 0;
        der(elmt_H1) = 0;
        der(elmt_H2) = 0;
        elmt_V3 = (elmt_M1 * elmt_V_M3);
        der(elmt_V4) = 0;
        elmt_V1 = ((elmt_C1 / (elmt_Kc1 + elmt_C1)) * elmt_V_M1);
        der(elmt_V_M3) = 0;
        der(elmt_V2) = 0;

end Parameters;
