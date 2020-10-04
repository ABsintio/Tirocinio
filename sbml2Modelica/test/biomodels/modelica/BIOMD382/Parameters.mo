within BIOMD382;
class Parameters

    input Real elmt_y;
    input Real elmt_z;
    input Real elmt_h3;

    Real elmt_t3(unit = "") "t3";
    Real elmt_I(unit = "") "I";
    Real elmt_f3(unit = "") "f3";
    Real elmt_f4(unit = "") "f4";
    Real elmt_f1(unit = "") "f1";
    Real elmt_E(unit = "") "E";
    Real elmt_f2(unit = "") "f2";
    Real elmt_f5(unit = "") "f5";
    Real elmt_v3(unit = "") "v3";
    Real elmt_t1(unit = "") "t1";
    Real elmt_t2(unit = "") "t2";
    Real elmt_v1(unit = "") "v1";
    Real elmt_v2(unit = "") "v2";


    initial equation
        elmt_t3 = 36.0;
        elmt_I = 216.0;
        elmt_E = 0.21;
        elmt_v3 = 10.0;
        elmt_t1 = 6.0;
        elmt_t2 = 100.0;
        elmt_v1 = 3.0;
        elmt_v2 = 11.0;


    equation
        der(elmt_t3) = 0;
        der(elmt_I) = 0;
        elmt_f3 = ((0.01 * elmt_z) / elmt_v3);
        elmt_f4 = ((90.0 / (1.0 + exp((((-1.772) * log((elmt_y * ((1.0 / elmt_v2) + (1.0 / (elmt_E * elmt_t2)))))) + 7.76)))) + 4.0);
        elmt_f1 = (209.0 / (1.0 + exp((((- elmt_z) / (300.0 * elmt_v3)) + 6.6))));
        der(elmt_E) = 0;
        elmt_f2 = (72.0 * (1.0 - exp((((- elmt_z) / 144.0) * elmt_v3))));
        elmt_f5 = (180.0 / (1.0 + exp((((0.29 * elmt_h3) / elmt_v1) - 7.5))));
        der(elmt_v3) = 0;
        der(elmt_t1) = 0;
        der(elmt_t2) = 0;
        der(elmt_v1) = 0;
        der(elmt_v2) = 0;

end Parameters;
