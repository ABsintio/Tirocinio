within BIOMD196;
class Parameters

    Real elmt_vM4(unit = "") "vM4";
    Real elmt_j3(unit = "") "j'3";
    Real elmt_vM3(unit = "") "vM3";
    Real elmt_c(unit = "") "totcdk";
    Real elmt_vM2(unit = "") "vM2";
    Real elmt_j4(unit = "") "j4";
    Real elmt_vM1(unit = "") "vM1";
    Real elmt_j1(unit = "") "j1";
    Real elmt_a(unit = "") "a";
    Real elmt_j2(unit = "") "j2";
    Real elmt_Ka(unit = "") "Ka";
    Real elmt_a4(unit = "") "a4";
    Real elmt_a2(unit = "") "a2";
    Real elmt_B3(unit = "") "B3";
    Real elmt_B1(unit = "") "B1";
    Real elmt_vf(unit = "") "vf";
    Real elmt_B2(unit = "") "B2";
    Real elmt_a1(unit = "") "a1";
    Real elmt_totAPC(unit = "") "totAPC";
    Real elmt_totcdc25(unit = "") "totcdc25";
    Real elmt_totwee1(unit = "") "totwee1";
    Real elmt_Bc(unit = "") "Bc";
    Real elmt_j1_2(unit = "") "j'1";
    Real elmt_j4_2(unit = "") "j'4";
    Real elmt_j3_2(unit = "") "j3";
    Real elmt_j2_2(unit = "") "j'2";
    Real elmt_mu(unit = "") "mu";
    Real elmt_tau(unit = "") "tau";
    Real elmt_vM3_2(unit = "") "v'M3";
    Real elmt_vM4_2(unit = "") "v'M4";
    Real elmt_vM1_2(unit = "") "v'M1";
    Real elmt_vM2_2(unit = "") "v'M2";
    Real elmt_kf(unit = "") "kf";
    Real elmt_kd(unit = "") "kd";
    Real elmt_kc(unit = "") "kc";


    initial equation
        elmt_vM4 = 0.7;
        elmt_j3 = 0.01;
        elmt_vM3 = 1.0;
        elmt_c = 1.1;
        elmt_vM2 = 0.41;
        elmt_j4 = 0.01;
        elmt_vM1 = 0.7;
        elmt_j1 = 0.01;
        elmt_a = 10.0;
        elmt_j2 = 0.01;
        elmt_Ka = 0.5;
        elmt_a4 = 2.0;
        elmt_a2 = 1.0;
        elmt_B3 = 1.0;
        elmt_B1 = 5.0;
        elmt_vf = 0.215;
        elmt_B2 = 3.3;
        elmt_a1 = 1.2;
        elmt_totAPC = 1.0;
        elmt_totcdc25 = 1.0;
        elmt_totwee1 = 1.0;
        elmt_Bc = 3.5;
        elmt_j1_2 = 0.01;
        elmt_j4_2 = 0.01;
        elmt_j3_2 = 0.01;
        elmt_j2_2 = 0.01;
        elmt_mu = 0.01;
        elmt_tau = 5.0;
        elmt_vM3_2 = 1.0;
        elmt_vM4_2 = 1.0;
        elmt_vM1_2 = 0.55;
        elmt_vM2_2 = 1.0;
        elmt_kf = 1.0;
        elmt_kd = 0.2;
        elmt_kc = 0.05;


    equation
        der(elmt_vM4) = 0;
        der(elmt_j3) = 0;
        der(elmt_vM3) = 0;
        der(elmt_c) = 0;
        der(elmt_vM2) = 0;
        der(elmt_j4) = 0;
        der(elmt_vM1) = 0;
        der(elmt_j1) = 0;
        der(elmt_a) = 0;
        der(elmt_j2) = 0;
        der(elmt_Ka) = 0;
        der(elmt_a4) = 0;
        der(elmt_a2) = 0;
        der(elmt_B3) = 0;
        der(elmt_B1) = 0;
        der(elmt_vf) = 0;
        der(elmt_B2) = 0;
        der(elmt_a1) = 0;
        der(elmt_totAPC) = 0;
        der(elmt_totcdc25) = 0;
        der(elmt_totwee1) = 0;
        der(elmt_Bc) = 0;
        der(elmt_j1_2) = 0;
        der(elmt_j4_2) = 0;
        der(elmt_j3_2) = 0;
        der(elmt_j2_2) = 0;
        der(elmt_mu) = 0;
        der(elmt_tau) = 0;
        der(elmt_vM3_2) = 0;
        der(elmt_vM4_2) = 0;
        der(elmt_vM1_2) = 0;
        der(elmt_vM2_2) = 0;
        der(elmt_kf) = 0;
        der(elmt_kd) = 0;
        der(elmt_kc) = 0;

end Parameters;
