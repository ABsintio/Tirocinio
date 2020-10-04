within BIOMD336;
class Parameters

    input Real elmt_mIIa;
    input Real elmt_IIa;
    input Real elmt_VIIIa_IXa;

    Real elmt_k1(unit = "") "k1";
    Real elmt_k19(unit = "") "k19";
    Real elmt_k18(unit = "") "k18";
    Real elmt_I(unit = "") "I";
    Real elmt_k17(unit = "") "k17";
    Real elmt_k8(unit = "") "k8";
    Real elmt_k9(unit = "") "k9";
    Real elmt_k6(unit = "") "k6";
    Real elmt_k7(unit = "") "k7";
    Real elmt_k4(unit = "") "k4";
    Real elmt_k5(unit = "") "k5";
    Real elmt_k2(unit = "") "k2";
    Real elmt_k3(unit = "") "k3";
    Real elmt_IIa_plus_1_2mIIa(unit = "") "IIa+1.2mIIa";
    Real elmt_k16(unit = "") "k16";
    Real elmt_k15(unit = "") "k15";
    Real elmt_k14(unit = "") "k14";
    Real elmt_k13(unit = "") "k13";
    Real elmt_k12(unit = "") "k12";
    Real elmt_k11(unit = "") "k11";
    Real elmt_k10(unit = "") "k10";
    Real elmt_k20(unit = "") "k20";


    initial equation
        elmt_k1 = 2.0E7;
        elmt_k19 = 70.0;
        elmt_k18 = 0.001;
        elmt_I = 0.0;
        elmt_k17 = 44.0;
        elmt_k8 = 4.0E8;
        elmt_k9 = 0.005;
        elmt_k6 = 1.0E8;
        elmt_k7 = 1.0E7;
        elmt_k4 = 2.0E7;
        elmt_k5 = 1.0E7;
        elmt_k2 = 2.0E7;
        elmt_k3 = 1.0E7;
        elmt_k16 = 24.0;
        elmt_k15 = 100000.0;
        elmt_k14 = 32.0;
        elmt_k13 = 8.2;
        elmt_k12 = 1.15;
        elmt_k11 = 0.3;
        elmt_k10 = 0.4;
        elmt_k20 = 0.02;


    equation
        der(elmt_k1) = 0;
        der(elmt_k19) = 0;
        der(elmt_k18) = 0;
        der(elmt_I) = (((- abs((elmt_I - elmt_VIIIa_IXa))) + (elmt_I - elmt_VIIIa_IXa)) * elmt_k20);
        der(elmt_k17) = 0;
        der(elmt_k8) = 0;
        der(elmt_k9) = 0;
        der(elmt_k6) = 0;
        der(elmt_k7) = 0;
        der(elmt_k4) = 0;
        der(elmt_k5) = 0;
        der(elmt_k2) = 0;
        der(elmt_k3) = 0;
        elmt_IIa_plus_1_2mIIa = (elmt_IIa + (1.2 * elmt_mIIa));
        der(elmt_k16) = 0;
        der(elmt_k15) = 0;
        der(elmt_k14) = 0;
        der(elmt_k13) = 0;
        der(elmt_k12) = 0;
        der(elmt_k11) = 0;
        der(elmt_k10) = 0;
        der(elmt_k20) = 0;

end Parameters;
