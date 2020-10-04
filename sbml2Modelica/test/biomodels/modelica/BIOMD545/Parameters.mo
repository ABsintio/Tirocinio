within BIOMD545;
class Parameters

    input Real elmt_CDCS;
    input Real elmt_UCS;
    input Real elmt_CS;
    input Real elmt_UVR8M;
    input Real elmt_UR;

    Real elmt_kd1(unit = "") "kd1";
    Real elmt_n3(unit = "") "n3";
    Real elmt_n1(unit = "") "n1";
    Real elmt_n2(unit = "") "n2";
    Real elmt_kdr1(unit = "") "kdr1";
    Real elmt_kd4(unit = "") "kd4";
    Real elmt_kdr2(unit = "") "kdr2";
    Real elmt_kd3(unit = "") "kd3";
    Real elmt_kd2(unit = "") "kd2";
    Real elmt_kdr3(unit = "") "kdr3";
    Real elmt_ks3(unit = "") "ks3";
    Real elmt_ks2(unit = "") "ks2";
    Real elmt_ksr(unit = "") "ksr";
    Real elmt_ks1(unit = "") "ks1";
    Real elmt_k1(unit = "") "k1";
    Real elmt_UV(unit = "") "UV";
    Real elmt_ka4(unit = "") "ka4";
    Real elmt_ka3(unit = "") "ka3";
    Real elmt_ka2(unit = "") "ka2";
    Real elmt_kdr3a(unit = "") "kdr3a";
    Real elmt_ka1(unit = "") "ka1";
    Real elmt_kdr3b(unit = "") "kdr3b";
    Real elmt_UM_Total(unit = "") "UM_Total";
    Real elmt_k2(unit = "") "k2";
    Real elmt_COP1_Total(unit = "") "COP1_Total";


    initial equation
        elmt_kd1 = 94.3524;
        elmt_n3 = 3.5;
        elmt_n1 = 3.0;
        elmt_n2 = 2.0;
        elmt_kdr1 = 0.1;
        elmt_kd4 = 1.1999;
        elmt_kdr2 = 0.2118;
        elmt_kd3 = 0.5508;
        elmt_kd2 = 50.6973;
        elmt_kdr3 = 1.246;
        elmt_ks3 = 0.4397;
        elmt_ks2 = 4.0526;
        elmt_ksr = 0.7537;
        elmt_ks1 = 0.23;
        elmt_k1 = 0.0043;
        elmt_UV = 1.0;
        elmt_ka4 = 10.1285;
        elmt_ka3 = 4.7207;
        elmt_ka2 = 0.0611;
        elmt_kdr3a = 0.9735;
        elmt_ka1 = 0.0372;
        elmt_kdr3b = 0.406;
        elmt_k2 = 161.62;


    equation
        der(elmt_kd1) = 0;
        der(elmt_n3) = 0;
        der(elmt_n1) = 0;
        der(elmt_n2) = 0;
        der(elmt_kdr1) = 0;
        der(elmt_kd4) = 0;
        der(elmt_kdr2) = 0;
        der(elmt_kd3) = 0;
        der(elmt_kd2) = 0;
        der(elmt_kdr3) = 0;
        der(elmt_ks3) = 0;
        der(elmt_ks2) = 0;
        der(elmt_ksr) = 0;
        der(elmt_ks1) = 0;
        der(elmt_k1) = 0;
        der(elmt_UV) = 0;
        der(elmt_ka4) = 0;
        der(elmt_ka3) = 0;
        der(elmt_ka2) = 0;
        der(elmt_kdr3a) = 0;
        der(elmt_ka1) = 0;
        der(elmt_kdr3b) = 0;
        elmt_UM_Total = ((2.0 * elmt_UCS) + elmt_UVR8M + elmt_UR);
        der(elmt_k2) = 0;
        elmt_COP1_Total = ((2.0 * elmt_UCS) + (2.0 * elmt_CDCS) + elmt_CS);

end Parameters;
